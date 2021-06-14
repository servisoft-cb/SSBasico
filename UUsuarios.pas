unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, ComCtrls, DB, DBTables,
  RxLookup;

type
  TfUsuarios = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Bevel4: TBevel;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    BitBtn26: TBitBtn;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Bevel5: TBevel;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    BitBtn25: TBitBtn;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Bevel6: TBevel;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    Bevel7: TBevel;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    Bevel8: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    BitBtn30: TBitBtn;
    TabSheet6: TTabSheet;
    Panel10: TPanel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    BitBtn32: TBitBtn;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    TabSheet7: TTabSheet;
    Panel11: TPanel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    TabSheet8: TTabSheet;
    Panel12: TPanel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox84: TDBCheckBox;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    BitBtn31: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    BitBtn40: TBitBtn;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox107: TDBCheckBox;
    DBCheckBox108: TDBCheckBox;
    DBCheckBox111: TDBCheckBox;
    DBCheckBox112: TDBCheckBox;
    DBCheckBox115: TDBCheckBox;
    BitBtn42: TBitBtn;
    DBCheckBox120: TDBCheckBox;
    BitBtn48: TBitBtn;
    DBCheckBox122: TDBCheckBox;
    DBCheckBox126: TDBCheckBox;
    DBCheckBox127: TDBCheckBox;
    DBCheckBox128: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    BitBtn36: TBitBtn;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    Panel4: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn22: TBitBtn;
    DBCheckBox48: TDBCheckBox;
    BitBtn18: TBitBtn;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    BitBtn41: TBitBtn;
    DBCheckBox57: TDBCheckBox;
    BitBtn46: TBitBtn;
    DBCheckBox121: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    BitBtn24: TBitBtn;
    DBCheckBox23: TDBCheckBox;
    BitBtn43: TBitBtn;
    DBCheckBox37: TDBCheckBox;
    BitBtn49: TBitBtn;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    BitBtn50: TBitBtn;
    DBCheckBox113: TDBCheckBox;
    DBCheckBox118: TDBCheckBox;
    DBCheckBox119: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    BitBtn38: TBitBtn;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox125: TDBCheckBox;
    BitBtn51: TBitBtn;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    BitBtn19: TBitBtn;
    DBCheckBox30: TDBCheckBox;
    BitBtn21: TBitBtn;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    BitBtn45: TBitBtn;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox98: TDBCheckBox;
    DBCheckBox99: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox101: TDBCheckBox;
    BitBtn39: TBitBtn;
    DBCheckBox104: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    DBCheckBox110: TDBCheckBox;
    BitBtn44: TBitBtn;
    DBCheckBox114: TDBCheckBox;
    DBCheckBox116: TDBCheckBox;
    DBCheckBox124: TDBCheckBox;
    DBCheckBox130: TDBCheckBox;
    DBCheckBox131: TDBCheckBox;
    DBCheckBox132: TDBCheckBox;
    BitBtn47: TBitBtn;
    DBCheckBox133: TDBCheckBox;
    BitBtn52: TBitBtn;
    DBCheckBox134: TDBCheckBox;
    DBCheckBox135: TDBCheckBox;
    DBCheckBox136: TDBCheckBox;
    DBCheckBox137: TDBCheckBox;
    DBCheckBox117: TDBCheckBox;
    DBCheckBox138: TDBCheckBox;
    BitBtn53: TBitBtn;
    DBCheckBox139: TDBCheckBox;
    DBCheckBox140: TDBCheckBox;
    BitBtn54: TBitBtn;
    DBCheckBox141: TDBCheckBox;
    DBCheckBox144: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    BitBtn55: TBitBtn;
    DBCheckBox63: TDBCheckBox;
    BitBtn56: TBitBtn;
    DBCheckBox145: TDBCheckBox;
    DBCheckBox146: TDBCheckBox;
    DBCheckBox147: TDBCheckBox;
    DBCheckBox148: TDBCheckBox;
    DBCheckBox149: TDBCheckBox;
    BitBtn57: TBitBtn;
    BitBtn37: TBitBtn;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    BitBtn23: TBitBtn;
    BitBtn27: TBitBtn;
    DBCheckBox96: TDBCheckBox;
    BitBtn58: TBitBtn;
    Bevel25: TBevel;
    DBCheckBox123: TDBCheckBox;
    BitBtn59: TBitBtn;
    DBCheckBox129: TDBCheckBox;
    BitBtn60: TBitBtn;
    DBCheckBox142: TDBCheckBox;
    BitBtn61: TBitBtn;
    DBCheckBox143: TDBCheckBox;
    BitBtn62: TBitBtn;
    BitBtn63: TBitBtn;
    DBCheckBox150: TDBCheckBox;
    DBCheckBox151: TDBCheckBox;
    DBCheckBox152: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox153: TDBCheckBox;
    DBCheckBox154: TDBCheckBox;
    BitBtn64: TBitBtn;
    DBCheckBox155: TDBCheckBox;
    DBCheckBox156: TDBCheckBox;
    BitBtn65: TBitBtn;
    Bevel26: TBevel;
    DBCheckBox157: TDBCheckBox;
    BitBtn66: TBitBtn;
    DBCheckBox158: TDBCheckBox;
    DBCheckBox159: TDBCheckBox;
    DBCheckBox160: TDBCheckBox;
    BitBtn67: TBitBtn;
    DBCheckBox161: TDBCheckBox;
    BitBtn68: TBitBtn;
    DBCheckBox162: TDBCheckBox;
    BitBtn69: TBitBtn;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox163: TDBCheckBox;
    BitBtn70: TBitBtn;
    DBCheckBox164: TDBCheckBox;
    BitBtn71: TBitBtn;
    DBCheckBox165: TDBCheckBox;
    BitBtn72: TBitBtn;
    DBCheckBox166: TDBCheckBox;
    BitBtn73: TBitBtn;
    DBCheckBox167: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBCheckBox27Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBCheckBox24Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBCheckBox25Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBCheckBox33Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DBCheckBox41Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DBCheckBox26Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBCheckBox39Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure DBCheckBox22Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure DBCheckBox10Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure DBCheckBox12Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure DBCheckBox44Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure DBCheckBox67Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure DBCheckBox83Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure DBCheckBox85Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure DBCheckBox87Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure DBCheckBox89Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure DBCheckBox102Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn42Click(Sender: TObject);
    procedure DBCheckBox115Click(Sender: TObject);
    procedure DBCheckBox57Click(Sender: TObject);
    procedure BitBtn46Click(Sender: TObject);
    procedure DBCheckBox120Click(Sender: TObject);
    procedure BitBtn48Click(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure DBCheckBox18Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure BitBtn49Click(Sender: TObject);
    procedure DBCheckBox37Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox30Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure DBCheckBox60Click(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure DBCheckBox101Click(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure DBCheckBox110Click(Sender: TObject);
    procedure BitBtn44Click(Sender: TObject);
    procedure DBCheckBox132Click(Sender: TObject);
    procedure BitBtn47Click(Sender: TObject);
    procedure DBCheckBox133Click(Sender: TObject);
    procedure BitBtn52Click(Sender: TObject);
    procedure DBCheckBox138Click(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure DBCheckBox140Click(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure DBCheckBox62Click(Sender: TObject);
    procedure BitBtn55Click(Sender: TObject);
    procedure DBCheckBox63Click(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure DBCheckBox149Click(Sender: TObject);
    procedure BitBtn57Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure BitBtn50Click(Sender: TObject);
    procedure DBCheckBox96Click(Sender: TObject);
    procedure DBCheckBox123Click(Sender: TObject);
    procedure BitBtn59Click(Sender: TObject);
    procedure BitBtn58Click(Sender: TObject);
    procedure DBCheckBox129Click(Sender: TObject);
    procedure BitBtn60Click(Sender: TObject);
    procedure DBCheckBox142Click(Sender: TObject);
    procedure BitBtn61Click(Sender: TObject);
    procedure DBCheckBox143Click(Sender: TObject);
    procedure BitBtn62Click(Sender: TObject);
    procedure BitBtn63Click(Sender: TObject);
    procedure DBCheckBox154Click(Sender: TObject);
    procedure BitBtn64Click(Sender: TObject);
    procedure DBCheckBox156Click(Sender: TObject);
    procedure BitBtn65Click(Sender: TObject);
    procedure DBCheckBox157Click(Sender: TObject);
    procedure BitBtn66Click(Sender: TObject);
    procedure DBCheckBox160Click(Sender: TObject);
    procedure BitBtn67Click(Sender: TObject);
    procedure DBCheckBox161Click(Sender: TObject);
    procedure BitBtn68Click(Sender: TObject);
    procedure DBCheckBox162Click(Sender: TObject);
    procedure BitBtn69Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DBCheckBox163Click(Sender: TObject);
    procedure BitBtn70Click(Sender: TObject);
    procedure DBCheckBox164Click(Sender: TObject);
    procedure BitBtn71Click(Sender: TObject);
    procedure DBCheckBox165Click(Sender: TObject);
    procedure BitBtn72Click(Sender: TObject);
    procedure DBCheckBox166Click(Sender: TObject);
    procedure BitBtn73Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Editar_Tabelas(Campo : String; Valor : Boolean);
    procedure Permissao(campo : String; Valor : Boolean);

  public
    { Public declarations }
  end;

var
  fUsuarios: TfUsuarios;
  vUsuario: String;
  
implementation

uses UDM1, UPermissoes;

{$R *.DFM}

procedure TfUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tFuncionario.Close;
  DM1.tUsuario.FindKey([vUsuario]);
  Action := Cafree;
end;

procedure TfUsuarios.Habilita;
begin
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  Panel1.Enabled       := not(Panel1.Enabled);
  Panel9.Enabled       := not(Panel9.Enabled);
end;

procedure TfUsuarios.Editar_Tabelas;
begin
  if DM1.tUsuario.State in [dsBrowse] then
    exit;

  DM1.tUsuarioAlt.Edit;
  DM1.tUsuarioExc.Edit;
  DM1.tUsuarioIns.Edit;

  DM1.tUsuarioIns.FieldByName(Campo).AsBoolean := Valor;
  DM1.tUsuarioExc.FieldByName(Campo).AsBoolean := Valor;
  DM1.tUsuarioAlt.FieldByName(Campo).AsBoolean := Valor;
end;

procedure TfUsuarios.Permissao(campo : String; Valor : Boolean);
begin
  if Valor then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := Campo;
      fPermissoes.DBCheckBox2.DataField := Campo;
      fPermissoes.DBCheckBox3.DataField := Campo;
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfUsuarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o usuário antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfUsuarios.BitBtn2Click(Sender: TObject);
begin
  Habilita;
  DM1.tUsuario.Insert;
  DBEdit1.Enabled := True;
  DBEdit1.SetFocus;
end;

procedure TfUsuarios.BitBtn3Click(Sender: TObject);
begin
  DM1.tUsuario.Edit;
  //Editar_Tabelas;
  Habilita;
  DBEdit1.Enabled := False;
  DBEdit2.SetFocus;
end;

procedure TfUsuarios.BitBtn5Click(Sender: TObject);
begin
  DM1.tUsuario.Cancel;
  DM1.tUsuarioAlt.Cancel;
  DM1.tUsuarioExc.Cancel;
  DM1.tUsuarioIns.Cancel;
  Habilita;
end;

procedure TfUsuarios.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioAlt.State in [dsEdit,dsInsert] then
    DM1.tUsuarioAlt.Post;
  if DM1.tUsuarioExc.State in [dsEdit,dsInsert] then
    DM1.tUsuarioExc.Post;
  if DM1.tUsuarioIns.State in [dsEdit,dsInsert] then
    DM1.tUsuarioIns.Post;
  DM1.tUsuario.Post;
  Habilita;
end;

procedure TfUsuarios.BitBtn4Click(Sender: TObject);
begin

 if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
    [mbOk,mbNo],0) = mrOk then
   begin
     DM1.tUsuarioAlt.Delete;
     DM1.tUsuarioExc.Delete;
     DM1.tUsuarioIns.Delete;
     DM1.tUsuario.Delete;
   end;
end;

procedure TfUsuarios.FormShow(Sender: TObject);
begin
  DM1.tFuncionario.Open;
  //99 = Usa compras, sem estoque
  //100 = Usa compras e estoque
  //101 = Controle Produção
  //102 = Controle Produção, Compras, Estoque e Nota Entrada
  DBCheckBox161.Visible := DM1.tParametrosUsaReferenciaEstruturada.AsBoolean;
  BitBtn68. Visible     := DM1.tParametrosUsaReferenciaEstruturada.AsBoolean;

  vUsuario := DM1.tUsuarioUsuario.AsString;
  DBCheckBox11.Visible  := (DM1.tEmpresaNivel.AsInteger >= 100);
  BitBtn51.Visible      := DBCheckBox11.Visible;
  DBCheckBox12.Visible  := True;
  BitBtn26.Visible      := DBCheckBox12.Visible;
  DBCheckBox59.Visible  := True;
  DBCheckBox59.Visible  := True;
  DBCheckBox50.Visible  := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox107.Visible := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox108.Visible := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox127.Visible := True;
  DBCheckBox128.Visible := True;
  DBCheckBox139.Visible := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox120.Visible := (DM1.tEmpresaNivel.AsInteger >= 100);
  BitBtn48.Visible      := DBCheckBox120.Visible;
  DBCheckBox31.Visible  := True;
  DBCheckBox114.Visible := True;
  DBCheckBox131.Visible := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox16.Visible  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox55.Visible  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox116.Visible := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox147.Visible := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox148.Visible := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox158.Visible := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox124.Visible := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox70.Visible  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox109.Visible := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox62.Visible  := (DM1.tEmpresaNivel.AsInteger >= 101);

  DBCheckBox11.Checked  := True;
  DBCheckBox12.Checked  := True;
  DBCheckBox59.Checked  := True;
  DBCheckBox59.Checked  := True;
  DBCheckBox50.Checked  := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox107.Checked := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox108.Checked := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox127.Checked := True;
  DBCheckBox128.Checked := True;
  DBCheckBox139.Checked := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox120.Checked := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox31.Checked  := True;
  DBCheckBox114.Checked := True;
  DBCheckBox131.Checked := (DM1.tEmpresaNivel.AsInteger >= 100);
  DBCheckBox16.Checked  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox55.Checked  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox116.Checked := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox147.Checked := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox148.Checked := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox158.Checked := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox124.Checked := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox70.Checked  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox109.Checked := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox62.Checked  := (DM1.tEmpresaNivel.AsInteger >= 101);
  DBCheckBox153.Visible := DM1.tParametrosUsaFB.AsBoolean;
  if not DBCheckBox153.Visible then
    DBCheckBox153.Checked := False;

  DBCheckBox157.Visible := DM1.tParametrosUsaPedAmostra.AsBoolean;
  BitBtn66.Visible      := DM1.tParametrosUsaPedAmostra.AsBoolean;

  DBCheckBox154.Visible := DM1.tParametrosUsaCupomFiscal.AsBoolean;
  DBCheckBox155.Visible := DM1.tParametrosUsaCupomFiscal.AsBoolean;
  BitBtn64.Visible      := DM1.tParametrosUsaCupomFiscal.AsBoolean;
end;

procedure TfUsuarios.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    if DBEdit2.PasswordChar = #0 then
      DBEdit2.PasswordChar := '*'
    else
      DBEdit2.PasswordChar := #0;
end;

procedure TfUsuarios.BitBtn7Click(Sender: TObject);
begin
  Permissao(DBCheckBox27.DataField,DBCheckBox27.Checked);
end;

procedure TfUsuarios.DBCheckBox27Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox27.DataField,DBCheckBox27.Checked);
end;

procedure TfUsuarios.DBCheckBox2Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox2.DataField,DBCheckBox2.Checked);
end;

procedure TfUsuarios.BitBtn8Click(Sender: TObject);
begin
  Permissao(DBCheckBox2.DataField,DBCheckBox2.Checked);
end;

procedure TfUsuarios.DBCheckBox24Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox24.DataField,DBCheckBox24.Checked);
end;

procedure TfUsuarios.BitBtn9Click(Sender: TObject);
begin
  Permissao(DBCheckBox24.DataField,DBCheckBox24.Checked);
end;

procedure TfUsuarios.DBCheckBox25Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox25.DataField,DBCheckBox25.Checked);
end;

procedure TfUsuarios.BitBtn10Click(Sender: TObject);
begin
  Permissao(DBCheckBox25.DataField,DBCheckBox25.Checked);
end;

procedure TfUsuarios.DBCheckBox3Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox3.DataField,DBCheckBox3.Checked);
end;

