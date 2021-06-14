unit URelPagarReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelPagarReceber = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand5: TRLBand;
    RLLabel9: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel15: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel16: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLGroup2: TRLGroup;
    RLBand6: TRLBand;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLBand7: TRLBand;
    RLLabel25: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand8: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand9: TRLBand;
    RLLabel31: TRLLabel;
    RLBand10: TRLBand;
    RLDBText17: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraw5: TRLDraw;
    RLDBText22: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDraw6: TRLDraw;
    RLLabel34: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText25: TRLDBText;
    RLDraw7: TRLDraw;
    RLDBText12: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLGroup3: TRLGroup;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand11: TRLBand;
    RLLabel29: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel30: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw8: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPagarReceber: TfRelPagarReceber;

implementation

uses UConsPagarReceber;

{$R *.dfm}

procedure TfRelPagarReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPagarReceber.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel12.Caption := Trim(fConsPagarReceber.qPagarNroDuplicata.AsString) + '/' + fConsPagarReceber.qPagarParcCPagar.AsString;
  if fConsPagarReceber.qPagarRestParcela.AsFloat > 0 then
    RLLabel14.Caption := fConsPagarReceber.qPagarclDiasAtraso.AsString
  else
    RLLabel14.Caption := '';
end;

procedure TfRelPagarReceber.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
  vAux := fConsPagarReceber.mFilialGeralVlrOC.AsFloat + fConsPagarReceber.mFilialGeralVlrComissao.AsFloat;
  RLLabel37.Caption := FormatFloat('###,###,###,##0.00',vAux);
end;

end.
