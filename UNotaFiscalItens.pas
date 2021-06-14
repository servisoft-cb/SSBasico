unit UNotaFiscalItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, StdCtrls, RxLookup, ExtCtrls,
  Db, DBTables, Mask, ToolEdit, CurrEdit, Variants, DBClient, DBFilter, DBCtrls, RzDBCmbo, rsDBUtils, RzButton;

type
  TfNotaFiscalItens = class(TForm)
    RxDBLookupCombo15: TRxDBLookupCombo;
    Label67: TLabel;
    BitBtn15: TBitBtn;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    SpeedButton7: TSpeedButton;
    SpeedButton17: TSpeedButton;
    BitBtn17: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    Panel2: TPanel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    CheckBox2: TCheckBox;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Edit5: TEdit;
    Edit4: TEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    Panel3: TPanel;
    Label1: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    Label8: TLabel;
    Label25: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    mAgrupadoPedGrade: TClientDataSet;
    mAgrupadoPedGradeCodAgrupado: TIntegerField;
    mAgrupadoPedGradePedido: TIntegerField;
    mAgrupadoPedGradeItem: TIntegerField;
    mAgrupadoPedGradeCodGrade: TIntegerField;
    mAgrupadoPedGradePosicao: TIntegerField;
    mAgrupadoPedGradeQtd: TFloatField;
    dsmAgrupadoPed: TDataSource;
    mAgrupadoPed: TClientDataSet;
    mAgrupadoPedCodAgrupado: TIntegerField;
    mAgrupadoPedPedido: TIntegerField;
    mAgrupadoPedItem: TIntegerField;
    mAgrupadoPedNumOC: TStringField;
    mAgrupadoPedNumOS: TStringField;
    mAgrupadoPedQtd: TFloatField;
    dsmAgrupado: TDataSource;
    mAgrupadoGrade: TClientDataSet;
    mAgrupadoGradeCodAgrupado: TIntegerField;
    mAgrupadoGradeCodGrade: TIntegerField;
    mAgrupadoGradePosicao: TIntegerField;
    mAgrupadoGradeTamanho: TStringField;
    mAgrupadoGradeQtd: TFloatField;
    dsmAgrupadoGrade: TDataSource;
    mAgrupado: TClientDataSet;
    mAgrupadoCodAgrupado: TIntegerField;
    mAgrupadoCodProduto: TIntegerField;
    mAgrupadoReferencia: TStringField;
    mAgrupadoNomeProduto: TStringField;
    mAgrupadoQtd: TFloatField;
    mAgrupadoVlrUnitario: TFloatField;
    mAgrupadoUnidade: TStringField;
    mAgrupadoCodSitTrib: TIntegerField;
    mAgrupadoCodCor: TIntegerField;
    mAgrupadoNomeCor: TStringField;
    mAgrupadoPercComissao1: TFloatField;
    mAgrupadoPercComissao2: TFloatField;
    mAgrupadoCodGrade: TIntegerField;
    mAgrupadoPosicao: TIntegerField;
    mAgrupadoLargura: TStringField;
    dsmMaterial: TDataSource;
    mSelecionado: TClientDataSet;
    mSelecionadoFilial: TIntegerField;
    mSelecionadoNumNota: TIntegerField;
    mSelecionadoItem: TIntegerField;
    mSelecionadoCodFornecedor: TIntegerField;
    mSelecionadoCodMaterial: TIntegerField;
    mSelecionadoCodCor: TIntegerField;
    mSelecionadoQtdRestante: TFloatField;
    mSelecionadoQtd: TFloatField;
    mSelecionadoNomeMaterial: TStringField;
    mSelecionadoNomeCor: TStringField;
    mSelecionadoUnidade: TStringField;
    mSelecionadoSitTrib: TIntegerField;
    mSelecionadoVlrUnitario: TFloatField;
    mSelecionadoVlrTotalItens: TFloatField;
    dsmSelecionado: TDataSource;
    mMaterial: TClientDataSet;
    mMaterialCodMaterial: TIntegerField;
    mMaterialCodCor: TIntegerField;
    mMaterialNomeMaterial: TStringField;
    mMaterialNomeCor: TStringField;
    mMaterialQtdNota: TFloatField;
    mMaterialQtdConsumo: TFloatField;
    mMaterialCodGrade: TIntegerField;
    mMaterialItemNota: TIntegerField;
    mMaterialQtdConsumoInf: TFloatField;
    mMaterialQtdConsumoOriginal: TFloatField;
    qCor: TQuery;
    dsqCor: TDataSource;
    qCorNome: TStringField;
    qCorCodCor: TIntegerField;
    CheckBox1: TCheckBox;
    mAgrupadoPedNumTalao: TIntegerField;
    mAgrupadoPedGradeNumTalao: TIntegerField;
    dsmAgrupadoPedGrade: TDataSource;
    RxDBLookupCombo7: TRxDBLookupCombo;
    mAgrupadoFabrica: TStringField;
    mSelecionadoCodGrade: TIntegerField;
    mSelecionadoPosicao: TIntegerField;
    mSelecionadoTamanho: TStringField;
    RxDBFilter1: TRxDBFilter;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    RxDBFilter2: TRxDBFilter;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    qCombinacao: TQuery;
    qCombinacaoCodCombinacao: TIntegerField;
    qCombinacaoNome: TStringField;
    dsqCombinacao: TDataSource;
    mAgrupadoCodCombinacao: TIntegerField;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    Label22: TLabel;
    Memo1: TMemo;
    BitBtn12: TBitBtn;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    RzButton1: TRzButton;
    Label21: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    RadioGroup1: TRadioGroup;
    mSelecionadoSerie: TStringField;
    mSelecionadoModelo: TStringField;
    mSelecionadoUFFornecedor: TStringField;
    mSelecionadoDtEmissao: TDateField;
    mSelecionadoNFeChaveAcesso: TStringField;
    Label3: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RxDBLookupCombo15Enter(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure CurrencyEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit6Exit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBLookupCombo15Exit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure Panel3Enter(Sender: TObject);
    procedure mAgrupadoGradeNewRecord(DataSet: TDataSet);
    procedure mAgrupadoNewRecord(DataSet: TDataSet);
    procedure mMaterialNewRecord(DataSet: TDataSet);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzDBLookupComboBox1Exit(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RzDBLookupComboBox2Enter(Sender: TObject);
    procedure RzDBLookupComboBox2DropDown(Sender: TObject);
    procedure RzDBLookupComboBox2Exit(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure RxDBLookupCombo13Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mSelecionadoNewRecord(DataSet: TDataSet);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
  private
    { Private declarations }
    vCodProduto : Integer;
    vCodCor : Integer;
    vAliqIPI : Real;

    procedure Limpa_Edit;
    procedure prc_Mover_Lei_Transparencia;
    procedure prc_Busca_IBPT;

  public
    { Public declarations }
    procedure Move_Itens;
    procedure Abre_SQLCor;
    procedure Monta_SQLCombinacao;
  end;

var
  fNotaFiscalItens: TfNotaFiscalItens;
  vNumOC : String;
  vNumOS : String;
  vPlano : String;

implementation

uses UDM1, UEmissaoNotaFiscal, USitTributaria, UProduto, UMaterial, UNotaFiscalGrade,
  UEscNotaDevolPorItem2, UBuscaPedido, UNotaFiscalOC, UBuscaVale, UTabPreco,
  Math, StrUtils, UNotaFiscalAliq, UCSTIPI, UDMTabImposto,
  USitTributariaSimples, uCalculos, UDMTabIBPT;

{$R *.DFM}

//NFe 2.00  Foi tirada esta procedure e colocada dentro da unit UCalculos
{procedure TfNotaFiscalItens.Calcula_ICMSSimples;
var
  vSitTributaria : Real;
  vBaseAux, vVlrIcmsAux : Real;
begin
  vBaseAux := CurrencyEdit5.Value;
  //Lê a tabela da Situação tributária
  vSitTributaria := 0;
  if RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := RxDBLookupCombo13.KeyValue;
      if DM1.tSitTributaria.GotoKey then
        vSitTributaria := DM1.tSitTributariaSitTributaria.AsFloat
      else
        begin
          ShowMessage('Sit. Tributária não encontrada! ICMS será calculado 100%!');
          vSitTributaria := 100;
        end;
    end;
  //if vSitTributaria <= 0 then
  //  vSitTributaria := 100;

  if vSitTributaria > 0 then
    vBaseAux := StrToCurr(FormatCurr('0.00',vBaseAux * vSitTributaria  / 100))
  else
    vBaseAux := 0;
  vVlrIcmsAux := 0;

  //Calcula o valor do icms
  if vBaseAux > 0 then
    vVlrIcmsAux := StrToCurr(FormatCurr('0.00',vBaseAux * DM1.tNotaFiscalPercIcmsSimples.AsFloat / 100));
  DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat := StrToCurr(FormatCurr('0.00',vBaseAux));
  DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat  := StrToCurr(FormatCurr('0.00',vVlrIcmsAux));

  DM1.tNotaFiscalBaseIcmsSimples.AsFloat := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsCurrency + DM1.tNotaFiscalItensBaseIcmsSimples.AsCurrency));
  DM1.tNotaFiscalVlrIcmsSimples.AsFloat  := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrIcmsSimples.AsCurrency + DM1.tNotaFiscalItensVlrIcmsSimples.AsCurrency));
end;}

procedure TfNotaFiscalItens.Monta_SQLCombinacao;
var
  vCodCorAux : Integer;
begin
  vCodCorAux := 0;
  if DM1.tProdutoLancaCor.AsBoolean then
    vCodCorAux := RxDBLookupCombo4.KeyValue;
  qCombinacao.Close;
  qCombinacao.ParamByName('CodProduto').AsInteger := RZDBLookupComboBox2.KeyValue;
  qCombinacao.ParamByName('CodCor').AsInteger     := vCodCorAux;
  qCombinacao.Open;
end;

procedure TfNotaFiscalItens.Abre_SQLCor;
begin
  qCor.Close;
  qCor.ParamByName('CodProduto').AsInteger := RZDBLookupComboBox2.KeyValue;
  qCor.Open;
end;

//NFe 2.00  Foi tirada esta procedure e colocada dentro da unit UCalculos
{procedure TfNotaFiscalItens.Calcula_IPI;
begin
  vValorIPI := 0;
  if (Edit5.Text <> '') and (Edit5.Text <> '0') then
    vValorIPI := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value * StrToFloat(Edit5.Text) / 100));
