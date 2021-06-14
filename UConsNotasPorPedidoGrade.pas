unit UConsNotasPorPedidoGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBVGrids, StdCtrls, Buttons, DBCtrls;

type
  TfConsNotasPorPedidoGrade = class(TForm)
    VDBGrid1: TVDBGrid;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsNotasPorPedidoGrade: TfConsNotasPorPedidoGrade;

implementation

uses UConsNotasPorPedido;

{$R *.dfm}

procedure TfConsNotasPorPedidoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsNotasPorPedidoGrade.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
