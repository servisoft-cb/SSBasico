unit URelPlano2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  TfRelPlano2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRLabel12: TQRLabel;
    QRShape3: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape4: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPlano2: TfRelPlano2;

implementation

uses UPrevPlanoContas2;

{$R *.DFM}

procedure TfRelPlano2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPlano2.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPrevPlanoContas2.mAuxPlanoSubItem.AsString = 'N' then
    begin
      QRLabel5.Caption := fPrevPlanoContas2.mAuxPlanoNome.AsString;
      QRLabel5.Font.Style  := [fsBold];
      QRDBText2.Font.Style := [fsBold];
      QRDBText3.Font.Style := [fsBold];
      QRDBText4.Font.Style := [fsBold];
      QRDBText5.Font.Style := [fsBold];
    end
  else
    begin
      QRLabel5.Caption := '        ' + fPrevPlanoContas2.mAuxPlanoNomePlanoItens.AsString;
      QRLabel5.Font.Style := [];
      QRDBText2.Font.Style := [];
      QRDBText3.Font.Style := [];
      QRDBText4.Font.Style := [];
      QRDBText5.Font.Style := [];
    end;
end;

procedure TfRelPlano2.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption := 'Relatório de Plano de Contas - ' + fPrevPlanoContas2.DateEdit1.Text +  ' a ' + fPrevPlanoContas2.DateEdit2.Text;  
end;

end.
