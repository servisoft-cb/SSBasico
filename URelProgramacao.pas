unit URelProgramacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, MemTable;

type
  TfRelProgramacao = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel16: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText18: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel18: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel20: TQRLabel;
    Qtd1: TQRLabel;
    Qtd2: TQRLabel;
    Qtd3: TQRLabel;
    Qtd4: TQRLabel;
    Qtd5: TQRLabel;
    Qtd6: TQRLabel;
    Qtd7: TQRLabel;
    Qtd8: TQRLabel;
    Qtd9: TQRLabel;
    Qtd10: TQRLabel;
    Qtd11: TQRLabel;
    Qtd12: TQRLabel;
    Qtd13: TQRLabel;
    Qtd14: TQRLabel;
    Qtd15: TQRLabel;
    Qtd16: TQRLabel;
    Qtd17: TQRLabel;
    Qtd18: TQRLabel;
    Qtd19: TQRLabel;
    Qtd20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    Tam1: TQRLabel;
    Tam2: TQRLabel;
    Tam3: TQRLabel;
    Tam4: TQRLabel;
    Tam5: TQRLabel;
    Tam7: TQRLabel;
    Tam6: TQRLabel;
    Tam8: TQRLabel;
    Tam9: TQRLabel;
    Tam10: TQRLabel;
    Tam11: TQRLabel;
    Tam12: TQRLabel;
    Tam13: TQRLabel;
    Tam14: TQRLabel;
    Tam15: TQRLabel;
    Tam16: TQRLabel;
    Tam17: TQRLabel;
    Tam18: TQRLabel;
    Tam19: TQRLabel;
    Tam20: TQRLabel;
    TD1: TQRLabel;
    TD2: TQRLabel;
    TD3: TQRLabel;
    TD4: TQRLabel;
    TD5: TQRLabel;
    TD6: TQRLabel;
    TD7: TQRLabel;
    TD8: TQRLabel;
    TD9: TQRLabel;
    TD10: TQRLabel;
    TD11: TQRLabel;
    TD12: TQRLabel;
    TD13: TQRLabel;
    TD14: TQRLabel;
    TD15: TQRLabel;
    TD16: TQRLabel;
    TD17: TQRLabel;
    TD18: TQRLabel;
    TD19: TQRLabel;
    TD20: TQRLabel;
    TR1: TQRLabel;
    TR2: TQRLabel;
    TR3: TQRLabel;
    TR4: TQRLabel;
    TR5: TQRLabel;
    TR6: TQRLabel;
    TR7: TQRLabel;
    TR8: TQRLabel;
    TR9: TQRLabel;
    TR10: TQRLabel;
    TR11: TQRLabel;
    TR12: TQRLabel;
    TR13: TQRLabel;
    TR14: TQRLabel;
    TR15: TQRLabel;
    TR16: TQRLabel;
    TR17: TQRLabel;
    TR18: TQRLabel;
    TR19: TQRLabel;
    TR20: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRShape10: TQRShape;
    QRDBText3: TQRDBText;
    mDia: TMemoryTable;
    mDiaTamanho: TStringField;
    mDiaQtd: TIntegerField;
    mRef: TMemoryTable;
    mRefTamanho: TStringField;
    mRefQtd: TIntegerField;
    TamD1: TQRLabel;
    TamD2: TQRLabel;
    TamD3: TQRLabel;
    TamD4: TQRLabel;
    TamD5: TQRLabel;
    TamD6: TQRLabel;
    TamD7: TQRLabel;
    TamD8: TQRLabel;
    TamD9: TQRLabel;
    TamD10: TQRLabel;
    TamD11: TQRLabel;
    TamD12: TQRLabel;
    TamD13: TQRLabel;
    TamD14: TQRLabel;
    TamD15: TQRLabel;
    TamD16: TQRLabel;
    TamD17: TQRLabel;
    TamD18: TQRLabel;
    TamD19: TQRLabel;
    TamD20: TQRLabel;
    TamR1: TQRLabel;
    TamR2: TQRLabel;
    TamR3: TQRLabel;
    TamR4: TQRLabel;
    TamR5: TQRLabel;
    TamR6: TQRLabel;
    TamR7: TQRLabel;
    TamR8: TQRLabel;
    TamR9: TQRLabel;
    TamR10: TQRLabel;
    TamR11: TQRLabel;
    TamR12: TQRLabel;
    TamR13: TQRLabel;
    TamR14: TQRLabel;
    TamR15: TQRLabel;
    TamR16: TQRLabel;
    TamR17: TQRLabel;
    TamR18: TQRLabel;
    TamR19: TQRLabel;
    TamR20: TQRLabel;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRLabel11: TQRLabel;
    Qtd21: TQRLabel;
    Tam21: TQRLabel;
    Qtd22: TQRLabel;
    Tam22: TQRLabel;
    TD21: TQRLabel;
    TamD21: TQRLabel;
    TamD22: TQRLabel;
    TD22: TQRLabel;
    TR21: TQRLabel;
    TamR21: TQRLabel;
    TR22: TQRLabel;
    TamR22: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure mDiaNewRecord(DataSet: TDataSet);
    procedure mRefNewRecord(DataSet: TDataSet);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  //vPaginaNova : Boolean;
  vImpBand2 : Boolean;
  vQtdDia, vQtdRef : Array [1..22] of Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProgramacao: TfRelProgramacao;