end;}

//NFe 2.00  Foi tirada esta procedure e colocada dentro da unit UCalculos
{procedure TfNotaFiscalItens.Calcula_ICMS;
var
  vSitTributaria : Real;
begin
  vBaseICMS := CurrencyEdit5.Value;
  //Verifica se soma o ipi na base so icms
  if DM1.tNotaFiscalItensIcmsIpi.AsBoolean then
    vBaseICMS  := StrToCurr(FormatCurr('0.00',vBaseICMS + vValorIPI));
  //Lê a tabela da Situação tributária
  vSitTributaria := 0;
  if RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := RxDBLookupCombo13.KeyValue;
      if DM1.tSitTributaria.GotoKey then
        vSitTributaria := DM1.tSitTributariaSitTributaria.AsFloat
      else
        ShowMessage('Sit. Tributária não encontrada! ICMS não será calculado!');
    end;
  if vSitTributaria > 0 then
    //19/01/2010
    //vBaseICMS := vBaseICMS * vSitTributaria  / 100
    vBaseICMS := StrToCurr(FormatCurr('0.00',vBaseICMS * vSitTributaria  / 100))
  else
    vBaseICMS := 0;
  if vBaseICMS > 0 then
    //19/01/2010
    //vValorICMS := vBaseICMS * DM1.tNotaFiscalItensIcms.AsFloat / 100
    vValorICMS := StrToCurr(FormatCurr('0.00',vBaseICMS * DM1.tNotaFiscalItensIcms.AsFloat / 100))
  else
    vValorICMS := 0;
end;}

procedure TfNotaFiscalItens.Limpa_Edit;
begin
  Edit4.Clear;
  Edit5.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  CurrencyEdit6.Clear;
  CurrencyEdit7.Clear;
  RZDBLookupComboBox2.ClearKeyValue;
  RzDBLookupComboBox1.ClearKeyValue;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo4.ClearValue;
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo13.ClearValue;
  Memo1.Lines.Clear;
  vNumPedido        := 0;
  vItemPedido       := 0;
  vNumLote          := 0;
  vItemNota         := 0;
  vFabrica          := '';
  CheckBox2.Checked := True;
  CheckBox1.Checked := True;
  vNumNotaDevItem   := 0;
  vCodForncDevItem  := 0;
  vItemDev          := 0;
  vNumOC            := '';
  vNumOS            := '';
  vPlano            := '';
  //NFe 2.00
  fEmissaoNotaFiscal.vPercPis          := 0;
  fEmissaoNotaFiscal.vPercCofins       := 0;
  fEmissaoNotaFiscal.vVlrPis           := 0;
  fEmissaoNotaFiscal.vVlrCofins        := 0;
  fEmissaoNotaFiscal.vCodPis           := '';
  fEmissaoNotaFiscal.vCodCofins        := '';
  fEmissaoNotaFiscal.vTipoPis          := '';
  fEmissaoNotaFiscal.vTipoCofins       := '';
  fEmissaoNotaFiscal.vPercPis          := 0;
  fEmissaoNotaFiscal.vPercCofins       := 0;
  fEmissaoNotaFiscal.vOrigemMerc       := '';
  fEmissaoNotaFiscal.vSomaVlrTotalProd := True;
  //*************

  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
  while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
  mSelecionado.EmptyDataSet;
end;

procedure TfNotaFiscalItens.Move_Itens;
var
  //12.741/12
  vDescExp : String;
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  fEmissaoNotaFiscal.Verifica_UF;
  CurrencyEdit6.AsInteger := DM1.tProdutoCodigo.AsInteger;

  if (fEmissaoNotaFiscal.SpeedButton23.Tag = 1) and (vCodProduto <> CurrencyEdit6.AsInteger) then
  begin
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
    while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Refresh;
    CurrencyEdit3.Clear;
  end;

  if (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodProduto <> CurrencyEdit6.AsInteger) then
  begin
    RxDBLookupCombo4.ClearValue;
    CurrencyEdit7.Clear;
    RxDBLookupCombo7.Value := DM1.tProdutoUnidade.AsString;
    CurrencyEdit3.AsInteger := 0;
  end;
  vAliqIPI            := 0;
  //Lei 12.741/12
  CurrencyEdit8.Value := 0;
  if RxDBLookupCombo15.Text <> '' then
  begin
    DM1.tNatOperacao.IndexFieldNames := 'Codigo';
    DM1.tNatOperacao.SetKey;
    DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo15.KeyValue;
    if DM1.tNatOperacao.GotoKey then
      begin
        if not(Dm1.tFilialSimplesGaucho.AsBoolean) and not(Dm1.tFilialSimples.AsBoolean) then
          begin
            if (DM1.tNatOperacaoIcms.AsBoolean) and (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) then
              begin
               if vAliqICMS > 0 then
                 Edit4.Text := FloatToStr(vAliqICMS)
               else
                 Edit4.Text := DM1.tProdutoAliqICMS.AsString;
             end
            else
              Edit4.Clear;
          end;
        if RxDBLookupCombo13.Text <> '' then
          vCodSitTrib := RxDBLookupCombo13.KeyValue;
        if (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodProduto <> CurrencyEdit6.AsInteger) then
          begin
            vCodSitTrib := 0;
            if (DM1.tFilialSimplesGaucho.AsBoolean) or (DM1.tFilialSimples.AsBoolean) then
              if DM1.tClienteCodSitTribSimples.AsInteger > 0 then
                vCodSitTrib := DM1.tClienteCodSitTribSimples.AsInteger;
            if vCodSitTrib <= 0 then
            begin
              if DM1.tProdutoCodSitTrib.AsInteger > 0 then
                vCodSitTrib := DM1.tProdutoCodSitTrib.AsInteger
              else
              if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
                vCodSitTrib := DM1.tNatOperacaoCodSitTrib.AsInteger
              else
              if DM1.tFilialCodSitTrib.AsInteger > 0 then
                vCodSitTrib := DM1.tFilialCodSitTrib.AsInteger;
            end;
              
            if DM1.tNatOperacaoCalcComissao.AsBoolean then
              begin
                CurrencyEdit7.Value := DM1.tNotaFiscalPercComissao.AsFloat;
                if DM1.tParametrosTipoComissao.AsString = 'P' then
                  begin
                    if vNumPedido < 1 then
                      begin
                        if DM1.tProdutoPercComissaoVend.AsFloat > 0 then
                          CurrencyEdit7.Value := DM1.tProdutoPercComissaoVend.AsFloat;
                      end;
                  end;
              end
            else
              CurrencyEdit7.Clear;
          end;

        if DM1.tNatOperacaoIpi.AsBoolean then
          vAliqIPI := DM1.tProdutoAliqIPI.AsFloat;
        if (vAliqIPI <= 0) and (DM1.tClienteIpi.AsFloat > 0) and (vUsaIPI)  then
          vAliqIPI := DM1.tClienteIpi.AsFloat
        else
        if not vUsaIPI then
          vAliqIPI := 0;
      end;

    if DM1.tClienteCodCSTIPI.AsString <> '' then
      RxDBLookupCombo1.Value := DM1.tClienteCodCSTIPI.AsString
    else
    if DM1.tProdutoCodCSTIPI.AsString <> '' then
      RxDBLookupCombo1.Value := DM1.tProdutoCodCSTIPI.AsString
    else
    if DM1.tNatOperacaoCodCSTIPI.AsString <> '' then
      RxDBLookupCombo1.Value := DM1.tNatOperacaoCodCSTIPI.AsString
    else
    if DM1.tFilialCodCSTIPI.AsString <> '' then
      RxDBLookupCombo1.Value := DM1.tFilialCodCSTIPI.AsString;

    //NFe 2.0
    fEmissaoNotaFiscal.vSomaVlrTotalProd := DM1.tNatOperacaoSomaMercNF.AsBoolean;
    fEmissaoNotaFiscal.vOrigemMerc := DM1.tProdutoOrigemProd.AsString;
    if (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodProduto <> CurrencyEdit6.AsInteger) then
    begin
      if DM1.tNatOperacaoCodPis.AsString <> '' then
      begin
        fEmissaoNotaFiscal.vCodPis  := DM1.tNatOperacaoCodPis.AsString;
        fEmissaoNotaFiscal.vTipoPis := DM1.tNatOperacaoTipoPis.AsString;
        fEmissaoNotaFiscal.vPercPis := DM1.tNatOperacaoPercPis.AsFloat;
      end
      else
      begin
        fEmissaoNotaFiscal.vCodPis  := DM1.tFilialCodPis.AsString;
        fEmissaoNotaFiscal.vTipoPis := DM1.tFilialTipoPis.AsString;
        fEmissaoNotaFiscal.vPercPis := DM1.tFilialPercPis.AsFloat;
      end;
        
      if DM1.tNatOperacaoCodCofins.AsString <> '' then
      begin
        fEmissaoNotaFiscal.vCodCofins  := DM1.tNatOperacaoCodCofins.AsString;
        fEmissaoNotaFiscal.vTipoCofins := DM1.tNatOperacaoTipoCofins.AsString;
        fEmissaoNotaFiscal.vPercCofins := DM1.tNatOperacaoPercCofins.AsFloat;
      end
      else
      begin
        fEmissaoNotaFiscal.vCodCofins  := DM1.tFilialCodCofins.AsString;
        fEmissaoNotaFiscal.vTipoCofins := DM1.tFilialTipoCofins.AsString;
        fEmissaoNotaFiscal.vPercCofins := DM1.tFilialPercCofins.AsFloat;
      end;
    end;
  end;
  if (Dm1.tFilialSimples.AsBoolean) then
    Edit5.Text := '0'
  else
  if (DM1.tClienteIPISuspenso.AsBoolean) and (DM1.tClienteDtValidadeIPI.AsDateTime < DM1.tNotaFiscalDtEmissao.AsDateTime) then
    Edit5.Text := '0'
  else
    Edit5.Text := FloatToStr(vAliqIPI);
  if vCodSitTrib > 0 then
    RxDBLookupCombo13.KeyValue := vCodSitTrib
  else
    RxDBLookupCombo13.ClearValue;

  if DM1.tProdutoCodClasFiscal.AsString <> '' then
    RxDBLookupCombo5.Value := DM1.tProdutoCodClasFiscal.Value;
  if (fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodProduto <> CurrencyEdit6.AsInteger) then
    begin
      if not DM1.tProdutoPrecoGrade.AsBoolean then
        begin
          if DM1.tProdutoProdMat.AsString = 'P' then
            begin
              if RxDBLookupCombo4.Text = '' then
                DM1.tProdutoCor.First;
              DM1.tTabPreco.SetKey;
              DM1.tTabPrecoCodCliente.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
              DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              if (DM1.tProdutoLancaCor.AsBoolean) and not(DM1.tProdutoPrecoCor.AsBoolean) then
                DM1.tTabPrecoCodCor.AsInteger   := DM1.tProdutoCorCodCor.AsInteger
              else
              if not DM1.tProdutoLancaCor.AsBoolean then
                DM1.tTabPrecoCodCor.AsInteger := 0;
              if DM1.tTabPreco.GotoKey then
                begin
                  if DM1.tNatOperacaoMaoObra.AsBoolean then
                    begin
                      if DM1.tTabPrecoPrecoMObra.AsFloat > 0 then
                        CurrencyEdit4.Value := DM1.tTabPrecoPrecoMObra.AsFloat
                      else
                        CurrencyEdit4.Value := DM1.tTabPrecoPreco.AsFloat;
                    end
                  else
                    begin
                      if DM1.tTabPrecoPreco.AsFloat > 0 then
                        CurrencyEdit4.Value := DM1.tTabPrecoPreco.AsFloat
                      else
                        CurrencyEdit4.Value := DM1.tTabPrecoPrecoMObra.AsFloat;
                    end;
                end;
              if CurrencyEdit4.Value = 0 then
                CurrencyEdit4.Value := DM1.tProdutoVlrVenda.AsFloat;
            end
          else
            CurrencyEdit4.Value := DM1.tProdutoPrecoCusto.AsFloat;
        end;
      CurrencyEdit5.Value := CurrencyEdit4.Value;
    end;
  CurrencyEdit3.ReadOnly    := False;
  if DM1.tProdutoLancaGrade.AsBoolean then
    CurrencyEdit3.ReadOnly    := True;
  Abre_SQLCor;
  if fEmissaoNotaFiscal.SpeedButton23.Tag = 1 then
    begin
      Monta_SQLCombinacao;
      if fEmissaoNotaFiscal.vCodCombinacao > 0 then
        RxDBLookupCombo2.KeyValue := fEmissaoNotaFiscal.vCodCombinacao;
    end;
  //12.741/12
  prc_Mover_Lei_Transparencia;
