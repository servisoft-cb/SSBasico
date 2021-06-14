unit UTipo_Produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, VerificaCPF, VerificaCGC;

type
  TfTipo_Produto = class(TForm)
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
  fTipo_Produto: TfTipo_Produto;

implementation

uses UDMTipo_Produto, UDM1, UTipo_ProdutoC, DB;

{$R *.dfm}

procedure TfTipo_Produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMTipo_Produto.cdsTipo_Produto.State in [dsEdit,dsInsert] then
    DMTipo_Produto.cdsTipo_Produto.CancelUpdates;
  Action := Cafree;
end;

procedure TfTipo_Produto.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Close;
end;

procedure TfTipo_Produto.BitBtn1Click(Sender: TObject);
begin
  if Trim(DMTipo_Produto.cdsTipo_ProdutoNOME.AsString) = '' then
  begin
    ShowMessage('É obrigatório informar o nome!');
    DBEdit7.SetFocus;
    exit;
  end;

  DMTipo_Produto.cdsTipo_Produto.Post;
  DMTipo_Produto.cdsTipo_Produto.ApplyUpdates(0);

  Close;
end;


end.
