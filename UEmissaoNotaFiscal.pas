unit UEmissaoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Buttons, DBCtrls, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, RXCtrls, RXLookup, DbTables, Db, RxCalc, ToolEdit, CurrEdit, rsDBUtils, MemTable, DBFilter, Math, RXDBCtrl,
  DateUtils, StrUtils, Variants, DBClient, RxDBComb, RzButton, SMDBGrid, Menus, RzTabs;

type
  TfEmissaoNotaFiscal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Panel8: TPanel;
    DBMemo1: TDBMemo;
    Label40: TLabel;
    DBEdit4: TDBEdit;
    Label41: TLabel;
    DBEdit5: TDBEdit;
    RxDBFilter2: TRxDBFilter;
    TabSheet5: TTabSheet;
    Panel10: TPanel;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    tNotaFiscalIns: TTable;
    dsNotaFiscalIns: TDataSource;
    tNotaFiscalItensIns: TTable;
    dsNotaFiscalItensIns: TDataSource;
    tNotaFiscalItensInsNumNota: TIntegerField;
    tNotaFiscalItensInsItem: TSmallintField;
    tNotaFiscalItensInsCodProduto: TIntegerField;
    tNotaFiscalItensInsQtd: TFloatField;
    tNotaFiscalItensInsIcms: TFloatField;
    tNotaFiscalItensInsIpi: TFloatField;
    tNotaFiscalItensInsSitTrib: TSmallintField;
    tNotaFiscalItensInsVlrUnit: TFloatField;
    tNotaFiscalItensInsVlrTotal: TFloatField;
    tNotaFiscalItensInsDesconto: TFloatField;
    tNotaFiscalItensInsVlrDesconto: TFloatField;
    tNotaFiscalItensInsBaseIcms: TFloatField;
    tNotaFiscalItensInsVlrIcms: TFloatField;
    tNotaFiscalItensInsVlrIpi: TFloatField;
    tNotaFiscalItensInsNatOper: TSmallintField;
    tNotaFiscalItensInsIcmsIpi: TBooleanField;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    tNotaFiscalItensInsCodCor: TIntegerField;
    tNotaFiscalItensInsNumPedido: TIntegerField;
    tNotaFiscalItensInsItemPedido: TIntegerField;
    tNotaFiscalItensInsDescricao: TStringField;
    tNotaFiscalItensInsUnidade: TStringField;
    BitBtn7: TBitBtn;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    DBEdit12: TDBEdit;
    Label42: TLabel;
    DBEdit13: TDBEdit;
    Label49: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit22: TDBEdit;
    RxDBGrid1: TRxDBGrid;
    Panel4: TPanel;
    Label39: TLabel;
    tNotaFiscalItensInsComissaoMod: TFloatField;
    tNotaFiscalItensInsCodComissao: TIntegerField;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    tAuxNotaFiscalGrade: TTable;
    dsAuxNotaFiscalGrade: TDataSource;
    tAuxNotaFiscalGradeCodGrade: TIntegerField;
    tAuxNotaFiscalGradePosicao: TIntegerField;
    tAuxNotaFiscalGradeQtd: TFloatField;
    tAuxNotaFiscalGradelkTamanho: TStringField;
    Panel6: TPanel;
    Label1: TLabel;
    DBEdit35: TDBEdit;
    tAuxNotaFiscalGradelkLargura: TStringField;
    SpeedButton23: TSpeedButton;
    RxLabel6: TRxLabel;
    tNotaFiscalItensInsReferencia: TStringField;
    tNotaFiscalItensInsCodGrade: TIntegerField;
    tNotaFiscalItensInsNumMovEst: TIntegerField;
    tNotaFiscalItensInsGeraDupl: TBooleanField;
    tNotaFiscalItensInsMaterial: TBooleanField;
    tNotaFiscalItensInsEstoque: TBooleanField;
    tNotaFiscalItensInsNumNotaDevForn: TIntegerField;
    tNotaFiscalItensInsCodFornDev: TIntegerField;
    tNotaFiscalItensInsItemDev: TIntegerField;
    tNotaFiscalItensInsNumOS: TStringField;
    tNotaFiscalItensInsCodBarraRotulo: TStringField;
    BitBtn6: TBitBtn;
    Label50: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SpeedButton19: TSpeedButton;
    StaticText1: TStaticText;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    mVale: TMemoryTable;
    mValeNumVale: TIntegerField;
    BitBtn14: TBitBtn;
    BitBtn17: TBitBtn;
    StaticText13: TStaticText;
    DBEdit11: TDBEdit;
    StaticText14: TStaticText;
    DBEdit40: TDBEdit;
    StaticText15: TStaticText;
    DBEdit41: TDBEdit;
    tNotaFiscalItensInsFilial: TIntegerField;
    tNotaFiscalItensInsVale: TBooleanField;
    tNotaFiscalItensInsPosicao: TIntegerField;
    tNotaFiscalItensInsTamanho: TStringField;
    tNotaFiscalItensInsPercComissao: TFloatField;
    tNotaFiscalItensInsNumOC: TStringField;
    Label8: TLabel;
    tAuxNotaFiscalGradeVlrUnitario: TFloatField;
    tAuxNotaFiscalGradeVlrTotal: TFloatField;
    StaticText2: TStaticText;
    qNatOper: TQuery;
    qNatOperNatOper: TSmallintField;
    tNEntradaItens: TTable;
    tNEntradaItensFilial: TIntegerField;
    tNEntradaItensCodForn: TIntegerField;
    tNEntradaItensNumNEntr: TIntegerField;
    tNEntradaItensItem: TSmallintField;
    tNEntradaItensCodMaterial: TIntegerField;
    tNEntradaItensQtd: TFloatField;
    tNEntradaItensVlrUnit: TFloatField;
    tNEntradaItensVlrTotalItens: TFloatField;
    tNEntradaItensIcms: TFloatField;
    tNEntradaItensIpi: TFloatField;
    tNEntradaItensDesc: TFloatField;
    tNEntradaItensVlrDesc: TFloatField;
    tNEntradaItensVlrIpi: TFloatField;
    tNEntradaItensVlrIcms: TFloatField;
    tNEntradaItensBaseIcms: TFloatField;
    tNEntradaItensSitTrib: TSmallintField;
    tNEntradaItensIcmsIpi: TBooleanField;
    tNEntradaItensCodCor: TIntegerField;
    tNEntradaItensUnidade: TStringField;
    tNEntradaItensCodGrade: TIntegerField;
    tNEntradaItensNumOC: TIntegerField;
    tNEntradaItensItemOC: TIntegerField;
    tNEntradaItensQtdPacote: TFloatField;
    tNEntradaItensNumMovEst: TIntegerField;
    tNEntradaItensMatProd: TStringField;
    tNEntradaItensSomaEstoque: TBooleanField;
    tNEntradaItensNomeMaterial: TStringField;
    tNEntradaItensReferencia: TStringField;
    tNEntradaItensCodNatOper: TIntegerField;
    tNEntradaItensDtBaixa: TDateField;
    tNEntradaItensHrBaixa: TTimeField;
    tNEntradaItensNumMovEstBaixa: TIntegerField;
    tNEntradaItensGeraDupl: TBooleanField;
    tNEntradaItensPosicao: TIntegerField;
    tNEntradaItensTamanho: TStringField;
    tNEntradaItensQtdDevolvida: TFloatField;
    tNEntradaItensQtdRestante: TFloatField;
    RxDBLookupCombo19: TRxDBLookupCombo;
    Label16: TLabel;
    BitBtn20: TBitBtn;
    Panel14: TPanel;
    Label54: TLabel;
    DBEdit23: TDBEdit;
    DBEdit8: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit9: TDBEdit;
    tNotaFiscalItensInsNumSeq: TIntegerField;
    tAuxNotaFiscalGradeFilial: TIntegerField;
    tAuxNotaFiscalGradeNumSeq: TIntegerField;
    mValeNumSeq: TIntegerField;
    RxDBFilter1: TRxDBFilter;
    Label65: TLabel;
    BitBtn12: TBitBtn;
    BitBtn23: TBitBtn;
    RxDBComboBox1: TRxDBComboBox;
    Label9: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label14: TLabel;
    Label18: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label25: TLabel;
    DBText1: TDBText;
    DBEdit33: TDBEdit;
    Panel9: TPanel;
    BitBtn10: TBitBtn;
    DBGrid2: TDBGrid;
    tCReceberIns: TTable;
    tCReceberInsFilial: TIntegerField;
    tCReceberInsNumCReceber: TIntegerField;
    tCReceberInsNumNota: TIntegerField;
    tCReceberInsQuitado: TBooleanField;
    tCReceberInsCodCli: TIntegerField;
    tCReceberInsTipoDoc: TStringField;
    tCReceberInsDtGerado: TDateField;
    tCReceberInsHistorico: TStringField;
    tCReceberInsCancelado: TBooleanField;
    BitBtn8: TBitBtn;
    Label7: TLabel;
    DBEdit10: TDBEdit;
    TabSheet6: TTabSheet;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit31: TDBEdit;
    Label15: TLabel;
    Label26: TLabel;
    DBEdit32: TDBEdit;
    Label27: TLabel;
    DBEdit34: TDBEdit;
    DBEdit36: TDBEdit;
    Label46: TLabel;
    TabSheet8: TTabSheet;
    Label17: TLabel;
    BitBtn11: TBitBtn;
    BitBtn13: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    RxDBComboBox5: TRxDBComboBox;
    BitBtn19: TBitBtn;
    RxSpeedButton1: TRxSpeedButton;
    pmProcessos: TPopupMenu;
    NFeDanfe1: TMenuItem;
    Cancelar1: TMenuItem;
    BitBtn2: TBitBtn;
    Label13: TLabel;
    DBEdit42: TDBEdit;
    Label38: TLabel;
    DBEdit43: TDBEdit;
    Bevel4: TBevel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit44: TDBEdit;
    BitBtn3: TBitBtn;
    tNotaFiscalInsFilial: TIntegerField;
    tNotaFiscalInsNumSeq: TIntegerField;
    tNotaFiscalInsDtEmissao: TDateField;
    tNotaFiscalInsCodCli: TIntegerField;
    tNotaFiscalInsNumNota: TIntegerField;
    tNotaFiscalInsSerie: TStringField;
    tNotaFiscalInsCustoPerc: TFloatField;
    tNotaFiscalInsCustoFinanc: TFloatField;
    BitBtn9: TBitBtn;
    tNotaFiscalItensInsClasFiscal: TStringField;
    Label53: TLabel;
    DBText3: TDBText;
    Label55: TLabel;
    DBText2: TDBText;
    BitBtn15: TBitBtn;
    Label56: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    RzPageControl1: TRzPageControl;
    TabSheet7: TRzTabSheet;
    TabSheet9: TRzTabSheet;
    Panel7: TPanel;
    Label29: TLabel;
    SpeedButton8: TSpeedButton;
    Label30: TLabel;
    Label31: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit24: TDBEdit;
    DBComboBox1: TDBComboBox;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBComboBox6: TRxDBComboBox;
    DBEdit45: TDBEdit;
    RzButton2: TRzButton;
    Panel11: TPanel;
    Label32: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit30: TDBEdit;
    Label60: TLabel;
    RxDBComboBox7: TRxDBComboBox;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit46: TDBEdit;
    RzButton3: TRzButton;
    TabSheet10: TTabSheet;
    Panel12: TPanel;
    Label63: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label64: TLabel;
    DBEdit47: TDBEdit;
    RzButton1: TRzButton;
    lbContingencia: TLabel;
    qTotalItem: TQuery;
    qTotalItemVlrTotal: TFloatField;
    qTotalItemQtdItens: TIntegerField;
    qTotalItemGeraDupl: TBooleanField;
    RzButton4: TRzButton;
    SpeedButton4: TSpeedButton;
    Label66: TLabel;
    DBText4: TDBText;
    BitBtn16: TBitBtn;
    RxSpeedButton2: TRxSpeedButton;
    pmImprimir: TPopupMenu;
    BoletoBanco1: TMenuItem;
    Label67: TLabel;
    DBEdit48: TDBEdit;
    Label68: TLabel;
    DBEdit49: TDBEdit;
    CartaCorreo1: TMenuItem;
    Bevel1: TBevel;
    Label69: TLabel;
    DBEdit50: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton19Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure RxDBLookupCombo7Exit(Sender: TObject);
    procedure RxDBLookupCombo7DropDown(Sender: TObject);
    procedure RxDBLookupCombo8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo8Click(Sender: TObject);
    procedure RxDBLookupCombo9DropDown(Sender: TObject);
    procedure RxDBLookupCombo9Enter(Sender: TObject);
    procedure tAuxNotaFiscalGradeBeforeInsert(DataSet: TDataSet);
    procedure DBEdit35Exit(Sender: TObject);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure RxDBLookupCombo10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo9Exit(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo19Enter(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure NFeDanfe1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RxDBComboBox7Change(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BoletoBanco1Click(Sender: TObject);
    procedure CartaCorreo1Click(Sender: TObject);
  private
    { Private declarations }
    vVlrBaseComissao, vVlrComissaoItens, vPercComissao: Real;
    vCodVendedorIni, vCodClienteAnt: Integer;
    vNumFalta : String;
    vDataAnt: TDate;

    procedure Grava_Pgto;
    procedure Baixa_Estoque(Tamanho: String; Qtd: Real);
    procedure Habilita_Desabilita;
    procedure Incrementa_Estoque;
    procedure Cancela_Pgto;
    procedure Exclui_Pgto;
    procedure Verifica_Nota_Cancelada;
    procedure Compara_Valor_Parcelas;
    procedure Volta_Pedido(Tipo: String);
    procedure Desfaz_ExtComissao;
    procedure Grava_ExtComissao(Tipo: String);  //N= Nota   I= Item
    procedure Ajusta_Estoque;
    procedure Exclui_FatPedido(NumPedido,Item,NumTalao: Integer; Qtd: Real; Tipo: String);
    procedure Exclui_FatPedidoGrade(CodGrade, Posicao: Integer; QtdGrade: Real);
    procedure Grava_NumSeq;
    procedure Grava_PedidoNota(Pedido,Item: Integer);
    //03/04/2012, nesta procedure foi incluido o parametros
    procedure Cancelamento(Cancelar : Boolean); //True = Cancelada    False = Denegada   
    function Verifica_Dados: Boolean;
    //NFe 2.00
    function Cancelar: Boolean;
  public
    { Public declarations }
    vCodCorGeral, vCodCombinacao: Integer;
    vPercPis, vPercCofins, vVlrPis, vVlrCofins: Real;
    //NFe 2.00
    vOrigemMerc: String;
    vSomaVlrTotalProd : Boolean;
    //28/10/2010 Cleomar
    vCodPis, vCodCofins, vTipoPis, vTipoCofins: String;
    //****************

    vPercICMSSimples: Real;
    vPercTributo : Real;    

    //NFe 2.00 - O cálculo foi colocado na unit uCalculos
    //procedure Calcula_Desconto(Desconto: Boolean; VlrDescAnt: Currency);

    procedure Verifica_UF;
    procedure Verifica_Natureza(Codigo: String);
    procedure Limpa_Parcelas;
    procedure Busca_PercIcmsSimples;
  end;

var
  fEmissaoNotaFiscal: TfEmissaoNotaFiscal;
  vBaseICMS, vValorICMS, vBaseOutrasDesp, vICMSOutrasDesp,
  vValorIPI, vValorSeguroTemp, vValorFreteTemp, vAliqICMS,
  vValorFreteICMS, vValorParcelas: Currency;
  vValorParcelaTot: String;
  vSiglaUF: String[2];
  vLetra: String[3];
  vItemNota: Integer;
  vExisteNEntrada: Boolean;
  vConsumo: Real;
  vNumNotaDevItem, vCodForncDevItem, vItemDev, vCodSitTrib: Integer;
  vNatureza, vUsaIPI: Boolean;

implementation

uses UDM1, UVendedor, UCliente, UTransp, UUf, UContas, UIndexador,  UPlanoContas, UProduto, UBuscaPedido, UConsNotaFiscal, uNFe,
  UNatOperacao, UCondPgto, UEscImpressora, UMaterial, USitTributaria, UObsAux, UDM2, UMaoDeObra, UPedidoEsp, UNotaFiscalGrade,
  UTipoCobranca, UNotaFiscalItens, UEscNotaDevolPorItem, UNotaFiscalOC, UBuscaVale, UTabPreco, UEscFilial, UNotaFiscalCancelada,
  UNotaFiscalPed, UNotaFiscalNDevolvida, UAltPrecoNotaFiscal, UInfDescontoNota, UBuscaTalao, UNotaFiscalOBS, UNFeDados, uCalculos,
  UNotaFiscalCopia, UNotaFiscalParcela, UNotaFiscalConfirma, UNotaFiscalOutrasDespesas, UNotaFiscalRef, UNotaFiscalImp, UDMNotaFiscal,
  UNotaFiscalCliTriang, UDMTabImposto, UNotaFiscalContingencia, UNotaFiscalReboque, UNotaFiscalLacre,
  uNotaFiscalAjustarIcms, UNotaFiscalNumNota, UCobEletronicaImp,
  UNotaFiscalClienteTerc, UDMBanco, uUtilVar, uIntegracao, UNotaFiscalCCe;

{$R *.DFM}

{
Campo tipo
-> D - Lancamento por Duplicata
-> N - Lancamento por Nota
-> P - Lancamento por Pedido
-> M - Lancamento Manual
-> F - Lancamento por Diferenca de Valores na baixa do pedido
}

procedure TfEmissaoNotaFiscal.Busca_PercIcmsSimples;
var
  vAno, vMes: Integer;
begin
  vPercICMSSimples := 0;
  if DM1.tFilialUsarICMSimples.AsBoolean then
  begin
    DM1.tPercSimples.IndexFieldNames := 'Filial;Ano;Mes';
    vAno := YearOf(DM1.tNotaFiscalDtEmissao.AsDateTime);
    vMes := MonthOf(DM1.tNotaFiscalDtEmissao.AsDateTime);
    if DM1.tPercSimples.FindKey([DM1.tFilialCodigo.AsInteger,vAno,vMes]) then
      vPercICMSSimples := DM1.tPercSimplesPercentual.AsFloat
    else
    begin
      MessageDlg('Simples sem percentual para MES/ANO!',mtWarning,[mbOK],0);
      if BitBtn7.Tag = 0 then
      begin
        //BitBtn4.Click;
        Abort;
      end;
    end;
  end;
end;

function TfEmissaoNotaFiscal.Verifica_Dados : Boolean;
begin
  Result := False;

  //NFe 2.00
  if DM1.tNotaFiscalDtEmissao.AsDateTime < 10 then
  begin
    ShowMessage('Data de emissão não foi informada!');
    exit;
  end;

  //NFe 2.00
  if not(DM1.tNotaFiscalEmitDest.AsString = '1') and not(DM1.tNotaFiscalEmitDest.AsString = '2') and
     not(DM1.tNotaFiscalEmitDest.AsString = '3') and not(DM1.tNotaFiscalEmitDest.AsString = '9') then
  begin
    ShowMessage('Não foi informado o tipo do frete!');
    exit;
  end;

  if ((DM1.tNotaFiscalCondPgto.AsString = 'V') or (DM1.tNotaFiscalCondPgto.AsString = 'P')) and
     (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) <= 0) then
  begin
    ShowMessage('Não existe valor para condição de pagto ser a vista ou a prazo!');
    exit;
  end;

  if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) < 0) or
     (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalItens.AsFloat)) < 0) or
     (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalNota.AsFloat)) < 0) then
  begin
    ShowMessage('Valor das duplicatas, total do itens ou total da nota com problema!');
    exit;
  end;

  if (dm1.tNotaFiscalVlrTotalDupl.AsCurrency > 0) and (dm1.tNotaFiscalCondPgto.AsString = 'N') then
  begin
    ShowMessage('Exite valor de duplicatas, condição de pagamento deve ser escolhida!');
    RxDBComboBox2.SetFocus;
    Exit;
  end;

  if (vDataAnt > 0) and (DM1.tNotaFiscalDtEmissao.AsDateTime < vDataAnt) and
     (DM1.tNotaFiscalItens.RecordCount > 0) then
  begin
    ShowMessage('Data de emissão menor que a nota anterior!');
    exit;
  end;

  if (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalQtdTotalPares.AsFloat)) < 0) then
    DM1.tNotaFiscalQtdTotalPares.AsFloat := StrToFloat(FormatFloat('0.00',0));

  if RxDBLookupCombo7.Text = '' then
  begin
    ShowMessage('Você deve preencher a Natureza de Operação!');
    exit;
  end;

  if DM1.tNotaFiscalSituacao.AsString = '' then
  begin
    ShowMessage('Você deve preencher a situação!');
    exit;
  end;

  if DM1.tNotaFiscalCodCli.AsString = '' then
  begin
    ShowMessage('Você deve selecionar um cliente!');
    exit;
  end;

  if (DM1.tNotaFiscalCondPgto.AsString <> 'P') and (DM1.tNotaFiscalPrazoPgto.AsInteger > 0) then
  begin
    ShowMessage('Cond. de pagto. a vista ou nenhum não pode ter prazo e nem parcelas!');
    exit;
  end;

  Dm1.tCliente.IndexFieldNames := 'Codigo';
  Dm1.tCliente.SetKey;
  Dm1.tClienteCodigo.AsInteger := Dm1.tNotaFiscalCodCli.AsInteger;
  if Dm1.tCliente.GotoKey then
  begin
    if (DM1.tClienteCgcCpf.AsString = '   .   .   -  ') or (DM1.tClienteCgcCpf.AsString = '  .   .   /    -  ') or (DM1.tClienteCgcCpf.AsString = '')then
    begin
      ShowMessage('Cliente sem CNPJ não pode ser confirmado!');
      exit;
    end;
  end;

  if Length(Trim(DM1.tNotaFiscalPlaca.AsString)) > 7 then
  begin
    ShowMessage('Placa só pode conter letras e números!');
    Exit;
  end;
  Verifica_UF;
  DM1.tPais.IndexFieldNames := 'ID';
  if not DM1.tPais.FindKey([DM1.tClienteIDPais.AsInteger]) then
  begin
    ShowMessage('País não cadastrado!');
    Exit;
  end;

  if (DM1.tClienteBairro.AsString = '') or (DM1.tClienteNumEnd.AsString = '') then
  begin
    ShowMessage('Cliente não possui bairro ou o nº no endereço!');
    Exit;
  end;
  if not DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidade.AsInteger,([Locaseinsensitive])) then
  begin
    ShowMessage('Cidade não cadastrada!');
    Exit;
  end;
  //08/07/2010 foi incluido pq quando for fora do pais o código do municipio é 9999999
  if (DM1.tPaisCodPais.AsString = '1058') and (DM1.tCidadeCodMunicipio.AsString = '') then
  begin
    ShowMessage('Código do município não cadastrado!');
    Exit;
  end;

  if (DM1.tNotaFiscalCodTransp.AsInteger > 0) and (DM1.tNotaFiscalPlaca.AsString <> '') and (DM1.tNotaFiscalUFPlaca.AsString = '') then
  begin
    ShowMessage('Foi informada a placa e faltou a UF!');
    Exit;
  end;
  if (DM1.tNotaFiscalCodTransp.AsInteger > 0) and (DM1.tTransp.Locate('Codigo',DM1.tNotaFiscalCodTransp.AsInteger,([Locaseinsensitive]))) then
    if (Trim(Copy(DM1.tTranspCNPJ.AsString,1,2)) = '') or (DM1.tTranspCodCidade.AsInteger < 1) or
       (Trim(DM1.tTranspEndereco.AsString) = '') then
    begin
      ShowMessage('Faltou informar o CNPJ ou o endereço completo da transportadora!');
      Exit;
    end;
  if StrToFloat(FormatFloat('0.000000',DM1.tNotaFiscalPesoBruto.AsFloat)) < StrToFloat(FormatFloat('0.000000',DM1.tNotaFiscalPesoLiquido.AsFloat)) then
  begin
    ShowMessage('Peso bruto não pode ser menor que peso líquido!');
    Exit;
  end;

  if (DM1.tNotaFiscalQtd.AsInteger < 1) and (MessageDlg('Nota sem volume, confirma?',mtWarning,[mbOK,mbNO],0) = mrNo) then
    Exit;

  if DM1.tNotaFiscalItens.IsEmpty then
  begin
    ShowMessage('Esta nota não possui itens');
    exit;
  end;

  if (DM1.tClienteUf.AsString <> 'RS') and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTransf.AsFloat)) > 0) then
  begin
    ShowMessage('Nota Fiscal fora do estado e possui transferência de ICMS!');
    exit;
  end;

  Result := True;