procedure TfUsuarios.BitBtn11Click(Sender: TObject);
begin
  Permissao(DBCheckBox3.DataField,DBCheckBox3.Checked);
end;

procedure TfUsuarios.DBCheckBox4Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox4.DataField,DBCheckBox4.Checked);
end;

procedure TfUsuarios.BitBtn12Click(Sender: TObject);
begin
  Permissao(DBCheckBox4.DataField,DBCheckBox4.Checked);
end;

procedure TfUsuarios.DBCheckBox33Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox33.DataField,DBCheckBox33.Checked);
end;

procedure TfUsuarios.BitBtn13Click(Sender: TObject);
begin
  Permissao(DBCheckBox33.DataField,DBCheckBox33.Checked);
end;

procedure TfUsuarios.DBCheckBox5Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox5.DataField,DBCheckBox5.Checked);
end;

procedure TfUsuarios.BitBtn14Click(Sender: TObject);
begin
  Permissao(DBCheckBox5.DataField,DBCheckBox5.Checked);
end;

procedure TfUsuarios.DBCheckBox41Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox41.DataField,DBCheckBox41.Checked);
end;

procedure TfUsuarios.BitBtn15Click(Sender: TObject);
begin
  Permissao(DBCheckBox41.DataField,DBCheckBox41.Checked);
