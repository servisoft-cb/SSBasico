
unit UConvProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ToolEdit, Db, DBTables, MemTable, Grids,
  DBGrids, RXDBCtrl, RxLookup, ExtCtrls, Variants, DBClient, SMDBGrid;

type
  TfConvProduto = class(TForm)
    Label5: TLabel;
    Panel1: TPanel;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    FilenameEdit2: TFilenameEdit;
    Label1: TLabel;
    mProduto: TClientDataSet;
    mProdutoCodigo: TStringField;
    mProdutoNome: TStringField;
    mProdutoNomeReduzido: TStringField;
    mProdutoClasFiscal: TStringField;
    mProdutoPrecoCusto: TFloatField;
    mProdutoPrecoMedio: TFloatField;
    mProdutoPrecoVenda: TFloatField;
    mProdutoUnidade: TStringField;
    mProdutoAtivo: TStringField;
    mProdutoDtUltCompra: TDateField;
    mProdutoDtUltVenda: TDateField;
    mProdutoCodProdutoForn: TStringField;
    mProdutoCodFornecedor: TStringField;
    dsmProduto: TDataSource;
    SMDBGrid1: TSMDBGrid;
    mCBarra: TClientDataSet;
    mCBarraCodProduto: TStringField;
    mCBarraNomeProduto: TStringField;
    mCBarraCodBarra: TStringField;
    mCBarraPrecoCusto: TFloatField;
    mCBarraPrecoMedio: TFloatField;
    mCBarraPrecoVenda: TFloatField;
    mCBarraNomeCor: TStringField;
    mCBarraTamanho: TStringField;
    SMDBGrid2: TSMDBGrid;
    dsmCBarra: TDataSource;
    qProximoMatForn: TQuery;
    qProximoMatFornItem: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    vContador : Integer;

    F        : TextFile;
    Registro  : String;
    vCodCor : Integer;
    vTamanho : String;
    vCodProdutoInt : Integer;
    vCodProdutoAgr : String;
    vCodFornecedor : Integer;
    vReferencia    : String;

    vExiste_Prod, vExiste_Cor, vExiste_MatForn : Boolean;

    { Private declarations }
    function Valida_Numeros: Boolean;
    function Buscar_Cor : Integer;

    procedure Verifica_Produto;

    procedure Limpa_Tabelas;

    procedure Gravar_mProduto;
    procedure Gravar_mCBarra;

    procedure Gravar_tProduto;
    procedure Gravar_MaterialForn;
    procedure Gravar_tProdutoCor;

    procedure Le_Auxiliar;

  public
    { Public declarations }
  end;

var
  fConvProduto: TfConvProduto;

implementation

uses UDM1, UDM2, UDMMaterialFornecedor;

{$R *.DFM}

function TfConvProduto.Valida_Numeros: Boolean;
begin
  Result := False;
  if (Copy(Registro,vContador,1) = '0') or (Copy(Registro,vContador,1) = '1') or
     (Copy(Registro,vContador,1) = '2') or (Copy(Registro,vContador,1) = '3') or
     (Copy(Registro,vContador,1) = '4') or (Copy(Registro,vContador,1) = '5') or
     (Copy(Registro,vContador,1) = '6') or (Copy(Registro,vContador,1) = '7') or
     (Copy(Registro,vContador,1) = '8') or (Copy(Registro,vContador,1) = '9') then
    Result := True;
end;

procedure TfConvProduto.Limpa_Tabelas;
begin
end;

procedure TfConvProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DMMaterialFornecedor.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMMaterialFornecedor);
  Limpa_Tabelas;
  Action := Cafree;
end;

procedure TfConvProduto.BitBtn8Click(Sender: TObject);
begin
  if (FilenameEdit1.Text = '') or (FilenameEdit2.Text = '') then
  begin
    ShowMessage('É obrigatório informar o produtos e o código de barras!');
    exit;
  end;

  DM1.tProduto.IndexFieldNames  := 'Codigo';
  
  Gravar_mProduto;
  Gravar_mCBarra;

  Le_Auxiliar;

  FilenameEdit1.Clear;
  FilenameEdit2.Clear;
end;

