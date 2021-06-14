unit UNotaFiscalCopia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, DB, DBTables,
  RxLookup, ExtCtrls;

type
  TfNotaFiscalCopia = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tNotaFiscalPedCop: TTable;
    tNotaFiscalPedCopFilial: TIntegerField;
    tNotaFiscalPedCopNumSeq: TIntegerField;
    tNotaFiscalPedCopItemNota: TIntegerField;
    tNotaFiscalPedCopPedido: TIntegerField;
    tNotaFiscalPedCopItemPedido: TIntegerField;
    tNotaFiscalPedCopNumTalao: TIntegerField;
    tNotaFiscalPedCopQtd: TFloatField;
    tNotaFiscalPedCopCopia: TBooleanField;
    tNotaFiscalPedCopNumNota: TIntegerField;
    dsNotaFiscalPedCop: TDataSource;
    tNotaFiscalPedGradeCop: TTable;
    tNotaFiscalPedGradeCopFilial: TIntegerField;
    tNotaFiscalPedGradeCopNumSeq: TIntegerField;
    tNotaFiscalPedGradeCopItemNota: TIntegerField;
    tNotaFiscalPedGradeCopPedido: TIntegerField;
    tNotaFiscalPedGradeCopItemPedido: TIntegerField;
    tNotaFiscalPedGradeCopCodGrade: TIntegerField;
    tNotaFiscalPedGradeCopPosicao: TIntegerField;
    tNotaFiscalPedGradeCopQtd: TFloatField;
    tNotaFiscalPedGradeCopNumNota: TIntegerField;
    tNotaFiscalPedGradeCopNumTalao: TIntegerField;
    tNotaFiscalItensCop: TTable;
    tNotaFiscalItensCopFilial: TIntegerField;
    tNotaFiscalItensCopNumSeq: TIntegerField;
    tNotaFiscalItensCopItem: TSmallintField;
    tNotaFiscalItensCopCodProduto: TIntegerField;
    tNotaFiscalItensCopCodCor: TIntegerField;
    tNotaFiscalItensCopClasFiscal: TStringField;
    tNotaFiscalItensCopUnidade: TStringField;
    tNotaFiscalItensCopQtd: TFloatField;
    tNotaFiscalItensCopIcms: TFloatField;
    tNotaFiscalItensCopIpi: TFloatField;
    tNotaFiscalItensCopSitTrib: TSmallintField;
    tNotaFiscalItensCopVlrUnit: TFloatField;
    tNotaFiscalItensCopVlrTotal: TFloatField;
    tNotaFiscalItensCopDesconto: TFloatField;
    tNotaFiscalItensCopVlrDesconto: TFloatField;
    tNotaFiscalItensCopBaseIcms: TFloatField;
    tNotaFiscalItensCopVlrIcms: TFloatField;
    tNotaFiscalItensCopVlrIpi: TFloatField;
    tNotaFiscalItensCopNatOper: TSmallintField;
    tNotaFiscalItensCopIcmsIpi: TBooleanField;
    tNotaFiscalItensCopNumPedido: TIntegerField;
    tNotaFiscalItensCopItemPedido: TIntegerField;
    tNotaFiscalItensCopDescricao: TStringField;
    tNotaFiscalItensCopReferencia: TStringField;
    tNotaFiscalItensCopComissaoMod: TFloatField;
    tNotaFiscalItensCopCodComissao: TIntegerField;
    tNotaFiscalItensCopCodGrade: TIntegerField;
    tNotaFiscalItensCopNumMovEst: TIntegerField;
    tNotaFiscalItensCopGeraDupl: TBooleanField;
    tNotaFiscalItensCopMaterial: TBooleanField;
    tNotaFiscalItensCopEstoque: TBooleanField;
    tNotaFiscalItensCopNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCopCodFornDev: TIntegerField;
    tNotaFiscalItensCopItemDev: TIntegerField;
    tNotaFiscalItensCopNumOC: TStringField;
    tNotaFiscalItensCopNumOS: TStringField;
    tNotaFiscalItensCopCodBarraRotulo: TStringField;
    tNotaFiscalItensCopVale: TBooleanField;
    tNotaFiscalItensCopPosicao: TIntegerField;
    tNotaFiscalItensCopTamanho: TStringField;
    tNotaFiscalItensCopPercComissao: TFloatField;
    tNotaFiscalItensCopNumNota: TIntegerField;
    tNotaFiscalItensCopNumTalao: TIntegerField;
    tNotaFiscalItensCopPercComissao2: TFloatField;
    tNotaFiscalItensCopLargura: TStringField;
    tNotaFiscalItensCopTipoItem: TStringField;
    tNotaFiscalItensCopQtdRestante: TFloatField;
    tNotaFiscalItensCopQtdDevolvida: TFloatField;
    tNotaFiscalItensCopSomaTransfICM: TBooleanField;
    tNotaFiscalItensCopFabrica: TStringField;
    dsNotaFiscalItensCop: TDataSource;
    tNotaFiscalCop: TTable;
    tNotaFiscalCopFilial: TIntegerField;
    tNotaFiscalCopNumSeq: TIntegerField;
    tNotaFiscalCopNumNota: TIntegerField;
    tNotaFiscalCopDtEmissao: TDateField;
    tNotaFiscalCopCodNatOper: TSmallintField;
    tNotaFiscalCopCodCli: TIntegerField;
    tNotaFiscalCopCondPgto: TStringField;
    tNotaFiscalCopCodVendedor: TIntegerField;
    tNotaFiscalCopBaseIcms: TFloatField;
    tNotaFiscalCopVlrIcms: TFloatField;
    tNotaFiscalCopVlrIpi: TFloatField;
    tNotaFiscalCopVlrTotalNota: TFloatField;
    tNotaFiscalCopVlrTotalItens: TFloatField;
    tNotaFiscalCopPercDesc: TFloatField;
    tNotaFiscalCopVlrTotalDesc: TFloatField;
    tNotaFiscalCopVlrFrete: TFloatField;
    tNotaFiscalCopVlrSeguro: TFloatField;
    tNotaFiscalCopOutrasDesp: TFloatField;
    tNotaFiscalCopQtd: TIntegerField;
    tNotaFiscalCopEspecie: TStringField;
    tNotaFiscalCopMarca: TStringField;
    tNotaFiscalCopNumero: TStringField;
    tNotaFiscalCopPesoBruto: TFloatField;
    tNotaFiscalCopPesoLiquido: TFloatField;
    tNotaFiscalCopPlaca: TStringField;
    tNotaFiscalCopUFPlaca: TStringField;
    tNotaFiscalCopEmitDest: TStringField;
    tNotaFiscalCopCodTransp: TIntegerField;
    tNotaFiscalCopObs: TMemoField;
    tNotaFiscalCopSaidaEntrada: TStringField;
    tNotaFiscalCopCancelada: TBooleanField;
    tNotaFiscalCopDtSaidaEnt: TDateField;
    tNotaFiscalCopHoraSaida: TTimeField;
    tNotaFiscalCopTipoCobr: TStringField;
    tNotaFiscalCopBcoCobr: TIntegerField;
    tNotaFiscalCopImpressa: TBooleanField;
    tNotaFiscalCopLocalEntrega: TBooleanField;
    tNotaFiscalCopInss: TBooleanField;
    tNotaFiscalCopIrf: TBooleanField;
    tNotaFiscalCopVlrInss: TFloatField;
    tNotaFiscalCopVlrIrf: TFloatField;
    tNotaFiscalCopCustoPerc: TFloatField;
    tNotaFiscalCopCustoFinanc: TFloatField;
    tNotaFiscalCopPrazoPgto: TIntegerField;
    tNotaFiscalCopEntrada: TFloatField;
    tNotaFiscalCopPercComissao: TFloatField;
    tNotaFiscalCopDtEntr: TDateField;
    tNotaFiscalCopIcmsIpi: TBooleanField;
    tNotaFiscalCopPlanoContas: TIntegerField;
    tNotaFiscalCopSituacao: TIntegerField;
    tNotaFiscalCopNroLancExtComissao: TIntegerField;
    tNotaFiscalCopTipoNota: TStringField;
    tNotaFiscalCopDescricaoDesc: TStringField;
    tNotaFiscalCopExtComDif: TIntegerField;
    tNotaFiscalCopExportacao: TBooleanField;
    tNotaFiscalCopPercIssqn: TFloatField;
    tNotaFiscalCopVlrMObra: TFloatField;
    tNotaFiscalCopVlrIssqn: TFloatField;
    tNotaFiscalCopPercTransf: TFloatField;
    tNotaFiscalCopVlrTotalDupl: TFloatField;
    tNotaFiscalCopVlrTransf: TFloatField;
    tNotaFiscalCopUsuario: TStringField;
    tNotaFiscalCopDtCad: TDateField;
    tNotaFiscalCopHrCad: TTimeField;
    tNotaFiscalCopMotivoCanc: TStringField;
    dsNotaFiscalCop: TDataSource;
    tNotaFiscalGradeCop: TTable;
    tNotaFiscalGradeCopFilial: TIntegerField;
    tNotaFiscalGradeCopNumSeq: TIntegerField;
    tNotaFiscalGradeCopItem: TIntegerField;
    tNotaFiscalGradeCopCodGrade: TIntegerField;
    tNotaFiscalGradeCopPosicao: TIntegerField;
    tNotaFiscalGradeCopQtd: TFloatField;
    tNotaFiscalGradeCopVlrUnitario: TFloatField;
    tNotaFiscalGradeCopVlrTotal: TFloatField;
    tNotaFiscalGradeCopNumMovEst: TIntegerField;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tNotaFiscalCopCodClienteTriang: TIntegerField;
    tNotaFiscalCopBaseTransfICM: TFloatField;
    tNotaFiscalCopSerie: TStringField;
    tNotaFiscalCopBaseIcmsSimples: TFloatField;
    tNotaFiscalCopVlrIcmsSimples: TFloatField;
    tNotaFiscalCopPercIcmsSimples: TFloatField;
    tNotaFiscalCopICMSVlrSubst: TFloatField;
    tNotaFiscalCopICMSBaseSubst: TFloatField;
    Panel1: TPanel;
    Label12: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    Edit1: TEdit;
    tNotaFiscalCopQtdTotalPares: TFloatField;
    tNotaFiscalCopNFeRecibo: TStringField;
    tNotaFiscalCopNFeProtocolo: TStringField;
    tNotaFiscalCopNFeChaveAcesso: TStringField;
    tNotaFiscalCopNFeProtocoloCancelada: TStringField;
    tNotaFiscalCopTipoEnvioNF: TStringField;
    tNotaFiscalCopNFeCodBarraCont: TStringField;
    tNotaFiscalCopVlrPis: TFloatField;
    tNotaFiscalCopVlrCofins: TFloatField;
    tNotaFiscalCopTipoNotaNFeRef: TStringField;
    tNotaFiscalCopVlrTaxaCiscomex: TFloatField;
    tNotaFiscalCopVlrOutros: TFloatField;
    tNotaFiscalCopVlrImpImportacao: TFloatField;
    tNotaFiscalCopNumNotaCopiada: TIntegerField;
    tNotaFiscalCopSerieCopiada: TStringField;
    qNotaAux: TQuery;
    qNotaAuxnumnota: TIntegerField;
    tNotaFiscalItensCopCodCombinacao: TIntegerField;
    tNotaFiscalItensCopPlano: TStringField;
    tNotaFiscalItensCopCodCSTIPI: TStringField;
    tNotaFiscalItensCopObsComplementar: TStringField;
    tNotaFiscalItensCopAliqPis: TFloatField;
    tNotaFiscalItensCopAliqCofins: TFloatField;
    tNotaFiscalItensCopVlrPis: TFloatField;
    tNotaFiscalItensCopVlrCofins: TFloatField;
    tNotaFiscalItensCopBaseIcmsSimples: TFloatField;
    tNotaFiscalItensCopVlrIcmsSimples: TFloatField;
    tNotaFiscalItensCopSerie: TStringField;
    tNotaFiscalItensCopCodPis: TStringField;
    tNotaFiscalItensCopCodCofins: TStringField;
    tNotaFiscalItensCopTipoPis: TStringField;
    tNotaFiscalItensCopTipoCofins: TStringField;
    tNotaFiscalItensCopOrigemProd: TStringField;
    tNotaFiscalCopCodVenda: TSmallintField;
    tNotaFiscalCopDuplImp: TBooleanField;
    tNotaFiscalCopDescDupl: TFloatField;
    tNotaFiscalCopDescTransf: TMemoField;
    tNotaFiscalCopObsAux: TMemoField;
    tNotaFiscalCopCodVendedor2: TIntegerField;
    tNotaFiscalCopPercComissao2: TFloatField;
    tNotaFiscalCopNroLancExtComissao2: TIntegerField;
    tNotaFiscalCopUsuarioAlt: TStringField;
    tNotaFiscalCopDtAlt: TDateField;
    tNotaFiscalCopHrAlt: TTimeField;
    tNotaFiscalCopVersaoNFe: TStringField;
    tNotaFiscalCopFinalidade: TStringField;
    tNotaFiscalCopDtContingencia: TDateField;
    tNotaFiscalCopHrContingencia: TTimeField;
    tNotaFiscalCopMotivoContingencia: TStringField;
    tNotaFiscalCopIdentVersaoEmissao: TStringField;
    tNotaFiscalCopCodRegimeTrib: TIntegerField;
    tNotaFiscalCopRNTC: TStringField;
    tNotaFiscalCopIdentifVagaoBalsa: TStringField;
    tNotaFiscalCopTipoIdentifVagaoBalsa: TStringField;
    tNotaFiscalCopUFEmbExp: TStringField;
    tNotaFiscalCopLocalEmbExp: TStringField;
    tNotaFiscalCopBaseIcmsOutros: TFloatField;
    tNotaFiscalCopVlrIcmsOutros: TFloatField;
    tNotaFiscalCopVlrDuplicataOutros: TFloatField;
    tNotaFiscalCopPisCofinsSomarOutrasDesp: TBooleanField;
    tNotaFiscalItensCopSomaVlrTotalProd: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalCopia: TfNotaFiscalCopia;