end;

procedure TfUsuarios.DBCheckBox26Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox26.DataField,DBCheckBox26.Checked);
end;

procedure TfUsuarios.BitBtn16Click(Sender: TObject);
begin
  Permissao(DBCheckBox26.DataField,DBCheckBox26.Checked);
end;

procedure TfUsuarios.DBCheckBox39Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox39.DataField,DBCheckBox39.Checked);
end;

procedure TfUsuarios.BitBtn17Click(Sender: TObject);
begin
  Permissao(DBCheckBox39.DataField,DBCheckBox39.Checked);
end;

procedure TfUsuarios.DBCheckBox22Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox22.DataField,DBCheckBox22.Checked);
end;

procedure TfUsuarios.BitBtn20Click(Sender: TObject);
begin
  Permissao(DBCheckBox22.DataField,DBCheckBox22.Checked);
end;

procedure TfUsuarios.DBCheckBox8Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox8.DataField,DBCheckBox8.Checked);
end;

procedure TfUsuarios.BitBtn22Click(Sender: TObject);
begin
  Permissao(DBCheckBox8.DataField,DBCheckBox8.Checked);
end;

procedure TfUsuarios.DBCheckBox14Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox14.DataField,DBCheckBox14.Checked);
end;

procedure TfUsuarios.BitBtn18Click(Sender: TObject);
begin
  Permissao(DBCheckBox14.DataField,DBCheckBox14.Checked);