end;

procedure TfEmissaoNotaFiscal.Cancelamento(Cancelar : Boolean);
begin
  //NFe 2.00
  Incrementa_Estoque;
  Ajusta_Estoque;

  // Cancela a devolução da nota de entrada
  Dm1.tVale.Filtered := False;
  Dm1.tVale.Filter   := 'NumNota = '''+IntToStr(Dm1.tNotaFiscalNumNota.AsInteger)+'''';
  Dm1.tvale.Filtered := True;
  Dm1.tVale.IndexFieldNames := 'Filial;NumVale';
  Dm1.tVale.First;
  while not Dm1.tVale.Eof do
  begin
    Dm1.tVale.Edit;
    Dm1.tValeNumNota.Clear;
    Dm1.tValeFaturado.AsBoolean := False;
    DM1.tValeNumSeqNota.Clear;
    Dm1.tVale.Post;
  end;
  Dm1.tVale.Filtered := False;
  if Cancelar then
    Cancela_Pgto
  else
    Exclui_Pgto;
  Volta_Pedido('N');
  Desfaz_ExtComissao;
  vItemNota := 0;
  Verifica_Nota_Cancelada;
end;

procedure TfEmissaoNotaFiscal.Grava_Pgto;
var
  vDtGerado : TDate;
  vParcela : Integer;
  vNumAux : Integer;
  vFlag : Boolean;
begin
  if (DM1.tNotaFiscalCondPgto.AsString = 'P') or (RxDBComboBox2.ItemIndex = 0) then
  begin
    DM1.tNotaFiscalParc.First;
    tCReceberIns.Close;
    tCReceberIns.Open;
    tCReceberIns.IndexFieldNames  := 'Filial;NumCReceber';
    DM1.tCReceber.IndexFieldNames := 'Filial;NumCReceber';
    tCReceberIns.Refresh;
    tCReceberIns.Last;

    DM1.tCReceber.Insert;
    Dm1.tCReceberFilial.AsInteger := Dm1.tNotaFiscalFilial.AsInteger;
    vflag := False;
    vNumAux := tCReceberInsNumCReceber.AsInteger;
    while vflag = False do
    begin
      vNumAux := vNumAux + 1;
      try
        DM1.tCReceberNumCReceber.AsInteger := vNumAux;
        DM1.tCReceber.Post;
        DM1.tCReceber.Refresh;
        tCReceberIns.Refresh;
        DM1.tCReceber.Locate('Filial;NumCReceber',VarArrayOf([DM1.tNotaFiscalFilial.AsInteger,vNumAux]),[locaseinsensitive]);
        DM1.tCReceber.Edit;
        vflag := True;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível gravar contas a receber, ' + E.Message + '! Clique para continuar!');
          vFlag := False;
        end;
      end;
    end;

    DM1.tCReceberNumNota.AsInteger    := DM1.tNotaFiscalNumNota.AsInteger;
    DM1.tCReceberNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tCReceberSerie.AsString       := DM1.tNotaFiscalSerie.AsString;
    DM1.tCReceberCodCli.AsInteger     := DM1.tNotaFiscalCodCli.AsInteger;
    DM1.tCReceberTipoDoc.AsString     := 'NF';
    DM1.tCReceberDtGerado.AsDateTime  := DM1.tNotaFiscalDtEmissao.AsDateTime;
    DM1.tCReceberCancelado.AsBoolean  := False;

    if DM1.tNotaFiscalEntrada.AsCurrency > 0 then
    begin
      DM1.tCReceberParc.Insert;
      DM1.tCReceberParcFilial.AsInteger           := Dm1.tNotaFiscalFilial.AsInteger;
      DM1.tCReceberParcDtGerado.AsDateTime        := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tCReceberParcNumCReceber.AsInteger      := DM1.tCReceberNumCReceber.AsInteger;
      DM1.tCReceberParcParcCReceber.AsInteger     := 0;//alterei
      DM1.tCReceberParcVlrParcCReceber.AsCurrency := DM1.tNotaFiscalEntrada.AsCurrency;
      DM1.tCReceberParcRestParcela.AsFloat        := DM1.tNotaFiscalEntrada.AsCurrency;
      DM1.tCReceberVlrTotal.AsFloat               := DM1.tCReceberVlrTotal.AsFloat + DM1.tCReceberParcVlrParcCReceber.AsFloat;
      DM1.tCReceberParcCodCli.AsInteger           := DM1.tNotaFiscalCodCli.AsInteger;
      DM1.tCReceberParcNumNota.AsInteger          := DM1.tNotaFiscalNumNota.AsInteger;
      DM1.tCReceberParcSerie.AsString             := DM1.tNotaFiscalSerie.AsString;
      DM1.tCReceberParcNumSeqNota.AsInteger       := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tCReceberParcCodVendedor.AsInteger      := DM1.tNotaFiscalCodVendedor.AsInteger;
      DM1.tCReceberParcPercComissao.AsCurrency    := vPercComissao;
      DM1.tCReceberParcPlanoContas.AsInteger      := DM1.tNotaFiscalPlanoContas.AsInteger;
      DM1.tCReceberParcTipoDoc.AsString           := 'NF';
      DM1.tCReceberParcComissaoItem.AsBoolean     := False;
      DM1.tCReceberParcCodTipoCobranca.AsInteger  := DM1.tNotaFiscalParcCodTipoCobr.AsInteger;
      DM1.tCReceberParcCodConta.AsInteger         := DM1.tNotaFiscalParcCodConta.AsInteger;
      DM1.tCReceberParcCodBancoBoleto.AsInteger   := DM1.tNotaFiscalParcCodConta.AsInteger;

      DM1.tCReceberParc.Post;
      dm1.GravaEnt_tCReceberParcHist('ENT');
    end;
    DM1.tNotaFiscalParc.First;
    while not DM1.tNotaFiscalParc.Eof do
    begin
      DM1.tCReceberParc.Insert;
      Dm1.tCReceberParcFilial.AsInteger          := Dm1.tNotaFiscalFilial.AsInteger;
      DM1.tCReceberParcDtGerado.AsDateTime       := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tCReceberParcNumCReceber.AsInteger     := DM1.tCReceberNumCReceber.AsInteger;
      DM1.tCReceberParcParcCReceber.AsInteger    := DM1.tNotaFiscalParcParcela.AsInteger;
      DM1.tCReceberParcVlrParcCReceber.AsFloat   := DM1.tNotaFiscalParcVlrVenc.AsFloat;
      DM1.tCReceberVlrTotal.AsFloat              := DM1.tCReceberVlrTotal.AsFloat + DM1.tCReceberParcVlrParcCReceber.AsFloat;
      DM1.tCReceberParcRestParcela.AsFloat       := DM1.tNotaFiscalParcVlrVenc.AsFloat;
      DM1.tCReceberParcDtVencCReceber.AsDateTime := DM1.tNotaFiscalParcDtVenc.AsDateTime;
      DM1.tCReceberParcCodCli.AsInteger          := DM1.tNotaFiscalCodCli.AsInteger;
      DM1.tCReceberParcNumNota.AsInteger         := DM1.tNotaFiscalNumNota.AsInteger;
      DM1.tCReceberParcSerie.AsString            := DM1.tNotaFiscalSerie.AsString;
      DM1.tCReceberParcNumSeqNota.AsInteger      := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tCReceberParcCodVendedor.AsInteger     := DM1.tNotaFiscalCodVendedor.AsInteger;
      DM1.tCReceberParcPercComissao.AsCurrency   := vPercComissao;
      DM1.tCReceberParcPlanoContas.AsInteger     := DM1.tNotaFiscalPlanoContas.AsInteger;
      DM1.tCReceberParcTipoDoc.AsString          := 'NF';
      DM1.tCReceberParcComissaoItem.AsBoolean    := False;
      DM1.tCReceberParcCodTipoCobranca.AsInteger := DM1.tNotaFiscalParcCodTipoCobr.AsInteger;
      DM1.tCReceberParcCodConta.AsInteger        := DM1.tNotaFiscalParcCodConta.AsInteger;
      DM1.tCReceberParcCodBancoBoleto.AsInteger  := DM1.tNotaFiscalParcCodConta.AsInteger;
      DM1.tCReceberParc.Post;
      dm1.GravaEnt_tCReceberParcHist('ENT');
      DM1.tNotaFiscalParc.Next;
    end;
    if Dm1.tNotaFiscalVlrTransf.AsFloat > 0 then
    begin
      Dm1.tNotaFiscalParc.First;
      vDtGerado                                  := Dm1.tNotaFiscalParcDtVenc.AsDateTime;
      Dm1.tCReceberParc.Last;
      vParcela                                   := Dm1.tCReceberParcParcCReceber.AsInteger;
      DM1.tCReceberParc.Insert;
      Dm1.tCReceberParcFilial.AsInteger          := Dm1.tNotaFiscalFilial.AsInteger;
      DM1.tCReceberParcTransferencia.AsBoolean   := True;
      DM1.tCReceberParcDtGerado.AsDateTime       := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tCReceberParcNumCReceber.AsInteger     := DM1.tCReceberNumCReceber.AsInteger;
      DM1.tCReceberParcParcCReceber.AsInteger    := vParcela + 1;
      DM1.tCReceberParcVlrParcCReceber.AsFloat   := Dm1.tNotaFiscalVlrTransf.AsFloat;
      DM1.tCReceberVlrTotal.AsFloat              := DM1.tCReceberVlrTotal.AsFloat + DM1.tCReceberParcVlrParcCReceber.AsFloat;
      DM1.tCReceberParcRestParcela.AsFloat       := Dm1.tNotaFiscalVlrTransf.AsFloat;
      DM1.tCReceberParcDtVencCReceber.AsDateTime := vDtGerado;
      DM1.tCReceberParcCodCli.AsInteger          := DM1.tNotaFiscalCodCli.AsInteger;
      DM1.tCReceberParcNumNota.AsInteger         := DM1.tNotaFiscalNumNota.AsInteger;
      DM1.tCReceberParcSerie.AsString            := DM1.tNotaFiscalSerie.AsString;
      DM1.tCReceberParcNumSeqNota.AsInteger      := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tCReceberParcCodVendedor.AsInteger     := DM1.tNotaFiscalCodVendedor.AsInteger;
      DM1.tCReceberParcPercComissao.AsCurrency   := vPercComissao;
      DM1.tCReceberParcPlanoContas.AsInteger     := DM1.tNotaFiscalPlanoContas.AsInteger;
      DM1.tCReceberParcTipoDoc.AsString          := 'NF';
      DM1.tCReceberParcComissaoItem.AsBoolean    := False;
      DM1.tCReceberParc.Post;
      dm1.GravaEnt_tCReceberParcHist('ENT');
    end;
    DM1.tCReceber.Post;
  end
  else
  if (DM1.tNotaFiscalCondPgto.AsString = 'V') or (RxDBComboBox2.ItemIndex = 1) then
  begin
    tCReceberIns.IndexFieldNames  := 'Filial;NumCReceber';
    DM1.tCReceber.IndexFieldNames := 'Filial;NumCReceber';
    tCReceberIns.Refresh;
    tCReceberIns.Last;
    DM1.tCReceber.Insert;
    Dm1.tCReceberFilial.AsInteger      := Dm1.tNotaFiscalFilial.AsInteger;
    DM1.tCReceberNumCReceber.AsInteger := tCReceberInsNumCReceber.AsInteger + 1;
    DM1.tCReceberNumNota.AsInteger     := DM1.tNotaFiscalNumNota.AsInteger;
    DM1.tCReceberSerie.AsString        := DM1.tNotaFiscalSerie.AsString;
    DM1.tCReceberNumSeqNota.AsInteger  := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tCReceberCodCli.AsInteger      := DM1.tNotaFiscalCodCli.AsInteger;;
    DM1.tCReceberTipoDoc.AsString      := 'NF';
    DM1.tCReceberDtGerado.AsDateTime   := DM1.tNotaFiscalDtEmissao.AsDateTime;
    DM1.tCReceberQuitado.AsBoolean     := False;
    DM1.tCReceberCancelado.AsBoolean   := False;
    DM1.tCReceber.Post;
    DM1.tCReceber.Edit;
    DM1.tCReceberParc.Insert;
    Dm1.tCReceberParcFilial.AsInteger           := Dm1.tNotaFiscalFilial.AsInteger;
    DM1.tCReceberParcNumCReceber.AsInteger      := DM1.tCReceberNumCReceber.AsInteger;
    DM1.tCReceberParcDtGerado.AsDateTime        := DM1.tNotaFiscalDtEmissao.AsDateTime;
    DM1.tCReceberParcParcCReceber.AsInteger     := 1; //alterei
    DM1.tCReceberParcVlrParcCReceber.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency;
    DM1.tCReceberVlrTotal.AsFloat               := DM1.tCReceberVlrTotal.AsFloat + DM1.tCReceberParcVlrParcCReceber.AsFloat;
    DM1.tCReceberParcRestParcela.AsFloat        := DM1.tNotaFiscalVlrTotalDupl.AsCurrency;
    DM1.tCReceberParcCodCli.AsInteger           := DM1.tNotaFiscalCodCli.AsInteger;
    DM1.tCReceberParcNumNota.AsInteger          := DM1.tNotaFiscalNumNota.AsInteger;
    DM1.tCReceberParcSerie.AsString             := DM1.tNotaFiscalSerie.AsString;
    DM1.tCReceberParcNumSeqNota.AsInteger       := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tCReceberParcDtVencCReceber.AsDateTime  := DM1.tNotaFiscalDtEmissao.AsDateTime;
    DM1.tCReceberParcQuitParcCReceber.AsBoolean := False;
    DM1.tCReceberParcCodVendedor.AsInteger      := DM1.tNotaFiscalCodVendedor.AsInteger;
    DM1.tCReceberParcPercComissao.AsCurrency    := vPercComissao;
    DM1.tCReceberParcPlanoContas.AsInteger      := DM1.tNotaFiscalPlanoContas.AsInteger;
    DM1.tCReceberParcCancelado.AsBoolean        := False;
    DM1.tCReceberParcTitProtestado.AsBoolean    := False;
    DM1.tCReceberParcTipoDoc.AsString           := 'NF';
    DM1.tCReceberParcComissaoItem.AsBoolean     := False;
    DM1.tCReceberParc.Post;
    dm1.GravaEnt_tCReceberParcHist('ENT');
    if Dm1.tNotaFiscalVlrTransf.AsFloat > 0 then
    begin
      Dm1.tCReceberParc.Last;
      vParcela := Dm1.tCReceberParcParcCReceber.AsInteger;
      DM1.tCReceberParc.Insert;
      Dm1.tCReceberParcFilial.AsInteger          := Dm1.tCReceberFilial.AsInteger;
      DM1.tCReceberParcTransferencia.AsBoolean   := True;
      DM1.tCReceberParcDtGerado.AsDateTime       := DM1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tCReceberParcNumCReceber.AsInteger     := DM1.tCReceberNumCReceber.AsInteger;
      DM1.tCReceberParcParcCReceber.AsInteger    := vParcela + 1;
      DM1.tCReceberParcVlrParcCReceber.AsFloat   := Dm1.tNotaFiscalVlrTransf.AsFloat;
      DM1.tCReceberVlrTotal.AsFloat              := DM1.tCReceberVlrTotal.AsFloat + DM1.tCReceberParcVlrParcCReceber.AsFloat;
      DM1.tCReceberParcRestParcela.AsFloat       := Dm1.tNotaFiscalVlrTransf.AsFloat;
      DM1.tCReceberParcDtVencCReceber.AsDateTime := Dm1.tNotaFiscalDtEmissao.AsDateTime;
      DM1.tCReceberParcCodCli.AsInteger          := DM1.tNotaFiscalCodCli.AsInteger;
      DM1.tCReceberParcNumNota.AsInteger         := DM1.tNotaFiscalNumNota.AsInteger;
      DM1.tCReceberParcSerie.AsString            := DM1.tNotaFiscalSerie.AsString;
      DM1.tCReceberParcNumSeqNota.AsInteger      := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tCReceberParcCodVendedor.AsInteger     := DM1.tNotaFiscalCodVendedor.AsInteger;
      DM1.tCReceberParcPercComissao.AsCurrency   := vPercComissao;
      DM1.tCReceberParcPlanoContas.AsInteger     := DM1.tNotaFiscalPlanoContas.AsInteger;
      DM1.tCReceberParcCancelado.AsBoolean       := False;
      DM1.tCReceberParcTitProtestado.AsBoolean   := False;
      DM1.tCReceberParcTipoDoc.AsString          := 'NF';
      DM1.tCReceberParcComissaoItem.AsBoolean    := False;
      DM1.tCReceberParc.Post;
      dm1.GravaEnt_tCReceberParcHist('ENT');
    end;
    DM1.tCReceber.Post;
  end;
end;

procedure TfEmissaoNotaFiscal.Grava_PedidoNota(Pedido, Item: Integer);
begin
  if DM1.tPedido.Locate('Pedido',Pedido,[loCaseInsensitive]) then
    if DM1.tPedidoItem.Locate('Item',Item,[loCaseInsensitive]) then
      if DM1.tPedidoNota.Locate('NumSeqNota;ItemNota',VarArrayOf([DM1.tNotaFiscalNumSeq.AsInteger,DM1.tNotaFiscalItensItem.AsInteger]),[locaseinsensitive]) then
      begin
        DM1.tPedidoNota.Edit;
        DM1.tPedidoNotaNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
        DM1.tPedidoNota.Post;
      end;
end;

procedure TfEmissaoNotaFiscal.Exclui_FatPedidoGrade(CodGrade,Posicao: Integer; QtdGrade: Real);
begin
  if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([CodGrade,Posicao]),[locaseinsensitive]) then
  begin
    DM1.tPedidoGrade.Edit;
    DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - QtdGrade;
    DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - QtdGrade;
    DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + QtdGrade;
    DM1.tPedidoGrade.Post;
  end;

  if DM1.tTalaoGrade.Locate('CodGrade;Posicao',VarArrayOf([CodGrade,Posicao]),[locaseinsensitive]) then
  begin
    DM1.tTalaoGrade.Edit;
    DM1.tTalaoGradeQtdFaturada.AsFloat := DM1.tTalaoGradeQtdFaturada.AsFloat - QtdGrade;
    DM1.tTalaoGradeQtdRestante.AsFloat := DM1.tTalaoGradeQtdRestante.AsFloat + QtdGrade;
    DM1.tTalaoGrade.Post;
  end;
end;

procedure TfEmissaoNotaFiscal.Exclui_FatPedido(NumPedido, Item, NumTalao: Integer; Qtd: Real; Tipo: String);
begin
  DM1.tPedido.IndexFieldNames := 'Pedido';
  DM1.tPedido.SetKey;
  DM1.tPedidoPedido.AsInteger := NumPedido;
  if DM1.tPedido.GotoKey then
    begin
      DM1.tPedidoItem.SetKey;
      DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoItemItem.AsInteger   := Item;
      if DM1.tPedidoItem.GotoKey then
        begin
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - Qtd;
          DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + Qtd;
          DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - Qtd;
          DM1.tPedidoItemCopiado.AsBoolean    := False;
          DM1.tPedidoItem.Post;

          if DM1.tTalao.Locate('Talao',NumTalao,[loCaseInsensitive]) then
          begin
            DM1.tTalao.Edit;
            DM1.tTalaoQtdFaturada.AsFloat := DM1.tTalaoQtdFaturada.AsFloat - Qtd;
            DM1.tTalaoQtdRestante.AsFloat := DM1.tTalaoQtdRestante.AsFloat + Qtd;
            DM1.tTalao.Post;
          end;

          if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
          begin
            DM1.tNotaFiscalGrade.First;
            while not DM1.tNotaFiscalGrade.Eof do
            begin
              Exclui_FatPedidoGrade(DM1.tNotaFiscalGradeCodGrade.AsInteger,DM1.tNotaFiscalGradePosicao.AsInteger,DM1.tNotaFiscalGradeQtd.AsFloat);
              if Tipo = 'DI' then
                DM1.tNotaFiscalGrade.Delete
              else
                DM1.tNotaFiscalGrade.Next;
            end;
          end
          else
          begin
            DM1.tNotaFiscalPedGrade.First;
            while not DM1.tNotaFiscalPedGrade.Eof do
            begin
              Exclui_FatPedidoGrade(DM1.tNotaFiscalPedGradeCodGrade.AsInteger,DM1.tNotaFiscalPedGradePosicao.AsInteger,DM1.tNotaFiscalPedGradeQtd.AsFloat);
              DM1.tNotaFiscalPedGrade.Delete;
            end;

            DM1.tNotaFiscalGrade.First;
            while not DM1.tNotaFiscalGrade.Eof do
              DM1.tNotaFiscalGrade.Delete
          end;

          // Rocha - NFU - verificar
          DM1.tPedidoNota.First;
          while not DM1.tPedidoNota.Eof do
          begin
            if (DM1.tPedidoNotaNumNota.AsInteger = DM1.tNotaFiscalItensNumNota.AsInteger) and
               (DM1.tPedidoNotaItemNota.AsInteger = DM1.tNotaFiscalItensItem.AsInteger) and
               (DM1.tPedidoNotaTipo.AsString = 'N') then
             DM1.tPedidoNota.Delete
           else
             DM1.tPedidoNota.Next;
          end;
        end;
      DM1.tPedido.Edit;
      DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - Qtd;
      DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + Qtd;
      DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - Qtd;
      DM1.tPedidoCopiado.AsBoolean    := False;
      DM1.tPedido.Post;
    end;
end;

procedure TfEmissaoNotaFiscal.Ajusta_Estoque;
var
  vFilialAux, vNumMovAux : Integer;
begin
  DM1.tEstoqueMatMov.Filtered := False;
  DM1.tEstoqueMatMov.Filter   := 'NumNota = '''+DM1.tNotaFiscalNumNota.AsString+''' and TipoMov = '''+'NTS'+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+''' and Serie = '''+ DM1.tNotaFiscalSerie.AsString +'''';
  DM1.tEstoqueMatMov.Filtered := True;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
  begin
    vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
    vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

    DM1.tEstoqueMatMov.Delete;

    //02/05/2012
    if DM1.tParametrosUsaFB.AsBoolean then
      Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

  end;


  DM1.tEstoqueMatMov.Filtered := False;
end;

procedure TfEmissaoNotaFiscal.Verifica_Natureza(Codigo: String);
begin
  vNatureza := True;
  if Codigo <> '' then
  begin
    if (DM1.tNotaFiscalSaidaEntrada.AsString = 'E') and ((Copy(Codigo,1,1) = '5') or (Copy(Codigo,1,1) = '6') or (Copy(Codigo,1,1) = '7')) then
    begin
      ShowMessage('Natureza é de saída!');
      vNatureza := False;
    end
    else
    if (DM1.tNotaFiscalSaidaEntrada.AsString = 'S') and ((Copy(Codigo,1,1) = '1') or (Copy(Codigo,1,1) = '2') or (Copy(Codigo,1,1) = '3')) then
    begin
      ShowMessage('Natureza é de entrada!');
      vNatureza := False;
    end
    else
    if RxDBLookupCombo8.Text <> '' then
    begin
      if (vSiglaUF <> DM1.tEmpresaEstado.AsString) and ((Copy(Codigo,1,1) = '1') or (Copy(Codigo,1,1) = '5')) then
      begin
        ShowMessage('Natureza inválida para o estado!');
        vNatureza := False;
      end
      else
      if (vSiglaUF = DM1.tEmpresaEstado.AsString) and ((Copy(Codigo,1,1) <> '5') and (Copy(Codigo,1,1) <> '1')) then
      begin
        ShowMessage('Natureza inválida para o estado!');
        vNatureza := False;
      end;
    end;
  end;
end;

procedure TfEmissaoNotaFiscal.Volta_Pedido(Tipo: String);
begin
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.EOF do
  begin
    if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
      Exclui_FatPedido(DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,DM1.tNotaFiscalItensNumTalao.AsInteger,DM1.tNotaFiscalItensQtd.AsFloat,'D')
    else
    begin
      DM1.tNotaFiscalPed.First;
      while not DM1.tNotaFiscalPed.Eof do
      begin
        if not DM1.tNotaFiscalPedCopia.AsBoolean then
          Exclui_FatPedido(DM1.tNotaFiscalPedPedido.AsInteger,DM1.tNotaFiscalPedItemPedido.AsInteger,DM1.tNotaFiscalPedNumTalao.AsInteger,DM1.tNotaFiscalPedQtd.AsFloat,'D')

        else
        begin
          DM1.tNotaFiscalPedGrade.First;
          while not DM1.tNotaFiscalPedGrade.Eof do
            DM1.tNotaFiscalPedGrade.Delete;
        end;
        DM1.tNotaFiscalPed.Delete;
      end;
    end;

    //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
    DM1.tNEntrada.IndexFieldNames      := 'Filial;NumNEntr;CodForn';
    DM1.tNEntradaItens.IndexFieldNames := 'Filial;CodForn;NumNEntr;Item';
    DM1.tNotaFiscalNDevolvida.First;
    while not DM1.tNotaFiscalNDevolvida.Eof do
    begin
      DM1.tNEntrada.SetKey;
      DM1.tNEntradaFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
      DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
      DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
      if DM1.tNEntrada.GotoKey then
      begin
        DM1.tNEntradaItens.SetKey;
        DM1.tNEntradaItensFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
        DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
        DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
        DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
        if DM1.tNEntradaItens.GotoKey then
        begin
          DM1.tNEntradaItens.Edit;
          DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
          DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
          DM1.tNEntradaItens.Post;
        end;
      end;
      DM1.tNotaFiscalNDevolvida.Delete;
    end;
    if Tipo = 'DI' then
    begin
      DM1.tNotaFiscalGrade.First;
      while not DM1.tNotaFiscalGrade.Eof do
        DM1.tNotaFiscalGrade.Delete;
      DM1.tNotaFiscalItens.Delete;
    end
    else
      DM1.tNotaFiscalItens.Next;
  end;
end;

procedure TfEmissaoNotaFiscal.Verifica_UF;
begin
  vCodSitTrib := 0;
  DM1.tUF.SetKey;
  DM1.tUFSigla.AsString := DM1.tClienteUf.AsString;
  if DM1.tUF.GotoKey then
  begin
    vAliqICMS   := DM1.tUFPercentual.AsFloat;
    vCodSitTrib := DM1.tUFCodSitTrib.AsInteger;
  end;
  vSiglaUF := DM1.tClienteUf.AsString;
end;

procedure TfEmissaoNotaFiscal.Habilita_Desabilita;
begin
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  Panel10.Enabled        := not(Panel10.Enabled);
  Panel1.Enabled         := not(Panel1.Enabled);
  Panel6.Enabled         := not(Panel6.Enabled);
  Panel7.Enabled         := not(Panel7.Enabled);
  Panel8.Enabled         := not(Panel8.Enabled);
  Panel9.Enabled         := not(Panel9.Enabled);
  Panel11.Enabled        := not(Panel11.Enabled);
  Panel12.Enabled        := not(Panel12.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn2.Enabled        := not(BitBtn2.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn7.Enabled        := not(BitBtn7.Enabled);
  BitBtn11.Enabled       := not(BitBtn11.Enabled);
  BitBtn13.Enabled       := not(BitBtn13.Enabled);
  BitBtn23.Enabled       := not(BitBtn23.Enabled);
  RxSpeedButton1.Enabled := not(RxSpeedButton1.Enabled);
  RxSpeedButton2.Enabled := not(RxSpeedButton2.Enabled);
  DBGrid2.ReadOnly       := not(DBGrid2.ReadOnly);
  //NFe 2.00
  RxDBComboBox4.Enabled  := not(RxDBComboBox4.Enabled);
end;

procedure TfEmissaoNotaFiscal.Desfaz_ExtComissao;
begin
  if Dm1.tNotaFiscalCodVendedor.AsInteger > 0 then
  begin
    if DM1.tNotaFiscalNroLancExtComissao.AsInteger > 0 then
    begin
      DM1.tExtComissao.IndexFieldNames := 'NroLancamento';
      DM1.tExtComissao.SetKey;
      DM1.tExtComissaoNroLancamento.AsInteger := DM1.tNotaFiscalNroLancExtComissao.AsInteger;
      if DM1.tExtComissao.GotoKey then
        DM1.tExtComissao.Delete;
    end;
    if DM1.tNotaFiscalExtComDif.AsInteger > 0 then
    begin
      DM1.tExtComissao.IndexFieldNames := 'NroLancamento';
      DM1.tExtComissao.SetKey;
      DM1.tExtComissaoNroLancamento.AsInteger := DM1.tNotaFiscalExtComDif.AsInteger;
      if DM1.tExtComissao.GotoKey then
        DM1.tExtComissao.Delete;
    end;
  end;
end;

procedure TfEmissaoNotaFiscal.Grava_ExtComissao(Tipo: String);  //N= Nota   I= Item;
var
  vNumAux : Integer;
begin
  if Dm1.tNotaFiscalCodVendedor.AsInteger > 0 then
  begin
    DM1.tExtComissao.Refresh;
    DM1.tExtComissao.Last;
    vNumAux := DM1.tExtComissaoNroLancamento.AsInteger;
    DM1.tExtComissao.Insert;
    DM1.tExtComissaoNroLancamento.AsInteger := vNumAux + 1;
    DM1.tExtComissaoCodVendedor.AsInteger   := DM1.tNotaFiscalCodVendedor.AsInteger;
    DM1.tExtComissaoDtReferencia.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
    DM1.tExtComissaoParcDoc.AsInteger       := 0;
    DM1.tExtComissaoCodCliente.AsInteger    := DM1.tNotaFiscalCodCli.AsInteger;
    DM1.tExtComissaoSerie.AsString          := DM1.tNotaFiscalSerie.AsString;
    DM1.tExtComissaoNumSeqNota.AsInteger    := DM1.tNotaFiscalNumSeq.AsInteger;
    if DM1.tNotaFiscalSaidaEntrada.AsString = 'S' then
    begin
      DM1.tExtComissaoFuncao.AsString  := 'E';
      DM1.tExtComissaoNroDoc.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
    end
    else
      DM1.tExtComissaoFuncao.AsString := 'D';
    if Tipo = 'N' then
    begin
      DM1.tExtComissaoVlrBase.AsFloat      := DM1.tNotaFiscalVlrTotalDupl.AsFloat + Dm1.tNotaFiscalVlrTransf.AsFloat;
      DM1.tExtComissaoPercComissao.AsFloat := DM1.tNotaFiscalPercComissao.AsFloat;
      DM1.tExtComissaoVlrComissao.AsFloat  := StrToFloat(FormatFloat('0.00',(DM1.tExtComissaoVlrBase.AsFloat * DM1.tExtComissaoPercComissao.AsFloat / 100)));
    end
    else
    begin
      DM1.tExtComissaoVlrBase.AsFloat      := vVlrBaseComissao;
      DM1.tExtComissaoPercComissao.AsFloat := 0;
      DM1.tExtComissaoVlrComissao.AsFloat  := vVlrComissaoItens;
    end;
    DM1.tExtComissaoTipo.AsString      := 'N';
    DM1.tExtComissaoSuspensa.AsBoolean := False;
    DM1.tExtComissao.Post;
    DM1.tNotaFiscalNroLancExtComissao.AsInteger := DM1.tExtComissaoNroLancamento.AsInteger;
  end;
end;

procedure TfEmissaoNotaFiscal.Baixa_Estoque(Tamanho: String; Qtd: Real);
var
  vNumMovEst : Integer;
begin
  vNumMovEst := 0;
  if (Tamanho = '') and (DM1.tNotaFiscalItensNumMovEst.AsInteger > 0) then
    vNumMovEst := DM1.tNotaFiscalItensNumMovEst.AsInteger
  else
  if (Tamanho <> '') and (DM1.tNotaFiscalGradeNumMovEst.AsInteger > 0) then
    vNumMovEst := DM1.tNotaFiscalItensNumMovEst.AsInteger;
  if vNumMovEst > 0 then
  begin
    DM1.tEstoqueMatMov.SetKey;
    DM1.tEstoqueMatMovNumMov.AsInteger := vNumMovEst;
    if DM1.tEstoqueMatMov.GotoKey then
    begin
      DM1.tEstoqueMatMov.Refresh;
      DM2.tEstoqueMatMov2.Refresh;
      DM2.tEstoqueMatMov2.Last;
      vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
    end;
  end
  else
  begin
    DM1.tEstoqueMatMov.Refresh;
    DM2.tEstoqueMatMov2.Refresh;
    DM2.tEstoqueMatMov2.Last;
    vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
  end;
  DM1.tEstoqueMatMov.Insert;
  Dm1.tEstoqueMatMovFilial.AsInteger      := Dm1.tNotaFiscalItensFilial.AsInteger;
  DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
  DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tNotaFiscalItensCodProduto.AsInteger;
  DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tNotaFiscalItensCodCor.AsInteger;
  DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tNotaFiscalDtEmissao.AsDateTime;
  DM1.tEstoqueMatMovES.AsString           := DM1.tNotaFiscalSaidaEntrada.AsString;
  DM1.tEstoqueMatMovTipoMov.AsString      := 'NTS';
  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tNotaFiscalItensNumNota.AsInteger;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tNotaFiscalCodCli.AsInteger;
  DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tNotaFiscalItensVlrUnit.AsFloat;
  DM1.tEstoqueMatMovQtd.AsFloat := Qtd;

  if DM1.tEstoqueMatMovES.AsString = 'E' then
    DM1.tEstoqueMatMovQtd2.AsFloat        := StrToFloat(FormatFloat('0.00000',Qtd))
  else
    DM1.tEstoqueMatMovQtd2.AsFloat        := StrToFloat(FormatFloat('0.00000',Qtd * -1));
  DM1.tEstoqueMatMovUnidade.AsString      := DM1.tNotaFiscalItensUnidade.AsString;
  DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tNotaFiscalItensIcms.AsFloat;
  DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tNotaFiscalItensIpi.AsFloat;
  DM1.tEstoqueMatMovVlrDesconto.AsFloat   := (DM1.tNotaFiscalItensVlrDesconto.AsFloat / DM1.tNotaFiscalItensQtd.AsFloat);
  if Tamanho = '' then
    DM1.tEstoqueMatMovTamanho.AsString := DM1.tNotaFiscalItensTamanho.AsString
  else
    DM1.tEstoqueMatMovTamanho.AsString := Tamanho;
  if DM1.tNotaFiscalItensSitTrib.AsInteger > 0 then
    DM1.tEstoqueMatMovPercTributacao.AsFloat := DM1.tNotaFiscalItenslkPercSitTributaria.AsFloat
  else
  if DM1.tNotaFiscalItenslkIcms.AsBoolean then
    DM1.tEstoqueMatMovPercTributacao.AsFloat := 100;
  DM1.tEstoqueMatMovCodNatOper.AsInteger := DM1.tNotaFiscalItensNatOper.AsInteger;
  DM1.tEstoqueMatMovSerie.AsString       := DM1.tNotaFiscalSerie.AsString;
  DM1.tEstoqueMatMovNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
  DM1.tEstoqueMatMov.Post;
  //02/05/2012
  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Gravar_Estoque_Mov_FB(dm1.tEstoqueMatMovFilial.AsInteger,dm1.tEstoqueMatMovNumMov.AsInteger);

  if Tamanho = '' then
  begin
    DM1.tNotaFiscalItens.Edit;
    DM1.tNotaFiscalItensNumMovEst.AsInteger := vNumMovEst;
    DM1.tNotaFiscalItens.Post;
  end
  else
  begin
    DM1.tNotaFiscalGrade.Edit;
    DM1.tNotaFiscalGradeNumMovEst.AsInteger := vNumMovEst;
    DM1.tNotaFiscalGrade.Post;
  end;
end;

procedure TfEmissaoNotaFiscal.Incrementa_Estoque;
var
  vFilialAux, vNumMovAux : Integer;
begin
  DM1.tNotaFiscalItens.First;
  while not DM1.tNotaFiscalItens.Eof do
  begin
    if (DM1.tNotaFiscalItensEstoque.AsBoolean) and (DM1.tNotaFiscalItensCodProduto.AsInteger > 0) then
    begin
      if DM1.tNotaFiscalGrade.RecordCount > 0 then
      begin
        DM1.tNotaFiscalGrade.First;
        while not DM1.tNotaFiscalGrade.Eof do
        begin
          if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
          begin
            DM1.tEstoqueMatMov.SetKey;
            DM1.tEstoqueMatMovFilial.AsInteger := Dm1.tNotaFiscalItensFilial.AsInteger;
            DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNotaFiscalGradeNumMovEst.AsInteger;
            if DM1.tEstoqueMatMov.GotoKey then
            begin
              vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
              vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;
              
              DM1.tEstoqueMatMov.Delete;

              //02/05/2012
              if DM1.tParametrosUsaFB.AsBoolean then
                Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

            end;
          end;
          DM1.tNotaFiscalGrade.Next;
        end;
      end
      else
      begin
        DM1.tEstoqueMatMov.SetKey;
        DM1.tEstoqueMatMovFilial.AsInteger := Dm1.tNotaFiscalItensFilial.AsInteger;
        DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNotaFiscalItensNumMovEst.AsInteger;
        if DM1.tEstoqueMatMov.GotoKey then
        begin
          vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
          vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

          DM1.tEstoqueMatMov.Delete;

          //02/05/2012
          if DM1.tParametrosUsaFB.AsBoolean then
            Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

        end;
      end;
    end;
    DM1.tNotaFiscalItens.Next;
  end;
end;

procedure TfEmissaoNotaFiscal.Cancela_Pgto;
begin
  DM1.tCReceber.Filtered := False;
  DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+'''';
  DM1.tCReceber.Filtered := True;
  DM1.tCReceber.First;
  while not DM1.tCReceber.Eof do
  begin
    if DM1.tCReceberTipoDoc.AsString = 'NF' then
    begin
      DM1.tCReceberParc.First;
      while not DM1.tCReceberParc.Eof do
      begin
        DM1.tCReceberParc.Edit;
        DM1.tCReceberParcCancelado.AsBoolean := True;
        DM1.tCReceberParc.Post;
        DM1.GravaEnt_tCReceberParcHist('CAN'); //Novo, vai gravar o cancelamento (Cleomar 01/04/2008)
        DM1.tCReceberParc.Next;
      end;
      DM1.tCReceber.Edit;
      DM1.tCReceberCancelado.AsBoolean := True;
      DM1.tCReceber.Post;
    end;
    DM1.tCReceber.Next;
  end;
  DM1.tCReceber.Filtered := False;
