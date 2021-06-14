unit UVerificaContasRecPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RzTabs, Buttons, DB, DBClient, Grids,
  DBGrids, SMDBGrid, DBTables, ExtCtrls, CurrEdit, ComCtrls;

type
  TfVerificaContasRecPag = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    mReceber: TClientDataSet;
    mReceberNumNota: TIntegerField;
    mReceberDtEmissao: TDateField;
    mReceberCodCliente: TIntegerField;
    mReceberNomeCliente: TStringField;
    mReceberVlrDuplicata: TFloatField;
    mPagar: TClientDataSet;
    mPagarNumNota: TIntegerField;
    mPagarDtEntrada: TDateField;
    mPagarCodFornecedor: TIntegerField;
    mPagarNomeFornecedor: TStringField;
    mPagarVlrDuplicata: TFloatField;
    dsmReceber: TDataSource;
    dsmPagar: TDataSource;
    qCReceber: TQuery;
    qCPagar: TQuery;
    qCReceberNumNota: TIntegerField;
    qCReceberFilial: TIntegerField;
    qCReceberDtEmissao: TDateField;
    qCReceberCodCli: TIntegerField;
    qCReceberVlrTotalDupl: TFloatField;
    qCReceberNome: TStringField;
    qCPagarNumNEntr: TIntegerField;
    qCPagarCodForn: TIntegerField;
    qCPagarDtEntrada: TDateField;
    qCPagarVlrTotalDuplicata: TFloatField;
    qCPagarNomeForn: TStringField;
    qCPagarFilial: TIntegerField;
    tCReceberParc: TTable;
    tCReceberParcFilial: TIntegerField;
    tCReceberParcNumCReceber: TIntegerField;
    tCReceberParcParcCReceber: TIntegerField;
    tCReceberParcVlrParcCReceber: TFloatField;
    tCReceberParcDtVencCReceber: TDateField;
    tCReceberParcQuitParcCReceber: TBooleanField;
    tCReceberParcJurosParcCReceber: TFloatField;
    tCReceberParcDtPagParcCReceber: TDateField;
    tCReceberParcCodCli: TIntegerField;
    tCReceberParcNumNota: TIntegerField;
    tCReceberParcDesconto: TFloatField;
    tCReceberParcPgtoParcial: TFloatField;
    tCReceberParcRestParcela: TFloatField;
    tCReceberParcContaDupl: TSmallintField;
    tCReceberParcSelecionado: TBooleanField;
    tCReceberParcCodVendedor: TIntegerField;
    tCReceberParcBaixada: TBooleanField;
    tCReceberParcPercComissao: TFloatField;
    tCReceberParcVlrComissao: TFloatField;
    tCReceberParcPlanoContas: TIntegerField;
    tCReceberParcAgencia: TStringField;
    tCReceberParcTitPortador: TStringField;
    tCReceberParcCodTipoCobranca: TIntegerField;
    tCReceberParcDespesas: TFloatField;
    tCReceberParcAbatimentos: TFloatField;
    tCReceberParcCodConta: TIntegerField;
    tCReceberParcPgCartorio: TBooleanField;
    tCReceberParcDiasAtraso: TFloatField;
    tCReceberParcLetraCambio: TBooleanField;
    tCReceberParcNroLancExtComissao: TIntegerField;
    tCReceberParcJurosPagos: TFloatField;
    tCReceberParcCancelado: TBooleanField;
    tCReceberParcTitProtestado: TBooleanField;
    tCReceberParcDtGerado: TDateField;
    tCReceberParcTipoDoc: TStringField;
    tCReceberParcVlrDevolucao: TFloatField;
    tCReceberParcArqGerado: TBooleanField;
    tCReceberParcTransferencia: TBooleanField;
    tCReceberParcNumTitBanco: TStringField;
    tCReceberParcComissaoItem: TBooleanField;
    tCPagarParc: TTable;
    tCPagarParcFilial: TIntegerField;
    tCPagarParcNumCPagar: TIntegerField;
    tCPagarParcParcCPagar: TIntegerField;
    tCPagarParcDtVencCPagar: TDateField;
    tCPagarParcVlrParcCPagar: TFloatField;
    tCPagarParcQuitParcCPagar: TBooleanField;
    tCPagarParcDtPagParcCPagar: TDateField;
    tCPagarParcJurosParcCPagar: TFloatField;
    tCPagarParcCodForn: TIntegerField;
    tCPagarParcNumNotaEnt: TIntegerField;
    tCPagarParcDesconto: TFloatField;
    tCPagarParcPgtoParcial: TFloatField;
    tCPagarParcRestParcela: TFloatField;
    tCPagarParcBanco: TStringField;
    tCPagarParcPlanoContas: TIntegerField;
    tCPagarParcNroDuplicata: TIntegerField;
    tCPagarParcDespesas: TFloatField;
    tCPagarParcAbatimentos: TFloatField;
    tCPagarParcCodConta: TIntegerField;
    tCPagarParcDiasAtraso: TFloatField;
    tCPagarParcJurosPagos: TFloatField;
    tCPagarParcCodTipoCobranca: TIntegerField;
    tCPagarParcNroFatura: TIntegerField;
    tCPagarParcDtRecto: TDateField;
    tCPagarParcVlrDevolucao: TFloatField;
    TabSheet3: TRzTabSheet;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    Label6: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    tCReceber: TTable;
    tCPagar: TTable;
    tCReceberFilial: TIntegerField;
    tCReceberNumCReceber: TIntegerField;
    tCReceberNumNota: TIntegerField;
    tCReceberQuitado: TBooleanField;
    tCReceberCodCli: TIntegerField;
    tCReceberTipoDoc: TStringField;
    tCReceberDtGerado: TDateField;
    tCReceberHistorico: TStringField;
    tCReceberCancelado: TBooleanField;
    tCReceberDuplicataImp: TBooleanField;
    tCReceberVlrTotal: TFloatField;
    tCReceberBoletoImp: TBooleanField;
    tCPagarFilial: TIntegerField;
    tCPagarNumCPagar: TIntegerField;
    tCPagarNumNotaEnt: TIntegerField;
    tCPagarCodForn: TIntegerField;
    tCPagarQuitado: TBooleanField;
    tCPagarTipoDoc: TStringField;
    tCPagarDtGerado: TDateField;
    tCPagarHistorico: TStringField;
    tCPagarNroDuplicata: TIntegerField;
    tCPagarNroFatura: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLCReceber;
    procedure Monta_SQLCPagar;
    procedure Gera_mReceber;
    procedure Gera_mPagar;
  public
    { Public declarations }
  end;

