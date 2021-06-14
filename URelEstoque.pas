unit URelEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelEstoque = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape5: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape6: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QuickRep3: TQuickRep;
    PageHeaderBand3: TQRBand;
    DetailBand3: TQRBand;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel24: TQRLabel;
    QRShape7: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape8: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape9: TQRShape;
    QRLabel31: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText27: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRExpr1: TQRExpr;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEstoque: TfRelEstoque;

implementation

uses UConsEstoqueMat, UDM1;

{$R *.DFM}

procedure TfRelEstoque.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  case fConsEstoqueMat.RadioGroup2.ItemIndex of
    0 : QRLabel1.Caption := 'Relatório do Estoque - Com Saldo';
    1 : QRLabel1.Caption := 'Relatório do Estoque - Sem Saldo/Negativo';
    2 : QRLabel1.Caption := 'Relatório do Estoque - Todos';
  end;
end;

procedure TfRelEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEstoque.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fConsEstoqueMat.mBalancoQtd.AsFloat > 0 then
    QRDBText13.Enabled := True
  else
    QRDBText13.Enabled := False;
  if fConsEstoqueMat.mBalancoEstMinimo.AsFloat > 0 then
    QRDBText14.Enabled := True
  else
    QRDBText14.Enabled := False;
  if fConsEstoqueMat.mBalancoEstMaximo.AsFloat > 0 then
    QRDBText16.Enabled := True
  else
    QRDBText16.Enabled := False;
end;

end.
