unit UProdutoMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  CurrEdit, RxLookup, DB, DBTables, DBCtrls, RzDBCmbo;

type
  TfProdutoMat = class(TForm)
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo10: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label9: TLabel;
    ComboBox2: TComboBox;
    Panel1: TPanel;
    CurrencyEdit4: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    tProdutoM: TTable;
    tProdutoMCodigo: TIntegerField;
    tProdutoMCodGrupo: TIntegerField;
    tProdutoMCodSubGrupo: TIntegerField;
    tProdutoMReferencia: TStringField;
    tProdutoMNome: TStringField;
    tProdutoMUnidade: TStringField;
    tProdutoMCodClasFiscal: TStringField;
    tProdutoMCodSitTrib: TIntegerField;
    tProdutoMLancaGrade: TBooleanField;
    tProdutoMCodGrade: TIntegerField;
    tProdutoMQParTalao: TFloatField;
    tProdutoMPesoLiquido: TFloatField;
    tProdutoMPesoBruto: TFloatField;
    tProdutoMInativo: TBooleanField;
    tProdutoMAliqIcms: TFloatField;
    tProdutoMAliqIPI: TFloatField;
    tProdutoMNomeExp: TStringField;
    tProdutoMDescMaterial: TStringField;
    tProdutoMReferencia2: TStringField;
    tProdutoMVlrAtelier: TFloatField;
    tProdutoMNomeModelo: TStringField;
    tProdutoMFotoJpeg: TBlobField;
    tProdutoMObs: TMemoField;
    tProdutoMEndEtiq: TStringField;
    tProdutoMLancaCor: TBooleanField;
    tProdutoMPrecoGrade: TBooleanField;
    tProdutoMVlrVenda: TFloatField;
    tProdutoMProdMat: TStringField;
    tProdutoMPrecoCusto: TFloatField;
    tProdutoMPosseMat: TStringField;
    tProdutoMEstoque: TBooleanField;
    tProdutoMDtAlteracao: TDateField;
    tProdutoMMaterialOutros: TStringField;
    tProdutoMPrecoCor: TBooleanField;
    tProdutoMCodFornecedor: TIntegerField;
    tProdutoMEstMinimo: TFloatField;
    tProdutoMFichaTecnicaConsPorTam: TBooleanField;
    dsProdutoM: TDataSource;
    tProdutoTamM: TTable;
    tProdutoTamMCodProduto: TIntegerField;
    tProdutoTamMCodGrade: TIntegerField;
    tProdutoTamMPosicao: TIntegerField;
    tProdutoTamMTamanho: TStringField;
    tProdutoTamMQtdMinima: TFloatField;
    tProdutoTamMQtdMaxima: TFloatField;
    tProdutoTamMPesoL: TFloatField;
    tProdutoTamMPesoB: TFloatField;
    tProdutoTamMPrecoCusto: TFloatField;
    Query1: TQuery;
    Query1Nome: TStringField;
    Query1Codigo: TIntegerField;
    Query1Pantone: TStringField;
    dsQuery1: TDataSource;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label10: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    qProximoItem: TQuery;
    qProximoItemItem: TIntegerField;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    SpeedButton11: TSpeedButton;
    Label11: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    ComboBox4: TComboBox;
    CurrencyEdit3: TCurrencyEdit;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
    vCodCorAux, vUltItem, vCodSetorAux, vCodPosicaoAux: Integer;
    procedure Limpa_Campos;
  public
    { Public declarations }
    vItemMat, vCodCombinacao, vCodSetorAnt: Integer;
    vForm : String;
  end;

var
  fProdutoMat: TfProdutoMat;

implementation

uses UDM1, UProduto, UProdutoConsumo, UConsMaterialParaFicha, UDM2,
  UPosicao, UProdutoComb;

{$R *.dfm}

procedure TfProdutoMat.Limpa_Campos;
begin
  RzDBLookupComboBox1.ClearKeyValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo4.ClearValue;
  RxDBLookupCombo10.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit4.Clear;
end;

procedure TfProdutoMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM2.qPosicao.Close;
  Query1.Close;
  qProximoItem.Close;
  Action                := Cafree;
end;

procedure TfProdutoMat.CurrencyEdit4Exit(Sender: TObject);
begin
  if CurrencyEdit4.Value > 0 then
  begin
    if tProdutoM.Locate('Codigo',CurrencyEdit4.Value,[loCaseInsensitive]) then
    begin
      RzDBLookupComboBox1.KeyValue := tProdutoMCodigo.AsInteger;
      RzDBLookupComboBox1.SetFocus;
    end
    else
    begin
      ShowMessage('Material não cadastrado!');
      CurrencyEdit4.SetFocus;
      CurrencyEdit4.Clear;
    end;
  end;
end;