var
  fVerificaContasRecPag: TfVerificaContasRecPag;

implementation

uses UDM1;

{$R *.dfm}

procedure TfVerificaContasRecPag.Gera_mPagar;
begin
  mPagar.EmptyDataSet;
  qCPagar.First;
  while not qCPagar.Eof do
    begin
      if not tCPagarParc.Locate('CodForn;NumNotaEnt',VarArrayOf([qCPagarCodForn.AsInteger,qCPagarNumNEntr.AsInteger]),[locaseinsensitive]) then
        begin
          mPagar.Insert;
          mPagarNumNota.AsInteger       := qCPagarNumNEntr.AsInteger;
          mPagarDtEntrada.AsDateTime    := qCPagarDtEntrada.AsDateTime;
          mPagarCodFornecedor.AsInteger := qCPagarCodForn.AsInteger;
          mPagarNomeFornecedor.AsString := qCPagarNomeForn.AsString;
          mPagarVlrDuplicata.AsFloat    := qCPagarVlrTotalDuplicata.AsFloat;
          mPagar.Post;
        end
      else
      if not tCPagar.Locate('CodForn;NumNotaEnt',VarArrayOf([qCPagarCodForn.AsInteger,qCPagarNumNEntr.AsInteger]),[locaseinsensitive]) then
        begin
          mPagar.Insert;
          mPagarNumNota.AsInteger       := qCPagarNumNEntr.AsInteger;
          mPagarDtEntrada.AsDateTime    := qCPagarDtEntrada.AsDateTime;
          mPagarCodFornecedor.AsInteger := qCPagarCodForn.AsInteger;
          mPagarNomeFornecedor.AsString := qCPagarNomeForn.AsString;
          mPagarVlrDuplicata.AsFloat    := qCPagarVlrTotalDuplicata.AsFloat;
          mPagar.Post;
        end;
      qCPagar.Next;
    end;
