unit USenhaAlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfSenhaAlt = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSenhaAlt: TfSenhaAlt;

implementation

uses UDM1;

{$R *.dfm}

procedure TfSenhaAlt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSenhaAlt.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Close;
end;

procedure TfSenhaAlt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  vSenhaAlt := Edit1.Text;
end;

end.
