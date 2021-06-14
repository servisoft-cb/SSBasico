unit UProdutoCombCopia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, ExtCtrls, DB,
  DBTables, Grids, DBGrids, SMDBGrid, Buttons;

type
  TfProdutoCombCopia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    tProduto: TTable;
    dsProduto: TDataSource;
    tProdutoCor: TTable;
    dsProdutoCor: TDataSource;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoCorPrCusto: TFloatField;
    tProdutoCorCodPigmento: TStringField;
    tProdutoCorVlrVenda: TFloatField;
    tProdutoCorInativo: TBooleanField;
    tProdutoCodigo: TIntegerField;
    tProdutoCodGrupo: TIntegerField;
    tProdutoCodSubGrupo: TIntegerField;
    tProdutoReferencia: TStringField;
    tProdutoNome: TStringField;
    tProdutoUnidade: TStringField;
    tProdutoCodClasFiscal: TStringField;
    tProdutoCodSitTrib: TIntegerField;
    tProdutoLancaGrade: TBooleanField;
    tProdutoCodGrade: TIntegerField;
    tProdutoQParTalao: TFloatField;
    tProdutoPesoLiquido: TFloatField;
    tProdutoPesoBruto: TFloatField;
    tProdutoInativo: TBooleanField;
    tProdutoAliqIcms: TFloatField;
    tProdutoAliqIPI: TFloatField;
    tProdutoNomeExp: TStringField;
    tProdutoDescMaterial: TStringField;
    tProdutoReferencia2: TStringField;
    tProdutoVlrAtelier: TFloatField;
    tProdutoNomeModelo: TStringField;
    tProdutoFotoJpeg: TBlobField;
    tProdutoObs: TMemoField;
    tProdutoEndEtiq: TStringField;
    tProdutoLancaCor: TBooleanField;
    tProdutoPrecoGrade: TBooleanField;
    tProdutoVlrVenda: TFloatField;
    tProdutoProdMat: TStringField;
    tProdutoPrecoCusto: TFloatField;
    tProdutoPosseMat: TStringField;
    tProdutoEstoque: TBooleanField;
    tProdutoDtAlteracao: TDateField;
    tProdutoMaterialOutros: TStringField;
    tProdutoPrecoCor: TBooleanField;
    tProdutoCodFornecedor: TIntegerField;
    tProdutoEstMinimo: TFloatField;
    tProdutoEstMaximo: TFloatField;
    tProdutoPercComissaoVend: TFloatField;
    tProdutoImpTabPreco: TBooleanField;
    tProdutoUsuario: TStringField;
    tProdutoDtCad: TDateField;
    tProdutoHrCad: TTimeField;
    tProdutoCA: TStringField;
    tProdutoVincularProduto: TBooleanField;
    tProdutoCodProdutoEst: TIntegerField;
    tProdutoPercQuebraTaloes: TFloatField;
    tProdutoPercComissaoVend2: TFloatField;
    tProdutoFichaTecnicaConsPorTam: TBooleanField;
    tProdutoJuntarLarguraEDI: TBooleanField;
    tProdutoImpMatTalao: TBooleanField;
    tProdutoComplemento: TStringField;
    tProdutoCodTipoProduto: TIntegerField;
    tProdutoCodTipoMaterial: TIntegerField;
    tProdutoQtdVolume: TIntegerField;
    tProdutoCodProcesso: TIntegerField;
    SMDBGrid2: TSMDBGrid;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tProdutoCorlkNomeCor: TStringField;
    tProdutoComb: TTable;
    tProdutoCombCodProduto: TIntegerField;
    tProdutoCombCodCor: TIntegerField;
    tProdutoCombCodCombinacao: TIntegerField;
    tProdutoCombNome: TStringField;
    dsProdutoComb: TDataSource;
    SMDBGrid1: TSMDBGrid;
    tProdutoMat: TTable;
    tProdutoMatCodProduto: TIntegerField;
    tProdutoMatCodCorProd: TIntegerField;
    tProdutoMatCodCombinacao: TIntegerField;
    tProdutoMatCodSetor: TIntegerField;
    tProdutoMatItem: TIntegerField;
    tProdutoMatCodMaterial: TIntegerField;
    tProdutoMatCodGrade: TIntegerField;
    tProdutoMatCodCor: TIntegerField;
    tProdutoMatQtd: TFloatField;
    tProdutoMatVlrUnitario: TFloatField;
    tProdutoMatVlrTotal: TFloatField;
    tProdutoMatImpTalao: TStringField;
    tProdutoMatUnidade: TStringField;
    tProdutoMatConsumo: TStringField;
    tProdutoMatCodPosicao: TIntegerField;
    dsProdutoMat: TDataSource;
    tProdutoMatlkNomeMaterial: TStringField;
    tProdutoMatlkNomeCor: TStringField;
    tProdutoConsumo: TTable;
    tProdutoConsumoItem: TTable;
    dsProdutoConsumo: TDataSource;
    dsProdutoConsumoItem: TDataSource;
    tProdutoConsumoCodProduto: TIntegerField;
    tProdutoConsumoCodCorProduto: TIntegerField;
    tProdutoConsumoItemMaterial: TIntegerField;
    tProdutoConsumoCodGrade: TIntegerField;
    tProdutoConsumoConsumo: TFloatField;
    tProdutoConsumoItemCodProduto: TIntegerField;
    tProdutoConsumoItemCodCorProduto: TIntegerField;
    tProdutoConsumoItemItemMaterial: TIntegerField;
    tProdutoConsumoItemCodGrade: TIntegerField;
    tProdutoConsumoItemPosicao: TIntegerField;
    tProdutoConsumoItemConsumo: TFloatField;
    tProdutoConsumoItemTamanhoMat: TStringField;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    tProdutoMatObs: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Grava_Combinacao;
  public
    { Public declarations }
  end;