implementation

uses UPrevProgramacao, UDM1;

{$R *.DFM}

procedure TfRelProgramacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProgramacao.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vData : TDateTime;
  vCodProduto : Integer;
  //vCodGradeAux : Integer;
  i : Integer;
begin
  //vPaginaNova := False;
  vImpBand2   := False;
  vData       := fPrevProgramacao.mRelProgDtReprogramacao.AsDateTime;
  vCodProduto := fPrevProgramacao.mRelProgCodProduto.AsInteger;
  //vCodGradeAux := fPrevProgramacao.mRelProgCodGrade.AsInteger;
  if fPrevProgramacao.mRelProg.RecNo = fPrevProgramacao.mRelProg.RecordCount then
    begin
      PrintBand := True;
      vImpBand2 := True;
    end
  else
    begin
      fPrevProgramacao.mRelProg.Next;
      {if vCodGradeAux <> fPrevProgramacao.mRelProgCodGrade.AsInteger then
        begin
          PrintBand := True;
          vImpBand2 := True;
          fPrevProgramacao.mRelProg.Prior;
          vPaginaNova := True;
        end
      else}
      if vCodProduto <> fPrevProgramacao.mRelProgCodProduto.AsInteger then
        begin
          PrintBand := True;
          vImpBand2 := True;
          fPrevProgramacao.mRelProg.Prior;
        end
      else
      if vData <> fPrevProgramacao.mRelProgDtReprogramacao.AsDateTime then
        begin
          PrintBand := True;
          fPrevProgramacao.mRelProg.Prior;
        end
      else
        begin
          PrintBand := False;
          fPrevProgramacao.mRelProg.Prior;
        end;
    end;
  //*** Imprime os totais por tamanho
  for i := 1 to 22 do
    begin
      TQRLabel(FindComponent('TD'+IntToStr(i))).Enabled   := False;
      TQRLabel(FindComponent('TamD'+IntToStr(i))).Enabled := False;
    end;
  if PrintBand then
    begin
      i := 0;
      mDia.First;
      while not mDia.Eof do
        begin
          inc(i);
          if i > 22 then
            ShowMessage('Total do dia tem mais de 22 tamanhos, verificar com programador!')
          else
            begin
              if mDiaQtd.AsInteger > 0 then
                begin
                  TQRLabel(FindComponent('TD'+IntToStr(i))).Enabled   := True;
                  TQRLabel(FindComponent('TamD'+IntToStr(i))).Enabled := True;
                  TQRLabel(FindComponent('TD'+IntToStr(i))).Caption   := mDiaQtd.AsString;
                  TQRLabel(FindComponent('TamD'+IntToStr(i))).Caption := mDiaTamanho.AsString;
                end;
            end;
          mDia.Next;
        end;
      mDia.EmptyTable;
    end;

  //Versão com o código da grade no pedido
  {if PrintBand then
    begin
      for i := 1 to 20 do
        begin
          if vQtdDia[i] > 0 then
            begin
              TQRLabel(FindComponent('TD'+IntToStr(i))).Enabled := True;
              TQRLabel(FindComponent('TD'+IntToStr(i))).Caption := IntToStr(vQtdDia[i]);
            end
          else
            TQRLabel(FindComponent('TD'+IntToStr(i))).Enabled := False;
          vQtdDia[i] := 0;
        end;
    end;}
end;

procedure TfRelProgramacao.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : Integer;
begin
  PrintBand := vImpBand2;
  for i := 1 to 22 do
    begin
      TQRLabel(FindComponent('TR'+IntToStr(i))).Enabled   := False;
      TQRLabel(FindComponent('TamR'+IntToStr(i))).Enabled := False;
    end;

  if PrintBand then
    begin
      i := 0;
      mRef.First;
      while not mRef.Eof do
        begin
          inc(i);
          if i > 22 then
            ShowMessage('Total da referência tem mais de 22 tamanhos, verificar com programador!')
          else
          if mRefQtd.AsInteger > 0 then
            begin
              TQRLabel(FindComponent('TR'+IntToStr(i))).Enabled   := True;
              TQRLabel(FindComponent('TamR'+IntToStr(i))).Enabled := True;
              TQRLabel(FindComponent('TR'+IntToStr(i))).Caption   := mRefQtd.AsString;
              TQRLabel(FindComponent('TamR'+IntToStr(i))).Caption := mRefTamanho.AsString;
            end;
          mRef.Next;
        end;
      mRef.EmptyTable;
    end;

  //Versão com o código da grade no pedido
  {if PrintBand then
    begin
      for i := 1 to 20 do
        begin
          if vQtdRef[i] > 0 then
            begin
              TQRLabel(FindComponent('TR'+IntToStr(i))).Enabled   := True;
              TQRLabel(FindComponent('TR'+IntToStr(i))).Caption   := IntToStr(vQtdRef[i]);
            end
          else
            TQRLabel(FindComponent('TR'+IntToStr(i))).Enabled := False;
          vQtdRef[i] := 0;
        end;
    end;}
