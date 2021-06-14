Unit UDM2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBTables, DBIProcs, DBClient;

type
  TDM2 = class(TDataModule)
    tEstoqueMatMov2: TTable;
    tEstoqueMatMov2NumMov: TIntegerField;
    tFilial2: TTable;
    tFilial2Codigo: TIntegerField;
    tFilial2Empresa: TStringField;
    tFilial2Endereco: TStringField;
    tFilial2Bairro: TStringField;
    tFilial2Cep: TStringField;
    tFilial2Cidade: TStringField;
    tFilial2Estado: TStringField;
    tFilial2Tel: TStringField;
    tFilial2Tel2: TStringField;
    tFilial2Fax: TStringField;
    tFilial2CNPJ: TStringField;
    tFilial2Inscr: TStringField;
    tEstoqueMatMov2Filial: TIntegerField;
    tProdutoTam2: TTable;
    tProdutoTam2CodProduto: TIntegerField;
    tProdutoTam2CodGrade: TIntegerField;
    tProdutoTam2Posicao: TIntegerField;
    tProdutoTam2Tamanho: TStringField;
    tProdutoTam2QtdMinima: TFloatField;
    tProdutoTam2QtdMaxima: TFloatField;
    tProdutoTam2PesoL: TFloatField;
    tProdutoTam2PesoB: TFloatField;
    tProdutoTam2PrecoCusto: TFloatField;
    qProximaNota: TQuery;
    qProximaNotaNumNota: TIntegerField;
    tProdutoTam2QtdMatriz: TIntegerField;
    tCadastroSimples: TTable;
    tCadastroSimplesCodigo: TIntegerField;
    tCadastroSimplesTipo: TStringField;
    qTipoProduto: TQuery;
    qTipoMaterial: TQuery;
    qTipoProdutoCodigo: TIntegerField;
    qTipoProdutoNome: TStringField;
    qTipoProdutoTipo: TStringField;
    dsqTipoProduto: TDataSource;
    dsqTipoMaterial: TDataSource;
    qTipoMaterialCodigo: TIntegerField;
    qTipoMaterialNome: TStringField;
    qTipoMaterialTipo: TStringField;
    qClasFisical: TQuery;
    qClasFisicalClasFiscal: TStringField;
    qClasFisicalNome: TStringField;
    dsClasFical: TDataSource;
    qGrupoItem: TQuery;
    qGrupoItemCodGrupo: TIntegerField;
    qGrupoItemCodSubGrupo: TIntegerField;
    qGrupoItemNome: TStringField;
    qGrupoItemEstoque: TBooleanField;
    dsqGrupoItem: TDataSource;
    qTipoProcesso: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsqTipoProcesso: TDataSource;
    tCadastroSimplesNome: TStringField;
    tCadastroSimplesAbreviatura: TStringField;
    qPedidoCliente: TQuery;
    qCReceberCliente: TQuery;
    qPedidoClienteCodCliente: TIntegerField;
    qPedidoClienteQtdPares: TFloatField;
    qPedidoClienteQtdParesFat: TFloatField;
    qPedidoClienteQtdParesRest: TFloatField;
    qPedidoClienteVlrTotal: TFloatField;
    qPedidoClientePreco: TFloatField;
    qPedidoClienteVlrDesconto: TFloatField;
    qCReceberClienteCodCli: TIntegerField;
    qCReceberClienteTransferencia: TBooleanField;
    qCReceberClienteRestParcela: TFloatField;
    qPedidoClienteNome: TStringField;
    qCReceberClienteNome: TStringField;
    qPedidoClienteFantasia: TStringField;
    qCReceberClienteFantasia: TStringField;
    qPedidoClienteVlrLimiteCredito: TFloatField;
    qCReceberClienteVlrLimiteCredito: TFloatField;
    qPedidoClienteCodGrupo: TIntegerField;
    qCReceberClienteCodGrupo: TIntegerField;
    qPosicao: TQuery;
    dsqPosicao: TDataSource;
    qTipoIndicacao: TQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    dsqTipoIndicacao: TDataSource;
    dsFilial2: TDataSource;
    qPais: TQuery;
    qPaisID: TIntegerField;
    qPaisPais: TStringField;
    qPaisCodPais: TStringField;
    dsqPais: TDataSource;
    tCReceberParcHist2: TTable;
    dsCReceberParcHist2: TDataSource;
    tCReceberParcHist2Filial: TIntegerField;
    tCReceberParcHist2NumCReceber: TIntegerField;
    tCReceberParcHist2ParcCReceber: TIntegerField;
    tCReceberParcHist2Item: TIntegerField;
    tMovimentos2: TTable;
    tMovimentos2CodConta: TIntegerField;
    tMovimentos2NumMovimento: TAutoIncField;
    tMovimentos2Filial: TIntegerField;
    qVale: TQuery;
    qValeVlrTotal: TFloatField;
    qFabrica: TQuery;
    qRepresentada: TQuery;
    qFabricaCodigo: TIntegerField;
    qFabricaNome: TStringField;
    qFabricaEndLogo: TStringField;
    qRepresentadaCodigo: TIntegerField;
    qRepresentadaNome: TStringField;
    qRepresentadaEndLogo: TStringField;
    dsqFabrica: TDataSource;
    dsqRepresentada: TDataSource;
    qIncBarra: TQuery;
    qIncBarraCodSeq: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Monta_SQLqPedidoCliente(Codigo : Integer; Tipo : String);
    procedure Monta_SQLqCReceberCliente(Codigo : Integer; Tipo : String);
