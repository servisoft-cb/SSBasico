unit URelDuplicata2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, ValorPor, DB;

type
  TfRelDuplicata2 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel19: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape17: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape18: TQRShape;
    QRLabel35: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    ValorPorExtenso1: TValorPorExtenso;
    QRDBText24: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText25: TQRDBText;
    QRShape19: TQRShape;
    QRDBText26: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape34: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText48: TQRDBText;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRShape37: TQRShape;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRDBText49: TQRDBText;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRDBText50: TQRDBText;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelDuplicata2: TfRelDuplicata2;

implementation

uses UDM1, UPrevDuplicatas2;

{$R *.DFM}

procedure TfRelDuplicata2.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ValorPorExtenso1.Valor := DM1.tCReceberParcVlrParcCReceber.AsFloat;
  QRLabel36.Caption := Copy(ValorPorExtenso1.texto,1,75);
  QRLabel37.Caption := Copy(ValorPorExtenso1.texto,76,151);
  QRLabel38.Caption := Copy(ValorPorExtenso1.texto,152,227);

  QRLabel75.Caption := Copy(ValorPorExtenso1.texto,1,75);
  QRLabel76.Caption := Copy(ValorPorExtenso1.texto,76,151);
  QRLabel77.Caption := Copy(ValorPorExtenso1.texto,152,227);

  QRLabel39.Caption := '';
  QRLabel40.Caption := '';
  QRLabel69.Caption := '';
  QRLabel70.Caption := '';
  if DM1.tCliente.Locate('Codigo',DM1.tCReceberParcCodCli.AsInteger,[loCaseInsensitive]) then
    begin
      QRLabel39.Caption := DM1.tClientelkCidade.AsString;
      QRLabel40.Caption := DM1.tClientelkCidadeP.AsString;
      QRLabel69.Caption := DM1.tClientelkCidade.AsString;
      QRLabel70.Caption := DM1.tClientelkCidadeP.AsString;
    end;
end;

procedure TfRelDuplicata2.QuickRep1AfterPrint(Sender: TObject);
begin
  fPrevDuplicatas2.Grava_Historico('DUPLICATA EMITIDA');
end;

procedure TfRelDuplicata2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