end;

procedure TfEmissaoNotaFiscal.Exclui_Pgto;
begin
  DM1.tCReceber.Filtered := False;
  if DM1.tNotaFiscalCodCli.AsInteger > 0 then
    DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+''''
  else
    DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+'''';
  DM1.tCReceber.Filtered := True;
  DM1.tCReceber.First;
  while not DM1.tCReceber.Eof do
  begin
    if DM1.tCReceberTipoDoc.AsString = 'NF' then
    begin
       DM1.tCReceberParc.First;
       while not DM1.tCReceberParc.Eof do
       begin
         DM1.tCReceberParcHist.First;
         while not DM1.tCReceberParcHist.Eof do
         begin
           DM1.tCReceberParcRem.First;
           while not DM1.tCReceberParcRem.Eof do
             DM1.tCReceberParcRem.Delete;
           DM1.tCReceberParcHist.Delete;
         end;
         DM1.tCReceberParc.Delete;
       end;
       DM1.tCReceber.Delete;
    end
    else
      DM1.tCReceber.Next;
  end;
  DM1.tCReceber.Filtered := False;
end;

procedure TfEmissaoNotaFiscal.Verifica_Nota_Cancelada;
begin
  //NFe 2.00
  //03/04/2012 = Foi incluida a opção da nota denegada 
  if not(DM1.tNotaFiscalCancelada.AsBoolean) and not(DM1.tNotaFiscalNFeDenegada.AsBoolean) then
    Panel4.SendToBack
  else      
  begin
    if DM1.tNotaFiscalNFeDenegada.AsBoolean then
      Label39.Caption := 'NOTA DENEGADA'
    else
    if Trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) = '' then
      Label39.Caption := '... Aguardando cancelamento'
    else
      Label39.Caption := 'NOTA CANCELADA';
    Panel4.BringToFront;
  end;
  //NFe 2.00
  lbContingencia.Visible := (((Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5')) and
                            (Trim(DM1.tNotaFiscalNFeProtocolo.AsString) = '') and
                            (Trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) <> ''));
end;

procedure TfEmissaoNotaFiscal.Compara_Valor_Parcelas;
begin
  vValorParcelas := 0;
  if DM1.tNotaFiscalParc.State in [dsEdit,dsInsert] then
    DM1.tNotaFiscalParc.Post;
  DM1.tNotaFiscalParc.First;
  while not DM1.tNotaFiscalParc.Eof do
  begin
    if DM1.tNotaFiscalParcParcela.AsInteger < 50 then
      vValorParcelas := vValorParcelas + DM1.tNotaFiscalParcVlrVenc.AsFloat;
    DM1.tNotaFiscalParc.Next;
  end;
  vValorParcelas   := vValorParcelas + DM1.tNotaFiscalEntrada.AsCurrency;
  vValorParcelaTot := FormatFloat('0.00',vValorParcelas);
end;

procedure TfEmissaoNotaFiscal.Limpa_Parcelas;
begin
  DM1.tNotaFiscalVlrTotalNota.AsCurrency := DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                            DM1.tNotaFiscalCustoFinanc.AsCurrency;
  DM1.tNotaFiscalCustoPerc.Clear;
  DM1.tNotaFiscalCustoFinanc.Clear;
  if not DM1.tNotaFiscalParc.IsEmpty then
    while not DM1.tNotaFiscalParc.IsEmpty do
      DM1.tNotaFiscalParc.Delete;
end;

{procedure TfEmissaoNotaFiscal.Calcula_Desconto(Desconto: Boolean; VlrDescAnt: Currency);
var
  vBaseICMS, vValorAliq, vBaseItemDesc : Currency;
  vAux : Currency;
begin
  DM1.tNotaFiscalVlrTotalItens.AsCurrency := DM1.tNotaFiscalVlrTotalItens.AsCurrency +
                                             VlrDescAnt - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  DM1.tNotaFiscalVlrTotalNota.AsCurrency  := DM1.tNotaFiscalVlrTotalNota.AsCurrency +
                                             VlrDescAnt - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency  := DM1.tNotaFiscalVlrTotalDupl.AsCurrency +
                                             VlrDescAnt - DM1.tNotaFiscalVlrTotalDesc.AsCurrency;

  tNotaFiscalItensIns.IndexFieldNames := 'Filial;NumSeq;Item';
  tNotaFiscalItensIns.Refresh;
  tNotaFiscalItensIns.First;
  DM1.tNotaFiscalBaseICMS.AsCurrency := 0;
  DM1.tNotaFiscalVlrICMS.AsCurrency  := 0;
  vValorAliq := 0;
  if DBEdit16.Text <> '' then
    begin
      if vAliqICMS > 0  then
        vValorAliq := vAliqICMS;
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalVlrFrete.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency * vValorAliq / 100));
    end;
  while not tNotaFiscalItensIns.EOF do
    begin
      if Desconto then
        begin
          case RxDBComboBox3.ItemIndex of
            0 : vAux := tNotaFiscalItensInsVlrIPI.AsCurrency;
            1 : vAux := 0;
          end;
          vBaseICMS := tNotaFiscalItensInsBaseIcms.AsCurrency - vAux;
          DM1.tNotaFiscalBaseICMS.AsCurrency  := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                 StrToCurr(FormatCurr('0.00',vAux + vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100));
          vBaseItemDesc                       := StrToCurr(FormatCurr('0.00',vAux + vBaseICMS - vBaseICMS * DM1.tNotaFiscalPercDesc.AsCurrency / 100));
          DM1.tNotaFiscalVlrICMS.AsCurrency   := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                 StrToCurr(FormatCurr('0.00',vBaseItemDesc * tNotaFiscalItensInsIcms.AsCurrency / 100));
        end
      else
        begin
          DM1.tNotaFiscalBaseICMS.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                tNotaFiscalItensInsBaseIcms.AsCurrency));
          DM1.tNotaFiscalVlrICMS.AsCurrency  := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                tNotaFiscalItensInsVlrIcms.AsCurrency));
        end;
      tNotaFiscalItensIns.Next;
    end;
