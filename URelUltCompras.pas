unit URelUltCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelUltCompras = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDraw2: TRLDraw;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelUltCompras: TfRelUltCompras;

implementation

uses UConsUltCompras, ToolEdit;

{$R *.dfm}

procedure TfRelUltCompras.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório das Compras';
  if (fConsUltCompras.DateEdit1.Date > 0) and (fConsUltCompras.DateEdit2.Date > 0) then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + fConsUltCompras.DateEdit1.Text + ' a ' + fConsUltCompras.DateEdit2.Text
  else
  if fConsUltCompras.DateEdit1.Date > 0 then
    RLLabel1.Caption := RLLabel1.Caption + ' - Apartir de ' + fConsUltCompras.DateEdit1.Text
  else
  if fConsUltCompras.DateEdit2.Date > 0 then
    RLLabel1.Caption := RLLabel1.Caption + ' - Até ' + fConsUltCompras.DateEdit2.Text;
end;

end.
