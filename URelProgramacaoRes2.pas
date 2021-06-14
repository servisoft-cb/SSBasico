unit URelProgramacaoRes2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfRelProgramacaoRes2 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProgramacaoRes2: TfRelProgramacaoRes2;

implementation

uses UPrevProgramacao;

{$R *.dfm}

procedure TfRelProgramacaoRes2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