procedure TfConvProduto.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConvProduto.FormShow(Sender: TObject);
begin
  if not Assigned(DMMaterialFornecedor) then
    DMMaterialFornecedor := TDMMaterialFornecedor.Create(Self);

  DM1.tProduto.Open;
  DM1.tProdutoCli.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tCor.Open;
  DM1.tProdutoCor.Open;
  DMMaterialFornecedor.tMaterialFornecedor.Open;
end;

procedure TfConvProduto.Gravar_mCBarra;
var
  vTexto : String;
  vflag : Boolean;
  i : Integer;
begin
  AssignFile(F,FilenameEdit2.Text);
  Reset(F);
  while not Eof(F) do
  begin
    ReadLn(F,Registro);
    vTexto    := Registro;
    vContador := 0;
    vFlag     := False;
    mCBarra.Insert;
    while not vFlag do
    begin
      i := Pos(';',vTexto);
      vContador := vContador + 1;
      if (i = 0) and (vContador > 8) then
        vFlag := True
      else
      begin
        if vContador = 1 then
          mCBarraCodBarra.AsString := copy(vTexto,2,i-3);
        if vContador = 2 then
          mCBarraNomeProduto.AsString := copy(vTexto,1,i-1);
        if vContador = 3 then
          mCBarraCodProduto.AsString := copy(vTexto,1,i-1);
        if vContador = 4 then
          mCBarraNomeCor.AsString := copy(vTexto,1,i-1);
        if vContador = 5 then
          mCBarraTamanho.AsString := copy(vTexto,1,i-1);
        if vContador = 6 then
          mCBarraPrecoVenda.AsString := Trim(copy(vTexto,1,i-1));
        if vContador = 7 then
          mCBarraPrecoMedio.AsString := Trim(copy(vTexto,1,i-1));
        if vContador = 8 then
          mCBarraPrecoCusto.AsString := Trim(copy(vTexto,1,Length(vTexto)));
        Delete(vtexto,1,i);
      end;
      if Trim(vTexto) = '' then
        vFlag := True;
    end;
    mCBarra.Post;
  end;
  CloseFile(F);
end;

procedure TfConvProduto.Gravar_mProduto;
var
  vTexto : String;
  vflag : Boolean;
  i : Integer;
begin
  AssignFile(F,FilenameEdit1.Text);
  Reset(F);
  while not Eof(F) do
  begin
    ReadLn(F,Registro);
    vTexto    := Registro;
    vContador := 0;
    vFlag     := False;
    mProduto.Insert;
    while not vFlag do
    begin
      i := Pos(';',vTexto);
      vContador := vContador + 1;
      if i = 0 then
        vFlag := True
      else
      begin
        if vContador = 1 then
          mProdutoCodigo.AsString := copy(vTexto,2,i-3);
        if vContador = 2 then
          mProdutoNome.AsString := copy(vTexto,1,i-1);
        if vContador = 3 then
          mProdutoNomeReduzido.AsString := copy(vTexto,1,i-1);
        if vContador = 5 then
          mProdutoUnidade.AsString := copy(vTexto,1,i-1);
        if vContador = 7 then
          mProdutoAtivo.AsString := copy(vTexto,1,i-1);
        if vContador = 17 then
          mProdutoPrecoVenda.AsString := Trim(copy(vTexto,1,i-1));
        if vContador = 18 then
          mProdutoPrecoMedio.AsString := Trim(copy(vTexto,1,i-1));
        if vContador = 19 then
          mProdutoPrecoCusto.AsString := Trim(copy(vTexto,1,i-1));
        if vContador = 21 then
          mProdutoDtUltCompra.AsString := copy(vTexto,1,i-1);
        if vContador = 23 then
          mProdutoDtUltVenda.AsString := copy(vTexto,1,i-1);
        if vContador = 25 then
          mProdutoCodProdutoForn.AsString := copy(vTexto,1,i-1);
        if vContador = 26 then
          mProdutoCodFornecedor.AsString := copy(vTexto,1,i-1);

        Delete(vtexto,1,i);
      end;
      if Trim(vTexto) = '' then
        vFlag := True;
    end;
    mProduto.Post;
  end;
  CloseFile(F);
end;

