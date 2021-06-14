unit UHistProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, StdCtrls, Mask, CurrEdit, RxLookup, RzTabs, SMDBComb,
  Grids, DBGrids, SMDBGrid, SMDBStat, DB, DBTables, DBClient, Buttons, ALed,
  RXDBCtrl, ComCtrls, DBCtrls, RXCtrls;

type
  TfHistProduto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    qPedidoDet: TQuery;
    dsqPedidoDet: TDataSource;
    qPedidoDetPedido: TIntegerField;
    qPedidoDetDtEmissao: TDateField;
    qPedidoDetCodCliente: TIntegerField;
    qPedidoDetNomeCliente: TStringField;
    qPedidoDetCodVendedor: TIntegerField;
    qPedidoDetPercComissao: TFloatField;
    qPedidoDetPedidoCliente: TStringField;
    qPedidoDetItem: TIntegerField;
    qPedidoDetCodProduto: TIntegerField;
    qPedidoDetCodCor: TIntegerField;
    qPedidoDetCodGrade: TIntegerField;
    qPedidoDetQtdPares: TFloatField;
    qPedidoDetQtdParesFat: TFloatField;
    qPedidoDetQtdParesRest: TFloatField;
    qPedidoDetPreco: TFloatField;
    qPedidoDetVlrTotal: TFloatField;
    qPedidoDetVlrDesconto: TFloatField;
    qPedidoDetQtdParesCanc: TFloatField;
    qPedidoDetNumOS: TStringField;
    qPedidoDetDtReprogramacao: TDateField;
    qPedidoDetUnidade: TStringField;
    qPedidoDetTipo: TStringField;
    Label7: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    tCor: TTable;
    tCorCodigo: TIntegerField;
    tCorNome: TStringField;
    qPedidoDetlkNomeCor: TStringField;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    RzTabSheet2: TRzTabSheet;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SMDBGrid2: TSMDBGrid;
    qPedidoAcum: TQuery;
    qPedidoDetlkNomeVendedor: TStringField;
    qPedidoDetFantasia: TStringField;
    CheckBox3: TCheckBox;
    qPedidoAcumPedido: TIntegerField;
    qPedidoAcumCodCor: TIntegerField;
    qPedidoAcumCodGrade: TIntegerField;
    qPedidoAcumCodProduto: TIntegerField;
    qPedidoAcumQtdPares: TFloatField;
    qPedidoAcumQtdParesFat: TFloatField;
    qPedidoAcumQtdParesRest: TFloatField;
    qPedidoAcumQtdParesCanc: TFloatField;
    qPedidoAcumCodVendedor: TIntegerField;
    qPedidoAcumCodCliente: TIntegerField;
    qPedidoAcumNomeCliente: TStringField;
    mPedAcumulado: TClientDataSet;
    mPedAcumuladoCodProduto: TIntegerField;
    mPedAcumuladoCodCor: TIntegerField;
    mPedAcumuladoNomeCor: TStringField;
    mPedAcumuladoCodVendedor: TIntegerField;
    mPedAcumuladoNomeVendedor: TStringField;
    mPedAcumuladoCodCliente: TIntegerField;
    mPedAcumuladoNomeCliente: TStringField;
    mPedAcumuladoQtdPares: TFloatField;
    mPedAcumuladoQtdParesRest: TFloatField;
    mPedAcumuladoQtdParesFat: TFloatField;
    mPedAcumuladoQtdParesCanc: TFloatField;
    dsmPedAcumulado: TDataSource;
    mPedAcumuladoVlrTotal: TFloatField;
    mPedAcumuladoFantasia: TStringField;
    qPedidoAcumlkNomeCor: TStringField;
    qPedidoAcumlkNomeVendedor: TStringField;
    qPedidoAcumFantasia: TStringField;
    qPedidoAcumVlrTotal: TFloatField;
    dsqPedidoAcum: TDataSource;
    ProgressBar1: TProgressBar;
    qProduto: TQuery;
    qProdutoCodProduto: TIntegerField;
    qProdutoReferencia: TStringField;
    qProdutoNome: TStringField;
    dsqProduto: TDataSource;
    qProdutoQtdPares: TFloatField;
    qProdutoQtdParesFat: TFloatField;
    qProdutoQtdParesRest: TFloatField;
    qProdutoQtdParesCanc: TFloatField;
    qProdutoVlrTotal: TFloatField;
    TabSheet1: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    RxLabel2: TRxLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ALed2: TALed;
    Label9: TLabel;
    ALed3: TALed;
    Label10: TLabel;
    StaticText1: TStaticText;
    TabSheet2: TRzTabSheet;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    qNotaDet: TQuery;
    qNotaDetNumNota: TIntegerField;
    qNotaDetFilial: TIntegerField;
    qNotaDetDtEmissao: TDateField;
    qNotaDetCodProduto: TIntegerField;
    qNotaDetCodCor: TIntegerField;
    qNotaDetUnidade: TStringField;
    qNotaDetQtd: TFloatField;
    qNotaDetIcms: TFloatField;
    qNotaDetIpi: TFloatField;
    qNotaDetVlrUnit: TFloatField;
    qNotaDetVlrTotal: TFloatField;
    qNotaDetBaseIcms: TFloatField;
    qNotaDetVlrIcms: TFloatField;
    qNotaDetVlrIpi: TFloatField;
    qNotaDetNatOper: TSmallintField;
    qNotaDetlkNomeCor: TStringField;
    qNotaDetNomeCliente: TStringField;
    SMDBGrid4: TSMDBGrid;
    dsqNotaDet: TDataSource;
    TabSheet3: TRzTabSheet;
    qFaturamento: TQuery;
    qFaturamentoVlrTotal: TFloatField;
    qFaturamentoPercDesc: TFloatField;
    qFaturamentoCodCli: TIntegerField;
    qFaturamentoDtEmissaoIni: TDateField;
    qFaturamentoDtEmissaoFin: TDateField;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    qFaturamentoCodProduto: TIntegerField;
    mFaturamento: TClientDataSet;
    mFaturamentoCodProduto: TIntegerField;
    mFaturamentoNomeProduto: TStringField;
    mFaturamentoReferencia: TStringField;
    mFaturamentoVlrTotal: TFloatField;
    mFaturamentoQtd: TFloatField;
    mFaturamentoDtEmissaoNotaIni: TDateField;
    mFaturamentoDtEmissaoNotaFin: TDateField;
    mFaturamentoCodCliente: TIntegerField;
    mFaturamentoCodVendedor: TIntegerField;
    mFaturamentoNomeVendedor: TStringField;
    mFaturamentoNomeCliente: TStringField;
    mFaturamentoCodCor: TIntegerField;
    mFaturamentoNomeCor: TStringField;
    SMDBGrid5: TSMDBGrid;
    dsmFaturamento: TDataSource;
    qFaturamentoCodCor: TIntegerField;
    qFaturamentoCodVendedor: TIntegerField;
    qFaturamentoCodVendedor2: TIntegerField;
    ProgressBar2: TProgressBar;
    qFaturamentolkNomeCor: TStringField;
    qFaturamentolkNomeVendedor: TStringField;
    tProduto: TTable;
    tProdutoCodigo: TIntegerField;
    tProdutoReferencia: TStringField;
    tProdutoNome: TStringField;
    BitBtn5: TBitBtn;
    qFatGeral: TQuery;
    qFatGeralVlrTotal: TFloatField;
    qFatGeralPercDesc: TFloatField;
    qFatProduto: TQuery;
    qFatProdutoPercDesc: TFloatField;
    qFatProdutoVlrTotal: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure mPedAcumuladoNewRecord(DataSet: TDataSet);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid3DblClick(Sender: TObject);
    procedure RzTabSheet1Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure mFaturamentoNewRecord(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLProduto;
    procedure Monta_SQLDet;
    procedure Monta_SQLAcum;
    procedure Gera_ArqAcumulado;
    procedure Monta_SQLNotaDet;
    procedure Monta_SQLFaturamento;
  public
    { Public declarations }
    vVlrFatProduto, vVlrFatGeral : Real;
    procedure Monta_SQLFatGeral;
    procedure Calcula_FatProduto;
    procedure Monta_SQLFatProd;
  end;

var
  fHistProduto: TfHistProduto;

implementation

uses UDM1, UHistProdutoDet, URelHistProdutosAcum;

{$R *.dfm}

procedure TfHistProduto.Monta_SQLFatProd;
begin
  //Notas (faturamento do produto)
  qFatProduto.Close;
  qFatProduto.SQL.Clear;
  qFatProduto.SQL.Add('SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal , Dbnotafiscal.PercDesc ');
  qFatProduto.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal ');
  qFatProduto.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens ');
  qFatProduto.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial) ');
  qFatProduto.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota) ');
  qFatProduto.SQL.Add('WHERE   (Dbnotafiscalitens.CodProduto = :CodProduto) ');
  qFatProduto.SQL.Add('   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) ) ');
  qFatProduto.SQL.Add('   AND (dbNotaFiscalItens.GeraDupl = True) ');
  qFatProduto.SQL.Add('   AND ((dbNotaFiscalItens.Material = False) OR (dbNotaFiscalItens.Material is Null))');
  qFatProduto.ParamByName('CodProduto').AsInteger := fHistProduto.qProdutoCodProduto.AsInteger;
  if fHistProduto.RxDBLookupCombo2.Text <> '' then
    begin
      qFatProduto.SQL.Add(' AND (dbNotaFiscal.Filial = :Filial)' );
      qFatProduto.ParamByName('Filial').AsInteger := fHistProduto.RxDBLookupCombo2.KeyValue;
    end;
  if fHistProduto.DateEdit1.Date > 0 then
    begin
      qFatProduto.SQL.Add('  AND (dbNotaFiscal.DtEmissao >= :DtEmissaoIni)');
      qFatProduto.ParamByName('DtEmissaoIni').AsDate := fHistProduto.DateEdit1.Date;
    end;
  if fHistProduto.DateEdit2.Date > 0 then
    begin
      qFatProduto.SQL.Add('  AND (dbNotaFiscal.DtEmissao <= :DtEmissaoFin)');
      qFatProduto.ParamByName('DtEmissaoFin').AsDate := fHistProduto.DateEdit2.Date;
    end;
  qFatProduto.SQL.Add('GROUP BY Dbnotafiscal.PercDesc ');
  qFatProduto.Open;
