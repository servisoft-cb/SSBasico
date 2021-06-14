unit UProdutoFerramental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, FMTBcd, DB, SqlExpr, Provider,
  DBClient, RxLookup, Mask, Buttons, Grids, DBGrids, SMDBGrid, rsDBUtils;

type
  TfProdutoFerramental = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    sdsMaterialCODIGO: TIntegerField;
    sdsMaterialREFERENCIA: TStringField;
    sdsMaterialNOME: TStringField;
    cdsMaterial: TClientDataSet;
    cdsMaterialCODIGO: TIntegerField;
    cdsMaterialREFERENCIA: TStringField;
    cdsMaterialNOME: TStringField;
    dsMaterial: TDataSource;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vItemFerramenta : Integer;
  public
    { Public declarations }
  end;

var
  fProdutoFerramental: TfProdutoFerramental;

implementation

uses UDM1, DmdDatabase, dmdCadProduto, UProduto;

{$R *.dfm}

procedure TfProdutoFerramental.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoFerramental.BitBtn3Click(Sender: TObject);
begin
  if DMCadProduto.cdsProduto_Ferramental.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;
  DMCadProduto.cdsProduto_Ferramental.Delete;
  DMCadProduto.cdsProduto_Ferramental.ApplyUpdates(0);
end;

procedure TfProdutoFerramental.BitBtn1Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Material não foi informado!');
    exit;
  end;

  if vItemFerramenta > 0 then
    vItemAux := vItemFerramenta
  else
    vItemAux := 0;

  if DMCadProduto.cdsProduto_Ferramental.Locate('CODPRODUTO;ITEM',VarArrayOf([DM1.tProdutoCodigo.AsInteger,vItemFerramenta]),[loCaseInsensitive]) then
    DMCadProduto.cdsProduto_Ferramental.Edit
  else
  begin
    if vItemAux < 1 then
    begin
      DMCadProduto.cdsProduto_Ferramental.Last;
      vItemAux := DMCadProduto.cdsProduto_FerramentalITEM.AsInteger + 1;
    end;
    DMCadProduto.cdsProduto_Ferramental.Insert;
    DMCadProduto.cdsProduto_FerramentalCODPRODUTO.AsInteger  := DM1.tProdutoCodigo.AsInteger;
    DMCadProduto.cdsProduto_FerramentalITEM.AsInteger        := vItemAux;
  end;
  DMCadProduto.cdsProduto_FerramentalCODMATERIAL.AsInteger := RxDBLookupCombo1.KeyValue;
  DMCadProduto.cdsProduto_FerramentalNOMEMATERIAL.AsString := RxDBLookupCombo1.Text;
  DMCadProduto.cdsProduto_FerramentalTIPOVC.AsString       := Edit1.Text;
  DMCadProduto.cdsProduto_FerramentalTIPOAP.AsString       := Edit2.Text;
  DMCadProduto.cdsProduto_FerramentalTIPOA.AsString        := Edit3.Text;
  DMCadProduto.cdsProduto_Ferramental.Post;
  DMCadProduto.cdsProduto_Ferramental.ApplyUpdates(0);

  RxDBLookupCombo1.ClearValue;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  vItemFerramenta := 0;

  RxDBLookupCombo1.SetFocus;
end;

procedure TfProdutoFerramental.BitBtn2Click(Sender: TObject);
begin
  if DMCadProduto.cdsProduto_Ferramental.IsEmpty then
    exit;
  vItemFerramenta           := DMCadProduto.cdsProduto_FerramentalITEM.AsInteger; 
  RxDBLookupCombo1.KeyValue := DMCadProduto.cdsProduto_FerramentalCODMATERIAL.AsInteger;
  Edit1.Text                := DMCadProduto.cdsProduto_FerramentalTIPOVC.AsString;
  Edit2.Text                := DMCadProduto.cdsProduto_FerramentalTIPOAP.AsString;
  Edit3.Text                := DMCadProduto.cdsProduto_FerramentalTIPOA.AsString;
  RxDBLookupCombo1.SetFocus;
end;

procedure TfProdutoFerramental.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoFerramental.FormShow(Sender: TObject);
begin 
  //oDBUtils.SetDataSourceProperties(Self,DMCadProduto);
  BitBtn1.Enabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  BitBtn2.Enabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  BitBtn3.Enabled := (DM1.tProduto.State in [dsEdit,dsInsert]);
  if DM1.tProduto.State in [dsEdit,dsInsert] then
  begin
    cdsMaterial.Close;
    cdsMaterial.Open;
  end;
end;

end.
