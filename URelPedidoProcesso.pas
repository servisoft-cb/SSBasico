unit URelPedidoProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelPedidoProcesso = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw25: TRLDraw;
    RLDBText13: TRLDBText;
    RLBand4: TRLBand;
    RLLabel17: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDraw26: TRLDraw;
    RLLabel18: TRLLabel;
    RLDraw27: TRLDraw;
    RLDBText14: TRLDBText;
    RLDraw28: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw29: TRLDraw;
    RLDBText15: TRLDBText;
    RLDBResult3: TRLDBResult;
    RLDraw30: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw31: TRLDraw;
    RLDBText16: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vVlrPendente : Real;
  public
    { Public declarations }
  end;

var
  fRelPedidoProcesso: TfRelPedidoProcesso;

implementation

uses UConsPedido2, ToolEdit, DB;

{$R *.dfm}

procedure TfRelPedidoProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedidoProcesso.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'RELAÇÃO DE PEDIDOS';
  if (fConsPedido2.DateEdit1.date > 0) and (fConsPedido2.DateEdit2.date > 0) then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + fConsPedido2.DateEdit1.Text + ' a ' + fConsPedido2.DateEdit2.Text
  else
  if fConsPedido2.DateEdit1.date > 0 then
    RLLabel1.Caption := RLLabel1.Caption + ' - Apartir  de ' + fConsPedido2.DateEdit1.Text
  else
  if fConsPedido2.DateEdit2.date > 0 then
    RLLabel1.Caption := RLLabel1.Caption + ' - Até ' + fConsPedido2.DateEdit2.Text;
  RLLabel3.Caption := '';
  if fConsPedido2.RxDBLookupCombo2.Text <> '' then
    RLLabel3.Caption := RLLabel3.Caption + ' (Filial: ' + fConsPedido2.RxDBLookupCombo2.Text + ')'
  else
    RLLabel3.Caption := RLLabel3.Caption + ' (Filial: Todas)';
  case fConsPedido2.ComboBox1.ItemIndex of
    0 : RLLabel3.Caption := RLLabel3.Caption + ' (Situação: Pendente)';
    1 : RLLabel3.Caption := RLLabel3.Caption + ' (Situação: Faturado)';
    2 : RLLabel3.Caption := RLLabel3.Caption + ' (Situação: Todas)';
  end;
end;

procedure TfRelPedidoProcesso.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBResult2.Visible := fConsPedido2.CheckBox1.Checked;
  RLLabel25.Visible   := fConsPedido2.CheckBox1.Checked;
  RLLabel25.Caption   := FormatFloat('###,###,##0.00',vVlrPendente);
  vVlrPendente        := 0;
end;

procedure TfRelPedidoProcesso.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText9.Visible  := fConsPedido2.CheckBox1.Checked;
  RLDBText16.Visible := fConsPedido2.CheckBox1.Checked;
  vVlrPendente       := vVlrPendente + StrToFloat(FormatFloat('0.00',fConsPedido2.mPedidoQtdRestante.AsFloat * fConsPedido2.mPedidoPreco.AsFloat));
  if fConsPedido2.CheckBox2.Checked then
    RLLabel26.Caption := fConsPedido2.mPedidoCodCliente.AsString + '-' + fConsPedido2.mPedidoFantasia.AsString
  else
    RLLabel26.Caption := fConsPedido2.mPedidoCodCliente.AsString;
  RLDBText5.Visible := fConsPedido2.CheckBox3.Checked;
end;

procedure TfRelPedidoProcesso.FormCreate(Sender: TObject);
begin
  vVlrPendente := 0;
  {if fConsPedido2.CheckBox2.Checked then
    RLDBText2.DataField := 'Fantasia'
  else
    RLDBText2.DataField := 'CodCliente';}
end;

end.