var
  fProdutoCombCopia: TfProdutoCombCopia;

implementation

uses UDM1;

{$R *.dfm}

procedure TfProdutoCombCopia.Grava_Combinacao;
var
  vAux : Integer;
begin
  if Tag = 0 then
    begin
      DM1.tProdutoComb.Refresh;
      DM1.tProdutoComb.Last;
      vAux := DM1.tProdutoCombCodCombinacao.AsInteger + 1;
      DM1.tProdutoComb.Insert;
      DM1.tProdutoCombCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      if DM1.tProdutoCorCodCor.AsInteger > 0 then
        DM1.tProdutoCombCodCor.AsInteger := DM1.tProdutoCorCodCor.AsInteger
      else
        DM1.tProdutoCombCodCor.AsInteger := 0;
      DM1.tProdutoCombCodCombinacao.AsInteger := vAux;
      DM1.tProdutoCombNome.AsString           := tProdutoCombNome.AsString;
      DM1.tProdutoComb.Post;
    end
  else
    begin
      DM1.tProdutoMat.Last;
      vAux := DM1.tProdutoMatItem.AsInteger;
    end;
  vAux := 0;
  tProdutoMat.First;
  while not tProdutoMat.Eof do
    begin
      inc(vAux);
      DM1.tProdutoMat.Insert;
      DM1.tProdutoMatCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
      DM1.tProdutoMatCodCorProd.AsInteger    := DM1.tProdutoCombCodCor.AsInteger;
      DM1.tProdutoMatCodCombinacao.AsInteger := DM1.tProdutoCombCodCombinacao.AsInteger;
      DM1.tProdutoMatCodSetor.AsInteger      := tProdutoMatCodSetor.AsInteger;
      //if Tag = 0 then
      //  DM1.tProdutoMatItem.AsInteger        := tProdutoMatItem.AsInteger
      //else
      DM1.tProdutoMatItem.AsInteger          := vAux;
      DM1.tProdutoMatCodMaterial.AsInteger   := tProdutoMatCodMaterial.AsInteger;
      DM1.tProdutoMatCodGrade.AsInteger      := tProdutoMatCodGrade.AsInteger; 
      DM1.tProdutoMatImpTalao.AsString       := tProdutoMatImpTalao.AsString;
      DM1.tProdutoMatCodCor.AsInteger        := tProdutoMatCodCor.AsInteger;
      DM1.tProdutoMatQtd.AsFloat             := tProdutoMatQtd.AsFloat;
      DM1.tProdutoMatVlrUnitario.AsFloat     := tProdutoMatVlrUnitario.AsFloat;
      DM1.tProdutoMatVlrTotal.AsFloat        := tProdutoMatVlrTotal.AsFloat;
      DM1.tProdutoMatUnidade.AsString        := tProdutoMatUnidade.AsString;
      DM1.tProdutoMatConsumo.AsString        := tProdutoMatConsumo.AsString;
      DM1.tProdutoMatCodPosicao.AsInteger    := tProdutoMatCodPosicao.AsInteger;
      DM1.tProdutoMatObs.AsString            := tProdutoMatObs.AsString;
      DM1.tProdutoMat.Post;

      if DM1.tProdutoMatConsumo.AsString = 'T' then
        begin
          tProdutoConsumo.First;
          while not tProdutoConsumo.Eof do
            begin
              DM1.tProdutoConsumo.Insert;
              DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoCombCodCor.AsInteger;
              DM1.tProdutoConsumoItemMaterial.AsInteger  := tProdutoMatItem.AsInteger;
              DM1.tProdutoConsumoCodGrade.AsInteger      := tProdutoConsumoCodGrade.AsInteger;
              DM1.tProdutoConsumoConsumo.AsFloat         := tProdutoConsumoConsumo.AsFloat;
              DM1.tProdutoConsumo.Post;

              tProdutoConsumoItem.First;
              while not tProdutoConsumoItem.Eof do
                begin
                  DM1.tProdutoConsumoItem.Insert;
                  DM1.tProdutoConsumoItemCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoConsumoItemCodCorProduto.AsInteger := DM1.tProdutoCombCodCor.AsInteger;
                  DM1.tProdutoConsumoItemItemMaterial.AsInteger  := DM1.tProdutoConsumoItemMaterial.AsInteger;
                  DM1.tProdutoConsumoItemCodGrade.AsInteger      := tProdutoConsumoItemCodGrade.AsInteger;
                  DM1.tProdutoConsumoItemPosicao.AsInteger       := tProdutoConsumoItemPosicao.AsInteger;
                  DM1.tProdutoConsumoItemConsumo.AsFloat         := tProdutoConsumoItemConsumo.AsFloat;
                  DM1.tProdutoConsumoItemTamanhoMat.AsString     := tProdutoConsumoItemTamanhoMat.AsString;
                  DM1.tProdutoConsumoItem.Post;

                  tProdutoConsumoItem.Next;
                end;
              tProdutoConsumo.Next;
            end;
        end;
      tProdutoMat.Next;
    end;
