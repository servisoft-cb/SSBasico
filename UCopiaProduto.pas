unit UCopiaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Db, DBTables; 

type
  TfCopiaProduto = class(TForm)
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label27: TLabel;
    BitBtn16: TBitBtn;
    BitBtn6: TBitBtn;
    tProduto2: TTable;
    tProduto2Codigo: TIntegerField;
    tProduto2CodGrupo: TIntegerField;
    tProduto2CodSubGrupo: TIntegerField;
    tProduto2Nome: TStringField;
    tProduto2Unidade: TStringField;
    tProduto2CodClasFiscal: TStringField;
    tProduto2CodSitTrib: TIntegerField;
    tProduto2LancaGrade: TBooleanField;
    tProduto2CodGrade: TIntegerField;
    tProduto2QParTalao: TFloatField;
    tProduto2PesoLiquido: TFloatField;
    tProduto2PesoBruto: TFloatField;
    tProduto2Inativo: TBooleanField;
    tProduto2AliqIcms: TFloatField;
    tProduto2AliqIPI: TFloatField;
    tProduto2NomeExp: TStringField;
    tProduto2VlrAtelier: TFloatField;
    tProduto2NomeModelo: TStringField;
    tProduto2FotoJpeg: TBlobField;
    tProduto2Obs: TMemoField;
    tProduto2Referencia: TStringField;
    tProduto2EndEtiq: TStringField;
    tProduto2Referencia2: TStringField;
    tProduto2LancaCor: TBooleanField;
    tProduto2PrecoGrade: TBooleanField;
    tProduto2VlrVenda: TFloatField;
    tProduto2ProdMat: TStringField;
    tProduto2PrecoCusto: TFloatField;
    tProduto2PosseMat: TStringField;
    tProduto2Estoque: TBooleanField;
    tProduto2DtAlteracao: TDateField;
    tProduto2MaterialOutros: TStringField;
    tProduto2PrecoCor: TBooleanField;
    tProduto2CodFornecedor: TIntegerField;
    tProduto2EstMinimo: TFloatField;
    tProduto2EstMaximo: TFloatField;
    tProduto2PercComissaoVend: TFloatField;
    tProduto2ImpTabPreco: TBooleanField;
    tProduto2Usuario: TStringField;
    tProduto2DtCad: TDateField;
    tProduto2HrCad: TTimeField;
    tProduto2CA: TStringField;
    tProduto2VincularProduto: TBooleanField;
    tProduto2CodProdutoEst: TIntegerField;
    tProduto2PercQuebraTaloes: TFloatField;
    tProduto2PercComissaoVend2: TFloatField;
    tProduto2FichaTecnicaConsPorTam: TBooleanField;
    tProduto2JuntarLarguraEDI: TBooleanField;
    tProduto2ImpMatTalao: TBooleanField;
    tProduto2Complemento: TStringField;
    tProduto2CodTipoProduto: TIntegerField;
    tProduto2CodTipoMaterial: TIntegerField;
    tProduto2DescMaterial: TStringField;
    tProduto2OrigemProd: TStringField;
    dsProduto2: TDataSource;
    tProdutoCor2: TTable;
    tProdutoCor2CodProduto: TIntegerField;
    tProdutoCor2CodCor: TIntegerField;
    tProdutoMat2: TTable;
    tProdutoMat2CodProduto: TIntegerField;
    tProdutoMat2CodCorProd: TIntegerField;
    tProdutoMat2Item: TIntegerField;
    tProdutoMat2CodMaterial: TIntegerField;
    tProdutoMat2CodGrade: TIntegerField;
    tProdutoMat2CodCor: TIntegerField;
    tProdutoMat2Qtd: TFloatField;
    tProdutoMat2VlrUnitario: TFloatField;
    tProdutoMat2VlrTotal: TFloatField;
    tProdutoMat2ImpTalao: TStringField;
    tProdutoMat2Unidade: TStringField;
    tProdutoMat2Consumo: TStringField;
    dsProdutoCor2: TDataSource;
    dsProdutoMat2: TDataSource;
    tProdutoComb2: TTable;
    dsProdutoComb2: TDataSource;
    tProdutoMat2CodCombinacao: TIntegerField;
    tProdutoMat2CodSetor: TIntegerField;
    tProdutoMat2CodPosicao: TIntegerField;
    tProdutoMat2Obs: TStringField;
    tProdutoMat2Tipo: TStringField;
    tProdutoMat2QtdPecaProd: TFloatField;
    tProdutoComb2CodProduto: TIntegerField;
    tProdutoComb2CodCor: TIntegerField;
    tProdutoComb2CodCombinacao: TIntegerField;
    tProdutoComb2Nome: TStringField;
    tProdutoCor2PrCusto: TFloatField;
    tProdutoCor2CodPigmento: TStringField;
    tProdutoCor2VlrVenda: TFloatField;
    tProdutoCor2Inativo: TBooleanField;
    tProdutoCor2EstMinimo: TFloatField;
    tProdutoCor2EstMaximo: TFloatField;
    tProdutoCor2DtAlteracaoPrCusto: TDateField;
    tProduto2QtdVolume: TIntegerField;
    tProduto2CodProcesso: TIntegerField;
    tProduto2CodCSTIPI: TStringField;
    tProduto2TamCalculo: TFloatField;
    tProduto2LocalCorredor: TStringField;
    tProduto2LocalPosicao: TStringField;
    tProduto2CodCliente: TIntegerField;
    tProduto2CodSitCF: TStringField;
    tProduto2CodRepresentada: TIntegerField;
    tProduto2CodFabrica: TIntegerField;
    tProduto2RefCliente: TStringField;
    tProduto2CarimboSola: TStringField;
    tProduto2CarimboPalmilha: TStringField;
    tProduto2Ficha: TStringField;
    tProduto2Construcao: TStringField;
    tProduto2Forma: TStringField;
    tProduto2TipoCodColecao: TIntegerField;
    tProduto2TipoCodProdutoForn: TIntegerField;
    tProduto2TipoCodProduto: TIntegerField;
    tProduto2TipoCodMaterial: TIntegerField;
    tProduto2TipoCodCor: TIntegerField;
    tProduto2EndArquivoCNC: TStringField;
    tProdutoConsumo2: TTable;
    tProdutoConsumo2CodProduto: TIntegerField;
    tProdutoConsumo2CodCorProduto: TIntegerField;
    tProdutoConsumo2ItemMaterial: TIntegerField;
    tProdutoConsumo2CodGrade: TIntegerField;
    tProdutoConsumo2Consumo: TFloatField;
    tProdutoConsumoItem2: TTable;
    tProdutoConsumoItem2CodProduto: TIntegerField;
    tProdutoConsumoItem2CodCorProduto: TIntegerField;
    tProdutoConsumoItem2ItemMaterial: TIntegerField;
    tProdutoConsumoItem2CodGrade: TIntegerField;
    tProdutoConsumoItem2Posicao: TIntegerField;
    tProdutoConsumoItem2Consumo: TFloatField;
    tProdutoConsumoItem2TamanhoMat: TStringField;
    dsProdutoConsumo2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Limpa_Tabelas;
    procedure Gravar_Produto;
    procedure Gravar_ProdutoCor;
    procedure Gravar_ProdutoComb;
    procedure Gravar_ProdutoMat;
    procedure Gravar_ProdutoConsumo;
    procedure Gravar_ProdutoConsumoItem;

  public
    { Public declarations }
  end;