end;

procedure TfNotaFiscalItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tSitTributaria.Filtered := False;
  fEmissaoNotaFiscal.vPercPis          := 0;
  fEmissaoNotaFiscal.vPercCofins       := 0;
  fEmissaoNotaFiscal.vVlrPis           := 0;
  fEmissaoNotaFiscal.vVlrCofins        := 0;
  fEmissaoNotaFiscal.vOrigemMerc       := '';
  fEmissaoNotaFiscal.vSomaVlrTotalProd := True;
  fEmissaoNotaFiscal.vCodPis     := '';
  fEmissaoNotaFiscal.vCodCofins  := '';
  fEmissaoNotaFiscal.vTipoPis    := '';
  fEmissaoNotaFiscal.vTipoCofins := '';

  oActiveTables.OpenTables(False,Self);

  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  qCor.Close;
  qCombinacao.Close;
  fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
  DM1.tProduto2.Open;

  Action := Cafree;
end;                             

procedure TfNotaFiscalItens.SpeedButton5Click(Sender: TObject);
begin
  //NFe 2.00
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      if DM1.tFilialSimples.AsBoolean then
      begin
        fSitTributariaSimples := TfSitTributariaSimples.Create(Self);
        fSitTributariaSimples.ShowModal;
      end
      else
      begin
        fSitTributaria := TfSitTributaria.Create(Self);
        fSitTributaria.ShowModal;
      end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfNotaFiscalItens.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    begin
      if ((fEmissaoNotaFiscal.SpeedButton23.Tag <> 1) or (vCodCor <> RxDBLookupCombo4.KeyValue)) then
        begin
          DM1.tProdutoCor.Locate('CodCor',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);
          if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) and (DM1.tProdutoProdMat.AsString = 'M') then
            CurrencyEdit4.Value := DM1.tProdutoCorPrCusto.AsFloat
          else
          if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) and (DM1.tProdutoProdMat.AsString = 'P') then
            begin
              DM1.tTabPreco.SetKey;
              DM1.tTabPrecoCodCliente.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
              DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tTabPrecoCodCor.AsInteger     := RxDBLookupCombo4.KeyValue;
              if DM1.tTabPreco.GotoKey then
                begin
                  if DM1.tNatOperacaoMaoObra.AsBoolean then
                    begin
                      if DM1.tTabPrecoPrecoMObra.AsFloat > 0 then
                        CurrencyEdit4.Value := DM1.tTabPrecoPrecoMObra.AsFloat
                      else
                        CurrencyEdit4.Value := DM1.tTabPrecoPreco.AsFloat;
                    end
                  else
                    begin
                      if DM1.tTabPrecoPreco.AsFloat > 0 then
                        CurrencyEdit4.Value := DM1.tTabPrecoPreco.AsFloat
                      else
                        CurrencyEdit4.Value := DM1.tTabPrecoPrecoMObra.AsFloat;
                    end;
                end;
              if CurrencyEdit4.Value = 0 then
                CurrencyEdit4.Value := DM1.tProdutoCorVlrVenda.AsFloat;
            end;
        end;
    end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalItens.SpeedButton1Click(Sender: TObject);
var
  vFiltro : String;
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      //NFe 2.00
      vFiltro := DM1.tSitTributaria.Filter;
      DM1.tSitTributaria.Filtered := False;

      RxDBFilter1.Active := False;
      RxDBFilter2.Active := False;
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      DM1.tProduto.IndexFieldNames := 'Referencia';
      RxDBFilter1.Active := True;
      RxDBFilter2.Active := True;
      DM1.tProduto.Refresh;
      DM1.tProdutoCor.Refresh;
      DM1.tProdutoMat.Refresh;
      if RzDBLookupComboBox1.Text <> ''  then
        DM1.tProduto.Locate('Codigo',RzDBLookupComboBox1.KeyValue,[loCaseInsensitive]);

      //NFe 2.00
      DM1.tSitTributaria.Filtered := False;
      DM1.tSitTributaria.Filter   := vFiltro;
      DM1.tSitTributaria.Filtered := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfNotaFiscalItens.SpeedButton2Click(Sender: TObject);
var
  vFiltro : String;
begin
  if DM1.tUsuarioMaterial.AsBoolean then
    begin
      //NFe 2.00
      vFiltro := DM1.tSitTributaria.Filter;
      DM1.tSitTributaria.Filtered := False;
    
      RxDBFilter1.Active := False;
      RxDBFilter2.Active := False;
      fMaterial := TfMaterial.Create(Self);
      fMaterial.ShowModal;
      DM1.tProduto.IndexFieldNames := 'Referencia';
      RxDBFilter1.Active := True;
      RxDBFilter2.Active := True;
      DM1.tProduto.Refresh;
      DM1.tProdutoCor.Refresh;
      DM1.tProdutoMat.Refresh;
      if (RZDBLookupComboBox2.Text <> '')  then
        DM1.tProduto.Locate('Codigo',RZDBLookupComboBox2.KeyValue,[loCaseInsensitive]);

      //NFe 2.00
      DM1.tSitTributaria.Filtered := False;
      DM1.tSitTributaria.Filter   := vFiltro;
      DM1.tSitTributaria.Filtered := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfNotaFiscalItens.BitBtn15Click(Sender: TObject);
begin
  fEscNotaDevolPorItem2 := TfEscNotaDevolPorItem2.Create(Self);
  fEscNotaDevolPorItem2.ShowModal;
  if not Panel3.Enabled then
    CurrencyEdit3.ReadOnly := True
  else
    CurrencyEdit3.ReadOnly := False;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo15Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfNotaFiscalItens.SpeedButton17Click(Sender: TObject);
begin
  if RxDBLookupCombo15.Text <> '' then
    begin
      fEmissaoNotaFiscal.vCodCorGeral := 0;
      fNotaFiscalItens.SpeedButton17.Tag := 1;
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
      while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
        fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
      fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
      vNumPedido   := 0;
      vItemPedido  := 0;
      vNumLote     := 0;
      vFabrica     := '';
      fBuscaPedido := TfBuscaPedido.Create(Self);
      fBuscaPedido.RadioGroup1.ItemIndex := 0;
      fBuscaPedido.ShowModal;
      fNotaFiscalItens.SpeedButton17.Tag := 0;
    end
  else
    ShowMessage('Falta informar a natureza!');
end;

procedure TfNotaFiscalItens.SpeedButton7Click(Sender: TObject);
begin
  Limpa_Edit;
  Panel3.Enabled := True;
  RxDBLookupCombo4.ReadOnly := False;
  qCor.Close;
end;

procedure TfNotaFiscalItens.BitBtn6Click(Sender: TObject);
var
  vQtdAux : Real;
  vObs : Boolean;
  i : Integer;
  vAux : Real;
  vPesoL, vPesoB : Real;
  vFlag : Boolean;
  vQtdGrade : Currency;
  vTextoErro : String;
  vClasFiscal : String;
