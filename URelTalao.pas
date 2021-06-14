unit URelTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, RLReport, Db, DBTables, Variants, RLBarcode,
  Barcode;

type
  TfRelTalao = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLBarcode1: TRLBarcode;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel13: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText9: TRLDBText;
    RLDraw5: TRLDraw;
    RLDBText10: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel16: TRLLabel;
    RLBand4: TRLBand;
    RLDBText13: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw8: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDraw9: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    Barcode1: TBarcode;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    vPesoLiq : Real;
    vExisteCombinacao : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelTalao: TfRelTalao;

implementation

uses UDM1, UConsLote;

{$R *.DFM}

procedure TfRelTalao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalao.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Posicao : Integer;
  vCodBarra : String;
begin
  PrintIt := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;

  if PrintIt then
    begin
      if DM1.tFilial2.Locate('Codigo',fConsLote.qTalaoFilial.AsInteger,[loCaseInsensitive]) then
        RLLabel1.Caption := DM1.tFilial2Empresa.AsString;

      RLLabel7.Caption   := FormatFloat('000000',fConsLote.qTalaoTalao.AsInteger);
      RLBarcode1.Caption := '2' + FormatFloat('00000000000',fConsLote.qTalaoTalao.AsInteger);
      RLBarcode1.Refresh;

      if DM1.tTalao.Locate('Talao',fConsLote.qTalaoTalao.AsInteger,[loCaseInsensitive]) then
        begin
          DM1.tTalao.Edit;
          DM1.tTalaoDtImpressao.AsDateTime := Date;
          DM1.tTalaoHrImpressao.AsDateTime := Now;
          DM1.tTalao.Post;
        end;
      vExisteCombinacao := True;
      if not DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([fConsLote.qTalaoCodCombinacao.AsInteger,fConsLote.qTalaoCodCombinacao.AsInteger]),[locaseinsensitive]) then
        vExisteCombinacao := False;
    end;
end;

procedure TfRelTalao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;  
begin
  PrintIt := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if PrintIt then
    PrintIt := fConsLote.qTalaoImpMatTalao.AsBoolean;
  if PrintIt then
    PrintIt := vExisteCombinacao;
  if PrintIt then
    begin
      RLLabel17.Caption := DM1.tProdutoMatlkNomeMaterial.AsString;
      if DM1.tProdutoMatCodCombinacao.AsInteger > 0 then
        RLLabel17.Caption := RLLabel17.Caption + ' - ' + DM1.tProdutoMatlkNomeCor.AsString;
      vAux := DM1.tProdutoMatQtd.AsFloat * fConsLote.qTalaoQtdRestante.AsFloat;
      RLLabel18.Caption := FormatFloat('0.00000',vAux);
    end;
end;

procedure TfRelTalao.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TfRelTalao.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TfRelTalao.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if PrintIt then
    PrintIt := fConsLote.qTalaoImpMatTalao.AsBoolean;
  if PrintIt then
    PrintIt := vExisteCombinacao;
end;

end.