end;

procedure TfUsuarios.DBCheckBox9Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox9.DataField,DBCheckBox9.Checked);
end;

procedure TfUsuarios.BitBtn27Click(Sender: TObject);
begin
  Permissao(DBCheckBox9.DataField,DBCheckBox9.Checked);
end;

procedure TfUsuarios.DBCheckBox10Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox10.DataField,DBCheckBox10.Checked);
end;

procedure TfUsuarios.BitBtn23Click(Sender: TObject);
begin
  Permissao(DBCheckBox10.DataField,DBCheckBox10.Checked);
end;

procedure TfUsuarios.DBCheckBox12Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox12.DataField,DBCheckBox12.Checked);
end;

procedure TfUsuarios.BitBtn26Click(Sender: TObject);
begin
  Permissao(DBCheckBox12.DataField,DBCheckBox12.Checked);
end;

procedure TfUsuarios.DBCheckBox44Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox44.DataField,DBCheckBox44.Checked);
end;

procedure TfUsuarios.BitBtn28Click(Sender: TObject);
begin
  Permissao(DBCheckBox44.DataField,DBCheckBox44.Checked);
end;

procedure TfUsuarios.DBCheckBox17Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox17.DataField,DBCheckBox17.Checked);
end;

procedure TfUsuarios.BitBtn29Click(Sender: TObject);
begin
  Permissao(DBCheckBox17.DataField,DBCheckBox17.Checked);