begin
  //Posiciona o Cliente
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  if vSiglaUF = '' then
    fEmissaoNotaFiscal.Verifica_UF;
  vQtdGrade := 0;
  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
  while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
  begin
    vQtdGrade := vQtdGrade + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Next;
  end;
  //Posiciona o Produto
  if RZDBLookupComboBox2.Text <> '' then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.SetKey;
    DM1.tProdutoCodigo.AsInteger := RZDBLookupComboBox2.KeyValue;
    if not DM1.tProduto.GotoKey then
    begin
      RZDBLookupComboBox2.ClearKeyValue;
      ShowMessage('Produto não cadastrado!');
      exit;
    end
    else
      vClasFiscal := DM1.tProdutoCodClasFiscal.AsString;
  end;

  if RxDBLookupCombo5.Text <> '' then
    vClasFiscal := RxDBLookupCombo5.Text;

  if (vSiglaUF = '') or (DM1.tNotaFiscalCodCli.AsInteger < 1) then
  begin
    ShowMessage('Cliente não informado ou sem UF!');
    Exit;
  end;
  //NFe 2.0
  if (DM1.tProdutoProdMat.AsString <> 'N') and (fEmissaoNotaFiscal.vOrigemMerc = '') then
  begin
    ShowMessage('Falta informar a origem!');
    exit;
  end;
  //*****
  if (DM1.tProdutoProdMat.AsString <> 'N') and (RxDBLookupCombo13.Text = '') then
  begin
    ShowMessage('Falta informar a situação tributária!');
    RxDBLookupCombo13.SetFocus;
    exit;
  end;
  if RxDBLookupCombo5.Text = '' then
    RxDBLookupCombo5.Value := DM1.tProdutoCodClasFiscal.Value;
  if RxDBLookupCombo5.Text = '' then
    RxDBLookupCombo5.Value := vClasFiscal;

  if (DM1.tProdutoProdMat.AsString <> 'N') and ((RxDBLookupCombo5.Text = '') and (DM1.tProdutoCodClasFiscal.AsString = '')) then
  begin
    ShowMessage('Falta informar a classificação fiscal!');
    RxDBLookupCombo5.SetFocus;
    exit;
  end;

  if DM1.tNotaFiscalCodCli.AsInteger <> DM1.tClienteCodigo.AsInteger then
  begin
    DM1.tCliente.IndexFieldNames := 'Codigo';
    DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  end;

  vTextoErro := '';
  if RxDBLookupCombo15.Text = '' then
    vTextoErro := 'Falta informar a natureza operação!';
  if RzDBLookupComboBox2.Text = '' then
    vTextoErro := 'Falta informar o produto!';
  if RxDBLookupCombo7.Text = '' then
    vTextoErro := 'Falta informar a unidade!';
  if vSiglaUF = '' then
    vTextoErro := 'Falta informar o estado no cliente!';
  if DM1.tNotaFiscalCodCli.AsInteger <= 0 then
    vTextoErro := 'Falta informar o cliente!';

  if DM1.tProdutoProdMat.AsString <> 'N' then
  begin
    if CurrencyEdit3.Value <= 0 then
      vTextoErro := 'Falta informar a quantidade!';
    if CurrencyEdit4.Value <= 0 then
      vTextoErro := 'Falta informar o valor unitário!';
    if CurrencyEdit5.Value <= 0 then
      vTextoErro := 'Valor total não calculado!';
  end;
  if vTextoErro <> '' then
  begin
    ShowMessage(vTextoErro);
    exit;
  end;

  if DM1.tProdutoProdMat.AsString = 'N' then
    CheckBox2.Checked := False
  else
    CheckBox2.Checked := True;

  if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo4.Text = '') and (fEmissaoNotaFiscal.vCodCorGeral <> 99999) then
  begin
    ShowMessage('Neste produto é obrigatório informar a cor!');
    RxDBLookupCombo4.SetFocus;
    exit;
  end;

  CurrencyEdit4Exit(Sender);

  fEmissaoNotaFiscal.tNotaFiscalItensIns.Refresh;
  fEmissaoNotaFiscal.tNotaFiscalItensIns.Last;
  DM1.tNotaFiscalItens.Insert;
  Dm1.tNotaFiscalItensFilial.AsInteger := Dm1.tNotaFiscalFilial.AsInteger;

  // Rocha - NFU
  DM1.tNotaFiscalItensNumSeq.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;

  if vItemNota > 0 then
    DM1.tNotaFiscalItensItem.AsInteger := vItemNota
  else
    DM1.tNotaFiscalItensItem.AsInteger := fEmissaoNotaFiscal.tNotaFiscalItensInsItem.AsInteger + 1;
  if RxDBLookupCombo5.Text = '' then
    DM1.tNotaFiscalItensClasFiscal.AsString := DM1.tProdutoCodClasFiscal.AsString
  else
    DM1.tNotaFiscalItensClasFiscal.AsString := RxDBLookupCombo5.Value;
  if Trim(DM1.tNotaFiscalItensClasFiscal.AsString) = '' then
    DM1.tNotaFiscalItensClasFiscal.AsString := vClasFiscal;

  if Trim(DM1.tNotaFiscalItensClasFiscal.AsString) = '' then
    DM1.tNotaFiscalItensClasFiscal.AsString := vClasFiscal;

  DM1.tNotaFiscalItensNatOper.AsInteger    := RxDBLookupCombo15.KeyValue;
  DM1.tNotaFiscalItensCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
  DM1.tNotaFiscalItensReferencia.AsString  := DM1.tProdutoReferencia.AsString;
  DM1.tNotaFiscalItensDescricao.AsString   := DM1.tProdutoNome.AsString;
  DM1.tNotaFiscalItensMaterial.AsBoolean   := False;
  if DM1.tProdutoProdMat.AsString = 'M' then
    DM1.tNotaFiscalItensMaterial.AsBoolean := True;
  DM1.tNotaFiscalItensEstoque.AsBoolean    := CheckBox2.Checked;
  DM1.tNotaFiscalItensCodCor.AsInteger     := 0;
  if fEmissaoNotaFiscal.vCodCorGeral = 99999 then
    DM1.tNotaFiscalItensCodCor.AsInteger := fEmissaoNotaFiscal.vCodCorGeral
  else
  if RxDBLookupCombo4.Text <> '' then
    DM1.tNotaFiscalItensCodCor.AsInteger := RxDBLookupCombo4.KeyValue;
  //Procura o nome do material no fornecedor
  if DM1.tProdutoProdMat.AsString = 'M' then
    begin
      if (DM1.tProdutoCli.Locate('CodCor;CodCliente;Posicao',VarArrayOf([DM1.tNotaFiscalItensCodCor.AsInteger,DM1.tNotaFiscalCodCli.AsInteger,DM1.tNotaFiscalItensPosicao.AsInteger]),[locaseinsensitive])) and
         (DM1.tProdutoCliNomeProdCli.AsString <> '') then
        DM1.tNotaFiscalItensDescricao.AsString   := DM1.tProdutoCliNomeProdCli.AsString;
    end;
  //**********
  DM1.tNotaFiscalItensUnidade.AsString      := RxDBLookupCombo7.Text;
  DM1.tNotaFiscalItensQtd.AsFloat           := CurrencyEdit3.Value;
  DM1.tNotaFiscalItensPercComissao.AsFloat  := CurrencyEdit7.Value;
  if RxDBLookupCombo1.Text <> '' then
    DM1.tNotaFiscalItensCodCSTIPI.AsString := RxDBLookupCombo1.Value
  else
    DM1.tNotaFiscalItensCodCSTIPI.AsString := '';
  //if DM1.tNotaFiscalSaidaEntrada.AsString = 'E' then
  //  DM1.tNotaFiscalItensGeraDupl.AsBoolean := False
  //else
    DM1.tNotaFiscalItensGeraDupl.AsBoolean := DM1.tNatOperacaoGeraDuplicata.AsBoolean;
  DM1.tNotaFiscalItensIcmsIpi.AsBoolean  := DM1.tNotaFiscalIcmsIpi.AsBoolean;
  if BitBtn17.Tag = 1 then
    Dm1.tNotafiscalItensVale.AsBoolean := True
  else
    Dm1.tNotafiscalItensVale.AsBoolean := False;
  //NFe 2.0
  if RxDBLookupCombo5.Text <> '' then
    DM1.tNotaFiscalItensClasFiscal.AsString := RxDBLookupCombo5.Value;

  vBaseICMS  := 0;
  vValorICMS := 0;
  vValorIPI  := 0;
  if RxDBLookupCombo13.Text <> '' then
    DM1.tNotaFiscalItensSitTrib.AsInteger := RxDBLookupCombo13.KeyValue
  else
    DM1.tNotaFiscalItensSitTrib.AsInteger := 0;
  DM1.tNotaFiscalItensIcms.AsFloat := 0;
  if not Edit4.Visible then
    Edit4.Text := '';  
  if (Edit4.Text <> '') and (Edit4.Text <> '0') then
  begin
    if StrToFloat(Edit4.Text) > 0 then
      DM1.tNotaFiscalItensICMS.AsFloat := StrToFloat(Edit4.Text);
  end;

  DM1.tNotaFiscalItensBaseICMS.AsCurrency := StrToCurr(FormatCurr('0.00',vBaseICMS));
  DM1.tNotaFiscalItensVlrICMS.AsCurrency  := StrToCurr(FormatCurr('0.00',vValorICMS));
  DM1.tNotaFiscalBaseICMS.AsCurrency      := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency + vBaseICMS));
  DM1.tNotaFiscalVlrICMS.AsCurrency       := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrICMS.AsCurrency + vValorICMS));
  DM1.tNotaFiscalItensIPI.AsString     := Edit5.Text;
  DM1.tNotaFiscalItensVlrUnit.AsFloat  := CurrencyEdit4.Value;
  DM1.tNotaFiscalItensVlrTotal.AsFloat := CurrencyEdit5.Value;
  DM1.tNotaFiscalItensDesconto.AsFloat := CurrencyEdit1.Value;
  DM1.tNotaFiscalItensVlrDesconto.AsFloat := CurrencyEdit2.Value;

  DM1.tNotaFiscalItensVlrIPI.AsFloat      := vValorIPI;
  DM1.tNotaFiscalVlrIPI.AsCurrency        := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrIPI.AsCurrency + vValorIPI));

  if DM1.tProdutoProdMat.AsString = 'P' then
  begin
    DM1.tNotaFiscalQtdTotalPares.AsFloat := DM1.tNotaFiscalQtdTotalPares.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;
    DM1.tNotaFiscalQtd.AsFloat           := DM1.tNotaFiscalQtd.AsFloat + 1;
  end;
  DM1.tNotaFiscalItensNumPedido.AsInteger  := vNumPedido;
  DM1.tNotaFiscalItensItemPedido.AsInteger := vItemPedido;
  DM1.tNotaFiscalItensNumTalao.AsInteger   := vNumLote;
  DM1.tNotaFiscalItensFabrica.AsString     := vFabrica;
  DM1.tNotaFiscalItensCodGrade.AsInteger   := 0;
  if (DM1.tProdutoLancaGrade.AsBoolean) and (fEmissaoNotaFiscal.tAuxNotaFiscalGrade.RecordCount > 0) then
    DM1.tNotaFiscalItensCodGrade.AsInteger  := fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger;
  //Busca o peso dos tamanhos
  vPesoL := DM1.tNotaFiscalItenslkPesoLiquido.AsFloat;
  vPesoB := DM1.tNotaFiscalItenslkPesoBruto.AsFloat;
  if (DM1.tNotaFiscalItensCodGrade.AsInteger > 0) and (DM1.tNotaFiscalItensPosicao.AsInteger > 0) then
  begin
    DM1.tProdutoGrade.SetKey;
    DM1.tProdutoGradeCodProduto.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
    DM1.tProdutoGradeCodGrade.AsInteger   := DM1.tNotaFiscalItensCodGrade.AsInteger;
    if DM1.tProdutoGrade.GotoKey then
    begin
      DM1.tProdutoTam.SetKey;
      DM1.tProdutoTamCodProduto.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
      DM1.tProdutoTamCodGrade.AsInteger   := DM1.tNotaFiscalItensCodGrade.AsInteger;
      DM1.tProdutoTamPosicao.AsInteger    := DM1.tNotaFiscalItensPosicao.AsInteger;
      if DM1.tProdutoTam.GotoKey then
      begin
        if DM1.tProdutoTamPesoL.AsFloat > 0 then
          vPesoL := DM1.tProdutoTamPesoL.AsFloat;
        if DM1.tProdutoTamPesoB.AsFloat > 0 then
          vPesoB := DM1.tProdutoTamPesoB.AsFloat;
      end;
    end;
  end;
  vAux := DM1.tNotaFiscalItensQtd.AsFloat;
  DM1.tNotaFiscalPesoBruto.AsFloat   := DM1.tNotaFiscalPesoBruto.AsFloat + vPesoB * vAux;
  DM1.tNotaFiscalPesoLiquido.AsFloat := DM1.tNotaFiscalPesoLiquido.AsFloat + vPesoL * vAux;

  case RadioGroup1.ItemIndex of
    0 : DM1.tNotaFiscalItensTipoItem.AsString := 'V';
    1 : DM1.tNotaFiscalItensTipoItem.AsString := 'A';
    2 : DM1.tNotaFiscalItensTipoItem.AsString := 'R';
    3 : DM1.tNotaFiscalItensTipoItem.AsString := 'O';
  end;
  DM1.tNotaFiscalItensQtdRestante.AsFloat := DM1.tNotaFiscalItensQtd.AsFloat;

  DM1.tNotaFiscalItensSomaTransfICM.AsBoolean := CheckBox1.Checked;
  DM1.tNotaFiscalBaseTransfICM.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseTransfICM.AsCurrency + DM1.tNotaFiscalItensBaseIcms.AsCurrency));
  //******
  if RxDBLookupCombo2.Text <> '' then
    DM1.tNotaFiscalItensCodCombinacao.AsInteger := RxDBLookupCombo2.KeyValue
  else
    DM1.tNotaFiscalItensCodCombinacao.AsInteger := 1;
  if Trim(Memo1.Lines.Text) <> '' then
    DM1.tNotaFiscalItensObsComplementar.Value := Memo1.Lines.Text
  else
    DM1.tNotaFiscalItensObsComplementar.Value := '';

  DM1.tNotaFiscalItensOrigemProd.AsString        := fEmissaoNotaFiscal.vOrigemMerc;
  DM1.tNotaFiscalItensSomaVlrTotalProd.AsBoolean := fEmissaoNotaFiscal.vSomaVlrTotalProd;
  DM1.tNotaFiscalItensAliqPis.AsFloat            := fEmissaoNotaFiscal.vPercPis;
  DM1.tNotaFiscalItensAliqCofins.AsFloat         := fEmissaoNotaFiscal.vPercCofins;
  DM1.tNotaFiscalItensVlrPis.AsFloat             := fEmissaoNotaFiscal.vVlrPis;
  DM1.tNotaFiscalItensVlrCofins.AsFloat          := fEmissaoNotaFiscal.vVlrCofins;
  DM1.tNotaFiscalItensCodPis.AsString            := fEmissaoNotaFiscal.vCodPis;
  DM1.tNotaFiscalItensCodCofins.AsString         := fEmissaoNotaFiscal.vCodCofins;
  DM1.tNotaFiscalItensTipoPis.AsString           := fEmissaoNotaFiscal.vTipoPis;
  DM1.tNotaFiscalItensTipoCofins.AsString        := fEmissaoNotaFiscal.vTipoCofins;
  //Lei 12.741/12
  DM1.tNotaFiscalItensPerc_Tributo.AsFloat       := CurrencyEdit8.Value;
  
  if (DM1.tProdutoProdMat.AsString = 'N') and (Trim(DM1.tNotaFiscalItensClasFiscal.AsString) = '') then
    DM1.tNotaFiscalItensClasFiscal.AsString := '99';
  DM1.tNotaFiscalVlrCofins.AsFloat := DM1.tNotaFiscalVlrCofins.AsFloat + DM1.tNotaFiscalItensVlrCofins.AsFloat;
  DM1.tNotaFiscalVlrPis.AsFloat    := DM1.tNotaFiscalVlrPis.AsFloat + DM1.tNotaFiscalItensVlrPis.AsFloat;
  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlrDesconto.AsFloat)) > 0 then
    DM1.tNotaFiscalTipoDesconto.AsString := 'I';
    
  Calculo_GeralItem(DM1.tNotaFiscalitensQtd.AsFloat,DM1.tNotaFiscalItensVlrUnit.AsFloat,DM1.tNotaFiscalItensVlrDesconto.AsFloat,DM1.tNotaFiscalItensDesconto.AsFloat,DM1.tNotaFiscalItensVlrTotal.AsFloat,DM1.tNotaFiscalItensGeraDupl.AsBoolean);

  DM1.tNotaFiscalItens.Post;

  //Exclui os registro da tabela dbNotaFiscalPed
  DM1.tNotaFiscalPed.First;
  while not DM1.tNotaFiscalPed.Eof do
  begin
    DM1.tNotaFiscalPedGrade.First;
    while not DM1.tNotaFiscalPedGrade.Eof do
      DM1.tNotaFiscalPedGrade.Delete;
    DM1.tNotaFiscalPed.Delete;
  end;
  DM1.tNotaFiscalItens.Edit;

  //Grava a tabela dbPedidoNota
  if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
    begin
      DM1.tPedidoNota.SetKey;
      DM1.tPedidoNotaPedido.AsInteger   := DM1.tNotaFiscalItensNumPedido.AsInteger;
      DM1.tPedidoNotaItem.AsInteger     := DM1.tNotaFiscalItensItemPedido.AsInteger;
      DM1.tPedidoNotaNumSeqNota.Asinteger := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tPedidoNotaItemNota.AsInteger := DM1.tNotaFiscalItensItem.AsInteger;
      DM1.tPedidoNotaTipo.AsString      := 'N';
      if DM1.tPedidoNota.GotoKey then
        DM1.tPedidoNota.Edit
      else
      begin
        DM1.tPedidoNota.Insert;
        DM1.tPedidoNotaPedido.AsInteger     := DM1.tNotaFiscalItensNumPedido.AsInteger;
        DM1.tPedidoNotaItem.AsInteger       := DM1.tNotaFiscalItensItemPedido.AsInteger;
        DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
        DM1.tPedidoNotaItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
        DM1.tPedidoNotaTipo.AsString        := 'N';
      end;
      vQtdAux := DM1.tNotaFiscalItensQtd.AsFloat;
      DM1.tPedidoNotaQtdPares.AsFloat  := vQtdAux;
      DM1.tPedidoNotaDtNota.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tPedidoNota.Post;
      vNumOC := DM1.tPedidoPedidoCliente.AsString;
      vNumOS := DM1.tPedidoItemNumOS.AsString;
      vPlano := Dm1.tPedidoItemPlano.AsString;
      DM1.tPedidoItem.Edit;
      DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat - vQtdAux;
      DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat + vQtdAux;
      DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat + vQtdAux;
      if DM1.tPedidoItemQtdParesRest.AsInteger > 0 then
        DM1.tPedidoItemCopiado.AsBoolean := False
      else
        DM1.tPedidoItemCopiado.AsBoolean := True;
      DM1.tPedidoItem.Post;
      DM1.tPedido.Edit;
      DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat - vQtdAux;
      DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat + vQtdAux;
      DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat + vQtdAux;
      if DM1.tPedidoQtdParesRest.AsFloat > 0 then
        DM1.tPedidoCopiado.AsBoolean := False
      else
        DM1.tPedidoCopiado.AsBoolean := True;
      DM1.tPedido.Post;

      if DM1.tNotaFiscalItensNumTalao.AsInteger > 0 then
        begin
          if DM1.tTalao.Locate('Talao',DM1.tNotaFiscalItensNumTalao.AsInteger,[loCaseInsensitive]) then
            begin
              if DM1.tTalaoNumOS.AsString <> '' then
                vNumOS := DM1.tTalaoNumOS.AsString;
              if DM1.tTalaoPlano.AsString <> '' then
                vPlano := DM1.tTalaoPlano.AsString;
              DM1.tTalao.Edit;
              DM1.tTalaoQtdFaturada.AsFloat := DM1.tTalaoQtdFaturada.AsFloat + vQtdAux;
              DM1.tTalaoQtdRestante.AsFloat := DM1.tTalaoQtdRestante.AsFloat - vQtdAux;
              DM1.tTalao.Post;
            end;
        end;
    end
  else
  //Vai faturar o pedido quando for agrupado
  if vItemPedido = 99999 then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      mAgrupadoPed.First;
      while not mAgrupadoPed.Eof do
        begin
          //grava a tabela de pedidos no item da nota fiscal quando agrupado
          DM1.tNotaFiscalPed.Insert;
          DM1.tNotaFiscalPedFilial.AsInteger := DM1.tNotaFiscalItensFilial.AsInteger;
          DM1.tNotaFiscalPedNumSeq.AsInteger := DM1.tNotaFiscalItensNumSeq.AsInteger;
          DM1.tNotaFiscalPedNumNota.AsInteger    := DM1.tNotaFiscalItensNumNota.AsInteger;
          DM1.tNotaFiscalPedItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tNotaFiscalPedPedido.AsInteger     := mAgrupadoPedPedido.AsInteger;
          DM1.tNotaFiscalPedItemPedido.AsInteger := mAgrupadoPedItem.AsInteger;
          DM1.tNotaFiscalPedQtd.AsFloat          := mAgrupadoPedQtd.AsFloat;
          DM1.tNotaFiscalPedCopia.AsBoolean      := False;
          DM1.tNotaFiscalPedNumTalao.AsInteger   := mAgrupadoPedNumTalao.AsInteger;
          DM1.tNotaFiscalPed.Post;
          //***
          if DM1.tTalao.Locate('Talao',mAgrupadoPedNumTalao.AsInteger,[loCaseInsensitive]) then
            begin
              DM1.tTalao.Edit;
              DM1.tTalaoQtdFaturada.AsFloat := DM1.tTalaoQtdFaturada.AsFloat + mAgrupadoPedQtd.AsFloat;
              DM1.tTalaoQtdRestante.AsFloat := DM1.tTalaoQtdRestante.AsFloat - mAgrupadoPedQtd.AsFloat;
              DM1.tTalao.Post;
            end;

          DM1.tPedido.SetKey;
          DM1.tPedidoPedido.AsInteger := mAgrupadoPedPedido.AsInteger;
          if DM1.tPedido.GotoKey then
            begin
              DM1.tPedidoItem.SetKey;
              DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
              DM1.tPedidoItemItem.AsInteger   := mAgrupadoPedItem.AsInteger;
              if DM1.tPedidoItem.GotoKey then
                begin
                  //Grava a tabela de pedido nota
                  DM1.tPedidoNota.SetKey;
                  DM1.tPedidoNotaPedido.AsInteger     := mAgrupadoPedPedido.AsInteger;
                  DM1.tPedidoNotaItem.AsInteger       := mAgrupadoPedItem.AsInteger;
                  DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
                  DM1.tPedidoNotaItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
                  DM1.tPedidoNotaTipo.AsString        := 'N';
                  if DM1.tPedidoNota.GotoKey then
                    DM1.tPedidoNota.Edit
                  else
                    begin
                      DM1.tPedidoNota.Insert;
                      DM1.tPedidoNotaPedido.AsInteger     := mAgrupadoPedPedido.AsInteger;
                      DM1.tPedidoNotaItem.AsInteger       := mAgrupadoPedItem.AsInteger;
                      DM1.tPedidoNotaNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
                      DM1.tPedidoNotaItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
                      DM1.tPedidoNotaTipo.AsString        := 'N';
                    end;
                  DM1.tPedidoNotaQtdPares.AsFloat  := mAgrupadoPedQtd.AsFloat;
                  DM1.tPedidoNotaDtNota.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
                  DM1.tPedidoNota.Post;
                  //Grava na tabela de itens do pedido
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat - mAgrupadoPedQtd.AsFloat;  
                  DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat + mAgrupadoPedQtd.AsFloat;
                  DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat + mAgrupadoPedQtd.AsFloat;
                  if DM1.tPedidoItemQtdParesRest.AsInteger > 0 then
                    DM1.tPedidoItemCopiado.AsBoolean := False
                  else
                    DM1.tPedidoItemCopiado.AsBoolean := True;
                  DM1.tPedidoItem.Post;
                  DM1.tPedido.Edit;
                  DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat - mAgrupadoPedQtd.AsFloat;
                  DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat + mAgrupadoPedQtd.AsFloat;
                  DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat + mAgrupadoPedQtd.AsFloat;
                  if DM1.tPedidoQtdParesRest.AsFloat > 0 then
                    DM1.tPedidoCopiado.AsBoolean  := False
                  else
                    DM1.tPedidoCopiado.AsBoolean  := True;
                  DM1.tPedido.Post;

                  mAgrupadoPedGrade.First;
                  while not mAgrupadoPedGrade.Eof do
                    begin
                      if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([mAgrupadoPedGradeCodGrade.AsInteger,mAgrupadoPedGradePosicao.AsInteger]),[locaseinsensitive]) then
                        begin
                          DM1.tNotaFiscalPedGrade.Insert;
                          DM1.tNotaFiscalPedGradeFilial.AsInteger     := DM1.tNotaFiscalItensFilial.AsInteger;
                          DM1.tNotaFiscalPedGradeNumSeq.AsInteger     := DM1.tNotaFiscalItensNumSeq.AsInteger;
                          DM1.tNotaFiscalPedGradeNumNota.AsInteger    := DM1.tNotaFiscalItensNumNota.AsInteger;
                          DM1.tNotaFiscalPedGradeItemNota.AsInteger   := DM1.tNotaFiscalItensItem.AsInteger;
                          DM1.tNotaFiscalPedGradePedido.AsInteger     := mAgrupadoPedPedido.AsInteger;
                          DM1.tNotaFiscalPedGradeItemPedido.AsInteger := mAgrupadoPedItem.AsInteger;
                          DM1.tNotaFiscalPedGradeNumTalao.AsInteger   := mAgrupadoPedNumTalao.AsInteger;
                          DM1.tNotaFiscalPedGradeCodGrade.AsInteger   := mAgrupadoPedGradeCodGrade.AsInteger;
                          DM1.tNotaFiscalPedGradePosicao.AsInteger    := mAgrupadoPedGradePosicao.AsInteger;
                          DM1.tNotaFiscalPedGradeQtd.AsFloat          := mAgrupadoPedGradeQtd.AsFloat;
                          DM1.tNotaFiscalPedGrade.Post;

                          if DM1.tTalaoGrade.Locate('CodGrade;Posicao',VarArrayOf([mAgrupadoPedGradeCodGrade.AsInteger,mAgrupadoPedGradePosicao.AsInteger]),[locaseinsensitive]) then
                            begin
                              DM1.tTalaoGrade.Edit;
                              DM1.tTalaoGradeQtdFaturada.AsFloat := DM1.tTalaoGradeQtdFaturada.AsFloat + mAgrupadoPedGradeQtd.AsFloat;
                              DM1.tTalaoGradeQtdRestante.AsFloat := DM1.tTalaoGradeQtdRestante.AsFloat - mAgrupadoPedGradeQtd.AsFloat;
                              DM1.tTalaoGrade.Post;
                            end;

                          DM1.tPedidoGrade.Edit;
                          DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat + mAgrupadoPedGradeQtd.AsFloat;
                          DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat + mAgrupadoPedGradeQtd.AsFloat;
                          DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat - mAgrupadoPedGradeQtd.AsFloat;
                          DM1.tPedidoGrade.Post;
                        end;
                      mAgrupadoPedGrade.Delete;
                    end;
                end;
            end;
          mAgrupadoPed.Delete;
        end;
    end;
  DM1.tNotaFiscalItensNumNotaDevForn.AsInteger := vNumNotaDevItem;
  DM1.tNotaFiscalItensCodFornDev.AsInteger     := vCodForncDevItem;
  DM1.tNotaFiscalItensitemDev.AsInteger        := vItemDev;
  DM1.tNotaFiscalItensNumOC.AsString           := vNumOC;
  DM1.tNotaFiscalItensNumOS.AsString           := vNumOS;
  DM1.tNotaFiscalItensPlano.AsString           := vPlano;

  if DM1.tParametrosMostrarTelaOCnaNotaFiscal.AsBoolean then
  begin
    if not(DM1.tNotaFiscalItensMaterial.AsBoolean) and (DM1.tNotaFiscalItensNumPedido.AsInteger <= 0) and
      (vItemPedido <> 99999) then
    begin
      fNotaFiscalOC := TfNotaFiscalOC.Create(Self);
      fNotaFiscalOC.ShowModal;
    end;
  end;
  if RxDBLookupCombo2.Text <> '' then
    DM1.tNotaFiscalItensCodCombinacao.AsInteger := RxDBLookupCombo2.KeyValue
  else
    DM1.tNotaFiscalItensCodCombinacao.AsInteger := 1;
  DM1.tNotaFiscalItens.Post;

  //Gravar a nota de entrada devolvida
  DM1.tNEntrada.IndexFieldNames      := 'Filial;NumNEntr;CodForn';
  DM1.tNEntradaItens.IndexFieldNames := 'Filial;CodForn;NumNEntr;Item';
  if not mSelecionado.IsEmpty then
    begin
      mSelecionado.First;
      while not mSelecionado.Eof do
        begin
          DM1.tNotaFiscalNDevolvida.Insert;
          DM1.tNotaFiscalNDevolvidaFilial.AsInteger          := DM1.tFilialCodigo.AsInteger;
          DM1.tNotaFiscalNDevolvidaNumSeq.AsInteger          := DM1.tNotaFiscalNumSeq.AsInteger;
          DM1.tNotaFiscalNDevolvidaNumNota.AsInteger         := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tNotaFiscalNDevolvidaItem.AsInteger            := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger   := mSelecionadoCodFornecedor.AsInteger;
          DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger  := mSelecionadoNumNota.AsInteger;
          DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger := mSelecionadoItem.AsInteger;
          DM1.tNotaFiscalNDevolvidaQtd.AsFloat               := StrToFloat(FormatFloat('0.000000',mSelecionadoQtd.AsFloat));
          //NFe 2.00
          DM1.tNotaFiscalNDevolvidaSerie.AsString            := mSelecionadoSerie.AsString;
          DM1.tNotaFiscalNDevolvidaModelo.AsString           := mSelecionadoModelo.AsString;
          DM1.tNotaFiscalNDevolvidaUFFornecedor.AsString     := mSelecionadoUFFornecedor.AsString;
          DM1.tNotaFiscalNDevolvidaDtEmissao.AsDateTime      := mSelecionadoDtEmissao.AsDateTime;
          DM1.tNotaFiscalNDevolvidaNFeChaveAcessoNEntrada.AsString := mSelecionadoNFeChaveAcesso.AsString;
          //****************

          DM1.tNotaFiscalNDevolvida.Post;

          DM1.tNEntrada.SetKey;
          DM1.tNEntradaFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
          DM1.tNEntradaNumNEntr.AsInteger := mSelecionadoNumNota.AsInteger;
          DM1.tNEntradaCodForn.AsInteger  := mSelecionadoCodFornecedor.AsInteger;
          if DM1.tNEntrada.GotoKey then
            begin
              DM1.tNEntradaItens.SetKey;
              DM1.tNEntradaItensFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
              DM1.tNEntradaItensNumNEntr.AsInteger := mSelecionadoNumNota.AsInteger;
              DM1.tNEntradaItensCodForn.AsInteger  := mSelecionadoCodFornecedor.AsInteger;
              DM1.tNEntradaItensItem.AsInteger     := mSelecionadoItem.AsInteger;
              if DM1.tNEntradaItens.GotoKey then
                begin
                  DM1.tNEntradaItens.Edit;
                  DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat - mSelecionadoQtd.AsFloat));
                  DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat + mSelecionadoQtd.AsFloat));
                  DM1.tNEntradaItens.Post;
                end;
            end;
          mSelecionado.Delete;
        end;
    end;

  //Grava a tabela de grade do item da nota
  if (DM1.tProdutoLancaGrade.AsBoolean) and not(DM1.tProdutoPrecoGrade.AsBoolean) and
     not(DM1.tClienteImpItemNotaPorTam.AsBoolean) then
    begin
      if vQtdGrade > 0 then
        begin
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
          while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.IsEmpty do
            begin
              //*** Grava a qtd.de pares na grade do pedido quando for produto
              if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (DM1.tProdutoProdMat.AsString = 'P') then
                begin
                  if DM1.tPedidoGrade.Locate('Pedido;ItemPed;CodGrade;Posicao',VarArrayOf([DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,
                                             fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger,fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                    begin
                      DM1.tPedidoGrade.Edit;
                      DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                      DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                      DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat - fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                      DM1.tPedidoGrade.Post;
                    end;
                  if DM1.tTalaoGrade.Locate('CodGrade;Posicao',VarArrayOf([fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger,fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger]),[locaseinsensitive]) then
                    begin
                      DM1.tTalaoGrade.Edit;
                      DM1.tTalaoGradeQtdFaturada.AsFloat := DM1.tTalaoGradeQtdFaturada.AsFloat + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                      DM1.tTalaoGradeQtdRestante.AsFloat := DM1.tTalaoGradeQtdRestante.AsFloat - fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
                      DM1.tTalaoGrade.Post;
                    end;
                end;
              DM1.tNotaFiscalGrade.Insert;
              Dm1.tNotaFiscalGradeFilial.AsInteger   := Dm1.tNotaFiscalFilial.AsInteger;
              DM1.tNotaFiscalGradeNumSeq.AsInteger   := DM1.tNotaFiscalNumSeq.AsInteger;
              DM1.tNotaFiscalGradeItem.AsInteger     := DM1.tNotaFiscalItensItem.AsInteger;
              DM1.tNotaFiscalGradeCodGrade.AsInteger := fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger;
              DM1.tNotaFiscalGradePosicao.AsInteger  := fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger;
              DM1.tNotaFiscalGradeQtd.AsFloat        := fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
              DM1.tNotaFiscalGrade.Post;
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
            end;
        end;
    end;
  DM1.tNotaFiscalGrade.Refresh;
  Limpa_Edit;
  Panel3.Enabled := True;
  RxDBLookupCombo4.ReadOnly := False;
  qCor.Close;

  if not DM1.tNotaFiscalItens.IsEmpty then
    fEmissaoNotaFiscal.RxDBComboBox3.Enabled := False;
  vNumPedido  := 0;
  vItemPedido := 0;
  vNumLote    := 0;
  vNumOC      := '';
  vNumOS      := '';
  vPlano      := '';
  vFabrica    := '';
  fEmissaoNotaFiscal.vCodCorGeral := 0;
  fEmissaoNotaFiscal.tNotaFiscalItensIns.Refresh;
  if fEmissaoNotaFiscal.BitBtn14.Tag <> 1 then
    RxDBLookupCombo15.SetFocus;
//  fEmissaoNotaFiscal.BitBtn13Click(Sender);
  if fEmissaoNotaFiscal.SpeedButton23.Tag = 1 then
  begin
    fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
    Close;
  end;
end;

procedure TfNotaFiscalItens.FormShow(Sender: TObject);
begin
  //NFe 2.0
  CheckBox1.Checked := not(DM1.tFilialSimples.AsBoolean);
  CheckBox1.Visible := not(DM1.tFilialSimples.AsBoolean);
  
  DM1.tSitTributaria.Filtered := False;
  if DM1.tFilialSimples.AsBoolean then
    DM1.tSitTributaria.Filter   := 'Tipo = ' + QuotedStr('S')
  else
    DM1.tSitTributaria.Filter   := 'Tipo = ' + QuotedStr('N');
  DM1.tSitTributaria.Filtered := True;
  Label12.Visible := not(DM1.tFilialSimples.AsBoolean);
  Edit4.Visible   := not(DM1.tFilialSimples.AsBoolean);
  //************

  RxDBFilter1.Active := True;
  RxDBFilter2.Active := True;
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  if vItemNota > 0 then
    begin
      BitBtn1.Enabled       := False;
      BitBtn15.Enabled      := False;
      BitBtn17.Enabled      := False;
      SpeedButton7.Enabled  := False;
      SpeedButton17.Enabled := False;
      Abre_SQLCor;
    end
  else
    begin
      BitBtn1.Enabled       := True;
      BitBtn15.Enabled      := True;
      BitBtn17.Enabled      := True;
      SpeedButton7.Enabled  := True;
      SpeedButton17.Enabled := True;
      RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalCodNatOper.AsInteger;
    end;
  if RxDBLookupCombo15.Text <> '' then
    Panel2.Enabled := True;
  vCodProduto        := CurrencyEdit6.AsInteger;
end;

procedure TfNotaFiscalItens.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    begin
      CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit3.Value * CurrencyEdit4.Value));
      CurrencyEdit2.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value * CurrencyEdit1.Value / 100));
      CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value - CurrencyEdit2.Value));
    end;
