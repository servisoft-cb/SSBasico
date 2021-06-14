unit UProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, VerificaCPF, VerificaCGC;

type
  TfProcesso = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fProcesso: TfProcesso;

implementation

uses UDMProcesso, UDM1, UProcessoC, DB;

{$R *.dfm}

procedure TfProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMProcesso.cdsProcesso.State in [dsEdit,dsInsert] then
    DMProcesso.cdsProcesso.CancelUpdates;
  Action := Cafree;
end;

procedure TfProcesso.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Close;
end;

procedure TfProcesso.BitBtn1Click(Sender: TObject);
begin
  if Trim(DMProcesso.cdsProcessoNOME.AsString) = '' then
  begin
    ShowMessage('É obrigatório informar o nome!');
    DBEdit7.SetFocus;
    exit;
  end;

  DMProcesso.cdsProcesso.Post;
  DMProcesso.cdsProcesso.ApplyUpdates(0);

  Close;
end;


end.