procedure TfProdutoMat.BitBtn11Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoMat.Panel1Exit(Sender: TObject);
begin
  if RzDBLookupComboBox1.Text <> '' then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT Nome, dbCor.Codigo, dbCor.Pantone');
    Query1.SQL.Add('FROM dbCor, dbProdutoCor');
    Query1.SQL.Add('WHERE dbCor.Codigo = CodCor');
    Query1.SQL.Add('AND CodProduto = :x0');
    Query1.SQL.Add('ORDER BY Nome');
    Query1.Params[0].AsInteger := RzDBLookupComboBox1.KeyValue;
    Query1.Open;
    CurrencyEdit4.Value := RzDBLookupComboBox1.KeyValue;
  end
  else
    Query1.Close;

  if fProdutoMat.Tag <> 1 then // 1 = alteração
  begin
    CurrencyEdit2.Value     := tProdutoMPrecoCusto.AsCurrency;
    RxDBLookupCombo10.Value := tProdutoMUnidade.AsString;
    if (tProdutoMLancaGrade.AsBoolean) or not(tProdutoMFichaTecnicaConsPorTam.AsBoolean) then
    begin
      ComboBox1.ItemIndex    := 0;
      ComboBox1.Enabled      := False;
      CurrencyEdit1.ReadOnly := False;
    end
    else
    begin
      ComboBox1.ItemIndex    := 1;
      ComboBox1.Enabled      := True;
      CurrencyEdit1.ReadOnly := True;
    end;
  end;
end;

procedure TfProdutoMat.RxDBLookupCombo1Enter(Sender: TObject);
begin
  tProdutoM.IndexFieldNames := 'Nome';
end;

procedure TfProdutoMat.CurrencyEdit1Enter(Sender: TObject);
begin
  CurrencyEdit1.ReadOnly := not(ComboBox1.ItemIndex = 0);
end;

