unit URelPedAmostra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBClient;

type
  TfRelPedAmostra = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw5: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw11: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel16: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw13: TRLDraw;
    RLLabel17: TRLLabel;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLLabel18: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDraw14: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLBand4: TRLBand;
    rlmPosicao1: TRLMemo;
    rlPosicao1: TRLLabel;
    rlPosicao2: TRLLabel;
    rlmPosicao2: TRLMemo;
    rlPosicao3: TRLLabel;
    rlmPosicao3: TRLMemo;
    rlPosicao4: TRLLabel;
    rlmPosicao4: TRLMemo;
    rlmPosicao5: TRLMemo;
    rlPosicao5: TRLLabel;
    rlPosicao6: TRLLabel;
    rlmPosicao6: TRLMemo;
    rlPosicao7: TRLLabel;
    rlmPosicao7: TRLMemo;
    rlPosicao8: TRLLabel;
    rlmPosicao8: TRLMemo;
    RLDraw17: TRLDraw;
    rlPosicao11: TRLLabel;
    rlmPosicao11: TRLMemo;
    rlPosicao10: TRLLabel;
    rlmPosicao10: TRLMemo;
    rlPosicao9: TRLLabel;
    rlmPosicao9: TRLMemo;
    RLSubDetail5: TRLSubDetail;
    RLDetailGrid4: TRLDetailGrid;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLImage1: TRLImage;
    RLImage2: TRLImage;
    RLImage3: TRLImage;
    RLDraw16: TRLDraw;
    mMaterial: TClientDataSet;
    dsmMaterial: TDataSource;
    mMaterialItem: TIntegerField;
    mMaterialNomePosicao1: TStringField;
    mMaterialNomePosicao2: TStringField;
    mMaterialNomeMaterial1: TStringField;
    mMaterialNomeMaterial2: TStringField;
    RLBand5: TRLBand;
    RLDraw18: TRLDraw;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDraw19: TRLDraw;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RLSubDetail2AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid4BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vImpMaterial : Boolean;
  public
    { Public declarations }
  end;

var
  fRelPedAmostra: TfRelPedAmostra;

implementation

uses UDMPedAmostra, UDM1, UProduto;

{$R *.dfm}

procedure TfRelPedAmostra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMPedAmostra.mMaterial.Filtered := False;
  Action := Cafree;
end;

procedure TfRelPedAmostra.FormCreate(Sender: TObject);
var
  vCodCor : Integer;
  vAux : Integer;
  vContAux : Integer;
  vItemAux : Integer;
  vPosAux : Integer;
begin
  mMaterial.EmptyDataSet;
  DMPedAmostra.cdsPedAmostra_Item.First;
  vCodCor := 0;
  if DMPedAmostra.cdsPedAmostra_ItemCODCOR.AsInteger > 0 then
    vCodCor := DMPedAmostra.cdsPedAmostra_ItemCODCOR.AsInteger;
  DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([vCodCor,DMPedAmostra.cdsPedAmostra_ItemCODCOMBINACAO.AsInteger]),[locaseinsensitive]);

  vContAux := DM1.tProdutoMat.RecordCount div 2;
  if DM1.tProdutoMat.RecordCount mod 2 > 0 then
    vContAux := vContAux + 1;

  vAux     := 0;
  vItemAux := 0;
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
  begin
    vAux := vAux + 1;
    if (vAux > vContAux) then
    begin
      vItemAux := 0;
      vAux     := 1;
    end;
    vItemAux := vItemAux + 1;
    vPosAux := 2;
    if mMaterial.Locate('Item',vItemAux,[loCaseInsensitive]) then
      mMaterial.Edit
    else
    begin
      mMaterial.Insert;
      mMaterialItem.AsInteger := vItemAux;
      vPosAux := 1;
    end;
    mMaterial.FieldByName('NomePosicao'+IntToStr(vPosAux)).AsString  := DM1.tProdutoMatlkNomePosicao.AsString + ':';
    mMaterial.FieldByName('NomeMaterial'+IntToStr(vPosAux)).AsString := DM1.tProdutoMatlkNomeMaterial.AsString;
    if Trim(DM1.tProdutoMatObs.AsString) <> '' then
      mMaterial.FieldByName('NomeMaterial'+IntToStr(vPosAux)).AsString := mMaterial.FieldByName('NomeMaterial'+IntToStr(vPosAux)).AsString
                                                                        + ' ('+ DM1.tProdutoMatObs.AsString + ')';
    mMaterial.Post;
    DM1.tProdutoMat.Next;
  end;

  DM1.tCliente.Locate('Codigo',DMPedAmostra.cdsPedAmostraCODCLIENTE.AsInteger,[loCaseInsensitive]);

  vImpMaterial := True;
