unit URelPrevComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, DBTables, Variants;

type
  TfRelPrevComissao = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLLabel25: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel30: TRLLabel;
    RLLabel12: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand5: TRLBand;
    RLLabel16: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    vTotal, vBase : Real;
    vTotalVend, vBaseVend : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPrevComissao: TfRelPrevComissao;

implementation

uses UPrevPrevComissao, UDM1;

{$R *.DFM}

procedure TfRelPrevComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fPrevPrevComissao.qPrevisao.Filtered := False;
  Action := Cafree;
end;

procedure TfRelPrevComissao.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel5.Caption := fPrevPrevComissao.DateEdit1.Text + ' á ' + fPrevPrevComissao.DateEdit2.Text;
  //RLLabel2.Caption := fPrevPrevComissao.RxDBLookupCombo1.Text;
end;

procedure TfRelPrevComissao.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vTotal     := 0;
  vBase      := 0;
  vTotalVend := 0;
  vBaseVend  := 0;
end;

procedure TfRelPrevComissao.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel30.Caption := FormatFloat('###,###,##0.00',vTotal);
  RLLabel12.Caption := FormatFloat('###,###,##0.00',vBase);
  vTotal := 0;
  vBase  := 0;
end;

procedure TfRelPrevComissao.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
  vVlrBase : Real;
  vPercentual, vPercentual2 : Real;
begin
  vAux     := 0;
  vVlrBase := 0;
  if fPrevPrevComissao.qPrevisaoPercComissao.AsFloat > 0 then
    begin
      DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumNota';
      DM1.tNotaFiscal.SetKey;
      DM1.tNotaFiscalFilial.AsInteger  := fPrevPrevComissao.qPrevisaoFilial.AsInteger;
      DM1.tNotaFiscalNumNota.AsInteger := fPrevPrevComissao.qPrevisaoNumNota.AsInteger;
      vVlrBase                         := fPrevPrevComissao.qPrevisaoRestParcela.AsFloat;
      if DM1.tNotaFiscal.GotoKey then
        begin
          if DM1.tNotaFiscalVlrIpi.AsFloat > 0 then
            begin
              DM1.tCReceber.Locate('Filial;NumCReceber',VarArrayOf([fPrevPrevComissao.qPrevisaoFilial.AsInteger,fPrevPrevComissao.qPrevisaoNumCReceber.AsInteger]),[locaseinsensitive]);
              if DM1.tCReceberParc.RecordCount = 1 then
                begin
                  vPercentual  := StrToFloat(FormatFloat('0.0000',(vVlrBase / fPrevPrevComissao.qPrevisaoVlrParcCReceber.AsFloat) * 100));
                  vAux         := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalVlrIpi.AsFloat * vPercentual) / 100));
                  vVlrBase     := vVlrBase - vAux;
                end
              else
                begin
                  vPercentual  := StrToFloat(FormatFloat('0.0000',(vVlrBase / fPrevPrevComissao.qPrevisaoVlrParcCReceber.AsFloat) * 100));
                  vPercentual2 := StrToFloat(FormatFloat('0.0000',(fPrevPrevComissao.qPrevisaoVlrParcCReceber.AsFloat / DM1.tCReceberVlrTotal.AsFloat) * 100));
                  vAux         := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalVlrIpi.AsFloat * vPercentual2) / 100));
                  vAux         := StrToFloat(FormatFloat('0.00',(vAux * vPercentual) / 100));
                  vVlrBase     := vVlrBase - vAux;
                end;
            end;
        end;
    end;
  vAux := StrToFloat(FormatFloat('0.00',(vVlrBase * fPrevPrevComissao.qPrevisaoPercComissao.AsFloat) / 100));
  RLLabel11.Caption := FormatFloat('0.00',vAux);
  RLLabel15.Caption := FormatFloat('0.00',vVlrBase);
  vTotal := vTotal + vAux;
  vbase := vBase + vVlrBase;
  vTotalVend := vTotalVend + vAux;
  vBaseVend  := vBaseVend + vVlrBase;
end;

procedure TfRelPrevComissao.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fPrevPrevComissao.qPrevisao.Filtered := False;
  fPrevPrevComissao.qPrevisao.Filter   := 'CodVendedor = '''+IntToStr(fPrevPrevComissao.qVendedorCodVendedor.AsInteger)+'''';
  fPrevPrevComissao.qPrevisao.Filtered := True;


end;

procedure TfRelPrevComissao.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel19.Caption := FormatFloat('###,###,##0.00',vTotalVend);
  RLLabel20.Caption := FormatFloat('###,###,##0.00',vBaseVend);
  vTotalVend := 0;
  vBaseVend  := 0;
end;

end.
