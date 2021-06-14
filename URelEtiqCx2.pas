unit URelEtiqCx2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RLReport, RLBarcode;

type
  TfRelEtiqCx2 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBarcode1: TRLBarcode;
    rlReferencia: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    rlNome: TRLLabel;
    RLImage1: TRLImage;
    rlCodBarra: TRLLabel;
    rlMat1: TRLLabel;
    rlMat2: TRLLabel;
    RLReport2: TRLReport;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBarcode4: TRLBarcode;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLImage2: TRLImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEtiqCx2: TfRelEtiqCx2;

implementation

uses UDM1, UDM2, UEtiqCx, DB;

{$R *.DFM}

procedure TfRelEtiqCx2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEtiqCx2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlMat1.Caption       := fEtiqCx.mEtiquetaMaterial1.AsString;
  rlMat2.Caption       := fEtiqCx.mEtiquetaMaterial2.AsString;
  rlReferencia.Caption := fEtiqCx.mEtiquetaReferencia.AsString;
  rlNome.Caption       := fEtiqCx.mEtiquetaNome.AsString;

  RLImage1.Picture   := nil;
  if fEtiqCx.ComboBox1.ItemIndex = 0 then
    RLBarcode1.Caption := fEtiqCx.mEtiquetaCodBarra.AsString
  else
  begin
    RLBarcode1.CheckSum := True;
    RLBarcode1.Caption := copy(fEtiqCx.mEtiquetaCodBarra.AsString,1,12);
  end;
  RLImage1.Picture.LoadFromFile(fEtiqCx.mEtiquetaEndFoto.AsString);
  rlCodBarra.Caption := fEtiqCx.mEtiquetaCodBarra.AsString
end;

procedure TfRelEtiqCx2.FormCreate(Sender: TObject);
begin
  if fEtiqCx.ComboBox1.ItemIndex = 0 then
    RLBarcode1.CheckSum := False
  else
    RLBarcode1.CheckSum := True;
end;

procedure TfRelEtiqCx2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBarcode4.Caption := fEtiqCx.mEtiquetaCodBarra.AsString;

  RLLabel6.Caption       := fEtiqCx.mEtiquetaMaterial1.AsString;
  RLLabel7.Caption       := fEtiqCx.mEtiquetaMaterial2.AsString;
  RLLabel1.Caption := fEtiqCx.mEtiquetaReferencia.AsString;
  RLLabel4.Caption       := fEtiqCx.mEtiquetaNome.AsString;

  RLImage2.Picture   := nil;
  RLImage2.Picture.LoadFromFile(fEtiqCx.mEtiquetaEndFoto.AsString);
  RLLabel5.Caption := fEtiqCx.mEtiquetaCodBarra.AsString
end;

end.
