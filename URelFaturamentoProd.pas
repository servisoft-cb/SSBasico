unit URelFaturamentoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelFaturamentoProd = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw1: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel10: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand5: TRLBand;
    RLLabel16: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDraw4: TRLDraw;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDraw2: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelFaturamentoProd: TfRelFaturamentoProd;

implementation

uses UConsFaturamento, ToolEdit;

{$R *.dfm}

procedure TfRelFaturamentoProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFaturamentoProd.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 RLLabel1.Caption := 'RELATÓRIO FATURAMENTO (Produto) - ' + fConsFaturamento.DateEdit1.Text + ' a '+ fConsFaturamento.DateEdit2.Text;
 RLLabel9.Caption := '';
 if fConsFaturamento.RxDBLookupCombo1.Text <> '' then
   RLLabel9.Caption := RLLabel9.Caption + ' (Filial: ' + fConsFaturamento.RxDBLookupCombo1.Text + ')';
 if fConsFaturamento.CheckBox4.Checked then
   RLLabel9.Caption := RLLabel9.Caption + ' (Materia Prima)';
end;

procedure TfRelFaturamentoProd.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel16.Caption := 'Total ' + RLLabel10.Caption + ' ==>';
end;

procedure TfRelFaturamentoProd.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fConsFaturamento.mDetalhadoTipoDoc.AsString = 'NF' then
    RLLabel10.Caption := 'N O T A   F I S C A L'
  else
  if fConsFaturamento.mDetalhadoTipoDoc.AsString = 'CF' then
    RLLabel10.Caption := 'C U P O M   F I S C A L'
  else
  if fConsFaturamento.mDetalhadoTipoDoc.AsString = 'VL' then
    RLLabel10.Caption := 'V A L E';
end;

end.