end;

procedure TfVerificaContasRecPag.Gera_mReceber;
begin
  mReceber.EmptyDataSet;
  qCReceber.First;
  while not qCReceber.Eof do
    begin
      if not tCReceberParc.Locate('CodCli;NumNota',VarArrayOf([qCReceberCodCli.AsInteger,qCReceberNumNota.AsInteger]),[locaseinsensitive]) then
        begin
          mReceber.Insert;
          mReceberNumNota.AsInteger    := qCReceberNumNota.AsInteger;
          mReceberDtEmissao.AsDateTime := qCReceberDtEmissao.AsDateTime;
          mReceberCodCliente.AsInteger := qCReceberCodCli.AsInteger;
          mReceberNomeCliente.AsString := qCReceberNome.AsString;
          mReceberVlrDuplicata.AsFloat := qCReceberVlrTotalDupl.AsFloat;
          mReceber.Post;
        end
      else
      if not tCReceber.Locate('CodCli;NumNota',VarArrayOf([qCReceberCodCli.AsInteger,qCReceberNumNota.AsInteger]),[locaseinsensitive]) then
        begin
          mReceber.Insert;
          mReceberNumNota.AsInteger    := qCReceberNumNota.AsInteger;
          mReceberDtEmissao.AsDateTime := qCReceberDtEmissao.AsDateTime;
          mReceberCodCliente.AsInteger := qCReceberCodCli.AsInteger;
          mReceberNomeCliente.AsString := qCReceberNome.AsString;
          mReceberVlrDuplicata.AsFloat := qCReceberVlrTotalDupl.AsFloat;
          mReceber.Post;
        end;
      qCReceber.Next;
    end;
end;

procedure TfVerificaContasRecPag.Monta_SQLCReceber;
begin
  qCReceber.Close;
  qCReceber.SQL.Clear;
  qCReceber.SQL.Add('SELECT Dbnotafiscal.NumNota, Dbnotafiscal.Filial, Dbnotafiscal.DtEmissao, Dbnotafiscal.CodCli, Dbnotafiscal.VlrTotalDupl, Dbcliente.Nome');
  qCReceber.SQL.Add('FROM "DBNOTAFISCAL.DB" Dbnotafiscal');
  qCReceber.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qCReceber.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qCReceber.SQL.Add('WHERE  (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2 )');
  qCReceber.SQL.Add('       AND ((dbNotaFiscal.CondPgto = ''P'') or (dbNotaFiscal.CondPgto = ''V''))');
  qCReceber.SQL.Add('       AND ((dbNotaFiscal.Cancelada = False) or (dbNotaFiscal.Cancelada is Null))');
  qCReceber.ParamByName('Data1').AsDate := DateEdit1.Date;
  qCReceber.ParamByName('Data2').AsDate := DateEdit2.Date;
  qCReceber.Open;
end;

