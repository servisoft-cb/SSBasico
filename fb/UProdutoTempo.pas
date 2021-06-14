unit UProdutoTempo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, FMTBcd, DB, SqlExpr, Provider,
  DBClient, RxLookup, Mask, Buttons, Grids, DBGrids, SMDBGrid, rsDBUtils,
  ToolEdit, CurrEdit;

type
  TfProdutoTempo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label8: TLabel;
    Memo1: TMemo;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    vItemTempo : Integer;
  public
    { Public declarations }
  end;

var
  fProdutoTempo: TfProdutoTempo;

implementation

uses UDM1, DmdDatabase, dmdCadProduto, UProduto, UDMProcesso;

{$R *.dfm}

procedure TfProdutoTempo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmProcesso.cdsProcesso.IndexFieldNames := '';
  Action := Cafree;
end;

procedure TfProdutoTempo.BitBtn3Click(Sender: TObject);
begin
  if DMCadProduto.cdsProduto_Tempo.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;
  DMCadProduto.cdsProduto_Tempo.Delete;
  DMCadProduto.cdsProduto_Tempo.ApplyUpdates(0);
end;

procedure TfProdutoTempo.BitBtn1Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Processo não foi informado!');
    exit;
  end;

  if vItemTempo > 0 then
    vItemAux := vItemTempo
  else
    vItemAux := 0;

  if DMCadProduto.cdsProduto_Tempo.Locate('CODPRODUTO;ITEM',VarArrayOf([DM1.tProdutoCodigo.AsInteger,vItemTempo]),[loCaseInsensitive]) then
    DMCadProduto.cdsProduto_Tempo.Edit
  else
  begin
    if vItemAux < 1 then
    begin
      DMCadProduto.cdsProduto_Tempo.Last;
      vItemAux := DMCadProduto.cdsProduto_TempoITEM.AsInteger + 1;
    end;
    DMCadProduto.cdsProduto_Tempo.Insert;
    DMCadProduto.cdsProduto_TempoCODPRODUTO.AsInteger  := DM1.tProdutoCodigo.AsInteger;
    DMCadProduto.cdsProduto_TempoITEM.AsInteger        := vItemAux + 1;
  end;
  DMCadProduto.cdsProduto_TempoID_PROCESSO.AsInteger := RxDBLookupCombo1.KeyValue;
  DMCadProduto.cdsProduto_TempoNOMEPROCESSO.AsString := RxDBLookupCombo1.Text;
  DMCadProduto.cdsProduto_TempoTempo.AsFloat         := CurrencyEdit1.Value;
  DMCadProduto.cdsProduto_TempoTempoReg.AsFloat      := CurrencyEdit2.Value;
  DMCadProduto.cdsProduto_TempoQTDPECAHORA.AsInteger := CurrencyEdit3.AsInteger;
  DMCadProduto.cdsProduto_TempoOBS.Value             := Memo1.Lines.Text;
  DMCadProduto.cdsProduto_Tempo.Post;
  DMCadProduto.cdsProduto_Tempo.ApplyUpdates(0);

  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  Memo1.Lines.Clear;
  vItemTempo := 0;

  RxDBLookupCombo1.SetFocus;
end;

procedure TfProdutoTempo.BitBtn2Click(Sender: TObject);
begin
  if DMCadProduto.cdsProduto_Tempo.IsEmpty then
    exit;
  vItemTempo                := DMCadProduto.cdsProduto_TempoITEM.AsInteger;
  RxDBLookupCombo1.KeyValue := DMCadProduto.cdsProduto_TempoID_PROCESSO.AsInteger;
  CurrencyEdit1.Value       := DMCadProduto.cdsProduto_TempoTempo.AsFloat;
  CurrencyEdit2.Value       := DMCadProduto.cdsProduto_TempoTempoReg.AsFloat;
  CurrencyEdit3.AsInteger   := DMCadProduto.cdsProduto_TempoQTDPECAHORA.AsInteger;
  Memo1.Lines.Text          := DMCadProduto.cdsProduto_TempoOBS.Value;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfProdutoTempo.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoTempo.FormShow(Sender: TObject);
begin
  //oDBUtils.SetDataSourceProperties(Self,DMCadProduto);
  BitBtn1.Enabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  BitBtn2.Enabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  BitBtn3.Enabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  DMProcesso.cdsProcesso.IndexFieldNames := 'Nome';
end;

procedure TfProdutoTempo.CurrencyEdit1Exit(Sender: TObject);
var
  vAux : Integer;
begin
  if (CurrencyEdit1.Value > 0) and (CurrencyEdit1.Value <= 60) then
    CurrencyEdit3.Value := StrToFloat(FormatFloat('0',60 / CurrencyEdit1.Value));
    //CurrencyEdit3.Value :=  60 / CurrencyEdit1.Value;
end;

end.
