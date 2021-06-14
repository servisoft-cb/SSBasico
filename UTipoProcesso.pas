unit UTipoProcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, Db, DBTables, RxLookup,
  DBFilter, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid;

type
  TfTipoProcesso = class(TForm)
    qCadastroSimples: TQuery;
    dsqCadastroSimples: TDataSource;
    RxDBFilter1: TRxDBFilter;
    qCadastroSimplesCodigo: TIntegerField;
    qCadastroSimplesNome: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    qVerifica: TQuery;
    qVerificaCodigo: TIntegerField;
    qVerificaCodTipoProduto: TIntegerField;
    qVerificaCodTipoMaterial: TIntegerField;
    qVerificaNome: TStringField;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Excluir_Registro;
  public
    { Public declarations }
  end;

var
  fTipoProcesso: TfTipoProcesso;
  vExcluir : Boolean;

implementation

uses UDM1, UDM2;

{$R *.DFM}

procedure TfTipoProcesso.Excluir_Registro;
begin
  DM1.tCadastroSimples.Delete;
end;

procedure TfTipoProcesso.Habilita;
begin
  Panel2.Enabled       := not(Panel2.Enabled);
  Panel4.Enabled       := not(Panel4.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
end;

procedure TfTipoProcesso.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfTipoProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM1.tCadastroSimples.State in [dsEdit,dsInsert] then
    DM1.tCadastroSimples.Cancel;
  RxDBFilter1.Active := False;
  qCadastroSimples.Close;
  if Screen.FormCount < 3 then
    DM1.tCadastroSimples.Close;
  Action := Cafree;
end;

procedure TfTipoProcesso.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsTipoProcesso.AsBoolean then
    begin
      BitBtn2.Tag := 0;
      DM2.tCadastroSimples.IndexFieldNames := 'Codigo';
      DM1.tCadastroSimples.IndexFieldNames := 'Codigo';
      DM2.tCadastroSimples.Refresh;
      DM2.tCadastroSimples.Last;
      DM1.tCadastroSimples.Refresh;
      DM1.tCadastroSimples.Insert;
      DM1.tCadastroSimplesCodigo.AsInteger :=  DM2.tCadastroSimplesCodigo.AsInteger + 1;
      DM1.tCadastroSimplesTipo.AsString    := 'PPR';
      DM1.tCadastroSimples.Post;
      DM1.tCadastroSimples.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfTipoProcesso.BitBtn5Click(Sender: TObject);
begin
  if DM1.tCadastroSimplesNome.AsString = '' then
    begin
      ShowMessage('Falta informar a descrição!');
      exit;
    end;
  DM1.tCadastroSimples.Post;
  DM1.tCadastroSimples.Refresh;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfTipoProcesso.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Excluir_Registro
  else
  if BitBtn2.Tag = 1 then
    DM1.tCadastroSimples.Cancel;
  DM1.tCadastroSimples.Refresh;         
  Habilita;
end;

procedure TfTipoProcesso.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltTipoProcesso.AsBoolean then
    begin
      DM1.tCadastroSimples.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfTipoProcesso.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcTipoProcesso.AsBoolean then
    begin
      vExcluir := True;
      if vExcluir then
        if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
          Excluir_Registro;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
  DM1.tCadastroSimples.Refresh;
end;

procedure TfTipoProcesso.FormShow(Sender: TObject);
begin
  DM1.tCadastroSimples.Open;
  RxDBFilter1.Active := True;
end;

procedure TfTipoProcesso.Panel2Enter(Sender: TObject);
begin
  qCadastroSimples.Close;
  qCadastroSimples.Open;
end;

procedure TfTipoProcesso.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    DM1.tCadastroSimples.Locate('Codigo',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]);
end;

end.
