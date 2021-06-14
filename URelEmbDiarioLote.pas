unit URelEmbDiarioLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, RLReport;

type
  TfRelEmbDiarioLote = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vData : TDate;
    vTotDia, vTotEmb, vTotSaldo, vQtdAtrasada : Real;
  public
    { Public declarations }
  end;

var
  fRelEmbDiarioLote: TfRelEmbDiarioLote;

implementation

uses UDM1, UPrevEmbDiarioLote;

{$R *.DFM}

procedure TfRelEmbDiarioLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelEmbDiarioLote.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  vData        := fPrevEmbDiarioLote.mEmbarqueData.AsDateTime;
  vTotDia      := vTotDia + fPrevEmbDiarioLote.mEmbarqueQtdDia.AsFloat;
  vTotEmb      := vTotEmb + fPrevEmbDiarioLote.mEmbarqueQtdFaturado.AsFloat;
  vTotSaldo    := vTotSaldo + fPrevEmbDiarioLote.mEmbarqueQtdRest.AsFloat;
  if fPrevEmbDiarioLote.mEmbarqueData.AsDateTime < Date then
    vQtdAtrasada := vQtdAtrasada + fPrevEmbDiarioLote.mEmbarqueQtdRest.AsFloat;
end;

procedure TfRelEmbDiarioLote.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vDia1, vDia2 : Integer;
begin
  if fPrevEmbDiarioLote.mEmbarque.RecordCount = fPrevEmbDiarioLote.mEmbarque.RecNo then
    begin
      PrintBand         := True;
      QRShape8.Enabled  := True;
      QRLabel11.Enabled := True;
      QRLabel12.Enabled := True;
      QRLabel12.Caption := FormatFloat('###,###,##0.##',vTotDia);
      QRLabel13.Enabled := True;
      QRLabel13.Caption := FormatFloat('###,###,##0.##',vTotEmb);
      QRLabel14.Enabled := True;
      QRLabel14.Caption := FormatFloat('###,###,##0.##',vTotSaldo);
      vTotDia           := 0;
      vTotEmb           := 0;
      vTotSaldo         := 0;
    end
  else
    begin
      fPrevEmbDiarioLote.mEmbarque.Next;
      if vData <> fPrevEmbDiarioLote.mEmbarqueData.AsDateTime then
        begin
          PrintBand := True;
          vDia1 := DayOfWeek(vData);
          vDia2 := DayOfWeek(fPrevEmbDiarioLote.mEmbarqueData.AsDateTime);
          if (vDia1 > vDia2) or (vDia1 = vDia2) or ((fPrevEmbDiarioLote.mEmbarqueData.AsDateTime - vData) > 6) then
            begin
              QRShape8.Enabled  := True;
              QRLabel11.Enabled := True;
              QRLabel12.Enabled := True;
              QRLabel12.Caption := FormatFloat('###,###,##0.##',vTotDia);
              QRLabel13.Enabled := True;
              QRLabel13.Caption := FormatFloat('###,###,##0.##',vTotEmb);
              QRLabel14.Enabled := True;
              QRLabel14.Caption := FormatFloat('###,###,##0.##',vTotSaldo);
              vTotDia           := 0;
              vTotEmb           := 0;
              vTotSaldo         := 0;
            end
          else
            begin
              QRShape8.Enabled  := False;
              QRLabel11.Enabled := False;
              QRLabel12.Enabled := False;
              QRLabel13.Enabled := False;
              QRLabel14.Enabled := False;
            end;
        end
      else
        PrintBand := False;
      fPrevEmbDiarioLote.mEmbarque.Prior;
    end;
end;

procedure TfRelEmbDiarioLote.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption := 'De  '+ fPrevEmbDiarioLote.DateEdit1.Text + '  até  ' + fPrevEmbDiarioLote.DateEdit2.Text;
if dm1.tFilialNomeInterno.AsString <> '' then
    begin
     QRLabel19.Caption :=  dm1.tFilialNomeInterno.AsString;
    end;
end;

procedure TfRelEmbDiarioLote.FormCreate(Sender: TObject);
begin
  vQtdAtrasada := 0;
end;

procedure TfRelEmbDiarioLote.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption := FormatFloat('###,###,##0.##',vQtdAtrasada);
  vQtdAtrasada      := 0;
end;

procedure TfRelEmbDiarioLote.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vData        := fPrevEmbDiarioLote.mEmbarqueData.AsDateTime;
  vTotDia      := vTotDia + fPrevEmbDiarioLote.mEmbarqueQtdDia.AsFloat;
  vTotEmb      := vTotEmb + fPrevEmbDiarioLote.mEmbarqueQtdFaturado.AsFloat;
  vTotSaldo    := vTotSaldo + fPrevEmbDiarioLote.mEmbarqueQtdRest.AsFloat;
  if fPrevEmbDiarioLote.mEmbarqueData.AsDateTime < Date then
    vQtdAtrasada := vQtdAtrasada + fPrevEmbDiarioLote.mEmbarqueQtdRest.AsFloat;
end;

procedure TfRelEmbDiarioLote.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vDia1, vDia2 : Integer;
begin
end;

end.
