unit UPrevProgramacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, Db, DBTables,
  MemTable, RXLookup, DBFilter, ComCtrls, Grids, DBGrids, DBClient,
  SMDBGrid;

type
  TfPrevProgramacao = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;                                
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qProg: TQuery;
    msRelProg: TDataSource;
    qProgqtdparesrest: TFloatField;
    qProgdtembarque: TDateField;
    qProgcor: TStringField;
    qProgreferencia: TStringField;
    qPrognomeprod: TStringField;
    mRelProg: TMemoryTable;
    mRelProgReferencia: TStringField;
    mRelProgQtdParesRest: TFloatField;
    mRelProgNomeProd: TStringField;
    mRelProgNomeCor: TStringField;
    mRelProgNumLote: TIntegerField;
    mRelProgDtEmbarque: TDateField;
    tPedidoGrade: TTable;
    qsProg: TDataSource;
    qProgpedido: TIntegerField;
    qProgitem: TIntegerField;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeQtdParesRest: TFloatField;
    qProgcodcliente: TIntegerField;
    mRelProgCodCliente: TIntegerField;
    mRelProglkCliente: TStringField;
    qProgcodproduto: TIntegerField;
    mRelProgCodProduto: TIntegerField;
    mRelProgNumOS: TStringField;
    qPrognumos: TStringField;
    mRelProgPedido: TIntegerField;
    mRelProgItemPedido: TIntegerField;
    qProgDtReprogramacao: TDateField;
    mRelProgDtReprogramacao: TStringField;
    mRelProgReprogramacao: TBooleanField;
    qProgReprogramacao: TBooleanField;
    mRelProgFabrica: TStringField;
    qProgFabrica: TStringField;
    qOS: TQuery;
    qOSNumOS: TStringField;
    qOSPedido: TIntegerField;
    mRelProgPedidoCliente: TStringField;
    qProgpedidocliente: TStringField;
    CheckBox1: TCheckBox;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradelkTamanho: TStringField;
    ComboBox1: TComboBox;
    Label2: TLabel;
    mResumido: TClientDataSet;
    mResumidoPedido: TIntegerField;
    mResumidoPedidoCliente: TStringField;
    mResumidoCodProduto: TIntegerField;
    mResumidoCodCor: TIntegerField;
    mResumidoReferencia: TStringField;
    mResumidoQtd: TFloatField;
    mResumidoNomeCor: TStringField;
    dsmResumido: TDataSource;
    mResumidoCor: TClientDataSet;
    dsmResumidoCor: TDataSource;
    mResumidoCorPedido: TIntegerField;
    mResumidoCorReferencia: TStringField;
    mResumidoCorNomeCor: TStringField;
    mResumidoCorQtd: TFloatField;
    mSelecionados: TClientDataSet;
    mSelecionadosPedido: TIntegerField;
    mSelecionadosPedidoCliente: TStringField;
    dsmSelecionados: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label6: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Gerar_Itens;
    procedure Monta_SQL;
    procedure Le_qProg;
    procedure Grava_mSelecionados;
    procedure Le_mSelecionados;

  public
    { Public declarations }
  end;

var
  fPrevProgramacao: TfPrevProgramacao;

implementation

uses UDM1, URelProgramacao, URelProgramacaoRes2;

{$R *.DFM}

procedure TfPrevProgramacao.Le_mSelecionados;
begin
  mResumido.EmptyDataSet;
  mResumidoCor.EmptyDataSet;
  DM1.tPedido.IndexFieldNames := 'Pedido';
  mSelecionados.First;
  while not mSelecionados.Eof do
    begin
      if DM1.tPedido.FindKey([mSelecionadosPedido.AsInteger]) then
        begin
          if not DM1.tPedidoCancelado.AsBoolean then
            begin
              DM1.tPedidoItem.First;
              while not DM1.tPedidoItem.Eof do
                begin
                  if (DM1.tPedidoItemQtdParesRest.AsFloat > 0) and not(DM1.tPedidoItemCancelado.AsBoolean) then
                    begin
                      if mResumido.FindKey([DM1.tPedidoPedido.AsInteger,DM1.tPedidoItemlkReferencia.AsString]) then
                        mResumido.Edit
                      else
                        begin
                          mResumido.Insert;
                          mResumidoPedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
                          mResumidoPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;
                          mResumidoCodProduto.AsInteger   := DM1.tPedidoItemCodProduto.AsInteger;
                          mResumidoReferencia.AsString    := DM1.tPedidoItemlkReferencia.AsString;
                        end;
                      mResumidoQtd.AsFloat := mResumidoQtd.AsFloat + DM1.tPedidoItemQtdParesRest.AsFloat;
                      mResumido.Post;

                      if mResumidoCor.FindKey([DM1.tPedidoPedido.AsInteger,DM1.tPedidoItemlkReferencia.AsString,DM1.tPedidoItemlkCor.AsString]) then
                        mResumidoCor.Edit
                      else
                        begin
                          mResumidoCor.Insert;
                          mResumidoCorPedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
                          mResumidoCorReferencia.AsString    := DM1.tPedidoItemlkReferencia.AsString;
                          mResumidoCorNomeCor.AsString       := DM1.tPedidoItemlkCor.AsString;
                        end;
                      mResumidoCorQtd.AsFloat := mResumidoCorQtd.AsFloat + DM1.tPedidoItemQtdParesRest.AsFloat;
                      mResumidoCor.Post;
                    end;
                  DM1.tPedidoItem.Next;
                end;
            end;
        end;
      mSelecionados.Next;
    end;
