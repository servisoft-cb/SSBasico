unit URelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls;

type
  TfRelClientes = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape6: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape7: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape8: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel38: TQRLabel;
    QRShape9: TQRShape;
    QRDBRichText1: TQRDBRichText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelClientes: TfRelClientes;

implementation

uses UDM1, UPrevRelClientes;

{$R *.DFM}

procedure TfRelClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelClientes.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Case fPrevRelClientes.RadioGroup1.ItemIndex of
    0 :  begin
           QRLabel9.Enabled  := False;
           QRLabel10.Enabled := False;
         end;
    1 :  begin
           QRLabel9.Enabled  := False;
           QRLabel10.Enabled := False;
         end;
    2 :  begin
           if fPrevRelClientes.RxDBLookupCombo1.Text <> '' then
             begin
               QRLabel9.Enabled  := True;
               QRLabel10.Enabled := True;
               QrLabel10.Caption := fPrevRelClientes.RxDBLookupCombo1.Text;
             end;
         end;
  end;
end;

end.
