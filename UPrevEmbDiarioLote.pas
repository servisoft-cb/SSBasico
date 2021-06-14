unit UPrevEmbDiarioLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, Db, Variants,
  ComCtrls, Grids, DBGrids, SMDBGrid, DBClient, DBTables, MemTable,
  CurrEdit, RxLookup;


type
  TfPrevEmbDiarioLote = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn2: TBitBtn;
    dsqTalao: TDataSource;
    BitBtn3: TBitBtn;
    mEmbarque: TClientDataSet;
    mEmbarqueData: TDateField;
    mEmbarqueCodCli: TIntegerField;
    mEmbarqueQtdDia: TFloatField;
    mEmbarqueQtdFaturado: TFloatField;
    mEmbarqueQtdRest: TFloatField;
    mEmbarqueNomeCliente: TStringField;
    mEmbarqueCodProduto: TIntegerField;
    mEmbarqueReferencia: TStringField;
    dsmEmbarque: TDataSource;
    SMDBGrid1: TSMDBGrid;
    ProgressBar1: TProgressBar;
    qTalao: TQuery;
    qTalaoQuantidade: TFloatField;
    qTalaoQtdFaturada: TFloatField;
    qTalaoQtdRestante: TFloatField;
    qTalaoCodProduto: TIntegerField;
    qTalaoCodCliente: TIntegerField;
    qTalaoDtReprogramacao: TDateField;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label7: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label8: TLabel;
    mEmbarqueDescMaterial: TStringField;
    Label9: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label10: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    qAtrasada: TQuery;
    qAtrasadaQtdRestante: TFloatField;
    qDetalhado: TQuery;
    qDetalhadoCodProduto: TIntegerField;
    qDetalhadoCodCliente: TIntegerField;
    qDetalhadoDtReprogramacao: TDateField;
    qDetalhadoQuantidade: TFloatField;
    qDetalhadoQtdFaturada: TFloatField;
    qDetalhadoQtdRestante: TFloatField;
    qDetalhadoPedido: TIntegerField;
    qDetalhadoItemPedido: TIntegerField;
    qDetalhadoPreco: TFloatField;
    qDetalhadoVlrDesconto: TFloatField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure mEmbarqueNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Monta_SQLAtrasada;
    procedure Monta_mEmbarque;
    procedure Controle_Impressao(Tipo : String);

  public
    { Public declarations }
  end;

var
  fPrevEmbDiarioLote: TfPrevEmbDiarioLote;

implementation

uses UDM1, URelEmbDiarioLote;

{$R *.DFM}

procedure TfPrevEmbDiarioLote.Controle_Impressao(Tipo : String);
begin
  Screen.Cursor := crHourGlass;
  fRelEmbDiarioLote := TfRelEmbDiarioLote.Create(Self);
  if Tipo = 'V' then
    fRelEmbDiarioLote.QuickRep1.Preview
  else
    fRelEmbDiarioLote.QuickRep1.Print;
  fRelEmbDiarioLote.QuickRep1.Free;
  Screen.Cursor := crDefault;
end;

procedure TfPrevEmbDiarioLote.Monta_mEmbarque;
var
  vCodProdutoAux : Integer;
