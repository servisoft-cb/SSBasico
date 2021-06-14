unit URelTalao2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Barcode, DB, DBTables, RLReport, Variants;

type
  TfRelTalao2 = class(TForm)
    QuickRep1: TQuickRep;
    v: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QST1: TQRShape;
    QTam1: TQRLabel;
    QSQ1: TQRShape;
    QQtd1: TQRLabel;
    QST2: TQRShape;
    QTam2: TQRLabel;
    QSQ2: TQRShape;
    QQtd2: TQRLabel;
    QST3: TQRShape;
    QSQ3: TQRShape;
    QQtd3: TQRLabel;
    QTam3: TQRLabel;
    QST4: TQRShape;
    QTam4: TQRLabel;
    QSQ4: TQRShape;
    QQtd4: TQRLabel;
    QST5: TQRShape;
    QTam5: TQRLabel;
    QSQ5: TQRShape;
    QQtd5: TQRLabel;
    QST6: TQRShape;
    QTam6: TQRLabel;
    QSQ6: TQRShape;
    QQtd6: TQRLabel;
    QTam7: TQRLabel;
    QST7: TQRShape;
    QSQ7: TQRShape;
    QQtd7: TQRLabel;
    QST8: TQRShape;
    QTam8: TQRLabel;
    QSQ8: TQRShape;
    QQtd8: TQRLabel;
    QST9: TQRShape;
    QTam9: TQRLabel;
    QSQ9: TQRShape;
    QQtd9: TQRLabel;
    QST10: TQRShape;
    QTam10: TQRLabel;
    QSQ10: TQRShape;
    QQtd10: TQRLabel;
    QST11: TQRShape;
    QTam11: TQRLabel;
    QSQ11: TQRShape;
    QQtd11: TQRLabel;
    QST12: TQRShape;
    QTam12: TQRLabel;
    QSQ12: TQRShape;
    QQtd12: TQRLabel;
    QST13: TQRShape;
    QTam13: TQRLabel;
    QSQ13: TQRShape;
    QQtd13: TQRLabel;
    QST14: TQRShape;
    QTam14: TQRLabel;
    QSQ14: TQRShape;
    QQtd14: TQRLabel;
    QST15: TQRShape;
    QTam15: TQRLabel;
    QSQ15: TQRShape;
    QQtd15: TQRLabel;
    QRDBText8: TQRDBText;
    QST16: TQRShape;
    QTam16: TQRLabel;
    QSQ16: TQRShape;
    QQtd16: TQRLabel;
    QST17: TQRShape;
    QTam17: TQRLabel;
    QSQ17: TQRShape;
    QQtd17: TQRLabel;
    QST18: TQRShape;
    QTam18: TQRLabel;
    QSQ18: TQRShape;
    QQtd18: TQRLabel;
    QRLabel7: TQRLabel;
    QRImage1: TQRImage;
    Barcode1: TBarcode;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape5: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel22: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText2: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vContadorAux : Integer;
    vExisteCombinacao : Boolean;
  public
    { Public declarations }
  end;

var
  fRelTalao2: TfRelTalao2;

implementation

uses UDM1, UConsLote;

{$R *.DFM}

procedure TfRelTalao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelTalao2.vBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i: Integer;
  vCodBarra : String;
  Texto1, Texto2, vObsAux : String;
