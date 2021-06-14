unit UNotaEntradaQtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons;

type
  TfNotaEntradaQtd = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaEntradaQtd: TfNotaEntradaQtd;

implementation

uses UDM1, UNotaEntrada;

{$R *.dfm}

procedure TfNotaEntradaQtd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaEntradaQtd.FormShow(Sender: TObject);
begin
  Label1.Caption := 'Unidade do produto é (' + DM1.tProdutoUnidade.AsString + '), informar a qtde. para converter:';
end;

procedure TfNotaEntradaQtd.BitBtn1Click(Sender: TObject);
begin
  fNotaEntrada.vQtdPacote := CurrencyEdit1.Value;
  Close;
end;

end.