end;

procedure TfUsuarios.DBCheckBox16Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox16.DataField,DBCheckBox16.Checked);
end;

procedure TfUsuarios.BitBtn25Click(Sender: TObject);
begin
  Permissao(DBCheckBox16.DataField,DBCheckBox16.Checked);
end;

procedure TfUsuarios.DBCheckBox19Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox19.DataField,DBCheckBox19.Checked);
end;

procedure TfUsuarios.BitBtn30Click(Sender: TObject);
begin
  Permissao(DBCheckBox19.DataField,DBCheckBox19.Checked);
end;

procedure TfUsuarios.DBCheckBox67Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox67.DataField,DBCheckBox67.Checked);
end;

procedure TfUsuarios.BitBtn32Click(Sender: TObject);
begin
  Permissao(DBCheckBox67.DataField,DBCheckBox67.Checked);
end;

procedure TfUsuarios.DBCheckBox83Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox83.DataField,DBCheckBox83.Checked);
end;

procedure TfUsuarios.BitBtn31Click(Sender: TObject);
begin
  Permissao(DBCheckBox83.DataField,DBCheckBox83.Checked);
end;

procedure TfUsuarios.DBCheckBox85Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox85.DataField,DBCheckBox85.Checked);
end;

procedure TfUsuarios.BitBtn33Click(Sender: TObject);
begin
  Permissao(DBCheckBox85.DataField,DBCheckBox85.Checked);
