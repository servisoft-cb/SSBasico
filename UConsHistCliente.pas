unit UConsHistCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXCtrls, StdCtrls, RxLookup, Mask, DBCtrls, ComCtrls, Grids, DBGrids,
  RXDBCtrl, ToolEdit, ALed, Db, DBTables, Buttons, CurrEdit, ExtCtrls;

type
  TfConsHistCliente = class(TForm)
    RxLabel1: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    RxDBGrid1: TRxDBGrid;
    Label3: TLabel;
    RxDBGrid2: TRxDBGrid;
    RxLabel2: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxLabel3: TRxLabel;
    ALed2: TALed;
    Label33: TLabel;
    ALed1: TALed;
    Label12: TLabel;
    RxDBGrid5: TRxDBGrid;
    Label7: TLabel;
    RxDBGrid6: TRxDBGrid;
    Label8: TLabel;
    ALed6: TALed;
    Label10: TLabel;
    TabSheet5: TTabSheet;
    Label9: TLabel;
    qOrcamento: TQuery;
    dsqOrcamento: TDataSource;
    qOrcamentoNumOrcamento: TIntegerField;
    qOrcamentoData: TDateField;
    qOrcamentoCodCliente: TIntegerField;
    qOrcamentoNomeCliente: TStringField;
    qOrcamentoNomeContato: TStringField;
    qOrcamentoCodVendedor: TIntegerField;
    qOrcamentoEMail: TStringField;
    qOrcamentoAprovado: TStringField;
    tOrcamentoItens: TTable;
    dsOrcamentoItens: TDataSource;
    tOrcamentoItensNumOrcamento: TIntegerField;
    tOrcamentoItensItem: TIntegerField;
    tOrcamentoItensReferencia: TStringField;
    tOrcamentoItensNomeProduto: TStringField;
    tOrcamentoItensVlrUnitario: TFloatField;
    tOrcamentoItensComMatriz: TBooleanField;
    tOrcamentoItensQtd: TFloatField;
    tOrcamentoItensVlrTotal: TFloatField;
    tOrcamentoItensUnidade: TStringField;
    tOrcamentoItensCodCor: TIntegerField;
    tOrcamentoItensCodProduto: TIntegerField;
    tOrcamentoItensAprovado: TStringField;
    tOrcamentoItensMotivoNaoAprov: TStringField;
    tOrcamentoItensDtAprovado: TDateField;
    tOrcamentoItensProdutoNCad: TBooleanField;
    BitBtn3: TBitBtn;
    Label15: TLabel;
    DBEdit6: TDBEdit;
    qPedido: TQuery;
    RxDBGrid3: TRxDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    RxDBGrid4: TRxDBGrid;
    dsqPedido: TDataSource;
    qPedidoPedido: TIntegerField;
    qPedidoDtEmissao: TDateField;
    qPedidoCodCliente: TIntegerField;
    qPedidoCodVendedor: TIntegerField;
    qPedidoPercComissao: TFloatField;
    qPedidoCodNatOper: TIntegerField;
    qPedidoQtdPares: TFloatField;
    qPedidoQtdParesCanc: TFloatField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoPedidoCliente: TStringField;
    qPedidoUsuario: TStringField;
    qPedidoDtCad: TDateField;
    qPedidoHrCad: TTimeField;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    qNotaFiscal: TQuery;
    dsqNotaFiscal: TDataSource;
    qNotaFiscalNumNota: TIntegerField;
    qNotaFiscalDtEmissao: TDateField;
    qNotaFiscalCodNatOper: TSmallintField;
    qNotaFiscalCodCli: TIntegerField;
    qNotaFiscalCodVendedor: TIntegerField;
    qNotaFiscalBaseIcms: TFloatField;
    qNotaFiscalVlrIcms: TFloatField;
    qNotaFiscalVlrTotalNota: TFloatField;
    qNotaFiscalVlrTotalItens: TFloatField;
    qNotaFiscalVlrIpi: TFloatField;
    qNotaFiscalVlrTotalDesc: TFloatField;
    qNotaFiscalVlrSeguro: TFloatField;
    qNotaFiscalVlrFrete: TFloatField;
    qNotaFiscalOutrasDesp: TFloatField;
    qNotaFiscalPesoBruto: TFloatField;
    qNotaFiscalPesoLiquido: TFloatField;
    qNotaFiscalCancelada: TBooleanField;
    qNotaFiscalUsuario: TStringField;
    qNotaFiscalDtCad: TDateField;
    qNotaFiscalHrCad: TTimeField;
    qNotaFiscalVlrTotalDupl: TFloatField;
    tNotaFiscalItens: TTable;
    dsNotaFiscalItens: TDataSource;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    RxLabel4: TRxLabel;
    DateEdit3: TDateEdit;
    RxLabel5: TRxLabel;
    DateEdit4: TDateEdit;
    BitBtn1: TBitBtn;
    qCReceberPagas: TQuery;
    qCReceberPagasNumCReceber: TIntegerField;
    qCReceberPagasParcCReceber: TIntegerField;
    qCReceberPagasVlrUltPgto: TFloatField;
    qCReceberPagasPgto: TBooleanField;
    qCReceberPagasDevolucao: TBooleanField;
    qCReceberPagasDtUltPgto: TDateField;
    qCReceberPagasHistorico: TStringField;
    qCReceberPagasDtVencCReceber: TDateField;
    qCReceberPagasVlrParcCReceber: TFloatField;
    qCReceberPagasCodCli: TIntegerField;
    qCReceberPagasNumNota: TIntegerField;
    ALed3: TALed;
    Label5: TLabel;
    RxDBGrid7: TRxDBGrid;
    dsqCReceberPagas: TDataSource;
    qCReceber: TQuery;
    qCReceberNumCReceber: TIntegerField;
    qCReceberParcCReceber: TIntegerField;
    qCReceberVlrParcCReceber: TFloatField;
    qCReceberDtPagParcCReceber: TDateField;
    qCReceberCodCli: TIntegerField;
    qCReceberNumNota: TIntegerField;
    qCReceberPgtoParcial: TFloatField;
    qCReceberRestParcela: TFloatField;
    qCReceberDtGerado: TDateField;
    qCReceberNumTitBanco: TStringField;
    dsqCReceber: TDataSource;
    qCReceberDtVencCReceber: TDateField;
    qCReceberQuitParcCReceber: TBooleanField;
    qCReceberCancelado: TBooleanField;
    RxDBGrid9: TRxDBGrid;
    ALed5: TALed;
    Label11: TLabel;
    ALed8: TALed;
    Label14: TLabel;
    ALed9: TALed;
    Label16: TLabel;
    qProdutoCancelado: TQuery;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    Label18: TLabel;
    RxDBGrid10: TRxDBGrid;
    BitBtn2: TBitBtn;
    qProdutoCanceladoCodProduto: TIntegerField;
    qProdutoCanceladoCodCor: TIntegerField;
    qProdutoCanceladoTamanho: TStringField;
    qProdutoCanceladoCodCliente: TIntegerField;
    qCanceladoDet: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    StaticText1: TStaticText;
    dsqProdutoCancelado: TDataSource;
    dsqCanceladoDet: TDataSource;
    TabSheet9: TTabSheet;
    qProdutoFaturado: TQuery;
    RxDBGrid8: TRxDBGrid;
    Label17: TLabel;
    dsqProdutoFaturado: TDataSource;
    StaticText2: TStaticText;
    qFaturadoDet: TQuery;
    qFaturadoDetNumNota: TIntegerField;
    qFaturadoDetItem: TSmallintField;
    qFaturadoDetCodProduto: TIntegerField;
    qFaturadoDetCodCor: TIntegerField;
    qFaturadoDetUnidade: TStringField;
    qFaturadoDetQtd: TFloatField;
    qFaturadoDetVlrUnit: TFloatField;
    qFaturadoDetVlrTotal: TFloatField;
    qFaturadoDetBaseIcms: TFloatField;
    qFaturadoDetVlrIcms: TFloatField;
    qFaturadoDetVlrIpi: TFloatField;
    qFaturadoDetNatOper: TSmallintField;
    qFaturadoDetNumOC: TStringField;
    qFaturadoDetNumOS: TStringField;
    qFaturadoDetTamanho: TStringField;
    qFaturadoDetDtEmissao: TDateField;
    dsqFaturadoDet: TDataSource;
    qProdutoCanceladolkReferencia: TStringField;
    qProdutoCanceladolkNomeProduto: TStringField;
    qProdutoCanceladolkNomeCor: TStringField;
    qProdutoCanceladoQtd: TFloatField;
    qProdutoFaturadoCodProduto: TIntegerField;
    qProdutoFaturadoCodCor: TIntegerField;
    qProdutoFaturadoUnidade: TStringField;
    qProdutoFaturadoQtd: TFloatField;
    qProdutoFaturadoVlrTotal: TFloatField;
    qProdutoFaturadoVlrIcms: TFloatField;
    qProdutoFaturadoVlrIpi: TFloatField;
    qProdutoFaturadoTamanho: TStringField;
    qProdutoFaturadolkNomeProduto: TStringField;
    qProdutoFaturadolkReferencia: TStringField;
    qProdutoFaturadolkNomeCor: TStringField;
    qCanceladoDetQtdPares: TFloatField;
    qCanceladoDetDtEmissao: TDateField;
    qOrcamentolkNomeVendedor: TStringField;
    qPedidolkNomeVendedor: TStringField;
    tPedidoItemlkNomeProduto: TStringField;
    tPedidoItemlkReferencia: TStringField;
    tPedidoItemlkNomeCor: TStringField;
    qNotaFiscallkNomeVendedor: TStringField;
    tNotaFiscalItensNumNota: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensCodProduto: TIntegerField;
    tNotaFiscalItensCodCor: TIntegerField;
    tNotaFiscalItensClasFiscal: TStringField;
    tNotaFiscalItensUnidade: TStringField;
    tNotaFiscalItensQtd: TFloatField;
    tNotaFiscalItensIcms: TFloatField;
    tNotaFiscalItensIpi: TFloatField;
    tNotaFiscalItensSitTrib: TSmallintField;
    tNotaFiscalItensVlrUnit: TFloatField;
    tNotaFiscalItensVlrTotal: TFloatField;
    tNotaFiscalItensDesconto: TFloatField;
    tNotaFiscalItensVlrDesconto: TFloatField;
    tNotaFiscalItensBaseIcms: TFloatField;
    tNotaFiscalItensVlrIcms: TFloatField;
    tNotaFiscalItensVlrIpi: TFloatField;
    tNotaFiscalItensNatOper: TSmallintField;
    tNotaFiscalItensIcmsIpi: TBooleanField;
    tNotaFiscalItensNumPedido: TIntegerField;
    tNotaFiscalItensItemPedido: TIntegerField;
    tNotaFiscalItensDescricao: TStringField;
    tNotaFiscalItensReferencia: TStringField;
    tNotaFiscalItensComissaoMod: TFloatField;
    tNotaFiscalItensCodComissao: TIntegerField;
    tNotaFiscalItensCodGrade: TIntegerField;
    tNotaFiscalItensNumMovEst: TIntegerField;
    tNotaFiscalItensGeraDupl: TBooleanField;
    tNotaFiscalItensMaterial: TBooleanField;
    tNotaFiscalItensEstoque: TBooleanField;
    tNotaFiscalItensNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCodFornDev: TIntegerField;
    tNotaFiscalItensItemDev: TIntegerField;
    tNotaFiscalItensNumOC: TStringField;
    tNotaFiscalItensNumOS: TStringField;
    tNotaFiscalItensCodBarraRotulo: TStringField;
    tNotaFiscalItensVale: TBooleanField;
    tNotaFiscalItensPosicao: TIntegerField;
    tNotaFiscalItensTamanho: TStringField;
    tNotaFiscalItensPercComissao: TFloatField;
    tNotaFiscalItenslkCodSit: TStringField;
    tNotaFiscalItenslkCodNatOper: TStringField;
    tNotaFiscalItenslkNomeCor: TStringField;
    ALed10: TALed;
    Label19: TLabel;
    qPedidoCancelado: TBooleanField;
    ALed11: TALed;
    Label20: TLabel;
    ALed12: TALed;
    Label21: TLabel;
    qPedidoCanc: TQuery;
    qPedidoCancQtdPares: TFloatField;
    qPedidoCancReferencia: TStringField;
    qPedidoCancPedido: TIntegerField;
    qPedidoCancCodProduto: TIntegerField;
    qPedidoCancPedidoCliente: TStringField;
    qPedidoCancNomeProduto: TStringField;
    qPedidoCancCodCor: TIntegerField;
    qPedidoCancPreco: TFloatField;
    qPedidoCancVlrTotal: TFloatField;
    qPedidoCancDtEmbarque: TDateField;
    qPedidoCancDtEmissao: TDateField;
    qPedidoCancCodCliente: TIntegerField;
    qPedidoCancTamanho: TStringField;
    qPedidoCancCancelado: TBooleanField;
    dsqPedidoCanc: TDataSource;
    TabSheet10: TTabSheet;
    Label24: TLabel;
    DateEdit5: TDateEdit;
    Label25: TLabel;
    CurrencyEdit9: TCurrencyEdit;
    Label28: TLabel;
    CurrencyEdit12: TCurrencyEdit;
    Label27: TLabel;
    CurrencyEdit11: TCurrencyEdit;
    Label31: TLabel;
    CurrencyEdit15: TCurrencyEdit;
    CurrencyEdit16: TCurrencyEdit;
    Label32: TLabel;
    CurrencyEdit17: TCurrencyEdit;
    Bevel2: TBevel;
    Label30: TLabel;
    CurrencyEdit14: TCurrencyEdit;
    Label36: TLabel;
    CurrencyEdit21: TCurrencyEdit;
    Label26: TLabel;
    CurrencyEdit10: TCurrencyEdit;
    Label29: TLabel;
    CurrencyEdit13: TCurrencyEdit;
    Label35: TLabel;
    CurrencyEdit20: TCurrencyEdit;
    Label40: TLabel;
    CurrencyEdit24: TCurrencyEdit;
    Label6: TLabel;
    CurrencyEdit18: TCurrencyEdit;
    Label34: TLabel;
    CurrencyEdit19: TCurrencyEdit;
    Bevel3: TBevel;
    Label37: TLabel;
    CurrencyEdit22: TCurrencyEdit;
    Label38: TLabel;
    DateEdit6: TDateEdit;
    Label39: TLabel;
    CurrencyEdit23: TCurrencyEdit;
    qMaiorFatura: TQuery;
    qMaiorFaturaNumNota: TIntegerField;
    qMaiorFaturaDtGerado: TDateField;
    qMaiorFaturaVlrTotal: TFloatField;
    tCReceberParc: TTable;
    tCReceberParcNumCReceber: TIntegerField;
    tCReceberParcParcCReceber: TIntegerField;
    tCReceberParcVlrParcCReceber: TFloatField;
    tCReceberParcDtVencCReceber: TDateField;
    tCReceberParcQuitParcCReceber: TBooleanField;
    tCReceberParcJurosParcCReceber: TFloatField;
    tCReceberParcDtPagParcCReceber: TDateField;
    tCReceberParcCodCli: TIntegerField;
    tCReceberParcNumNota: TIntegerField;
    tCReceberParcDesconto: TFloatField;
    tCReceberParcPgtoParcial: TFloatField;
    tCReceberParcRestParcela: TFloatField;
    tCReceberParcContaDupl: TSmallintField;
    tCReceberParcSelecionado: TBooleanField;
    tCReceberParcCodVendedor: TIntegerField;
    tCReceberParcBaixada: TBooleanField;
    tCReceberParcPercComissao: TFloatField;
    tCReceberParcVlrComissao: TFloatField;
    tCReceberParcPlanoContas: TIntegerField;
    tCReceberParcAgencia: TStringField;
    tCReceberParcTitPortador: TStringField;
    tCReceberParcCodTipoCobranca: TIntegerField;
    tCReceberParcDespesas: TFloatField;
    tCReceberParcAbatimentos: TFloatField;
    tCReceberParcCodConta: TIntegerField;
    tCReceberParcPgCartorio: TBooleanField;
    tCReceberParcDiasAtraso: TFloatField;
    tCReceberParcLetraCambio: TBooleanField;
    tCReceberParcNroLancExtComissao: TIntegerField;
    tCReceberParcJurosPagos: TFloatField;
    tCReceberParcCancelado: TBooleanField;
    tCReceberParcTitProtestado: TBooleanField;
    tCReceberParcDtGerado: TDateField;
    tCReceberParcTipoDoc: TStringField;
    tCReceberParcVlrDevolucao: TFloatField;
    tCReceberParcArqGerado: TBooleanField;
    tCReceberParcTransferencia: TBooleanField;
    tCReceberParcNumTitBanco: TStringField;
    tCReceberParcVlrComissaoRestante: TFloatField;
    tCReceberParcComissaoItem: TBooleanField;
    tCReceberParcclDiasAtraso: TIntegerField;
    TabSheet11: TTabSheet;
    qProdutoPendente: TQuery;
    dsqProdutoPendente: TDataSource;
    qProdutoPendenteCodProduto: TIntegerField;
    qProdutoPendenteCodCor: TIntegerField;
    qProdutoPendenteTamanho: TStringField;
    qProdutoPendenteReferencia: TStringField;
    qProdutoPendenteNome: TStringField;
    qProdutoPendenteQtdParesRest: TFloatField;
    qProdutoPendenteUnidade: TStringField;
    qProdutoPendenteCodCliente: TIntegerField;
    qProdutoPendentelkNomeCor: TStringField;
    PageControl4: TPageControl;
    TabSheet12: TTabSheet;
    RxDBGrid11: TRxDBGrid;
    TabSheet13: TTabSheet;
    RxDBGrid12: TRxDBGrid;
    qProdutoPendDet: TQuery;
    dsqProdutoPendDet: TDataSource;
    qProdutoPendDetCodProduto: TIntegerField;
    qProdutoPendDetCodCor: TIntegerField;
    qProdutoPendDetTamanho: TStringField;
    qProdutoPendDetReferencia: TStringField;
    qProdutoPendDetNome: TStringField;
    qProdutoPendDetUnidade: TStringField;
    qProdutoPendDetCodCliente: TIntegerField;
    qProdutoPendDetQtdParesRest: TFloatField;
    qProdutoPendDetDtEmbarque: TDateField;
    qProdutoPendDetPedido: TIntegerField;
    qProdutoPendDetPedidoCliente: TStringField;
    qProdutoPendDetlkNomeCor: TStringField;
    RxLabel6: TRxLabel;
    Edit1: TEdit;
    BitBtn6: TBitBtn;
    tCReceberParcFilial: TIntegerField;
    RxLabel7: TRxLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qOrcamentoFilial: TIntegerField;
    tOrcamentoItensFilial: TIntegerField;
    qPedidoFilial: TIntegerField;
    tNotaFiscalItensFilial: TIntegerField;
    qNotaFiscalFilial: TIntegerField;
    qProdutoCanceladoFilial: TIntegerField;
    qCReceberPagasFilial: TIntegerField;
    qCReceberFilial: TIntegerField;
    qProdutoFaturadoFilial: TIntegerField;
    qFaturadoDetFilial: TIntegerField;
    qPedidoCancFilial: TIntegerField;
    qProdutoPendenteFilial: TIntegerField;
    qProdutoPendDetFilial: TIntegerField;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tPedidoItemCancelado: TBooleanField;
    tPedidoItemCopiado: TBooleanField;
    tPedidoItemQtdParesCanc: TFloatField;
    tPedidoItemVlrDesconto: TFloatField;
    tPedidoItemSitTrib: TSmallintField;
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoItemObsLote: TStringField;
    tPedidoItemNumOS: TStringField;
    tPedidoItemDtEmbarque: TDateField;
    tPedidoItemCodCia: TIntegerField;
    tPedidoItemDtReprogramacao: TDateField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tPedidoItemFabrica: TStringField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoItemProducaoVenda: TStringField;
    tPedidoItemPosicao: TIntegerField;
    tPedidoItemTamanho: TStringField;
    tPedidoItemPercComissao: TFloatField;
    tPedidoItemUnidade: TStringField;
    tPedidoItemTalaoGerado: TBooleanField;
    tPedidoItemPercComissao2: TFloatField;
    tPedidoItemObsTalao: TStringField;
    tPedidoItemLargura: TStringField;
    tPedidoItemMateriaPrima: TBooleanField;
    tPedidoItemAmostraEntregue: TBooleanField;
    tPedidoItemDtEntregaAmostra: TDateField;
    tPedidoItemHrEntregaAmostra: TTimeField;
    tPedidoItemPlano: TStringField;
    tNotaFiscalItensNumSeq: TIntegerField;
    qNotaFiscalNumSeq: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid10DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid8DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid9GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid7GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure tCReceberParcCalcFields(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure SQL_Orcamento;
    procedure SQL_Pedido;
    procedure SQL_NotaFiscal;
    procedure SQL_CReceberPagas;
    procedure SQL_CReceber;
    procedure SQL_ProdutoCancelado;
    procedure SQL_ProdutoFaturado;
    procedure SQL_ProdutoPendente;
    procedure SQL_ProdutoPendDet;
  public
    { Public declarations }
  end;

var
  fConsHistCliente: TfConsHistCliente;

implementation

uses UDM1, UConsHistClienteProdCancelado, URelHistCliente;

{$R *.DFM}

procedure TfConsHistCliente.SQL_Orcamento;
begin
  qOrcamento.Close;
  qOrcamento.SQL.Clear;
  qOrcamento.SQL.Add('SELECT Filial, NumOrcamento, Data, CodCliente, NomeCliente, NomeContato, CodVendedor, EMail, Aprovado');
  qOrcamento.SQL.Add('FROM "dbOrcamento.DB" Dborcamento');
  qOrcamento.SQL.Add('WHERE (CodCliente = :CodCliente)');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qOrcamento.SQL.Add('  AND (Filial = :Filial)');
      qOrcamento.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qOrcamento.SQL.Add(' AND (Data >= :DataI) ');
      qOrcamento.ParamByName('DataI').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qOrcamento.SQL.Add(' AND (Data <= :DataI) ');
      qOrcamento.ParamByName('DataI').AsDate := DateEdit2.Date;
    end;
  qOrcamento.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qOrcamento.SQL.ADD('ORDER BY Data');
  qOrcamento.Open;
  RxDBGrid2.DataSource := dsOrcamentoItens;
  DBEdit6.DataSource   := dsOrcamentoItens;
end;

procedure TfConsHistCliente.SQL_Pedido;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT Filial, Pedido, DtEmissao, CodCliente, CodVendedor, PercComissao, CodNatOper, QtdPares, QtdParesCanc, QtdParesFat, QtdParesRest, PedidoCliente, Usuario, DtCad, HrCad, Cancelado');
  qPedido.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('WHERE (CodCliente = :CodCliente) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedido.SQL.Add(' AND (Filial = :Filial) ');
      qPedido.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 1 then
    begin
      qPedido.SQL.Add(' AND (DtEmissao >= :DataI');
      qPedido.ParamByName('DataI').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 1 then
    begin
      qPedido.SQL.Add(' AND (DtEmissao <= :DataF');
      qPedido.ParamByName('DataF').AsDate := DateEdit2.Date;
    end;
  qPedido.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qPedido.SQL.ADD('ORDER BY DtEmissao');
  qPedido.Open;
  RxDBGrid4.DataSource := dsPedidoItem;
end;

procedure TfConsHistCliente.SQL_NotaFiscal;
begin
  qNotaFiscal.Close;
  qNotaFiscal.SQL.Clear;
  qNotaFiscal.SQL.Add('SELECT Filial, NumNota, DtEmissao, CodNatOper, CodCli, CodVendedor, BaseIcms, VlrIcms, VlrTotalNota, VlrTotalItens,');
  qNotaFiscal.SQL.Add(' VlrIpi, VlrTotalDesc, VlrSeguro, VlrFrete, OutrasDesp, PesoBruto, PesoLiquido, Cancelada, Usuario, DtCad, HrCad, VlrTotalDupl, NumSeq');
  qNotaFiscal.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qNotaFiscal.SQL.Add('WHERE (CodCli = :CodCliente) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qNotaFiscal.SQL.Add('  AND (Filial = :Filial)');
      qNotaFiscal.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 1 then
    begin
      qNotaFiscal.SQL.Add(' AND DtEmissao >= :DataI');
      qNotaFiscal.ParamByName('DataI').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 1 then
    begin
      qNotaFiscal.SQL.Add(' AND DtEmissao <= :DataI');
      qNotaFiscal.ParamByName('DataI').AsDate := DateEdit2.Date;
    end;
  qNotaFiscal.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qNotaFiscal.SQL.ADD('ORDER BY NumNota');
  qNotaFiscal.Open;
  RxDBGrid6.DataSource := dsNotaFiscalItens;
end;

procedure TfConsHistCliente.SQL_CReceberPagas;
begin
  qCReceberPagas.Close;
  qCReceberPagas.SQL.Clear;
  qCReceberPagas.SQL.Add('SELECT Dbcreceberparchist.Filial, Dbcreceberparchist.NumCReceber, Dbcreceberparchist.ParcCReceber, Dbcreceberparchist.VlrUltPgto, Dbcreceberparchist.Pgto, ');
  qCReceberPagas.SQL.Add('Dbcreceberparchist.Devolucao, Dbcreceberparchist.DtUltPgto, Dbcreceberparchist.Historico, Dbcreceberparc.DtVencCReceber, Dbcreceberparc.VlrParcCReceber, ');
  qCReceberPagas.SQL.Add('Dbcreceberparc.CodCli, Dbcreceberparc.NumNota');
  qCReceberPagas.SQL.Add('FROM "dbCReceberParcHist.DB" Dbcreceberparchist');
  qCReceberPagas.SQL.Add('   INNER JOIN "dbCReceberParc.DB" Dbcreceberparc');
  qCReceberPagas.SQL.Add('   ON  (Dbcreceberparchist.NumCReceber = Dbcreceberparc.NumCReceber)');
  qCReceberPagas.SQL.Add('   AND  (Dbcreceberparchist.ParcCReceber = Dbcreceberparc.ParcCReceber)');
  qCReceberPagas.SQL.Add('WHERE (CodCli = :CodCliente) and ((Dbcreceberparchist.Pgto = True) or (Dbcreceberparchist.Devolucao = True)) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qCReceberPagas.SQL.Add('  AND (Dbcreceberparc.Filial = :Filial)');
      qCReceberPagas.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit3.Date > 0 then
    begin
      qCReceberPagas.SQL.Add(' AND DtUltPgto >= :DataI');
      qCReceberPagas.ParamByName('DataI').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qCReceberPagas.SQL.Add(' AND DtUltPgto <= :DataI');
      qCReceberPagas.ParamByName('DataI').AsDate := DateEdit4.Date;
    end;
  qCReceberPagas.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qCReceberPagas.SQL.ADD('ORDER BY DtUltPgto');
  qCReceberPagas.Open;
end;

procedure TfConsHistCliente.SQL_CReceber;
begin
  qCReceber.Close;
  qCReceber.SQL.Clear;
  qCReceber.SQL.Add('SELECT Filial, NumCReceber, ParcCReceber, VlrParcCReceber, DtPagParcCReceber, CodCli, NumNota, PgtoParcial, RestParcela, DtGerado, NumTitBanco, DtVencCReceber, QuitParcCReceber, Cancelado');
  qCReceber.SQL.Add('FROM "dbCReceberParc.DB" Dbcreceberparc');
  qCReceber.SQL.Add('WHERE (CodCli = :CodCliente) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qCReceber.SQL.Add('  AND (Dbcreceberparc.Filial = :Filial)');
      qCReceber.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit3.Date > 0 then
    begin
      qCReceber.SQL.Add(' AND DtVencCReceber >= :DataI');
      qCReceber.ParamByName('DataI').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qCReceber.SQL.Add(' AND DtVencCReceber <= :DataI');
      qCReceber.ParamByName('DataI').AsDate := DateEdit4.Date;
    end;
  qCReceber.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qCReceber.SQL.ADD('ORDER BY DtVencCReceber');
  qCReceber.Open;
end;

procedure TfConsHistCliente.SQL_ProdutoCancelado;
begin
  qProdutoCancelado.Close;
  qProdutoCancelado.SQL.Clear;
  qProdutoCancelado.SQL.Add('SELECT DbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Tamanho, Sum(Dbpedidoitem.QtdPares) Qtd, Dbpedido.CodCliente');
  qProdutoCancelado.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qProdutoCancelado.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
  qProdutoCancelado.SQL.Add('   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)');
  qProdutoCancelado.SQL.Add('WHERE (Dbpedido.CodCliente = :CodCliente) And (DbpedidoItem.Cancelado = True) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qProdutoCancelado.SQL.Add('  AND (Dbpedido.Filial = :Filial)');
      qProdutoCancelado.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qProdutoCancelado.SQL.Add('GROUP BY DbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Tamanho, Dbpedido.CodCliente');
  qProdutoCancelado.SQL.ADD('ORDER BY Qtd');
  qProdutoCancelado.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qProdutoCancelado.Open;
end;

procedure TfConsHistCliente.SQL_ProdutoFaturado;
begin
  qProdutoFaturado.Close;
  qProdutoFaturado.SQL.Clear;
  qProdutoFaturado.SQL.Add('SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, SUM( Dbnotafiscalitens.Qtd ) Qtd,');
  qProdutoFaturado.SQL.Add(' SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, SUM( Dbnotafiscalitens.VlrIcms ) VlrIcms, SUM( Dbnotafiscalitens.VlrIpi ) VlrIpi, Dbnotafiscalitens.Tamanho');
  qProdutoFaturado.SQL.Add('FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qProdutoFaturado.SQL.Add('   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal');
  qProdutoFaturado.SQL.Add('   ON  (Dbnotafiscalitens.NumNota = Dbnotafiscal.NumNota)');
  qProdutoFaturado.SQL.Add('WHERE (dbnotafiscal.CodCli = :CodCliente) And ((Dbnotafiscal.Cancelada = False) or (Dbnotafiscal.Cancelada is Null)) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qProdutoFaturado.SQL.Add('  AND (dbnotafiscal.Filial = :Filial)');
      qProdutoFaturado.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qProdutoFaturado.SQL.Add('GROUP BY Dbnotafiscalitens.Filial, Dbnotafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Tamanho');
  qProdutoFaturado.SQL.ADD('ORDER BY Qtd');
  qProdutoFaturado.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qProdutoFaturado.Open;
end;

procedure TfConsHistCliente.SQL_ProdutoPendente;
begin
  qProdutoPendente.Close;
  qProdutoPendente.SQL.Clear;
  qProdutoPendente.SQL.Add('SELECT Dbpedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Tamanho, Dbproduto.Referencia, ');
  qProdutoPendente.SQL.Add(' Dbproduto.Nome, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, Dbproduto.Unidade, dbpedido.Codcliente');
  qProdutoPendente.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qProdutoPendente.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qProdutoPendente.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qProdutoPendente.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
  qProdutoPendente.SQL.Add('   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)');
  qProdutoPendente.SQL.Add('WHERE  (Dbpedidoitem.QtdParesRest > 0) and (dbPedido.CodCliente = :CodCliente) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qProdutoPendente.SQL.Add('  AND (dbPedido.Filial = :Filial)');
      qProdutoPendente.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qProdutoPendente.SQL.Add('GROUP BY Dbpedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Tamanho, Dbproduto.Referencia, Dbproduto.Nome, Dbproduto.Unidade, dbpedido.Codcliente');
  qProdutoPendente.SQL.Add('ORDER BY Dbproduto.Referencia, Dbpedidoitem.Tamanho, Dbpedidoitem.CodCor');
  qProdutoPendente.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qProdutoPendente.Open;
end;

procedure TfConsHistCliente.SQL_ProdutoPendDet;
begin
  qProdutoPendDet.Close;
  qProdutoPendDet.SQL.Clear;
  qProdutoPendDet.SQL.Add('SELECT Dbpedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Tamanho, Dbproduto.Referencia, Dbproduto.Nome, Dbproduto.Unidade');
  qProdutoPendDet.SQL.Add(', Dbpedido.CodCliente, Dbpedidoitem.QtdParesRest, Dbpedidoitem.DtEmbarque, Dbpedido.Pedido, Dbpedido.PedidoCliente');
  qProdutoPendDet.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
  qProdutoPendDet.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qProdutoPendDet.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qProdutoPendDet.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
  qProdutoPendDet.SQL.Add('   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)');
  qProdutoPendDet.SQL.Add('WHERE  (Dbpedidoitem.QtdParesRest > 0) and (dbPedido.CodCliente = :CodCliente) ');
  qProdutoPendDet.SQL.Add('ORDER BY  Dbpedidoitem.DtEmbarque,  Dbproduto.Referencia, Dbpedidoitem.Tamanho');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qProdutoPendDet.SQL.Add('  AND (dbPedido.Filial = :Filial)');
      qProdutoPendDet.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qProdutoPendDet.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qProdutoPendDet.Open;
end;

procedure TfConsHistCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tCReceberParc.Close;
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  DM1.tCor.Close;
  DM1.tVendedor.Close;
  DM1.tSitTributaria.Close;
  DM1.tNatOperacao.Close;

  qOrcamento.Close;
  qPedido.Close;
  qNotaFiscal.Close;
  qCReceberPagas.Close;
  qCReceber.Close;
  qProdutoCancelado.Close;
  qCanceladoDet.Close;
  qProdutoFaturado.Close;
  qFaturadoDet.Close;
  qProdutoPendente.Open;
  Action := Cafree;
end;

procedure TfConsHistCliente.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsHistCliente.RxDBLookupCombo1Change(Sender: TObject);
begin
  qOrcamento.Close;
  qPedido.Close;
  qNotaFiscal.Close;
  qCReceberPagas.Close;
  qCReceber.Close;
  qProdutoCancelado.Close;
  qCanceladoDet.Close;
  qProdutoFaturado.Close;
  qFaturadoDet.Close;
  RxDBGrid2.DataSource := nil;
  RxDBGrid4.DataSource := nil;
  RxDBGrid6.DataSource := nil;
  if RxDBLookupCombo1.Text <> '' then
    begin
      if (DBEdit1.DataSource <> DM1.dsCliente) then
        begin
          DBEdit1.DataSource := DM1.dsCliente;
          DBEdit2.DataSource := DM1.dsCliente;
          DBEdit3.DataSource := DM1.dsCliente;
          DBEdit4.DataSource := DM1.dsCliente;
          DBEdit5.DataSource := DM1.dsCliente;
        end;
    end
  else
    begin
      DBEdit1.DataSource := nil;
      DBEdit2.DataSource := nil;
      DBEdit3.DataSource := nil;
      DBEdit4.DataSource := nil;
      DBEdit5.DataSource := nil;
    end;
end;

procedure TfConsHistCliente.BitBtn3Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      SQL_Orcamento;
      SQL_Pedido;
      SQL_NotaFiscal;
    end
  else
    ShowMessage('Falta infomar o cliente ou filial!');
end;

procedure TfConsHistCliente.BitBtn1Click(Sender: TObject);
var
  vAux : Real;
  vQtdAtraso, vDiasAtraso : Integer;
  vVlrTotal, vVlrAbatimento, vVlrRestante, vVlrRestAtraso, vVlrDevolucao, vVlrCancelado, vVlrPago, vVlrPagoAtraso : Real;
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      SQL_CReceberPagas;
      SQL_CReceber;
      //*** Outras informações
      //*** Maior Fatura
      qMaiorFatura.Close;
      qMaiorFatura.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qMaiorFatura.Params[1].AsInteger := RxDBLookupCombo2.KeyValue;
      qMaiorFatura.Open;
      qMaiorFatura.Last;
      CurrencyEdit22.Value     := qMaiorFaturaVlrTotal.AsFloat;
      DateEdit6.Date           := qMaiorFaturaDtGerado.AsDateTime;
      CurrencyEdit23.AsInteger := qMaiorFaturaNumNota.AsInteger;
      //*****************
      tCReceberParc.Open;
      tCReceberParc.Filtered        := False;
      tCReceberParc.Filter          := 'CodCli = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
      tCReceberParc.Filtered        := True;

      vQtdAtraso     := 0;
      vDiasAtraso    := 0;
      vVlrTotal      := 0;
      vVlrAbatimento := 0;
      vVlrRestante   := 0;
      vVlrRestAtraso := 0;
      vVlrDevolucao  := 0;
      vVlrCancelado  := 0;
      vVlrPago       := 0;
      vVlrPagoAtraso := 0;
      tCReceberParc.First;
      while not tCReceberParc.Eof do
        begin
          vVlrTotal := vVlrTotal + tCReceberParcVlrParcCReceber.AsFloat;
          vVlrAbatimento := vVlrAbatimento + tCReceberParcAbatimentos.AsFloat;
          vVlrRestante := vVlrRestante + tCReceberParcRestParcela.AsFloat;
          if tCReceberParcclDiasAtraso.AsInteger > 0 then
            vVlrRestAtraso := vVlrRestAtraso + tCReceberParcRestParcela.AsFloat;
          vVlrDevolucao := vVlrDevolucao + tCReceberParcVlrDevolucao.AsFloat;
          if tCReceberParcCancelado.AsBoolean then
            vVlrCancelado := vVlrCancelado + tCReceberParcVlrParcCReceber.AsFloat;
          vVlrPago := vVlrPago + tCReceberParcPgtoParcial.AsFloat;
          if tCReceberParcQuitParcCReceber.AsBoolean then
            begin
              if tCReceberParcDiasAtraso.AsInteger > 0 then
                begin
                  vVlrPagoAtraso := vVlrPagoAtraso + tCReceberParcPgtoParcial.AsFloat;
                  inc(vQtdAtraso);
                  vDiasAtraso := vDiasAtraso + tCReceberParcDiasAtraso.AsInteger;
                  if tCReceberParcDiasAtraso.AsInteger > CurrencyEdit9.AsInteger then
                    begin
                      DateEdit5.Date := tCReceberParcDtVencCReceber.AsDateTime;
                      CurrencyEdit9.AsInteger := tCReceberParcDiasAtraso.AsInteger;
                      CurrencyEdit12.Value := tCReceberParcVlrParcCReceber.AsFloat;
                      CurrencyEdit15.AsInteger := tCReceberParcNumNota.AsInteger;
                      CurrencyEdit16.AsInteger := tCReceberParcParcCReceber.AsInteger;
                    end;
                end;
            end;
          tCReceberParc.Next;
        end;
      vAux := 0;
      if (vDiasAtraso > 0) and (vQtdAtraso > 0) then
        vAux := vDiasAtraso / vQtdAtraso;
      if vAux < 1 then
        vAux := 0;
      CurrencyEdit17.Value     := vAux;
      CurrencyEdit11.AsInteger := vQtdAtraso;
      CurrencyEdit14.Value     := vVlrTotal;
      CurrencyEdit21.Value     := vVlrAbatimento;
      CurrencyEdit10.Value     := vVlrRestante;
      CurrencyEdit13.Value     := vVlrRestAtraso;
      CurrencyEdit20.Value     := vVlrDevolucao;
      CurrencyEdit24.Value     := vVlrCancelado;
      CurrencyEdit18.Value     := vVlrPago;
      CurrencyEdit19.Value     := vVlrPagoAtraso;
    end;
end;

procedure TfConsHistCliente.TabSheet4Show(Sender: TObject);
begin
  DateEdit3.Date := DateEdit1.Date;
  DateEdit4.Date := DateEdit2.Date;
end;

procedure TfConsHistCliente.BitBtn2Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      SQL_ProdutoCancelado;
      SQL_ProdutoFaturado;
      SQL_ProdutoPendente;
      SQL_ProdutoPendDet;
    end;
end;

procedure TfConsHistCliente.RxDBGrid10DblClick(Sender: TObject);
begin
  if qProdutoCanceladoCodProduto.AsInteger > 0 then
    begin
      qCanceladoDet.Close;
      qCanceladoDet.SQL.Clear;
      qCanceladoDet.SQL.Add('SELECT Dbpedido.Filial, Dbpedidoitem.Pedido, Dbpedidoitem.Item, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Tamanho,');
      qCanceladoDet.SQL.Add(' Dbpedidoitem.DtEmbarque, Dbpedido.PedidoCliente, Dbpedidoitem.QtdPares, Dbpedido.DtEmissao');
      qCanceladoDet.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
      qCanceladoDet.SQL.Add('  INNER JOIN "dbPedido.DB" Dbpedido');
      qCanceladoDet.SQL.Add('  ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)');
      qCanceladoDet.SQL.Add('WHERE   (Dbpedido.CodCliente = :CodCliente)');
      qCanceladoDet.SQL.Add(' AND  (Dbpedidoitem.CodProduto = :CodProduto)');
      qCanceladoDet.SQL.Add(' AND  (Dbpedidoitem.Cancelado = TRUE)');
      qCanceladoDet.SQL.Add(' AND  (Dbpedido.Filial = :Filial)');
      if qProdutoCanceladoCodCor.AsInteger > 0 then
        begin
          qCanceladoDet.SQL.Add(' AND  (Dbpedidoitem.CodCor = :CodCor)');
          qCanceladoDet.ParamByName('CodCor').AsInteger := qProdutoCanceladoCodCor.AsInteger;
        end;
      if qProdutoCanceladoTamanho.AsString <> '' then
        begin
          qCanceladoDet.SQL.Add('AND  (Dbpedidoitem.Tamanho = :Tamanho)');
          qCanceladoDet.ParamByName('Tamanho').AsString := qProdutoCanceladoTamanho.AsString;
        end;
      qCanceladoDet.ParamByName('CodProduto').AsInteger := qProdutoCanceladoCodProduto.AsInteger;
      qCanceladoDet.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
      qCanceladoDet.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
      qCanceladoDet.Open;
      fConsHistClienteProdCancelado := TfConsHistClienteProdCancelado.Create(Self);
      fConsHistClienteProdCancelado.TabSheet1.TabVisible := True;
      fConsHistClienteProdCancelado.TabSheet2.TabVisible := False;
      fConsHistClienteProdCancelado.ShowModal;
    end;
end;

procedure TfConsHistCliente.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tCor.Open;
  DM1.tVendedor.Open;
  DM1.tSitTributaria.Open;
  DM1.tNatOperacao.Open;
end;

procedure TfConsHistCliente.RxDBGrid8DblClick(Sender: TObject);
begin
  if qProdutoFaturadoCodProduto.AsInteger > 0 then
    begin
      qFaturadoDet.Close;
      qFaturadoDet.SQL.Clear;
      qFaturadoDet.SQL.Add('SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumNota, Dbnotafiscalitens.Item, Dbnotafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd,');
      qFaturadoDet.SQL.Add(' Dbnotafiscalitens.VlrUnit, Dbnotafiscalitens.VlrTotal, Dbnotafiscalitens.BaseIcms, Dbnotafiscalitens.VlrIcms, Dbnotafiscalitens.VlrIpi, Dbnotafiscalitens.NatOper,');
      qFaturadoDet.SQL.Add(' Dbnotafiscalitens.NumOC, Dbnotafiscalitens.NumOS, Dbnotafiscalitens.Tamanho, Dbnotafiscal.DtEmissao');
      qFaturadoDet.SQL.Add('FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens');
      qFaturadoDet.SQL.Add('   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal');
      qFaturadoDet.SQL.Add('   ON  (Dbnotafiscalitens.NumNota = Dbnotafiscal.NumNota)');
      qFaturadoDet.SQL.Add('WHERE   (Dbnotafiscal.CodCli = :CodCliente)');
      qFaturadoDet.SQL.Add(' AND  (Dbnotafiscalitens.CodProduto = :CodProduto)');
      qFaturadoDet.SQL.Add(' AND ((dbNotafiscal.cancelada = False) or (dbNotafiscal.cancelada is NULL)) and (Dbnotafiscalitens.Filial = :Filial)');
      if qProdutoFaturadoCodCor.AsInteger > 0 then
        begin
          qFaturadoDet.SQL.Add(' AND  (DbNotafiscalitens.CodCor = :CodCor)');
          qFaturadoDet.ParamByName('CodCor').AsInteger := qProdutoFaturadoCodCor.AsInteger;
        end;
      if qProdutoFaturadoTamanho.AsString <> '' then
        begin
          qFaturadoDet.SQL.Add('AND  (dbnotafiscalitens.Tamanho = :Tamanho)');
          qFaturadoDet.ParamByName('Tamanho').AsString := qProdutoFaturadoTamanho.AsString;
        end;
      qFaturadoDet.ParamByName('CodProduto').AsInteger := qProdutoFaturadoCodProduto.AsInteger;
      qFaturadoDet.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
      qFaturadoDet.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
      qFaturadoDet.Open;
      fConsHistClienteProdCancelado := TfConsHistClienteProdCancelado.Create(Self);
      fConsHistClienteProdCancelado.TabSheet1.TabVisible := False;
      fConsHistClienteProdCancelado.TabSheet2.TabVisible := True;
      fConsHistClienteProdCancelado.ShowModal;
    end;
end;

procedure TfConsHistCliente.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qOrcamentoAprovado.AsString = 'A' then
    begin
      Background  := clTeal;
      AFont.Color := clWindowText;
    end
  else
  if qOrcamentoAprovado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end
  else
  if qOrcamentoAprovado.AsString = 'L' then
    begin
      Background  := clAqua;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tOrcamentoItensAprovado.AsString = 'A' then
    begin
      Background  := clTeal;
      AFont.Color := clWindowText;
    end
  else
  if DM1.tOrcamentoItensAprovado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.RxDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qNotaFiscalCancelada.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.RxDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qPedidoCancelado.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end
  else
  if qPedidoQtdParesRest.AsFloat <= 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.RxDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tPedidoItemCancelado.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end
  else
  if tPedidoItemQtdParesRest.AsFloat <= 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.RxDBGrid9GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qCReceberCancelado.AsBoolean then
    begin
      Background  := $00C080FF;
      AFont.Color := clWindowText;
    end
  else
  if qCReceberQuitParcCReceber.AsBoolean then
    begin
      Background  := clTeal;
      AFont.Color := clWindowText;
    end
  else
  if qCReceberDtVencCReceber.AsDateTime < Date then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.RxDBGrid7GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qCReceberPagasDevolucao.AsBoolean then
    begin
      Background  := clAqua;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsHistCliente.tCReceberParcCalcFields(DataSet: TDataSet);
begin
  if not tCReceberParcQuitParcCReceber.AsBoolean then
    begin
      tCReceberParcclDiasAtraso.AsFloat := Date - tCReceberParcDtVencCReceber.AsDateTime;
      if tCReceberParcclDiasAtraso.AsFloat <= 0 then
        tCReceberParcclDiasAtraso.AsFloat := 0;
    end
  else
    begin
      tCReceberParcclDiasAtraso.AsFloat := tCReceberParcDtPagParcCReceber.AsDateTime - tCReceberParcDtVencCReceber.AsDateTime;
      if tCReceberParcclDiasAtraso.AsFloat <= 0 then
        tCReceberParcclDiasAtraso.AsFloat := 0;
    end;
end;

procedure TfConsHistCliente.Edit1Change(Sender: TObject);
begin
  if qPedido.Active then
    begin
      if Edit1.Text <> '' then
        qPedido.Locate('PedidoCliente',Edit1.Text,[loCaseInsensitive])
      else
        qPedido.First;
    end;
end;

procedure TfConsHistCliente.BitBtn6Click(Sender: TObject);
begin
  fRelHistCliente := TfRelHistCliente.Create(Self);
  if PageControl3.ActivePage = TabSheet8 then
    begin
      fRelHistCliente.QuickRep1.Preview;
      fRelHistCliente.QuickRep1.Free;
    end;
  if PageControl3.ActivePage = TabSheet9 then
    begin
      fRelHistCliente.QuickRep2.Preview;
      fRelHistCliente.QuickRep2.Free;
    end;
  if (PageControl3.ActivePage = TabSheet11) and (PageControl4.ActivePage = TabSheet12) then
    begin
      fRelHistCliente.QuickRep3.Preview;
      fRelHistCliente.QuickRep3.Free;
    end;
  if (PageControl3.ActivePage = TabSheet11) and (PageControl4.ActivePage = TabSheet13) then
    begin
      fRelHistCliente.QuickRep4.Preview;
      fRelHistCliente.QuickRep4.Free;
    end;
end;

end.


