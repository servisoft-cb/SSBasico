unit UClienteTerceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, VerificaCPF, VerificaCGC;

type
  TfClienteTerceiro = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label10: TLabel;
    VerificaCGC1: TVerificaCGC;
    VerificaCPF1: TVerificaCPF;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fClienteTerceiro: TfClienteTerceiro;

implementation

uses UDMClienteTerceiro, UDM1, UClienteTerceiroC, DB;

{$R *.dfm}

procedure TfClienteTerceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMClienteTerceiro.cdsClienteTerceiro.State in [dsEdit,dsInsert] then
    DMClienteTerceiro.cdsClienteTerceiro.CancelUpdates;
  Action := Cafree;
end;

procedure TfClienteTerceiro.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Close;
end;

procedure TfClienteTerceiro.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfClienteTerceiro.BitBtn1Click(Sender: TObject);
begin
  if Trim(DMClienteTerceiro.cdsClienteTerceiroNOME.AsString) = '' then
  begin
    ShowMessage('É obrigatório informar o nome!');
    DBEdit7.SetFocus;
    exit;
  end;
  DMClienteTerceiro.cdsClienteTerceiroCIDADE.AsString := RxDBLookupCombo3.Text;

  DMClienteTerceiro.cdsClienteTerceiro.Post;
  DMClienteTerceiro.cdsClienteTerceiro.ApplyUpdates(0);

  Close;
end;


procedure TfClienteTerceiro.DBEdit11Exit(Sender: TObject);
begin
  if (DMClienteTerceiro.cdsClienteTerceiroPESSOA.AsString = 'F') and (Trim(DBEdit11.Text) <> '') then
  begin
    VerificaCPF1.Entrada := DBEdit11.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit11.SetFocus;
    end;
  end
  else
  if (DMClienteTerceiro.cdsClienteTerceiroPESSOA.AsString = 'J') and (Trim(DBEdit11.Text) <> '') then
  begin
   VerificaCGC1.Entrada := DBEdit11.Text;
   if not VerificaCGC1.Resultado then
   begin
     ShowMessage('Número de CNPJ inválido!');
     DBEdit11.SetFocus;
    end;
  end;
end;

procedure TfClienteTerceiro.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    DMClienteTerceiro.cdsClienteTerceiroUF.AsString := DM1.tCidadeEstado.AsString;
end;

end.