end;

procedure TfRelProgramacao.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : Integer;
begin
  if (fPrevProgramacao.CheckBox1.Checked) or (fPrevProgramacao.RxDBLookupCombo1.Text = '') then
    QRLabel11.Caption := fPrevProgramacao.mRelProglkCliente.AsString
  else
    QRLabel11.Caption := '';

  QRDBText2.Enabled := fPrevProgramacao.mRelProgReprogramacao.AsBoolean;

  for i := 1 to 22 do
    begin
      TQRLabel(FindComponent('Tam'+IntToStr(i))).Enabled := False;
      TQRLabel(FindComponent('Qtd'+IntToStr(i))).Enabled := False;
    end;

  i := 0;
  fPrevProgramacao.tPedidoGrade.First;
  while not fPrevProgramacao.tPedidoGrade.EOF do
    begin
      Inc(i);
      if i > 22 then
        ShowMessage('Possue mais de 22 tamanhos!')
      else
        begin
          TQRLabel(FindComponent('Tam' + IntToStr(i))).Enabled  := True;
          TQRLabel(FindComponent('Tam' + IntToStr(i))).Caption  := fPrevProgramacao.tPedidoGradelkTamanho.AsString;
          TQRLabel(FindComponent('Qtd' + IntToStr(i))).Enabled  := True;
          TQRLabel(FindComponent('Qtd' + IntToStr(i))).Caption  := fPrevProgramacao.tPedidoGradeQtdParesRest.AsString;
          //Soma o total do dia
          if mDia.Locate('Tamanho',fPrevProgramacao.tPedidoGradelkTamanho.AsString,[loCaseInsensitive]) then
            mDia.Edit
          else
            begin
              mDia.Insert;
              mDiaTamanho.AsString := fPrevProgramacao.tPedidoGradelkTamanho.AsString;
            end;
          mDiaQtd.AsInteger := mDiaQtd.AsInteger + fPrevProgramacao.tPedidoGradeQtdParesRest.AsInteger;
          mDia.Post;
          //Soma o total da referência
          if mRef.Locate('Tamanho',fPrevProgramacao.tPedidoGradelkTamanho.AsString,[loCaseInsensitive]) then
            mRef.Edit
          else
            begin
              mRef.Insert;
              mRefTamanho.AsString := fPrevProgramacao.tPedidoGradelkTamanho.AsString;
            end;
          mRefQtd.AsInteger := mRefQtd.AsInteger + fPrevProgramacao.tPedidoGradeQtdParesRest.AsInteger;
          mRef.Post;
          //vQtdDia[i] := vQtdDia[i] + fPrevProgramacao.tPedidoGradeQtdParesRest.AsInteger;
          //vQtdRef[i] := vQtdRef[i] + fPrevProgramacao.tPedidoGradeQtdParesRest.AsInteger;
        end;
      fPrevProgramacao.tPedidoGrade.Next;
    end;

  //Verifica se a OS é casada (se repete o mesmo número de OS dentro do mesmo pedido
  if fPrevProgramacao.mRelProgNumOS.AsString <> '' then
    begin
      fPrevProgramacao.qOS.Filtered := False;
      fPrevProgramacao.qOS.Filter   := 'Pedido = '''+fPrevProgramacao.mRelProgPedido.AsString+''' and NumOS = '''+fPrevProgramacao.mRelProgNumOS.AsString+'''';
      fPrevProgramacao.qOS.Filtered := True;
    end;
end;

procedure TfRelProgramacao.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  //vPaginaNova := False;
  for i := 1 to 22 do
    begin
      vQtdDia[i] := 0;
      vQtdRef[i] := 0;
    end;
  mDia.EmptyTable;
  mRef.EmptyTable;
end;

procedure TfRelProgramacao.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  //DetailBand1.ForceNewPage := False;
end;

procedure TfRelProgramacao.mDiaNewRecord(DataSet: TDataSet);
begin
  mDiaQtd.AsInteger := 0;
end;

procedure TfRelProgramacao.mRefNewRecord(DataSet: TDataSet);
begin
  mRefQtd.AsInteger := 0;
end;

procedure TfRelProgramacao.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if fPrevProgramacao.RxDBLookupCombo1.Text <> '' then
    QRLabel9.Caption := fPrevProgramacao.mRelProglkCliente.AsString
  else
    QRLabel9.Caption := 'Geral';
end;

end.
