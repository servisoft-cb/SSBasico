unit UConsPedCarteiraDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, DB, DBTables;

type
  TfConsPedCarteiraDet = class(TForm)
    RxDBGrid1: TRxDBGrid;
    BitBtn2: TBitBtn;
    StaticText1: TStaticText;
    qDetalhado: TQuery;
    qDetalhadoPedido: TIntegerField;
    qDetalhadoDtEmissao: TDateField;
    qDetalhadoItem: TIntegerField;
    qDetalhadoQtdPares: TFloatField;
    qDetalhadoQtdParesFat: TFloatField;
    qDetalhadoQtdParesRest: TFloatField;
    qDetalhadoPreco: TFloatField;
    qDetalhadoDtReprogramacao: TDateField;
    qDetalhadoDtEmbarque: TDateField;
    qDetalhadoLargura: TStringField;
    qDetalhadoCodCor: TIntegerField;
    qDetalhadoPedidoCliente: TStringField;
    dsqDetalhado: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedCarteiraDet: TfConsPedCarteiraDet;

implementation

uses UPrevPedCarteira, UBaixaPedido, UDM1;

{$R *.dfm}

procedure TfConsPedCarteiraDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedCarteiraDet.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedCarteiraDet.RxDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tUsuarioBaixaPedidos.AsBoolean then
    begin
      if qDetalhadoPedido.AsInteger > 0 then
        begin
          fBaixaPedido := TfBaixaPedido.Create(Self);
          fBaixaPedido.CurrencyEdit2.Enabled := True;
          fBaixaPedido.CurrencyEdit3.Enabled := True;
          fBaixaPedido.RadioGroup1.ItemIndex   := 1;
          fBaixaPedido.CurrencyEdit1.AsInteger := qDetalhadoPedido.AsInteger;
          fBaixaPedido.CurrencyEdit2.AsInteger := qDetalhadoItem.AsInteger;
          fBaixaPedido.BitBtn1.Enabled := False;
          fBaixaPedido.ShowModal;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfConsPedCarteiraDet.RxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (qDetalhadoPedido.AsInteger > 0) then
    begin
      if DM1.tUsuarioBaixaPedidos.AsBoolean then
        begin
          fBaixaPedido := TfBaixaPedido.Create(Self);
          fBaixaPedido.CurrencyEdit2.Enabled := True;
          fBaixaPedido.CurrencyEdit3.Enabled := True;
          fBaixaPedido.RadioGroup1.ItemIndex   := 1;
          fBaixaPedido.CurrencyEdit1.AsInteger := qDetalhadoPedido.AsInteger;
          fBaixaPedido.CurrencyEdit2.AsInteger := qDetalhadoItem.AsInteger;
          fBaixaPedido.BitBtn1.Enabled := False;
          fBaixaPedido.ShowModal;
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
    end;
end;

end.
