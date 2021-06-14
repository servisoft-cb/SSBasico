unit URelPedidosNaoFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, DBTables, Qrctrls, Variants;

type
  TfRelPedidosNaoFat = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QuickRep2: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape4: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText11: TQRDBText;
    QRShape5: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    SummaryBand2: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel28: TQRLabel;
    QRLabel8: TQRLabel;
    ChildBand1: TQRChildBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape9: TQRShape;
    QuickRep3: TQuickRep;
    PageHeaderBand3: TQRBand;
    DetailBand3: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText17: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedidosNaoFat: TfRelPedidosNaoFat;

implementation

uses UPrevPedidosNaoFat, UDM1;

{$R *.DFM}

procedure TfRelPedidosNaoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedidosNaoFat.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if fPrevPedidosNaoFat.DateEdit2.Text <> '  /  /    ' then
    QRLabel1.Caption := 'Previsão do Faturamento - ' + fPrevPedidosNaoFat.DateEdit1.Text + ' a ' +
                        fPrevPedidosNaoFat.DateEdit2.Text
  else
    QRLabel1.Caption := 'Previsão do Faturamento ATRAZADO - ' + fPrevPedidosNaoFat.DateEdit1.Text;
  if fPrevPedidosNaoFat.RxDBLookupCombo1.Text = '' then
    QRLabel5.Caption := fPrevPedidosNaoFat.RxDBLookupCombo1.Text
  else
    QRLabel5.Caption := 'Todos';
end;

procedure TfRelPedidosNaoFat.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if fPrevPedidosNaoFat.DateEdit2.Text <> '  /  /    ' then
    QRLabel1.Caption := 'Pedidos não Faturados - ' + fPrevPedidosNaoFat.DateEdit1.Text + ' a ' + fPrevPedidosNaoFat.DateEdit2.Text
  else
    QRLabel1.Caption := 'Pedidos ATRAZADOS - ' + fPrevPedidosNaoFat.DateEdit1.Text;
  if fPrevPedidosNaoFat.RxDBLookupCombo1.Text = '' then
    QRLabel5.Caption := fPrevPedidosNaoFat.RxDBLookupCombo1.Text
  else
    QRLabel5.Caption := 'Todos';
end;

procedure TfRelPedidosNaoFat.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vNome : String;
begin
  //Monta o resumo
  if fPrevPedidosNaoFat.mResumo.Locate('NomeCliente;Referencia',VarArrayOf([fPrevPedidosNaoFat.qPedidosNomeCliente.AsString,fPrevPedidosNaoFat.qPedidosReferencia.AsString]),[locaseinsensitive]) then
    begin
      fPrevPedidosNaoFat.mResumo.Edit;
      fPrevPedidosNaoFat.mResumoQtdRestante.AsFloat := fPrevPedidosNaoFat.mResumoQtdRestante.AsFloat + fPrevPedidosNaoFat.qPedidosQtdParesRest.AsFloat;
      fPrevPedidosNaoFat.mResumo.Post;
    end
  else
    begin
      fPrevPedidosNaoFat.mResumo.Insert;
      fPrevPedidosNaoFat.mResumoNomeCliente.AsString := fPrevPedidosNaoFat.qPedidosNomeCliente.AsString;
      fPrevPedidosNaoFat.mResumoReferencia.AsString  := fPrevPedidosNaoFat.qPedidosReferencia.AsString;
      fPrevPedidosNaoFat.mResumoQtdRestante.AsFloat  := fPrevPedidosNaoFat.qPedidosQtdParesRest.AsFloat;
      fPrevPedidosNaoFat.mResumo.Post;
    end;
  //*******************

  if fPrevPedidosNaoFat.qPedidos.RecNo = 1 then
    begin
      //QRLabel28.Enabled  := True;
      //QRDBText5.Enabled  := True;
      DetailBand1.Height := 19;
    end
  else
    begin
      //QRLabel28.Enabled  := False;
      //QRDBText5.Enabled  := False;
      vNome := fPrevPedidosNaoFat.qPedidosNomeCliente.AsString;
      fPrevPedidosNaoFat.qPedidos.Prior;
      if (vNome <> fPrevPedidosNaoFat.qPedidosNomeCliente.AsString) then
        begin
          DetailBand1.Height := 19;
          //QRLabel28.Enabled  := True;
          //QRDBText5.Enabled  := True;
        end
      else
        DetailBand1.Height := 1;
      fPrevPedidosNaoFat.qPedidos.Next;
    end;
  {if fPrevPedidosNaoFat.qPedidosNumOS.AsString <> '' then
    QRLabel29.Enabled := True
  else
    QRLabel29.Enabled := False;
  QRShape9.Top := DetailBand1.Height - 2;}
end;

procedure TfRelPedidosNaoFat.PageHeaderBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel13.Caption := 'Resumo dos Pedidos Pendentes por Cliente - Período: ' +
                       fPrevPedidosNaoFat.DateEdit1.Text + ' a ' + fPrevPedidosNaoFat.DateEdit2.Text;
                        
end;

procedure TfRelPedidosNaoFat.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fPrevPedidosNaoFat.qPedidosNumOS.AsString <> '' then
    begin
      ChildBand1.Height := 35;
      QRShape9.Top      := 31;
    end
  else
    begin
      ChildBand1.Height := 17;
      QRShape9.Top      := 15;
    end;
end;

procedure TfRelPedidosNaoFat.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  fPrevPedidosNaoFat.mResumo.EmptyDataSet;
end;

end.