procedure TfConvProduto.Le_Auxiliar;
begin
  mCBarra.First;
  while not mCBarra.Eof do
  begin
    vCodCor        := 0;
    vCodProdutoInt := 0;
    vCodFornecedor := 0;
    if Trim(mCBarraNomeCor.AsString) <> '' then
      vCodCor := Buscar_Cor;
    vTamanho := '';
    if Trim(mCBarraTamanho.AsString) <> '' then
      vTamanho := TrimRight(mCBarraTamanho.AsString);

    vReferencia := mCBarraCodProduto.AsString;
    if vTamanho <> '' then
      vReferencia := vReferencia + '.' + vTamanho;

    vCodProdutoAgr := mCBarraCodProduto.AsString + '.' + FormatFloat('0000',vCodCor);
    if vTamanho <> '' then
      vCodProdutoAgr := vCodProdutoAgr + '.' + vTamanho;

    if mProduto.Locate('Codigo', mCBarraCodProduto.AsString , ([LocaseInsensitive])) then
    begin
      vCodFornecedor := mProdutoCodFornecedor.AsInteger;

      Verifica_Produto;
      if not vExiste_Prod then
        Gravar_tProduto;
      if (vCodCor > 0) and not(vExiste_Cor) then
        Gravar_tProdutoCor;
      if not vExiste_MatForn then
        Gravar_MaterialForn;

    end;

    mCBarra.Next;
  end;

end;

function TfConvProduto.Buscar_Cor: Integer;
var
  vCodAux : Integer;
begin
  Result := 0;
  if not DM1.tCor.Locate('Nome',TrimRight(mCBarraNomeCor.AsString), ([LocaseInsensitive])) then
  begin
    DM1.tCor.Last;
    vCodAux := DM1.tCorCodigo.AsInteger;

    DM1.tCor.Insert;
    DM1.tCorCodigo.AsInteger := vCodAux + 1;
    DM1.tCorNome.AsString    := TrimRight(mCBarraNomeCor.AsString);
    DM1.tCor.Post;
  end;
  Result := DM1.tCorCodigo.AsInteger;
  DM1.tCor.Refresh;
end;

procedure TfConvProduto.Gravar_MaterialForn;
var
  vItemAux : Integer;
begin
  qProximoMatForn.Close;
  qProximoMatForn.ParamByName('CodMaterial').AsInteger := vCodProdutoInt;
  qProximoMatForn.Open;
  vItemAux := qProximoMatFornItem.AsInteger + 1;
  qProximoMatForn.Close;

  DMMaterialFornecedor.tMaterialFornecedor.Insert;
  DMMaterialFornecedor.tMaterialFornecedorCodMaterial.AsInteger     := vCodProdutoInt;
  DMMaterialFornecedor.tMaterialFornecedorCodFornecedor.AsInteger   := vCodFornecedor;
  DMMaterialFornecedor.tMaterialFornecedorItem.AsInteger            := vItemAux;
  DMMaterialFornecedor.tMaterialFornecedorNomeMaterialForn.AsString := mCBarraNomeProduto.AsString;
  if Trim(mCBarraTamanho.AsString) <> '' then
    DMMaterialFornecedor.tMaterialFornecedorNomeMaterialForn.AsString := DMMaterialFornecedor.tMaterialFornecedorNomeMaterialForn.AsString
                                                                       + ' - ' + TrimRight(mCBarraTamanho.AsString);
  DMMaterialFornecedor.tMaterialFornecedorCodMaterialForn.AsString  := vCodProdutoAgr;
  DMMaterialFornecedor.tMaterialFornecedorCodGrade.AsInteger        := 0;
  DMMaterialFornecedor.tMaterialFornecedorCodCor.AsInteger          := vCodCor;
  DMMaterialFornecedor.tMaterialFornecedorCodPosicao.AsInteger      := 0;
  DMMaterialFornecedor.tMaterialFornecedorTamanho.AsString          := '';
  DMMaterialFornecedor.tMaterialFornecedorCodBarra.AsString         := mCBarraCodBarra.AsString;
  DMMaterialFornecedor.tMaterialFornecedorCodMaterialFornPadrao.AsString := mCBarraCodProduto.AsString;
  DMMaterialFornecedor.tMaterialFornecedor.Post;
end;

procedure TfConvProduto.Gravar_tProduto;
var
  vCodAux : Integer;
