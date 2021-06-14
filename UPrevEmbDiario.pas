unit UPrevEmbDiario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, Db, Variants,
  ComCtrls, Grids, DBGrids, SMDBGrid, DBClient, DBTables, MemTable, DBCtrls,
  RxLookup;


type
  TfPrevEmbDiario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn2: TBitBtn;
    qPedido: TQuery;
    qsPedido: TDataSource;
    qPedidoCodCliente: TIntegerField;
    qPedidoQtdPares: TFloatField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoDtReprogramacao: TDateField;
    RadioGroup1: TRadioGroup;
    qPedidoCodProduto: TIntegerField;
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
    mEmbarqueDescMaterial: TStringField;
    dsmEmbarque: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
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
    procedure Monta_mEmbarque;
    procedure Controle_Impressao(Tipo : String);

  public
    { Public declarations }
  end;

var
  fPrevEmbDiario: TfPrevEmbDiario;

implementation

uses UDM1, URelEmbDiario;

{$R *.DFM}

procedure TfPrevEmbDiario.Controle_Impressao(Tipo : String);
begin
  fRelEmbDiario        := TfRelEmbDiario.Create(Self);
  if Tipo = 'V' then
    fRelEmbDiario.QuickRep1.Preview
  else
    fRelEmbDiario.QuickRep1.Print;
  fRelEmbDiario.QuickRep1.Free;
end;

procedure TfPrevEmbDiario.Monta_mEmbarque;
var
  vCodProdutoAux : Integer;
begin
  mEmbarque.EmptyDataSet;
  if qPedido.RecordCount < 1 then
    exit;

  ProgressBar1.Max      := qPedido.RecordCount;
  ProgressBar1.Position := 0;
  qPedido.First;
  while not qPedido.Eof do
    begin
      if qPedidoCodProduto.AsInteger > 0 then
        begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          vCodProdutoAux := 0;
          case RadioGroup1.ItemIndex of
            0 : vCodProdutoAux := 0;
            1 : vCodProdutoAux := qPedidoCodProduto.AsInteger;
          end;
          if mEmbarque.Locate('Data;CodCli;CodProduto',VarArrayOf([qPedidoDtReprogramacao.AsDateTime,qPedidoCodCliente.AsInteger,vCodProdutoAux]),[locaseinsensitive]) then
            mEmbarque.Edit
          else
            begin
              mEmbarque.Insert;
              mEmbarqueCodCli.AsInteger    := qPedidoCodCliente.AsInteger;
              mEmbarqueData.AsDateTime     := qPedidoDtReprogramacao.AsDateTime;
              if DM1.tCliente.Locate('Codigo',qPedidoCodCliente.AsInteger,[loCaseInsensitive]) then
                mEmbarqueNomeCliente.AsString := DM1.tClienteNome.AsString;
              mEmbarqueCodProduto.AsInteger := vCodProdutoAux;
              if (vCodProdutoAux > 0) and (DM1.tProduto.Locate('Codigo',vCodProdutoAux,[loCaseInsensitive])) then
                begin
                  mEmbarqueReferencia.AsString   := DM1.tProdutoReferencia.AsString;
                  mEmbarqueDescMaterial.AsString := DM1.tProdutoDescMaterial.AsString;
                end;
            end;
          mEmbarqueQtdDia.AsFloat      := mEmbarqueQtdDia.AsFloat + qPedidoQtdPares.AsFloat;
          mEmbarqueQtdFaturado.AsFloat := mEmbarqueQtdFaturado.AsFloat + qPedidoQtdParesFat.AsFloat;
          mEmbarqueQtdRest.AsFloat     := mEmbarqueQtdRest.AsFloat + qPedidoQtdParesRest.AsFloat;
          mEmbarque.Post;
        end;
      qPedido.Next;
    end;
end;

procedure TfPrevEmbDiario.Monta_SQL;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT Dbpedido.CodCliente, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, Dbpedidoitem.DtReprogramacao, Dbpedidoitem.CodProduto');
  qPedido.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedido.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedido.SQL.Add('WHERE   (Dbpedidoitem.materiaprima = FALSE)');
  qPedido.SQL.Add('  AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado IS NULL) )');
  qPedido.SQL.Add('  AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado IS NULL) )');
  qPedido.SQL.Add('  AND  (Dbpedidoitem.DtReprogramacao BETWEEN :DataIni AND :DataFin)');
  qPedido.ParamByName('DataIni').AsDate := DateEdit1.Date;
  qPedido.ParamByName('DataFin').AsDate := DateEdit2.Date;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPedido.SQL.Add('  AND (dbpedido.filial = :Filial)');
      qPedido.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qPedido.SQL.Add('GROUP BY Dbpedido.CodCliente, Dbpedidoitem.DtReprogramacao, Dbpedidoitem.CodProduto ');
  qPedido.SQL.Add('ORDER BY Dbpedidoitem.DtReprogramacao, Dbpedidoitem.CodProduto                      ');
  qPedido.Open;
end;

procedure TfPrevEmbDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qPedido.Close;
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  Action := Cafree;
end;

procedure TfPrevEmbDiario.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevEmbDiario.Imprimir1Click(Sender: TObject);
begin
  Controle_Impressao('I');
end;

procedure TfPrevEmbDiario.Visualizar1Click(Sender: TObject);
begin
  Controle_Impressao('V');
end;

procedure TfPrevEmbDiario.BitBtn3Click(Sender: TObject);
begin
  if (DateEdit1.Date > 1) and (DateEdit2.Date > 1) then
    begin
      Screen.Cursor        := crHourGlass;
      Monta_SQL;
      Monta_mEmbarque;
      Screen.Cursor        := crDefault;
    end
  else
    begin
      ShowMessage('É obrigatório informar a data inicial e final!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevEmbDiario.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (mEmbarque.RecordCount > 0) and not(mEmbarqueData.IsNull) and
     (mEmbarqueData.AsDateTime < Date) and (mEmbarqueQtdRest.AsFloat > 0) then
    AFont.Color := clRed;
  if (mEmbarque.RecordCount > 0) and not(mEmbarqueData.IsNull) and
     (mEmbarqueData.AsDateTime < Date) and (mEmbarqueQtdRest.AsFloat <= 0) then
    AFont.Color := clTeal;
end;

procedure TfPrevEmbDiario.mEmbarqueNewRecord(DataSet: TDataSet);
begin
  mEmbarqueQtdDia.AsFloat        := 0;
  mEmbarqueQtdFaturado.AsFloat   := 0;
  mEmbarqueQtdRest.AsFloat       := 0;
  mEmbarqueReferencia.AsString   := '';
  mEmbarqueDescMaterial.AsString := '';
end;

procedure TfPrevEmbDiario.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tProduto.Open;
end;

end.