implementation

uses UDM1, UEmissaoNotaFiscal;

{$R *.dfm}

procedure TfNotaFiscalCopia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalCopia.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalCopia.BitBtn1Click(Sender: TObject);
var
  vCodCli : Integer;
  vCodNat : Integer;
begin
  if (CheckBox1.Checked) and (RxDBLookupCombo2.Text = '') then
  begin
    ShowMessage('Faltou informar a natureza de operação!');
    exit;
  end;
  if not(CheckBox1.Checked) and (fEmissaoNotaFiscal.RxDBLookupCombo7.Text = '') then
  begin
    ShowMessage('Faltou informar a natureza de operação!');
    exit;
  end;
  if not(CheckBox1.Checked) and (DM1.tNotaFiscalCodCli.AsInteger <= 0) then
  begin
    ShowMessage('Faltou informar o cliente!');
    exit;
  end;

  if not DM1.tNotaFiscalItens.IsEmpty then
  begin
    ShowMessage('Já existe item informado!');
    exit;
  end;

  if (Trim(Edit1.Text) = '') or (CurrencyEdit1.AsInteger <= 0) then
  begin
    ShowMessage('Série ou nota não foram informados!');
    exit;
  end;

  if not tNotaFiscalCop.Locate('Filial;Serie;NumNota',VarArrayOf([DM1.tNotaFiscalFilial.AsInteger,Edit1.Text,CurrencyEdit1.AsInteger]),[locaseinsensitive]) then
  begin
    ShowMessage('Nota não encontrada!');
    exit;
  end;

  if (CheckBox1.Checked) and (RxDBLookupCombo1.Text = '') then
  begin
    ShowMessage('Faltou informar o cliente!');
    exit;
  end;

  if tNotaFiscalCopCodClienteTriang.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := tNotaFiscalCopCodClienteTriang.AsInteger;

  if CheckBox1.Checked then
  begin
    vCodCli := RxDBLookupCombo1.KeyValue;
    vCodNat := RxDBLookupCombo2.KeyValue;
  end
  else
  begin
    vCodCli := DM1.tNotaFiscalCodCli.AsInteger;
    vCodNat := fEmissaoNotaFiscal.RxDBLookupCombo7.KeyValue;
  end;

  DM1.tNotaFiscalCodCli.AsInteger     := vCodCli;
  Dm1.tNotaFiscalBcoCobr.AsInteger    := tNotaFiscalCopBcoCobr.AsInteger;
  Dm1.tNotaFiscalCancelada.AsBoolean  := False;
  Dm1.tNotaFiscalCodNatOper.AsInteger := vCodNat;
  Dm1.tNatOperacao.IndexFieldNames    := 'Codigo';
  Dm1.tNatOperacao.SetKey;
  Dm1.tNatOperacaoCodigo.AsInteger := vCodNat;
  if Dm1.tNatOperacao.GotoKey then
    begin
      if Dm1.tNatOperacaoIcms.AsBoolean then
        begin
          Dm1.tNotaFiscalBaseIcms.AsFloat  := tNotaFiscalCopBaseIcms.AsFloat;
          Dm1.tNotaFiscalVlrIcms.AsFloat   := tNotaFiscalCopVlrIcms.AsFloat;
        end
      else
        begin
          Dm1.tNotaFiscalBaseIcms.AsFloat  := 0;
          Dm1.tNotaFiscalVlrIcms.AsFloat   := 0;
        end;
      if Dm1.tNatOperacaoCalcComissao.AsBoolean then
        Dm1.tNotaFiscalPercComissao.AsFloat    := tNotaFiscalCopPercComissao.AsFloat
      else
        Dm1.tNotaFiscalPercComissao.AsFloat    := 0;
      if Dm1.tNatOperacaoIpi.AsBoolean then
        Dm1.tNotaFiscalVlrIpi.AsFloat          := tNotaFiscalCopVlrIpi.AsFloat
      else
        Dm1.tNotaFiscalVlrIpi.AsFloat          := 0;
    end;
  if CheckBox1.Checked then
    DM1.tNotaFiscalCodClienteTriang.AsInteger := tNotaFiscalCopCodCli.AsInteger
  else
    DM1.tNotaFiscalCodClienteTriang.AsInteger := 0;

  Dm1.tNotaFiscalCodTransp.AsInteger     := tNotaFiscalCopCodTransp.AsInteger;
  Dm1.tNotaFiscalCodVendedor.AsInteger   := tNotaFiscalCopCodVendedor.AsInteger;
  Dm1.tNotaFiscalCondPgto.AsString       := 'N';
  Dm1.tNotaFiscalCustoFinanc.AsFloat     := tNotaFiscalCopCustoFinanc.AsFloat;
  Dm1.tNotaFiscalCustoPerc.AsFloat       := tNotaFiscalCopCustoPerc.AsFloat;
  Dm1.tNotaFiscalDescricaoDesc.AsString  := tNotaFiscalCopDescricaoDesc.AsString;
  Dm1.tNotaFiscalDtSaidaEnt.Clear;
  Dm1.tNotaFiscalEmitDest.AsString       := tNotaFiscalCopEmitDest.AsString;
  Dm1.tNotaFiscalEntrada.AsFloat         := tNotaFiscalCopEntrada.AsFloat;
  Dm1.tNotaFiscalEspecie.AsString        := tNotaFiscalCopEspecie.AsString;
  Dm1.tNotaFiscalExportacao.AsBoolean    := tNotaFiscalCopExportacao.AsBoolean;
  Dm1.tNotaFiscalExtComDif.AsInteger     := tNotaFiscalCopExtComDif.AsInteger;
  Dm1.tNotaFiscalHoraSaida.Clear;
  Dm1.tNotaFiscalIcmsIpi.AsBoolean       := tNotaFiscalCopIcmsIpi.AsBoolean;
  Dm1.tNotaFiscalImpressa.AsBoolean      := False;
  Dm1.tNotaFiscalInss.AsBoolean          := tNotaFiscalCopInss.AsBoolean;
  Dm1.tNotaFiscalIrf.AsBoolean           := tNotaFiscalCopIrf.AsBoolean;
  Dm1.tNotaFiscalLocalEntrega.AsBoolean  := tNotaFiscalCopLocalEntrega.AsBoolean;
  Dm1.tNotaFiscalMarca.AsString          := tNotaFiscalCopMarca.AsString;
  Dm1.tNotaFiscalMotivoCanc.AsString     := '';
  Dm1.tNotaFiscalNroLancExtComissao.AsInteger := tNotaFiscalCopNroLancExtComissao.AsInteger;
  Dm1.tNotaFiscalNumero.AsString              := tNotaFiscalCopNumero.AsString;
  Dm1.tNotaFiscalOutrasDesp.AsFloat           := tNotaFiscalCopOutrasDesp.AsFloat;
  Dm1.tNotaFiscalPercDesc.AsFloat             := tNotaFiscalCopPercDesc.AsFloat;
  Dm1.tNotaFiscalPercIssqn.AsFloat            := tNotaFiscalCopPercIssqn.AsFloat;
  Dm1.tNotaFiscalPesoBruto.AsFloat            := tNotaFiscalCopPesoBruto.AsFloat;
  Dm1.tNotaFiscalPesoLiquido.AsFloat          := tNotaFiscalCopPesoLiquido.AsFloat;
  Dm1.tNotaFiscalPlaca.AsString               := tNotaFiscalCopPlaca.AsString;
  Dm1.tNotaFiscalPlanoContas.AsInteger        := tNotaFiscalCopPlanoContas.AsInteger;
  Dm1.tNotaFiscalPrazoPgto.AsInteger          := 0;
  Dm1.tNotaFiscalQtd.AsInteger                := tNotaFiscalCopQtd.AsInteger;
  Dm1.tNotaFiscalSituacao.AsInteger           := tNotaFiscalCopSituacao.AsInteger;
  Dm1.tNotaFiscalTipoCobr.AsString            := tNotaFiscalCopTipoCobr.AsString;
  Dm1.tNotaFiscalTipoNota.AsString            := tNotaFiscalCopTipoNota.AsString;
  Dm1.tNotaFiscalUFPlaca.AsString             := tNotaFiscalCopUFPlaca.AsString;
  Dm1.tNotaFiscalVlrFrete.AsFloat             := tNotaFiscalCopVlrFrete.AsFloat;
  Dm1.tNotaFiscalVlrInss.AsFloat              := tNotaFiscalCopVlrInss.AsFloat;
  Dm1.tNotaFiscalVlrIrf.AsFloat               := tNotaFiscalCopVlrIrf.AsFloat;
  Dm1.tNotaFiscalVlrIssqn.AsFloat             := tNotaFiscalCopVlrIssqn.AsFloat;
  Dm1.tNotaFiscalVlrMObra.AsFloat             := tNotaFiscalCopVlrMObra.AsFloat;
  Dm1.tNotaFiscalVlrSeguro.AsFloat            := tNotaFiscalCopVlrSeguro.AsFloat;
  Dm1.tNotaFiscalVlrTotalDesc.AsFloat         := tNotaFiscalCopVlrTotalDesc.AsFloat;
  Dm1.tNotaFiscalVlrTotalDupl.AsFloat         := 0;
  Dm1.tNotaFiscalVlrTotalItens.AsFloat        := tNotaFiscalCopVlrTotalItens.AsFloat;
  Dm1.tNotaFiscalVlrTotalNota.AsFloat         := tNotaFiscalCopVlrTotalNota.AsFloat;
  DM1.tNotaFiscalNumNotaCopiada.AsInteger     := CurrencyEdit1.AsInteger;
  DM1.tNotaFiscalSerieCopiada.AsString        := Edit1.Text;

  //NFe 2.00
  DM1.tNotaFiscalVersaoNFe.AsString  := tNotaFiscalCopVersaoNFe.AsString;
  DM1.tNotaFiscalFinalidade.AsString := tNotaFiscalCopFinalidade.AsString;
  DM1.tNotaFiscalDtContingencia.AsDateTime := tNotaFiscalCopDtContingencia.AsDateTime;
  DM1.tNotaFiscalHrContingencia.AsDateTime := tNotaFiscalCopHrContingencia.AsDateTime;
  DM1.tNotaFiscalMotivoContingencia.AsString := tNotaFiscalCopMotivoContingencia.AsString;
  DM1.tNotaFiscalIdentVersaoEmissao.AsString := tNotaFiscalCopIdentVersaoEmissao.AsString;
  DM1.tNotaFiscalCodRegimeTrib.AsInteger     := tNotaFiscalCopCodRegimeTrib.AsInteger;
  DM1.tNotaFiscalRNTC.AsString               := tNotaFiscalCopRNTC.AsString;
  DM1.tNotaFiscalIdentifVagaoBalsa.AsString  := tNotaFiscalCopIdentifVagaoBalsa.AsString;
  DM1.tNotaFiscalTipoIdentifVagaoBalsa.AsString := tNotaFiscalCopTipoIdentifVagaoBalsa.AsString;
  DM1.tNotaFiscalUFEmbExp.AsString              := tNotaFiscalCopUFEmbExp.AsString;
  DM1.tNotaFiscalLocalEmbExp.AsString           := tNotaFiscalCopLocalEmbExp.AsString;
  DM1.tNotaFiscalBaseIcmsOutros.AsFloat         := tNotaFiscalCopBaseIcmsOutros.AsFloat;
  DM1.tNotaFiscalVlrIcmsOutros.AsFloat          := tNotaFiscalCopVlrIcmsOutros.AsFloat;
  DM1.tNotaFiscalVlrDuplicataOutros.AsFloat     := tNotaFiscalCopVlrDuplicataOutros.AsFloat;
  DM1.tNotaFiscalPisCofinsSomarOutrasDesp.AsBoolean := tNotaFiscalCopPisCofinsSomarOutrasDesp.AsBoolean;
  //************

  tNotaFiscalItensCop.First;
  while not tNotaFiscalItensCop.Eof do
    begin
      fEmissaoNotaFiscal.tNotaFiscalItensIns.Refresh;
      fEmissaoNotaFiscal.tNotaFiscalItensIns.Last;
      DM1.tNotaFiscalItens.Insert;
      Dm1.tNotaFiscalItensFilial.AsInteger  := Dm1.tNotaFiscalFilial.AsInteger;
      Dm1.tNotaFiscalItensNumNota.AsInteger := Dm1.tNotaFiscalNumNota.AsInteger;
      DM1.tNotaFiscalItensNumSeq.AsInteger  := DM1.tNotaFiscalNumSeq.AsInteger;
      Dm1.tNotaFiscalItensItem.AsInteger    := fEmissaoNotaFiscal.tNotaFiscalItensInsItem.AsInteger + 1;
      Dm1.tNotaFiscalItensClasFiscal.AsString := tNotaFiscalItensCopClasFiscal.AsString;
      Dm1.tNotaFiscalItensCodBarraRotulo.AsString := tNotaFiscalItensCopCodBarraRotulo.AsString;
      Dm1.tNotaFiscalItensCodCor.AsInteger        := tNotaFiscalItensCopCodCor.AsInteger;
      Dm1.tNotaFiscalItensCodFornDev.AsInteger    := 0;
      Dm1.tNotaFiscalItensCodGrade.AsInteger      := tNotaFiscalItensCopCodGrade.AsInteger;
      Dm1.tNotaFiscalItensCodProduto.AsInteger    := tNotaFiscalItensCopCodProduto.AsInteger;
      Dm1.tNotaFiscalItensDesconto.AsFloat        := tNotaFiscalItensCopDesconto.AsFloat;
      Dm1.tNotaFiscalItensDescricao.AsString      := tNotaFiscalItensCopDescricao.AsString;
      Dm1.tNotaFiscalItensEstoque.AsBoolean       := False;
      Dm1.tNotaFiscalItensGeraDupl.AsBoolean      := False;
      Dm1.tNotaFiscalItensIcmsIpi.AsBoolean       := False;
      Dm1.tNotaFiscalItensItemDev.AsInteger       := 0;
      Dm1.tNotaFiscalItensItemPedido.AsInteger    := 0;
      Dm1.tNotaFiscalItensMaterial.AsBoolean      := tNotaFiscalItensCopMaterial.AsBoolean;
      DM1.tNotaFiscalItensNatOper.AsInteger       := vCodNat;

      if Dm1.tNatOperacaoCalcComissao.AsBoolean then
        begin
          //Showmessage('Calcula Comissao');
          Dm1.tNotaFiscalItensPercComissao.AsFloat    := tNotaFiscalItensCopPercComissao.AsFloat;
          Dm1.tNotaFiscalItensComissaoMod.AsFloat     := tNotaFiscalItensCopComissaoMod.AsFloat;
          Dm1.tNotaFiscalItensCodComissao.AsInteger   := tNotaFiscalItensCopCodComissao.AsInteger;
        end
      else
        begin
          //Showmessage('NAO Calcula Comissao');
          Dm1.tNotaFiscalItensPercComissao.AsFloat    := 0;
          Dm1.tNotaFiscalItensComissaoMod.AsFloat     := 0;
          Dm1.tNotaFiscalItensCodComissao.AsInteger   := 0;
        end;
      if Dm1.tNatOperacaoIcms.AsBoolean then
        begin
          Dm1.tNotaFiscalItensIcms.AsFloat      := tNotaFiscalItensCopIcms.AsFloat;
          Dm1.tNotaFiscalItensBaseIcms.AsFloat  := StrToFloat(FormatFloat('0.00',tNotaFiscalItensCopBaseIcms.AsFloat));
          Dm1.tNotaFiscalItensVlrIcms.AsFloat   := StrToFloat(FormatFloat('0.00',tNotaFiscalItensCopVlrIcms.AsFloat));
        end
      else
        begin
          Dm1.tNotaFiscalItensIcms.AsFloat      := 0;
          Dm1.tNotaFiscalItensBaseIcms.AsFloat  := 0;
          Dm1.tNotaFiscalItensVlrIcms.AsFloat   := 0;
        end;

      if Dm1.tNatOperacaoIpi.AsBoolean then
        begin
          Dm1.tNotaFiscalItensIpi.AsFloat             := tNotaFiscalItensCopIpi.AsFloat;
          Dm1.tNotaFiscalItensVlrIpi.AsFloat          := tNotaFiscalItensCopVlrIpi.AsFloat;
        end
      else
        begin
          Dm1.tNotaFiscalItensIpi.AsFloat             := 0;
          Dm1.tNotaFiscalItensVlrIpi.AsFloat          := tNotaFiscalItensCopVlrIpi.AsFloat;
        end;
      Dm1.tNotaFiscalItensNumMovEst.AsInteger     := 0;
      Dm1.tNotaFiscalItensNumNotaDevForn.AsInteger:= 0;
      Dm1.tNotaFiscalItensNumOC.AsString          := tNotaFiscalItensCopNumOC.AsString;
      Dm1.tNotaFiscalItensNumOS.AsString          := tNotaFiscalItensCopNumOS.AsString;
      Dm1.tNotaFiscalItensNumPedido.AsInteger     := 0;
      Dm1.tNotaFiscalItensPosicao.AsInteger       := tNotaFiscalItensCopPosicao.AsInteger;
      Dm1.tNotaFiscalItensQtd.AsFloat             := tNotaFiscalItensCopQtd.AsFloat;
      DM1.tNotaFiscalItensQtdRestante.AsFloat     := tNotaFiscalItensCopQtd.AsFloat;
      Dm1.tNotaFiscalItensReferencia.AsString     := tNotaFiscalItensCopReferencia.AsString;
      Dm1.tNotaFiscalItensSitTrib.AsInteger       := tNotaFiscalItensCopSitTrib.AsInteger;
      Dm1.tNotaFiscalItensTamanho.AsString        := tNotaFiscalItensCopTamanho.AsString;
      Dm1.tNotaFiscalItensUnidade.AsString        := tNotaFiscalItensCopUnidade.AsString;
      Dm1.tNotaFiscalItensVale.AsBoolean          := False;
      Dm1.tNotaFiscalItensVlrDesconto.AsFloat     := tNotaFiscalItensCopVlrDesconto.AsFloat;
      Dm1.tNotaFiscalItensVlrTotal.AsFloat        := tNotaFiscalItensCopVlrTotal.AsFloat;
      Dm1.tNotaFiscalItensVlrUnit.AsFloat         := tNotaFiscalItensCopVlrUnit.AsFloat;
      if CheckBox1.Checked then
      begin
        DM1.tNotaFiscalItensBaseIcms.AsFloat        := 0;
        DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat := 0;
        DM1.tNotaFiscalItensIcms.AsFloat            := 0;
        DM1.tNotaFiscalItensIpi.AsFloat             := 0;
        DM1.tNotaFiscalItensVlrIcms.AsFloat         := 0;
        DM1.tNotaFiscalItensVlrIpi.AsFloat          := 0;
        DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat  := 0;
      end;

      //NFe 2.00
      DM1.tNotaFiscalItensCodCombinacao.AsInteger    := tNotaFiscalItensCopCodCombinacao.AsInteger;
      DM1.tNotaFiscalItensPlano.AsString             := tNotaFiscalItensCopPlano.AsString;
      DM1.tNotaFiscalItensCodCSTIPI.AsString         := tNotaFiscalItensCopCodCSTIPI.AsString;
      DM1.tNotaFiscalItensObsComplementar.AsString   := tNotaFiscalItensCopObsComplementar.AsString;
      DM1.tNotaFiscalItensAliqPis.AsFloat            := tNotaFiscalItensCopAliqPis.AsFloat;
      DM1.tNotaFiscalItensAliqCofins.AsFloat         := tNotaFiscalItensCopAliqCofins.AsFloat;
      DM1.tNotaFiscalItensVlrPis.AsFloat             := tNotaFiscalItensCopVlrPis.AsFloat;
      DM1.tNotaFiscalItensVlrCofins.AsFloat          := tNotaFiscalItensCopVlrCofins.AsFloat;
      DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat    := tNotaFiscalItensCopBaseIcmsSimples.AsFloat;
      DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat     := tNotaFiscalItensCopVlrIcmsSimples.AsFloat;
      DM1.tNotaFiscalItensSerie.AsString             := tNotaFiscalItensCopSerie.AsString;
      DM1.tNotaFiscalItensCodPis.AsString            := tNotaFiscalItensCopCodPis.AsString;
      DM1.tNotaFiscalItensCodCofins.AsString         := tNotaFiscalItensCopCodCofins.AsString;
      DM1.tNotaFiscalItensTipoPis.AsString           := tNotaFiscalItensCopTipoPis.AsString;
      DM1.tNotaFiscalItensTipoCofins.AsString        := tNotaFiscalItensCopTipoCofins.AsString;
      DM1.tNotaFiscalItensOrigemProd.AsString        := tNotaFiscalItensCopOrigemProd.AsString;
      DM1.tNotaFiscalItensSomaVlrTotalProd.AsBoolean := tNotaFiscalItensCopSomaVlrTotalProd.AsBoolean;
      //*********
      
      Dm1.tNotaFiscalItens.Post;
      DM1.tNotaFiscalGrade.First;
      while not DM1.tNotaFiscalGrade.Eof do
        DM1.tNotaFiscalGrade.Delete;
      tNotaFiscalGradeCop.First;
      while not tNotaFiscalGradeCop.Eof do
        begin
          DM1.tNotaFiscalGrade.Insert;
          Dm1.tNotaFiscalGradeFilial.AsInteger   := Dm1.tNotaFiscalFilial.AsInteger;

          // Rocha - NFU
          //DM1.tNotaFiscalGradeNumNota.AsInteger  := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tNotaFiscalGradeNumSeq.AsInteger   := DM1.tNotaFiscalNumSeq.AsInteger;
          DM1.tNotaFiscalGradeItem.AsInteger     := DM1.tNotaFiscalItensItem.AsInteger;
          DM1.tNotaFiscalGradeCodGrade.AsInteger := tNotaFiscalGradeCopCodGrade.AsInteger;
          DM1.tNotaFiscalGradePosicao.AsInteger  := tNotaFiscalGradeCopPosicao.AsInteger;
          DM1.tNotaFiscalGradeQtd.AsFloat        := tNotaFiscalGradeCopQtd.AsFloat;
          DM1.tNotaFiscalGrade.Post;
          tNotaFiscalGradeCop.Next;
        end;
      //Pedidos
      tNotaFiscalPedCop.First;
      while not tNotaFiscalPedCop.Eof do
        begin
          DM1.tNotaFiscalPed.Insert;
          DM1.tNotaFiscalPedFilial.AsInteger     := DM1.tNotaFiscalFilial.AsInteger;

          // Rocha - NFU
          DM1.tNotaFiscalPedNumSeq.AsInteger    := DM1.tNotaFiscalNumSeq.AsInteger;

          DM1.tNotaFiscalPedNumNota.AsInteger    := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tNotaFiscalPedItemNota.AsInteger   := tNotaFiscalPedCopItemNota.AsInteger;
          DM1.tNotaFiscalPedPedido.AsInteger     := tNotaFiscalPedCopPedido.AsInteger;
          DM1.tNotaFiscalPedItemPedido.AsInteger := tNotaFiscalPedCopItemPedido.AsInteger;
          DM1.tNotaFiscalPedQtd.AsFloat          := tNotaFiscalPedCopQtd.AsFloat;
          DM1.tNotaFiscalPedNumTalao.AsInteger   := tNotaFiscalPedCopNumTalao.AsInteger;
          DM1.tNotaFiscalPedCopia.AsBoolean      := True;
          DM1.tNotaFiscalPed.Post;
          tNotaFiscalPedGradeCop.First;
          while not tNotaFiscalPedGradeCop.Eof do
            begin
              DM1.tNotaFiscalPedGrade.Insert;
              DM1.tNotaFiscalPedGradeFilial.AsInteger     := DM1.tNotaFiscalFilial.AsInteger;

              // Rocha - NFU
              DM1.tNotaFiscalPedGradeNumSeq.AsInteger    := DM1.tNotaFiscalNumSeq.AsInteger;

              DM1.tNotaFiscalPedGradeNumNota.AsInteger    := DM1.tNotaFiscalNumNota.AsInteger;
              DM1.tNotaFiscalPedGradeItemNota.AsInteger   := tNotaFiscalPedGradeCopItemNota.AsInteger;
              DM1.tNotaFiscalPedGradePedido.AsInteger     := tNotaFiscalPedGradeCopPedido.AsInteger;
              DM1.tNotaFiscalPedGradeItemPedido.AsInteger := tNotaFiscalPedGradeCopItemPedido.AsInteger;
              DM1.tNotaFiscalPedGradeCodGrade.AsInteger   := tNotaFiscalPedGradeCopCodGrade.AsInteger;
              DM1.tNotaFiscalPedGradeNumTalao.AsInteger   := tNotaFiscalPedGradeCopNumTalao.AsInteger;
              DM1.tNotaFiscalPedGradePosicao.AsInteger    := tNotaFiscalPedGradeCopPosicao.AsInteger;
              DM1.tNotaFiscalPedGradeQtd.AsFloat          := tNotaFiscalPedGradeCopQtd.AsFloat;
              DM1.tNotaFiscalPedGrade.Post;
              tNotaFiscalPedGradeCop.Next;
            end;
          tNotaFiscalPedCop.Next;
        end;
      tNotaFiscalItensCop.Next;
    end;
  if CheckBox1.Checked then
    begin
      DM1.tNotaFiscalBaseIcms.AsFloat        := 0;
      DM1.tNotaFiscalVlrIcms.AsFloat         := 0;
      DM1.tNotaFiscalVlrIpi.AsFloat          := 0;
      DM1.tNotaFiscalBaseIcmsSimples.AsFloat := 0;
      DM1.tNotaFiscalVlrIcmsSimples.AsFloat  := 0;
    end;

  Close;