end;

procedure TfUsuarios.DBCheckBox87Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox87.DataField,DBCheckBox87.Checked);
end;

procedure TfUsuarios.BitBtn34Click(Sender: TObject);
begin
  Permissao(DBCheckBox87.DataField,DBCheckBox87.Checked);
end;

procedure TfUsuarios.DBCheckBox89Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox89.DataField,DBCheckBox89.Checked);
end;

procedure TfUsuarios.BitBtn35Click(Sender: TObject);
begin
  Permissao(DBCheckBox89.DataField,DBCheckBox89.Checked);
end;

procedure TfUsuarios.DBCheckBox102Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox102.DataField,DBCheckBox102.Checked);
end;

procedure TfUsuarios.BitBtn40Click(Sender: TObject);
begin
  Permissao(DBCheckBox102.DataField,DBCheckBox102.Checked);
end;

procedure TfUsuarios.BitBtn42Click(Sender: TObject);
begin
  Permissao(DBCheckBox115.DataField,DBCheckBox115.Checked);
end;

procedure TfUsuarios.DBCheckBox115Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox115.DataField,DBCheckBox115.Checked);
end;

procedure TfUsuarios.DBCheckBox57Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox57.DataField,DBCheckBox57.Checked);
end;

procedure TfUsuarios.BitBtn46Click(Sender: TObject);
begin
  Permissao(DBCheckBox57.DataField,DBCheckBox57.Checked);
end;

procedure TfUsuarios.DBCheckBox120Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox120.DataField,DBCheckBox120.Checked);
end;

procedure TfUsuarios.BitBtn48Click(Sender: TObject);
begin
  Permissao(DBCheckBox120.DataField,DBCheckBox120.Checked);
end;

procedure TfUsuarios.DBCheckBox15Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox15.DataField,DBCheckBox15.Checked);
end;

procedure TfUsuarios.BitBtn24Click(Sender: TObject);
begin
  Permissao(DBCheckBox15.DataField,DBCheckBox15.Checked);
end;

procedure TfUsuarios.DBCheckBox18Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox18.DataField,DBCheckBox18.Checked);
end;

procedure TfUsuarios.BitBtn36Click(Sender: TObject);
begin
  Permissao(DBCheckBox18.DataField,DBCheckBox18.Checked);
end;

procedure TfUsuarios.BitBtn43Click(Sender: TObject);
begin
  Permissao(DBCheckBox23.DataField,DBCheckBox23.Checked);
end;

procedure TfUsuarios.BitBtn49Click(Sender: TObject);
begin
  Permissao(DBCheckBox37.DataField,DBCheckBox37.Checked);
end;

procedure TfUsuarios.DBCheckBox37Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox37.DataField,DBCheckBox37.Checked);
end;

procedure TfUsuarios.BitBtn38Click(Sender: TObject);
begin
  Permissao(DBCheckBox71.DataField,DBCheckBox71.Checked);