var
  fCopiaProduto: TfCopiaProduto;

implementation

uses UProduto, UDM1, UDM2;

{$R *.dfm}  

procedure TfCopiaProduto.Limpa_Tabelas;
begin
  DM1.tProdutoCor.First;
  while not DM1.tProdutoCor.Eof do
    DM1.tProdutoCor.Delete;
  DM1.tProdutoComb.First;
  while not DM1.tProdutoComb.Eof do
  begin
    DM1.tProdutoMat.First;
    while not DM1.tProdutoMat.Eof do
    begin
      DM1.tProdutoConsumo.First;
      while not DM1.tProdutoConsumo.Eof do
      begin
        DM1.tProdutoConsumoItem.First;
        while not DM1.tProdutoConsumoItem.Eof do
          DM1.tProdutoConsumoItem.Delete;
        DM1.tProdutoConsumo.Delete;
      end;
      DM1.tProdutoMat.Delete;
    end;
    DM1.tProdutoComb.Delete;
  end;
end;

procedure TfCopiaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tProdutoConsumoItem2.Close;
  tProdutoConsumo2.Close;
  tProdutoMat2.Close;
  tProdutoComb2.Close;
  tProdutoCor2.Close;
  tProduto2.Close;

  Action := Cafree;
end;

procedure TfCopiaProduto.BitBtn16Click(Sender: TObject);
var
  vCodAux : Integer;
begin
  if Trim(RxDBLookupCombo10.Text) = '' then
  begin
    ShowMessage('Referência não informada!');
    exit;
  end;

  vCodAux := RxDBLookupCombo10.KeyValue;
  Limpa_Tabelas;
  if not tProduto2.Locate('Codigo',vCodAux,[loCaseInsensitive]) then
  begin
    ShowMessage('Produto não encontrado!');
    exit;
  end;

  Gravar_Produto;
  tProdutoCor2.First;
  while not tProdutoCor2.Eof do
  begin
    Gravar_ProdutoCor;
    tProdutoCor2.Next;
  end;
  tProdutoComb2.First;
  while not tProdutoComb2.Eof do
  begin
    Gravar_ProdutoComb;
    tProdutoMat2.First;
    while not tProdutoMat2.Eof do
    begin
      Gravar_ProdutoMat;
      tProdutoConsumo2.First;
      while not tProdutoConsumo2.Eof do
      begin
        Gravar_ProdutoConsumo;
        tProdutoConsumoItem2.First;
        while not tProdutoConsumoItem2.Eof do
        begin
          Gravar_ProdutoConsumoItem;
          tProdutoConsumoItem2.Next;
        end;
        tProdutoConsumo2.Next;
      end;
      tProdutoMat2.Next;
    end;
    tProdutoComb2.Next;
  end;
