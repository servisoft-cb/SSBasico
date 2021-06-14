unit UHistCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, DBCtrls, ComCtrls,
  RxLookup, Mask, ToolEdit, Db, DBTables, RzCmboBx, RzDBCmbo, DBFilter;

type
  TfHistCliente = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    tHistCliente2: TTable;
    tHistCliente2NumMov: TIntegerField;
    tHistCliente2CodCliente: TIntegerField;
    tHistCliente2NomeCliente: TStringField;
    tHistCliente2DtHistorico: TDateField;
    tHistCliente2Obs: TMemoField;
    dsHistCliente2: TDataSource;
    tHistCliente2Filial: TIntegerField;
    tHistCliente2lkNomeFilial: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBMemo2: TDBMemo;
    Panel5: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn8: TBitBtn;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText1: TStaticText;
    DBNavigator1: TDBNavigator;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBFilter1: TRxDBFilter;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    tHistCliente2Responsavel: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Habilita;
  public
    vNomeCliente : String;
    { Public declarations }
  end;

var
  fHistCliente: TfHistCliente;

implementation

uses UDM1, UCliente, URelHistCliente2, UHistorico, UClienteConsHistorico;

{$R *.DFM}

procedure TfHistCliente.Habilita;
begin
  Panel4.Enabled  := not(Panel4.Enabled);
  BitBtn2.Enabled := not(BitBtn2.Enabled);
  BitBtn3.Enabled := not(BitBtn3.Enabled);
  BitBtn4.Enabled := not(BitBtn4.Enabled);
  BitBtn5.Enabled := not(BitBtn5.Enabled);
  BitBtn6.Enabled := not(BitBtn6.Enabled);
  BitBtn8.Enabled := not(BitBtn8.Enabled);
end;

procedure TfHistCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  if Screen.FormCount < 3 then
    begin
      DM1.tHistCliente.Close;
      DM1.tCliente.Close;
      DM1.tHistorico.Close;
    end;
  vNomeCliente := '';
  Action := Cafree;
end;

procedure TfHistCliente.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfHistCliente.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfHistCliente.BitBtn2Click(Sender: TObject);
var
  vAux : Integer;
begin
  if DM1.tUsuarioInsHistCliente.AsBoolean then
    begin
      BitBtn3.Tag       := 0;
      DM1.tHistCliente.IndexFieldNames := 'NumMov';
      DM1.tHistCliente.Refresh;
      DM1.tHistCliente.Last;
      vAux := DM1.tHistClienteNumMov.AsInteger + 1;
      DM1.tHistCliente.Insert;
      DM1.tHistClienteNumMov.AsInteger := vAux;
      DM1.tHistClienteTipo.AsString    := 'MAN';
      DM1.tHistCliente.Post;
      DM1.tHistCliente.Edit;
      Habilita;

      RxDBLookupCombo1.ReadOnly := False;
      DBEdit1.ReadOnly          := False;
      RxDBLookupCombo1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfHistCliente.BitBtn5Click(Sender: TObject);
begin
  if BitBtn3.Tag = 0 then
    DM1.tHistCliente.Delete
  else
    DM1.tHistCliente.Cancel;
  Habilita;
end;

procedure TfHistCliente.BitBtn3Click(Sender: TObject);
begin
  if tHistCliente2NumMov.AsInteger > 0 then
    begin
      if DM1.tUsuarioAltClientes.AsBoolean then
        begin
          {DM1.tHistCliente.IndexFieldNames := 'NumMov';
          DM1.tHistCliente.SetKey;
          DM1.tHistClienteNumMov.AsInteger := tHistCliente2NumMov.AsInteger;
          if DM1.tHistCliente.GotoKey then
            begin}
              BitBtn3.Tag       := 1;
              DM1.tHistCliente.Edit;
              Habilita;
              RxDBLookupCombo1.ReadOnly := True;
              DBEdit1.ReadOnly          := True;
              DBDateEdit1.SetFocus;
            {end
          else
            ShowMessage('Movimento não encontrado!');}
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
    end;
end;

procedure TfHistCliente.FormCreate(Sender: TObject);
begin
  DM1.tHistCliente.Open;
  if not DM1.tCliente.Active then
    DM1.tCliente.Open;
  DM1.tHistorico.Open;
  RxDBFilter1.Active := True;

  tHistCliente2.Refresh;
  tHistCliente2.Last;
  DM1.tHistCliente.Refresh;
  DM1.tHistCliente.Last;
end;

procedure TfHistCliente.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfHistCliente.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      DM1.tHistClienteNomeCliente.AsString := RxDBLookupCombo1.Text;
      DBEdit1.ReadOnly := True;
    end
  else
    DBEdit1.ReadOnly := False;
end;

procedure TfHistCliente.BitBtn4Click(Sender: TObject);
begin
  if DM1.tUsuarioExcHistCliente.AsBoolean then
    begin
      {DM1.tHistCliente.IndexFieldNames := 'NumMov';
      DM1.tHistCliente.SetKey;
      DM1.tHistClienteNumMov.AsInteger := tHistCliente2NumMov.AsInteger;
      if DM1.tHistCliente.GotoKey then
        begin}
          if MessageDlg('Deseja realmente excluir o movimento?',mtconfirmation,[mbok,mbno],0)=mrok then
            DM1.tHistCliente.Delete;
        //end
      //else
        //ShowMessage('Movimento não encontrado!');
      DM1.tHistCliente.Refresh;
      //DM1.tHistCliente.Last;
      tHistCliente2.Refresh;
      tHistCliente2.Last;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfHistCliente.BitBtn8Click(Sender: TObject);
begin
  if DM1.tHistClienteFilial.AsInteger < 1 then
    begin
      ShowMessage('É obrigatório informar a filial!');
      exit;
    end;
  DM1.tHistCliente.Post;
  DM1.tHistCliente.Refresh;
  tHistCliente2.Refresh;
  Habilita;
  BitBtn2.SetFocus;
end;

procedure TfHistCliente.TabSheet2Show(Sender: TObject);
begin
  if tHistCliente2NumMov.AsInteger > 0 then
    begin
      DM1.tHistCliente.IndexFieldNames := 'NumMov';
      DM1.tHistCliente.SetKey;
      DM1.tHistClienteNumMov.AsInteger := tHistCliente2NumMov.AsInteger;
      if not DM1.tHistCliente.GotoKey then
        ShowMessage('Movimento não encontrado!');
    end;
end;

procedure TfHistCliente.BitBtn7Click(Sender: TObject);
begin
  fRelHistCliente2 := TfRelHistCliente2.Create(Self);
  fRelHistCliente2.RLReport1.Preview;
  Screen.Cursor   := crDefault;
  fRelHistCliente2.RLReport1.Free;
  FreeAndNil(fRelHistCliente2);
end;

procedure TfHistCliente.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioHistoricos.AsBoolean then
    begin
      RxDBFilter1.Active := False;
      fHistorico := TfHistorico.Create(Self);
      fHistorico.ShowModal;
      RxDBFilter1.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfHistCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tHistCliente.State in [dsBrowse]) then
    begin
      fClienteConsHistorico := TfClienteConsHistorico.Create(Self);
      fClienteConsHistorico.ShowModal;
    end;
end;

end.