end;

procedure TfUsuarios.BitBtn51Click(Sender: TObject);
begin
  Permissao(DBCheckBox11.DataField,DBCheckBox11.Checked);
end;

procedure TfUsuarios.BitBtn19Click(Sender: TObject);
begin
  Permissao(DBCheckBox7.DataField,DBCheckBox7.Checked);
end;

procedure TfUsuarios.DBCheckBox7Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox7.DataField,DBCheckBox7.Checked);
end;

procedure TfUsuarios.DBCheckBox30Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox30.DataField,DBCheckBox30.Checked);
end;

procedure TfUsuarios.BitBtn21Click(Sender: TObject);
begin
  Permissao(DBCheckBox30.DataField,DBCheckBox30.Checked);
end;

procedure TfUsuarios.DBCheckBox60Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox60.DataField,DBCheckBox60.Checked);
end;

procedure TfUsuarios.BitBtn45Click(Sender: TObject);
begin
  Permissao(DBCheckBox60.DataField,DBCheckBox60.Checked);
end;

procedure TfUsuarios.DBCheckBox101Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox101.DataField,DBCheckBox101.Checked);
end;

procedure TfUsuarios.BitBtn39Click(Sender: TObject);
begin
  Permissao(DBCheckBox101.DataField,DBCheckBox101.Checked);
end;

procedure TfUsuarios.DBCheckBox110Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox110.DataField,DBCheckBox110.Checked);
end;

procedure TfUsuarios.BitBtn44Click(Sender: TObject);
begin
  Permissao(DBCheckBox110.DataField,DBCheckBox110.Checked);
end;

procedure TfUsuarios.DBCheckBox132Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox132.DataField,DBCheckBox132.Checked);
end;

procedure TfUsuarios.BitBtn47Click(Sender: TObject);
begin
  Permissao(DBCheckBox132.DataField,DBCheckBox132.Checked);
end;

procedure TfUsuarios.DBCheckBox133Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox133.DataField,DBCheckBox133.Checked);
end;

procedure TfUsuarios.BitBtn52Click(Sender: TObject);
begin
  Permissao(DBCheckBox133.DataField,DBCheckBox133.Checked);
end;

procedure TfUsuarios.DBCheckBox138Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox138.DataField,DBCheckBox138.Checked);
end;

procedure TfUsuarios.BitBtn53Click(Sender: TObject);
begin
  Permissao(DBCheckBox138.DataField,DBCheckBox138.Checked);
end;

procedure TfUsuarios.DBCheckBox140Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox140.DataField,DBCheckBox140.Checked);
end;

procedure TfUsuarios.BitBtn54Click(Sender: TObject);
begin
  Permissao(DBCheckBox140.DataField,DBCheckBox140.Checked);
end;

procedure TfUsuarios.DBCheckBox62Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox62.DataField,DBCheckBox62.Checked);
end;

procedure TfUsuarios.BitBtn55Click(Sender: TObject);
begin
  Permissao(DBCheckBox62.DataField,DBCheckBox62.Checked);
end;

procedure TfUsuarios.DBCheckBox63Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox63.DataField,DBCheckBox63.Checked);
end;

procedure TfUsuarios.BitBtn56Click(Sender: TObject);
begin
  Permissao(DBCheckBox63.DataField,DBCheckBox63.Checked);
end;

procedure TfUsuarios.DBCheckBox149Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox149.DataField,DBCheckBox149.Checked);
end;

procedure TfUsuarios.BitBtn57Click(Sender: TObject);
begin
  Permissao(DBCheckBox149.DataField,DBCheckBox149.Checked);
end;

procedure TfUsuarios.BitBtn37Click(Sender: TObject);
begin
  Permissao(DBCheckBox45.DataField,DBCheckBox45.Checked);
end;

procedure TfUsuarios.BitBtn50Click(Sender: TObject);
begin
  Permissao(DBCheckBox103.DataField,DBCheckBox103.Checked);
end;

procedure TfUsuarios.DBCheckBox96Click(Sender: TObject);
begin
    Editar_Tabelas(DBCheckBox96.DataField,DBCheckBox96.Checked);
end;

procedure TfUsuarios.DBCheckBox123Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox123.DataField,DBCheckBox123.Checked);
end;

