unit URelNotaBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelNotaBeneficiamento = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw2: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNotaBeneficiamento: TfRelNotaBeneficiamento;

implementation

uses UConsNotaBeneficiamento, UDM1, ToolEdit;

{$R *.dfm}

procedure TfRelNotaBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotaBeneficiamento.RLBand1BeforePrint(Sender: TObject;
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
  if fConsNotaBeneficiamento.RxDBLookupCombo1.Text <> '' then
    RLLabel27.Caption := DM1.tFilialEmpresa.AsString
  else
    RLLabel27.Caption := 'Ambas as Empresas';
end;

end.