end;

procedure TfProdutoCombCopia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoCombCopia.CurrencyEdit1Exit(Sender: TObject);
begin
  if (CurrencyEdit1.AsInteger > 0) and not(tProduto.Locate('Codigo',CurrencyEdit1.AsInteger,[loCaseInsensitive])) then
    begin
      ShowMessage('Produto não encontrado!');
      CurrencyEdit1.SetFocus;
      CurrencyEdit1.Clear;
    end
  else
    RxDBLookupCombo1.KeyValue := CurrencyEdit1.AsInteger;
end;

procedure TfProdutoCombCopia.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    CurrencyEdit1.AsInteger := RxDBLookupCombo1.KeyValue;
end;

procedure TfProdutoCombCopia.RxDBLookupCombo2Enter(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := (CurrencyEdit1.AsInteger < 1);
end;

procedure TfProdutoCombCopia.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoCombCopia.FormShow(Sender: TObject);
begin
  tProduto.Refresh;
  tProdutoCor.Refresh;
  tProdutoComb.Refresh;
  tProdutoMat.Refresh;
  CurrencyEdit1.AsInteger   := DM1.tProdutoCodigo.AsInteger;
  RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
  if DM1.tProdutoCorCodCor.AsInteger > 0 then
    RxDBLookupCombo2.KeyValue := DM1.tProdutoCorCodCor.AsInteger
  else
    RxDBLookupCombo2.ClearValue;
  if Tag = 1 then
    SMDBGrid2.Options := SMDBGrid2.Options - [dgMultiSelect]
  else
    SMDBGrid2.Options := SMDBGrid2.Options + [dgMultiSelect];
end;

procedure TfProdutoCombCopia.BitBtn3Click(Sender: TObject);
begin
  SMDBGrid2.DataSource := nil;
  SMDBGrid1.DataSource := nil;
  //if not tProdutoLancaCor.AsBoolean then
  //  tProdutoComb.Filtered := False
  //else
  if RxDBLookupCombo2.Text = '' then
    tProdutoComb.Filtered := False
  else
  if RxDBLookupCombo2.Text <> '' then
    begin
      tProdutoComb.Filtered := False;
      tProdutoComb.Filter   := 'CodCor = '''+IntToStr(RxDBLookupCombo2.KeyValue) +'''';
      tProdutoComb.Filtered := True;
    end;
  SMDBGrid2.DataSource  := dsProdutoComb;
  SMDBGrid1.DataSource  := dsProdutoMat;
end;

procedure TfProdutoCombCopia.Panel1Exit(Sender: TObject);
begin
  BitBtn3Click(Sender);
end;

procedure TfProdutoCombCopia.BitBtn1Click(Sender: TObject);
begin
  tProdutoComb.First;
  while not tProdutoComb.Eof do
    begin
      if SMDBGrid2.SelectedRows.CurrentRowSelected then
        Grava_Combinacao;
      tProdutoComb.Next;
    end;
  Close;
end;

end.