end;

procedure TfNotaFiscalCopia.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalCopia.CheckBox1Click(Sender: TObject);
begin
  RxDBLookupCombo1.Visible := CheckBox1.Checked;
  RxDBLookupCombo2.Visible := CheckBox1.Checked;
  Label2.Visible           := CheckBox1.Checked;
  Label3.Visible           := CheckBox1.Checked;
end;

procedure TfNotaFiscalCopia.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfNotaFiscalCopia.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    exit;

  DM1.tCliente.Locate('Codigo',RxDBLookupCombo1.KeyValue,([Locaseinsensitive]));

  if DM1.tClienteUf.AsString <> DM1.tFilialEstado.AsString then
  begin
    if DM1.tParametrosCodNatOperTriangular2.AsInteger <= 0 then
      ShowMessage('Não foi informado nos parâmetros o cód. da natureza fora do estado!')
    else
      RxDBLookupCombo2.KeyValue := DM1.tParametrosCodNatOperTriangular2.AsInteger;
  end
  else
  begin
    if DM1.tParametrosCodNatOperTriangular.AsInteger <= 0 then
      ShowMessage('Não foi informado nos parâmetros o cód. da natureza dentro do estado!')
    else
      RxDBLookupCombo2.KeyValue := DM1.tParametrosCodNatOperTriangular.AsInteger;
  end;