end;

procedure TfNotaFiscalItens.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit2.Value > 0 then
    begin
      if (CurrencyEdit1.Value = 0) then
        begin
          CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit3.Value * CurrencyEdit4.Value));
          CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit5.Value - CurrencyEdit2.Value));
        end;
    end;
end;

procedure TfNotaFiscalItens.CurrencyEdit4Exit(Sender: TObject);
begin
  CurrencyEdit5.Value := StrToCurr(FormatCurr('0.00',CurrencyEdit3.Value * CurrencyEdit4.Value));
  CurrencyEdit1Exit(Sender);
  CurrencyEdit2Exit(Sender);
end;

procedure TfNotaFiscalItens.BitBtn17Click(Sender: TObject);
begin
  if RxDBLookupCombo15.Text = '' then
  begin
    ShowMessage('Falta informar a natureza!');
    RxDBLookupCombo15.SetFocus;
  end
  else
  begin
    BitBtn17.Tag := 1;
    fBuscaVale := TfBuscaVale.Create(Self);
    fBuscaVale.ShowModal;
  end;
end;

procedure TfNotaFiscalItens.CurrencyEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit6.AsInteger > 0 then
        RZDBLookupComboBox2.SetFocus
      else
        RzDBLookupComboBox1.SetFocus;
    end;