end;}

procedure TfEmissaoNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oActiveTables.OpenTables(False,Self);

  DM1.tCReceber.Filtered       := False;
  DM1.tProduto.IndexFieldNames := 'Nome';
  DM1.tCliente.IndexFieldNames := 'Codigo';

  DM1.tNotaFiscalParc.Close;
  DM1.tNotaFiscalItens.Close;
  DM1.tNotaFiscalGrade.Close;
  DM1.tNotaFiscalVale.Close;
  DM1.tNotaFiscalPed.Close;
  DM1.tNotaFiscalPedGrade.Close;
  DM1.tNotaFiscalNDevolvida.Close;
  DM1.tNotaFiscalTBObs.Close;
  DM1.tCSTIPI.Close;

  DM1.tNEntrada.Close;
  DM1.tNEntradaItens.Close;

  DM1.tProduto.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoTam.Close;
  DM1.tProdutoCli.Close;
  DM1.tProdutoConsumo.Close;
  DM1.tProdutoConsumoItem.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoComb.Close;

  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoGrade.Close;
  DM1.tPedidoNota.Close;
  DM1.tPedido2.Close;
  DM1.tPedidoItem2.Close;

  DM1.tPlanoContas.Close;
  DM1.tContas.Close;
  DM1.tCliente.Close;
  DM1.tIndexador.Close;
  DM1.tTransp.Close;
  DM1.tNatOperacao.Close;
  DM1.tCondPgto.Close;
  DM1.tCondPgtoItem.Close;
  DM1.tCondPgto2.Close;
  DM1.tTipoCobranca.Close;
  DM1.tTabPreco.Close;
  DM1.tVendedor.Close;

  DM1.tCReceber.Close;
  DM1.tCReceberParc.Close;
  DM1.tCReceberParcHist.Close;
  DM1.tCReceberParcRem.Close;

  DM1.tVale.Close;
  DM1.tValeItens.Close;

  DM1.tGrade.Close;
  DM1.tGradeItem.Close;

  DM1.tTalao.Close;
  DM1.tTalaoGrade.Close;
  DM1.tGrupo.Close;
  DM1.tGrupolk.Close;
  DM1.tUnidade.Close;

  DM1.tNatOperacao.Filtered := False;

  DMNotaFiscal.tNotaFiscalReboque.Close;
  DMNotaFiscal.tNotaFiscalLacre.Close;
  DMNotaFiscal.tNEntradaItens.Close;

  if DMNotaFiscal.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMNotaFiscal);

  if DMTabImposto.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMTabImposto);

  if DMBanco.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMBanco);

  DM1.tNotaFiscal.Filtered := False;

  Action := CaFree;
end;

procedure TfEmissaoNotaFiscal.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfEmissaoNotaFiscal.SpeedButton1Click(Sender: TObject);
var
  vFiltro : String;
begin
  if DM1.tUsuarioNatOper.AsBoolean then
  begin
    //NFe 2.00
    vFiltro := DM1.tNatOperacao.Filter;
    DM1.tNatOperacao.Filtered := False;

    fNatOperacao := TfNatOperacao.Create(Self);
    fNatOperacao.ShowModal;

    //NFe 2.00
    DM1.tNatOperacao.Filtered := False;
    DM1.tNatOperacao.Filter   := vFiltro;
    DM1.tNatOperacao.Filtered := True;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
  begin
    fVendedor := TfVendedor.Create(Self);
    fVendedor.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
  begin
    if RxDBLookupCombo8.Text <> '' then
      vCodClientePos := RxDBLookupCombo8.KeyValue;
    RxDBFilter1.Active := False;
    fCliente := TfCliente.Create(Self);
    fCliente.BitBtn8.Visible := True;
    fCliente.ShowModal;
    Dm1.tCliente.Refresh;
    RxDBFilter1.Active := True;
    if vCodClientePos > 0 then
    begin
      DM1.tCliente.Locate('Codigo',vCodClientePos,[loCaseInsensitive]);
      RxDBLookupCombo8.KeyValue := vCodClientePos;
    end;
    vCodClientePos := 0;
    DM1.tCliente.IndexFieldNames;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
  begin
    fTransp := TfTransp.Create(Self);
    fTransp.ShowModal;
    DM1.tNotaFiscalCodTransp.Clear;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioUf.AsBoolean then
  begin
    fUf := TfUf.Create(Self);
    fUf.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton9Click(Sender: TObject);
var
  vAux, vPesoL, vPesoB : Real;
begin
  if not (DM1.tNotaFiscalItens.IsEmpty) and not(Dm1.tNotaFiscalItensVale.AsBoolean) then
  begin
    if MessageDlg('Deseja realmente excluir este produto da nota?',mtConfirmation,
       [mbOK,mbNo],0) = mrOK then
    begin
      Limpa_Parcelas;
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([DM1.tNotaFiscalItensCodProduto.AsInteger]);
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
      DM1.tNotaFiscalPesoBruto.AsFloat     := DM1.tNotaFiscalPesoBruto.AsFloat - vPesoB * vAux;
      DM1.tNotaFiscalPesoLiquido.AsFloat   := DM1.tNotaFiscalPesoLiquido.AsFloat - vPesoL * vAux;
      DM1.tNotaFiscalBaseICMS.AsCurrency   := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseICMS.AsCurrency -
                                              DM1.tNotaFiscalItensBaseICMS.AsCurrency));
      DM1.tNotaFiscalVlrICMS.AsCurrency    := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrICMS.AsCurrency -
                                              DM1.tNotaFiscalItensVlrICMS.AsCurrency));
      DM1.tNotaFiscalVlrTotalNota.AsCurrency  := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrTotalNota.AsCurrency -
                                              DM1.tNotaFiscalItensVlrTotal.AsCurrency -
                                              DM1.tNotaFiscalItensVlrIPI.AsCurrency));
      DM1.tNotaFiscalVlr_Tributo.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlr_Tributo.AsFloat - DM1.tNotaFiscalItensVlr_Tributo.AsFloat));
      if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
        DM1.tNotaFiscalVlrTotalDupl.AsCurrency  := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                                                DM1.tNotaFiscalItensVlrTotal.AsCurrency -
                                                DM1.tNotaFiscalItensVlrIPI.AsCurrency));
      DM1.tNotaFiscalVlrCofins.AsFloat := DM1.tNotaFiscalVlrCofins.AsFloat - DM1.tNotaFiscalItensVlrCofins.AsFloat;
      DM1.tNotaFiscalVlrPis.AsFloat    := DM1.tNotaFiscalVlrPis.AsFloat - DM1.tNotaFiscalItensVlrPis.AsFloat;

      if DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalItensNatOper.AsInteger,([Locaseinsensitive])) then
        if DM1.tNatOperacaoSomaMercNF.AsBoolean then
          DM1.tNotaFiscalVlrTotalItens.AsCurrency := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalItens.AsCurrency -
                                                  DM1.tNotaFiscalItensVlrTotal.AsCurrency));

      if DM1.tNotaFiscalItensIPI.AsFloat > 0 then
        DM1.tNotaFiscalVlrIPI.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalVlrIPI.AsFloat -
                                         StrToCurr(FormatFloat('0.00',DM1.tNotaFiscalItensQtd.AsFloat *
                                         DM1.tNotaFiscalItensVlrUnit.AsFloat *
                                         DM1.tNotaFiscalItensIPI.AsFloat / 100))));

      //Icms Simples
      if DM1.tNotaFiscalBaseIcmsSimples.AsFloat > 0 then
      begin
        DM1.tNotaFiscalBaseIcmsSimples.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsFloat - DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat));
        DM1.tNotaFiscalVlrIcmsSimples.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrIcmsSimples.AsFloat - DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat));
      end;

      if DM1.tProdutoProdMat.AsString = 'P' then
      begin
        DM1.tNotaFiscalQtdTotalPares.AsFloat := DM1.tNotaFiscalQtdTotalPares.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
        DM1.tNotaFiscalQtd.AsFloat           := DM1.tNotaFiscalQtd.AsFloat - 1;
      end;
      if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
        Exclui_FatPedido(DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,DM1.tNotaFiscalItensNumTalao.AsInteger,DM1.tNotaFiscalItensQtd.AsFloat,'D')
      else
      begin
        DM1.tNotaFiscalPed.First;
        while not DM1.tNotaFiscalPed.Eof do
        begin
          Exclui_FatPedido(DM1.tNotaFiscalPedPedido.AsInteger,DM1.tNotaFiscalPedItemPedido.AsInteger,DM1.tNotaFiscalPedNumTalao.AsInteger,DM1.tNotaFiscalPedQtd.AsFloat,'D');
          DM1.tNotaFiscalPed.Delete;
        end;
      end;

      //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
      DM1.tNEntrada.IndexFieldNames      := 'Filial;NumNEntr;CodForn';
      DM1.tNEntradaItens.IndexFieldNames := 'Filial;CodForn;NumNEntr;Item';
      DM1.tNotaFiscalNDevolvida.First;
      while not DM1.tNotaFiscalNDevolvida.Eof do
      begin
        DM1.tNEntrada.SetKey;
        DM1.tNEntradaFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
        DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
        DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
        if DM1.tNEntrada.GotoKey then
        begin
          DM1.tNEntradaItens.SetKey;
          DM1.tNEntradaItensFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
          DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
          DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
          DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
          if DM1.tNEntradaItens.GotoKey then
          begin
            DM1.tNEntradaItens.Edit;
            DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
            DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
            DM1.tNEntradaItens.Post;
          end;
        end;
        DM1.tNotaFiscalNDevolvida.Delete;
      end;
      if DM1.tNotaFiscalItensSomaTransfICM.AsBoolean then
        DM1.tNotaFiscalBaseTransfICM.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseTransfICM.AsCurrency - DM1.tNotaFiscalItensBaseIcms.AsCurrency));
      if DM1.tNotaFiscalBaseTransfICM.AsCurrency <= 0 then
        DM1.tNotaFiscalBaseTransfICM.AsCurrency := 0;
      DM1.tNotaFiscalGrade.First;
      while not DM1.tNotaFiscalGrade.Eof do
        DM1.tNotaFiscalGrade.Delete;
      DM1.tNotaFiscalItens.Delete;
      DM1.tNotaFiscalItens.Refresh;

      if DM1.tNotaFiscalItens.IsEmpty then
        DM1.tNotaFiscalTipoDesconto.AsString := '';
      DM1.tNotaFiscalVlrTotalDesc.Clear;
      DM1.tNotaFiscalPercDesc.Clear;
    end;
  end
  else
    ShowMessage('Não existe item para apagar da nota ou item foi copiado do vale!');
  if DM1.tNotaFiscalItens.IsEmpty then
    RxDBComboBox3.Enabled := True;
