unit UPedAMostra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, VerificaCPF, VerificaCGC,
  DBVGrids;

type
  TfPedAmostra = class(TForm)
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
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label17: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label18: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    SMDBGrid1: TSMDBGrid;
    VDBGrid1: TVDBGrid;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fPedAmostra: TfPedAmostra;

implementation

uses UDMClienteTerceiro, UDM1, UClienteTerceiroC, DB, UDMPedAmostra, UDM2,
  UPedAmostraItem;

{$R *.dfm}

procedure TfPedAmostra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMPedAmostra.cdsPedAmostra.State in [dsEdit,dsInsert] then
    DMPedAmostra.cdsPedAmostra.CancelUpdates;
  Action := Cafree;
end;

procedure TfPedAmostra.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Close;
end;

procedure TfPedAmostra.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfPedAmostra.BitBtn1Click(Sender: TObject);
var
  vQtdItem : Integer;
  vQtdTotal : Integer;
begin
  if DMPedAmostra.cdsPedAmostra.State in [dsBrowse] then
  begin
    Close;
    exit;
  end;

  DMPedAmostra.cdsPedAmostraQTDTOTAL.AsInteger := 0;
  

  if DMPedAmostra.cdsPedAmostraCodFabrica.AsInteger < 1 then
  begin
    ShowMessage('É obrigatório informar a fábrica!');
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if DMPedAmostra.cdsPedAmostraCODCLIENTE.AsInteger < 1 then
  begin
    ShowMessage('É obrigatório informar o cliente!');
    RxDBLookupCombo2.SetFocus;
    exit;
  end;

  vQtdTotal := 0;
  DMPedAmostra.cdsPedAmostraQTDTOTAL.AsInteger := 0;
  DMPedAmostra.cdsPedAmostra_Item.First;
  while not DMPedAmostra.cdsPedAmostra_Item.Eof do
  begin
    vQtdItem := 0;
    DMPedAmostra.cdsPedAmostra_Grade.First;
    while not DMPedAmostra.cdsPedAmostra_Grade.Eof do
    begin
      vQtdItem  := vQtdItem + DMPedAmostra.cdsPedAmostra_GradeQTD.AsInteger;
      vQtdTotal := vQtdTotal + DMPedAmostra.cdsPedAmostra_GradeQTD.AsInteger;
      DMPedAmostra.cdsPedAmostra_Grade.Next;
    end;

    DMPedAmostra.cdsPedAmostra_Item.Edit;
    DMPedAmostra.cdsPedAmostra_ItemQTD.AsInteger := vQtdItem;
    DMPedAmostra.cdsPedAmostra_Item.Post;

    DMPedAmostra.cdsPedAmostra_Item.Next;
  end;

  DMPedAmostra.cdsPedAmostraNOMEFABRICA.AsString := RxDBLookupCombo1.Text;
  DMPedAmostra.cdsPedAmostraQTDTOTAL.AsInteger   := vQtdTotal;
  DMPedAmostra.cdsPedAmostra.Post;
  DMPedAmostra.cdsPedAmostra.ApplyUpdates(0);

  Close;
end;


procedure TfPedAmostra.BitBtn3Click(Sender: TObject);
begin
  DMPedAmostra.Inserir_PedAmostra_Item;

  DM1.tProdutoGrade.First;
  DM1.tProdutoTam.First;                                   
  while not DM1.tProdutoTam.Eof do
  begin
    DMPedAmostra.cdsPedAmostra_Grade.Insert;
    //DMPedAmostra.cdsPedAmostra_GradeID.AsInteger     := DMPedAmostra.cdsPedAmostra_ItemID.AsInteger;
    DMPedAmostra.cdsPedAmostra_GradeITEM.AsInteger   := DMPedAmostra.cdsPedAmostra_ItemITEM.AsInteger;
    DMPedAmostra.cdsPedAmostra_GradeTAMANHO.AsString := DM1.tProdutoTamTamanho.AsString;
    DMPedAmostra.cdsPedAmostra_Grade.Post;
    DM1.tProdutoTam.Next;
  end;

  if DMPedAmostra.cdsPedAmostra.State in [dsBrowse] then
    DMPedAmostra.cdsPedAmostra.Edit;
  if DMPedAmostra.cdsPedAmostra_Item.State in [dsBrowse] then
    DMPedAmostra.cdsPedAmostra_Item.Edit;

  fPedAmostraItem := TfPedAmostraItem.Create(Self);
  fPedAmostraItem.ShowModal;
end;

procedure TfPedAmostra.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPedAmostra.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  DMPedAmostra.cdsPedAmostra_Item.Delete;
end;

end.
