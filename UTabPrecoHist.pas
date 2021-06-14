unit UTabPrecoHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls;

type
  TfTabPrecoHist = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTabPrecoHist: TfTabPrecoHist;

implementation

uses UDM1;

{$R *.dfm}

procedure TfTabPrecoHist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfTabPrecoHist.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