end;

procedure TfEmissaoNotaFiscal.BitBtn1Click(Sender: TObject);
begin
  if not DM1.tUsuarioInsNotaFiscal.AsBoolean then
  begin
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
    exit;
  end;

  DM1.tNotaFiscal.Filtered := False;

  vPercICMSSimples := 0;
  mVale.EmptyTable;
  BitBtn7.Tag := 0;
  vPedido     := 0;
  vItemPedido := 0;
  vItemNota   := 0;
  vCodSitTrib := 0;
  if DM1.tParametrosPedirFilial.AsBoolean then
  begin
    fEscFilial := TfEscFilial.Create(Self);
    fEscFilial.ShowModal;
  end
  else
    DM1.tFilial.First;
  fEmissaoNotaFiscal.Caption := 'Nota Fiscal ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;

  Habilita_Desabilita;

  tNotaFiscalIns.IndexFieldNames  := 'Filial;NumSeq';
  DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumSeq';

  DM1.tNotaFiscal.Refresh;
  tNotaFiscalIns.Last;

  // Rocha - NMU
  Grava_NumSeq;
  PageControl1.ActivePage := TabSheet5;
  DBEdit2.Clear;

  Verifica_Nota_Cancelada;

  RxDBComboBox3.Enabled := True;
  DBEdit1.SetFocus;
end;

procedure TfEmissaoNotaFiscal.BitBtn2Click(Sender: TObject);
var
  vValorTotalStr : string;
  vAux : Real;