end;

procedure TfNotaFiscalItens.CurrencyEdit6Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit6.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit6.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RzDBLookupComboBox1.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RZDBLookupComboBox2.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit6.SetFocus;
          CurrencyEdit6.Clear;
        end;
    end;
end;

procedure TfNotaFiscalItens.BitBtn12Click(Sender: TObject);
begin
  if DM1.tClienteCodigo.AsInteger <> DM1.tNotaFiscalCodCli.AsInteger then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
    end;
  if not(DM1.tClienteImpItemNotaPorTam.AsBoolean) and not(DM1.tProdutoPrecoGrade.AsBoolean) then
    begin
      if DM1.tProdutoLancaGrade.AsBoolean then
        begin
          fNotaFiscalGrade := TfNotaFiscalGrade.Create(Self);
          fNotaFiscalGrade.ShowModal;
        end;
    end;
end;

procedure TfNotaFiscalItens.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F10 then
    Close;
end;

procedure TfNotaFiscalItens.BitBtn8Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo15Exit(Sender: TObject);
begin
  if RxDBLookupCombo15.Text <> '' then
    begin
      fEmissaoNotaFiscal.Verifica_Natureza(RxDBLookupCombo15.Text);
      if not vNatureza then
        begin
          RxDBLookupCombo15.ClearValue;
          RxDBLookupCombo15.SetFocus;
        end
      else
        begin
          DM1.tNatOperacao.IndexFieldNames := 'Codigo';
          DM1.tNatOperacao.SetKey;
          DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo15.KeyValue;
          if DM1.tNatOperacao.GotoKey then
            begin
              vCodSitTrib := DM1.tNatOperacaoCodSitTrib.AsInteger;
              if fEmissaoNotaFiscal.SpeedButton23.Tag <> 1 then
                begin
                  CurrencyEdit7.Clear;
                  CurrencyEdit7.Enabled := DM1.tNatOperacaoCalcComissao.AsBoolean;
                end;
              Panel2.Enabled := True;
              CurrencyEdit6.SetFocus;
            end
          else
            begin
              ShowMessage('Natureza não cadastrada!');
              Panel2.Enabled := False;
            end;
        end;
    end;
