unit URelMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls;

type
  TfRelMaterial = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMaterial: TfRelMaterial;

implementation

uses UDM1, UPrevMaterial;

{$R *.DFM}

procedure TfRelMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMaterial.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Case fPrevMaterial.RadioGroup2.ItemIndex of
    0 : QRLabel1.Caption := 'Relação dos Materiais';
    1 : QRLabel1.Caption := 'Relação dos Produtos';
    2 : QRLabel1.Caption := 'Relação de Outros';
    3 : QRLabel1.Caption := 'Relação Produtos/Materiais';
  end;
  if fPrevMaterial.CheckBox2.Checked then
    QRLabel11.Caption := 'Fornecedor: ' + fPrevMaterial.RxDBLookupCombo7.Text
  else
    QRLabel11.Caption := '';
  case fPrevMaterial.RadioGroup4.ItemIndex of
    0 : QRLabel11.Caption := QRLabel11.Caption + ' (Material da Empresa)';
    1 : QRLabel11.Caption := QRLabel11.Caption + ' (Material de Terceiros)';
  end;
end;

end.