begin
  if not DM1.tCliente.Active then
    DM1.tCliente.Open;

  if not DM1.tNatOperacao.Active then
    DM1.tNatOperacao.Open;

  if (DM1.tNotaFiscalCondPgto.AsString <> 'P') and (DM1.tNotaFiscalPrazoPgto.AsInteger > 0) and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) <= 0)  then
    DM1.tNotaFiscalPrazoPgto.AsInteger := 0;

  if not Verifica_Dados then
    exit;

  //NFe 2.00

  if ((RxDBLookupCombo10.Text = '') or
     (DBEdit26.Text = '') or (DBEdit29.Text = '') or (DBEdit30.Text = '')) then
    if MessageDlg('Há campos em branco "Transportadora", "Espécie", "Peso Bruto" ou "Peso Líquido". Deseja confirmar assim mesmo?!',mtconfirmation,[mbok,mbno],0)=mrno then
      exit;

  if ((DM1.tNotaFiscalPercTransf.AsFloat > 0) or (DM1.tNotaFiscalBaseIcms.AsFloat > 0)) and (DM1.tNotaFiscalVlrTransf.AsFloat = 0) then
    if MessageDlg('Valor transferência do ICMS não calculado, deseja confirmar assim mesmo?',mtconfirmation,[mbok,mbno],0)=mrno then
      exit;

  if RxDBComboBox2.Text = 'A Prazo' then
  begin
    if (DM1.tNotaFiscalParc.IsEmpty) and
       (DM1.tNotaFiscalEntrada.AsCurrency <> DM1.tNotaFiscalVlrTotalDupl.AsCurrency) then
    begin
      ShowMessage('Você escolheu Cond.Pgto a Prazo, deve digitar as parcelas!');
      exit;
    end;
    vValorTotalStr := FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat);
    Compara_Valor_Parcelas;
    if vValorParcelaTot <> vValorTotalStr then
    begin
      ShowMessage('Valor das parcelas não confere com total da nota fiscal!');
      exit;
    end;
  end;

  //Verifica se a nota é triangular pela natureza
  DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalCodNatOper.AsInteger,([Locaseinsensitive]));
  if DM1.tNatOperacaoCopiarNotaTriangular.AsBoolean then
  begin
    fNotaFiscalCliTriang := TfNotaFiscalCliTriang.Create(Self);
    fNotaFiscalCliTriang.ShowModal;
  end;

  // Rocha - NMU
  if DM1.tNotaFiscalNumNota.AsInteger <= 0 then
  begin
    fEmissaoNotaFiscal.Tag := 0;
    fNotaFiscalConfirma := TfNotaFiscalConfirma.Create(Self);
    fNotaFiscalConfirma.ShowModal;
    if fEmissaoNotaFiscal.Tag = 2 then
      exit;
  end
  else
  if Trim(DM1.tNotaFiscalTipoEnvioNF.AsString) = '' then
    DM1.tNotaFiscalTipoEnvioNF.AsString        := '1-NORMAL';
  DM1.tProduto.IndexFieldNames := 'Codigo';

  //NFe 2.00
  DM1.tNotaFiscalVersaoNFe.AsString          := DM1.tParametrosVersaoNFe.AsString;
  DM1.tNotaFiscalIdentVersaoEmissao.AsString := DM1.tParametrosVersaoEmissaoNFe.AsString;
  DM1.tNotaFiscalCodRegimeTrib.AsInteger     := DM1.tFilialCodRegimeTrib.AsInteger;
  //*************

  //NFe 2.00
  if (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3')  or
     (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5') then
  begin
    fNotaFiscalContingencia := TfNotaFiscalContingencia.Create(Self);
    fNotaFiscalContingencia.ShowModal;
  end;
  //*************

  //Ajusta a tabela do estoque
  //Esse if foi colocado pq o cliente pode informar o número da nota antes, esses casos
  //só vão acontecer quando o cliente contratar o programa e querer digitar as notas anteriores manualmente
  if Trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) = '' then
  begin
    Ajusta_Estoque;
    if (DM1.tNotaFiscallkTipoComissao.AsString = 'N') and
       ((DM1.tNotaFiscalCodVendedor.AsInteger > 0) and (DM1.tNotaFiscalPercComissao.AsFloat > 0)) then
    begin
      if DM1.tParametrosTipoComissao.AsString = 'G' then
      begin
        Grava_ExtComissao('N');
        //Lanc_Diferenca;
      end
      else
      begin
        vVlrBaseComissao   := 0;
        vVlrComissaoItens  := 0;
        vPercComissao      := 9999;
        DM1.tNotaFiscalItens.First;
        while not DM1.tNotaFiscalItens.Eof do
        begin
          if (DM1.tNotaFiscalItensPercComissao.AsFloat > 0) and (DM1.tNotaFiscalItensGeraDupl.AsBoolean)  then
          begin
            if DM1.tParametrosTipoComissao.AsString = 'G' then
            begin
              DM1.tNotaFiscalItens.Edit;
              DM1.tNotaFiscalItensPercComissao.AsFloat  := DM1.tNotaFiscalPercComissao.AsFloat;
              DM1.tNotaFiscalItens.Post;
            end;

            if vPercComissao = 9999 then
              vPercComissao := DM1.tNotaFiscalItensPercComissao.AsFloat;
            if vPercComissao <> DM1.tNotaFiscalItensPercComissao.AsFloat then
              vPercComissao := 9998;

            vVlrBaseComissao   := StrToFloat(FormatFloat('0.00',vVlrBaseComissao + DM1.tNotaFiscalItensVlrTotal.AsFloat));
            vAux               := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalItensVlrTotal.AsFloat * DM1.tNotaFiscalItensPercComissao.AsFloat / 100)));
            vVlrComissaoItens  := StrToFloat(FormatFloat('0.00',vVlrComissaoItens + vAux));

            if vPercComissao <> 9998 then
              vPercComissao := DM1.tNotaFiscalItensPercComissao.AsFloat;
          end;
          DM1.tNotaFiscalItens.Next;
        end;
        if (vPercComissao = 9998) or (vPercComissao = 9999) then
          vPercComissao := 0;
        if vVlrBaseComissao > 0 then
          Grava_ExtComissao('I');
      end;
    end;
  end;

  //Monta o número da nota de devolução para imprimir nos dados adicionais
  //Grava o estoque
  DM1.tNotaFiscalQtdTotalPares.AsFloat := 0;
  Dm1.tNotaFiscalItens.First;
  while not Dm1.tNotaFiscalItens.Eof do
    begin
      //*** Grava o número da nota nos itens
      DM1.tProduto.FindKey([DM1.tNotaFiscalItensCodProduto.AsInteger]);

      DM1.tNotaFiscalItens.Edit;
      DM1.tNotaFiscalItensNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
      DM1.tNotaFiscalItensSerie.AsString    := DM1.tNotaFiscalSerie.AsString;
      DM1.tNotaFiscalItens.Post;

      if DM1.tProdutoProdMat.AsString = 'P' then
        DM1.tNotaFiscalQtdTotalPares.AsFloat := DM1.tNotaFiscalQtdTotalPares.AsFloat + DM1.tNotaFiscalItensQtd.AsFloat;

      // NotaPedido
      if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
        Grava_PedidoNota(DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger)
      else
      if DM1.tNotaFiscalItensNumTalao.AsInteger > 0 then
      begin
        if DM1.tTalao.Locate('Talao',DM1.tNotaFiscalItensNumTalao.AsInteger,[loCaseInsensitive]) then
          Grava_PedidoNota(DM1.tTalaoPedido.AsInteger,DM1.tTalaoItemPedido.AsInteger)
      end
      else
      begin
        DM1.tNotaFiscalPed.First;
        while not DM1.tNotaFiscalPed.Eof do
        begin
          DM1.tNotaFiscalPed.Edit;
          DM1.tNotaFiscalPedNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tNotaFiscalPed.Post;
          // Nota pedido grade
          DM1.tNotaFiscalPedGrade.First;
          while not DM1.tNotaFiscalPedGrade.Eof do
          begin
            DM1.tNotaFiscalPedGrade.Edit;
            DM1.tNotaFiscalPedGradeNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
            DM1.tNotaFiscalPedGrade.Post;
            DM1.tNotaFiscalPedGrade.Next;
          end;
          Grava_PedidoNota(DM1.tNotaFiscalPedPedido.AsInteger,DM1.tNotaFiscalPedItemPedido.AsInteger);
          DM1.tNotaFiscalPed.Next;
        end;
      end;

      //Notas Devolvidas
      DM1.tNotaFiscalNDevolvida.First;
      while not DM1.tNotaFiscalNDevolvida.Eof do
      begin
        DM1.tNotaFiscalNDevolvida.Edit;
        DM1.tNotaFiscalNDevolvidaNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
        DM1.tNotaFiscalNDevolvida.Post;
        DM1.tNotaFiscalNDevolvida.Next;
      end;

      //********************************
      if trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) = '' then
      begin
        if (DM1.tNotaFiscalItensEstoque.AsBoolean) and (DM1.tNotaFiscalItensCodProduto.AsInteger > 0) then
        begin
          if DM1.tNotaFiscalGrade.RecordCount > 0 then
          begin
            DM1.tNotaFiscalGrade.First;
            while not DM1.tNotaFiscalGrade.Eof do
            begin
              if DM1.tNotaFiscalGradeQtd.AsFloat > 0 then
                Baixa_Estoque(DM1.tNotaFiscalGradelkTamanho.AsString,DM1.tNotaFiscalGradeQtd.AsFloat);
              DM1.tNotaFiscalGrade.Next;
            end;
          end
          else
            Baixa_Estoque('',DM1.tNotaFiscalItensQtd.AsFloat);
        end;
      end;

      if DM1.tParametrosTipoComissao.AsString = 'G' then
      begin
        DM1.tNotaFiscalItens.Edit;
        DM1.tNotaFiscalItensPercComissao.AsFloat  := DM1.tNotaFiscalPercComissao.AsFloat;
        DM1.tNotaFiscalItens.Post;
      end;
      Dm1.tNotaFiscalItens.Next;
    end;

  DM1.tNotaFiscalImpressa.AsBoolean := True;
  DM1.tNotaFiscal.Post;

  if DM1.tNotaFiscalItens.State in [dsEdit,dsInsert] then
    DM1.tNotaFiscalItens.Post;

  //Calcula o valor total da comissão quando for por produto
  vVlrComissaoItens  := 0;
  vPercComissao      := 9999;
  if (DM1.tNotaFiscalTipoNota.AsInteger = 1) and (DM1.tNotaFiscalCodVendedor.AsInteger > 0) and
     (DM1.tNotaFiscallkTipoComissao.AsString = 'D') then
  begin
    if DM1.tParametrosTipoComissao.AsString = 'P' then
    begin
      DM1.tNotaFiscalItens.First;
      while not DM1.tNotaFiscalItens.Eof do
      begin
        if (DM1.tNotaFiscalItensGeraDupl.AsBoolean) and ((DM1.tNotaFiscalItensPercComissao.AsFloat > 0) or (DM1.tNotaFiscalItensPercComissao2.AsFloat > 0)) then
        begin
          if DM1.tParametrosTipoComissao.AsString = 'G' then
          begin
            DM1.tNotaFiscalItens.Edit;
            DM1.tNotaFiscalItensPercComissao.AsFloat  := DM1.tNotaFiscalPercComissao.AsFloat;
            DM1.tNotaFiscalItens.Post;
          end;
          if vPercComissao = 9999 then
            vPercComissao := DM1.tNotaFiscalItensPercComissao.AsFloat;

          if vPercComissao <> DM1.tNotaFiscalItensPercComissao.AsFloat then
            vPercComissao := 9998;

          vAux              := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalItensVlrTotal.AsFloat * DM1.tNotaFiscalItensPercComissao.AsFloat) / 100));
          vVlrComissaoItens := vVlrComissaoItens + StrToFloat(FormatFloat('0.00',vAux));

          if DM1.tNotaFiscalItensPercComissao2.AsFloat > 0 then
          begin
            vAux              := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalItensVlrTotal.AsFloat * DM1.tNotaFiscalItensPercComissao2.AsFloat) / 100));
            vVlrComissaoItens := vVlrComissaoItens + StrToFloat(FormatFloat('0.00',vAux));
          end;

          if vPercComissao <> 9998 then
            vPercComissao := DM1.tNotaFiscalItensPercComissao.AsFloat;
        end;
        DM1.tNotaFiscalItens.Next;
      end;
    end;
  end;
  if DM1.tParametrosTipoComissao.AsString = 'G' then
    vPercComissao  := DM1.tNotaFiscalPercComissao.AsFloat
  else
  begin
    if (vPercComissao = 9998) or (vPercComissao = 9999) then
      vPercComissao := 0;
    if ((DM1.tNotaFiscalVlrTotalDupl.AsFloat > 0) or (DM1.tNotaFiscalVlrTransf.AsFloat > 0)) and
       (vPercComissao = 0) and (vVlrComissaoItens > 0) then
    begin
      vAux := DM1.tNotaFiscalVlrTotalDupl.AsFloat + DM1.tNotaFiscalVlrTransf.AsFloat;
      vPercComissao := StrToFloat(FormatFloat('0.00',(vVlrComissaoItens / vAux) * 100));
    end;
  end;

  if (trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) = '') and (DM1.tNotaFiscalSaidaEntrada.AsString = 'S') then
    Grava_Pgto;

  Habilita_Desabilita;
  mVale.First;
  while not mVale.Eof do
  begin
    if Dm1.tVale.Locate('NumVale',mValeNumVale.AsInteger,([Locaseinsensitive])) then
    begin
      Dm1.tVale.Edit;
      Dm1.tValeFaturado.AsBoolean   := True;
      Dm1.tValeNumNota.AsInteger    := Dm1.tNotafiscalNumNota.AsInteger;
      DM1.tValeNumSeqNota.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
      Dm1.tVale.Post;
      mVale.Delete;
    end;
  end;
  BitBtn4.Enabled  := False;
  DBEdit35.Enabled := True;
  BitBtn7.Tag  := 0;

  if trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) = '' then
  begin
    DM1.tCReceber.Filtered := False;
    DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+'''';
    DM1.tCReceber.Filtered := True;
    if DM1.tCReceber.RecordCount > 1 then
      ShowMessage('Duplicou o registro no contas a receber, favor alterar a nota e confirmar novamente!')
    else
    if (DM1.tNotaFiscalCondPgto.AsString = 'N') and not(DM1.tCReceber.IsEmpty) then
      ShowMessage('Favor alterar a nota e confirmar novamente, pois gerou parcelas a mais!')
    else
    if (DM1.tNotaFiscalCondPgto.AsString = 'P') or (DM1.tNotaFiscalCondPgto.AsString = 'V') or (DM1.tNotaFiscalVlrTotalDupl.AsFloat > 0) then
      if DM1.tCReceber.IsEmpty then
        ShowMessage('Não foi gravada a nota no contas a receber, favor alterar e confirmar novamente!');
  end;
  DM1.tCReceber.Filtered := False;

  DM1.tNotaFiscal.Refresh;
  DM1.tNotaFiscalItens.Refresh;
  DM1.tNotaFiscalParc.Refresh;
  DM1.tPedido.Refresh;
  DM1.tPedidoItem.Refresh;
  DM1.tPedidoGrade.Refresh;
  DM1.tTalao.Refresh;
  DM1.tTalaoGrade.Refresh;
  tNotaFiscalIns.Refresh;
  vItemNota := 0;
end;

procedure TfEmissaoNotaFiscal.BitBtn4Click(Sender: TObject);
var
  vQtdAux : Real;
  vNumSeqAux : Integer;
begin
  if (Trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) <> '') and not(DM1.tNotaFiscalInfNumNotaManual.AsBoolean) then
  begin
    ShowMessage('Nota não pode ser excluída!');
    exit;
  end;

  DBEdit35.Enabled := True;
  BitBtn7.Tag      := 1;
  tNotaFiscalIns.Refresh;
  tNotaFiscalIns.Last;

  // Rocha - NFU
  vNumSeqAux := DM1.tNotaFiscalNumSeq.AsInteger;
  tNotaFiscalIns.IndexFieldNames  := 'Filial;NumSeq';
  DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumSeq';

  // Rocha - NFU
  if DM1.tNotaFiscal.Locate('Filial;NumSeq',VarArrayOf([DM1.tFilialCodigo.AsInteger,vNumSeqAux]),[locaseinsensitive]) then
  begin
    //NFe 2.00  - Existe tabelas novas
    Volta_Pedido('DI');
    DM1.tNotaFiscalParc.First;
    if not DM1.tNotaFiscalParc.IsEmpty then
      while not DM1.tNotaFiscalParc.Eof do
        DM1.tNotaFiscalParc.Delete;
    DM1.tNotaFiscalRef.First;
    while not DM1.tNotaFiscalRef.Eof do
      DM1.tNotaFiscalRef.Delete;
    DMNotaFiscal.tNotaFiscalReboque.First;
    while not DMNotaFiscal.tNotaFiscalReboque.Eof do
      DMNotaFiscal.tNotaFiscalReboque.Delete;
    DMNotaFiscal.tNotaFiscalLacre.First;
    while not DMNotaFiscal.tNotaFiscalLacre.Eof do
      DMNotaFiscal.tNotaFiscalLacre.Delete;
    //NFe 2.00
    DMNotaFiscal.tNotaFiscalTBDesconto.First;
    while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
      DMNotaFiscal.tNotaFiscalTBDesconto.Delete;

    DM1.tNotaFiscalTBObs.Cancel;
    if not DM1.tNotaFiscalTBObs.IsEmpty then
      DM1.tNotaFiscalTBObs.Delete;

    Exclui_Pgto;

    DM1.tNotaFiscal.Delete;

    if BitBtn23.Tag <> 1 then
      Habilita_Desabilita;
  end
  else
    ShowMessage('Esta nota não pode ser cancelada pois não é a última!');
  vItemNota := 0;
  Verifica_Nota_Cancelada;
  RxDBComboBox3.Enabled := True;
  BitBtn23.Tag := 0;
  DM1.tPedido.Refresh;
  DM1.tPedidoItem.Refresh;
  DM1.tPedidoGrade.Refresh;
  DM1.tTalao.Refresh;
  DM1.tTalaoGrade.Refresh;
end;

procedure TfEmissaoNotaFiscal.DBComboBox1Exit(Sender: TObject);
begin
  if (DBComboBox1.Text = 'RS') or (DBComboBox1.Text = 'AC') or
     (DBComboBox1.Text = 'AL') or (DBComboBox1.Text = 'AP') or
     (DBComboBox1.Text = 'AM') or (DBComboBox1.Text = 'BA') or
     (DBComboBox1.Text = 'CE') or (DBComboBox1.Text = 'DF') or
     (DBComboBox1.Text = 'ES') or (DBComboBox1.Text = 'GO') or
     (DBComboBox1.Text = 'MA') or (DBComboBox1.Text = 'MT') or
     (DBComboBox1.Text = 'MS') or (DBComboBox1.Text = 'MG') or
     (DBComboBox1.Text = 'PA') or (DBComboBox1.Text = 'PB') or
     (DBComboBox1.Text = 'PR') or (DBComboBox1.Text = 'PE') or
     (DBComboBox1.Text = 'PI') or (DBComboBox1.Text = 'RJ') or
     (DBComboBox1.Text = 'RN') or (DBComboBox1.Text = 'RO') or
     (DBComboBox1.Text = 'RR') or (DBComboBox1.Text = 'SC') or
     (DBComboBox1.Text = 'SP') or (DBComboBox1.Text = 'SE') or
     (DBComboBox1.Text = 'TO') or (DBComboBox1.Text = '') then
  else
  begin
    ShowMessage('Deve ser escolhido uma sigla válida!');
    DBComboBox1.SetFocus;
  end;
end;

procedure TfEmissaoNotaFiscal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfEmissaoNotaFiscal.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  DM1.tNotaFiscal.Refresh;
  Verifica_Nota_Cancelada;
  if PageControl1.ActivePage = TabSheet1 then
  begin
    DM1.tCliente.IndexFieldNames := 'Codigo';
    DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  end;
end;

procedure TfEmissaoNotaFiscal.DBEdit1Exit(Sender: TObject);
begin
  try
    DM1.tNotaFiscalDtEntr.AsDateTime := DM1.tNotaFiscalDtEmissao.AsDateTime;
  except
  end;

  if (DM1.tNotaFiscalItens.RecordCount < 1) and (DM1.tNotaFiscalDtEmissao.AsDateTime > 0) then
  begin
    Busca_PercIcmsSimples;
    DM1.tNotaFiscalPercIcmsSimples.AsFloat := vPercICMSSimples;
  end;
end;

procedure TfEmissaoNotaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tNotaFiscal.State in [dsBrowse]) then
  begin
    fConsNotaFiscal := TfConsNotaFiscal.Create(Self);
    fConsNotaFiscal.ShowModal;
    fEmissaoNotaFiscal.Caption := 'Nota Fiscal ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;

    Verifica_Nota_Cancelada;
  end;
  if ((Shift = [ssCtrl]) and (Key = 87)) and (DM1.tNotaFiscal.State in [dsEdit,dsInsert]) then
    Panel5.Enabled := not(Panel5.Enabled);
end;

procedure TfEmissaoNotaFiscal.SpeedButton19Click(Sender: TObject);
begin
  if DM1.tUsuarioPlanoCtas.AsBoolean then
  begin
    fPlanoContas := TfPlanoContas.Create(Self);
    fPlanoContas.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tPlanoContas.IndexFieldNames := 'Descricao';
end;

procedure TfEmissaoNotaFiscal.BitBtn7Click(Sender: TObject);
var
 vFlag : String;
 vNumSeq : Integer;
begin
  if not DM1.tUsuarioAltNotaFiscal.AsBoolean then
  begin
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
    exit;
  end;

  if (DM1.tNotaFiscalNFeChaveAcesso.AsString <> '') and not(DM1.tNotaFiscalInfNumNotaManual.AsBoolean) then
  begin
    ShowMessage('Nota já impressa!');
    exit;
  end;

  if DM1.tNotaFiscalNumNota.AsInteger > 0 then
  begin
    vNumSeq := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumSeq';
    DM1.tNotaFiscal.FindKey([DM1.tFilialCodigo.AsInteger,vNumSeq]);
  end;
  vPercICMSSimples := 0;
  mVale.EmptyTable;
  vFlag := 'S';
  if (DM1.tNotaFiscalCancelada.AsBoolean) or (DM1.tNotaFiscalNumNota.AsInteger < 1) or
     (DM1.tNotaFiscalCodCli.AsInteger < 1) then
    exit;

  DM1.tCReceber.Filtered := False;
  DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+'''';
  DM1.tCReceber.Filtered := True;
  DM1.tCReceberParc.First;
  while not DM1.tCReceberParc.Eof do
  begin
    if (DM1.tCReceberParcPgtoParcial.AsFloat > 0) or (DM1.tCReceberParcVlrDevolucao.AsFloat > 0)  then
    begin
      vFlag := 'P';
      DM1.tCReceberParc.Last;
    end
    else
    if DM1.tCReceberParcArqGerado.AsBoolean then
    begin
      vFlag := 'E';
      DM1.tCReceberParc.Last;
    end;
    DM1.tCReceberParc.Next;
  end;
  DM1.tCReceber.Filtered := False;

  if vFlag = 'P' then
  begin
    ShowMessage('Nota já possui pagamento, para cancelar precisa estornar');
    exit;
  end;
  if vFlag = 'E' then
  begin
    if MessageDlg('Já foi gerado arquivo para o banco com esta nota.' + #13+' Para os boletos entrar em contato com o Banco! ' + 'confirmar assim mesmo cancelamento?' ,mtConfirmation,[mbOK,mbNo],0) = mrNo then
      exit;
  end;

  DM1.tCliente.Locate('Codigo',DM1.tNotaFiscalCodCli.AsInteger,[loCaseInsensitive]);
  vCodSitTrib := 0;
  BitBtn7.Tag := 1;
  Verifica_UF;
  DBEdit35.Enabled := False;
  Desfaz_ExtComissao;
  Incrementa_Estoque;
  Ajusta_Estoque;
  Exclui_Pgto;
  DM1.tNotaFiscal.Edit;
  if (YearOf(DM1.tNotaFiscalDtEmissao.AsDateTime) > 2008) and (DM1.tNotaFiscalDtEmissao.AsDateTime > 0) and
     (DM1.tNotaFiscalPercIcmsSimples.AsFloat <= 0) and (DM1.tFilialUsarICMSimples.AsBoolean) then
  begin
    Busca_PercIcmsSimples;
    DM1.tNotaFiscalPercIcmsSimples.AsFloat := vPercICMSSimples;
  end;

  DBEdit35.Enabled := False;
  Habilita_Desabilita;
  BitBtn4.Enabled := False;
  DBEdit1.SetFocus;
  if DM1.tClienteEndEntrega.AsString <> '' then
    RxDBComboBox1.Enabled := True
  else
  begin
    RxDBComboBox1.Enabled   := False;
    RxDBComboBox1.ItemIndex := 0;
  end;
end;

procedure TfEmissaoNotaFiscal.PageControl1Enter(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet1 then
  begin
    DM1.tCliente.IndexFieldNames := 'Codigo';
    DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  end;
end;

procedure TfEmissaoNotaFiscal.TabSheet1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo7Exit(Sender: TObject);
begin
  Verifica_Natureza(RxDBLookupCombo7.Text);
  if not vNatureza then
  begin
    RxDBLookupCombo7.ClearValue;
    RxDBLookupCombo7.SetFocus;
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo7DropDown(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_F4 then
  begin
    if RxDBLookupCombo8.LookupDisplay = 'Nome' then
    begin
       RxDBLookupCombo8.CloseUp(True);
       RxDBLookupCombo8.LookupDisplay := 'Fantasia';
       DM1.tCliente.IndexFieldNames   := 'Fantasia';
       DM1.tCliente.Refresh;
    end
    else
    if RxDBLookupCombo8.LookupDisplay = 'Fantasia' then
    begin
      RxDBLookupCombo8.CloseUp(True);
      RxDBLookupCombo8.LookupDisplay := 'CGCCPF';
      DM1.tCliente.IndexFieldNames   := 'CGCCPF';
      DM1.tCliente.Refresh;
    end
    else
    if RxDBLookupCombo8.LookupDisplay = 'CGCCPF' then
    begin
      RxDBLookupCombo8.CloseUp(True);
      RxDBLookupCombo8.LookupDisplay := 'Nome';
      DM1.tCliente.IndexFieldNames   := 'Nome';
      DM1.tCliente.Refresh;
    end;
    Label4.Caption := RxDBLookupCombo8.LookupDisplay;
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8Exit(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.SetKey;
      DM1.tClienteCodigo.AsInteger := RxDBLookupCombo8.KeyValue;
      DM1.tCliente.GotoKey;
      Verifica_UF;
      RxDBLookupCombo8.LookupDisplay := 'Nome';
      Label4.Caption  := RxDBLookupCombo8.LookupDisplay;
      Label10.Caption := RxDBLookupCombo10.LookupDisplay;
      if DM1.tClienteTipoFrete.AsString = 'C' then
        DM1.tNotaFiscalEmitDest.AsInteger := 1
      else
      if DM1.tClienteTipoFrete.AsString = 'F' then
        DM1.tNotaFiscalEmitDest.AsInteger := 2;
      vUsaIPI := False;
      if DM1.tFilialCalculaIPI.AsBoolean then
      begin
        if (DM1.tClienteIpi.AsFloat > 0) and
           (MessageDlg('Cliente possui IPI, confirma?',mtConfirmation,[mbOK,mbNo],0) = mrOK) then
          vUsaIPI := True;
      end;
      Verifica_Natureza(RxDBLookupCombo7.Text);
      if not vNatureza then
      begin
        RxDBLookupCombo7.ClearValue;
        RxDBLookupCombo7.SetFocus;
      end
      else
      begin
        PageControl1.ActivePage := TabSheet5;
        if Dm1.tClienteCodTransp.AsInteger > 0 then
          Dm1.tNotaFiscalCodTransp.AsInteger  := Dm1.tClienteCodTransp.AsInteger;
        if vCodClienteAnt <> RxDBLookupCombo8.KeyValue then
        begin
          DM1.tNotaFiscalCodVendedor.AsInteger  := DM1.tClienteCodVendedor.AsInteger;
          if DM1.tClientePercComissao.AsFloat > 0 then
            DM1.tNotaFiscalPercComissao.AsFloat  := DM1.tClientePercComissao.AsFloat
          else
            DM1.tNotaFiscalPercComissao.AsFloat  := DM1.tClientelkComissao.AsFloat;
          if DM1.tClienteCodVendedor.AsInteger > 0 then
          begin
            DM1.tVendedor.IndexFieldNames := 'Codigo';
            DM1.tVendedor.SetKey;
            DM1.tVendedorCodigo.AsInteger := DM1.tClienteCodVendedor.AsInteger;
            if not DM1.tVendedor.GotoKey then
              ShowMessage('Vendedor não encontrado!');
          end;
        end;
        if (DM1.tNotaFiscalPercTransf.AsFloat < 0) or (DM1.tNotaFiscalPercTransf.AsFloat = 0) then
        begin
          if DM1.tClientePercTransf.AsFloat > 0 then
            DM1.tNotaFiscalPercTransf.AsFloat := DM1.tClientePercTransf.AsFloat;
        end;
        if DM1.tClienteCodCondPgto.AsInteger > 0 then
          DM1.tNotaFiscalPrazoPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
      end;
    end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8Enter(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  DM1.tCliente.IndexFieldNames := 'Nome';

  vCodClienteAnt := DM1.tNotaFiscalCodCli.AsInteger;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo8Click(Sender: TObject);
begin
  Verifica_UF;
  if DM1.tClienteEndEntrega.AsString <> '' then
    RxDBComboBox1.Enabled := True
  else
  begin
    RxDBComboBox1.Enabled   := False;
    RxDBComboBox1.ItemIndex := 0;
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo9DropDown(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo9Enter(Sender: TObject);
begin
  vCodVendedorIni := 0;
  if RxDBLookupCombo9.Text <> '' then
    vCodVendedorIni := RxDBLookupCombo9.KeyValue;
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.tAuxNotaFiscalGradeBeforeInsert(
  DataSet: TDataSet);
var
 icount, vContador : integer;
begin
  if SpeedButton23.Tag <> 2 then
  begin
    i2 := 0;
    icount := tAuxNotaFiscalGrade.RecordCount;
    if DM1.tProdutoProdMat.AsString = 'P' then
      vContador := DM1.tProdutoTam.RecordCount
    else
      vContador := DM1.tGradeItem.RecordCount;
    if icount >= vContador then
    begin
      fNotaFiscalGrade.BitBtn5.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfEmissaoNotaFiscal.DBEdit35Exit(Sender: TObject);
var
  vConfAux : Boolean;
begin
  if tNotaFiscalIns.Locate('NumNota',DM1.tNotaFiscalNumNota.AsInteger,[loCaseInsensitive]) then
  begin
    ShowMessage('Já existe uma NF com este número!');
    DM1.tNotaFiscal.Cancel;
    Habilita_Desabilita;
    BitBtn1.SetFocus;
  end
  else
  begin
    vConfAux := True;

    if vConfAux then
    begin
      DM1.tNotaFiscal.Post;
      tNotaFiscalIns.Refresh;
      DM1.tNotaFiscal.Edit;
      DBRadioGroup1.SetFocus;
    end
    else
    begin
      DM1.tNotaFiscal.Cancel;
      Habilita_Desabilita;
      BitBtn1.SetFocus;
    end;
  end;
  DBEdit35.Enabled := False;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if DM1.tNotaFiscalCodCli.AsInteger <= 0 then
  begin
    ShowMessage('Você deve selecionar o cliente antes de selecionar a transportadora!');
    DM1.tNotaFiscalCodTransp.Clear;
  end;
  if RxDBLookupCombo10.Text <> '' then
  begin
    Dm1.tNotaFiscalPlaca.AsString := Dm1.tTranspPlaca.AsString;
    Dm1.tNotaFiscalUFPlaca.AsString := Dm1.tTranspUFPlaca.AsString;
  end;
end;

procedure TfEmissaoNotaFiscal.SpeedButton23Click(Sender: TObject);
var
  vAux, vPesoL, vPesoB : Real;
begin
  if DM1.tNotaFiscalNDevolvida.RecordCount > 0 then
    ShowMessage('Este item não pode ser alterado, pois existe nota de entrada devolvida, só pode ser excluído!')
  else
  if (DM1.tNotaFiscalItensItem.AsInteger > 0) and (DM1.tNotaFiscalTipoNota.AsString = '1')
     //and not(DM1.tNotaFiscalItensMaterial.AsBoolean) and not(Dm1.tNotaFiscalItensVale.AsBoolean)
     and not(Dm1.tNotaFiscalItensVale.AsBoolean) and (DM1.tNotaFiscalItensNumPedido.AsInteger < 1)
     and (DM1.tNotaFiscalItensItemPedido.AsInteger < 1) then
    begin
      fNotaFiscalItens := TfNotaFiscalItens.Create(Self);
      SpeedButton23.Tag := 1;

      //NFe 2.00
      if (DM1.tNotaFiscalTipoDesconto.AsString = 'N') and (StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalItensVlrDescontoRateio.AsFloat)) > 0) then
      begin
        DMNotaFiscal.tNotaFiscalTBDesconto.First;
        while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
          DMNotaFiscal.tNotaFiscalTBDesconto.Delete;
        DM1.tNotaFiscalVlrTotalDesc.AsFloat := 0;
        DM1.tNotaFiscalPercDesc.AsFloat     := 0;
      end;

      vItemNota := DM1.tNotaFiscalItensItem.AsInteger;
      if DM1.tNotaFiscalItensTipoItem.AsString = 'V' then
        fNotaFiscalItens.RadioGroup1.ItemIndex := 0
      else
      if DM1.tNotaFiscalItensTipoItem.AsString = 'A' then
        fNotaFiscalItens.RadioGroup1.ItemIndex := 1
      else
      if DM1.tNotaFiscalItensTipoItem.AsString = 'R' then
        fNotaFiscalItens.RadioGroup1.ItemIndex := 2
      else
        fNotaFiscalItens.RadioGroup1.ItemIndex := 3;
      fNotaFiscalItens.RxDBLookupCombo15.KeyValue   := DM1.tNotaFiscalItensNatOper.AsInteger;
      fNotaFiscalItens.CurrencyEdit6.AsInteger      := DM1.tNotaFiscalItensCodProduto.AsInteger;
      fNotaFiscalItens.RzDBLookupComboBox1.KeyValue := DM1.tNotaFiscalItensCodProduto.AsInteger;
      fNotaFiscalItens.RZDBLookupComboBox2.KeyValue := DM1.tNotaFiscalItensCodProduto.AsInteger;
      if DM1.tNotaFiscalItensCodCor.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo4.KeyValue := DM1.tNotaFiscalItensCodCor.AsInteger;
      fNotaFiscalItens.RxDBLookupCombo7.Value := DM1.tNotaFiscalItensUnidade.AsString;
      fNotaFiscalItens.CurrencyEdit3.Value    := DM1.tNotaFiscalItensQtd.AsFloat;
      fNotaFiscalItens.Edit4.Text             := DM1.tNotaFiscalItensIcms.AsString;
      fNotaFiscalItens.Edit5.Text             := DM1.tNotaFiscalItensIpi.AsString;
      if DM1.tNotaFiscalItensSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNotaFiscalItensSitTrib.AsInteger;
      //NFe 2.0
      if DM1.tNotaFiscalItensClasFiscal.AsString <> '' then
        fNotaFiscalItens.RxDBLookupCombo5.Value := DM1.tNotaFiscalItensClasFiscal.AsString;
      fNotaFiscalItens.CurrencyEdit4.Value := DM1.tNotaFiscalItensVlrUnit.AsFloat;
      fNotaFiscalItens.CurrencyEdit5.Value := DM1.tNotaFiscalItensVlrTotal.AsFloat;
      fNotaFiscalItens.CurrencyEdit1.Value := DM1.tNotaFiscalItensDesconto.AsFloat;
      fNotaFiscalItens.CurrencyEdit2.Value := DM1.tNotaFiscalItensVlrDesconto.AsFloat;
      fNotaFiscalItens.CurrencyEdit7.Value := DM1.tNotaFiscalItensPercComissao.AsFloat;
      fNotaFiscalItens.CurrencyEdit8.Value := DM1.tNotaFiscalItensPerc_Tributo.AsFloat;
      fNotaFiscalItens.CheckBox2.Checked   := DM1.tNotaFiscalItensEstoque.AsBoolean;
      fNotaFiscalItens.CheckBox1.Checked   := DM1.tNotaFiscalItensSomaTransfICM.AsBoolean;
      if DM1.tNotaFiscalItensCodCSTIPI.AsString <> '' then
        fNotaFiscalItens.RxDBLookupCombo1.KeyValue := DM1.tNotaFiscalItensCodCSTIPI.AsString;
      fNotaFiscalItens.Memo1.Lines.Clear;
      fNotaFiscalItens.Memo1.Lines.Add(DM1.tNotaFiscalItensObsComplementar.Value);
      vItemPedido      := DM1.tNotaFiscalItensItemPedido.AsInteger;
      vNumPedido       := DM1.tNotaFiscalItensNumPedido.AsInteger;
      vNumLote         := DM1.tNotaFiscalItensNumTalao.AsInteger;
      vNumNotaDevItem  := DM1.tNotaFiscalItensNumNotaDevForn.AsInteger;
      vCodForncDevItem := DM1.tNotaFiscalItensCodFornDev.AsInteger;
      vItemDev         := DM1.tNotaFiscalItensitemDev.AsInteger;
      vNumOC           := DM1.tNotaFiscalItensNumOC.AsString;
      vNumOS           := Dm1.tNotaFiscalItensNumOS.AsString;
      vPlano           := DM1.tNotaFiscalItensPlano.AsString;
      vCodCofins        := DM1.tNotaFiscalItensCodCofins.AsString;
      vCodPis           := DM1.tNotaFiscalItensCodPis.AsString;
      vTipoPis          := DM1.tNotaFiscalItensTipoPis.AsString;
      vTipoCofins       := DM1.tNotaFiscalItensTipoCofins.AsString;
      vPercPis          := DM1.tNotaFiscalItensAliqPis.AsFloat;
      vPercCofins       := DM1.tNotaFiscalItensAliqCofins.AsFloat;
      vVlrPis           := DM1.tNotaFiscalItensVlrPis.AsFloat;
      vVlrCofins        := DM1.tNotaFiscalItensVlrCofins.AsFloat;
      vOrigemMerc       := DM1.tNotaFiscalItensOrigemProd.AsString;
      vSomaVlrTotalProd := DM1.tNotaFiscalItensSomaVlrTotalProd.AsBoolean;

      //Monta grade
      tAuxNotaFiscalGrade.First;
      while not tAuxNotaFiscalGrade.Eof do
        tAuxNotaFiscalGrade.Delete;
      DM1.tNotaFiscalGrade.First;
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([DM1.tNotaFiscalItensCodProduto.AsInteger]);
      if DM1.tNotaFiscalGradeItem.AsInteger > 0 then
        DM1.tProdutoGrade.FindKey([DM1.tNotaFiscalItensCodProduto.AsInteger,DM1.tNotaFiscalItensCodGrade.AsInteger]);
      while not DM1.tNotaFiscalGrade.Eof do
        begin
          tAuxNotaFiscalGrade.Insert;
          tAuxNotaFiscalGradeCodGrade.AsInteger := Dm1.tNotaFiscalGradeCodGrade.AsInteger;
          tAuxNotaFiscalGradePosicao.AsInteger  := Dm1.tNotaFiscalGradePosicao.AsInteger;
          tAuxNotaFiscalGradeQtd.AsFloat        := Dm1.tNotaFiscalGradeQtd.AsFloat;
          tAuxNotaFiscalGrade.Post;
          DM1.tNotaFiscalGrade.Delete;
        end;
      //**************************
      DM1.tNotaFiscalBaseICMS.AsFloat    := DM1.tNotaFiscalBaseICMS.AsFloat - DM1.tNotaFiscalItensBaseIcms.AsFloat;
      DM1.tNotaFiscalVlrICMS.AsFloat     := DM1.tNotaFiscalVlrICMS.AsFloat - DM1.tNotaFiscalItensVlrIcms.AsFloat;
      DM1.tNotaFiscalVlr_Tributo.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlr_Tributo.AsFloat - DM1.tNotaFiscalItensVlr_Tributo.AsFloat));
      DM1.tNotaFiscalVlrIPI.AsFloat         := DM1.tNotaFiscalVlrIPI.AsFloat - DM1.tNotaFiscalItensVlrIpi.AsFloat;
      if DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalItensNatOper.AsInteger,([Locaseinsensitive])) then
        if DM1.tNatOperacaoSomaMercNF.AsBoolean then
          DM1.tNotaFiscalVlrTotalItens.AsFloat := DM1.tNotaFiscalVlrTotalItens.AsFloat - DM1.tNotaFiscalItensVlrTotal.AsFloat;
      DM1.tNotaFiscalVlrTotalNota.AsFloat   := DM1.tNotaFiscalVlrTotalNota.AsFloat - DM1.tNotaFiscalItensVlrTotal.AsFloat - DM1.tNotaFiscalItensVlrIpi.AsFloat;
      if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
        DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat - DM1.tNotaFiscalItensVlrTotal.AsFloat - DM1.tNotaFiscalItensVlrIpi.AsFloat;
      DM1.tNotaFiscalVlrCofins.AsFloat := DM1.tNotaFiscalVlrCofins.AsFloat - DM1.tNotaFiscalItensVlrCofins.AsFloat;
      DM1.tNotaFiscalVlrPis.AsFloat    := DM1.tNotaFiscalVlrPis.AsFloat - DM1.tNotaFiscalItensVlrPis.AsFloat;
      if DM1.tNotaFiscalTipoDesconto.AsString = 'I' then
        DM1.tNotaFiscalVlrTotalDesc.AsFloat := DM1.tNotaFiscalVlrTotalDesc.AsFloat - DM1.tNotaFiscalItensVlrDesconto.AsFloat;
      //****

      //Icms Simples
      if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsFloat)) > 0 then
      begin
        DM1.tNotaFiscalBaseIcmsSimples.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalBaseIcmsSimples.AsFloat - DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat));
        DM1.tNotaFiscalVlrIcmsSimples.AsFloat  := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrIcmsSimples.AsFloat - DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat));
      end;

      if DM1.tProdutoProdMat.AsString = 'P' then
        begin
          DM1.tNotaFiscalQtdTotalPares.AsFloat := DM1.tNotaFiscalQtdTotalPares.AsFloat - DM1.tNotaFiscalItensQtd.AsFloat;
          DM1.tNotaFiscalQtd.AsFloat           := DM1.tNotaFiscalQtd.AsFloat - 1;
        end;

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
      DM1.tNotaFiscalPesoBruto.AsFloat          := DM1.tNotaFiscalPesoBruto.AsFloat - (vPesoB * vAux);
      DM1.tNotaFiscalPesoLiquido.AsFloat        := DM1.tNotaFiscalPesoLiquido.AsFloat -(vPesoL * vAux);
      if DM1.tNotaFiscalItensNumPedido.AsInteger > 0 then
        Exclui_FatPedido(DM1.tNotaFiscalItensNumPedido.AsInteger,DM1.tNotaFiscalItensItemPedido.AsInteger,DM1.tNotaFiscalItensNumTalao.AsInteger,DM1.tNotaFiscalItensQtd.AsFloat,'D');

      //Estorna a nota de entrada devolvida e apaga a tabela dbNotaFiscalNDevolvida
      DM1.tNEntrada.IndexFieldNames      := 'Filial;NumNEntr;CodForn';
      DM1.tNEntradaItens.IndexFieldNames := 'Filial;CodForn;NumNEntr;Item';
      DM1.tNotaFiscalNDevolvida.First;
      while not DM1.tNotaFiscalNDevolvida.Eof do
        begin
          DM1.tNEntrada.SetKey;
          DM1.tNEntradaFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
          DM1.tNEntradaNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
          DM1.tNEntradaCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
          if DM1.tNEntrada.GotoKey then
            begin
              DM1.tNEntradaItens.SetKey;
              DM1.tNEntradaItensFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
              DM1.tNEntradaItensNumNEntr.AsInteger := DM1.tNotaFiscalNDevolvidaNumNotaEntrada.AsInteger;
              DM1.tNEntradaItensCodForn.AsInteger  := DM1.tNotaFiscalNDevolvidaCodFornecedor.AsInteger;
              DM1.tNEntradaItensItem.AsInteger     := DM1.tNotaFiscalNDevolvidaItemNotaEntrada.AsInteger;
              if DM1.tNEntradaItens.GotoKey then
                begin
                  DM1.tNEntradaItens.Edit;
                  DM1.tNEntradaItensQtdRestante.AsFloat  := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdRestante.AsFloat + DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
                  DM1.tNEntradaItensQtdDevolvida.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdDevolvida.AsFloat - DM1.tNotaFiscalNDevolvidaQtd.AsFloat));
                  DM1.tNEntradaItens.Post;
                end;
            end;
          DM1.tNotaFiscalNDevolvida.Delete;
        end;

      if DM1.tNotaFiscalItensSomaTransfICM.AsBoolean then
        DM1.tNotaFiscalBaseTransfICM.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tNotaFiscalBaseTransfICM.AsFloat - DM1.tNotaFiscalItensBaseIcms.AsFloat));
      if DM1.tNotaFiscalBaseTransfICM.AsFloat <= 0 then
        DM1.tNotaFiscalBaseTransfICM.AsFloat := 0;

      DM1.tNotaFiscalItens.Delete;
      fNotaFiscalItens.ShowModal;
    end
  else
    ShowMessage('Não há item para ser alterado, item não pode ser alterado pois foi copiado do vale ou foi agrupado!');