end;

procedure TfNotaFiscalItens.Panel2Enter(Sender: TObject);
begin
  if RxDBLookupCombo15.Text <> '' then
    Panel2.Enabled := True
  else
    begin
      Panel2.Enabled := False;
      RxDBLookupCombo15.SetFocus;
    end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RZDBLookupComboBox2.Text <> '' then
    begin
      RzDBLookupComboBox1.KeyValue := RZDBLookupComboBox2.KeyValue;
      CurrencyEdit6.AsInteger   := RZDBLookupComboBox2.KeyValue;
    end
  else
    begin
      RZDBLookupComboBox2.ClearKeyValue;
      CurrencyEdit6.Clear;
    end;
end;

procedure TfNotaFiscalItens.Panel3Exit(Sender: TObject);
begin
  if RZDBLookupComboBox2.Text <> '' then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.SetKey;
    DM1.tProdutoCodigo.AsInteger := RZDBLookupComboBox2.KeyValue;
    if DM1.tProduto.GotoKey then
    begin
      if DM1.tProdutoProdMat.AsString = 'M' then
        RadioGroup1.ItemIndex := 3;
      if (vItemNota < 1) and (Panel3.Enabled) then
        Move_itens;
    end
    else
    begin
      ShowMessage('Produto não cadastrado!');
      RzDBLookupComboBox1.SetFocus;
    end;
  end;
end;

procedure TfNotaFiscalItens.Panel3Enter(Sender: TObject);
begin
  vCodProduto := CurrencyEdit6.AsInteger;
end;

procedure TfNotaFiscalItens.mAgrupadoGradeNewRecord(DataSet: TDataSet);
begin
  mAgrupadoGradeQtd.AsFloat := 0;
end;

procedure TfNotaFiscalItens.mAgrupadoNewRecord(DataSet: TDataSet);
begin
  mAgrupadoQtd.AsFloat := 0;
end;

procedure TfNotaFiscalItens.mMaterialNewRecord(DataSet: TDataSet);
begin
  mMaterialQtdConsumo.AsFloat := 0;
  mMaterialQtdNota.AsFloat    := 0;
  mMaterialItemNota.AsInteger := 0;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    vCodCor := RxDBLookupCombo4.KeyValue
  else
    vCodCor := 0;
