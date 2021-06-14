unit URelOrdemCompraMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLRichText, RLHTMLFilter, RLRichFilter, RLFilters, RLPDFFilter,
  RLPreviewForm, RLDraftFilter, RLXLSFilter, jpeg, Variants;

type
  TfRelOrdemCompraMail = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLSubDetail4: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText25: TRLDBText;
    RLDraw5: TRLDraw;
    RLSubDetail5: TRLSubDetail;
    RLBand5: TRLBand;
    RLDBText26: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLBand6: TRLBand;
    RLLabel34: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw9: TRLDraw;
    RLMemo1: TRLMemo;
    RLLabel37: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel54: TRLLabel;
    RLDBText39: TRLDBText;
    RLBand7: TRLBand;
    RLRodape: TRLLabel;
    RLImage1: TRLImage;
    RLDraw12: TRLDraw;
    RLBand2: TRLBand;
    RLDraw8: TRLDraw;
    RLLabel40: TRLLabel;
    RLMemo2: TRLMemo;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw10: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand8: TRLBand;
    RLDBText28: TRLDBText;
    RLLabel32: TRLLabel;
    Tam1: TRLLabel;
    Tam2: TRLLabel;
    Tam3: TRLLabel;
    Tam4: TRLLabel;
    Tam5: TRLLabel;
    Tam6: TRLLabel;
    Tam7: TRLLabel;
    Tam8: TRLLabel;
    Tam9: TRLLabel;
    Tam10: TRLLabel;
    Tam11: TRLLabel;
    Tam12: TRLLabel;
    Tam13: TRLLabel;
    Tam14: TRLLabel;
    Tam15: TRLLabel;
    RLLabel33: TRLLabel;
    Qtd1: TRLLabel;
    Qtd2: TRLLabel;
    Qtd3: TRLLabel;
    Qtd4: TRLLabel;
    Qtd5: TRLLabel;
    Qtd6: TRLLabel;
    Qtd7: TRLLabel;
    Qtd8: TRLLabel;
    Qtd9: TRLLabel;
    Qtd10: TRLLabel;
    Qtd11: TRLLabel;
    Qtd12: TRLLabel;
    Qtd13: TRLLabel;
    Qtd14: TRLLabel;
    Qtd15: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel38: TRLLabel;
    RLBand10: TRLBand;
    RLDraw16: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelOrdemCompraMail: TfRelOrdemCompraMail;
  vTotal : Real;

implementation

uses UDM1, UOrdemCompra, UDM2, DB;

{$R *.DFM}

procedure TfRelOrdemCompraMail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vFormulario := '';
  Action := Cafree;
end;

procedure TfRelOrdemCompraMail.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  RLLabel8.Caption  := '';
  RLLabel38.Caption := '';
  {if (DM2.tMaterialFornecedor.Locate('CodMaterial;CodFornecedor',VarArrayOf([DM1.tOrdemCompraItemCodMaterial.AsInteger,DM1.tOrdemCompraCodFornecedor.AsInteger]),[loCaseInsensitive])) and
     (DM2.tMaterialFornecedorNomeMaterialForn.AsString <> '') then
    begin
      RLLabel7.Caption  := DM2.tMaterialFornecedorNomeMaterialForn.AsString;
      RLLabel8.Caption  := 'Nome Interno:';
      RLLabel38.Caption := DM1.tOrdemCompraItemlkNomeMaterial.AsString;
      RLBand5.Height    := 44;
    end
  else
    begin}
      RLLabel7.Caption := DM1.tOrdemCompraItemlkNomeMaterial.AsString;
      RLBand5.Height   := 31;
    //end;
  vTotal := vTotal + Dm1.tOrdemCompraItemVlrTotal.AsFloat;
  if DM1.tOrdemCompraItemTamanho.AsString <> '' then
    RLLabel54.Caption := 'Tamanho:'
  else
    RLLabel54.Caption := '';
  {if DM1.tOrdemCompraItemGrade.RecordCount > 0 then
    RLDraw11.Visible := False
  else
    RLDraw11.Visible := True;}

end;

procedure TfRelOrdemCompraMail.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal := 0;
end;

procedure TfRelOrdemCompraMail.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel36.Caption := FormatFloat('###,###,##0.00',vTotal);
  RLMemo1.Lines.Add(Dm1.tOrdemCompraObs.AsString);
end;

procedure TfRelOrdemCompraMail.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel37.Caption := Dm1.tFilialEmpresa.AsString;
  RLLabel42.Caption := Dm1.tFilialEndereco.AsString;
  RLLabel48.Caption := Dm1.tFilialTel.AsString;
  RLLabel49.Caption := Dm1.tFilialFax.AsString;
  RLLabel41.Caption := Dm1.tFilialCidade.AsString + ' / ' + DM1.tFilialEstado.AsString;

  RLLabel51.Caption := Dm1.tFilialCep.AsString;
  RLLabel52.Caption := Dm1.tFilialCNPJ.AsString;
  RLLabel53.Caption := Dm1.tFilialInscr.AsString;

  if (DM1.tFilialEndLogo.AsString <> '') and FileExists(DM1.tFilialEndLogo.AsString) then
    RLImage1.Picture.LoadFromFile(DM1.tFilialEndLogo.AsString)
  else
    RLImage1.Picture := nil;
end;

procedure TfRelOrdemCompraMail.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLRodape.Caption := vRodape;
end;

procedure TfRelOrdemCompraMail.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  if DM1.tOrdemCompraItemGrade.RecordCount > 0 then
    PrintIt := True
  else
    PrintIt := False;
  if PrintIt then
    begin
      for i := 1 to 15 do
        begin
          TRLLabel(FindComponent('Tam'+IntToStr(i))).Caption   := ' ';
          TRLLabel(FindComponent('Qtd'+IntToStr(i))).Caption   := ' ';
        end;
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tOrdemCompraItemCodGrade.AsInteger]);
      DM1.tOrdemCompraItemGrade.First;
      i := 0;
      while not DM1.tOrdemCompraItemGrade.Eof do
        begin
          if DM1.tOrdemCompraItemGradeQtd.AsFloat > 0 then
            begin
              inc(i);
              if i > 15 then
                ShowMessage('Existe mais de 15 tamanhos, o sistema só vai imprimir até 15...favor verificar!')
              else
                begin
                  DM1.tGradeItem.SetKey;
                  DM1.tGradeItemCodGrade.AsInteger := DM1.tOrdemCompraItemGradeCodGrade.AsInteger;
                  DM1.tGradeItemPosicao.AsInteger  := DM1.tOrdemCompraItemGradePosicao.AsInteger;
                  if DM1.tGradeItem.GotoKey then
                    begin
                      TRLLabel(FindComponent('Tam'+IntToStr(i))).Caption := DM1.tGradeItemTamanho.AsString;
                      TRLLabel(FindComponent('Qtd'+IntToStr(i))).Caption := DM1.tOrdemCompraItemGradeQtd.AsString;
                    end;
                end;
            end;
          DM1.tOrdemCompraItemGrade.Next;
        end;
    end;
end;

procedure TfRelOrdemCompraMail.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption := DM1.tOrdemCompralkNomeSolicitante.AsString;
end;

end.