begin
  CurrencyEdit1.Value := 0;
  CurrencyEdit2.Value := 0;
  CurrencyEdit3.Value := 0;
  CurrencyEdit4.Value := 0;
  mEmbarque.EmptyDataSet;
  if qTalao.RecordCount < 1 then
    exit;

  ProgressBar1.Max      := qTalao.RecordCount;
  ProgressBar1.Position := 0;
  qTalao.First;
  while not qTalao.Eof do
    begin
      if qTalaoCodProduto.AsInteger > 0 then
        begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          vCodProdutoAux := 0;
          case ComboBox1.ItemIndex of
            0 : vCodProdutoAux := 0;
            1 : vCodProdutoAux := qTalaoCodProduto.AsInteger;
          end;

          if mEmbarque.Locate('Data;CodCli;CodProduto',VarArrayOf([qTalaoDtReprogramacao.AsDateTime,qTalaoCodCliente.AsInteger,vCodProdutoAux]),[locaseinsensitive]) then
            mEmbarque.Edit
          else
            begin
              mEmbarque.Insert;
              mEmbarqueCodCli.AsInteger    := qTalaoCodCliente.AsInteger;
              mEmbarqueData.AsDateTime     := qTalaoDtReprogramacao.AsDateTime;
              if DM1.tCliente.Locate('Codigo',qTalaoCodCliente.AsInteger,[loCaseInsensitive]) then
                mEmbarqueNomeCliente.AsString := DM1.tClienteNome.AsString;
              mEmbarqueCodProduto.AsInteger := vCodProdutoAux;
              if (vCodProdutoAux > 0) and (DM1.tProduto.Locate('Codigo',vCodProdutoAux,[loCaseInsensitive])) then
                begin
                  mEmbarqueReferencia.AsString   := DM1.tProdutoReferencia.AsString;
                  mEmbarqueDescMaterial.AsString := DM1.tProdutoDescMaterial.AsString;
                end;
            end;
          mEmbarqueQtdDia.AsFloat      := mEmbarqueQtdDia.AsFloat + qTalaoQuantidade.AsFloat;
          mEmbarqueQtdFaturado.AsFloat := mEmbarqueQtdFaturado.AsFloat + qTalaoQtdFaturada.AsFloat;
          mEmbarqueQtdRest.AsFloat     := mEmbarqueQtdRest.AsFloat + qTalaoQtdRestante.AsFloat;
          mEmbarque.Post;

          CurrencyEdit1.Value := CurrencyEdit1.Value + qTalaoQuantidade.AsFloat;
          CurrencyEdit2.Value := CurrencyEdit2.Value + qTalaoQtdFaturada.AsFloat;
          CurrencyEdit3.Value := CurrencyEdit3.Value + qTalaoQtdRestante.AsFloat;
          if mEmbarqueData.AsDateTime < Date then
            CurrencyEdit4.Value := CurrencyEdit4.Value + qTalaoQtdRestante.AsFloat;
        end;
      qTalao.Next;
    end;
  CurrencyEdit1.Refresh;
  CurrencyEdit2.Refresh;
  CurrencyEdit3.Refresh;
end;

procedure TfPrevEmbDiarioLote.Monta_SQLAtrasada;
begin
  CurrencyEdit5.Clear;
  CurrencyEdit5.Visible := False;
  Label10.Caption := '';

  if DateEdit1.Date < 1 then
    exit;

  Label10.Caption := 'Qtd.Atrasada até ' + DateEdit1.Text;
  CurrencyEdit5.Visible := True;

  qAtrasada.Close;
  qAtrasada.SQL.Clear;
  qAtrasada.SQL.Add('SELECT SUM( QtdRestante ) QtdRestante');
  qAtrasada.SQL.Add('FROM "dbTalao.DB" Dbtalao');
  qAtrasada.SQL.Add('WHERE   ((Cancelado = FALSE)  or (Cancelado is Null))');
  qAtrasada.SQL.Add('  AND (dbTalao.QtdRestante > 0) ');
  if DateEdit2.Date > 0 then
    begin
      qAtrasada.SQL.Add('   AND  (DtReprogramacao < :DataIni)');
      qAtrasada.ParamByName('DataIni').AsDate := DateEdit1.Date;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qAtrasada.SQL.Add(' AND (dbTalao.filial = :Filial)');
      qAtrasada.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qAtrasada.Open;
  qAtrasada.First;
  CurrencyEdit5.Value := qAtrasadaQtdRestante.Value;
end;

