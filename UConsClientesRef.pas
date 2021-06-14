unit UConsClientesRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Grids, DBGrids, SMDBGrid, Buttons, DB,
  DBTables, DBClient, ComCtrls;

type
  TfConsClientesRef = class(TForm)
    GroupBox1: TGroupBox;
    SMDBGrid1: TSMDBGrid;
    GroupBox2: TGroupBox;
    SMDBGrid2: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mProdutos: TClientDataSet;
    tTabPreco: TTable;
    tTabPrecoCodCliente: TIntegerField;
    tTabPrecoCodProduto: TIntegerField;
    tTabPrecoCodCor: TIntegerField;
    tTabPrecoPreco: TFloatField;
    tTabPrecoDtPreco: TDateField;
    tTabPrecoPrecoMObra: TFloatField;
    mCliente: TClientDataSet;
    dsmCliente: TDataSource;
    mClienteCodigo: TIntegerField;
    mClienteNome: TStringField;
    mClienteCodCondPgto: TIntegerField;
    mClienteNomeCondPgto: TStringField;
    tCor: TTable;
    tCorCodigo: TIntegerField;
    tCorNome: TStringField;
    tTabPrecolkNomeCor: TStringField;
    dsmProduto: TDataSource;
    BitBtn3: TBitBtn;
    ProgressBar1: TProgressBar;
    qNotaEntrada: TQuery;
    dsqNotaEntrada: TDataSource;
    qNotaEntradaCodForn: TIntegerField;
    qNotaEntradaNumNEntr: TIntegerField;
    qNotaEntradaDtEmissaoNEntr: TDateField;
    qNotaEntradaVlrTotalNEntr: TFloatField;
    qNotaEntradaDtEntrada: TDateField;
    qNotaEntradaCodMaterial: TIntegerField;
    qNotaEntradaQtd: TFloatField;
    qNotaEntradaVlrUnit: TFloatField;
    qNotaEntradaVlrTotalItens: TFloatField;
    qNotaEntradaCodCor: TIntegerField;
    qNotaEntradaUnidade: TStringField;
    qNotaEntradaQtdRestante: TFloatField;
    qNotaEntradaQtdDevolvida: TFloatField;
    qNotaEntradaItem: TSmallintField;
    qNotaEntradaSitTrib: TSmallintField;
    qNotaEntradaFilial: TIntegerField;
    qNotaEntradalkNomeMaterial: TStringField;
    qNotaEntradalkNomeCor: TStringField;
    mClienteCNPJ: TStringField;
    qPedido: TQuery;
    qPedidoCodCliente: TIntegerField;
    qPedidoCodProduto: TIntegerField;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    mProdutosCodCliente: TIntegerField;
    mProdutosCodProduto: TIntegerField;
    mProdutosReferencia: TStringField;
    mProdutosNomeProduto: TStringField;
    mProdutosPrecoVenda: TFloatField;
    mProdutosPrecoMaoObra: TFloatField;
    mProdutosPrecoAmostra: TFloatField;
    mProdutosPeso: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure mProdutosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Monta_Consulta;
    procedure Limpa_TabAuxiliar;
    procedure Grava_mCliente;
    procedure Grava_mProduto;
    procedure Monta_SQLPedido;
  public
    { Public declarations }
  end;

var
  fConsClientesRef: TfConsClientesRef;

implementation

uses UDM1, URelClientesRef;

{$R *.dfm}