procedure TfVerificaContasRecPag.Monta_SQLCPagar;
begin
  qCPagar.Close;
  qCPagar.SQL.Clear;
  qCPagar.SQL.Add('SELECT Dbnentrada.NumNEntr, Dbnentrada.CodForn, Dbnentrada.DtEntrada, Dbnentrada.VlrTotalDuplicata, Dbfornecedores.NomeForn, Dbnentrada.Filial');
  qCPagar.SQL.Add('FROM "DBNENTRADA.DB" Dbnentrada');
  qCPagar.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qCPagar.SQL.Add('   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)');
  qCPagar.SQL.Add('WHERE  (Dbnentrada.DtEntrada BETWEEN :Data1 AND :Data2)');
  qCPagar.SQL.Add('      AND  ((dbNEntrada.CondPgto = ''P'')  or (dbNEntrada.CondPgto = ''V''))');
  qCPagar.ParamByName('Data1').AsDate := DateEdit1.Date;
  qCPagar.ParamByName('Data2').AsDate := DateEdit2.Date;
  qCPagar.Open;
end;

procedure TfVerificaContasRecPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCPagar.Close;
  qCReceber.Close;
  Action := Cafree;
end;

procedure TfVerificaContasRecPag.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfVerificaContasRecPag.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date > 0) and (DateEdit2.Date > 0) then
    begin
      Monta_SQLCReceber;
      Gera_mReceber;
      ShowMessage('Final da verificação!');
    end
  else
    ShowMessage('Falta informar as datas!');
end;

procedure TfVerificaContasRecPag.BitBtn2Click(Sender: TObject);
begin
  if (DateEdit1.Date > 0) and (DateEdit2.Date > 0) then
    begin
      Monta_SQLCPagar;
      Gera_mPagar;
      ShowMessage('Final da verificação!');
    end
  else
    ShowMessage('Falta informar as datas!');
end;

procedure TfVerificaContasRecPag.FormShow(Sender: TObject);
begin
  tCReceberParc.Open;
  tCReceberParc.Refresh;
  tCPagarParc.Open;
  tCPagarParc.Refresh;
  tCReceber.Open;
  tCReceber.Refresh;
  tCPagar.Open;
  tCPagar.Refresh;
end;

procedure TfVerificaContasRecPag.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    Panel1.Visible := not(Panel1.Visible);
end;

procedure TfVerificaContasRecPag.BitBtn4Click(Sender: TObject);
var
  vQtdAux : Real;
  vContadorAux : Integer;
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  if DM1.tProduto.Locate('Codigo',CurrencyEdit2.AsInteger,[loCaseInsensitive]) then
    begin
      vContadorAux := 0;
      DM1.tPedido.IndexFieldNames := 'Pedido';
      if DM1.tPedido.Locate('Pedido',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        begin
          ProgressBar1.Max      := DM1.tPedidoItem.RecordCount;
          ProgressBar1.Position := 0;
          DM1.tPedidoItem.First;
          while not DM1.tPedidoItem.Eof do
            begin
              ProgressBar1.Position := ProgressBar1.Position + 1;
              if (DM1.tPedidoItemPedido.AsInteger = CurrencyEdit1.AsInteger) and (DM1.tPedidoItemCodProduto.AsInteger = CurrencyEdit2.AsInteger) then
                begin
                  inc(vContadorAux);
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemPreco.AsFloat := CurrencyEdit3.Value;
                  vQtdAux                      := DM1.tPedidoItemQtdPares.AsFloat;
                  if DM1.tProdutoProdMat.AsString = 'P' then
                    if (DM1.tUnidade.Locate('Unidade',DM1.tPedidoItemUnidade.AsString,[loCaseInsensitive])) and
                       (DM1.tUnidadeConversor.AsFloat > 0) then
                      vQtdAux := DM1.tPedidoItemQtdPares.AsFloat / DM1.tUnidadeConversor.AsFloat;
                  DM1.tPedidoItemVlrTotal.AsCurrency   := StrToCurr(FormatCurr('0.00',DM1.tPedidoItemPreco.AsCurrency * vQtdAux));
                  DM1.tPedidoItem.Post;
                end;
              DM1.tPedidoItem.Next;
            end;
        end
      else
        ShowMessage('Produto não cadastrado!');
    end;
  Label5.Caption := IntToStr(vContadorAux);
  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
end;

end.