procedure TfProdutoMat.BitBtn10Click(Sender: TObject);
begin
  if RzDBLookupComboBox1.Text = '' then
    Raise Exception.Create('Não foi informado o material!');

  if RxDBLookupCombo10.Text = '' then
    Raise Exception.Create('Não foi informada a unidade!');

  if ComboBox1.ItemIndex = 1 then
    CurrencyEdit1.Clear;  

  tProdutoM.IndexFieldNames := 'Codigo';
  if (RzDBLookupComboBox1.Text <> '') and
     not(tProdutoM.FindKey([RzDBLookupComboBox1.KeyValue])) then
    Raise Exception.Create('Material não encontrado!');

  if (tProdutoMLancaCor.AsBoolean) and (RxDBLookupCombo3.Text = '') then
    Raise Exception.Create('Este material possui cor!');

  vCodCorAux := 0;
  if DM1.tProdutoLancaCor.AsBoolean then
    vCodCorAux := DM1.tProdutoCorCodCor.AsInteger;
  vCodSetorAux   := 0;
  vCodPosicaoAux := 0;
  if RxDBLookupCombo2.Text <> '' then
    vCodSetorAux := RxDBLookupCombo2.KeyValue;
  if RxDBLookupCombo4.Text <> '' then
    vCodPosicaoAux := RxDBLookupCombo4.KeyValue;

  DM1.tProdutoMat.Refresh;
  DM1.tProdutoMat.Last;
  qProximoItem.Close;
  qProximoItem.ParamByName('CodProduto').AsInteger    := DM1.tProdutoCodigo.AsInteger;
  qProximoItem.ParamByName('CodCorProd').AsInteger    := vCodCorAux;
  qProximoItem.ParamByName('COdCombinacao').AsInteger := vCodCombinacao;
  qProximoItem.ParamByName('CodSetor').AsInteger      := vCodSetorAux;
  qProximoItem.Open;
  qProximoItem.Last;
  vUltItem := qProximoItemItem.AsInteger;
  if fProdutoMat.Tag = 1 then
  begin
    DM1.tProdutoMat.SetKey;
    DM1.tProdutoMatCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
    DM1.tProdutoMatCodCorProd.AsInteger    := vCodCorAux;
    DM1.tProdutoMatCodSetor.AsInteger      := vCodSetorAux;
    DM1.tProdutoMatItem.AsInteger          := vItemMat;
    DM1.tProdutoMatCodCombinacao.AsInteger := vCodCombinacao;
    if DM1.tProdutoMat.GotoKey then
      DM1.tProdutoMat.Edit;
  end;
  if not (DM1.tProdutoMat.State in [dsEdit, dsInsert]) then
  begin
    DM1.tProdutoMat.Insert;
    DM1.tProdutoMatCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
    DM1.tProdutoMatCodCorProd.AsInteger    := vCodCorAux;
    DM1.tProdutoMatCodSetor.AsInteger      := vCodSetorAux;
    DM1.tProdutoMatItem.AsInteger          := vUltItem + 1;
    DM1.tProdutoMatCodCombinacao.AsInteger := vCodCombinacao;
  end;
  DM1.tProdutoMatCodMaterial.AsInteger  := RzDBLookupComboBox1.KeyValue;
  DM1.tProdutoMatCodGrade.AsInteger     := tProdutoMCodGrade.AsInteger;
  Case ComboBox2.ItemIndex of
    0 : DM1.tProdutoMatImpTalao.AsString := 'S';
    1 : DM1.tProdutoMatImpTalao.AsString := 'N';
  end;
  if RxDBLookupCombo3.Text <> '' then
    DM1.tProdutoMatCodCor.AsInteger := RxDBLookupCombo3.KeyValue
  else
    DM1.tProdutoMatCodCor.AsInteger := 0;
  DM1.tProdutoMatQtd.AsFloat            := CurrencyEdit1.Value;
  DM1.tProdutoMatVlrUnitario.AsCurrency := CurrencyEdit2.Value;
  DM1.tProdutoMatVlrTotal.AsCurrency    := 0;
  if (CurrencyEdit1.Value > 0) and (CurrencyEdit2.Value > 0) then
    DM1.tProdutoMatVlrTotal.AsCurrency    := CurrencyEdit1.Value * CurrencyEdit2.Value;
  DM1.tProdutoMatUnidade.AsString       := RxDBLookupCombo10.Value;
  Case ComboBox1.ItemIndex of
    0 : DM1.tProdutoMatConsumo.AsString := 'G';
    1 : DM1.tProdutoMatConsumo.AsString := 'T';
  end;
  if RxDBLookupCombo2.Text <> '' then
    DM1.tProdutoMatCodSetor.AsInteger := RxDBLookupCombo2.KeyValue
  else
    DM1.tProdutoMatCodSetor.AsInteger := 0;
  if RxDBLookupCombo4.Text <> '' then
    DM1.tProdutoMatCodPosicao.AsInteger := RxDBLookupCombo4.KeyValue
  else
    DM1.tProdutoMatCodPosicao.AsInteger := 0;
  DM1.tProdutoMatObs.AsString := Edit1.Text;
  case ComboBox4.ItemIndex of
    0 : DM1.tProdutoMatTipo.AsString := 'MAT';
    1 : DM1.tProdutoMatTipo.AsString := 'EMB';
  end;
  DM1.tProdutoMatQtdPecaProd.AsFloat := CurrencyEdit3.Value;
  DM1.tProdutoMat.Post;
  // Grava a quantidade por tamanho dos materiais
  if ComboBox1.ItemIndex = 1 then
  begin
    fProdutoConsumo := TfProdutoConsumo.Create(Self);
    fProdutoConsumo.ShowModal;
  end
  else
  begin
    DM1.tProdutoConsumo.First;
    while not DM1.tProdutoConsumo.Eof do
    begin
      DM1.tProdutoConsumoItem.First;
      while not DM1.tProdutoConsumoItem.Eof do
        DM1.tProdutoConsumoItem.Delete;
      DM1.tProdutoConsumo.Delete;
    end;
  end;
  //*****************
  if fProdutoMat.Tag = 1 then
    Close;
  Limpa_Campos;
  CurrencyEdit4.SetFocus;
end;

procedure TfProdutoMat.BitBtn1Click(Sender: TObject);
begin
  fConsMaterialParaFicha  := TfConsMaterialParaFicha.Create(Self);
  fConsMaterialParaFicha.ShowModal;
  CurrencyEdit4.SetFocus;
end;

procedure TfProdutoMat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F2 then
    BitBtn1.Click;
end;

procedure TfProdutoMat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfProdutoMat.FormShow(Sender: TObject);
begin
  DM2.qPosicao.Open;
  tProdutoM.Open;
  dm1.tSetor.Open;
  Label8.Visible           := DM1.tParametrosUsaSetorFichaTecnica.AsBoolean;
  RxDBLookupCombo2.Visible := DM1.tParametrosUsaSetorFichaTecnica.AsBoolean;
  RxDBLookupCombo4.Visible := DM1.tParametrosUsaPosicaoFichaTecnica.AsBoolean;
  Label10.Visible          := DM1.tParametrosUsaPosicaoFichaTecnica.AsBoolean;
  SpeedButton11.Visible    := DM1.tParametrosUsaPosicaoFichaTecnica.AsBoolean;
end;

procedure TfProdutoMat.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  tProdutoM.IndexFieldNames := 'Nome';
end;

procedure TfProdutoMat.SpeedButton11Click(Sender: TObject);
begin
  fPosicao := TfPosicao.Create(Self);
  fPosicao.ShowModal;
  DM1.tPosicao.Refresh;
  DM2.qPosicao.Close;
  DM2.qPosicao.Open;
end;

end.
