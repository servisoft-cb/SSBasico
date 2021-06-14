unit URelNotaBeneficiamentoAcumPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelNotaBeneficiamentoAcumPed = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNotaBeneficiamentoAcumPed: TfRelNotaBeneficiamentoAcumPed;

implementation

uses UConsNotaBeneficiamento, UDM1, ToolEdit;

{$R *.dfm}

procedure TfRelNotaBeneficiamentoAcumPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotaBeneficiamentoAcumPed.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel5.Caption := fConsNotaBeneficiamento.RxDBLookupCombo2.Text;
  RLLabel3.Caption := 'Relatório das Notas de Beneficiamento';
  if (fConsNotaBeneficiamento.DateEdit1.Date > 0) and (fConsNotaBeneficiamento.DateEdit2.Date > 0) then
    RLLabel3.Caption := RLLabel3.Caption + ' - ' + fConsNotaBeneficiamento.DateEdit1.Text + ' a ' + fConsNotaBeneficiamento.DateEdit2.Text
  else
  if fConsNotaBeneficiamento.DateEdit1.Date > 0 then
    RLLabel3.Caption := RLLabel3.Caption + ' - Inicio:' + fConsNotaBeneficiamento.DateEdit1.Text
  else
  if fConsNotaBeneficiamento.DateEdit2.Date > 0 then
    RLLabel3.Caption := RLLabel3.Caption + ' - Até ' + fConsNotaBeneficiamento.DateEdit2.Text;
end;

end.