end;

procedure TfCopiaProduto.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfCopiaProduto.RxDBLookupCombo10Enter(Sender: TObject);
begin
  tProduto2.IndexFieldNames := 'Referencia';
end;

procedure TfCopiaProduto.FormShow(Sender: TObject);
begin
  tProduto2.Open;
  tProdutoCor2.Open;
  tProdutoComb2.Open;
  tProdutoMat2.Open;
  tProdutoConsumo2.Open;
  tProdutoConsumoItem2.Open;
end;

procedure TfCopiaProduto.Gravar_Produto;
var
  x : Integer;
begin
  for x := 0 to (tProduto2.FieldCount - 1) do
  begin
    if not (tProduto2.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (tProduto2.Fields[x].FieldName <> 'Codigo') and (tProduto2.Fields[x].FieldName <> 'Referencia') then
        DM1.tProduto.FieldByName(tProduto2.Fields[x].FieldName).AsVariant := tProduto2.Fields[x].Value;
    end;
  end;
end;

procedure TfCopiaProduto.Gravar_ProdutoCor;
var
  x : Integer;
begin
  DM1.tProdutoCor.Insert;
  for x := 0 to (tProdutoCor2.FieldCount - 1) do
  begin
    if not (tProdutoCor2.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (tProdutoCor2.Fields[x].FieldName = 'CodProduto') then
        DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger
      else
        DM1.tProdutoCor.FieldByName(tProdutoCor2.Fields[x].FieldName).AsVariant := tProdutoCor2.Fields[x].Value;
    end;
  end;
  DM1.tProdutoCor.Post;
end;

procedure TfCopiaProduto.Gravar_ProdutoComb;
var
  x : Integer;
begin
  DM1.tProdutoComb.Insert;
  for x := 0 to (tProdutoComb2.FieldCount - 1) do
  begin
    if not (tProdutoComb2.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (tProdutoComb2.Fields[x].FieldName = 'CodProduto') then
        DM1.tProdutoCombCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger
      else
        DM1.tProdutoComb.FieldByName(tProdutoComb2.Fields[x].FieldName).AsVariant := tProdutoComb2.Fields[x].Value;
    end;
  end;
  DM1.tProdutoComb.Post;
end;

procedure TfCopiaProduto.Gravar_ProdutoMat;
var
  x : Integer;
begin
  DM1.tProdutoMat.Insert;
  for x := 0 to (tProdutoMat2.FieldCount - 1) do
  begin
    if not (tProdutoMat2.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (tProdutoMat2.Fields[x].FieldName = 'CodProduto') then
        DM1.tProdutoMatCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger
      else
        DM1.tProdutoMat.FieldByName(tProdutoMat2.Fields[x].FieldName).AsVariant := tProdutoMat2.Fields[x].Value;
    end;
  end;
  DM1.tProdutoMat.Post;
end;

procedure TfCopiaProduto.Gravar_ProdutoConsumo;
var
  x : Integer;
begin
  DM1.tProdutoConsumo.Insert;
  for x := 0 to (tProdutoConsumo2.FieldCount - 1) do
  begin
    if not (tProdutoConsumo2.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (tProdutoConsumo2.Fields[x].FieldName = 'CodProduto') then
        DM1.tProdutoConsumoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger
      else
        DM1.tProdutoConsumo.FieldByName(tProdutoConsumo2.Fields[x].FieldName).AsVariant := tProdutoConsumo2.Fields[x].Value;
    end;
  end;
  DM1.tProdutoConsumo.Post;
end;

procedure TfCopiaProduto.Gravar_ProdutoConsumoItem;
var
  x : Integer;
begin
  DM1.tProdutoConsumoItem.Insert;
  for x := 0 to (tProdutoConsumoItem2.FieldCount - 1) do
  begin
    if not (tProdutoConsumoItem2.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if (tProdutoConsumoItem2.Fields[x].FieldName = 'CodProduto') then
        DM1.tProdutoConsumoItemCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger
      else
        DM1.tProdutoConsumoItem.FieldByName(tProdutoConsumoItem2.Fields[x].FieldName).AsVariant := tProdutoConsumoItem2.Fields[x].Value;
    end;
  end;
  DM1.tProdutoConsumoItem.Post;
end;

end.