end;

procedure TfPrevProgramacao.Grava_mSelecionados;
begin
  if mSelecionados.Locate('Pedido',DM1.tPedidoPedido.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Já informado!');
      exit;
    end;
  mSelecionados.Insert;
  mSelecionadosPedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
  mSelecionadosPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;
  mSelecionados.Post;
end;

procedure TfPrevProgramacao.Le_qProg;
begin
  mResumido.EmptyDataSet;
  mResumidoCor.EmptyDataSet;
  qProg.First;
  while not qProg.Eof do
    begin
      //if mResumido.FindKey([qProgDtReprogramacao.AsDateTime,qProgpedido.AsString,qProgreferencia.AsString,qProgcor.AsString]) then
      if mResumido.FindKey([qProgpedido.AsString,qProgreferencia.AsString]) then
        mResumido.Edit
      else
        begin
          mResumido.Insert;
          mResumidoPedido.AsInteger       := qProgpedido.AsInteger;
          mResumidoPedidoCliente.AsString := qProgpedidocliente.AsString;
          mResumidoCodProduto.AsInteger   := qProgcodproduto.AsInteger;
          mResumidoReferencia.AsString    := qProgreferencia.AsString;
        end;
      mResumidoQtd.AsFloat := mResumidoQtd.AsFloat + qProgqtdparesrest.AsFloat;
      mResumido.Post;

      if mResumidoCor.FindKey([qProgpedido.AsString,qProgreferencia.AsString,qProgcor.AsString]) then
        mResumidoCor.Edit
      else
        begin
          mResumidoCor.Insert;
          mResumidoCorPedido.AsInteger       := qProgpedido.AsInteger;
          mResumidoCorReferencia.AsString    := qProgreferencia.AsString;
          mResumidoCorNomeCor.AsString       := qProgcor.AsString;
        end;
      mResumidoCorQtd.AsFloat := mResumidoCorQtd.AsFloat + qProgqtdparesrest.AsFloat;
      mResumidoCor.Post;

      qProg.Next;
    end;
end;

procedure TfPrevProgramacao.Monta_SQL;
begin
  qProg.Close;
  qProg.SQL.Clear;
  qProg.SQL.Add('select dbpedidoitem.pedido, dbpedidoitem.item, dbpedidoitem.qtdparesrest, dbpedidoitem.dtembarque, dbcor.nome cor, dbproduto.referencia,');
  qProg.SQL.Add(' dbproduto.nome nomeprod, dbpedido.pedidocliente, dbpedidoitem.numos, dbpedido.codcliente, dbpedidoitem.codproduto,');
  qProg.SQL.Add(' dbPedidoItem.DtReprogramacao, dbPedidoItem.Reprogramacao, dbPedidoItem.Fabrica');
  qProg.SQL.Add('from dbpedidoitem, dbproduto, dbpedido, dbcor');
  qProg.SQL.Add('where (dbproduto.codigo = dbpedidoitem.codproduto) and (dbpedido.pedido = dbpedidoitem.pedido)');
  qProg.SQL.Add(' and (dbpedidoitem.DtReprogramacao between :dti and :dtf)  and (dbcor.codigo = dbpedidoitem.codcor)');
  //qProg.SQL.Add(' and (dbpedidoitem.qtdparesrest > 0) and (dbpedido.codcliente = :cli)');
  qProg.SQL.Add(' and (dbpedidoitem.qtdparesrest > 0)');
  qProg.SQL.Add(' and ((dbPedidoItem.Cancelado is null) or (dbPedidoItem.Cancelado = False))');
  qProg.SQL.Add(' and ((dbPedido.Cancelado is null) or (dbPedido.Cancelado = False))');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qProg.SQL.Add(' and (dbPedido.CodCliente = :CodCliente)');
      qProg.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qProg.SQL.Add('order by dbpedidoitem.codproduto,  dbpedidoitem.DtReprogramacao, dbpedido.PedidoCliente, dbpedidoitem.Numos');
  qProg.ParamByName('dti').AsDate    := DateEdit1.Date;
  qProg.ParamByName('dtf').AsDate    := DateEdit2.Date;
  //qProg.ParamByName('cli').AsInteger := RxDBLookupCombo1.KeyValue;
  qProg.Open;
end;

procedure TfPrevProgramacao.Gerar_Itens;
begin
  //mGradeAux.EmptyTable;
  mRelProg.EmptyTable;
  qProg.First;
  while not qProg.Eof do
    begin
      mRelProg.Insert;
      mRelProgReferencia.AsString     := qProgreferencia.AsString;
      mRelProgQtdParesRest.AsFloat    := qProgqtdparesrest.AsFloat;
      mRelProgPedidoCliente.AsString  := qProgpedidocliente.AsString;
      mRelProgNumOS.AsString          := qPrognumos.AsString;
      //mRelProgNumLote.AsInteger       := qPrognumlote.AsInteger;
      mRelProgNomeProd.AsString       := qPrognomeprod.AsString;
      mRelProgNomeCor.AsString        := qProgcor.AsString;
      mRelProgDtEmbarque.AsDateTime   := qProgdtembarque.AsDateTime;
      mRelProgDtReprogramacao.AsString := qProgDtReprogramacao.AsString;
      mRelProgCodCliente.AsInteger    := qProgcodcliente.AsInteger;
      mRelProgCodProduto.AsInteger    := qProgcodproduto.AsInteger;
      mRelProgPedido.AsInteger        := qProgpedido.AsInteger;
      mRelProgItemPedido.AsInteger    := qProgitem.AsInteger;
      mRelProgReprogramacao.AsBoolean := qProgReprogramacao.AsBoolean;
      mRelProgFabrica.AsString        := qProgFabrica.AsString;
      if not mRelProgReprogramacao.AsBoolean then
        mRelProgReprogramacao.AsBoolean := False;
      mRelProg.Post;
      {if not(mGradeAux.Locate('CodGrade',qProgCodGrade.AsInteger,[loCaseInsensitive])) then
        begin
          mGradeAux.Insert;
          mGradeAuxCodGrade.AsInteger := qProgCodGrade.AsInteger;
          mGradeAux.Post;
        end;}
      qProg.Next;
    end;
end;

procedure TfPrevProgramacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qOS.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedido.Close;
  Action := Cafree;
end;

procedure TfPrevProgramacao.BitBtn6Click(Sender: TObject);
begin
  //if (DateEdit1.Text = '') or (DateEdit2.Text = '') or (RxDBLookupCombo1.Text = '') then
  if ((DateEdit1.Text = '') or (DateEdit2.Text = '')) and (ComboBox2.ItemIndex = 0) then
    begin
      ShowMessage('Falta informar as datas!');
      Exit;
    end
  else
  if DateEdit1.Date > DateEdit2.Date then
    ShowMessage('Data inicial maior que data final')
  else
    begin
      Screen.Cursor := crHourglass;
      // fazer a chamada ao código para posterior impressão
      if ComboBox2.ItemIndex = 0 then
        Monta_SQL;
      Screen.Cursor := crDefault;
      if (ComboBox1.ItemIndex = 0) and (ComboBox2.ItemIndex = 0) then
        begin
          qOS.Close;
          qOS.Open;
          Gerar_Itens;
          fRelProgramacao := TfRelProgramacao.Create(Self);
          fRelProgramacao.QuickRep1.Preview;
          fRelProgramacao.QuickRep1.Free;
        end
      else
        begin
          if ComboBox2.ItemIndex = 0 then
            Le_qProg
          else
            Le_mSelecionados;
          fRelProgramacaoRes2 := TfRelProgramacaoRes2.Create(Self);
          fRelProgramacaoRes2.QuickRep1.Preview;
          fRelProgramacaoRes2.QuickRep1.Free;
        end;
      BitBtn1.SetFocus;
    end;
end;

procedure TfPrevProgramacao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevProgramacao.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevProgramacao.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
end;

procedure TfPrevProgramacao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  qProg.Close;
end;

procedure TfPrevProgramacao.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Edit1.Text <> '') then
    begin
      if DM1.tPedido.Locate('PedidoCliente',Edit1.Text,[loCaseInsensitive]) then
        Grava_mSelecionados
      else
        ShowMessage('Pedido cliente não encontrado!');
      Edit1.Clear;
    end;
end;

procedure TfPrevProgramacao.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit1.AsInteger > 0) then
    begin
      if DM1.tPedido.Locate('Pedido',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        Grava_mSelecionados
      else
        ShowMessage('Pedido não encontrado!');
      CurrencyEdit1.Clear;
    end;
end;

procedure TfPrevProgramacao.BitBtn2Click(Sender: TObject);
begin
  if not mSelecionados.IsEmpty then
    mSelecionados.Delete;
end;

procedure TfPrevProgramacao.FormShow(Sender: TObject);
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
end;

end.