procedure TfUsuarios.BitBtn59Click(Sender: TObject);
begin
  Permissao(DBCheckBox123.DataField,DBCheckBox123.Checked);
end;

procedure TfUsuarios.BitBtn58Click(Sender: TObject);
begin
  Permissao(DBCheckBox96.DataField,DBCheckBox96.Checked);
end;

procedure TfUsuarios.DBCheckBox129Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox129.DataField,DBCheckBox129.Checked);
end;

procedure TfUsuarios.BitBtn60Click(Sender: TObject);
begin
  Permissao(DBCheckBox129.DataField,DBCheckBox129.Checked);
end;

procedure TfUsuarios.DBCheckBox142Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox142.DataField,DBCheckBox142.Checked);
end;

procedure TfUsuarios.BitBtn61Click(Sender: TObject);
begin
  Permissao(DBCheckBox142.DataField,DBCheckBox142.Checked);
end;

procedure TfUsuarios.DBCheckBox143Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox143.DataField,DBCheckBox143.Checked);
end;

procedure TfUsuarios.BitBtn62Click(Sender: TObject);
begin
  Permissao(DBCheckBox143.DataField,DBCheckBox143.Checked);
end;

procedure TfUsuarios.BitBtn63Click(Sender: TObject);
begin
  Permissao(DBCheckBox29.DataField,DBCheckBox29.Checked);
end;

procedure TfUsuarios.DBCheckBox154Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox154.DataField,DBCheckBox154.Checked);
end;

procedure TfUsuarios.BitBtn64Click(Sender: TObject);
begin
  Permissao(DBCheckBox154.DataField,DBCheckBox154.Checked);
end;

procedure TfUsuarios.DBCheckBox156Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox156.DataField,DBCheckBox156.Checked);
end;

procedure TfUsuarios.BitBtn65Click(Sender: TObject);
begin
  Permissao(DBCheckBox156.DataField,DBCheckBox156.Checked);
end;

procedure TfUsuarios.DBCheckBox157Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox157.DataField,DBCheckBox157.Checked);
end;

procedure TfUsuarios.BitBtn66Click(Sender: TObject);
begin
  Permissao(DBCheckBox157.DataField,DBCheckBox157.Checked);
end;

procedure TfUsuarios.DBCheckBox160Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox160.DataField,DBCheckBox160.Checked);
end;

procedure TfUsuarios.BitBtn67Click(Sender: TObject);
begin
  Permissao(DBCheckBox160.DataField,DBCheckBox160.Checked);
end;

procedure TfUsuarios.DBCheckBox161Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox161.DataField,DBCheckBox161.Checked);
end;

procedure TfUsuarios.BitBtn68Click(Sender: TObject);
begin
  Permissao(DBCheckBox161.DataField,DBCheckBox161.Checked);
end;

procedure TfUsuarios.DBCheckBox162Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox162.DataField,DBCheckBox162.Checked);
end;

procedure TfUsuarios.BitBtn69Click(Sender: TObject);
begin
  Permissao(DBCheckBox162.DataField,DBCheckBox162.Checked);
end;

procedure TfUsuarios.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfUsuarios.DBCheckBox163Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox163.DataField,DBCheckBox163.Checked);
end;

procedure TfUsuarios.BitBtn70Click(Sender: TObject);
begin
  Permissao(DBCheckBox163.DataField,DBCheckBox163.Checked);
end;

procedure TfUsuarios.DBCheckBox164Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox164.DataField,DBCheckBox164.Checked);
end;

procedure TfUsuarios.BitBtn71Click(Sender: TObject);
begin
  Permissao(DBCheckBox164.DataField,DBCheckBox164.Checked);
end;

procedure TfUsuarios.DBCheckBox165Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox165.DataField,DBCheckBox165.Checked);
end;

procedure TfUsuarios.BitBtn72Click(Sender: TObject);
begin
  Permissao(DBCheckBox165.DataField,DBCheckBox165.Checked);
end;

procedure TfUsuarios.DBCheckBox166Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox166.DataField,DBCheckBox166.Checked);
end;

procedure TfUsuarios.BitBtn73Click(Sender: TObject);
begin
  Permissao(DBCheckBox166.DataField,DBCheckBox166.Checked);
end;

end.