end;

procedure TfNotaFiscalCopia.FormShow(Sender: TObject);
begin
  if DM1.tNotaFiscalCodCli.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := DM1.tNotaFiscalCodCli.AsInteger;
  qNotaAux.Close;
  qNotaAux.ParamByName('Filial').AsInteger := DM1.tFilialCodigo.AsInteger;
  qNotaAux.ParamByName('Serie').AsString   := DM1.tParametrosSerieNormal.AsString;
  qNotaAux.Open;
  CurrencyEdit1.AsInteger := qNotaAuxnumnota.AsInteger;
  qNotaAux.Close;
end;

procedure TfNotaFiscalCopia.Panel1Exit(Sender: TObject);
begin
  if not tNotaFiscalCop.Locate('Filial;Serie;NumNota',VarArrayOf([DM1.tNotaFiscalFilial.AsInteger,Edit1.Text,CurrencyEdit1.AsInteger]),[locaseinsensitive]) then
  begin
    ShowMessage('Nota não encontrada!');
    CurrencyEdit1.SetFocus;
  end
  else
  begin
    if DM1.tNatOperacao.Locate('Codigo',tNotaFiscalCopCodNatOper.AsInteger,([Locaseinsensitive])) then
    begin
      CheckBox1.Checked := DM1.tNatOperacaoCopiarNotaTriangular.AsBoolean;
      CheckBox1Click(Sender);
      RxDBLookupCombo1.ClearValue;
      if tNotaFiscalCopCodClienteTriang.AsInteger > 0 then
      begin
        RxDBLookupCombo1.KeyValue := tNotaFiscalCopCodClienteTriang.AsInteger;
        RxDBLookupCombo1Exit(Sender);
        RxDBLookupCombo2Exit(Sender);
      end;
    end;
  end;
end;

procedure TfNotaFiscalCopia.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text = '' then
    exit;

  DM1.tNatOperacao.Locate('Codigo',RxDBLookupCombo2.KeyValue,([Locaseinsensitive]));
end;

end.