procedure TfPrevEmbDiarioLote.Monta_SQL;
begin
  qTalao.Close;
  qTalao.SQL.Clear;
  qTalao.SQL.Add('SELECT SUM( Quantidade ) Quantidade, SUM( QtdFaturada ) QtdFaturada, SUM( QtdRestante ) QtdRestante, CodProduto, CodCliente, DtReprogramacao');
  qTalao.SQL.Add('FROM "dbTalao.DB" Dbtalao');
  qTalao.SQL.Add('WHERE   ((Cancelado = FALSE)  or (Cancelado is Null))');

  case ComboBox2.ItemIndex of
    0 : qTalao.SQL.Add('  AND (dbTalao.QtdRestante > 0) ');
    1 : qTalao.SQL.Add('  AND (dbTalao.QtdFaturada > 0) ');
  end;
  if DateEdit1.Date > 0 then
    begin
      qTalao.SQL.Add('   AND  (DtReprogramacao >= :DataIni)');
      qTalao.ParamByName('DataIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qTalao.SQL.Add('   AND  (DtReprogramacao <= :DataFin)');
      qTalao.ParamByName('DataFin').AsDate := DateEdit2.Date;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qTalao.SQL.Add(' AND (dbTalao.filial = :Filial)');
      qTalao.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qTalao.SQL.Add('GROUP BY CodProduto, CodCliente, DtReprogramacao');
  qTalao.Open;

  qDetalhado.Close;
  qDetalhado.SQL.Clear;
  qDetalhado.SQL.Add('SELECT Dbtalao.CodProduto, Dbtalao.CodCliente, Dbtalao.DtReprogramacao, Dbtalao.Quantidade, Dbtalao.QtdFaturada, Dbtalao.QtdRestante, Dbtalao.Pedido, Dbtalao.ItemPedido, Dbpedidoitem.Preco, Dbpedidoitem.VlrDesconto');
  qDetalhado.SQL.Add('FROM "dbTalao.DB" Dbtalao');
  qDetalhado.SQL.Add('INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qDetalhado.SQL.Add('ON  (Dbtalao.Pedido = Dbpedidoitem.Pedido)');
  qDetalhado.SQL.Add('AND  (Dbtalao.ItemPedido = Dbpedidoitem.Item) ');
  qDetalhado.SQL.Add('AND  (Dbtalao.ItemPedido = Dbpedidoitem.Item)');
  qDetalhado.SQL.Add('WHERE  ((Dbtalao.Cancelado = FALSE)');
  qDetalhado.SQL.Add('   OR  (Dbtalao.Cancelado IS NULL)) ');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qDetalhado.SQL.Add(' AND (dbTalao.filial = :Filial)');
      qDetalhado.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qDetalhado.Open;
end;

procedure TfPrevEmbDiarioLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTalao.Close;
  qAtrasada.Close;
  qDetalhado.Close;
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  Action := Cafree;
end;

procedure TfPrevEmbDiarioLote.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevEmbDiarioLote.Imprimir1Click(Sender: TObject);
begin
  Controle_Impressao('I');
end;

procedure TfPrevEmbDiarioLote.Visualizar1Click(Sender: TObject);
begin
  Controle_Impressao('V');
end;

procedure TfPrevEmbDiarioLote.BitBtn3Click(Sender: TObject);
begin
  Screen.Cursor        := crHourGlass;
  Monta_SQL;
  Monta_SQLAtrasada;
  Monta_mEmbarque;
  Screen.Cursor        := crDefault;
end;

procedure TfPrevEmbDiarioLote.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (mEmbarque.RecordCount > 0) and not(mEmbarqueData.IsNull) and
     (mEmbarqueData.AsDateTime < Date) and (mEmbarqueQtdRest.AsFloat > 0) then
    AFont.Color := clRed;
  if (mEmbarque.RecordCount > 0) and not(mEmbarqueData.IsNull) and
     (mEmbarqueData.AsDateTime < Date) and (mEmbarqueQtdRest.AsFloat <= 0) then
    AFont.Color := clTeal;
end;

procedure TfPrevEmbDiarioLote.mEmbarqueNewRecord(DataSet: TDataSet);
begin
  mEmbarqueQtdDia.AsFloat        := 0;
  mEmbarqueQtdFaturado.AsFloat   := 0;
  mEmbarqueQtdRest.AsFloat       := 0;
  mEmbarqueReferencia.AsString   := '';
end;

procedure TfPrevEmbDiarioLote.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
  DM1.tCliente.Open;
  DM1.tProduto.Open;
end;

end.
