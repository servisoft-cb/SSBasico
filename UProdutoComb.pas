unit UProdutoComb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid,
  DBCtrls, ExtCtrls, DB, DBTables, RxLookup;

type
  TfProdutoComb = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    Panel2: TPanel;
    StaticText1: TStaticText;
    SMDBGrid2: TSMDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    BitBtn12: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn10: TBitBtn;
    Label3: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    vItemComb : Integer;
  public
    { Public declarations }
  end;

var
  fProdutoComb: TfProdutoComb;

implementation

uses UDM1, UProdutoConsumo, UProdutoMat, UProdutoCombCopia;

{$R *.dfm}

procedure TfProdutoComb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoComb.SMDBGrid2DblClick(Sender: TObject);
begin
  if (DM1.tProdutoMatConsumo.AsString = 'T') and (DM1.tProdutoMatCodMaterial.AsInteger > 0) and
     (DM1.tProduto.State in [dsEdit]) then
  begin
    fProdutoConsumo := TfProdutoConsumo.Create(Self);
    fProdutoConsumo.ShowModal;
  end;
end;

procedure TfProdutoComb.BitBtn10Click(Sender: TObject);
begin
  if DM1.tProdutoCombCodCombinacao.AsInteger < 1 then
    ShowMessage('É obrigatório infomar o nome da combinação primeiro!')
  else
  begin
    fProdutoMat     := TfProdutoMat.Create(Self);
    fProdutoMat.Tag := 0;
    fProdutoMat.vCodCombinacao := DM1.tProdutoCombCodCombinacao.AsInteger;
    fProdutoMat.ShowModal;
  end;
end;

procedure TfProdutoComb.BitBtn15Click(Sender: TObject);
begin
  if not DM1.tProdutoMat.IsEmpty then
  begin
    fProdutoMat     := TfProdutoMat.Create(Self);
    fProdutoMat.Tag := 1;
    fProdutoMat.vCodCombinacao := DM1.tProdutoCombCodCombinacao.AsInteger;
    fProdutoMat.CurrencyEdit4.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
    if DM1.tProdutoMatCodMaterial.AsInteger > 0 then
      fProdutoMat.RzDBLookupComboBox1.KeyValue := DM1.tProdutoMatCodMaterial.AsInteger;
    if DM1.tProdutoMatCodCor.AsInteger > 0 then
      fProdutoMat.RxDBLookupCombo3.KeyValue := DM1.tProdutoMatCodCor.AsInteger;
    if DM1.tProdutoMatImpTalao.AsString = 'S' then
      fProdutoMat.ComboBox2.ItemIndex := 0
    else
      fProdutoMat.ComboBox2.ItemIndex := 1;
    fProdutoMat.RxDBLookupCombo10.Value := DM1.tProdutoMatUnidade.AsString;
    fProdutoMat.CurrencyEdit1.Value     := DM1.tProdutoMatQtd.AsFloat;
    fProdutoMat.CurrencyEdit2.Value     := DM1.tProdutoMatVlrUnitario.AsCurrency;
    fProdutoMat.vItemMat                := DM1.tProdutoMatItem.AsInteger;
    fProdutoMat.Query1.Active  := True;
    if DM1.tProdutoMatConsumo.AsString = 'G' then
      fProdutoMat.ComboBox1.ItemIndex := 0
    else
      fProdutoMat.ComboBox1.ItemIndex := 1;
    if DM1.tProdutoMatCodSetor.AsInteger > 0 then
      fProdutoMat.RxDBLookupCombo2.KeyValue := DM1.tProdutoMatCodSetor.AsInteger;
    if DM1.tProdutoMatCodPosicao.AsInteger > 0 then
      fProdutoMat.RxDBLookupCombo4.KeyValue := DM1.tProdutoMatCodPosicao.AsInteger;
    fProdutoMat.Edit1.Text := DM1.tProdutoMatObs.AsString;
    if DM1.tProdutoMatTipo.AsString = 'EMB' then
      fProdutoMat.ComboBox4.ItemIndex := 1
    else
      fProdutoMat.ComboBox4.ItemIndex := 0;
    fProdutoMat.CurrencyEdit3.Value := DM1.tProdutoMatQtdPecaProd.AsFloat;
    fProdutoMat.ShowModal;
  end
  else
    ShowMessage('Não há registro para ser alterado!');
end;

