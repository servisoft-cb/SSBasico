unit URelHistProdutosAcum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelHistProdutosAcum = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel11: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelHistProdutosAcum: TfRelHistProdutosAcum;

implementation

uses UHistProduto;

{$R *.dfm}

procedure TfRelHistProdutosAcum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelHistProdutosAcum.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fHistProduto.Monta_SQLFatProd;
  fHistProduto.Calcula_FatProduto;
  RLLabel14.Caption := FormatFloat('0.0000',(fHistProduto.vVlrFatProduto / fHistProduto.vVlrFatGeral) * 100);
  fHistProduto.qFatProduto.Close;
end;

procedure TfRelHistProdutosAcum.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel4.Caption  := 'Opçoes: ';
  RLLabel15.Caption := 'Opções: ';
  if fHistProduto.RxDBLookupCombo2.Text <> '' then
    RLLabel4.Caption := RLLabel4.Caption + 'Filial : ' + fHistProduto.RxDBLookupCombo2.Text + '   ';
  if fHistProduto.RxDBLookupCombo1.Text <> '' then
    RLLabel4.Caption := RLLabel4.Caption + 'Cliente : ' + fHistProduto.RxDBLookupCombo1.Text + '   ';
  if fHistProduto.RxDBLookupCombo4.Text <> '' then
    RLLabel15.Caption := RLLabel15.Caption + 'Vendedor : ' + fHistProduto.RxDBLookupCombo4.Text + '   ';
  if fHistProduto.DateEdit1.Date > 0 then
    RLLabel15.Caption := RLLabel15.Caption + 'Dt.Inicial: ' + fHistProduto.DateEdit1.Text + '   ';
  if fHistProduto.DateEdit2.Date > 0 then
    RLLabel15.Caption := RLLabel15.Caption + 'Dt.Final: ' + fHistProduto.DateEdit2.Text + '   ';
  case fHistProduto.ComboBox1.ItemIndex of
    0 : RLLabel15.Caption := RLLabel15.Caption + '(Pendente) ';
    1 : RLLabel15.Caption := RLLabel15.Caption + '(Faturado) ';
  end;
end;

end.
