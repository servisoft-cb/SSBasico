unit UProdutoPosicao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, DBTables,
  DB, ToolEdit, CurrEdit, ComCtrls, RxLookup, RzTabs, RxDBComb, Grids,
  DBGrids, SMDBGrid;

type
  TfProdutoPosicao = class(TForm)
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    RzPageControl1: TRzPageControl;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
    vOrdemPosicao : Integer;
    
  public
    { Public declarations }
  end;

var
  fProdutoPosicao: TfProdutoPosicao;

implementation

uses UDM1, UDM2, UPosicao, dmdCadProduto, UProduto;

{$R *.DFM}

procedure TfProdutoPosicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoPosicao.BitBtn1Click(Sender: TObject);
begin
  fProduto.FDmCadProduto.cdsProduto_Posicao.ApplyUpdates(0);

  Close;
end;

procedure TfProdutoPosicao.BitBtn2Click(Sender: TObject);
begin
  fProduto.FDmCadProduto.cdsProduto_Posicao.CancelUpdates;
  Close;
end;

procedure TfProdutoPosicao.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoPosicao.FormShow(Sender: TObject);
begin
  SMDBGrid1.DataSource := fProduto.FDmCadProduto.dsProduto_Posicao;
  DM2.qPosicao.Open;
  TabSheet4.TabEnabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  BitBtn1.Enabled      := (DM1.tProduto.State in [dsEdit,dsInsert]);
  BitBtn2.Enabled      := (DM1.tProduto.State in [dsEdit,dsInsert]);
end;

procedure TfProdutoPosicao.SpeedButton11Click(Sender: TObject);
begin
  if not DM1.tUsuarioPosicao.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ' não autorizado a abrir este formulário!');
    exit;
  end;
  fPosicao := TfPosicao.Create(Self);
  fPosicao.ShowModal;
end;

procedure TfProdutoPosicao.BitBtn7Click(Sender: TObject);
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
    if fProduto.FDmCadProduto.cdsProduto_Posicao.Locate('ITEM',vOrdemPosicao,[loCaseInsensitive]) then
      fProduto.FDmCadProduto.cdsProduto_Posicao.Edit
    else
      vOrdemPosicao := 0;
  end;
  if vOrdemPosicao <= 0 then
  begin
    fProduto.FDmCadProduto.cdsProduto_Posicao.Last;
    vItemAux := fProduto.FDmCadProduto.cdsProduto_PosicaoITEM.AsInteger;
    vItemAux := vItemAux + 1;
    if vItemAux > 11 then
    begin
      ShowMessage('Permitido somente 11 Posições!');
      exit;
    end;
    fProduto.FDmCadProduto.cdsProduto_Posicao.Insert;
    fProduto.FDmCadProduto.cdsProduto_PosicaoCODIGO.AsInteger := DM1.tProdutoCodigo.AsInteger;
    fProduto.FDmCadProduto.cdsProduto_PosicaoITEM.AsInteger   := vItemAux;    
  end;

  fProduto.FDmCadProduto.cdsProduto_PosicaoCODPOSICAO.AsInteger := RxDBLookupCombo9.KeyValue;
  if CheckBox1.Checked then
    fProduto.FDmCadProduto.cdsProduto_PosicaoIMPMATERIAL.AsString := 'S'
  else
    fProduto.FDmCadProduto.cdsProduto_PosicaoIMPMATERIAL.AsString := 'N';
  if CheckBox2.Checked then
    fProduto.FDmCadProduto.cdsProduto_PosicaoIMPCOR.AsString := 'S'
  else
    fProduto.FDmCadProduto.cdsProduto_PosicaoIMPCOR.AsString := 'N';
  fProduto.FDmCadProduto.cdsProduto_PosicaoNOMEPOSICAO.AsString := RxDBLookupCombo9.Text;
  fProduto.FDmCadProduto.cdsProduto_Posicao.Post;

  SpeedButton3Click(Sender);
  RxDBLookupCombo9.SetFocus;
end;

procedure TfProdutoPosicao.SpeedButton3Click(Sender: TObject);
begin
  RxDBLookupCombo9.ClearValue;
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  vOrdemPosicao     := 0; 
end;

procedure TfProdutoPosicao.BitBtn16Click(Sender: TObject);
begin
  if fProduto.FDmCadProduto.cdsProduto_Posicao.IsEmpty then
    exit;

  RxDBLookupCombo9.KeyValue := fProduto.FDmCadProduto.cdsProduto_PosicaoCodPosicao.AsInteger;
  if fProduto.FDmCadProduto.cdsProduto_PosicaoIMPMATERIAL.AsString = 'S' then
    CheckBox1.Checked := True
  else
    CheckBox1.Checked := False;
  if fProduto.FDmCadProduto.cdsProduto_PosicaoIMPCOR.AsString = 'S' then
    CheckBox2.Checked := True
  else
    CheckBox2.Checked := False;
  vOrdemPosicao             := fProduto.FDmCadProduto.cdsProduto_PosicaoITEM.AsInteger;
  RxDBLookupCombo9.SetFocus;
end;

procedure TfProdutoPosicao.SpeedButton9Click(Sender: TObject);
begin
  if fProduto.FDmCadProduto.cdsProduto_Posicao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbOK,mbNo],0) = mrNo then
    exit;

  fProduto.FDmCadProduto.cdsProduto_Posicao.Delete;
  fProduto.FDmCadProduto.cdsProduto_Posicao.ApplyUpdates(0);
end;

end.

