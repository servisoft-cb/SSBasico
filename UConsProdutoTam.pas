unit UConsProdutoTam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Buttons, Db,
  DBTables, MemTable, Grids, DBVGrids, DBGrids, RXDBCtrl;

type
  TfConsProdutoTam = class(TForm)
    Panel1: TPanel;
    VDBGrid1: TVDBGrid;
    BitBtn1: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    VDBGrid2: TVDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsProdutoTam: TfConsProdutoTam;

implementation

uses UDM1, UConsProduto;

{$R *.DFM}

procedure TfConsProdutoTam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsProdutoTam.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