end;

procedure TfHistProduto.Calcula_FatProduto;
var
  vAux : Real;
begin
  //Faturamento do produto
  vVlrFatProduto := 0;
  qFatProduto.First;
  while not qFatProduto.Eof do
    begin
      vAux := 0;
      if qFatProdutoPercDesc.AsFloat > 0 then
        vAux := StrToFloat(FormatFloat('0.00',qFatProdutoVlrTotal.AsFloat * qFatProdutoPercDesc.AsFloat / 100));
      vVlrFatProduto := StrToFloat(FormatFloat('0.00',vVlrFatProduto + qFatProdutoVlrTotal.AsFloat - vAux));
      qFatProduto.Next;
    end;

  //Faturamento Geral
  vVlrFatGeral := 0;
  qFatGeral.First;
  while not qFatGeral.Eof do
    begin
      vAux := 0;
      if qFatGeralPercDesc.AsFloat > 0 then
        vAux := StrToFloat(FormatFloat('0.00',qFatGeralVlrTotal.AsFloat * qFatGeralPercDesc.AsFloat / 100));
      vVlrFatGeral := StrToFloat(FormatFloat('0.00',vVlrFatGeral + qFatGeralVlrTotal.AsFloat - vAux));
      qFatGeral.Next;
    end;
end;

