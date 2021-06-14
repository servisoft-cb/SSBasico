unit URelEtiqRotulo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode;

type
  TfRelEtiqRotulo2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLImage1: TRLImage;
    RLLabel19: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText9: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEtiqRotulo2: TfRelEtiqRotulo2;

implementation

uses DB, UEtiqRotulo, UDM1;

{$R *.dfm}

procedure TfRelEtiqRotulo2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEtiqRotulo2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := DM1.tFilialEmpresa.AsString;
  if (fEtiqRotulo.mEtiquetaEndFoto.AsString <> '') and FileExists(fEtiqRotulo.mEtiquetaEndFoto.AsString) then
    RLImage1.Picture.LoadFromFile(fEtiqRotulo.mEtiquetaEndFoto.AsString)
  else
    RLImage1.Picture := nil;
end;

end.
