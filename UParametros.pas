unit UParametros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, DBTables,
  DB, ToolEdit, CurrEdit, ComCtrls, RxLookup, RzTabs, RxDBComb, Grids,
  DBGrids, SMDBGrid;

type
  TfParametros = class(TForm)
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBCheckBox2: TDBCheckBox;
    DBEdit11: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox7: TDBCheckBox;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DBCheckBox16: TDBCheckBox;
    Label21: TLabel;
    TabSheet2: TRzTabSheet;
    Label18: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label16: TLabel;
    Label28: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DirectoryEdit2: TDirectoryEdit;
    DBEdit12: TDBEdit;
    DirectoryEdit3: TDirectoryEdit;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    Label39: TLabel;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    Label29: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    TabSheet3: TRzTabSheet;
    Label33: TLabel;
    DBEdit21: TDBEdit;
    Label34: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBCheckBox23: TDBCheckBox;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    TabSheet4: TRzTabSheet;
    Label35: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn7: TBitBtn;
    BitBtn16: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SMDBGrid1: TSMDBGrid;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    Label36: TLabel;
    DBEdit22: TDBEdit;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    RxDBComboBox3: TRxDBComboBox;
    Label37: TLabel;
    DBCheckBox45: TDBCheckBox;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    DBCheckBox46: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label87: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    RxDBComboBox53: TRxDBComboBox;
    RxDBComboBox66: TRxDBComboBox;
    DBEdit27: TDBEdit;
    RxDBComboBox67: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBCheckBox28Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
  private
    { Private declarations }
    vOrdemPosicao : Integer;
    
    procedure Habilita_Desabilita;
  public
    { Public declarations }
  end;

var
  fParametros: TfParametros;

implementation

uses UDM1, UDM2, UPosicao;

{$R *.DFM}

procedure TfParametros.Habilita_Desabilita;
begin
  BitBtn1.Enabled   := not(BitBtn1.Enabled);
  BitBtn2.Enabled   := not(BitBtn2.Enabled);
  BitBtn3.Enabled   := not(BitBtn3.Enabled);
  BitBtn4.Enabled   := not(BitBtn4.Enabled);
  TabSheet1.Enabled := not(TabSheet1.Enabled);
  TabSheet2.Enabled := not(TabSheet2.Enabled);
  TabSheet3.Enabled := not(TabSheet3.Enabled);
  TabSheet4.Enabled := not(TabSheet4.Enabled);
end;

procedure TfParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCliente.Close;
  DM1.tNatOperacao.Close;
  DM2.qPosicao.Close;

  Action := Cafree;
end;

procedure TfParametros.BitBtn1Click(Sender: TObject);
begin
  DM1.tParametrosCaminhoGrids.AsString    := DirectoryEdit1.Text;
  DM1.tParametrosEndSalvarXMLNFe.AsString := DirectoryEdit2.Text;
  DM1.tParametrosEndSalvarPDFNFe.AsString := DirectoryEdit3.Text;
  DM1.tParametros.Post;
  Habilita_Desabilita;
end;

procedure TfParametros.BitBtn2Click(Sender: TObject);
begin
  DM1.tParametros.Cancel;
  Habilita_Desabilita;
end;

procedure TfParametros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tParametros.State in [dsEdit] then
    begin
      CanClose := False;
      ShowMessage('Você deve confirmar ou cancelar este parâmetro!');
    end
  else
    CanClose := True;
end;

procedure TfParametros.BitBtn3Click(Sender: TObject);
begin
  DM1.tParametros.Edit;
  Habilita_Desabilita;
end;

procedure TfParametros.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfParametros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    DBEdit1.ReadOnly := not(DBEdit1.ReadOnly);
    DBEdit2.ReadOnly := not(DBEdit2.ReadOnly);
    DBRadioGroup2.ReadOnly := not(DBRadioGroup2.ReadOnly);
    DirectoryEdit1.ReadOnly := not(DirectoryEdit1.ReadOnly);
    DirectoryEdit2.ReadOnly := not(DirectoryEdit2.ReadOnly);
    DirectoryEdit3.ReadOnly := not(DirectoryEdit3.ReadOnly);
    DBCheckBox8.ReadOnly    := not(DBCheckBox8.ReadOnly);
    DBCheckBox9.ReadOnly    := not(DBCheckBox9.ReadOnly);
    DBCheckBox10.ReadOnly   := not(DBCheckBox10.ReadOnly);
    DBCheckBox11.ReadOnly   := not(DBCheckBox11.ReadOnly);
    DBEdit13.ReadOnly       := not(DBEdit13.ReadOnly);
    DBEdit15.ReadOnly       := not(DBEdit15.ReadOnly);
    DBEdit16.ReadOnly       := not(DBEdit16.ReadOnly);
    DBEdit17.ReadOnly       := not(DBEdit17.ReadOnly);
    DBCheckBox13.ReadOnly   := not(DBCheckBox13.ReadOnly);
    DBCheckBox21.Visible    := not(DBCheckBox21.Visible);
    DBCheckBox22.Visible    := not(DBCheckBox22.Visible);
  end;