begin
  vContadorAux := 0;
  PrintBand := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if (not dm1.tUsuarioTalaoImprFaturado.AsBoolean) and (fConsLote.qTalaoQtdFaturada.AsFloat > 0) then
    PrintBand := False;
  if not PrintBand then
    Exit;
  QRLabel20.Enabled := (fConsLote.qTalaoTipo.AsString = 'A');

  QRLabel10.Enabled := fConsLote.qTalaoImpMatTalao.AsBoolean;
  QRLabel11.Enabled := fConsLote.qTalaoImpMatTalao.AsBoolean;
  QRLabel16.Enabled := fConsLote.qTalaoImpMatTalao.AsBoolean;
  QRLabel17.Enabled := fConsLote.qTalaoImpMatTalao.AsBoolean;

  QRLabel14.Caption := '';
  if DM1.tFilial2.Locate('Codigo',fConsLote.qTalaoFilial.AsInteger,[loCaseInsensitive]) then
    QRLabel14.Caption := DM1.tFilial2Empresa.AsString;

  QRImage1.Picture := nil;
  vCodBarra := '2' + FormatFloat('00000000000',fConsLote.qTalaoTalao.AsInteger);
  Barcode1.Text := vCodBarra;
  Barcode1.DrawBarcode(QRImage1.Canvas);
  QRlabel7.Caption := vCodBarra;

  for i := 1 to 18 do
    begin
      TQRLabel(FindComponent('QTam'+IntToStr(i))).Enabled := False;
      TQRLabel(FindComponent('QQtd'+IntToStr(i))).Enabled := False;
      TQRShape(FindComponent('QST'+IntToStr(i))).Enabled  := False;
      TQRShape(FindComponent('QSQ'+IntToStr(i))).Enabled  := False;
    end;
  i := 0;
  fConsLote.tTalaoGrade.First;
  while not fConsLote.tTalaoGrade.EOF do
    begin
      if fConsLote.tTalaoGradeQuantidade.AsFloat > 0 then
        begin
          Inc(i);
          TQRLabel(FindComponent('QTam' + IntToStr(i))).Enabled := True;
          TQRLabel(FindComponent('QTam' + IntToStr(i))).Caption := fConsLote.tTalaoGradeTamanho.AsString;
          TQRLabel(FindComponent('QQtd' + IntToStr(i))).Enabled := True;
          TQRLabel(FindComponent('QQtd' + IntToStr(i))).Caption := fConsLote.tTalaoGradeQuantidade.AsString;
          TQRShape(FindComponent('QST'+IntToStr(i))).Enabled    := True;
          TQRShape(FindComponent('QSQ'+IntToStr(i))).Enabled    := True;
        end;
      fConsLote.tTalaoGrade.Next;
    end;

  if i > 0 then
    begin
      Inc(i);
      QRLabel12.Caption := '';
      QRLabel13.Caption := '';
      if i < 19 then
        begin
          TQRLabel(FindComponent('QTam' + IntToStr(i))).Enabled := True;
          TQRLabel(FindComponent('QTam' + IntToStr(i))).Caption := 'Total';
          TQRLabel(FindComponent('QQtd' + IntToStr(i))).Enabled := True;
          TQRLabel(FindComponent('QQtd' + IntToStr(i))).Caption := fConsLote.qTalaoQuantidade.AsString;
          TQRShape(FindComponent('QST'+IntToStr(i))).Enabled    := True;
          TQRShape(FindComponent('QSQ'+IntToStr(i))).Enabled    := True;
        end;
    end;
  if (i < 1) or (i > 18) then
    begin
      QRLabel12.Caption := 'Qtd.Total';
      QRLabel13.Caption := fConsLote.qTalaoQuantidade.AsString;
    end;

  if DM1.tTalao.Locate('Talao',fConsLote.qTalaoTalao.AsInteger,[loCaseInsensitive]) then
    begin
      DM1.tTalao.Edit;
      DM1.tTalaoDtImpressao.AsDateTime := Date;
      DM1.tTalaoHrImpressao.AsDateTime := Now;
      DM1.tTalao.Post;
    end;

  texto1 := fConsLote.qTalaolkObsTalao.AsString + '  ' + fConsLote.qTalaoComplemento.AsString;
  vObsAux := '';
  i  := 0;
  while i < 700 do
    begin
      inc(i);
      Texto2 := Copy(texto1,i,1);
      if (Texto2 = #$A) or (Texto2 = #0) or (Texto2 = #2) or (Texto2 = #$) then
        Texto2 := '';
      if (Texto2 = #$D) or (Texto2 = #$A) then
        Texto2 := ' ';
      vObsAux := vObsAux + texto2;
    end;

  QrMemo1.Lines.Clear;
  QrMemo1.Lines.Text := vObsAux;

  vExisteCombinacao := True;
  if not DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([fConsLote.qTalaoCodCor.AsInteger,fConsLote.qTalaoCodCombinacao.AsInteger]),[locaseinsensitive]) then
    vExisteCombinacao := False;

  QRLabel23.Caption := '';
  if fConsLote.CheckBox2.Checked then
    QRLabel23.Caption := fConsLote.qTalaoFantasia.AsString;
end;

procedure TfRelTalao2.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  vAux : Real;
begin
  PrintBand := fConsLote.SMDBGrid1.SelectedRows.CurrentRowSelected;
  if PrintBand then
    PrintBand := fConsLote.qTalaoImpMatTalao.AsBoolean;
  if PrintBand then
    PrintBand := (DM1.tProdutoMatImpTalao.AsString = 'S');
  if PrintBand then
    PrintBand := (DM1.tProdutoMatImpTalao.AsString = 'S');
  if PrintBand then
    PrintBand := vExisteCombinacao;
  if PrintBand then
    begin
      inc(vContadorAux);
      if vContadorAux > 5 then
        PrintBand := False;
    end;
    
  if not PrintBand then
    Exit;

  QRLabel18.Caption := DM1.tProdutoMatlkNomeMaterial.AsString;
  if DM1.tProdutoMatCodCor.AsInteger > 0 then
    QRLabel18.Caption := QRLabel18.Caption + ' - ' + DM1.tProdutoMatlkNomeCor.AsString;
  vAux := DM1.tProdutoMatQtd.AsFloat * fConsLote.qTalaoQtdRestante.AsFloat;
  QRLabel19.Caption := FormatFloat('0.00000',vAux);
end;

end.
