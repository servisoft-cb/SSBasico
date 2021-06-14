unit URelEtiqCx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Barcode, Qrctrls, QuickRpt, ExtCtrls, RLReport;

type
  TfRelEtiqCx = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    qrReferencia: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRImage2: TQRImage;
    QRDBText2: TQRDBText;
    Barcode1: TBarcode;
    QRLabel4: TQRLabel;
    qrNome: TQRLabel;
    QRShape1: TQRShape;
    Barcode2: TBarcode;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEtiqCx: TfRelEtiqCx;

implementation

uses UDM1, UDM2, UEtiqCx, DB;

{$R *.DFM}

procedure TfRelEtiqCx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEtiqCx.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption     := fEtiqCx.mEtiquetaMaterial1.AsString;
  QRLabel4.Caption     := fEtiqCx.mEtiquetaMaterial2.AsString;
  qrReferencia.Caption := fEtiqCx.mEtiquetaReferencia.AsString;
  qrNome.Caption       := fEtiqCx.mEtiquetaNome.AsString;

  QRLabel7.Caption := fEtiqCx.mEtiquetaCodBarra.AsString;
  QRImage1.Picture := nil;
  QRImage2.Picture := nil;
  //QRImage1.Picture.LoadFromFile(fEtiqCx.mEtiquetaEndFoto.AsString);
  Barcode1.Text := QRLabel7.Caption;
  Barcode1.DrawBarcode(QRImage2.Canvas);
  Barcode2.DrawBarcode(QRImage1.Canvas);
end;

end.
