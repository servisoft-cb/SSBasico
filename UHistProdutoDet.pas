unit UHistProdutoDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, RXCtrls, ExtCtrls, Grids, DBGrids, SMDBGrid,
  RzTabs, DB, DBTables, Mask, ToolEdit, CurrEdit, DBClient;

type
  TfHistProdutoDet = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    RxLabel2: TRxLabel;
    DBText2: TDBText;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    qCliente: TQuery;
    qClienteNome: TStringField;
    qClienteCodCliente: TIntegerField;
    qClienteQtdPares: TFloatField;
    qClienteQtdParesFat: TFloatField;
    qClienteQtdParesRest: TFloatField;
    qClienteQtdParesCanc: TFloatField;
    dsqCliente: TDataSource;
    qTipoProduto: TQuery;
    TabSheet1: TRzTabSheet;
    mProdutoTipo: TClientDataSet;
    mProdutoTipoDtEmissaoIni: TDateField;
    mProdutoTipoDtEmissaoFin: TDateField;
    mProdutoTipoQtdPedido: TFloatField;
    mProdutoTipoQtdFaturada: TFloatField;
    mProdutoTipoQtdPendente: TFloatField;
    mProdutoTipoQtdCancelada: TFloatField;
    mProdutoTipoVlrTotal: TFloatField;
    dsmProdutoTipo: TDataSource;
    mProdutoTipoDescTipo: TStringField;
    Label3: TLabel;
    qTipoProdutoTipo: TStringField;
    qTipoProdutoQtdPares: TFloatField;
    qTipoProdutoQtdParesFat: TFloatField;
    qTipoProdutoQtdParesRest: TFloatField;
    qTipoProdutoQtdParesCanc: TFloatField;
    qTipoProdutoVlrTotal: TFloatField;
    qTipoProdutoDtEmissaoIni: TDateField;
    qTipoProdutoDtEmissaoFin: TDateField;
    SMDBGrid1: TSMDBGrid;
    RxLabel3: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    RxLabel4: TRxLabel;
    dsqTipoProduto: TDataSource;
    qClienteDtEmissaoIni: TDateField;
    qClienteDtEmissaoFin: TDateField;
    qFatCliente: TQuery;
    qFatClienteVlrTotal: TFloatField;
    qFatClientePercDesc: TFloatField;
    qFatClienteCodCli: TIntegerField;
    qFatClienteDtEmissaoIni: TDateField;
    qFatClienteDtEmissaoFin: TDateField;
    mCliente: TClientDataSet;
    mClienteCodCliente: TIntegerField;
    mClienteNomeCliente: TStringField;
    mClienteDtEmissaoIni: TDateField;
    mClienteDtEmissaoFin: TDateField;
    mClienteQtdPares: TFloatField;
    mClienteQtdParesFat: TFloatField;
    mClienteQtdParesRest: TFloatField;
    mClienteQtdParesCanc: TFloatField;
    mClienteVlrFaturamento: TFloatField;
    mClientePercFaturamento: TFloatField;
    dsmCliente: TDataSource;
    mClienteDtEmissaoNotaIni: TDateField;
    mClienteDtEmissaoNotaFin: TDateField;
    qFatClientelkNomeCliente: TStringField;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mProdutoTipoNewRecord(DataSet: TDataSet);
    procedure mClienteNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Monta_SQLCli;
    procedure Monta_SQLTipo;
    procedure Gera_mTipo;
    procedure Gera_mCliente;
  public
    { Public declarations }
  end;

var
  fHistProdutoDet: TfHistProdutoDet;

implementation

uses UDM1, UHistProduto;

{$R *.dfm}

procedure TfHistProdutoDet.Gera_mCliente;
var
  vAux : Real;