end;

procedure TfEmissaoNotaFiscal.SpeedButton24Click(Sender: TObject);
begin
  if DM1.tUsuarioTiposCobr.AsBoolean then
    begin
      fTipoCobranca := TfTipoCobranca.Create(Self);
      fTipoCobranca.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado!');
end;

procedure TfEmissaoNotaFiscal.BitBtn6Click(Sender: TObject);
begin
  //NFe 2.00 - Foi alterada esta procedure
  if (DM1.tNotaFiscalCodNatOper.AsInteger > 0) and (DM1.tNotaFiscalCodCli.AsInteger > 0) then
  begin
    SpeedButton23.Tag := 0;
    if DM1.tNotaFiscalTipoDesconto.AsString = 'N' then
    begin
      DM1.tNotaFiscalPercDesc.AsFloat     := 0;
      DM1.tNotaFiscalVlrTotalDesc.AsFloat := 0;
      DMNotaFiscal.tNotaFiscalTBDesconto.First;
      while not DMNotaFiscal.tNotaFiscalTBDesconto.Eof do
        DMNotaFiscal.tNotaFiscalTBDesconto.Delete;
    end;
    fNotaFiscalItens := TfNotaFiscalItens.Create(Self);
    fNotaFiscalItens.ShowModal;
  end
  else
  begin
    ShowMessage('Falta informar a natureza ou o cliente!');
    RxDBLookupCombo7.SetFocus;
  end;
end;

procedure TfEmissaoNotaFiscal.BitBtn14Click(Sender: TObject);
begin
  if (DM1.tNotaFiscalCodCli.AsInteger > 0) and (DBRadioGroup1.ItemIndex = 0) and (DM1.tNotaFiscalCodNatOper.AsInteger > 0)  then
    begin
      DM1.tCliente.Locate('Codigo',DM1.tNotaFiscalCodCli.AsInteger,[loCaseInsensitive]);
      Verifica_UF;
      if vSiglaUF = '' then
        ShowMessage('Cliente não possui estado, favor verificar!')
      else
        begin
          if (DM1.tFilialUsarICMSimples.AsBoolean) and (vPercICMSSimples <= 0) then
            begin
              ShowMessage('Não foi informado o % do Simples');
              exit;
            end;

          fNotaFiscalItens := TfNotaFiscalItens.Create(Self);

          vCodCorGeral := 0;
          tAuxNotaFiscalGrade.First;
          while not tAuxNotaFiscalGrade.Eof do
            tAuxNotaFiscalGrade.Delete;
          BitBtn14.Tag := 1;
          fNotaFiscalItens := TfNotaFiscalItens.Create(Self);
          fNotaFiscalItens.SpeedButton17.Tag := 0;
          vNumPedido   := 0;
          vItemPedido  := 0;
          vNumLote     := 0;
          fBuscaTalao := TfBuscaTalao.Create(Self);
          fBuscaTalao.RadioGroup1.ItemIndex := 0;
          fBuscaTalao.ShowModal;
          fNotaFiscalItens.Destroy;
          BitBtn14.Tag := 0;
        end;
    end
  else
    ShowMessage('Falta informar <Cliente>, <Natureza> e o Tipo tem que ser Saída!');
end;

procedure TfEmissaoNotaFiscal.BitBtn17Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo10KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo10.LookupDisplay = 'Nome' then
        begin
           RxDBLookupCombo10.CloseUp(True);
           RxDBLookupCombo10.LookupDisplay := 'Fantasia';
           DM1.tTransp.IndexFieldNames     := 'Fantasia';
           DM1.tTransp.Refresh;
        end
      else
      if RxDBLookupCombo10.LookupDisplay = 'Fantasia' then
        begin
          RxDBLookupCombo10.CloseUp(True);
          RxDBLookupCombo10.LookupDisplay := 'Nome';
          DM1.tTransp.IndexFieldNames     := 'Nome';
          DM1.tTransp.Refresh;
        end;
      Label10.Caption := RxDBLookupCombo10.LookupDisplay;
    end;
end;

procedure TfEmissaoNotaFiscal.RxDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tNotaFiscalGrade.RecordCount > 0 then
    begin
      SpeedButton23.Tag := 2;
      tAuxNotaFiscalGrade.First;
      while not tAuxNotaFiscalGrade.Eof do
        tAuxNotaFiscalGrade.Delete;
      DM1.tNotaFiscalGrade.First;
      while not DM1.tNotaFiscalGrade.Eof do
        begin
          tAuxNotaFiscalGrade.Insert;
          tAuxNotaFiscalGradeCodGrade.AsInteger := DM1.tNotaFiscalGradeCodGrade.AsInteger;
          tAuxNotaFiscalGradePosicao.AsInteger  := DM1.tNotaFiscalGradePosicao.AsInteger;
          tAuxNotaFiscalGradeQtd.AsFloat        := DM1.tNotaFiscalGradeQtd.AsFloat;
          tAuxNotaFiscalGrade.Post;
          DM1.tNotaFiscalGrade.Next;
        end;
      tAuxNotaFiscalGrade.First;
      fNotaFiscalGrade := TfNotaFiscalGrade.Create(Self);
      fNotaFiscalGrade.BitBtn5.Caption := '&Fechar';
      fNotaFiscalGrade.ShowModal;
      SpeedButton23.Tag := 0;
      tAuxNotaFiscalGrade.First;
      while not tAuxNotaFiscalGrade.Eof do
        tAuxNotaFiscalGrade.Delete;
    end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo9Exit(Sender: TObject);
begin
  if RxDBLookupCombo9.Text <> '' then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.SetKey;
      DM1.tClienteCodigo.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
      if (DM1.tCliente.GotoKey) and (DM1.tClientePercComissao.AsFloat <= 0) then
        begin
          DM1.tVendedor.IndexFieldNames := 'Codigo';
          DM1.tVendedor.SetKey;
          DM1.tVendedorCodigo.AsInteger := RxDBLookupCombo9.KeyValue;
          if DM1.tVendedor.GotoKey then
            if vCodVendedorIni <> DM1.tVendedorCodigo.AsInteger then
              DM1.tNotaFiscalPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
        end;
    end
  else
    DM1.tNotaFiscalPercComissao.AsFloat := 0;
end;

procedure TfEmissaoNotaFiscal.RxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_F3  then
  begin
    fNotaFiscalPed := TfNotaFiscalPed.Create(Self);
    fNotaFiscalPed.ShowModal;
  end;
  if Key = Vk_F4  then
  begin
    fNotaFiscalNDevolvida := TfNotaFiscalNDevolvida.Create(Self);
    fNotaFiscalNDevolvida.ShowModal;
  end;
  if Key = Vk_Return then
  begin
    if DM1.tNotaFiscal.State in [dsEdit,dsInsert] then
    begin
      fAltPrecoNotaFiscal := TfAltPrecoNotaFiscal.Create(Self);
      fAltPrecoNotaFiscal.ShowModal;
    end;
  end;
  if (Key = Vk_F9) and not(DM1.tNotaFiscalItens.IsEmpty) then
  begin
    fNotaFiscalAjustarIcms := TfNotaFiscalAjustarIcms.Create(Self);
    fNotaFiscalAjustarIcms.ShowModal;
  end;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo19Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.BitBtn20Click(Sender: TObject);
begin
  //NFe 2.00
  if DM1.tNotaFiscalTipoDesconto.AsString = 'I' then
  begin
    ShowMessage('Desconto foi aplicado por item!');
    exit;
  end;

  if DM1.tNotaFiscalItens.RecordCount > 0 then
  begin
    fInfDescontoNota := TfInfDescontoNota.Create(Self);
    fInfDescontoNota.ShowModal;
    RzButton4Click(Sender);
  end
  else
  begin
    ShowMessage('Informar o desconto só depois de digitar os itens!');
    DM1.tNotaFiscalPercDesc.Clear;
    DM1.tNotaFiscalVlrTotalDesc.Clear;
  end;
end;

procedure TfEmissaoNotaFiscal.Grava_NumSeq;
var
  vNumAux : Integer;
  vflag : Boolean;
begin
  DM1.tNotaFiscal.Refresh;
  tNotaFiscalIns.Refresh;
  tNotaFiscalIns.Last;
  vflag    := False;
  vNumAux  := tNotaFiscalInsNumSeq.AsInteger;
  vDataAnt := tNotaFiscalInsDtEmissao.AsDateTime;

  DM1.tNotaFiscal.Insert;
  DM1.tNotaFiscalFilial.AsInteger        := Dm1.tFilialCodigo.AsInteger;
  DM1.tNotaFiscalDtEmissao.AsDateTime    := Date;
  DM1.tNotaFiscalDtEntr.AsDateTime       := Date;
  DM1.tNotaFiscalIcmsIpi.AsBoolean       := DM1.tParametrosIcmsIpi.AsBoolean;
  DM1.tNotaFiscalSituacao.AsInteger      := 1;
  DM1.tNotaFiscalEspecie.AsString        := 'VOLUMES';
  DM1.tNotaFiscalTipoNota.AsInteger      := 1;
  DM1.tNotaFiscalDescricaoDesc.AsString  := '';
  DM1.tNotaFiscalCondPgto.AsString       := 'P';
  DM1.tNotaFiscalExportacao.AsBoolean    := False;
  DM1.tNotaFiscalUsuario.AsString        := DM1.tUsuarioUsuario.AsString;
  DM1.tNotaFiscalDtCad.AsDateTime        := Date;
  DM1.tNotaFiscalHrCad.AsDateTime        := Time;
  DM1.tNotaFiscalPisCofinsSomarOutrasDesp.AsBoolean := DM1.tParametrosPisCofinsSomarOutrasDesp.AsBoolean;

  while vflag = False do
    begin
      vNumAux := vNumAux + 1;
      try
        DM1.tNotaFiscalNumSeq.AsInteger := vNumAux;
        DM1.tNotaFiscal.Post;
        DM1.tNotaFiscal.Refresh;
        tNotaFiscalIns.Refresh;
        DM1.tNotaFiscal.Locate('Filial;NumSeq',VarArrayOf([DM1.tNotaFiscalFilial.AsInteger,vNumAux]),[locaseinsensitive]);
        DM1.tNotaFiscal.Edit;
        vflag := True;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível gravar, ' + E.Message + '! Clique para continuar!');
          vFlag := False;
        end;
      end;
    end;