begin
  DM1.tProduto.Refresh;
  DM1.tProduto.Last;
  vCodAux := DM1.tProdutoCodigo.AsInteger;

  DM1.tProduto.Insert;
  DM1.tProdutoCodigo.AsInteger      := vCodAux + 1;
  DM1.tProdutoProdMat.AsString      := 'P';
  DM1.tProdutoImpTabPreco.AsBoolean := True;
  DM1.tProdutoAliqIcms.AsFloat      := 0;
  DM1.tProdutoUnidade.AsString      := mProdutoUnidade.AsString;
  DM1.tProdutoCodSubGrupo.AsInteger := 0;
  DM1.tProdutoCodGrupo.AsInteger    := 0;
  DM1.tProdutoNome.AsString         := mProdutoNome.AsString;
  if vTamanho <> '' then
    DM1.tProdutoNome.AsString       := DM1.tProdutoNome.AsString + ' - ' + vTamanho;

  DM1.tProdutoReferencia.AsString    := vReferencia;
  DM1.tProdutoCodClasFiscal.AsString := mProdutoClasFiscal.AsString;
  DM1.tProdutoPesoLiquido.AsFloat    := 0;
  DM1.tProdutoPesoBruto.AsFloat      := 0;
  DM1.tProdutoLancaGrade.AsBoolean   := False;
  if mProdutoAtivo.AsString = 'SIM' then
    DM1.tProdutoInativo.AsBoolean := False
  else
    DM1.tProdutoInativo.AsBoolean := True;
  if vCodCor > 0 then
     DM1.tProdutoLancaCor.AsBoolean := True
  else
     DM1.tProdutoLancaCor.AsBoolean := False;

  DM1.tProdutoPrecoGrade.AsBoolean := False;
  DM1.tProdutoVlrVenda.AsFloat     := mCBarraPrecoVenda.AsFloat;
  DM1.tProdutoPrecoCusto.AsFloat   := mCBarraPrecoCusto.AsFloat;
  DM1.tProdutoPosseMat.AsString    := 'E';
  DM1.tProdutoEstoque.AsBoolean    := True;
  DM1.tProdutoDtAlteracao.AsDateTime  := Date;
  DM1.tProdutoMaterialOutros.AsString := 'O';
  DM1.tProdutoPrecoCor.AsBoolean      := DM1.tProdutoLancaCor.AsBoolean;
  DM1.tProdutoCodFornecedor.AsInteger := vCodFornecedor;
  DM1.tProdutoUsuario.AsString        := 'Conversor';
  DM1.tProdutoDtCad.AsDateTime        := Date;
  DM1.tProdutoHrCad.AsDateTime        := Now;
  DM1.tProdutoOrigemProd.AsString     := '0';
  DM1.tProduto.Post;

  vCodProdutoInt := DM1.tProdutoCodigo.AsInteger;

  DM1.tProduto.Refresh;
end;

procedure TfConvProduto.Gravar_tProdutoCor;
begin
  DM1.tProdutoCor.Refresh;
  DM1.tProdutoCor.Insert;
  DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
  DM1.tProdutoCorCodCor.AsInteger     := vCodCor;
  DM1.tProdutoCorPrCusto.AsFloat      := mCBarraPrecoCusto.AsFloat;
  DM1.tProdutoCorVlrVenda.AsFloat     := mCBarraPrecoVenda.AsFloat;
  if mProdutoAtivo.AsString = 'SIM' then
    DM1.tProdutoCorInativo.AsBoolean := False
  else
    DM1.tProdutoCorInativo.AsBoolean := True;
  DM1.tProdutoCor.Post;
end;

procedure TfConvProduto.Verifica_Produto;
begin
  vExiste_Prod    := False;
  vExiste_Cor     := False;
  vExiste_MatForn := False;
  if DM1.tProduto.Locate('Referencia', vReferencia, ([LocaseInsensitive])) then
  begin
    vCodProdutoInt := DM1.tProdutoCodigo.AsInteger;
    vExiste_Prod := True;
    if vCodCor <= 0 then
      vExiste_Cor := True
    else
    if DM1.tProdutoCor.Locate('CodProduto;CodCor', VarArrayOf([DM1.tProdutoCodigo.AsInteger,vCodCor]), [locaseinsensitive]) then
      vExiste_Cor  := True;

    if DMMaterialFornecedor.tMaterialFornecedor.Locate('CodFornecedor;CodMaterialForn', VarArrayOf([vCodFornecedor,vCodProdutoAgr]), [locaseinsensitive]) then
      vExiste_MatForn  := True;
  end;
end;

end.