begin
  mCliente.EmptyDataSet;
  qCliente.First;
  while not qCliente.Eof do
    begin
      if mCliente.Locate('CodCliente',qClienteCodCliente.AsInteger,[loCaseInsensitive]) then
        mCliente.Edit
      else
        begin
          mCliente.Insert;
          mClienteCodCliente.AsInteger := qClienteCodCliente.AsInteger;
          mClienteNomeCliente.AsString := qClienteNome.AsString;
        end;
      if (mClienteDtEmissaoIni.AsDateTime < 1) or (mClienteDtEmissaoIni.AsDateTime > qClienteDtEmissaoIni.AsDateTime) then
        mClienteDtEmissaoIni.AsDateTime := qClienteDtEmissaoIni.AsDateTime;
      if (mClienteDtEmissaoFin.AsDateTime < 1) or (mClienteDtEmissaoFin.AsDateTime < qClienteDtEmissaoFin.AsDateTime) then
        mClienteDtEmissaoFin.AsDateTime := qClienteDtEmissaoFin.AsDateTime;
      mClienteQtdPares.AsFloat := mClienteQtdPares.AsFloat + qClienteQtdPares.AsFloat;
      mClienteQtdParesCanc.AsFloat := mClienteQtdParesCanc.AsFloat + qClienteQtdParesCanc.AsFloat;
      mClienteQtdParesFat.AsFloat  := mClienteQtdParesFat.AsFloat + qClienteQtdParesFat.AsFloat;
      mClienteQtdParesRest.AsFloat := mClienteQtdParesRest.AsFloat + qClienteQtdParesRest.AsFloat;
      mCliente.Post;
      qCliente.Next;
    end;

  qFatCliente.First;
  while not qFatCliente.Eof do
    begin
      vAux := 0;
      if qFatClientePercDesc.AsFloat > 0 then
        vAux := StrToFloat(FormatFloat('0.00',qFatClienteVlrTotal.AsFloat * qFatClientePercDesc.AsFloat / 100));
      if mCliente.Locate('CodCliente',qFatClienteCodCli.AsInteger,[loCaseInsensitive]) then
        mCliente.Edit
      else
        begin
          mCliente.Insert;
          mClienteCodCliente.AsInteger := qFatClienteCodCli.AsInteger;
          mClienteNomeCliente.AsString := qFatClientelkNomeCliente.AsString;
        end;
      if (mClienteDtEmissaoNotaIni.AsDateTime < 1) or (mClienteDtEmissaoNotaIni.AsDateTime > qFatClienteDtEmissaoIni.AsDateTime) then
        mClienteDtEmissaoNotaIni.AsDateTime := qFatClienteDtEmissaoIni.AsDateTime;
      if (mClienteDtEmissaoNotaFin.AsDateTime < 1) or (mClienteDtEmissaoNotaFin.AsDateTime < qFatClienteDtEmissaoFin.AsDateTime) then
        mClienteDtEmissaoNotaFin.AsDateTime := qFatClienteDtEmissaoFin.AsDateTime;
      mClienteVlrFaturamento.AsFloat  := StrToFloat(FormatFloat('0.00',mClienteVlrFaturamento.AsFloat + qFatClienteVlrTotal.AsFloat - vAux));
      mClientePercFaturamento.AsFloat := StrToFloat(FormatFloat('0.0000',(mClienteVlrFaturamento.AsFloat / CurrencyEdit1.Value) * 100));
      mCliente.Post;
      qFatCliente.Next;
    end;
end;

procedure TfHistProdutoDet.Gera_mTipo;
var
  vNome : String;
  vAux : Real;
begin
  mProdutoTipo.EmptyDataSet;
  qTipoProduto.First;
  while not qTipoProduto.Eof do
    begin
      if qTipoProdutoTipo.AsString = 'A' then
        vNome := 'AMOSTRA'
      else
      if qTipoProdutoTipo.AsString = 'R' then
        vNome := 'REPOSICAO'
      else
      if qTipoProdutoTipo.AsString = 'F' then
        vNome := 'FALTA'
      else
      if qTipoProdutoTipo.AsString = 'N' then
        vNome := 'AMOSTRABRIONORMAL'
      else
      if qTipoProdutoTipo.AsString = 'S' then
        vNome := 'AMOSTRABRIOSEMCUSTO'
      else
        vNome := 'VENDA';
      if mProdutoTipo.Locate('DescTipo',vNome,[loCaseInsensitive]) then
        mProdutoTipo.Edit
      else
        begin
          mProdutoTipo.Insert;
          mProdutoTipoDescTipo.AsString := vNome;
          mProdutoTipoDtEmissaoIni.AsDateTime := qTipoProdutoDtEmissaoIni.AsDateTime;
          mProdutoTipoDtEmissaoFin.AsDateTime := qTipoProdutoDtEmissaoFin.AsDateTime;
        end;
      if (mProdutoTipoDtEmissaoIni.AsDateTime < 1) or (mProdutoTipoDtEmissaoIni.AsDateTime > qTipoProdutoDtEmissaoIni.AsDateTime) then
        mProdutoTipoDtEmissaoIni.AsDateTime := qTipoProdutoDtEmissaoIni.AsDateTime;
      if (mProdutoTipoDtEmissaoFin.AsDateTime < 1) or (mProdutoTipoDtEmissaoFin.AsDateTime < qTipoProdutoDtEmissaoFin.AsDateTime) then
        mProdutoTipoDtEmissaoFin.AsDateTime := qTipoProdutoDtEmissaoFin.AsDateTime;
      mProdutoTipoQtdCancelada.AsFloat := mProdutoTipoQtdCancelada.AsFloat + qTipoProdutoQtdParesCanc.AsFloat;
      mProdutoTipoQtdFaturada.AsFloat  := mProdutoTipoQtdFaturada.AsFloat  + qTipoProdutoQtdParesFat.AsFloat;
      mProdutoTipoQtdPedido.AsFloat    := mProdutoTipoQtdPedido.AsFloat + qTipoProdutoQtdPares.AsFloat;
      mProdutoTipoQtdPendente.AsFloat  := mProdutoTipoQtdPendente.AsFloat + qTipoProdutoQtdParesRest.AsFloat;
      mProdutoTipoVlrTotal.AsFloat     := mProdutoTipoVlrTotal.AsFloat + qTipoProdutoVlrTotal.AsFloat;
      mProdutoTipo.Post;
      qTipoProduto.Next;
    end;
