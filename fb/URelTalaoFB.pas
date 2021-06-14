unit URelTalaoFB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, RLReport, Db, DBTables, Variants, RLBarcode,
  Barcode;

type
  TfRelTalaoFB = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLBarcode1: TRLBarcode;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText12: TRLDBText;
    RLDraw9: TRLDraw;
    Barcode1: TBarcode;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw7: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel22: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText4: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel16: TRLLabel;
    RLBand4: TRLBand;
    RLDBText13: TRLDBText;
    rlNomeMaterial: TRLLabel;
    rlConsumo: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand2: TRLBand;
    RLDraw87: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLDraw70: TRLDraw;
    RLDraw71: TRLDraw;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLDraw75: TRLDraw;
    RLDraw76: TRLDraw;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLDraw79: TRLDraw;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLDraw82: TRLDraw;
    RLDraw83: TRLDraw;
    RLDraw84: TRLDraw;
    RLDraw85: TRLDraw;
    RLDraw86: TRLDraw;
    RLLabel21: TRLLabel;
    RLMemo1: TRLMemo;
    RLDraw88: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    vPesoLiq : Real;
    vExisteCombinacao : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelTalaoFB: TfRelTalaoFB;

implementation

uses UDM1, UConsLote, UConsLoteFB;

{$R *.DFM}

procedure TfRelTalaoFB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalaoFB.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Posicao : Integer;
  vCodBarra : String;
begin
  PrintIt := fConsLoteFB.SMDBGrid1.SelectedRows.CurrentRowSelected;

  if not PrintIt then
    exit;

  if DM1.tFilial2.Locate('Codigo',fConsLoteFB.cdsTalaoFILIAL.AsInteger,[loCaseInsensitive]) then
    RLLabel1.Caption := DM1.tFilial2Empresa.AsString;

  RLLabel7.Caption   := FormatFloat('000000',fConsLoteFB.cdsTalaoTALAO.AsInteger);
  RLBarcode1.Caption := '2' + FormatFloat('00000000000',fConsLoteFB.cdsTalaoTALAO.AsInteger);

  fConsLoteFB.cdsTalao.Edit;
  fConsLoteFB.cdsTalaoDTIMPRESSAO.AsDateTime := Date;
  fConsLoteFB.cdsTalaoHRIMPRESSAO.AsDateTime := Now;
  fConsLoteFB.cdsTalao.Post;

  vExisteCombinacao := True;
  if not DM1.tProduto.Locate('Codigo',fConsLoteFB.cdsTalaoCODPRODUTO.AsInteger,[loCaseInsensitive]) then
    vExisteCombinacao := False
  else
  if not DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([fConsLoteFb.cdsTalaoCODCOR.AsInteger,fConsLoteFB.cdsTalaoCODCOMBINACAO.AsInteger]),[locaseinsensitive]) then
    vExisteCombinacao := False;
end;

procedure TfRelTalaoFB.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  PrintIt := fConsLoteFB.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if not PrintIt then
    exit;
  RLMemo1.Lines.Text := fConsLoteFB.cdsTalaoOBS.AsString;
end;

procedure TfRelTalaoFB.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((fConsLoteFB.SMDBGrid1.SelectedRows.CurrentRowSelected) and (vExisteCombinacao));
  if not PrintIt then
    exit;
end;

procedure TfRelTalaoFB.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((fConsLoteFB.SMDBGrid1.SelectedRows.CurrentRowSelected) and (vExisteCombinacao) and
              (DM1.tProdutoMatTipo.AsString = 'MAT'));
  if not PrintIt then
    exit;
  rlNomeMaterial.Caption := DM1.tProdutoMatlkNomeMaterial.AsString;
  if DM1.tProdutoMatCodCor.AsInteger > 0 then
    rlNomeMaterial.Caption := rlNomeMaterial.Caption + ' ' + DM1.tProdutoMatlkNomeCor.AsString;
  rlConsumo.Caption := FormatFloat('0.00000',DM1.tProdutoMatQtd.AsFloat);
end;

end.

