unit URelOrcamentoMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg, RLPreviewForm, RLRichFilter, RLHTMLFilter, RLPDFFilter,
  RLFilters, RLXLSFilter;

type
  TfRelOrcamentoMail = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText7: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLDBText18: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText19: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText21: TRLDBText;
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
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDraw3: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel27: TRLLabel;
    RLDBText27: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText1: TRLDBText;
    RLDraw5: TRLDraw;
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
    RLImage1: TRLImage;
    RLLabel2: TRLLabel;
    RLDraw6: TRLDraw;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelOrcamentoMail: TfRelOrcamentoMail;

implementation

uses UDM1, SendMailOptions;

{$R *.DFM}

procedure TfRelOrcamentoMail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vFormulario := '';
  Action := Cafree;
end;

procedure TfRelOrcamentoMail.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfRelOrcamentoMail.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;  
begin
  if DM1.tOrcamentoGrade.RecordCount > 0 then
    begin
      RLBand2.Height      := 74;
      RLSubDetail2.Height := 76;
      RLDraw3.Top         := 71;
      for i := 1 to 14 do
        begin
          TRLLabel(FindComponent('Tam'+IntToStr(i))).Caption := ' ';
          TRLLabel(FindComponent('Qtd'+IntToStr(i))).Caption := ' ';
        end;
      i := 0;
      DM1.tOrcamentoGrade.First;
      while not DM1.tOrcamentoGrade.Eof do
        begin
          if DM1.tOrcamentoGradeQtd.AsFloat > 0 then
            begin
              inc(i);
              if i < 15 then
                begin
                  TRLLabel(FindComponent('Tam'+IntToStr(i))).Caption := DM1.tOrcamentoGradelkTamanho.AsString;
                  TRLLabel(FindComponent('Qtd'+IntToStr(i))).Caption := DM1.tOrcamentoGradeQtd.AsString;
                end;
            end;
          DM1.tOrcamentoGrade.Next;
        end;
    end
  else
    begin
      RLBand2.Height      := 39;
      RLSubDetail2.Height := 41;
      RLDraw3.Top         := 37;
    end;
end;

procedure TfRelOrcamentoMail.RLBand1BeforePrint(Sender: TObject;
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

  if FileExists(DM1.tFilialEndLogo.AsString) Then
    RLImage1.Picture.LoadFromFile(DM1.tFilialEndLogo.AsString)
  else
    RLImage1.Picture := nil;

  RLLabel4.Caption := DM1.tOrcamentoCifFob.AsString;
  if DM1.tOrcamentoCifFob.AsString = 'PRO' then
    RLLabel4.Caption := 'Próprio';
end;

procedure TfRelOrcamentoMail.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel24.Caption := DM1.tOrcamentolkNomeVendedor.AsString + '  Fone: ' + DM1.tOrcamentolkFoneVendedor.AsString;
end;

end.