end;

procedure TfNotaFiscalItens.FormDestroy(Sender: TObject);
begin
  //Lei 12.741/12
  FreeAndNil(DMTabIBPT);
  qCor.Close;
end;

procedure TfNotaFiscalItens.RzDBLookupComboBox1Exit(Sender: TObject);
begin
  if RzDBLookupComboBox1.Text <> '' then
  begin
    RZDBLookupComboBox2.KeyValue := RzDBLookupComboBox1.KeyValue;
    CurrencyEdit6.AsInteger   := RzDBLookupComboBox1.KeyValue;
  end;
end;

procedure TfNotaFiscalItens.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  RzDBLookupComboBox1.DropDown;
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfNotaFiscalItens.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo4.Text = '') then
    begin
      ShowMessage('Falta informar a cor!');
      RxDBLookupCombo4.SetFocus;
    end
  else
    Monta_SQLCombinacao;
end;

procedure TfNotaFiscalItens.RzDBLookupComboBox2Enter(Sender: TObject);
begin
   DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalItens.RzDBLookupComboBox2DropDown(Sender: TObject);
begin
  if RZDBLookupComboBox2.Text <> '' then
    begin
      RzDBLookupComboBox1.KeyValue := RZDBLookupComboBox2.KeyValue;
      CurrencyEdit6.AsInteger   := RZDBLookupComboBox2.KeyValue;
    end
  else
    begin
      RZDBLookupComboBox2.ClearkeyValue;
      CurrencyEdit6.Clear;
    end;
end;

procedure TfNotaFiscalItens.RzDBLookupComboBox2Exit(Sender: TObject);
begin
  if RZDBLookupComboBox2.Text <> '' then
    begin
      RzDBLookupComboBox1.KeyValue := RZDBLookupComboBox2.KeyValue;
      CurrencyEdit6.AsInteger   := RZDBLookupComboBox2.KeyValue;
    end
  else
    begin
      RZDBLookupComboBox2.ClearkeyValue;
      CurrencyEdit6.Clear;
    end;
end;

procedure TfNotaFiscalItens.RzButton1Click(Sender: TObject);
begin
  fNotaFiscalAliq := TfNotaFiscalAliq.Create(Self);
  fNotaFiscalAliq.CurrencyEdit1.Value := fEmissaoNotaFiscal.vPercPis;
  fNotaFiscalAliq.CurrencyEdit2.Value := fEmissaoNotaFiscal.vPercCofins;
  fNotaFiscalAliq.CurrencyEdit3.Value := fEmissaoNotaFiscal.vVlrPis;
  fNotaFiscalAliq.CurrencyEdit4.Value := fEmissaoNotaFiscal.vVlrCofins;
  //28/10/2010 Cleomar
  //NFe 2.00
  if fEmissaoNotaFiscal.vCodPis <> '' then
    fNotaFiscalAliq.RxDBCodPis.Value    := fEmissaoNotaFiscal.vCodPis
  else
    fNotaFiscalAliq.RxDBCodPis.Value    := '';
  if fEmissaoNotaFiscal.vCodCofins <> '' then
    fNotaFiscalAliq.RXDBCodCofins.Value := fEmissaoNotaFiscal.vCodCofins
  else
    fNotaFiscalAliq.RXDBCodCofins.Value := '';
  if fEmissaoNotaFiscal.vTipoPis = 'P' then
    fNotaFiscalAliq.cbTipoPis.ItemIndex := 0
  else
    fNotaFiscalAliq.cbTipoPis.ItemIndex := 1;
  if fEmissaoNotaFiscal.vTipoCofins = 'P' then
    fNotaFiscalAliq.cbTipoCofins.ItemIndex := 0
  else
    fNotaFiscalAliq.cbTipoCofins.ItemIndex := 1;
  if fEmissaoNotaFiscal.vOrigemMerc <> '' then
    fNotaFiscalAliq.rxdbOrigem.Value := fEmissaoNotaFiscal.vOrigemMerc;
  if fEmissaoNotaFiscal.vSomaVlrTotalProd then
    fNotaFiscalAliq.cbSomaTotal.ItemIndex := 0
  else
    fNotaFiscalAliq.cbSomaTotal.ItemIndex := 1;
  //****************
  fNotaFiscalAliq.ShowModal;
  //Lei 12.741/12
  prc_Mover_Lei_Transparencia;
end;

procedure TfNotaFiscalItens.FormCreate(Sender: TObject);
begin
  oActiveTables.OpenTables(True,Self);
  if not Assigned(DMTabIBPT) then
    DMTabIBPT := TDMTabIBPT.Create(Self);

  if (DM1.tFilialUsarICMSimples.AsBoolean) and (DM1.tNotaFiscalPercIcmsSimples.AsFloat <= 0) then
  begin
    fEmissaoNotaFiscal.Busca_PercIcmsSimples;
    DM1.tNotaFiscalPercIcmsSimples.AsFloat := fEmissaoNotaFiscal.vPercICMSSimples;
  end;
end;

procedure TfNotaFiscalItens.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fCSTIPI := TfCSTIPI.Create(Self);
      fCSTIPI.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfNotaFiscalItens.Edit4Enter(Sender: TObject);
begin
  Edit4.ReadOnly := (RxDBLookupCombo13.Text = ''); 
end;

procedure TfNotaFiscalItens.Edit5Enter(Sender: TObject);
begin
  Edit5.ReadOnly := (RxDBLookupCombo1.Text = '');
end;

procedure TfNotaFiscalItens.RxDBLookupCombo13Exit(Sender: TObject);
begin
  //NFe 2.0
  if RxDBLookupCombo13.Text <> '' then
  begin
    if not DM1.tSitTributaria.Locate('Codigo',RxDBLookupCombo13.KeyValue,[loCaseInsensitive]) then
    begin
      ShowMessage('Situação não encontrada!');
      exit;
    end;
    //30/08/2012
    if DM1.tSitTributariaCodSit.AsString = '900' then
      Edit4.Visible := True
    else
    if (DM1.tFilialSimples.AsBoolean) and (DM1.tSitTributariaCodSit.AsString <> '900') then
      Edit4.Visible := False;
    //***********
    if StrToFloat(FormatFloat('0.00000',DM1.tSitTributariaSitTributaria.AsFloat)) <= 0 then
      Edit4.Clear
    else
    if not(DM1.tFilialSimplesGaucho.AsBoolean) and not(DM1.tFilialSimples.AsBoolean) then
      Edit4.Text := FloatToStr(vAliqICMS);
  end;
  Label12.Visible := Edit4.Visible;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo1Exit(Sender: TObject);
begin
  //NFe 2.0
  if RxDBLookupCombo1.Text <> '' then
  begin
    if not DM1.tCSTIPI.Locate('Codigo',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
    begin
      ShowMessage('Situação não encontrada!');
      exit;
    end;
    if not DM1.tCSTIPIGeraIPI.AsBoolean then
      Edit5.Clear
    else
      Edit5.Text := FloatToStr(vAliqIPI);
  end;
end;

procedure TfNotaFiscalItens.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if fEmissaoNotaFiscal.SpeedButton23.Tag = 1 then
    CanClose := False;
end;

procedure TfNotaFiscalItens.mSelecionadoNewRecord(DataSet: TDataSet);
begin
  mSelecionadoNFeChaveAcesso.AsString := '';
end;

procedure TfNotaFiscalItens.prc_Mover_Lei_Transparencia;
var
  vDescExp : String;
begin
  CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',0));
  if dm1.tNatOperacaoCodigo.AsInteger <> RxDBLookupCombo15.KeyValue then
    if not dm1.tNatOperacao.Locate('ID',RxDBLookupCombo15.KeyValue,[loCaseInsensitive]) then
      exit;
  if (DM1.tNatOperacaoGerar_Tributo.AsString = 'S') and (DM1.tParametrosTipo_Lei_Transp.AsString = 'P') then
  begin
    if DM1.tProdutoCodigo.AsInteger <> CurrencyEdit6.AsInteger then
      DM1.tProduto.Locate('ID',CurrencyEdit6.AsInteger,[loCaseInsensitive]);
    if (fEmissaoNotaFiscal.vOrigemMerc = '0') or (fEmissaoNotaFiscal.vOrigemMerc = '3')
      or (fEmissaoNotaFiscal.vOrigemMerc = '4') or (fEmissaoNotaFiscal.vOrigemMerc = '5') then
      vDescExp := ''
    else
      vDescExp := '_EXP';
    if DM1.tNatOperacaoTipo_Ind_Ven.AsString = 'V' then
      CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',DM1.tFilial.FieldByName('PERC_TRIB_NTS_VEN'+vDescExp).AsFloat))
    else
    if DM1.tNatOperacaoTipo_Ind_Ven.AsString = 'I' then
      CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',DM1.tFilial.FieldByName('PERC_TRIB_NTS_IND'+vDescExp).AsFloat));
  end
  else
  if (DM1.tNatOperacaoGerar_Tributo.AsString = 'S') and (DM1.tParametrosTipo_Lei_Transp.AsString = 'I') then
    prc_Busca_IBPT;
end;

procedure TfNotaFiscalItens.prc_Busca_IBPT;
begin
  if CurrencyEdit6.AsInteger <> DM1.tProdutoCodigo.AsInteger then
    DM1.tProduto.Locate('ID',CurrencyEdit6.AsInteger,[loCaseInsensitive]);
  CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',0));
  DMTabIBPT.qIBPT.Close;
  DMTabIBPT.qIBPT.ParamByName('CODIGO').AsString := RxDBLookupCombo5.Text;
  DMTabIBPT.qIBPT.ParamByName('EX').AsString     := DM1.tProdutoNCM_Ex.AsString;
  DMTabIBPT.qIBPT.Open;
  if not DMTabIBPT.qIBPT.IsEmpty then
  begin
    if (fEmissaoNotaFiscal.vOrigemMerc = '0') or (fEmissaoNotaFiscal.vOrigemMerc = '3')
      or (fEmissaoNotaFiscal.vOrigemMerc = '4') or (fEmissaoNotaFiscal.vOrigemMerc = '5') then
      CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_NACIONAL.AsFloat))
    else
      CurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',DMTabIBPT.qIBPTPERC_IMPORTACAO.AsFloat));
  end;
end;

procedure TfNotaFiscalItens.RxDBLookupCombo5Exit(Sender: TObject);
begin
  prc_Mover_Lei_Transparencia;
end;

end.