end;

procedure TfEmissaoNotaFiscal.BitBtn12Click(Sender: TObject);
begin
  fNotaFiscalOBS := TfNotaFiscalOBS.Create(Self);
  fNotaFiscalOBS.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn23Click(Sender: TObject);
begin
  if not DM1.tUsuarioNotaFiscal.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado a fazer a exclusão!');
    exit;
  end;

  if (DM1.tNotaFiscalNFeChaveAcesso.AsString <> '') and not(DM1.tNotaFiscalInfNumNotaManual.AsBoolean) then
  begin
    ShowMessage('Nota não pode ser excluída, pois já foi validada!');
    exit;
  end;

  if (DM1.tNotaFiscalSerie.AsString = 'UN') then
  begin
    ShowMessage('Nota não pode ser excluída, não é eletrônica!');
    exit;
  end;

  if (DM1.tNotaFiscalNumSeq.AsInteger > 0) and
     (MessageDlg('Confirma a exclusão desta nota?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
  begin
    BitBtn23.Tag := 1;
    BitBtn4.Click;
  end;

  BitBtn23.Tag := 0;
end;

procedure TfEmissaoNotaFiscal.DBEdit33Exit(Sender: TObject);
begin
  if DBEdit33.Text <> '' then
  begin
    RxDBLookupCombo8Click(Sender);
    RxDBLookupCombo8.SetFocus;
  end;
end;

procedure TfEmissaoNotaFiscal.BitBtn8Click(Sender: TObject);
begin
  fNotaFiscalParcela := TfNotaFiscalParcela.Create(Self);
  fNotaFiscalParcela.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn10Click(Sender: TObject);
begin
  if DM1.tNotaFiscalParc.RecordCount > 0 then
    DM1.tNotaFiscalParc.Delete;
  DM1.tNotaFiscalParc.Refresh;
end;

procedure TfEmissaoNotaFiscal.RzButton1Click(Sender: TObject);
begin
  fNotaFiscalOutrasDespesas := TfNotaFiscalOutrasDespesas.Create(Self);
  fNotaFiscalOutrasDespesas.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn11Click(Sender: TObject);
begin
  fNotaFiscalRef := TfNotaFiscalRef.Create(Self);
  fNotaFiscalRef.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn13Click(Sender: TObject);
begin
  if DM1.tNotaFiscalRef.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a nota referencia?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
    DM1.tNotaFiscalRef.Delete;
end;

procedure TfEmissaoNotaFiscal.BitBtn19Click(Sender: TObject);
begin
  fNotaFiscalImp := TfNotaFiscalImp.Create(Self);
  fNotaFiscalImp.ShowModal;
end;

procedure TfEmissaoNotaFiscal.NFeDanfe1Click(Sender: TObject);
var
  vNumSeqAux : Integer;
begin
  if not DM1.tParametrosControlaNFe.AsBoolean then
    begin
      ShowMessage('Não autorizado a emitir NFe!');
      exit;
    end;

  if Length(Trim(DM1.tNotaFiscalPlaca.AsString)) > 7 then
    begin
      ShowMessage('Placa só pode conter letras e números!');
      exit;
    end;

  //21/09/2010
  try
    vNumSeqAux := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tNotaFiscal.Filtered := False;
    DM1.tNotaFiscal.Filter   := 'NumSeq = '''+IntToStr(vNumSeqAux)+'''';
    DM1.tNotaFiscal.Filtered := True;

    DMNotaFiscal.vNumSeqNFe := DM1.tNotaFiscalNumSeq.AsInteger;

    fNFe := TfNFe.Create(fNFe);

    //NFe 2.00
    if Tag = 99 then
      fNFe.Tag := 2;
    //********
    fNFe.vPessoaTransp := DM1.tNotaFiscallkPessoaTransp.AsString;
    Gera_NFe;
    fNFe.ShowModal;
  finally
    //03/04/2012
    if DM1.tNotaFiscalNFeDenegada.AsBoolean then
      Cancelamento(False);

    FreeAndNil(fNFe);
    DM1.tNotaFiscal.Filtered := False;
    DM1.tNotaFiscal.FindKey([DM1.tFilialCodigo.AsInteger,vNumSeqAux]);
  end;
end;

procedure TfEmissaoNotaFiscal.Cancelar1Click(Sender: TObject);
begin
  //NFe 2.00
  //Verificar toda esta procedure
  if DM1.tNotaFiscalNumNota.AsInteger < 1 then
    exit;
  if Trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) = '' then
  begin
    ShowMessage('Nota sem chave de acesso não pode ser cancelada!');
    exit;
  end;

  if (DM1.tNotaFiscalCancelada.AsBoolean) and (DM1.tNotaFiscalNFeProtocoloCancelada.AsString <> '') then
    begin
      fNotaFiscalCancelada := TfNotaFiscalCancelada.Create(Self);
      fNotaFiscalCancelada.DBEdit1.ReadOnly := True;
      fNotaFiscalCancelada.ShowModal;
      exit;
    end;

  if not Cancelar then
    exit;

  if MessageDlg('Deseja realmente cancelar esta nota fiscal?',mtWarning,[mbOK,mbNO],0) = mrNo then
    exit;

  if MessageDlg('                                  ATENÇÃO'
                  +#13#13+
                  'Após cancelada, esta operação não mais poderá ser desfeita!'+#13+
                  '  Clique no botão OK para cancelar a nota fiscal.',mtInformation,
                  [mbOK,mbNO],0) = mrNo then
    exit;
    
  try
    Tag := 99;
    DM1.tNotaFiscal.Edit;
    fNotaFiscalCancelada := TfNotaFiscalCancelada.Create(Self);
    fNotaFiscalCancelada.DBEdit1.ReadOnly := False;
    fNotaFiscalCancelada.ShowModal;
    DM1.tNotaFiscal.Post;

    NFeDanfe1Click(fEmissaoNotaFiscal);
    Tag := 0;

    if Trim(DM1.tNotaFiscalNFeProtocoloCancelada.AsString) <> '' then
      Cancelamento(True);

  except
    on E: Exception do
      ShowMessage('problema no cancelamento, erro: ' + E.Message + '!');
  end;
  
  Verifica_Nota_Cancelada;
end;

procedure TfEmissaoNotaFiscal.BitBtn3Click(Sender: TObject);
begin
  if (DM1.tNotaFiscalCodCli.AsInteger > 0) and (DBRadioGroup1.ItemIndex = 0) and (DM1.tNotaFiscalCodNatOper.AsInteger > 0)  then
  begin
    if vSiglaUF = '' then
      ShowMessage('Cliente não possui estado, favor verificar!')
    else
    begin
      vCodCorGeral := 0;
      tAuxNotaFiscalGrade.First;
      while not tAuxNotaFiscalGrade.Eof do
        tAuxNotaFiscalGrade.Delete;
      BitBtn14.Tag := 1;
      fNotaFiscalItens := TfNotaFiscalItens.Create(Self);
      fNotaFiscalItens.SpeedButton17.Tag := 0;
      vNumPedido   := 0;
      vItemPedido  := 0;
      fBuscaPedido := TfBuscaPedido.Create(Self);
      fBuscaPedido.RadioGroup1.ItemIndex := 0;
      fBuscaPedido.ShowModal;
      fNotaFiscalItens.Destroy;
      BitBtn14.Tag := 0;
    end;
  end
  else
    ShowMessage('Falta informar o <Cliente>, <Natureza> e o tipo tem que ser Saída!');
end;

procedure TfEmissaoNotaFiscal.FormShow(Sender: TObject);
begin
  //NFe 2.00
  DMNotaFiscal.tNotaFiscalImp.Open;
  DMNotaFiscal.tNotaFiscalImpAdicao.Open;
  DMNotaFiscal.tNotaFiscalReboque.Open;
  DMNotaFiscal.tNotaFiscalLacre.Open;
  DMNotaFiscal.tNEntradaItens.Open;
  //**************

//  DM1.tNotaFiscalParc.Open;
//  DM1.tNotaFiscalItens.Open;
  DM1.tNotaFiscalGrade.Open;
  DM1.tNotaFiscalVale.Open;
  DM1.tNotaFiscalPed.Open;
  DM1.tNotaFiscalPedGrade.Open;
  DM1.tUnidade.Open;

  oActiveTables.ActiveDataSet(True, DM1.tNEntrada, Name);
  oActiveTables.ActiveDataSet(True, DM1.tNEntradaItens, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProduto, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoCor, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoGrade, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoTam, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoCli, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoMat, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoComb, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoConsumo, Name);
  oActiveTables.ActiveDataSet(True, DM1.tProdutoConsumoItem, Name);
  oActiveTables.ActiveDataSet(True, DM1.tNotaFiscalRef, Name);
  oActiveTables.ActiveDataSet(True, DM1.tPais, Name);
  oActiveTables.ActiveDataSet(True, DM1.tNotaFiscalTBObs, Name);
  oActiveTables.ActiveDataSet(True, DM1.tNotaFiscalNDevolvida, Name);
  oActiveTables.ActiveDataSet(True, DMNotaFiscal.tNotaFiscalTBDesconto, Name);

  DM1.tCSTIPI.Open;
  DM1.tContas.Open;
  DM1.tContasParametros.Open;
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tPedidoNota.Open;
  DM1.tPedido2.Open;
  DM1.tPedidoItem2.Open;
  DM1.tPedidoConsumo.Open;

  oActiveTables.ActiveDataSet(True, DM1.tIndexador, Name);

  oActiveTables.ActiveDataSet(True, DM1.tTabPreco, Name);
  oActiveTables.ActiveDataSet(True,DM1.tEstoqueMatMov, Name);
  oActiveTables.ActiveDataSet(True, DM1.tExtComissao, Name);
  oActiveTables.ActiveDataSet(True, DM1.tObsAux, Name);

  oActiveTables.ActiveDataSet(True, DM1.tCReceber, Name);
  oActiveTables.ActiveDataSet(True, DM1.tCReceberParc, Name);
  oActiveTables.ActiveDataSet(True, DM1.tCReceberParcHist, Name);
  oActiveTables.ActiveDataSet(True, DM1.tCReceberParcRem, Name);

  DM1.tVale.Open;
  DM1.tValeItens.Open;

  DM1.tGrade.Open;
  DM1.tGradeItem.Open;
  DM1.tGradeItemlk.Open;

  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;
  DM1.tGrupo.Open;
  DM1.tGrupolk.Open;

  DM1.tUnidade.Open;

  DMBanco.tBcoItau.Open;
  DMBanco.tBcoBrasil.Open;

  DM1.tIndexador.Last;
  DM1.tNotaFiscal.Refresh;
  DM1.tNotaFiscal.Last;
  DM1.tProduto.IndexFieldNames := 'Nome';
  Verifica_Nota_Cancelada;
  Label4.Caption  := RxDBLookupCombo8.LookupDisplay;
  Label10.Caption := RxDBLookupCombo10.LookupDisplay;
  tAuxNotaFiscalGrade.Open;

  DM1.tParametros.First;

  Screen.cursor := crDefault;

  fEmissaoNotaFiscal.Caption := 'Nota Fiscal ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;

  if DM1.tParametrosNroItensNota.AsInteger < 1 then
    ShowMessage('Não foi informada a quantidade de itens da nota');
  mVale.Open;
  PageControl1.ActivePageIndex := 0;
  SpeedButton4.Visible         := DM1.tParametrosInfNumNotaManual.AsBoolean;

  BitBtn16.Visible := ((DM1.tParametrosUsaFB.AsBoolean) and (DM1.tParametrosUsaClienteTerceiro.AsBoolean));
end;

procedure TfEmissaoNotaFiscal.BitBtn9Click(Sender: TObject);
begin
  fNotaFiscalCopia := TfNotaFiscalCopia.Create(Self);
  fNotaFiscalCopia.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BitBtn15Click(Sender: TObject);
begin
  //NFe 2.0
  if (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '2') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '3') or (Copy(DM1.tNotaFiscalTipoEnvioNF.AsString,1,1) = '5') then
  begin
    fNotaFiscalContingencia := TfNotaFiscalContingencia.Create(Self);
    fNotaFiscalContingencia.DBDateEdit1.ReadOnly       := (DM1.tNotaFiscalNFeProtocolo.AsString <> '');
    fNotaFiscalContingencia.RzDBDateTimeEdit2.ReadOnly := (DM1.tNotaFiscalNFeProtocolo.AsString <> '');
    fNotaFiscalContingencia.DBMemo2.ReadOnly           := (DM1.tNotaFiscalNFeProtocolo.AsString <> '');
    fNotaFiscalContingencia.ShowModal;
  end;
end;

procedure TfEmissaoNotaFiscal.RzButton2Click(Sender: TObject);
begin
  fNotaFiscalReboque := TfNotaFiscalReboque.Create(Self);
  fNotaFiscalReboque.ShowModal;
end;

//NFe 2.00
function TfEmissaoNotaFiscal.Cancelar: Boolean;
var
  vFlag : String;
begin
  Result := False;
  vFlag := 'S';
  if DM1.tNotaFiscalImpressa.AsBoolean then
  begin
    DM1.tCReceber.Filtered := False;
    DM1.tCReceber.Filter   := 'NumSeqNota = '''+DM1.tNotaFiscalNumSeq.AsString+''' and CodCli = '''+DM1.tNotaFiscalCodCli.AsString+''' and Filial = '''+Dm1.tNotaFiscalFilial.AsString+'''';
    DM1.tCReceber.Filtered := True;
    if not DM1.tCReceber.IsEmpty then
    begin
      DM1.tCReceberParc.First;
      while not DM1.tCReceberParc.Eof do
      begin
      if (DM1.tCReceberParcPgtoParcial.AsFloat > 0) or (DM1.tCReceberParcVlrDevolucao.AsFloat > 0)  then
        begin
          vFlag := 'P';
          DM1.tCReceberParc.Last;
        end
        else
        if DM1.tCReceberParcArqGerado.AsBoolean then
        begin
          vFlag := 'E';
          DM1.tCReceberParc.Last;
        end;
        DM1.tCReceberParc.Next;
      end;
    end;
  end;
  DM1.tCReceber.Filtered := False;
  if vFlag = 'P' then
  begin
    ShowMessage('Essa nota já possui parcela com pagamentos, favor verificar no contas a receber!');
    exit;
  end;
  if vFlag = 'E' then
  begin
    ShowMessage('Já foi gerado arquivo para o banco com esta nota!');
    exit;
  end;
  Result := True;
end;

procedure TfEmissaoNotaFiscal.RxDBComboBox7Change(Sender: TObject);
begin
  Label62.Visible  := (RxDBComboBox7.ItemIndex > 0);
  DBEdit46.Visible := (RxDBComboBox7.ItemIndex > 0);

  case RxDBComboBox7.ItemIndex of
    1: Label62.Caption := 'Identificação do Vagão';
    2: Label62.Caption := 'Identificação da Balsa';
  end;
end;

procedure TfEmissaoNotaFiscal.RzButton3Click(Sender: TObject);
begin
  fNotaFiscalLacre := TfNotaFiscalLacre.Create(Self);
  fNotaFiscalLacre.ShowModal;
end;

procedure TfEmissaoNotaFiscal.RxDBLookupCombo10Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfEmissaoNotaFiscal.RzButton4Click(Sender: TObject);
begin
  Calcula_Desconto_Novo(False);
  oActiveTables.ActiveDataSet(True,DM1.tClasFiscal,Name);
  Subst_Tributaria;
end;

procedure TfEmissaoNotaFiscal.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tNotaFiscalNumNota.AsInteger < 1 then
  begin
    fNotaFiscalNumNota := TfNotaFiscalNumNota.Create(Self);
    fNotaFiscalNumNota.ShowModal;
  end;
end;

procedure TfEmissaoNotaFiscal.FormCreate(Sender: TObject);
begin
  if not Assigned(DMNotaFiscal) then
    DMNotaFiscal := TDMNotaFiscal.Create(Self);

  if not Assigned(DMTabImposto) then
    DMTabImposto := TDMTabImposto.Create(Self);

  if not Assigned(DMBanco) then
    DMBanco := TDMBanco.Create(Self);

  oActiveTables.OpenTables(True,Self);
  oActiveTables.ActiveDataSet(True, DM1.tFilial, Name);
  oActiveTables.ActiveDataSet(True, DM1.tPercSimples, Name);
end;

procedure TfEmissaoNotaFiscal.BitBtn16Click(Sender: TObject);
begin
  fNotaFiscalClienteTerc := TfNotaFiscalClienteTerc.Create(Self);
  fNotaFiscalClienteTerc.ShowModal;
end;

procedure TfEmissaoNotaFiscal.BoletoBanco1Click(Sender: TObject);
begin
  if trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) = '' then
  begin
    ShowMessage('Nota não possue chave de acesso!');
    exit;
  end;
  if (DM1.tNotaFiscalCancelada.AsBoolean) or (DM1.tNotaFiscalNFeDenegada.AsBoolean) then
  begin
    ShowMessage('Nota esta cancelada ou denegada!');
    exit;
  end;

  fCobEletronicaImp     := TfCobEletronicaImp.Create(Self);
  fCobEletronicaImp.Tag := 1;
  fCobEletronicaImp.mBoletos.EmptyDataSet;

  DM1.tNotaFiscalParc.First;
  while not DM1.tNotaFiscalParc.Eof do
  begin
    if DM1.tNotaFiscalParcCodConta.AsInteger > 0 then
    begin
      if DM1.tContas.Locate('CodConta',DM1.tNotaFiscalParcCodConta.AsInteger,([Locaseinsensitive])) then
      begin
        if (DM1.tContasCNAB.AsString = 'ITAU400') or (Copy(DM1.tContasCNAB.AsString,1,6) = 'BRASIL') then
        begin
          fCobEletronicaImp.Grava_mBoletos(DM1.tNotaFiscalFilial.AsInteger,DM1.tNotaFiscalNumNota.AsInteger,
                                           DM1.tNotaFiscalParcParcela.AsInteger,0,
                                           DM1.tNotaFiscalSerie.AsString,'N');
        end;
      end;
    end;

    DM1.tNotaFiscalParc.Next;
  end;

  if DM1.tNotaFiscalCodCli.AsInteger <> DM1.tClienteCodigo.AsInteger then
  begin
    DM1.tCliente.IndexFieldNames := 'Codigo';
    DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]);
  end;
  vEmailEnvio   := DM1.tClienteEMailCobranca.AsString;
  vEmailAssunto := 'Boleto Ref. Nota ' + DM1.tNotaFiscalNumNota.AsString;
  fCobEletronicaImp.ShowModal;
  fCobEletronicaImp.Free;
  vEmailEnvio   := '';
  vEmailAssunto := '';
end;

procedure TfEmissaoNotaFiscal.CartaCorreo1Click(Sender: TObject);
begin
  //16/05/2012
  if (DM1.tNotaFiscalCancelada.AsBoolean) or (DM1.tNotaFiscalNFeProtocoloCancelada.AsString <> '') then
  begin
    ShowMessage('Nota Fiscal Cancelada!');
    exit;
  end;
  if trim(DM1.tNotaFiscalNFeChaveAcesso.AsString) = '' then
  begin
    ShowMessage('Nota Fiscal sem a chave de acesso!');
    exit;
  end;

  fNotaFiscalCCe := TfNotaFiscalCCe.Create(Self);
  fNotaFiscalCCe.vFilial := DM1.tNotaFiscalFilial.AsInteger;
  fNotaFiscalCCe.vNumSeq := DM1.tNotaFiscalNumSeq.AsInteger;
  fNotaFiscalCCe.ShowModal;
end;

end.
