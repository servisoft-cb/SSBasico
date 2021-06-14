unit UBaixaItPedQtd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, RXCtrls, DBCtrls;

type
  TfBaixaItPedQtd = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn3: TBitBtn;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CurrencyEdit2Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaixaItPedQtd: TfBaixaItPedQtd;

implementation

uses UDM1, UBaixaItPed, UBaixaPedido;

{$R *.DFM}

procedure TfBaixaItPedQtd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfBaixaItPedQtd.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaItPedQtd.BitBtn1Click(Sender: TObject);
begin
  CurrencyEdit2.Clear;
  if CurrencyEdit1.Value > 0 then
    begin
      if (CurrencyEdit1.Value + fBaixaPedido.tPedidoGradeQtdParesFat.AsFloat <= fBaixaPedido.tPedidoGradeQtd.AsFloat) and (CurrencyEdit1.Value <= fBaixaPedido.tPedidoGradeQtd.AsFloat) then
        begin
          fBaixaPedido.CurrencyEdit3.AsInteger          := fBaixaPedido.CurrencyEdit3.AsInteger + CurrencyEdit1.AsInteger;
          fBaixaPedido.tPedidoGrade.Edit;
          fBaixaPedido.tPedidoGradeQtdParesMan.AsFloat  := fBaixaPedido.tPedidoGradeQtdParesMan.AsFloat + CurrencyEdit1.Value;
          fBaixaPedido.tPedidoGradeQtdParesFat.AsFloat  := fBaixaPedido.tPedidoGradeQtdParesFat.AsFloat + CurrencyEdit1.Value;
          fBaixaPedido.tPedidoGradeQtdParesRest.AsFloat := fBaixaPedido.tPedidoGradeQtdParesRest.AsFloat - CurrencyEdit1.value;
          fBaixaPedido.tPedidoGrade.Post;
          fBaixaPedido.tPedidoGrade.Refresh;
          fBaixaPedido.tPedidoItem.Edit;
          fBaixaPedido.tPedidoItemQtdFatMan.AsFloat  := fBaixaPedido.tPedidoItemQtdFatMan.AsFloat + CurrencyEdit1.Value;
          fBaixaPedido.tPedidoItemQtdParesFat.AsFloat  := fBaixaPedido.tPedidoItemQtdParesFat.AsFloat + CurrencyEdit1.Value;
          fBaixaPedido.tPedidoItemQtdParesRest.AsFloat := fBaixaPedido.tPedidoItemQtdParesRest.AsFloat - CurrencyEdit1.Value;
          if fBaixaPedido.tPedidoItemQtdParesRest.AsInteger < 1 then
            fBaixaPedido.tPedidoItemCopiado.AsBoolean := True;
          fBaixaPedido.tPedidoItem.Post;
          fBaixaPedido.tPedido.Edit;
          fBaixaPedido.tPedidoQtdFatMan.AsFloat    := fBaixaPedido.tPedidoQtdFatMan.AsFloat + CurrencyEdit1.Value;
          fBaixaPedido.tPedidoQtdParesFat.AsFloat  := fBaixaPedido.tPedidoQtdParesFat.AsFloat + CurrencyEdit1.Value;
          fBaixaPedido.tPedidoQtdParesRest.AsFloat := fBaixaPedido.tPedidoQtdParesRest.AsFloat - CurrencyEdit1.Value;
          if fBaixaPedido.tPedidoQtdParesRest.AsInteger < 1 then
            fBaixaPedido.tPedidoCopiado.AsBoolean := True;
          fBaixaPedido.tPedido.Post;
          fBaixaPedido.tPedidoItem.Refresh;
          fBaixaItPed.vQtdFat := fBaixaItPed.vQtdFat + CurrencyEdit1.AsInteger;

          CurrencyEdit1.Clear;
          Close;
        end
      else
        begin
          ShowMessage('A Qtd. p/ baixa não pode ser maior que a Qtd. Restante!');
          CurrencyEdit1.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Você deve informar a qtd. p/ baixa antes de confirmar!');
      CurrencyEdit1.Value;
    end;
end;

procedure TfBaixaItPedQtd.BitBtn3Click(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  if CurrencyEdit2.Value > 0 then
    begin
      if CurrencyEdit2.Value <= fBaixaPedido.tPedidoGradeQtdParesFat.AsFloat then
        begin
          fBaixaPedido.CurrencyEdit3.AsInteger := fBaixaPedido.CurrencyEdit3.AsInteger - CurrencyEdit2.AsInteger;
          fBaixaPedido.tPedidoGrade.Edit;
          fBaixaPedido.tPedidoGradeQtdParesMan.AsFloat  := fBaixaPedido.tPedidoGradeQtdParesMan.AsFloat - CurrencyEdit2.Value;
          fBaixaPedido.tPedidoGradeQtdParesFat.AsFloat  := fBaixaPedido.tPedidoGradeQtdParesFat.AsFloat - CurrencyEdit2.Value;
          fBaixaPedido.tPedidoGradeQtdParesRest.AsFloat := fBaixaPedido.tPedidoGradeQtdParesRest.AsFloat + CurrencyEdit2.value;
          fBaixaPedido.tPedidoGrade.Post;
          fBaixaPedido.tPedidoGrade.Refresh;
          fBaixaPedido.tPedidoItem.Edit;
          fBaixaPedido.tPedidoItemQtdFatMan.AsFloat    := fBaixaPedido.tPedidoItemQtdFatMan.AsFloat - CurrencyEdit2.Value;
          fBaixaPedido.tPedidoItemQtdParesFat.AsFloat  := fBaixaPedido.tPedidoItemQtdParesFat.AsFloat - CurrencyEdit2.Value;
          fBaixaPedido.tPedidoItemQtdParesRest.AsFloat := fBaixaPedido.tPedidoItemQtdParesRest.AsFloat + Currencyedit2.Value;
          fBaixaPedido.tPedidoItemCopiado.AsBoolean    := False;
          fBaixaPedido.tPedidoItem.Post;
          fBaixaPedido.tPedido.Edit;
          fBaixaPedido.tPedidoQtdFatMan.AsFloat    := fBaixaPedido.tPedidoQtdFatMan.AsFloat - CurrencyEdit2.Value;
          fBaixaPedido.tPedidoQtdParesFat.AsFloat  := fBaixaPedido.tPedidoQtdParesFat.AsFloat - CurrencyEdit2.Value;
          fBaixaPedido.tPedidoQtdParesRest.AsFloat := fBaixaPedido.tPedidoQtdParesRest.AsFloat + CurrencyEdit2.Value;
          fBaixaPedido.tPedidoCopiado.AsBoolean    := False;
          fBaixaPedido.tPedido.Post;
          fBaixaPedido.tPedidoItem.Refresh;
          fBaixaItPed.vQtdFat := fBaixaItPed.vQtdFat - CurrencyEdit2.AsInteger;

          CurrencyEdit2.Clear;
          Close;
        end
      else
        begin
          ShowMessage('A Qtd. para estornar não pode ser maior que a Qtd. Faturada!');
          CurrencyEdit2.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Você deve informar a qtd. para estornar antes de confirmar!');
      CurrencyEdit2.Value;
      CurrencyEdit2.SetFocus;
    end;
end;

procedure TfBaixaItPedQtd.CurrencyEdit2Enter(Sender: TObject);
begin
  CurrencyEdit1.Clear;
end;

procedure TfBaixaItPedQtd.CurrencyEdit1Enter(Sender: TObject);
begin
  CurrencyEdit2.Clear;
end;

end.
