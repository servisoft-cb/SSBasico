unit UNotaFiscalOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Buttons, DB, DBTables;

type
  TfNotaFiscalOC = class(TForm)
    StaticText1: TStaticText;
    DBText1: TDBText;
    StaticText2: TStaticText;
    DBText2: TDBText;
    StaticText3: TStaticText;
    DBText3: TDBText;
    StaticText4: TStaticText;
    DBEdit1: TDBEdit;
    StaticText5: TStaticText;
    DBEdit2: TDBEdit;
    BitBtn2: TBitBtn;
    DBText4: TDBText;
    DBText5: TDBText;
    StaticText6: TStaticText;
    DBEdit3: TDBEdit;
    StaticText7: TStaticText;
    DBEdit4: TDBEdit;
    StaticText8: TStaticText;
    DBEdit5: TDBEdit;
    qPedidoItem: TQuery;
    BitBtn1: TBitBtn;
    qPedidoItemItem: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalOC: TfNotaFiscalOC;

implementation

uses UDM1;

{$R *.DFM}

procedure TfNotaFiscalOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalOC.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalOC.BitBtn1Click(Sender: TObject);
begin
  //NFe 2.00
  if (Trim(DM1.tNotaFiscalItensNumOC.AsString) <> '') and (Trim(DM1.tNotaFiscalItensNumOS.AsString) <> '') then
  begin
    qPedidoItem.Close;
    qPedidoItem.ParamByName('PedidoCliente').AsString := DM1.tNotaFiscalItensNumOC.AsString;
    qPedidoItem.ParamByName('NumOS').AsString         := DM1.tNotaFiscalItensNumOS.AsString;
    qPedidoItem.Open;
    qPedidoItem.First;
    vItemPedido := qPedidoItemItem.AsInteger;
    DM1.tNotaFiscalItensItemPedido.AsInteger := qPedidoItemItem.AsInteger;
  end
  else
    ShowMessage('Para buscar o item do pedido, é obrigado a informar Nº OC e Nº da Remessa!');
end;

end.
