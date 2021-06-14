unit UReferenciaInf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Buttons;

type
  TfReferenciaInf = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label5: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    sdsColecao: TSQLDataSet;
    dspColecao: TDataSetProvider;
    cdsColecao: TClientDataSet;
    dsColecao: TDataSource;
    sdsColecaoID: TIntegerField;
    sdsColecaoTIPO: TStringField;
    sdsColecaoCODIGO: TIntegerField;
    sdsColecaoNOME: TStringField;
    cdsColecaoID: TIntegerField;
    cdsColecaoTIPO: TStringField;
    cdsColecaoCODIGO: TIntegerField;
    cdsColecaoNOME: TStringField;
    sdsProdutoFornecedor: TSQLDataSet;
    dspProdutoFornecedor: TDataSetProvider;
    cdsProdutoFornecedor: TClientDataSet;
    dsProdutoFornecedor: TDataSource;
    sdsTipoProduto: TSQLDataSet;
    dspTipoProduto: TDataSetProvider;
    cdsTipoProduto: TClientDataSet;
    dsTipoProduto: TDataSource;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    sdsCor: TSQLDataSet;
    dspCor: TDataSetProvider;
    cdsCor: TClientDataSet;
    dsCor: TDataSource;
    sdsProdutoFornecedorID: TIntegerField;
    sdsProdutoFornecedorTIPO: TStringField;
    sdsProdutoFornecedorCODIGO: TIntegerField;
    sdsProdutoFornecedorNOME: TStringField;
    cdsProdutoFornecedorID: TIntegerField;
    cdsProdutoFornecedorTIPO: TStringField;
    cdsProdutoFornecedorCODIGO: TIntegerField;
    cdsProdutoFornecedorNOME: TStringField;
    sdsTipoProdutoID: TIntegerField;
    sdsTipoProdutoTIPO: TStringField;
    sdsTipoProdutoCODIGO: TIntegerField;
    sdsTipoProdutoNOME: TStringField;
    cdsTipoProdutoID: TIntegerField;
    cdsTipoProdutoTIPO: TStringField;
    cdsTipoProdutoCODIGO: TIntegerField;
    cdsTipoProdutoNOME: TStringField;
    sdsMaterialID: TIntegerField;
    sdsMaterialTIPO: TStringField;
    sdsMaterialCODIGO: TIntegerField;
    sdsMaterialNOME: TStringField;
    cdsMaterialID: TIntegerField;
    cdsMaterialTIPO: TStringField;
    cdsMaterialCODIGO: TIntegerField;
    cdsMaterialNOME: TStringField;
    sdsCorID: TIntegerField;
    sdsCorTIPO: TStringField;
    sdsCorCODIGO: TIntegerField;
    sdsCorNOME: TStringField;
    BitBtn1: TBitBtn;
    cdsCorID: TIntegerField;
    cdsCorTIPO: TStringField;
    cdsCorCODIGO: TIntegerField;
    cdsCorNOME: TStringField;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    sdsMarca: TSQLDataSet;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    dsMarca: TDataSource;
    sdsMarcaID: TIntegerField;
    sdsMarcaTIPO: TStringField;
    sdsMarcaCODIGO: TIntegerField;
    sdsMarcaNOME: TStringField;
    cdsMarcaID: TIntegerField;
    cdsMarcaTIPO: TStringField;
    cdsMarcaCODIGO: TIntegerField;
    cdsMarcaNOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReferenciaInf: TfReferenciaInf;

implementation

uses UProduto, UDM1;

{$R *.dfm}

procedure TfReferenciaInf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsMarca.Close;
  cdsColecao.Close;
  cdsProdutoFornecedor.Close;
  cdsTipoProduto.Close;
  cdsMaterial.Close;
  cdsCor.Close;

  Action := Cafree;
end;

procedure TfReferenciaInf.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo6.Text = '' then
  begin
    ShowMessage('Marca não foi informada!');
    exit;
  end;
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Coleção não foi informada!');
    exit;
  end;
  if RxDBLookupCombo2.Text = '' then
  begin
    ShowMessage('Produto/Fornecedor não foi informado!');
    exit;
  end;
  if RxDBLookupCombo3.Text = '' then
  begin
    ShowMessage('Tipo do produto não foi informado!');
    exit;
  end;
  if RxDBLookupCombo4.Text = '' then
  begin
    ShowMessage('Material não foi informado!');
    exit;
  end;
  {if RxDBLookupCombo5.Text = '' then
  begin
    ShowMessage('Cor não foi informada!');
    exit;
  end;}

  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo3.Text <> '') and
     (RxDBLookupCombo4.Text <> '') and (RxDBLookupCombo6.Text <> '') then
    //fProduto.vReferencia_Tipo := cdsColecaoCODIGO.AsString + cdsProdutoFornecedorCODIGO.AsString + FormatFloat('00',cdsTipoProdutoCODIGO.AsInteger) + cdsMaterialCODIGO.AsString + FormatFloat('00',cdsCorCODIGO.AsInteger);
    fProduto.vReferencia_Tipo := cdsMarcaCODIGO.AsString + cdsColecaoCODIGO.AsString + cdsProdutoFornecedorCODIGO.AsString + '.'
                               + FormatFloat('000',cdsTipoProdutoCODIGO.AsInteger) + '.'
                               + FormatFloat('000',cdsMaterialCODIGO.AsInteger);
  Close;
end;

procedure TfReferenciaInf.FormShow(Sender: TObject);
begin
  //if fProduto.BitBtn2.Tag <> 1 then
  //  fProduto.vReferencia_Tipo := '';

  cdsMarca.Open;
  cdsColecao.Open;
  cdsProdutoFornecedor.Open;
  cdsTipoProduto.Open;
  cdsMaterial.Open;
  cdsCor.open;
end;

procedure TfReferenciaInf.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