end;

procedure TfRelPedAmostra.RLSubDetail2AfterPrint(Sender: TObject);
begin
  vImpMaterial := False;
end;

procedure TfRelPedAmostra.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
//var
  //vCodCor : Integer;
begin
  {vCodCor := 0;
  if DMPedAmostra.cdsPedAmostra_ItemCODCOR.AsInteger > 0 then
    vCodCor := DMPedAmostra.cdsPedAmostra_ItemCODCOR.AsInteger;
  DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([vCodCor,DMPedAmostra.cdsPedAmostra_ItemCODCOMBINACAO.AsInteger]),[locaseinsensitive]);
  DM1.tProdutoMat.First;

  DM1.tProdutoMat.First;}
end;

procedure TfRelPedAmostra.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
  i2 : Integer;
begin
  DMPedAmostra.mMaterial.Filtered := False;
  DMPedAmostra.mMaterial.Filter   := 'Item = '''+DMPedAmostra.cdsPedAmostra_ItemITEM.AsString+'''';
  DMPedAmostra.mMaterial.Filtered := True;

  for i := 1 to 11 do
  begin
    TRLLabel(FindComponent('rlPosicao'+IntToStr(i))).Visible := False;
    TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Visible := False;
    TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Lines.Clear;
  end;

  i2 := 12;
  i  := 0;
  DMPedAmostra.mMaterial.First;
  while not DMPedAmostra.mMaterial.Eof do
  begin
    i := i + 1;

    TRLLabel(FindComponent('rlPosicao'+IntToStr(i))).Visible := True;
    TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Visible := True;

    TRLLabel(FindComponent('rlPosicao'+IntToStr(i))).Caption := DMPedAmostra.mMaterialNomePosicao.AsString;

    if (Trim(DMPedAmostra.mMaterialNomeMaterial.AsString) <> '') and (Trim(DMPedAmostra.mMaterialNomeCor.AsString) <> '') then
      TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Lines.Text := DMPedAmostra.mMaterialNomeMaterial.AsString + ' ' + DMPedAmostra.mMaterialNomeCor.AsString
    else
    if Trim(DMPedAmostra.mMaterialNomeMaterial.AsString) <> '' then
      TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Lines.Text := DMPedAmostra.mMaterialNomeMaterial.AsString
    else
    if Trim(DMPedAmostra.mMaterialNomeCor.AsString) <> '' then
      TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Lines.Text := DMPedAmostra.mMaterialNomeCor.AsString;

    if TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Height > i2 then
      i2 := TRLMemo(FindComponent('rlmPosicao'+IntToStr(i))).Height;

    DMPedAmostra.mMaterial.Next;
  end;

  RLBand4.Height := 29 + (i2 - 12);
end;

procedure TfRelPedAmostra.RLDetailGrid4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (DMPedAmostra.cdsPedAmostra_GradeQTD.AsInteger > 0);
end;

procedure TfRelPedAmostra.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLImage1.Picture := Nil;
  RLImage2.Picture := nil;
  RLImage3.Picture := nil;
  RLImage1.Stretch := fProduto.CheckBox1.Checked;

  if not fProduto.ckImpLogo.Checked then
    exit;

  RLImage1.Picture := fProduto.Image1.Picture;

  DM1.tFilial.First;
  if (DM1.tFilialEndLogo.AsString <> '') and FileExists(DM1.tFilialEndLogo.AsString) then
    RLImage2.Picture.LoadFromFile(DM1.tFilialEndLogo.AsString);

  if DM1.tProdutoCodRepresentada.AsInteger > 0 then
    if DM1.tCliente2.Locate('Codigo',DM1.tProdutoCodRepresentada.AsInteger,[loCaseInsensitive]) then
      RLImage3.Picture.LoadFromFile(DM1.tCliente2EndLogo.AsString);
  RLLabel1.Caption := 'FICHA DE PEDIDO AMOSTRA Nº ' + DMPedAmostra.cdsPedAmostraID.AsString; 
end;

end.
