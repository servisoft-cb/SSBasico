unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  DBFilter, SMDBGrid, RzCmboBx, RzDBCmbo, RzTabs, ExtDlgs;

type
  TfCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel5: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    tClienteIns: TTable;
    tClienteInsCodigo: TIntegerField;
    tClienteInsNome: TStringField;
    tClienteInsEndereco: TStringField;
    tClienteInsBairro: TStringField;
    tClienteInsCidade: TStringField;
    tClienteInsUf: TStringField;
    tClienteInsTelefone: TStringField;
    tClienteInsTelefone2: TStringField;
    tClienteInsFax: TStringField;
    tClienteInsPessoa: TStringField;
    tClienteInsCgcCpf: TStringField;
    tClienteInsInscrEst: TStringField;
    tClienteInsContato: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    tClienteInsObs: TMemoField;
    tClienteInsAprovCredito: TStringField;
    tClienteInsTipoAprov: TStringField;
    tClienteInsEndEntrega: TStringField;
    tClienteInsBairroEntrega: TStringField;
    tClienteInsCidEntrega: TStringField;
    tClienteInsUfEntrega: TStringField;
    tClienteInsCgcCpfEntrega: TStringField;
    tClienteInsInscEntrega: TStringField;
    tClienteInsEndPgto: TStringField;
    tClienteInsBairroPgto: TStringField;
    tClienteInsCidPgto: TStringField;
    tClienteInsUfPgto: TStringField;
    Label29: TLabel;
    DBEdit22: TDBEdit;
    Label30: TLabel;
    tClienteInsFantasia: TStringField;
    tClienteInsDtCadastro: TDateField;
    Label31: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tClienteInsCodVendedor: TIntegerField;
    Edit1: TEdit;
    tClienteInsObsCtas: TMemoField;
    tClienteInsLojas: TIntegerField;
    Label33: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    tClienteInsSelecionado: TBooleanField;
    DBDateEdit1: TDBDateEdit;
    VerificaCGC1: TVerificaCGC;
    VerificaCPF1: TVerificaCPF;
    tClienteInsCep: TStringField;
    tClienteInsCaixaPostal: TStringField;
    tClienteInsRg: TStringField;
    tClienteInsCepEntrega: TStringField;
    tClienteInsCepPgto: TStringField;
    SpeedButton3: TSpeedButton;
    tClienteInsCodCidade: TIntegerField;
    tClienteInsCodCidadeE: TIntegerField;
    tClienteInsCodCidadeP: TIntegerField;
    tClienteInsEmail: TStringField;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    QRCompositeReport1: TQRCompositeReport;
    qVerifica: TQuery;
    qVerificaCodCliente: TIntegerField;
    RxSpeedButton2: TRxSpeedButton;
    RxDBFilter4: TRxDBFilter;
    BitBtn8: TBitBtn;
    dsClienteIns: TDataSource;
    Label53: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RzPageControl1: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    Panel10: TPanel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    SpeedButton9: TSpeedButton;
    Label65: TLabel;
    SpeedButton10: TSpeedButton;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    SpeedButton1: TSpeedButton;
    Label72: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    RxDBLookupCombo19: TRxDBLookupCombo;
    RxDBLookupCombo22: TRxDBLookupCombo;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit25: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzTabSheet2: TRzTabSheet;
    DBMemo3: TDBMemo;
    RzTabSheet3: TRzTabSheet;
    Panel11: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    SpeedButton15: TSpeedButton;
    Label94: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBLookupCombo27: TRxDBLookupCombo;
    RxDBLookupCombo21: TRxDBLookupCombo;
    RxDBLookupCombo32: TRxDBLookupCombo;
    RzTabSheet4: TRzTabSheet;
    DBMemo4: TDBMemo;
    RzTabSheet5: TRzTabSheet;
    Panel13: TPanel;
    RzTabSheet6: TRzTabSheet;
    RzPageContato: TRzPageControl;
    TabSheet7: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet8: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    TabSheet9: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    DBCheckBox9: TDBCheckBox;
    Label54: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label55: TLabel;
    RxDBLookupCombo18: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label32: TLabel;
    DBEdit36: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    TabSheet10: TRzTabSheet;
    Panel14: TPanel;
    Label45: TLabel;
    RxDBLookupCombo20: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    DBCheckBox7: TDBCheckBox;
    TabSheet11: TRzTabSheet;
    Panel9: TPanel;
    Label58: TLabel;
    SpeedButton7: TSpeedButton;
    Label59: TLabel;
    RxDBLookupCombo15: TRxDBLookupCombo;
    DBEdit39: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    SpeedButton6: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label42: TLabel;
    Label57: TLabel;
    DBMemo2: TDBMemo;
    DBEdit14: TDBEdit;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit38: TDBEdit;
    Label56: TLabel;
    DBEdit37: TDBEdit;
    Label46: TLabel;
    DBEdit27: TDBEdit;
    Label47: TLabel;
    DBEdit28: TDBEdit;
    Panel6: TPanel;
    BitBtn7: TBitBtn;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label28: TLabel;
    Label49: TLabel;
    DBEdit29: TDBEdit;
    Label27: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Label50: TLabel;
    DBEdit30: TDBEdit;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    Label39: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label40: TLabel;
    Label44: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    StaticText13: TStaticText;
    DBEdit11: TDBEdit;
    DBEdit21: TDBEdit;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    DBEdit24: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo16: TRxDBLookupCombo;
    DBEdit26: TDBEdit;
    RxFilterContato: TRxDBFilter;
    DBCheckBox2: TDBCheckBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton4: TSpeedButton;
    DBCheckBox11: TDBCheckBox;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo8: TRxDBLookupCombo;
    rxFilterSitTributaria: TRxDBFilter;
    Label11: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    StaticText1: TStaticText;
    GroupBox1: TGroupBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    OpenPictureDialog2: TOpenPictureDialog;
    BitBtn20: TBitBtn;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    tClienteInsCgcCpfPgto: TStringField;
    tClienteInsInscPgto: TStringField;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    RxDBComboBox4: TRxDBComboBox;
    Label21: TLabel;
    Label22: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RxDBLookupCombo5DropDown(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RxDBLookupCombo9Exit(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
    procedure RxDBLookupCombo13Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure RxDBLookupCombo15Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo20Enter(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure RxDBLookupCombo21Enter(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RxDBLookupCombo19Enter(Sender: TObject);
    procedure RxDBLookupCombo19Exit(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure RzPageContatoTabClick(Sender: TObject);
    procedure RzTabSheet6Enter(Sender: TObject);
    procedure RzTabSheet6PaintBackground(Sender: TObject; ACanvas: TCanvas;
      const ARect: TRect; var Handled: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure RxDBComboBox4Exit(Sender: TObject);
    procedure RxDBComboBox5Exit(Sender: TObject);
    procedure DBEdit55Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBCheckBox12Click(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Checa_Duplicidade;
    procedure Move_DDD;
    procedure Filtra_Contato;
    procedure Excluir_Registro;

    function Monta_MascaraDoc(Pessoa : String) : String;
  public
    { Public declarations }
  end;

var
  fCliente: TfCliente;

implementation

uses UDM1, UVendedor, UCopiaFornec, UUf, UCidade,
  UCondPgto, uRelCadCli, UDM2, UObsAux, UGrupoCliente, UTipoIndicacao,
  UClienteRef, UCSTIPI, USitTributariaSimples, uIntegracao, UConsCliente;

{$R *.DFM}

procedure TfCliente.Filtra_Contato;
begin
  RxFilterContato.Active := False;
  case RzPageContato.ActivePageIndex of
    0 : RxFilterContato.Filter.Text := 'Tipo = ''1''';
    1 : RxFilterContato.Filter.Text := 'Tipo = ''2''';
    2 : RxFilterContato.Filter.Text := 'Tipo = ''3''';
  end;
  RxFilterContato.Active := True;
end;

procedure TfCliente.Move_DDD;
begin
  if DM1.tClienteCodCidade.AsInteger < 1 then
    Exit;

  if not DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidade.AsInteger,[loCaseInsensitive]) then
    exit;

  if (DM1.tClienteTelefone.AsString <> '') and (DM1.tClienteDDDFone1.AsInteger < 1) then
    DM1.tClienteDDDFone1.AsString := DM1.tCidadePrefixo.AsString;
  if (DM1.tClienteTelefone2.AsString <> '') and (DM1.tClienteDDDFone2.AsInteger < 1) then
    DM1.tClienteDDDFone2.AsString := DM1.tCidadePrefixo.AsString;
  if (DM1.tClienteFax.AsString <> '') and (DM1.tClienteDDDFax.AsInteger < 1) then
    DM1.tClienteDDDFax.AsString := DM1.tCidadePrefixo.AsString;
end;

procedure TfCliente.Habilita;
begin
  Panel5.Enabled            := not(Panel5.Enabled);
  Panel3.Enabled            := not(Panel3.Enabled);
  Panel9.Enabled            := not(Panel9.Enabled);
  Panel10.Enabled           := not(Panel10.Enabled);
  Panel11.Enabled           := not(Panel11.Enabled);
  Panel13.Enabled           := not(Panel13.Enabled);
  Panel14.Enabled           := not(Panel14.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn11.Enabled          := not(BitBtn11.Enabled);
  BitBtn12.Enabled          := not(BitBtn12.Enabled);
  BitBtn13.Enabled          := not(BitBtn13.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  RxDBLookupCombo7.Enabled  := not(RxDBLookupCombo7.Enabled);
  RxDBLookupCombo11.Enabled := not(RxDBLookupCombo11.Enabled);
  RxDBLookupCombo12.Enabled := not(RxDBLookupCombo12.Enabled);
  DBEdit18.Enabled          := not(DBEdit18.Enabled);
  DBEdit19.Enabled          := not(DBEdit19.Enabled);
  DBEdit20.Enabled          := not(DBEdit20.Enabled);
  DBEdit29.Enabled          := not(DBEdit29.Enabled);
  DBMemo3.ReadOnly          := not(DBMemo3.ReadOnly);
  DBMemo4.ReadOnly          := not(DBMemo4.ReadOnly);
end;

procedure TfCliente.Checa_Duplicidade;
begin
  tClienteIns.IndexFieldNames := 'CgcCpf';
  tClienteIns.SetKey;
  tClienteInsCgcCpf.AsString := DBEdit9.Text;
  if (tClienteIns.GotoKey) and (tClienteInsCodigo.AsString <> DM1.tClienteCodigo.AsString) then
    begin
      case MessageDlg('O cliente ' + tClienteInsNome.AsString + ', já está cadastrado com o CNPJ digitado! Deseja continuar assim mesmo?',
           mtInformation,mbYesNoCancel,0) of
        mrNo     : DBEdit9.SetFocus;
        mrCancel : BitBtn5.Click;
      end;
    end;
  tClienteIns.IndexFieldNames := 'Codigo';  
end;

procedure TfCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tCliente.Close;
      DM1.tClienteRef.Close;
      DM1.tVendedor.Close;
      DM1.tCondPgto.Close;
      DM1.tObsAux.Close;
      DM1.tTransp.Close;
      DM1.tTipoCobranca.Close;
      DM1.tNatOperacao.Close;
      DM1.tGrupo.Close;
    end;
  qVerifica.Close;
  DM2.qTipoIndicacao.Close;
  DM2.qPais.Close;
  RxFilterContato.Active       := False;
  //NFe 2.00
  rxFilterSitTributaria.Active := False;

  Action := Cafree;
end;

procedure TfCliente.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfCliente.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsClientes.AsBoolean then
  begin
    DM1.tCliente.Refresh;
    DM1.tCliente.IndexFieldNames := 'Codigo';
    tClienteIns.IndexFieldNames  := 'Codigo';
    tClienteIns.Refresh;
    tClienteIns.Last;
    DM1.tCliente.Insert;
    DM1.tClienteCodigo.AsInteger := tClienteInsCodigo.AsInteger + 1;
    DBDateEdit1.Date := Date();
    DM1.tCliente.Post;
    DM1.tCliente.Edit;
    Habilita;
    DBEdit1.SetFocus;
    DBRadioGroup1.ItemIndex := 0;
    DBRadioGroup1Exit(Sender);
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfCliente.BitBtn2Click(Sender: TObject);
begin
  if DM1.tClienteCodigo.AsInteger < 1 then
    exit;
  if DM1.tUsuarioAltClientes.AsBoolean then
  begin
    DM1.tCliente.IndexFieldNames := 'Codigo';
    DM1.tCliente.Edit;
    BitBtn2.Tag := 1;
    Habilita;
    DBEdit1.SetFocus;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfCliente.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcClientes.AsBoolean then
  begin
    if DM1.tClienteCodigo.AsInteger > 0 then
    begin
      qVerifica.Close;
      qVerifica.ParamByName('CodCliente').AsInteger := DM1.tClienteCodigo.AsInteger;
      qVerifica.Open;
      if qVerifica.RecordCount > 0 then
        ShowMessage('Cliente não pode ser excluído')
      else
      if MessageDlg('Deseja realmente excluir o cliente?',mtconfirmation,[mbok,mbno],0)=mrok then
        Excluir_Registro;
    end;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfCliente.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Excluir_Registro
  else
  if BitBtn2.Tag = 1 then
    DM1.tCliente.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
end;

procedure TfCliente.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfCliente.BitBtn6Click(Sender: TObject);
begin
  if DbEdit42.Text = '     -   ' then
    begin
      ShowMessage('Cliente sem CEP, em caso de exportação, preencher com zeros');
      DbEdit42.SetFocus;
    end
  else
  if Dm1.tClienteMDia2.AsInteger < Dm1.tClienteMDia1.AsInteger then
    begin
      ShowMessage('Dia de pgto. "2" não pode ser menor que Dia de pgto. "1"!');
      RxDBComboBox2.SetFocus;
    end
  else
    begin
      if (DM1.tClienteAprovCredito.AsString <> 'S') and (DM1.tClienteAprovCredito.AsString <> 'C') then
        DM1.tClienteTipoAprov.AsString := '';
      Move_DDD;
      DM1.tCliente.Post;
      if DM1.tParametrosUsaFB.AsBoolean then
        Prc_Gravar_Cliente_FB(DM1.tClienteCodigo.AsInteger);

      DM1.tCliente.Refresh;
      tClienteIns.Refresh;
      Habilita;
      BitBtn2.Tag := 0;
      BitBtn1.SetFocus;
    end;
end;

procedure TfCliente.DBEdit9Exit(Sender: TObject);
begin
 if (DBRadioGroup1.Value = 'F') and (DBEdit9.Text <> '   .   .   -  ') then
   begin
     VerificaCPF1.Entrada := DBEdit9.Text;
   if not VerificaCPF1.Resultado then
    begin
     ShowMessage('Número de CPF inválido!');
     DBEdit9.SetFocus;
    end;
  end
 else
 if (DBRadioGroup1.Value = 'J') and (DBEdit9.Text <> '  .   .   /    -  ') then
  begin
     VerificaCGC1.Entrada := DBEdit9.Text;
   if not VerificaCGC1.Resultado then
    begin
     ShowMessage('Número de CNPJ inválido!');
     DBEdit9.SetFocus;
    end;
  end;
  Checa_Duplicidade;
end;

procedure TfCliente.DBEdit9Enter(Sender: TObject);
begin
  DM1.tClientePessoa.AsString := DBRadioGroup1.Value;
  DM1.tClienteCgcCpf.EditMask := Monta_MascaraDoc(DM1.tClientePessoa.AsString);
end;

procedure TfCliente.DBRadioGroup1Exit(Sender: TObject);
begin
  DM1.tClientePessoa.AsString := DBRadioGroup1.Value;
  DM1.tClienteCgcCpf.EditMask := Monta_MascaraDoc(DM1.tClientePessoa.AsString);
end;

procedure TfCliente.BitBtn7Click(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
  begin
    DM1.tClienteEndPgto.AsString     := tClienteInsEndPgto.AsString;
    DM1.tClienteBairroPgto.AsString  := tClienteInsBairroPgto.AsString;
    DM1.tClienteCodCidadeP.AsInteger := tClienteInsCodCidadeP.AsInteger;
    DM1.tClienteCepPgto.AsString     := tClienteInsCepPgto.AsString;
    DM1.tClienteUfPgto.AsString      := tClienteInsUfPgto.AsString;
    DM1.tClienteCgcCpfPgto.AsString  := tClienteInsCgcCpfPgto.AsString;
    DM1.tClienteInscPgto.AsString    := tClienteInsInscPgto.AsString;
  end;
  RxDBLookupCombo7.ClearValue;
end;

procedure TfCliente.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'CgcCpf';
  Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfCliente.RxDBLookupCombo2Exit(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfCliente.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfCliente.RxDBLookupCombo3Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.RxDBLookupCombo2Change(Sender: TObject);
begin
  Edit1.Text := RxDBLookupCombo2.Text;
end;

procedure TfCliente.Edit1Change(Sender: TObject);
begin
  try
    DM1.tCliente.IndexFieldNames := 'CgcCpf';
    DM1.tCliente.FindNearest([Edit1.Text]);
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfCliente.RxDBLookupCombo5DropDown(Sender: TObject);
begin
  DM1.tCliente.Refresh;
  DM1.tCliente.IndexFieldNames := 'Fantasia';
end;

procedure TfCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = 87)) and (DM1.tCliente.State in [dsEdit,dsInsert]) then
  begin
    DBCheckBox1.Enabled  := not(DBCheckBox1.Enabled);
    DBCheckBox8.ReadOnly := not(DBCheckBox8.ReadOnly);
  end;
  if (Key = Vk_F2) and (DM1.tCliente.State in [dsBrowse]) then
  begin
    fConsCliente := TfConsCliente.Create(Self);
    fConsCliente.ShowModal;
  end;
end;

procedure TfCliente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tCliente.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o cliente antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfCliente.SpeedButton3Click(Sender: TObject);
begin
  fCopiaFornec := TfCopiaFornec.Create(Self);
  fCopiaFornec.ShowModal;
end;

procedure TfCliente.RxDBLookupCombo9Exit(Sender: TObject);
begin
  if (RxDBLookupCombo27.Text = '') and (RxDBLookupCombo9.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo9.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tClienteUfEntrega.AsString := DM1.tCidadeEstado.AsString;
        end;
    end;
end;

procedure TfCliente.RxDBLookupCombo11Exit(Sender: TObject);
begin
  if (RxDBLookupCombo12.Text = '') and (RxDBLookupCombo11.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo11.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tClienteUfEntrega.AsString := DM1.tCidadeEstado.AsString;
        end;
    end;
end;

procedure TfCliente.RxDBLookupCombo13Enter(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfCliente.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.Imprimir1Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if not DM1.tCliente.IsEmpty then
    begin
      vCodigo                      := DM1.tClienteCodigo.AsInteger;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.Filter          := 'Codigo = '''+IntToStr(vCodigo)+'''';
      DM1.tCliente.Filtered        := True;
      fRelCadCli                   := TfRelCadCli.Create(Self);
      if MessageDlg('Deseja imprimir o histórico do pedido?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          QRCompositeReport1.Print;
          fRelCadCli.QuickRep2.Free;
        end
      else
        fRelCadCli.QuickRep1.Print;
      fRelCadCli.QuickRep1.Free;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([vCodigo]);
    end
  else
    ShowMessage('Não há registro p/ ser impresso!');
end;

procedure TfCliente.Visualizar1Click(Sender: TObject);
var
  vCodigo : Integer;
begin
  if not DM1.tCliente.IsEmpty then
    begin
      vCodigo                      := DM1.tClienteCodigo.AsInteger;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.Filter          := 'Codigo = '''+IntToStr(vCodigo)+'''';
      DM1.tCliente.Filtered        := True;
      fRelCadCli                   := TfRelCadCli.Create(Self);
      if MessageDlg('Deseja imprimir o histórico do pedido?',mtconfirmation,[mbok,mbno],0)=mrok then
        begin
          QRCompositeReport1.Preview;
          fRelCadCli.QuickRep2.Free;
        end
      else
        fRelCadCli.QuickRep1.Preview;
      fRelCadCli.QuickRep1.Free;
      DM1.tCliente.Filtered        := False;
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([vCodigo]);
    end
  else
    ShowMessage('Não há registro p/ ser impresso!');
end;

procedure TfCliente.QRCompositeReport1AddReports(Sender: TObject);
begin
  QRCompositeReport1.Reports.Add(fRelCadCli.QuickRep1);
  QRCompositeReport1.Reports.Add(fRelCadCli.QuickRep2);
end;

procedure TfCliente.RxDBLookupCombo15Enter(Sender: TObject);
begin
  DM1.tObsAux.IndexFieldNames := 'Nome';
end;

procedure TfCliente.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioObsAux.AsBoolean then
    begin
      fObsAux := TfObsAux.Create(Self);
      fObsAux.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tClienteRef.Open;
  DM1.tVendedor.Open;
  DM1.tCondPgto.Open;
  DM1.tObsAux.Open;
  DM1.tContas.Open;
  DM1.tTransp.Open;
  DM1.tTipoCobranca.Open;
  DM1.tNatOperacao.Open;
  DM1.tGrupoCliente.Open;
  DM1.tParametros.Open;
  DM2.qTipoIndicacao.Open;
  DM1.tSitTributaria.Open;
  DM2.qPais.Open;

  if vCodClientePos > 0 then
    DM1.tCliente.Locate('Codigo',vCodClientePos,[loCaseInsensitive]);

  TabSheet11.TabVisible        := DM1.tParametrosUsaTipoIndicacao.AsBoolean;
  RxFilterContato.Active       := True;
  //NFe 2.00
  rxFilterSitTributaria.Active := True;

  GroupBox1.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
end;

procedure TfCliente.RxDBComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    DM1.tClienteMDia1.Clear;
end;

procedure TfCliente.RxDBComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    DM1.tClienteMDia2.Clear;
end;

procedure TfCliente.RxDBLookupCombo20Enter(Sender: TObject);
begin
  DM1.tGrupoCliente.IndexFieldNames := 'Nome';
end;

procedure TfCliente.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioGrupoCliente.AsBoolean then
    begin
      fGrupoCliente := TfGrupoCliente.Create(Self);
      fGrupoCliente.ShowModal;
      DM1.tGrupoCliente.Refresh;
      DM1.tGrupoCliente.IndexFieldNames := 'Nome';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo21Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfCliente.RxSpeedButton2Click(Sender: TObject);
begin
  RxDBFilter4.Active := not(RxDBFilter4.Active);
end;

procedure TfCliente.BitBtn8Click(Sender: TObject);
begin
  if DM1.tClienteCodigo.AsInteger > 0 then
    vCodClientePos := DM1.tClienteCodigo.AsInteger;
  Close;
end;

procedure TfCliente.RxDBLookupCombo7Enter(Sender: TObject);
begin
  tClienteIns.IndexFieldNames := 'Nome';
end;

procedure TfCliente.Panel6Enter(Sender: TObject);
begin
  RxDBLookupCombo7.ClearValue;
end;

procedure TfCliente.CurrencyEdit1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
end;

procedure TfCliente.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([CurrencyEdit1.AsInteger]);
    end;
end;

procedure TfCliente.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioTipoIndicacao.AsBoolean then
    begin
      fTipoIndicacao := TfTipoIndicacao.Create(Self);
      fTipoIndicacao.ShowModal;
      DM2.qTipoIndicacao.Close;
      DM2.qTipoIndicacao.Open;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.RxDBLookupCombo19Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfCliente.RxDBLookupCombo19Exit(Sender: TObject);
begin
  if (RxDBLookupCombo22.Text = '') and (RxDBLookupCombo19.Text <> '') then
    begin
      DM1.tCidade.IndexFieldNames := 'Codigo';
      DM1.tCidade.SetKey;
      DM1.tCidadeCodigo.AsInteger := RxDBLookupCombo19.KeyValue;
      if DM1.tCidade.GotoKey then
        begin
          if DM1.tCidadeEstado.AsString <> '' then
            DM1.tClienteUf.AsString := DM1.tCidadeEstado.AsString;
          if (DBEdit42.Text = '') and (DM1.tCidadeCep.AsString <> '') then
            DM1.tClienteCep.AsString := DM1.tCidadeCep.AsString;
          if DM1.tCidadePrefixo.AsString <> '' then
            DM1.tClienteDDDFone1.AsString := DM1.tCidadePrefixo.AsString;
        end;
    end;
end;

procedure TfCliente.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioCidade.AsBoolean then
    begin
      fCidade := TfCidade.Create(Self);
      fCidade.ShowModal;
      DM1.tCidade.IndexFieldNames := 'Nome';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.SpeedButton10Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
    begin
      fUf := TfUf.Create(Self);
      fUf.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfCliente.BitBtn11Click(Sender: TObject);
begin
  fClienteRef := TfClienteRef.Create(Self);
  fClienteRef.Tag := 0;
  case RzPageContato.ActivePageIndex of
    0 : fClienteRef.vTipoRef := 1;
    1 : fClienteRef.vTipoRef := 2;
    2 : fClienteRef.vTipoRef := 3;
  end;
  DM1.tClienteRef.Insert;
  fClienteRef.ShowModal;
end;

procedure TfCliente.BitBtn12Click(Sender: TObject);
begin
  if (DM1.tClienteRef.RecordCount > 0) and (DM1.tClienteRefItem.AsInteger > 0) then
    begin
      fClienteRef := TfClienteRef.Create(Self);
      fClienteRef.Tag := 0;
      case RzPageContato.ActivePageIndex of
        0 : fClienteRef.vTipoRef := 1;
        1 : fClienteRef.vTipoRef := 2;
        2 : fClienteRef.vTipoRef := 3;
      end;
      DM1.tClienteRef.Edit;
      fClienteRef.ShowModal;
    end
  else
    ShowMessage('Não existe registo para alterar!');
end;

procedure TfCliente.BitBtn13Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;
  if (DM1.tClienteRef.RecordCount > 0) and (DM1.tClienteRefItem.AsInteger > 0) then
    DM1.tClienteRef.Delete
  else
    ShowMessage('Não existe registro para excluir!');
  DM1.tClienteRef.Refresh;
end;

procedure TfCliente.RzPageContatoTabClick(Sender: TObject);
begin
  Filtra_Contato;
end;

procedure TfCliente.RzTabSheet6Enter(Sender: TObject);
begin
  Filtra_Contato;
end;

procedure TfCliente.RzTabSheet6PaintBackground(Sender: TObject;
  ACanvas: TCanvas; const ARect: TRect; var Handled: Boolean);
begin
  Filtra_Contato;
end;

procedure TfCliente.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fCSTIPI := TfCSTIPI.Create(Self);
      fCSTIPI.ShowModal;
      DM1.tCSTIPI.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir o formulário!');
end;

procedure TfCliente.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      //NFe 2.00
      rxFilterSitTributaria.Active := False;
      fSitTributariaSimples := TfSitTributariaSimples.Create(Self);
      fSitTributariaSimples.ShowModal;
      DM1.tSitTributaria.Refresh;
      rxFilterSitTributaria.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir o formulário!');
end;
    
procedure TfCliente.Excluir_Registro;
var
  vCodAux : Integer;
begin
  vCodAux := DM1.tClienteCodigo.AsInteger;
  DM1.tClienteRef.First;
  while not DM1.tClienteRef.Eof do
    DM1.tClienteRef.Delete;
  DM1.tCliente.Delete;

  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Excluir_Cliente_FB(vCodAux);

  DM1.tCliente.Refresh;

end;

procedure TfCliente.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  DM1.tClienteEndLogo.AsString := OpenPictureDialog2.FileName;
end;

function TfCliente.Monta_MascaraDoc(Pessoa: String): String;
begin
  Result := '';
  if Pessoa = 'J' then
    Result := '99.999.999/9999-99'
  else
  if Pessoa = 'F' then
    Result := '999.999.999-99';
end;

procedure TfCliente.RxDBComboBox4Exit(Sender: TObject);
var
  vAux : String;
begin
  vAux := '';
  case RxDBComboBox4.ItemIndex of
    0 : vAux := 'J';
    1 : vAux := 'F';
  end;
  if vAux <> '' then
    DM1.tClienteCgcCpfEntrega.EditMask := Monta_MascaraDoc(vAux);
  DM1.tClientePessoaEntrega.AsString := vAux;
end;

procedure TfCliente.RxDBComboBox5Exit(Sender: TObject);
var
  vAux : String;
begin
  case RxDBComboBox5.ItemIndex of
    0 : vAux := 'J';
    1 : vAux := 'F';
  end;
  DM1.tClientePessoaPgto.AsString := vAux;
  DM1.tClienteCgcCpfPgto.EditMask := Monta_MascaraDoc(vAux);
end;

procedure TfCliente.DBEdit55Exit(Sender: TObject);
begin
  if (Trim(DM1.tClientePessoaEntrega.AsString) = '') and (DM1.tClienteCgcCpfEntrega.AsString <> '') then
  begin
    ShowMessage('Não foi informada a pessoa (Jurídica/Física)');
    DM1.tClienteCgcCpfEntrega.Clear;
    RxDBComboBox4.SetFocus;
  end;
  if (DM1.tClientePessoaEntrega.AsString = 'F') and (DBEdit55.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit55.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit55.SetFocus;
    end;
  end
  else
  if (DM1.tClientePessoaEntrega.AsString = 'J') and (DBEdit55.Text <> '  .   .   /    -  ') then
  begin
    VerificaCGC1.Entrada := DBEdit55.Text;
    if not VerificaCGC1.Resultado then
    begin
      ShowMessage('Número de CNPJ inválido!');
      DBEdit55.SetFocus;
    end;
  end;
end;

procedure TfCliente.DBEdit13Exit(Sender: TObject);
begin
  if (Trim(DM1.tClientePessoaPgto.AsString) = '') and (DM1.tClienteCgcCpfPgto.AsString <> '') then
  begin
    ShowMessage('Não foi informada a pessoa (Jurídica/Física)');
    DM1.tClienteCgcCpfPgto.Clear;
    RxDBComboBox5.SetFocus;
  end;
  if (DM1.tClientePessoaPgto.AsString = 'F') and (DBEdit13.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit13.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit13.SetFocus;
    end;
  end
  else
  if (DM1.tClientePessoaPgto.AsString = 'J') and (DBEdit13.Text <> '  .   .   /    -  ') then
  begin
    VerificaCGC1.Entrada := DBEdit13.Text;
    if not VerificaCGC1.Resultado then
    begin
      ShowMessage('Número de CNPJ inválido!');
      DBEdit13.SetFocus;
    end;
  end;
end;

procedure TfCliente.DBEdit13Enter(Sender: TObject);
var
  vAux : String;
begin
  vAux := '';
  case RxDBComboBox5.ItemIndex of
    0 : vAux := 'J';
    1 : vAux := 'F';
  end;
  if vAux <> '' then
    DM1.tClienteCgcCpfPgto.EditMask := Monta_MascaraDoc(vAux);
end;

procedure TfCliente.DBCheckBox12Click(Sender: TObject);
begin
  Label23.Visible  := DBCheckBox12.Checked;
  DBEdit16.Visible := DBCheckBox12.Checked;
end;

procedure TfCliente.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

end.