//    procedure Monta_SQLqEstoqueCusto;
  end;

var
  DM2: TDM2;

implementation

uses UDM1;

{$R *.DFM}

procedure TDM2.Monta_SQLqPedidoCliente(Codigo : Integer; Tipo : String);
begin
  qPedidoCliente.Close;
  qPedidoCliente.SQL.Clear;
  qPedidoCliente.SQL.Add('SELECT Dbpedido.CodCliente, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, ');
  qPedidoCliente.SQL.Add(' SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.VlrTotal ) VlrTotal, Dbpedidoitem.Preco, ');
  qPedidoCliente.SQL.Add(' Dbpedidoitem.VlrDesconto, Dbcliente.Nome, Dbcliente.Fantasia, Dbcliente.VlrLimiteCredito, Dbcliente.CodGrupo ');
  qPedidoCliente.SQL.Add('FROM "dbPedido.DB" Dbpedido ');
  qPedidoCliente.SQL.Add('INNER JOIN "dbPedidoItem.DB" Dbpedidoitem ON (Dbpedido.Pedido = Dbpedidoitem.Pedido) ');
  qPedidoCliente.SQL.Add('INNER JOIN "dbCliente.DB" Dbcliente ON (Dbpedido.CodCliente = Dbcliente.Codigo) ');
  qPedidoCliente.SQL.Add('WHERE (Dbpedido.QtdParesRest > 0) ');
  qPedidoCliente.SQL.Add(' AND ((Dbpedido.Cancelado = FALSE) or (Dbpedido.Cancelado is Null)) ');
  if Codigo > 0 then
    begin
      if Tipo = 'C' then
        qPedidoCliente.SQL.Add(' AND (dbPedido.CodCliente = :Codigo)')
      else
        qPedidoCliente.SQL.Add(' AND (dbCliente.CodGrupo = :Codigo)');
      qPedidoCliente.ParamByName('Codigo').AsInteger := Codigo;
    end;
  qPedidoCliente.SQL.Add('GROUP BY Dbpedido.CodCliente, Dbpedidoitem.Preco, Dbpedidoitem.VlrDesconto, Dbcliente.Nome, Dbcliente.Fantasia, Dbcliente.VlrLimiteCredito, Dbcliente.CodGrupo ');
  qPedidoCliente.Open;
end;

procedure TDM2.Monta_SQLqCReceberCliente(Codigo : Integer; Tipo : String);
begin
  qCReceberCliente.Close;
  qCReceberCliente.SQL.Clear;
  qCReceberCliente.SQL.Add('SELECT Dbcreceberparc.CodCli, Dbcreceberparc.Transferencia, SUM( Dbcreceberparc.RestParcela ) RestParcela, ');
  qCReceberCliente.SQL.Add(' Dbcliente.Nome, Dbcliente.Fantasia, Dbcliente.VlrLimiteCredito, Dbcliente.CodGrupo ');
  qCReceberCliente.SQL.Add('FROM "dbCReceberParc.DB" Dbcreceberparc');
  qCReceberCliente.SQL.Add('INNER JOIN "dbCliente.DB" Dbcliente ON (Dbcreceberparc.CodCli = Dbcliente.Codigo)');
  qCReceberCliente.SQL.Add('WHERE (Dbcreceberparc.RestParcela > 0) ');
  qCReceberCliente.SQL.Add(' AND ((Dbcreceberparc.Cancelado = False) or (Dbcreceberparc.Cancelado is Null))');
  if Codigo > 0 then
    begin
      if Tipo = 'C' then
        qCReceberCliente.SQL.Add(' AND (dbCReceberParc.CodCli = :Codigo)')
      else
        qCReceberCliente.SQL.Add(' AND (dbCliente.CodGrupo = :Codigo)');
      qCReceberCliente.ParamByName('Codigo').AsInteger := Codigo;
    end;
  qCReceberCliente.SQL.Add('GROUP BY Dbcreceberparc.CodCli, Dbcreceberparc.Transferencia, Dbcliente.Nome, Dbcliente.Fantasia, Dbcliente.VlrLimiteCredito, Dbcliente.CodGrupo');
  qCReceberCliente.Open;
end;

end.