procedure TfProdutoComb.BitBtn12Click(Sender: TObject);
begin
  if not DM1.tProdutoMat.IsEmpty then
  begin
    if MessageDlg('Deseja excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      DM1.tProdutoConsumo.First;
      while not DM1.tProdutoConsumo.Eof do
      begin
        DM1.tProdutoConsumoItem.First;
        while not DM1.tProdutoConsumoItem.Eof do
          DM1.tProdutoConsumoItem.Delete;
        DM1.tProdutoConsumo.Delete;
      end;
      DM1.tProdutoMat.Delete;
    end;
  end
  else
    ShowMessage('Não há registro para ser excluído!');
end;

procedure TfProdutoComb.BitBtn3Click(Sender: TObject);
begin
  if DM1.tProdutoComb.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  {if DM1.tProdutoCombCodCombinacao.AsInteger = 1 then
  begin
    ShowMessage('Item 1 não pode ser excluído!');
    exit;
  end;}
  
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
  begin
    DM1.tProdutoConsumo.First;
    while not DM1.tProdutoConsumo.Eof do
    begin
      DM1.tProdutoConsumoItem.First;
      while not DM1.tProdutoConsumoItem.Eof do
        DM1.tProdutoConsumoItem.Delete;
      DM1.tProdutoConsumo.Delete;
    end;
    DM1.tProdutoMat.Delete;
  end;
  DM1.tProdutoComb.Delete;
end;

procedure TfProdutoComb.BitBtn1Click(Sender: TObject);
var
  vUltItem : Integer;
  vCodCorAux : Integer;
begin
  if DM1.tProdutoComb.State in [dsEdit] then
    DM1.tProdutoComb.Post;
  if (Edit1.Text = '') and (DM1.tProdutoComb.RecordCount > 0) then
  begin
    ShowMessage('É obrigatório informar o nome da combinação!');
    Exit;
  end;
  vCodCorAux := 0;
  if DM1.tProdutoLancaCor.AsBoolean then
    vCodCorAux := DM1.tProdutoCorCodCor.AsInteger;

  if (vItemComb > 1) and (DM1.tProdutoComb.Locate('CodCombinacao',vItemComb,[loCaseInsensitive])) then
    DM1.tProdutoComb.Edit
  else
  if (vItemComb > 1) or (vItemComb < 1) then
  begin
    if vItemComb > 1 then
      vUltItem := vItemComb
    else
    begin
      DM1.tProdutoComb.Refresh;
      DM1.tProdutoComb.Last;
      vUltItem := DM1.tProdutoCombCodCombinacao.AsInteger + 1;
    end;
    DM1.tProdutoComb.Insert;
    DM1.tProdutoCombCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
    DM1.tProdutoCombCodCor.AsInteger        := vCodCorAux;
    DM1.tProdutoCombCodCombinacao.AsInteger := vUltItem;
  end;
  DM1.tProdutoCombNome.AsString           := Edit1.Text;
  DM1.tProdutoComb.Post;
  DM1.tProdutoComb.Refresh;
  vItemComb := 0;
  Edit1.Clear;
end;

procedure TfProdutoComb.BitBtn2Click(Sender: TObject);
begin
  if DM1.tProdutoCombCodCombinacao.AsInteger < 2 then
    begin
      ShowMessage('Não existe combinação para alterar!');
      exit;
    end;

  vItemComb  := DM1.tProdutoCombCodCombinacao.AsInteger;  
  Edit1.Text := DM1.tProdutoCombNome.AsString;
  Edit1.SetFocus;
end;

procedure TfProdutoComb.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  vItemComb := 0;
  BitBtn1.Enabled  := not(DM1.tProduto.State in [dsBrowse]);
  BitBtn2.Enabled  := not(DM1.tProduto.State in [dsBrowse]);
  BitBtn3.Enabled  := not(DM1.tProduto.State in [dsBrowse]);

  BitBtn5.Enabled  := not(DM1.tProduto.State in [dsBrowse]);
  BitBtn6.Enabled  := not(DM1.tProduto.State in [dsBrowse]);

  BitBtn10.Enabled := not(DM1.tProduto.State in [dsBrowse]);
  BitBtn15.Enabled := not(DM1.tProduto.State in [dsBrowse]);
  BitBtn12.Enabled := not(DM1.tProduto.State in [dsBrowse]);

  SMDBGrid2.Columns[1].Visible := DM1.tParametrosUsaSetorFichaTecnica.AsBoolean;
  SMDBGrid2.Columns[2].Visible := DM1.tParametrosUsaPosicaoFichaTecnica.AsBoolean;

  SMDBGrid1.Columns[1].ReadOnly := DM1.tProduto.State in [dsBrowse];
end;

procedure TfProdutoComb.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tProdutoMatlkInativo.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end;
end;

procedure TfProdutoComb.BitBtn5Click(Sender: TObject);
begin
  fProdutoCombCopia  := TfProdutoCombCopia.Create(Self);
  fProdutoCombCopia.Tag := 0;
  fProdutoCombCopia.ShowModal;
end;

procedure TfProdutoComb.BitBtn6Click(Sender: TObject);
begin
  if (DM1.tProdutoComb.RecordCount > 0) and (DM1.tProdutoMat.RecordCount < 1) then
    begin
      fProdutoCombCopia  := TfProdutoCombCopia.Create(Self);
      fProdutoCombCopia.Tag := 1;
      fProdutoCombCopia.ShowModal;
    end
  else
    ShowMessage('Para copiar os materiais, tem que existir uma combinação e a mesma não pode possuir materiais');
end;

end.