procedure TfConsClientesRef.Monta_SQLPedido;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT DISTINCT Dbpedido.CodCliente, Dbpedidoitem.CodProduto ');
  qPedido.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedido.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedido.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qPedido.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qPedido.SQL.Add('WHERE  (Dbpedidoitem.QtdParesRest > 0) AND (Dbpedido.Tipo = ''V'')');
  qPedido.SQL.Add('  AND  (Dbpedidoitem.MateriaPrima = False)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPedido.SQL.Add('  AND (dbPedido.CodCliente = :CodCliente)');
      qPedido.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedido.SQL.Add('  AND (dbCliente.CodGrupo = :CodGrupo)');
      qPedido.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qPedido.SQL.Add('ORDER BY Dbpedido.CodCliente, Dbpedidoitem.CodProduto');
  qPedido.Open;
end;

procedure TfConsClientesRef.Grava_mCliente;
begin
  mCliente.Insert;
  mClienteCodigo.AsInteger      := qPedidoCodCliente.AsInteger; 
  mClienteNome.AsString         := DM1.tClienteNome.AsString;
  mClienteCodCondPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
  mClienteNomeCondPgto.AsString := DM1.tClientelkCondPgto.AsString;
  mClienteCNPJ.AsString         := DM1.tClienteCgcCpf.AsString;
  mCliente.Post;
end;

procedure TfConsClientesRef.Grava_mProduto;
var
  vPrecoAmostra : Real;
begin
  if DM1.tProduto.Locate('Codigo',qPedidoCodProduto.AsInteger,[loCaseInsensitive]) then
    begin
      vPrecoAmostra := 0;
      if DM1.tGrupo.Locate('Codigo',DM1.tProdutoCodGrupo.AsInteger,[loCaseInsensitive]) then
        vPrecoAmostra := DM1.tGrupoPrecoAmostra.AsFloat;
      mProdutos.Insert;
      mProdutosCodCliente.AsInteger := qPedidoCodCliente.AsInteger;
      mProdutosCodProduto.AsInteger := qPedidoCodProduto.AsInteger;
      mProdutosReferencia.AsString  := DM1.tProdutoReferencia.AsString;
      mProdutosNomeProduto.AsString := DM1.tProdutoNome.AsString;
      mProdutosPeso.AsFloat         := DM1.tProdutoPesoLiquido.AsFloat;
      mProdutosPrecoAmostra.AsFloat := vPrecoAmostra;
      if tTabPreco.Locate('CodCliente;CodProduto',VarArrayOf([qPedidoCodCliente.AsInteger,qPedidoCodProduto.AsInteger]),[locaseinsensitive]) then
        begin
          mProdutosPrecoVenda.AsFloat   := tTabPrecoPreco.AsFloat;
          mProdutosPrecoMaoObra.AsFloat := tTabPrecoPrecoMObra.AsFloat;
        end;
      mProdutos.Post;
    end;
end;

procedure TfConsClientesRef.Limpa_TabAuxiliar;
begin
  mCliente.First;
  while not mCliente.Eof do
    begin
      mProdutos.First;
      while not mProdutos.Eof do
        mProdutos.Delete;
      mCliente.Delete;
    end;
end;

procedure TfConsClientesRef.Monta_Consulta;
begin
  Limpa_TabAuxiliar;
  ProgressBar1.Max      := qPedido.RecordCount;
  ProgressBar1.Position := 0;
  qPedido.First;
  while not qPedido.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if not mCliente.Locate('Codigo',qPedidoCodCliente.AsInteger,[loCaseInsensitive]) then
        if DM1.tCliente.Locate('Codigo',qPedidoCodCliente.AsInteger,[loCaseInsensitive]) then
          Grava_mCliente;
      Grava_mProduto;
      qPedido.Next;
    end;
  qNotaEntrada.Close;
  qNotaEntrada.Open;
end;

procedure TfConsClientesRef.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fConsClientesRef.qNotaEntrada.Filtered := False;
  qNotaEntrada.Close;
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoComb.Close;
  DM1.tCor.Close;
  DM1.tTabPreco.Close;
  DM1.tGrupo.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoTam.Close;
  DM1.tFornecedores.Close;
  DM1.tGrupoCliente.Close;
  tCor.Close;
  tTabPreco.Close;
  Action := Cafree;
end;

procedure TfConsClientesRef.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tCor.Open;
  DM1.tTabPreco.Open;
  DM1.tGrupo.Open;
  DM1.tFornecedores.Open;
  DM1.tGrupoCliente.Open;
  tCor.Open;
  tTabPreco.Open;
end;

procedure TfConsClientesRef.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsClientesRef.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  SMDBGrid2.DataSource := nil;
  Monta_SQLPedido;
  Monta_Consulta;
  SMDBGrid1.DataSource := dsmCliente;
  SMDBGrid2.DataSource := dsmProduto;
  ShowMessage('Consulta Concluída!');
end;

procedure TfConsClientesRef.BitBtn3Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  fRelClientesRef := TfRelClientesRef.Create(Self);
  fRelClientesRef.RLReport1.Preview;
  fRelClientesRef.RLReport1.Free;
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
  fConsClientesRef.qNotaEntrada.Filtered := False;
end;

procedure TfConsClientesRef.RxDBLookupCombo1Enter(Sender: TObject);
begin
  Dm1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsClientesRef.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tGrupoCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsClientesRef.mProdutosNewRecord(DataSet: TDataSet);
begin
  mProdutosPrecoAmostra.AsFloat := 0;
  mProdutosPrecoMaoObra.AsFloat := 0;
  mProdutosPrecoVenda.AsFloat   := 0;
end;

end.
