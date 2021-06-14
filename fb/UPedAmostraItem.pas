unit UPedAmostraItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Grids, DBVGrids, DB, DBTables, Buttons;

type
  TfPedAmostraItem = class(TForm)
    Label6: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label7: TLabel;
    VDBGrid1: TVDBGrid;
    qCor: TQuery;
    qCombinacao: TQuery;
    dsqCor: TDataSource;
    dsqCombinacao: TDataSource;
    qCombinacaoNomeCombinacao: TStringField;
    qCombinacaoCodProduto: TIntegerField;
    qCorNomeCor: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qCorCodCor: TIntegerField;
    qCombinacaoCodCor: TIntegerField;
    qCombinacaoCodCombinacao: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPedAmostraItem: TfPedAmostraItem;

implementation

uses UDMPedAmostra, UDM1;

{$R *.dfm}

procedure TfPedAmostraItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMPedAmostra.cdsPedAmostra_Item.State in [dsEdit,dsInsert] then
    DMPedAmostra.cdsPedAmostra_Item.CancelUpdates;
  Action := Cafree;
end;

procedure TfPedAmostraItem.BitBtn1Click(Sender: TObject);
var
  vQtdAux : Integer;
begin
  if DMPedAmostra.cdsPedAmostra_ItemCODCOMBINACAO.AsInteger < 1 then
  begin
    ShowMessage('Combinação não foi informada!');
    exit;
  end;

  DMPedAmostra.cdsPedAmostra_ItemNOMECOR.AsString        := RxDBLookupCombo2.Text;
  DMPedAmostra.cdsPedAmostra_ItemNOMECOMBINACAO.AsString := RxDBLookupCombo3.Text;

  vQtdAux := 0;
  DMPedAmostra.cdsPedAmostra_Grade.First;
  while not DMPedAmostra.cdsPedAmostra_Grade.Eof do
  begin
    vQtdAux := vQtdAux + DMPedAmostra.cdsPedAmostra_GradeQTD.AsInteger;

    DMPedAmostra.cdsPedAmostra_Grade.Next;
  end;

  DMPedAmostra.cdsPedAmostra_ItemQTD.AsInteger := vQtdAux;

  DMPedAmostra.cdsPedAmostra_Item.Post;
  Close;
end;

procedure TfPedAmostraItem.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfPedAmostraItem.RxDBLookupCombo3Enter(Sender: TObject);
begin
  qCombinacao.Close;
  qCombinacao.ParamByName('CodProduto').AsInteger := DM1.tProdutoCodigo.AsInteger;
  if RxDBLookupCombo2.Text = '' then
    qCombinacao.ParamByName('CodCor').AsInteger   := 0
  else
    qCombinacao.ParamByName('CodCor').AsInteger   := RxDBLookupCombo2.KeyValue;
  qCombinacao.Open;
end;

procedure TfPedAmostraItem.FormShow(Sender: TObject);
begin
  qCor.Close;
  qCor.ParamByName('CodProduto').AsInteger := DM1.tProdutoCodigo.AsInteger;
  qCor.Open;
end;

end.
