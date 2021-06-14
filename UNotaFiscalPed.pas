unit UNotaFiscalPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DBVGrids, StdCtrls, Buttons;

type
  TfNotaFiscalPed = class(TForm)
    RxDBGrid1: TRxDBGrid;
    VDBGrid1: TVDBGrid;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalPed: TfNotaFiscalPed;

implementation

uses UDM1;

{$R *.dfm}

procedure TfNotaFiscalPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalPed.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalPed.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfNotaFiscalPed.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfNotaFiscalPed.VDBGrid1Enter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

end.