procedure TfHistProduto.Monta_SQLFatGeral;
begin
  //Notas (faturamento geral)
  qFatGeral.Close;
  qFatGeral.SQL.Clear;
  qFatGeral.SQL.Add('SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal , Dbnotafiscal.PercDesc ');
  qFatGeral.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal ');
  qFatGeral.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens ');
  qFatGeral.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial) ');
  qFatGeral.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota) ');
  qFatGeral.SQL.Add('WHERE  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) ) ');
  qFatGeral.SQL.Add('   AND (dbNotaFiscalItens.GeraDupl = True) ');
  qFatGeral.SQL.Add('   AND ((dbNotaFiscalItens.Material = False) OR (dbNotaFiscalItens.Material is Null))');
  if fHistProduto.RxDBLookupCombo2.Text <> '' then
    begin
      qFatGeral.SQL.Add(' AND (dbNotaFiscal.Filial = :Filial)' );
      qFatGeral.ParamByName('Filial').AsInteger := fHistProduto.RxDBLookupCombo2.KeyValue;
    end;
  if fHistProduto.DateEdit1.Date > 0 then
    begin
      qFatGeral.SQL.Add('  AND (dbNotaFiscal.DtEmissao >= :DtEmissaoIni)');
      qFatGeral.ParamByName('DtEmissaoIni').AsDate := fHistProduto.DateEdit1.Date;
    end;
  if fHistProduto.DateEdit2.Date > 0 then
    begin
      qFatGeral.SQL.Add('  AND (dbNotaFiscal.DtEmissao <= :DtEmissaoFin)');
      qFatGeral.ParamByName('DtEmissaoFin').AsDate := fHistProduto.DateEdit2.Date;
    end;
  qFatGeral.SQL.Add('GROUP BY Dbnotafiscal.PercDesc ');
  qFatGeral.Open;
