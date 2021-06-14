unit UTabPrecoMotivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TfTabPrecoMotivo = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTabPrecoMotivo: TfTabPrecoMotivo;

implementation

uses UDM1;

{$R *.dfm}

procedure TfTabPrecoMotivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfTabPrecoMotivo.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfTabPrecoMotivo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DBEdit1.Text = '' then
    begin
      ShowMessage('É obrigatório informar o motivo!');
      CanClose := False
    end;
end;

end.
