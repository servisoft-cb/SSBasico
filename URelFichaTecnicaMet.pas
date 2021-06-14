unit URelFichaTecnicaMet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBTables;

type
  TfRelFichaTecnicaMet = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel11: TRLLabel;
    qEmbalagem: TQuery;
    dsqEmbalagem: TDataSource;
    qEmbalagemCodCor: TIntegerField;
    qEmbalagemCodProduto: TIntegerField;
    qEmbalagemCodCorProd: TIntegerField;
    qEmbalagemCodCombinacao: TIntegerField;
    qEmbalagemCodSetor: TIntegerField;
    qEmbalagemItem: TIntegerField;
    qEmbalagemCodMaterial: TIntegerField;
    qEmbalagemCodGrade: TIntegerField;
    qEmbalagemQtd: TFloatField;
    qEmbalagemVlrUnitario: TFloatField;
    qEmbalagemVlrTotal: TFloatField;
    qEmbalagemImpTalao: TStringField;
    qEmbalagemUnidade: TStringField;
    qEmbalagemConsumo: TStringField;
    qEmbalagemCodPosicao: TIntegerField;
    qEmbalagemObs: TStringField;
    qEmbalagemTipo: TStringField;
    qEmbalagemQtdPecaProd: TFloatField;
    qEmbalagemNomeMaterial: TStringField;
    qEmbalagemNomeCor: TStringField;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand5: TRLBand;
    RLDraw2: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLPanel2: TRLPanel;
    RLLabel16: TRLLabel;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand8: TRLBand;
    RLDraw4: TRLDraw;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLSubDetail4: TRLSubDetail;
    RLBand9: TRLBand;
    RLPanel3: TRLPanel;
    RLLabel17: TRLLabel;
    RLBand10: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLBand11: TRLBand;
    RLDraw6: TRLDraw;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    rlNomeMaterial: TRLLabel;
    rlNomeEmbalagem: TRLLabel;
    RLSubDetail5: TRLSubDetail;
    RLBand12: TRLBand;
    RLPanel4: TRLPanel;
    RLLabel26: TRLLabel;
    RLBand13: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand14: TRLBand;
    RLDraw8: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand15: TRLBand;
    RLLabel31: TRLLabel;
    RLMemo1: TRLMemo;
    RLDraw9: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDraw10: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelFichaTecnicaMet: TfRelFichaTecnicaMet;

implementation

uses UDM1, dmdCadProduto, UProduto;

{$R *.dfm}

procedure TfRelFichaTecnicaMet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qEmbalagem.Close;
  Action := Cafree;
end;

procedure TfRelFichaTecnicaMet.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel2.Caption := DM1.tEmpresaEmpresa.AsString;
end;

procedure TfRelFichaTecnicaMet.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlNomeMaterial.Caption := DM1.tProdutoMatlkNomeMaterial.AsString;
  if DM1.tProdutoMatCodCor.AsInteger > 0 then
    rlNomeMaterial.Caption := rlNomeMaterial.Caption + ' - ' + DM1.tProdutoMatlkNomeCor.AsString;
end;

procedure TfRelFichaTecnicaMet.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlNomeEmbalagem.Caption := qEmbalagemNomeMaterial.AsString;
  if qEmbalagemCodCor.AsInteger > 0 then
    rlNomeEmbalagem.Caption := rlNomeEmbalagem.Caption + ' - ' + qEmbalagemNomeCor.AsString;
end;

procedure TfRelFichaTecnicaMet.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := DM1.tProdutoObs.Value;
end;

procedure TfRelFichaTecnicaMet.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLImage1.Picture := fProduto.Image1.Picture;
  RLLabel32.Caption := '';
  RLLabel33.Caption := '';
  if DM1.tGrupo.Locate('Codigo',DM1.tProdutoCodGrupo.AsInteger,[loCaseInsensitive]) then
  begin
    RLLabel32.Caption := DM1.tGrupoNome.AsString;
    if DM1.tGrupoItem.Locate('CodSubGrupo',DM1.tProdutoCodSubGrupo.AsInteger,[loCaseInsensitive]) then
      RLLabel33.Caption := DM1.tGrupoItemNome.Value;
  end;
end;

procedure TfRelFichaTecnicaMet.FormCreate(Sender: TObject);
var
  vCodCorAux : Integer;
begin
  if DM1.tProdutoLancaCor.AsBoolean then
    vCodCorAux := DM1.tProdutoCorCodCor.AsInteger
  else
    vCodCorAux := 0;
  qEmbalagem.Close;
  qEmbalagem.ParamByName('CodProduto').AsInteger    := DM1.tProdutoCodigo.AsInteger;
  qEmbalagem.ParamByName('CodCorProd').AsInteger    := vCodCorAux;
  qEmbalagem.ParamByName('CodCombinacao').AsInteger := DM1.tProdutoCombCodCombinacao.AsInteger;
  qEmbalagem.Open;
end;

end.