end;

procedure TfHistProdutoDet.Monta_SQLTipo;
begin
  //Pedido
  qTipoProduto.Close;
  qTipoProduto.SQL.Clear;
  qTipoProduto.SQL.Add('SELECT Dbpedido.Tipo, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, ');
  qTipoProduto.SQL.Add(' SUM( Dbpedidoitem.VlrTotal ) VlrTotal, MIN( Dbpedido.DtEmissao ) DtEmissaoIni, MAX( Dbpedido.DtEmissao ) DtEmissaoFin');
  qTipoProduto.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qTipoProduto.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qTipoProduto.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qTipoProduto.SQL.Add('WHERE (dbPedidoItem.CodProduto = :CodProduto)');
  qTipoProduto.ParamByName('CodProduto').AsInteger := fHistProduto.qProdutoCodProduto.AsInteger;
  if fHistProduto.RxDBLookupCombo2.Text <> '' then
    begin
      qTipoProduto.SQL.Add(' AND (dbPedido.Filial = :Filial)' );
      qTipoProduto.ParamByName('Filial').AsInteger := fHistProduto.RxDBLookupCombo2.KeyValue;
    end;
  if fHistProduto.DateEdit1.Date > 0 then
    begin
      qTipoProduto.SQL.Add('  AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
      qTipoProduto.ParamByName('DtEmissaoIni').AsDate := fHistProduto.DateEdit1.Date;
    end;
  if fHistProduto.DateEdit2.Date > 0 then
    begin
      qTipoProduto.SQL.Add('  AND (dbPedido.DtEmissao <= :DtEmissaoFin)');
      qTipoProduto.ParamByName('DtEmissaoFin').AsDate := fHistProduto.DateEdit2.Date;
    end;
  qTipoProduto.SQL.Add('GROUP BY Dbpedido.Tipo');
  qTipoProduto.Open;
end;

procedure TfHistProdutoDet.Monta_SQLCli;
begin
  //Pedidos
  qCliente.Close;
  qCliente.SQL.Clear;
  qCliente.SQL.Add('SELECT Dbcliente.Nome, Dbpedido.CodCliente, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, ');
  qCliente.SQL.Add(' Min(dbPedido.DtEmissao) DtEmissaoIni, Max(dbPedido.DtEmissao) DtEmissaoFin');
  qCliente.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qCliente.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qCliente.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qCliente.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qCliente.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qCliente.SQL.Add('WHERE (dbPedidoItem.CodProduto = :CodProduto)');
  qCliente.ParamByName('CodProduto').AsInteger := fHistProduto.qProdutoCodProduto.AsInteger;
  if fHistProduto.RxDBLookupCombo2.Text <> '' then
    begin
      qCliente.SQL.Add(' AND (dbPedido.Filial = :Filial)' );
      qCliente.ParamByName('Filial').AsInteger := fHistProduto.RxDBLookupCombo2.KeyValue;
    end;
  if fHistProduto.RxDBLookupCombo4.Text <> '' then
    begin
      qCliente.SQL.Add(' AND (dbPedido.CodVendedor = :CodVendedor)' );
      qCliente.ParamByName('CodVendedor').AsInteger := fHistProduto.RxDBLookupCombo4.KeyValue;
    end;

  if fHistProduto.DateEdit1.Date > 0 then
    begin
      qCliente.SQL.Add('  AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
      qCliente.ParamByName('DtEmissaoIni').AsDate := fHistProduto.DateEdit1.Date;
    end;
  if fHistProduto.DateEdit2.Date > 0 then
    begin
      qCliente.SQL.Add('  AND (dbPedido.DtEmissao <= :DtEmissaoFin)');
      qCliente.ParamByName('DtEmissaoFin').AsDate := fHistProduto.DateEdit2.Date;
    end;
  case fHistProduto.ComboBox1.ItemIndex of
    0 : qCliente.SQL.Add(' AND (dbPedidoItem.QtdParesRest > 0)');
    1 : qCliente.SQL.Add(' AND (dbPedidoItem.QtdParesFat > 0)');
  end;
  qCliente.SQL.Add('GROUP BY Dbcliente.Nome, Dbpedido.CodCliente');
  qCliente.Open;

  //Notas
  qFatCliente.Close;
  qFatCliente.SQL.Clear;
  qFatCliente.SQL.Add('SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.PercDesc, dbNotaFiscal.CodCli, Min(dbNotaFiscal.DtEmissao) DtEmissaoIni, Max(dbNotaFiscal.DtEmissao) DtEmissaoFin');
  qFatCliente.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qFatCliente.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qFatCliente.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qFatCliente.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qFatCliente.SQL.Add('WHERE   (Dbnotafiscalitens.CodProduto = :CodProduto)');
  qFatCliente.SQL.Add('   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  qFatCliente.SQL.Add('   AND (dbNotaFiscalItens.GeraDupl = True)');
  qFatCliente.ParamByName('CodProduto').AsInteger := fHistProduto.qProdutoCodProduto.AsInteger;

  if fHistProduto.RxDBLookupCombo2.Text <> '' then
    begin
      qFatCliente.SQL.Add(' AND (dbNotaFiscal.Filial = :Filial)' );
      qFatCliente.ParamByName('Filial').AsInteger := fHistProduto.RxDBLookupCombo2.KeyValue;
    end;
  if fHistProduto.DateEdit1.Date > 0 then
    begin
      qFatCliente.SQL.Add('  AND (dbNotaFiscal.DtEmissao >= :DtEmissaoIni)');
      qFatCliente.ParamByName('DtEmissaoIni').AsDate := fHistProduto.DateEdit1.Date;
    end;
  if fHistProduto.DateEdit2.Date > 0 then
    begin
      qFatCliente.SQL.Add('  AND (dbNotaFiscal.DtEmissao <= :DtEmissaoFin)');
      qFatCliente.ParamByName('DtEmissaoFin').AsDate := fHistProduto.DateEdit2.Date;
    end;
  qFatCliente.SQL.Add('GROUP BY Dbnotafiscal.PercDesc, dbNotaFiscal.CodCli');
  qFatCliente.Open;
end;

procedure TfHistProdutoDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTipoProduto.Close;
  qCliente.Close;
  qFatCliente.Close;
  Action := Cafree;
end;

procedure TfHistProdutoDet.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Monta_SQLCli;
  Monta_SQLTipo;
  fHistProduto.Monta_SQLFatProd;
  fHistProduto.Monta_SQLFatGeral;
  Gera_mTipo;
  fHistProduto.Calcula_FatProduto;
  CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',fHistProduto.vVlrFatProduto));
  CurrencyEdit2.Value := StrToFloat(FormatFloat('0.0000',(fHistProduto.vVlrFatProduto / fHistProduto.vVlrFatGeral) * 100));
  Gera_mCliente;
  Screen.Cursor   := crDefault;
end;

procedure TfHistProdutoDet.mProdutoTipoNewRecord(DataSet: TDataSet);
begin
  mProdutoTipoQtdCancelada.AsFloat := 0;
  mProdutoTipoQtdFaturada.AsFloat  := 0;
  mProdutoTipoQtdPedido.AsFloat    := 0;
  mProdutoTipoQtdPendente.AsFloat  := 0;
end;

procedure TfHistProdutoDet.mClienteNewRecord(DataSet: TDataSet);
begin
  mClienteDtEmissaoIni.AsDateTime     := 0;
  mClienteDtEmissaoFin.AsDateTime     := 0;
  mClienteQtdPares.AsFloat            := 0;
  mClienteQtdParesFat.AsFloat         := 0;
  mClienteQtdParesRest.AsFloat        := 0;
  mClienteQtdParesCanc.AsFloat        := 0;
  mClienteVlrFaturamento.AsFloat      := 0;
  mClientePercFaturamento.AsFloat     := 0;
  mClienteDtEmissaoNotaIni.AsDateTime := 0;
  mClienteDtEmissaoNotaFin.AsDateTime := 0;
end;

end.