end;

procedure TfParametros.FormShow(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex := 0;
  DM1.tCliente.Open;
  DM1.tNatOperacao.Open;
  DM1.tParametrosPosicao.Open;
  DM1.tPosicao2.Open;

  DM2.qPosicao.Open; 

  DBEdit15.Enabled      := DM1.tUsuarioAdministrador.AsBoolean;
  DirectoryEdit1.Text   := DM1.tParametrosCaminhoGrids.AsString;
  DirectoryEdit2.Text   := DM1.tParametrosEndSalvarXMLNFe.AsString;
  DirectoryEdit3.Text   := DM1.tParametrosEndSalvarPDFNFe.AsString;
  TabSheet1.Enabled     := False;
  TabSheet2.Enabled     := False;
  DBCheckBox21.ReadOnly := not(DM1.tUsuarioAdministrador.AsBoolean);
  TabSheet4.TabVisible := DM1.tParametrosUsaPedAmostra.AsBoolean;
end;

procedure TfParametros.DBCheckBox28Click(Sender: TObject);
begin
  TabSheet4.TabVisible := DBCheckBox28.Checked;
end;

procedure TfParametros.SpeedButton11Click(Sender: TObject);
begin
  if not DM1.tUsuarioPosicao.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ' não autorizado a abrir este formulário!');
    exit;
  end;
  fPosicao := TfPosicao.Create(Self);
  fPosicao.ShowModal;
end;

procedure TfParametros.BitBtn7Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if RxDBLookupCombo9.Text = '' then
  begin
    ShowMessage('É obrigatório informar a Posição!');
    exit;
  end;

  if not(CheckBox1.Checked) and not(CheckBox2.Checked) then
  begin
    ShowMessage('É obrigatório informar para imprimir o Material ou a Cor!');
    exit;
  end;

  if vOrdemPosicao > 0 then
  begin
    if DM1.tParametrosPosicao.Locate('Ordem',vOrdemPosicao,[loCaseInsensitive]) then
      DM1.tParametrosPosicao.Edit
    else
      vOrdemPosicao := 0;
  end;
  if vOrdemPosicao <= 0 then
  begin
    DM1.tParametrosPosicao.Refresh;
    DM1.tParametrosPosicao.Last;
    vItemAux := DM1.tParametrosPosicaoOrdem.AsInteger;
    vItemAux := vItemAux + 1;
    if vItemAux > 11 then
    begin
      ShowMessage('Permitido somente 11 Posições!');
      exit;
    end;
    DM1.tParametrosPosicao.Insert;
    DM1.tParametrosPosicaoOrdem.AsInteger     := vItemAux;
  end;
  DM1.tParametrosPosicaoCodPosicao.AsInteger  := RxDBLookupCombo9.KeyValue;
  DM1.tParametrosPosicaoImpMaterial.AsBoolean := CheckBox1.Checked;
  DM1.tParametrosPosicaoImpCor.AsBoolean      := CheckBox2.Checked;
  DM1.tParametrosPosicao.Post;
  DM1.tParametrosPosicao.Refresh;

  SpeedButton3Click(Sender);
  RxDBLookupCombo9.SetFocus;
end;

procedure TfParametros.SpeedButton3Click(Sender: TObject);
begin
  RxDBLookupCombo9.ClearValue;
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  vOrdemPosicao     := 0; 
end;

procedure TfParametros.BitBtn16Click(Sender: TObject);
begin
  if DM1.tParametrosPosicao.IsEmpty then
    exit;

  RxDBLookupCombo9.KeyValue := DM1.tParametrosPosicaoCodPosicao.AsInteger;
  CheckBox1.Checked         := DM1.tParametrosPosicaoImpMaterial.AsBoolean;
  CheckBox2.Checked         := DM1.tParametrosPosicaoImpCor.AsBoolean;
  vOrdemPosicao             := DM1.tParametrosPosicaoOrdem.AsInteger;
  RxDBLookupCombo9.SetFocus;
end;

procedure TfParametros.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tParametrosPosicao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbOK,mbNo],0) = mrNo then
    exit;

  DM1.tParametrosPosicao.Delete;
end;

procedure TfParametros.DBEdit23Exit(Sender: TObject);
begin
  if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 4 then
  begin
    ShowMessage('Qtd. casas decimais no valor unitário do pedido maior que 4!');
    DBEdit23.SetFocus;
  end;
end;

end.