end;

procedure TfHistProduto.Monta_SQLFaturamento;
begin
  qFaturamento.Close;
  qFaturamento.SQL.Clear;
  qFaturamento.SQL.Add('SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.PercDesc, dbNotaFiscal.CodCli, Min(dbNotaFiscal.DtEmissao) DtEmissaoIni, Max(dbNotaFiscal.DtEmissao) DtEmissaoFin, ');
  qFaturamento.SQL.Add(' dbNotaFiscalItens.CodProduto, dbNotaFiscalItens.CodCor, dbNotaFiscal.CodVendedor, dbNotaFiscal.CodVendedor2 ');
  qFaturamento.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qFaturamento.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qFaturamento.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qFaturamento.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qFaturamento.SQL.Add('WHERE   ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  qFaturamento.SQL.Add('   AND (dbNotaFiscalItens.GeraDupl = True)');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qFaturamento.SQL.Add(' AND (dbNotaFiscal.Filial = :Filial)');
      qFaturamento.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qFaturamento.SQL.Add(' AND (dbNotaFiscal.CodCli = :CodCli)');
      qFaturamento.ParamByName('CodCli').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qFaturamento.SQL.Add('  AND ((dbNotaFiscal.CodVendedor = :CodVendedor) or (dbNotaFiscal.CodVendedor2 = :CodVendedor2))');
      qFaturamento.ParamByName('CodVendedor').AsInteger  := RxDBLookupCombo4.KeyValue;
      qFaturamento.ParamByName('CodVendedor2').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qFaturamento.SQL.Add('  AND (dbNotaFiscal.DtEmissao >= :DtEmissaoIni)');
      qFaturamento.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qFaturamento.SQL.Add('  AND (dbNotaFiscal.DtEmissao <= :DtEmissaoFin)');
      qFaturamento.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;
  qFaturamento.SQL.Add('GROUP BY Dbnotafiscal.PercDesc, dbNotaFiscal.CodCli, dbNotaFiscalItens.CodProduto, dbNotaFiscalItens.CodCor, dbNotaFiscal.CodVendedor, dbNotaFiscal.CodVendedor2');
  qFaturamento.Open;
end;

procedure TfHistProduto.Monta_SQLNotaDet;
begin
  qNotaDet.Close;
  qNotaDet.SQL.Clear;
  qNotaDet.SQL.Add('SELECT Dbnotafiscal.NumNota, Dbnotafiscal.Filial, Dbnotafiscal.DtEmissao, Dbnotafiscalitens.CodProduto, ');
  qNotaDet.SQL.Add(' Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd, Dbnotafiscalitens.Icms, ');
  qNotaDet.SQL.Add(' Dbnotafiscalitens.Ipi, Dbnotafiscalitens.VlrUnit, Dbnotafiscalitens.VlrTotal, Dbnotafiscalitens.BaseIcms, ');
  qNotaDet.SQL.Add(' Dbnotafiscalitens.VlrIcms, Dbnotafiscalitens.VlrIpi, Dbnotafiscalitens.NatOper, DbCliente.Nome NomeCliente');
  qNotaDet.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qNotaDet.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qNotaDet.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qNotaDet.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qNotaDet.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qNotaDet.SQL.Add('   ON  (DbNotaFiscal.CodCli = Dbcliente.Codigo)');
  qNotaDet.SQL.Add('WHERE (dbNotaFiscalItens.CodProduto = :CodProduto)');
  qNotaDet.ParamByName('CodProduto').AsInteger := qProdutoCodProduto.AsInteger;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qNotaDet.SQL.Add('  AND (dbNotaFiscal.Filial = :Filial)');
      qNotaDet.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qNotaDet.SQL.Add('  AND (dbNotaFiscal.CodCli = :CodCli)');
      qNotaDet.ParamByName('CodCli').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qNotaDet.SQL.Add('  AND ((dbNotaFiscal.CodVendedor = :CodVendedor) or (dbNotaFiscal.CodVendedor2 = :CodVendedor2))');
      qNotaDet.ParamByName('CodVendedor').AsInteger  := RxDBLookupCombo4.KeyValue;
      qNotaDet.ParamByName('CodVendedor2').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qNotaDet.SQL.Add('  AND (dbNotaFiscal.DtEmissao >= :DtEmissaoIni)');
      qNotaDet.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qNotaDet.SQL.Add('  AND (dbNotaFiscal.DtEmissao <= :DtEmissaoFin)');
      qNotaDet.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;
  qNotaDet.SQL.Add('ORDER BY dbNotaFiscal.NumNota');
  qNotaDet.Open;
end;

procedure TfHistProduto.Monta_SQLAcum;
begin
  qPedidoAcum.Close;
  qPedidoAcum.SQL.Clear;
  qPedidoAcum.SQL.Add('SELECT Dbpedido.Pedido, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade, Dbpedidoitem.CodProduto, ');
  qPedidoAcum.SQL.Add(' SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, ');
  qPedidoAcum.SQL.Add(' SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, Dbpedido.CodVendedor, Dbpedido.CodCliente, Dbcliente.Nome NomeCliente, ');
  qPedidoAcum.SQL.Add(' dbCliente.Fantasia, SUM( Dbpedidoitem.VlrTotal ) VlrTotal ');
  qPedidoAcum.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedidoAcum.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedidoAcum.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedidoAcum.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qPedidoAcum.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qPedidoAcum.SQL.Add('WHERE (dbPedidoItem.CodProduto = :CodProduto)');
  qPedidoAcum.ParamByName('CodProduto').AsInteger := qProdutoCodProduto.AsInteger;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedidoAcum.SQL.Add('  AND (dbPedido.Filial = :Filial)');
      qPedidoAcum.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPedidoAcum.SQL.Add('  AND (dbPedido.CodCliente = :CodCliente)');
      qPedidoAcum.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qPedidoAcum.SQL.Add('  AND ((dbPedido.CodVendedor = :CodVendedor) or (dbPedido.CodVendedor2 = :CodVendedor2))');
      qPedidoAcum.ParamByName('CodVendedor').AsInteger  := RxDBLookupCombo4.KeyValue;
      qPedidoAcum.ParamByName('CodVendedor2').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qPedidoAcum.SQL.Add('  AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
      qPedidoAcum.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qPedidoAcum.SQL.Add('  AND (dbPedido.DtEmissao <= :DtEmissaoFin)');
      qPedidoAcum.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qPedidoAcum.SQL.Add(' AND (dbPedidoItem.QtdParesRest > 0)');
    1 : qPedidoAcum.SQL.Add(' AND (dbPedidoItem.QtdParesFat > 0)');
  end;
  qPedidoAcum.SQL.Add('GROUP BY Dbpedido.Pedido, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade, Dbpedidoitem.CodProduto, Dbpedido.CodVendedor, Dbcliente.Nome, Dbpedido.CodCliente, Dbcliente.Nome, dbCliente.Fantasia');
  qPedidoAcum.Open;
end;

procedure TfHistProduto.Monta_SQLDet;
begin
  qPedidoDet.Close;
  qPedidoDet.SQL.Clear;
  qPedidoDet.SQL.Add('SELECT Dbpedido.Pedido, Dbpedido.DtEmissao, Dbpedido.CodCliente, Dbcliente.Nome NomeCliente, dbCliente.Fantasia, ');
  qPedidoDet.SQL.Add(' Dbpedido.CodVendedor, Dbpedido.PercComissao, Dbpedido.PedidoCliente, ');
  qPedidoDet.SQL.Add(' Dbpedidoitem.Item, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade, ');
  qPedidoDet.SQL.Add(' Dbpedidoitem.QtdPares, Dbpedidoitem.QtdParesFat, Dbpedidoitem.QtdParesRest, Dbpedidoitem.Preco, ');
  qPedidoDet.SQL.Add(' Dbpedidoitem.VlrTotal, Dbpedidoitem.VlrDesconto, Dbpedidoitem.QtdParesCanc, Dbpedidoitem.NumOS, ');
  qPedidoDet.SQL.Add(' Dbpedidoitem.DtReprogramacao, Dbpedidoitem.Unidade, Dbpedido.Tipo ');
  qPedidoDet.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedidoDet.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedidoDet.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedidoDet.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qPedidoDet.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qPedidoDet.SQL.Add('WHERE (dbPedidoItem.CodProduto = :CodProduto)');
  qPedidoDet.ParamByName('CodProduto').AsInteger := qProdutoCodProduto.AsInteger;

  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedidoDet.SQL.Add('  AND (dbPedido.Filial = :Filial)');
      qPedidoDet.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPedidoDet.SQL.Add('  AND (dbPedido.CodCliente = :CodCliente)');
      qPedidoDet.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qPedidoDet.SQL.Add('  AND ((dbPedido.CodVendedor = :CodVendedor) or (dbPedido.CodVendedor2 = :CodVendedor2))');
      qPedidoDet.ParamByName('CodVendedor').AsInteger  := RxDBLookupCombo4.KeyValue;
      qPedidoDet.ParamByName('CodVendedor2').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qPedidoDet.SQL.Add('  AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
      qPedidoDet.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qPedidoDet.SQL.Add('  AND (dbPedido.DtEmissao <= :DtEmissaoFin)');
      qPedidoDet.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qPedidoDet.SQL.Add(' AND (dbPedidoItem.QtdParesRest > 0)');
    1 : qPedidoDet.SQL.Add(' AND (dbPedidoItem.QtdParesFat > 0)');
  end;
  qPedidoDet.SQL.Add('ORDER BY dbPedido.DtEmissao, dbCliente.Nome');
  qPedidoDet.Open;
end;

procedure TfHistProduto.Gera_ArqAcumulado;
var
  vCodCliente, vCodCor, vCodVendedor : Integer;
  vNomeCor, vNomeVendedor : String;
begin
  ProgressBar1.Max      := qPedidoAcum.RecordCount;
  ProgressBar1.Position := 0;
  mPedAcumulado.EmptyDataSet;
  qPedidoAcum.First;
  while not qPedidoAcum.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      vCodCliente   := qPedidoAcumCodCliente.AsInteger;
      vCodCor       := qPedidoAcumCodCor.AsInteger;
      vCodVendedor  := qPedidoAcumCodVendedor.AsInteger;
      vNomeCor      := qPedidoAcumlkNomeCor.AsString;
      vNomeVendedor := qPedidoAcumlkNomeVendedor.AsString;
      if not CheckBox1.Checked then
        vCodCliente  := 0;
      if not CheckBox2.Checked then
        begin
          vCodCor := 0;
          if qPedidoAcumCodCor.AsInteger > 0 then
            vNomeCor := 'Varias Cores';
        end;
      if not CheckBox3.Checked then
        begin
          vCodVendedor := 0;
          if qPedidoAcumCodVendedor.AsInteger > 0 then
            vNomeVendedor := 'Varios Vendedores';
        end;
      if mPedAcumulado.Locate('CodProduto;CodCor;CodCliente;CodVendedor',VarArrayOf([qPedidoAcumCodProduto.AsInteger,vCodCor,vCodCliente,vCodVendedor]),[loCaseInsensitive]) then
        mPedAcumulado.Edit
      else
        begin
          mPedAcumulado.Insert;
          mPedAcumuladoCodProduto.AsInteger  := qPedidoAcumCodProduto.AsInteger;
          mPedAcumuladoCodCor.AsInteger      := vCodCor;
          mPedAcumuladoCodCliente.AsInteger  := vCodCliente;
          mPedAcumuladoCodVendedor.AsInteger := vCodVendedor;
          if (vCodCliente = 0) and not(CheckBox1.Checked) then
            begin
              mPedAcumuladoNomeCliente.AsString := 'Varios Clientes';
              mPedAcumuladoFantasia.AsString    := 'Varios Clientes';
            end
          else
            begin
              mPedAcumuladoNomeCliente.AsString := qPedidoAcumNomeCliente.AsString;
              mPedAcumuladoFantasia.AsString    := qPedidoAcumFantasia.AsString;
            end;
          mPedAcumuladoNomeCor.AsString      := vNomeCor;
          mPedAcumuladoNomeVendedor.AsString := vNomeVendedor;
        end;
      mPedAcumuladoQtdPares.AsFloat     := mPedAcumuladoQtdPares.AsFloat + qPedidoAcumQtdPares.AsFloat;
      mPedAcumuladoQtdParesRest.AsFloat := mPedAcumuladoQtdParesRest.AsFloat + qPedidoAcumQtdParesRest.AsFloat;
      mPedAcumuladoQtdParesFat.AsFloat  := mPedAcumuladoQtdParesFat.AsFloat  + qPedidoAcumQtdParesFat.AsFloat;
      mPedAcumuladoQtdParesCanc.AsFloat := mPedAcumuladoQtdParesCanc.AsFloat + qPedidoAcumQtdParesCanc.AsFloat;
      mPedAcumuladoVlrTotal.AsFloat     := StrToFloat(FormatFloat('0.00',mPedAcumuladoVlrTotal.AsFloat + qPedidoAcumVlrTotal.AsFloat));
      mPedAcumulado.Post;
      qPedidoAcum.Next;
    end;
end;

procedure TfHistProduto.Monta_SQLProduto;
begin
  qProduto.Close;
  qProduto.SQL.Clear;
  qProduto.SQL.Add('SELECT Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbproduto.Nome, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, ');
  qProduto.SQL.Add(' SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, SUM( Dbpedidoitem.VlrTotal ) VlrTotal');
  qProduto.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qProduto.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
  qProduto.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qProduto.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qProduto.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');

  if RxDBLookupCombo2.Text <> '' then
    begin
      qProduto.SQL.Add('  AND (dbPedido.Filial = :Filial)');
      qProduto.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qProduto.SQL.Add('  AND (dbPedido.CodCliente = :CodCliente)');
      qProduto.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qProduto.SQL.Add('  AND ((dbPedido.CodVendedor = :CodVendedor) or (dbPedido.CodVendedor2 = :CodVendedor2))');
      qProduto.ParamByName('CodVendedor').AsInteger  := RxDBLookupCombo4.KeyValue;
      qProduto.ParamByName('CodVendedor2').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qProduto.SQL.Add('  AND (dbPedidoItem.CodProduto = :CodProduto)');
      qProduto.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
    end
  else
  if RxDBLookupCombo3.Text <> '' then
    begin
      qProduto.SQL.Add('  AND (dbProduto.Referencia = :Referencia)');
      qProduto.ParamByName('Referencia').AsString := RxDBLookupCombo3.Value;
    end;
  if DateEdit1.Date > 0 then
    begin
      qProduto.SQL.Add('  AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
      qProduto.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qProduto.SQL.Add('  AND (dbPedido.DtEmissao <= :DtEmissaoFin)');
      qProduto.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qProduto.SQL.Add(' AND (dbPedidoItem.QtdParesRest > 0)');
    1 : qProduto.SQL.Add(' AND (dbPedidoItem.QtdParesFat > 0)');
  end;
  qProduto.SQL.Add('GROUP BY Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbproduto.Nome');
  qProduto.SQL.Add('ORDER BY Dbproduto.Referencia, Dbproduto.Nome');
  qProduto.Open;
end;

procedure TfHistProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  DM1.tCor.Close;
  DM1.tVendedor.Close;
  qProduto.Close;
  qPedidoDet.Close;
  qPedidoAcum.Close;
  qNotaDet.Close;
  qFaturamento.Close;
  Action := Cafree;
end;

procedure TfHistProduto.FormShow(Sender: TObject);
begin
  RzPageControl2.ActivePageIndex := 0;
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tCor.Open;
  DM1.tVendedor.Open;
end;

procedure TfHistProduto.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  RzPageControl2.ActivePageIndex := 0;
  SMDBGrid2.DataSource := nil;
  Monta_SQLProduto;
  SMDBGrid2.DataSource := dsmPedAcumulado;
  Screen.Cursor   := crDefault;
end;

procedure TfHistProduto.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      if DM1.tProduto.Locate('Codigo',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        RxDBLookupCombo3.Value := DM1.tProdutoReferencia.AsString
      else
        RxDBLookupCombo3.ClearValue;
    end;
end;

procedure TfHistProduto.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    CurrencyEdit1.AsInteger := DM1.tProdutoCodigo.AsInteger
end;

procedure TfHistProduto.mPedAcumuladoNewRecord(DataSet: TDataSet);
begin
  mPedAcumuladoQtdPares.AsFloat     := 0;
  mPedAcumuladoQtdParesCanc.AsFloat := 0;
  mPedAcumuladoQtdParesFat.AsFloat  := 0;
  mPedAcumuladoQtdParesRest.AsFloat := 0;
  mPedAcumuladoVlrTotal.AsFloat     := 0;
end;

procedure TfHistProduto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qPedidoDetQtdParesRest.AsFloat <= 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

procedure TfHistProduto.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mPedAcumuladoQtdParesRest.AsFloat <= 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
end;

procedure TfHistProduto.SMDBGrid3DblClick(Sender: TObject);
begin
  fHistProdutoDet := TfHistProdutoDet.Create(Self);
  fHistProdutoDet.ShowModal;
end;

procedure TfHistProduto.RzTabSheet1Enter(Sender: TObject);
begin
  Monta_SQLDet;
end;

procedure TfHistProduto.BitBtn2Click(Sender: TObject);
begin
  Monta_SQLAcum;
  Gera_ArqAcumulado;
end;

procedure TfHistProduto.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfHistProduto.TabSheet2Enter(Sender: TObject);
begin
  Monta_SQLNotaDet;
end;

procedure TfHistProduto.BitBtn4Click(Sender: TObject);
begin
  Monta_SQLFaturamento;
end;

procedure TfHistProduto.mFaturamentoNewRecord(DataSet: TDataSet);
begin
  mFaturamentoVlrTotal.AsFloat := 0;
  mFaturamentoQtd.AsFloat      := 0;
  mFaturamentoDtEmissaoNotaIni.AsDateTime := 0;
  mFaturamentoDtEmissaoNotaFin.AsDateTime := 0;
end;

procedure TfHistProduto.BitBtn5Click(Sender: TObject);
begin
  Monta_SQLFatGeral;
  fRelHistProdutosAcum := TfRelHistProdutosAcum.Create(Self);
  fRelHistProdutosAcum.RLReport1.Preview;
  fRelHistProdutosAcum.RLReport1.Free;
end;

procedure TfHistProduto.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfHistProduto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

end.
