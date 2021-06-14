unit URelPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, Qrctrls, DB, DBTables;

type
  TfRelPedido = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel37: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel38: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel39: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel19: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText33: TQRDBText;
    ChildBand1: TQRChildBand;
    Tam1: TQRLabel;
    Tam2: TQRLabel;
    Tam3: TQRLabel;
    Tam4: TQRLabel;
    Tam5: TQRLabel;
    Tam6: TQRLabel;
    Tam7: TQRLabel;
    Tam8: TQRLabel;
    Tam9: TQRLabel;
    Tam10: TQRLabel;
    Tam11: TQRLabel;
    Tam12: TQRLabel;
    Tam13: TQRLabel;
    Par1: TQRLabel;
    Par2: TQRLabel;
    Par3: TQRLabel;
    Par4: TQRLabel;
    Par5: TQRLabel;
    Par6: TQRLabel;
    Par7: TQRLabel;
    Par8: TQRLabel;
    Par9: TQRLabel;
    Par10: TQRLabel;
    Par11: TQRLabel;
    Par12: TQRLabel;
    Par13: TQRLabel;
    Par14: TQRLabel;
    Tam14: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape8: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText34: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedido: TfRelPedido;

implementation

uses UDM1, UPedido;

{$R *.DFM}

procedure TfRelPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Enabled := (fPedido.RadioGroup2.ItemIndex = 0);
  QRLabel17.Enabled := (fPedido.RadioGroup2.ItemIndex = 0);

  QRLabel19.Enabled  := (fPedido.ckDtEntrega.Checked);
  QRLabel48.Enabled  := (fPedido.ckDtEntrega.Checked);
  QRLabel1.Enabled   := (fPedido.ckDtEntrega.Checked);
  QRDBText27.Enabled :=(fPedido.ckDtEntrega.Checked);
  QRDBText29.Enabled :=(fPedido.ckDtEntrega.Checked);
  QRDBText30.Enabled :=(fPedido.ckDtEntrega.Checked);

  QRLabel34.Enabled  := (fPedido.ckVendedor.Checked);
  QRDBText8.Enabled  := (fPedido.ckVendedor.Checked);

  case DM1.tPedidoSituacao.AsInteger of
   1: QRLabel41.Caption := 'Normal';
   2: QRLabel41.Caption := 'C 200';
   3: QRLabel41.Caption := 'C 400';
  end;

  QRLabel5.Caption := '';
  if DM1.tCliente.Locate('Codigo',DM1.tPedidoCodCliente.AsInteger,[loCaseInsensitive]) then
    QRLabel5.Caption := DM1.tClientelkCidade.AsString;


end;

procedure TfRelPedido.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vDesc : String;
begin
  vDesc := ' ';
  DM1.tPedidoDesconto.First;
  while not DM1.tPedidoDesconto.EOF do
    begin
      if vDesc = ' ' then
        begin
          vDesc := vDesc + DM1.tPedidoDescontoPercDesconto.AsString;
          DM1.tPedidoDesconto.Next;
        end
      else
        begin
          vDesc := vDesc + '+' + DM1.tPedidoDescontoPercDesconto.AsString;
          DM1.tPedidoDesconto.Next;
        end;
    end;
  QRLabel50.Caption := vDesc;
  if fPedido.RadioGroup2.ItemIndex = 0 then
    begin
      QRLabel46.Enabled := True;
      QRLabel47.Enabled := True;
      QRLabel49.Enabled := True;
      QRLabel50.Enabled := True;
      QRLabel38.Enabled := True;
      QRDBText20.Enabled := True;
      QRDBText25.Enabled := True;
      QRDBText26.Enabled := True;
    end
  else
    begin
      QRLabel46.Enabled := False;
      QRLabel47.Enabled := False;
      QRLabel49.Enabled := False;
      QRLabel50.Enabled := False;
      QRLabel38.Enabled := False;
      QRDBText20.Enabled := False;
      QRDBText25.Enabled := False;
      QRDBText26.Enabled := False;
    end;
end;

procedure TfRelPedido.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  posicao : integer;
  vQtdAux : Real;
begin
  if DM1.tPedidoGrade.RecordCount > 0 then
    begin
      PrintBand := True;
      for posicao := 1 to 14 do
        begin
          TQRLabel(FindComponent('Tam'+IntToStr(Posicao))).Enabled := False;
          TQRLabel(FindComponent('Par'+IntToStr(Posicao))).Enabled := False;
        end;
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
      DM1.tPedidoGrade.First;
      Posicao := 0;
      while not DM1.tPedidoGrade.EOF do
        begin
          vQtdAux := 0;
          if (fPedido.RadioGroup3.ItemIndex = 1) and (DM1.tPedidoGradeQtdParesRest.AsFloat > 0) then
            vQtdAux := DM1.tPedidoGradeQtdParesRest.AsFloat
          else
          if (fPedido.RadioGroup3.ItemIndex = 0) then
            vQtdAux := DM1.tPedidoGradeQtd.AsFloat;
          if vQtdAux > 0 then
            begin
              Inc(Posicao);
              if Posicao > 14 then
                begin
                  ShowMessage('Imprime no máximo 14 tamanhos por item, favor verificar!');
                  DM1.tPedidoGrade.Last;
                end
              else
                begin
                  TQRLabel(FindComponent('Tam' + IntToStr(Posicao))).Enabled  := True;
                  TQRLabel(FindComponent('Tam' + IntToStr(Posicao))).Caption  := DM1.tPedidoGradelkTamanho.AsString;
                  TQRLabel(FindComponent('Par' + IntToStr(Posicao))).Enabled  := True;
                  TQRLabel(FindComponent('Par' + IntToStr(Posicao))).Caption  := FloatToStr(vQtdAux);
                end;
            end;
          DM1.tPedidoGrade.Next;
        end;
    end
  else
    PrintBand := False;
end;

procedure TfRelPedido.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPedido.RadioGroup2.ItemIndex = 0 then
    begin
      QRDBText23.Enabled := True;
      QRDBText24.Enabled := True;
    end
  else
    begin
      QRDBText23.Enabled := False;
      QRDBText24.Enabled := False;
    end;
  if DM1.tPedidoGrade.RecordCount > 0 then
    QRShape9.Enabled := False
  else
    QRShape9.Enabled := True;
  QRLabel14.Caption := DM1.tPedidoItemlkReferencia.AsString;
  if DM1.tPedidoItemLargura.AsString <> '' then
    QRLabel14.Caption := QRLabel14.Caption + '-' + DM1.tPedidoItemLargura.AsString;
end;

procedure TfRelPedido.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  case fPedido.RadioGroup3.ItemIndex of
    0 : QRDBText22.DataField := 'QtdPares';
    1 : QRDBText22.DataField := 'QtdParesRest';
  end;
end;

end.
