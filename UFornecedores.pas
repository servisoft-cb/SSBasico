unit UFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask, Db, DBTables,
  RXLookup, Grids, DBGrids, ToolEdit, RXDBCtrl, VerificaCGC, Variants,
  CurrEdit, RxDBComb, VerificaCPF;

type
  TfFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel5: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    dsFornecedoresIndex: TDataSource;
    tFornecedoresIns: TTable;
    Label19: TLabel;
    SpeedButton4: TSpeedButton;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    VerificaCGC1: TVerificaCGC;
    RxDBLookupCombo3: TRxDBLookupCombo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    DBDateEdit1: TDBDateEdit;
    Panel7: TPanel;
    Label22: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBGrid1: TRxDBGrid;
    BitBtn7: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    TabSheet3: TTabSheet;
    StaticText13: TStaticText;
    DBEdit4: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    DBEdit24: TDBEdit;
    SpeedButton7: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    tFornecedoresInsCodForn: TIntegerField;
    tFornecedoresInsNomeForn: TStringField;
    tFornecedoresInsEndForn: TStringField;
    tFornecedoresInsBairroForn: TStringField;
    tFornecedoresInsCidadeForn: TStringField;
    tFornecedoresInsCEPForn: TStringField;
    tFornecedoresInsEstadoForn: TStringField;
    tFornecedoresInsTel1Forn: TStringField;
    tFornecedoresInsTel2Forn: TStringField;
    tFornecedoresInsFaxForn: TStringField;
    tFornecedoresInsCGC: TStringField;
    tFornecedoresInsInsc: TStringField;
    tFornecedoresInsContatoForn: TStringField;
    tFornecedoresInsDataCadastroForn: TDateField;
    tFornecedoresInsObsForn: TMemoField;
    tFornecedoresInsRamal: TStringField;
    tFornecedoresInsEmail: TStringField;
    tFornecedoresInsHomePage: TStringField;
    tFornecedoresInsCodCondPgto: TIntegerField;
    tFornecedoresInsFantasia: TStringField;
    tFornecedoresInsFornecedorOutros: TStringField;
    tFornecedoresInsCodCidade: TIntegerField;
    tFornecedoresInsCustoFixo: TBooleanField;
    tFornecedoresInsUsuario: TStringField;
    tFornecedoresInsDtCad: TDateField;
    tFornecedoresInsHrCad: TTimeField;
    tFornecedoresInsCliente: TBooleanField;
    tFornecedoresInsEndComplemento: TStringField;
    tFornecedoresInsDDDFone1: TIntegerField;
    tFornecedoresInsDDDFone2: TIntegerField;
    tFornecedoresInsDDDFax: TIntegerField;
    Label24: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    StaticText1: TStaticText;
    Label27: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    qCPagar: TQuery;
    qCPagarCodForn: TIntegerField;
    qNEntrada: TQuery;
    qNEntradaCodForn: TIntegerField;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label26: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    Label28: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    Label30: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    VerificaCPF1: TVerificaCPF;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RxDBLookupCombo2DropDown(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo3DropDown(Sender: TObject);
    procedure RxDBLookupCombo3CloseUp(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
  private
    { Private declarations }

    function  Checa_Duplicidade : Boolean;
    procedure Habilita;
    procedure Move_DDD;
  public
    { Public declarations }
  end;

var
  fFornecedores: TfFornecedores;

implementation

uses UDM1, UCondPgto, UAtividade, UUf, UCidade, UCopiaCliFornec,
  UConsFornecedores, UTransp;

{$R *.DFM}

procedure TfFornecedores.Move_DDD;
begin
  if DM1.tFornecedoresCodCidade.AsInteger < 1 then
    Exit;

  if not DM1.tCidade.Locate('Codigo',DM1.tFornecedoresCodCidade.AsInteger,[loCaseInsensitive]) then
    exit;

  if (DM1.tFornecedoresTel1Forn.AsString <> '') and (DM1.tFornecedoresDDDFone1.AsInteger < 1) then
    DM1.tFornecedoresDDDFone1.AsString := DM1.tCidadePrefixo.AsString;
  if (DM1.tFornecedoresTel2Forn.AsString <> '') and (DM1.tFornecedoresDDDFone2.AsInteger < 1) then
    DM1.tFornecedoresDDDFone2.AsString := DM1.tCidadePrefixo.AsString;
  if (DM1.tFornecedoresFaxForn.AsString <> '') and (DM1.tFornecedoresDDDFax.AsInteger < 1) then
    DM1.tFornecedoresDDDFax.AsString := DM1.tCidadePrefixo.AsString;
end;

procedure TfFornecedores.Habilita;
begin
  Panel5.Enabled       := not(Panel5.Enabled);
  Panel3.Enabled       := not(Panel3.Enabled);
  Panel6.Enabled       := not(Panel6.Enabled);
  Panel7.Enabled       := not(Panel7.Enabled);
  Bitbtn1.Enabled      := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled      := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled      := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled      := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled      := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled      := not(Bitbtn6.Enabled);
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
end;

Function TfFornecedores.Checa_Duplicidade : Boolean;
begin
  Result := False;
  if (tFornecedoresIns.Locate('CGC',DBEdit9.Text,[loCaseInsensitive])) and
     (tFornecedoresInsCodForn.AsString <> DM1.tFornecedoresCodForn.AsString) then
    begin
      ShowMessage('O fornecedor ' + tFornecedoresInsNomeForn.AsString + ', já está cadastrado com o CPF/CNPF digitado! ');
      Result := True;
      DBEdit9.Clear;
    end;
end;

procedure TfFornecedores.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfFornecedores.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      if not DM1.tFornecAtiv.IsEmpty then
        begin
          DM1.tFornecAtiv.First;
          while not DM1.tFornecAtiv.Eof do
            DM1.tFornecAtiv.Delete;
        end;
      DM1.tFornecedores.Delete;
    end
  else
  if BitBtn2.Tag = 1 then
    DM1.tFornecedores.Cancel;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tFornecedores.Filtered := False;
  if Screen.FormCount < 3 then
  begin
    qCPagar.Close;
    qNEntrada.Close;
    DM1.tFornecedores.Close;
    DM1.tFornecAtiv.Close;
    DM1.tAtividade.Close;
    DM1.tCondPgto.Close;
  end;
  Action := Cafree;
end;

procedure TfFornecedores.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsFornecedores.AsBoolean then
    begin
      DM1.tFornecedores.Filtered := False;
      DM1.tFornecedores.IndexFieldNames := 'CodForn';
      tFornecedoresIns.IndexFieldNames  := 'CodForn';
      tFornecedoresIns.Refresh;
      tFornecedoresIns.Last;
      DM1.tFornecedores.Refresh;
      DM1.tFornecedores.Insert;
      DM1.tFornecedoresCodForn.AsInteger := tFornecedoresInsCodForn.AsInteger + 1;
      DM1.tFornecedoresDataCadastroForn.AsDateTime := Date();
      DM1.tFornecedoresFornecedorOutros.AsString := 'F';
      DM1.tFornecedoresCustoFixo.AsBoolean := False;
      DM1.tFornecedores.Post;
      DM1.tFornecedores.Edit;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfFornecedores.BitBtn6Click(Sender: TObject);
begin
  if DM1.tFornecedoresNomeForn.AsString = '' then
    begin
      ShowMessage('Nome é obrigatório!');
      exit;
    end;
  if (DM1.tFornecedoresFornecedorOutros.AsString = 'F') and
     ((DM1.tFornecedoresCGC.AsString = '') or (DM1.tFornecedoresCGC.AsString = '  .   .   /    -  ')) then
    begin
      ShowMessage('Falta informar o CNPJ!');
      exit;
    end;
  Move_DDD;
  DM1.tFornecedores.Post;
  DM1.tFornecedores.Refresh;
  tFornecedoresIns.Refresh;
  BitBtn2.Tag := 0;
  Habilita;
  BitBtn1.SetFocus;
end;

procedure TfFornecedores.BitBtn3Click(Sender: TObject);
var
  vFlag : Boolean;
begin
  if DM1.tUsuarioExcFornecedores.AsBoolean then
    begin
      vFlag := True;
      qCPagar.Close;
      qCPagar.ParamByName('CodForn').AsInteger := DM1.tFornecedoresCodForn.AsInteger;
      qCPagar.Open;
      if (qCPagar.RecordCount > 0) and (qCPagarCodForn.AsInteger = DM1.tFornecedoresCodForn.AsInteger)then
        begin
          ShowMessage('Fornecedor não pode ser excluído, foi utilizado no contas a pagar!');
          vFlag := False;
        end;
      if vFlag then
        begin
          qNEntrada.Close;
          qNEntrada.ParamByName('CodForn').AsInteger := DM1.tFornecedoresCodForn.AsInteger;
          qNEntrada.Open;
          if (qNEntrada.RecordCount > 0) and (qNEntradaCodForn.AsInteger = DM1.tFornecedoresCodForn.AsInteger)then
            begin
              ShowMessage('Fornecedor não pode ser excluído, foi utilizado nas notas de entrada!');
              vFlag := False;
            end;
        end;
      if not vFlag then
        begin
          qCPagar.Close;
          qNEntrada.Close;
          exit;
        end; 
      if MessageDlg('Deseja realmente excluir o fornecedor?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          if not DM1.tFornecAtiv.IsEmpty then
            begin
              DM1.tFornecAtiv.First;
              while not DM1.tFornecAtiv.Eof do
                DM1.tFornecAtiv.Delete;
            end;
          DM1.tFornecedores.Delete;
          DM1.tFornecedores.Refresh;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfFornecedores.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltFornecedores.AsBoolean then
    begin
      DM1.tFornecedores.IndexFieldNames := 'CodForn';
      DM1.tFornecedores.Edit;
      BitBtn2.Tag := 1;
      Habilita;
      DBEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfFornecedores.DBEdit9Exit(Sender: TObject);
begin
  if (DM1.tFornecedoresPessoa.AsString = 'F') and (DBEdit9.Text <> '   .   .   -  ') and (DBEdit9.Text <> '000.000.000-00') then
  begin
    VerificaCPF1.Entrada := DBEdit9.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit9.SetFocus;
    end
    else
    if Checa_Duplicidade then
      BitBtn5Click(Sender);
  end
  else
  if (DM1.tFornecedoresPessoa.AsString = 'J') and (DBEdit9.Text <> '  .   .   /    -  ') and (DBEdit9.Text <> '00.000.000/0000-00') then
  begin
    VerificaCGC1.Entrada := DBEdit9.Text;
    if not VerificaCGC1.Resultado then
    begin
      ShowMessage('Número de CNPJ inválido!');
      DBEdit9.SetFocus;
    end
    else
    if Checa_Duplicidade then
      BitBtn5Click(Sender);
  end;
  {if (DBEdit9.Text <> '  .   .   /    -  ') and (DBEdit9.Text <> '00.000.000/0000-00') then
    begin
      VerificaCGC1.Entrada := DBEdit9.Text;
      if not VerificaCGC1.Resultado then
        begin
          ShowMessage('Número de CNPJ inválido!');
          DBEdit9.SetFocus;
        end
      else
      if Checa_Duplicidade then
        BitBtn5Click(Sender);
    end;}
end;

procedure TfFornecedores.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TfFornecedores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tFornecedores.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o fornecedor antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfFornecedores.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfFornecedores.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cond.pagto.!');
end;

procedure TfFornecedores.RxDBLookupCombo2DropDown(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'Fantasia';
end;

procedure TfFornecedores.RadioGroup1Click(Sender: TObject);
begin
  {if RadioGroup1.ItemIndex = 0 then
    begin
      DM1.tFornecedores.Filtered := False;
      DM1.tFornecedores.Filter   := 'FornecedorOutros = '''+'F'+'''';
      DM1.tFornecedores.Filtered := True;
    end
  else
  if RadioGroup1.ItemIndex = 1 then
    begin
      DM1.tFornecedores.Filtered := False;
      DM1.tFornecedores.Filter   := 'FornecedorOutros = '''+'O'+'''';
      DM1.tFornecedores.Filtered := True;
    end;}
end;

procedure TfFornecedores.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfFornecedores.DBEdit1Exit(Sender: TObject);
begin
  if (DM1.tFornecedoresFantasia.AsString = '') and (DM1.tFornecedoresNomeForn.AsString <> '') then
    DM1.tFornecedoresFantasia.AsString := DM1.tFornecedoresNomeForn.AsString;
end;

procedure TfFornecedores.RxDBLookupCombo3DropDown(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfFornecedores.RxDBLookupCombo3CloseUp(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Codigo';
end;

procedure TfFornecedores.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tAtividade.IndexFieldNames := 'Nome';
end;

procedure TfFornecedores.RxDBLookupCombo4Exit(Sender: TObject);
begin
  DM1.tAtividade.IndexFieldNames := 'Codigo';
end;

procedure TfFornecedores.BitBtn7Click(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    begin
      if DM1.tFornecAtiv2.Locate('CodForn;CodAtiv',VarArrayOf([DM1.tFornecedoresCodForn.AsInteger,RxDBLookupCombo4.KeyValue]),[locaseinsensitive]) then
        begin
          ShowMessage('Já existe esta atividade p/ este fornecedor!');
          RxDBLookupCombo4.SetFocus;
        end
      else
        begin
          DM1.tFornecAtiv2.Refresh;
          DM1.tFornecAtiv2.Last;
          DM1.tFornecAtiv.Insert;
          DM1.tFornecAtivItem.AsInteger    := DM1.tFornecAtiv2Item.AsInteger + 1;
          DM1.tFornecAtivCodAtiv.AsInteger := RxDBLookupCombo4.KeyValue;
          DM1.tFornecAtivCodForn.AsInteger := DM1.tFornecedoresCodForn.AsInteger;
          DM1.tFornecAtiv.Post;
          RxDBLookupCombo4.ClearValue;
          RxDBLookupCombo4.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Deve ser escolhida uma "Atividade" p/ confirmar a inserção!');
      RxDBLookupCombo4.SetFocus;
    end;
end;

procedure TfFornecedores.SpeedButton1Click(Sender: TObject);
begin
  RxDBLookupCombo4.ClearValue;
  RxDBLookupCombo4.SetFocus;
end;

procedure TfFornecedores.SpeedButton2Click(Sender: TObject);
begin
  if not DM1.tFornecAtiv.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir esta atividade do fornecedor?',mtconfirmation,[mbok,mbno],0)=mrok then
        DM1.tFornecAtiv.Delete;
    end
  else
    ShowMessage('Não há "Atividade" cadastrada p/ fazer a exclusão!');
end;

procedure TfFornecedores.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioAtividade.AsBoolean then
    begin
      fAtividade := TfAtividade.Create(Self);
      fAtividade.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfFornecedores.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
    begin
      fUf := TfUf.Create(Self);
      fUf.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfFornecedores.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfFornecedores.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioCidade.AsBoolean then
    begin
      fCidade := TfCidade.Create(Self);
      fCidade.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfFornecedores.RxDBLookupCombo5Exit(Sender: TObject);
begin
  if (RxDBLookupCombo6.Text = '') and (RxDBLookupCombo5.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo5.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tFornecedoresEstadoForn.AsString := DM1.tCidadeEstado.AsString;
          if (DBEdit5.Text = '') and (DM1.tCidadeCep.AsString <> '') then
            DM1.tFornecedoresCEPForn.AsString := DM1.tCidadeCep.AsString;
        end;
    end;
end;

procedure TfFornecedores.FormShow(Sender: TObject);
begin
  DM1.tFornecedores.Open;
  DM1.tFornecAtiv.Open;
  DM1.tAtividade.Open;
  DM1.tCondPgto.Open;
  tFornecedoresIns.Open;
end;

procedure TfFornecedores.SpeedButton7Click(Sender: TObject);
begin
  fCopiaCliFornec := TfCopiaCliFornec.Create(Self);
  fCopiaCliFornec.ShowModal;
end;

procedure TfFornecedores.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'Fantasia';
end;

procedure TfFornecedores.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'CGC';
end;

procedure TfFornecedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tFornecedores.State in [dsBrowse]) then
  begin
    fConsFornecedores := TfConsFornecedores.Create(Self);
    fConsFornecedores.ShowModal;
  end;
end;

procedure TfFornecedores.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    DM1.tFornecedores.IndexFieldNames := 'CodForn';
    DM1.tFornecedores.FindKey([CurrencyEdit1.AsInteger]);
  end;
end;

procedure TfFornecedores.CurrencyEdit1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'CodForn';
end;

procedure TfFornecedores.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfFornecedores.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
    begin
      fTransp := TfTransp.Create(Self);
      fTransp.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');

end;

procedure TfFornecedores.DBEdit9Enter(Sender: TObject);
begin
 if DM1.tFornecedoresPessoa.AsString = 'F' then
    Dm1.tFornecedoresCGC.EditMask := '999.999.999-99'
  else if DM1.tFornecedoresPessoa.AsString = 'J' then
    Dm1.tFornecedoresCGC.EditMask := '99.999.999/9999-99';
end;

end.
