unit UMenuP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus, StdCtrls, DBCtrls, ExtCtrls, Db, DBTables, DBIProcs,
  Buttons, RXCtrls, jpeg, rsDataSetError, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, ShellApi, RLConsts;

type
  TfMenuP = class(TForm)
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Bevel1: TBevel;
    RxSpeedButton1: TRxSpeedButton;
    RxSpeedButton2: TRxSpeedButton;
    RxSpeedButton3: TRxSpeedButton;
    RxSpeedButton4: TRxSpeedButton;
    RxSpeedButton5: TRxSpeedButton;
    RxSpeedButton6: TRxSpeedButton;
    RxSpeedButton7: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Grupo2: TMenuItem;
    Clientes3: TMenuItem;
    Grades1: TMenuItem;
    Cor2: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Impressoras2: TMenuItem;
    Transportadoras2: TMenuItem;
    ClassificaoFiscal2: TMenuItem;
    SituaoTributria2: TMenuItem;
    NaturezadeOperao2: TMenuItem;
    EstadoseAlqotas2: TMenuItem;
    Relatrios6: TMenuItem;
    Clientes4: TMenuItem;
    Vendedores4: TMenuItem;
    PopupMenu2: TPopupMenu;
    OrdemdeCompra2: TMenuItem;
    Relatrios7: TMenuItem;
    Fornecedores4: TMenuItem;
    Materiais4: TMenuItem;
    PopupMenu3: TPopupMenu;
    Pedido2: TMenuItem;
    Setor2: TMenuItem;
    Relatrios8: TMenuItem;
    PopupMenu4: TPopupMenu;
    NotasFiscais2: TMenuItem;
    PopupMenu5: TPopupMenu;
    LancaCtasaReceber1: TMenuItem;
    TipodeCobranas1: TMenuItem;
    Relatrios9: TMenuItem;
    Duplicatas2: TMenuItem;
    PopupMenu6: TPopupMenu;
    LanaCtasaPagar1: TMenuItem;
    PopupMenu7: TPopupMenu;
    RxSpeedButton9: TRxSpeedButton;
    Contas3: TMenuItem;
    PlanodeContas2: TMenuItem;
    Movimentos2: TMenuItem;
    Relatrios10: TMenuItem;
    Contas4: TMenuItem;
    Relatrios11: TMenuItem;
    Notasemitidasporvendedor1: TMenuItem;
    Juros1: TMenuItem;
    Notasemitidaspornaturezadeoperao1: TMenuItem;
    RegiesdeVendas2: TMenuItem;
    tEmpresa: TTable;
    tEmpresaEmpresa: TStringField;
    tEmpresaEndereco: TStringField;
    tEmpresaBairro: TStringField;
    tEmpresaCep: TStringField;
    tEmpresaCidade: TStringField;
    tEmpresaEstado: TStringField;
    tEmpresaTel: TStringField;
    tEmpresaTel2: TStringField;
    tEmpresaFax: TStringField;
    tEmpresaCgc: TStringField;
    tEmpresaInscr: TStringField;
    tEmpresaCodigo: TSmallintField;
    tEmpresaAutorizacao: TStringField;
    tEmpresaData: TDateField;
    Parametros1: TMenuItem;
    Pedidosnofaturados1: TMenuItem;
    BaixaPedidos1: TMenuItem;
    EtiquetasClientes1: TMenuItem;
    EtiquetasVendedores1: TMenuItem;
    RxSpeedButton8: TRxSpeedButton;
    PopupMenu8: TPopupMenu;
    N1Vendedor1: TMenuItem;
    Comisso2: TMenuItem;
    LanamentodeComisses1: TMenuItem;
    Relatrios13: TMenuItem;
    ExtratodeVendedoresNotas1: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N16: TMenuItem;
    N4Relatrios1: TMenuItem;
    N1ContasPagar1: TMenuItem;
    N2Histricos2: TMenuItem;
    N6AReceberporCliente1: TMenuItem;
    N3APagarporFornecedores1: TMenuItem;
    N4PagamentodeJuros2: TMenuItem;
    N5EtiquetasFornecedores1: TMenuItem;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    ObsAuxiliar1: TMenuItem;
    ALogin1: TMenuItem;
    N3NotadeCompra1: TMenuItem;
    N1Atividades2: TMenuItem;
    N3Indexador2: TMenuItem;
    N3ConsultadeFornecpAtividade2: TMenuItem;
    N4MateriaisAbaixodoMnimo2: TMenuItem;
    N3ConsultadeEstoquedeMateriais2: TMenuItem;
    N5HistricodoMaterial1: TMenuItem;
    ModeObra1: TMenuItem;
    PedidoEspecial1: TMenuItem;
    N7NotadeEntrada1: TMenuItem;
    N2Cidades2: TMenuItem;
    DctodeEntradaeSadadoEstoque1: TMenuItem;
    N1AgendaTelefnica1: TMenuItem;
    N1CpiasdeDuplicatas1: TMenuItem;
    N8BalancodoEstoque1: TMenuItem;
    N9OrdensdeCompra1: TMenuItem;
    N9Funcionrios1: TMenuItem;
    N2EmbarqueDirio1: TMenuItem;
    N8Programao1: TMenuItem;
    NTabeladePreo1: TMenuItem;
    N1ControledeFaturamento1: TMenuItem;
    OAgendadeContatos1: TMenuItem;
    N1: TMenuItem;
    N3GeraSintegra1: TMenuItem;
    N7Cheque1: TMenuItem;
    N2Cheques1: TMenuItem;
    N4ConsultaHistricoMaterial1: TMenuItem;
    N5ControleFornecedores1: TMenuItem;
    COramento1: TMenuItem;
    N3ContasaReceberporSemana1: TMenuItem;
    N3ContasaPagarporSemana1: TMenuItem;
    N8Produtos1: TMenuItem;
    BaixaTalo1: TMenuItem;
    Vale1: TMenuItem;
    Vale3: TMenuItem;
    ClienteHistrico1: TMenuItem;
    N3PlanodeContas1: TMenuItem;
    Filial1: TMenuItem;
    PrevisodeComisso1: TMenuItem;
    Feriado1: TMenuItem;
    ProdutosFaturadosporPerodo2: TMenuItem;
    StaticText1: TStaticText;
    Image1: TImage;
    ConsultaSituaodosPedidos1: TMenuItem;
    ConsultaNotasdeBeneficiamento1: TMenuItem;
    PedidosemCarteira1: TMenuItem;
    PedidosemCarteiraValor1: TMenuItem;
    AcumuladoporProduto1: TMenuItem;
    ConsultaNotasEmbalagem1: TMenuItem;
    ConsultaProduto1: TMenuItem;
    HistricodoProduto1: TMenuItem;
    N18: TMenuItem;
    HistricoGeral1: TMenuItem;
    GrupoCliente1: TMenuItem;
    ConsultaRelatrioClientesporProduto1: TMenuItem;
    ConsultaNotaspedidos1: TMenuItem;
    N23: TMenuItem;
    GeraodosLotes1: TMenuItem;
    ConsultaLote1: TMenuItem;
    N24: TMenuItem;
    ConsultaLotesPendentesFaturamento1: TMenuItem;
    ConsultaMaterialnaFichaTcnica1: TMenuItem;
    Unidade1: TMenuItem;
    CadastroGeralTipoProdutoTipoMaterial1: TMenuItem;
    N29: TMenuItem;
    N2: TMenuItem;
    ConsultaContasaReceber1: TMenuItem;
    N9: TMenuItem;
    EmbarqueDirioLote1: TMenuItem;
    ContasaPagarNovo1: TMenuItem;
    Impostos1: TMenuItem;
    Inventrio1: TMenuItem;
    ConsultaFaturamento1: TMenuItem;
    ContasaReceberNovo1: TMenuItem;
    ipoProcesso1: TMenuItem;
    ConsultaPedidoPorProcesso1: TMenuItem;
    ConsultaCompras1: TMenuItem;
    NaturezadeOperaoQuantidade1: TMenuItem;
    ConsultaFaturamentoporGrupo1: TMenuItem;
    LimiteCliente1: TMenuItem;
    ipoIndicao1: TMenuItem;
    ConsultaMovimentoClienteFornecedor1: TMenuItem;
    ConsultaNotasCanceladas1: TMenuItem;
    N10: TMenuItem;
    ConsultaPagamentosRecebimentos1: TMenuItem;
    BitBtn1: TBitBtn;
    N11: TMenuItem;
    ConsultaPagamentosDevolues1: TMenuItem;
    ClientessemComprasnoPerodo1: TMenuItem;
    SituaoTributriaIPI1: TMenuItem;
    Pais1: TMenuItem;
    CadastrodeItensdeAjusteComplementar1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedor1: TMenuItem;
    Materiais1: TMenuItem;
    CidadesUFPais1: TMenuItem;
    Clientes1: TMenuItem;
    Agenda1: TMenuItem;
    IdFTP1: TIdFTP;
    Image2: TImage;
    ConsultaPedidoPendente1: TMenuItem;
    CadastrodeTributos1: TMenuItem;
    RegimeTributrio1: TMenuItem;
    N4: TMenuItem;
    PercentualSimples1: TMenuItem;
    CSOSN: TMenuItem;
    abelaCofins1: TMenuItem;
    abelaPis1: TMenuItem;
    OrigemMercadoria1: TMenuItem;
    N12: TMenuItem;
    InutilizarNumeraodeNota1: TMenuItem;
    Duplicatas21: TMenuItem;
    N13: TMenuItem;
    PopupMenu9: TPopupMenu;
    MenuItem1: TMenuItem;
    RxSpeedButton10: TRxSpeedButton;
    NotasPorNaturezadeOperao1: TMenuItem;
    NotasdeEntradaPorProduto1: TMenuItem;
    N14: TMenuItem;
    CobranaEletrnica1: TMenuItem;
    N15: TMenuItem;
    CupomFiscal1: TMenuItem;
    ClienteTerceiro1: TMenuItem;
    Posiesdomaterial1: TMenuItem;
    Produtos2: TMenuItem;
    ConsultaPlanoContasCentroCusto1: TMenuItem;
    ConsultaAmostra1: TMenuItem;
    N17: TMenuItem;
    ConsMovPedido1: TMenuItem;
    BitBtn2: TBitBtn;
    ConverterProdutoLTXT1: TMenuItem;
    Facas1: TMenuItem;
    Carteira1: TMenuItem;
    CentrodeCusto1: TMenuItem;
    BitBtn3: TBitBtn;
    N19: TMenuItem;
    ColeoRefernci1: TMenuItem;
    ProdutoFornecedorReferncia1: TMenuItem;
    ipoProdutoReferncia1: TMenuItem;
    MaterialReferncia1: TMenuItem;
    CorReferncia1: TMenuItem;
    MatrizLocalizao1: TMenuItem;
    BitBtn4: TBitBtn;
    ProcessoMetalrgica1: TMenuItem;
    BitBtn5: TBitBtn;
    EmailsAdicionaisdaNFe1: TMenuItem;
    MarcaReferncia1: TMenuItem;
    RepresentanteMetas1: TMenuItem;
    ConsultaHistricoPedido1: TMenuItem;
    ConsultaCdigodeBarras1: TMenuItem;
    EtiquetaCaixaIndividual1: TMenuItem;
    EtiquetaRtulo1: TMenuItem;
    EtiquetaCaixaIndividualNovo1: TMenuItem;
    abelaIBPT1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grupo1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Grade1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure CondiodePagamento1Click(Sender: TObject);
    procedure Impressoras1Click(Sender: TObject);
    procedure Transportadoras1Click(Sender: TObject);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure SituaoTributria1Click(Sender: TObject);
    procedure NaturezadeOperao1Click(Sender: TObject);
    procedure EstadoseAlqotas1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Vendedores2Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Materiais1Click(Sender: TObject);
    procedure OrdemdeCompra1Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Materiais2Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure ProdutoFichaTcnica1Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure LanaCtasaReceber1Click(Sender: TObject);
    procedure TipodeCobrana1Click(Sender: TObject);
    procedure Histricos1Click(Sender: TObject);
    procedure Duplicatas1Click(Sender: TObject);
    procedure NotasdeEntrada1Click(Sender: TObject);
    procedure fLanaContasaPagar1Click(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure Contas2Click(Sender: TObject);
    procedure Grupo2Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure Grades1Click(Sender: TObject);
    procedure Cor2Click(Sender: TObject);
    procedure CondiesdePagamento1Click(Sender: TObject);
    procedure Impressoras2Click(Sender: TObject);
    procedure Transportadoras2Click(Sender: TObject);
    procedure ClassificaoFiscal2Click(Sender: TObject);
    procedure SituaoTributria2Click(Sender: TObject);
    procedure NaturezadeOperao2Click(Sender: TObject);
    procedure EstadoseAlqotas2Click(Sender: TObject);
    procedure Clientes4Click(Sender: TObject);
    procedure Vendedores4Click(Sender: TObject);
    procedure OrdemdeCompra2Click(Sender: TObject);
    procedure Fornecedores4Click(Sender: TObject);
    procedure Materiais4Click(Sender: TObject);
    procedure Pedido2Click(Sender: TObject);
    procedure Setor2Click(Sender: TObject);
    procedure NotasFiscais2Click(Sender: TObject);
    procedure LancaCtasaReceber1Click(Sender: TObject);
    procedure TipodeCobranas1Click(Sender: TObject);
    procedure Histricos2Click(Sender: TObject);
    procedure Duplicatas2Click(Sender: TObject);
    procedure LanaCtasaPagar1Click(Sender: TObject);
    procedure Contas3Click(Sender: TObject);
    procedure PlanodeContas2Click(Sender: TObject);
    procedure Movimentos2Click(Sender: TObject);
    procedure Contas4Click(Sender: TObject);
    procedure RxSpeedButton9Click(Sender: TObject);
    procedure Notasemitidasporvendedor1Click(Sender: TObject);
    procedure Juros1Click(Sender: TObject);
    procedure Notasemitidaspornaturezadeoperao1Click(Sender: TObject);
    procedure RegiesdeVendas1Click(Sender: TObject);
    procedure RegiesdeVendas2Click(Sender: TObject);
    procedure tEmpresaAfterPost(DataSet: TDataSet);
    procedure Parametros1Click(Sender: TObject);
    procedure Pedidosnofaturados1Click(Sender: TObject);
    procedure BaixaPedidos1Click(Sender: TObject);
    procedure BaixaPedidos2Click(Sender: TObject);
    procedure EtiquetasClientes1Click(Sender: TObject);
    procedure EtiquetasClientes2Click(Sender: TObject);
    procedure EtiquetasVendedores1Click(Sender: TObject);
    procedure EtiquetasVendedores2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Pedidosnofaturados2Click(Sender: TObject);
    procedure N1Vendedor1Click(Sender: TObject);
    procedure N1Vendedor2Click(Sender: TObject);
    procedure Comisso2Click(Sender: TObject);
    procedure Comisso3Click(Sender: TObject);
    procedure LanamentodeComisses1Click(Sender: TObject);
    procedure LanamentodeComisso1Click(Sender: TObject);
    procedure ExtratodeVendedoresNotas1Click(Sender: TObject);
    procedure N2Histricos1Click(Sender: TObject);
    procedure N2Histricos2Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure N6AReceberporCliente1Click(Sender: TObject);
    procedure N3APagarporFornecedores1Click(Sender: TObject);
    procedure N4PagamentodeJuros1Click(Sender: TObject);
    procedure N5EtiquetasFornecedores1Click(Sender: TObject);
    procedure ObsAuxiliar1Click(Sender: TObject);
    procedure N3NotadeCompra1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ALogin1Click(Sender: TObject);
    procedure N1Atividades1Click(Sender: TObject);
    procedure N3Indexador1Click(Sender: TObject);
    procedure N3ConsultadeFornecpAtividade1Click(Sender: TObject);
    procedure N4MateriaisAbaixodoMnimo1Click(Sender: TObject);
    procedure N3ConsultadeEstoquedeMateriais1Click(Sender: TObject);
    procedure N5HistricodoMaterial1Click(Sender: TObject);
    procedure ModeObra1Click(Sender: TObject);
    procedure PedidoEspecial1Click(Sender: TObject);
    procedure N7NotadeEntrada1Click(Sender: TObject);
    procedure N2Cidades1Click(Sender: TObject);
    procedure DctodeEntradaeSadadoEstoque1Click(Sender: TObject);
    procedure N1AgendaTelefnica1Click(Sender: TObject);
    procedure N1CpiasdeDuplicatas1Click(Sender: TObject);
    procedure N8BalancodoEstoque1Click(Sender: TObject);
    procedure N9OrdensdeCompra1Click(Sender: TObject);
    procedure N9Funcionrios1Click(Sender: TObject);
    procedure N2EmbarqueDirio1Click(Sender: TObject);
    procedure N8Programao1Click(Sender: TObject);
    procedure NTabeladePreo1Click(Sender: TObject);
    procedure N1ControledeFaturamento1Click(Sender: TObject);
    procedure OAgendadeContatos1Click(Sender: TObject);
    procedure N3GeraSintegra1Click(Sender: TObject);
    procedure N7Cheque1Click(Sender: TObject);
    procedure N2Cheques1Click(Sender: TObject);
    procedure N4ConsultaHistricoMaterial1Click(Sender: TObject);
    procedure N5ControleFornecedores1Click(Sender: TObject);
    procedure COramento1Click(Sender: TObject);
    procedure N3ContasaReceberporSemana1Click(Sender: TObject);
    procedure N3ContasaPagarporSemana1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N8Produtos1Click(Sender: TObject);
    procedure BaixaTalo1Click(Sender: TObject);
    procedure Vale1Click(Sender: TObject);
    procedure Vale3Click(Sender: TObject);
    procedure ClienteHistrico1Click(Sender: TObject);
    procedure N3PlanodeContas1Click(Sender: TObject);
    procedure PrevisodeComisso1Click(Sender: TObject);
    procedure Feriado1Click(Sender: TObject);
    procedure ProdutosFaturadosPorPerodo1Click(Sender: TObject);
    procedure ConsultaSituaodosPedidos1Click(Sender: TObject);
    procedure ConsultaNotasdeBeneficiamento1Click(Sender: TObject);
    procedure PedidosemCarteira1Click(Sender: TObject);
    procedure PedidosemCarteiraValor1Click(Sender: TObject);
    procedure AcumuladoporProduto1Click(Sender: TObject);
    procedure ConsultaNotasEmbalagem1Click(Sender: TObject);
    procedure ConsultaProduto1Click(Sender: TObject);
    procedure HistricodoProduto1Click(Sender: TObject);
    procedure HistricoGeral1Click(Sender: TObject);
    procedure GrupoCliente1Click(Sender: TObject);
    procedure ConsultaRelatrioClientesporProduto1Click(Sender: TObject);
    procedure ConsultaNotaspedidos1Click(Sender: TObject);
    procedure GeraodosLotes1Click(Sender: TObject);
    procedure ConsultaLote1Click(Sender: TObject);
    procedure ConsultaLotesPendentesFaturamento1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ConsultaMaterialnaFichaTcnica1Click(Sender: TObject);
    procedure Unidade1Click(Sender: TObject);
    procedure CadastroGeralTipoProdutoTipoMaterial1Click(Sender: TObject);
    procedure ConsultaContasaReceber1Click(Sender: TObject);
    procedure EmbarqueDirioLote1Click(Sender: TObject);
    procedure ContasaPagarNovo1Click(Sender: TObject);
    procedure Impostos1Click(Sender: TObject);
    procedure Inventrio1Click(Sender: TObject);
    procedure ConsultaFaturamento1Click(Sender: TObject);
    procedure ContasaReceberNovo1Click(Sender: TObject);
    procedure ipoProcesso1Click(Sender: TObject);
    procedure ConsultaPedidoPorProcesso1Click(Sender: TObject);
    procedure ConsultaCompras1Click(Sender: TObject);
    procedure NaturezadeOperaoQuantidade1Click(Sender: TObject);
    procedure ConsultaFaturamentoporGrupo1Click(Sender: TObject);
    procedure LimiteCliente1Click(Sender: TObject);
    procedure ipoIndicao1Click(Sender: TObject);
    procedure ConsultaMovimentoClienteFornecedor1Click(Sender: TObject);
    procedure ConsultaNotasCanceladas1Click(Sender: TObject);
    procedure ConsultaPagamentosRecebimentos1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ConsultaPagamentosDevolues1Click(Sender: TObject);
    procedure ClientessemComprasnoPerodo1Click(Sender: TObject);
    procedure SituaoTributriaIPI1Click(Sender: TObject);
    procedure Pais1Click(Sender: TObject);
    procedure CadastrodeItensdeAjusteComplementar1Click(Sender: TObject);
    procedure PercentualSimples1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure ConsultaPedidoPendente1Click(Sender: TObject);
    procedure RegimeTributrio1Click(Sender: TObject);
    procedure CSOSNClick(Sender: TObject);
    procedure abelaCofins1Click(Sender: TObject);
    procedure abelaPis1Click(Sender: TObject);
    procedure OrigemMercadoria1Click(Sender: TObject);
    procedure InutilizarNumeraodeNota1Click(Sender: TObject);
    procedure Duplicatas21Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure NotasPorNaturezadeOperao1Click(Sender: TObject);
    procedure NotasdeEntradaPorProduto1Click(Sender: TObject);
    procedure CobranaEletrnica1Click(Sender: TObject);
    procedure CupomFiscal1Click(Sender: TObject);
    procedure ClienteTerceiro1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Posiesdomaterial1Click(Sender: TObject);
    procedure ConsultaPlanoContasCentroCusto1Click(Sender: TObject);
    procedure ConsultaAmostra1Click(Sender: TObject);
    procedure ConsMovPedido1Click(
      Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ConverterProdutoLTXT1Click(Sender: TObject);
    procedure Filial1Click(Sender: TObject);
    procedure Facas1Click(Sender: TObject);
    procedure Carteira1Click(Sender: TObject);
    procedure CentrodeCusto1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ColeoRefernci1Click(Sender: TObject);
    procedure ProdutoFornecedorReferncia1Click(Sender: TObject);
    procedure ipoProdutoReferncia1Click(Sender: TObject);
    procedure MaterialReferncia1Click(Sender: TObject);
    procedure CorReferncia1Click(Sender: TObject);
    procedure MatrizLocalizao1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ProcessoMetalrgica1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure EmailsAdicionaisdaNFe1Click(Sender: TObject);
    procedure MarcaReferncia1Click(Sender: TObject);
    procedure RepresentanteMetas1Click(Sender: TObject);
    procedure ConsultaHistricoPedido1Click(Sender: TObject);
    procedure ConsultaCdigodeBarras1Click(Sender: TObject);
    procedure EtiquetaCaixaIndividual1Click(Sender: TObject);
    procedure EtiquetaRtulo1Click(Sender: TObject);
    procedure EtiquetaCaixaIndividualNovo1Click(Sender: TObject);
    procedure abelaIBPT1Click(Sender: TObject);
  private
    { Private declarations }
    FDataSetError: TrsDataSetError;
  public
    { Public declarations }
  end;

var
  fMenuP: TfMenuP;
  Auto: String[15];

implementation

uses UGrupos, UFornecedores, UMaterial, UGrade, UCor, UCondPgto, UTransp, UOrdemCompra, UEmpresa, UClasFiscal, USitTributaria,
  UPrevMaterial, UVendedor, UNatOperacao, UPedido, UCliente, UPrevRelClientes, URelFornecedores, UPrevFornecedores, UPrevVendedores,
  USetor, UTipoCobranca, UHistorico, UEmissaoNotaFiscal, UUf, UContas, UPlanoContas, UPrevContas, ULancaCPagar, ULancaCReceber, UAgenda,
  USobre, UPrevDuplicatas, UImpressora, URelClientes, UPrevNotasVendedor, UJuros, URegioes, USenha, UParametros, UProduto, UConsLoteFB,
  UPrevPedidosNaoFat, UBaixaPedido, UEtiqCliente, UEtiqVendedor, UDM1, UAutorizacao, ULancComissao, UPrevNComprasNatOpe, UPrevRecCli,
  UPrevPagForn, UPrevPgtoJuros, UEtiqFornecedor, UObsAux, UUsuarios, UAcesso, UAtividade, UIndexador, UConsFornecAtiv, UPrevMatMinimo,
  UConsEstoqueMat, UPrevRelHistMaterial, UMaoDeObra, UPedidoEsp, UPrevNotaEntrada, UCidade, UDctoEst, UAgendaTelef, UPrevContrFat,
  UCopiaDuplicata, UPrevBalancoEst, UPrevRelOC, UFuncionario, UPrevEmbDiario,UConsComissao, UPrevProgramacao, UTabPreco, UTabCofins,
  UGeraSintegra, UCheques, UPrevCheque, UConsHistMat, UPrevContFornecedores, UOrcamento, UPrevCReceberSem, UAgeContato, UPosicao, UTabPis,
  UPrevCPagarSem, UBaixaTalao, UVale, UPrevVale, UHistCliente, UFilial, UPrevPrevComissao, UFeriado, UPrevProdutosFat, UConsHistCliente,
  UConsPedidoBR, UConsNotaBeneficiamento, UPrevPedCarteira, UPrevPedCarteiraVlr, UPrevAcumuladoFat, UConvProduto, UHistPedido, UEtiqCx, 
  UConsNotaFiscalBeneficiamento, UConsProduto, UHistProduto, UHistGeral, UGrupoCliente, URelClientesRef, UConsClientesRef, UConsPedido2,
  UPrevPlanoContas2, UConsNotasPorPedido, UGeraLote, UConsLote, UConsPedPendFat, UDM2, UConsMaterialFicha, UNotaEntrada, UCSTIPI, uFacaC,
  UUnidade, UCadastroSimples, UConsCReceber, UMovimentos2, UPrevEmbDiarioLote, UContasPagar2, UImpostos, UOutrosServicosNota, UProcessoC,
  UPrevInventario, UConsFaturamento, UContasReceber2, UPrevNotasNatOpe2, UTipoProcesso, UConsUltCompras, uIntegracao, UPais, UOrigemProd,
  UPrevNatOperacao, UConsFaturamentoGrupo, UConsLimiteCredCliente, UTipoIndicacao, UConsCliFornMov, UConsNotaCancelada, UClienteTerceiroC,
  UConsPagarReceber, UconsCompras, UVerificaContasRecPag, UConsContasPagar, uClientesAusentes, UPercSimples, UConsPedidoPend, UNFeEmailC,
  URegimeTrib, USitTributariaSimples,  UNFeInutilizacao, UPrevDuplicatas2, UPrevNotasEnt, UCobEletronicaC, UCupomFiscalC, uProdutoCartoC,
  UConsPlanoContas, UConsAmostra, UConsMovPedido, UCarteiraC, UCentroCusto, uConvCPagar, UTipo_ProdutoC, UMatriz_LocC, UConsMovPedido2,
  UGeraLoteFB, UVendedorMetaC, UConsCBarra, UEtiqRotulo, UEtiquetaCaixaInd,
  UTabIBPTC;

{$R *.DFM}

procedure TfMenuP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfMenuP.Grupo1Click(Sender: TObject);
begin
  fGrupos := TfGrupos.Create(Self);
  fGrupos.ShowModal;
end;

procedure TfMenuP.Clientes1Click(Sender: TObject);
begin
  fCliente := TfCliente.Create(self);
  fCliente.ShowModal;
end;

procedure TfMenuP.Grade1Click(Sender: TObject);
begin
  fGrade := TfGrade.Create(self);
  fGrade.ShowModal;
end;

procedure TfMenuP.Cor1Click(Sender: TObject);
begin
  fCor := TfCor.Create(Self);
  fCor.ShowModal;
end;

procedure TfMenuP.CondiodePagamento1Click(Sender: TObject);
begin
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
end;

procedure TfMenuP.Impressoras1Click(Sender: TObject);
begin
  fImpressora := TfImpressora.Create(Self);
  fImpressora.ShowModal;
end;

procedure TfMenuP.Transportadoras1Click(Sender: TObject);
begin
  fTransp := TfTransp.Create(Self);
  fTransp.ShowModal;
end;

procedure TfMenuP.ClassificaoFiscal1Click(Sender: TObject);
begin
  fClasFiscal := TfClasFiscal.Create(Self);
  fClasFiscal.ShowModal;
end;

procedure TfMenuP.SituaoTributria1Click(Sender: TObject);
begin
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowModal;
end;

procedure TfMenuP.NaturezadeOperao1Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
end;

procedure TfMenuP.EstadoseAlqotas1Click(Sender: TObject);
begin
  fUf := TfUf.Create(Self);
  fUf.ShowModal;
end;

procedure TfMenuP.Clientes2Click(Sender: TObject);
begin
  fPrevRelClientes := TfPrevRelClientes.Create(Self);
  fPrevRelClientes.ShowModal;
end;

procedure TfMenuP.Vendedores2Click(Sender: TObject);
begin
  fPrevVendedores := TfPrevVendedores.Create(Self);
  fPrevVendedores.ShowModal;
end;

procedure TfMenuP.Fornecedores1Click(Sender: TObject);
begin
  fFornecedores := TfFornecedores.Create(Self);
  fFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais1Click(Sender: TObject);
begin
  fMaterial := TfMaterial.Create(Self);
  fMaterial.ShowModal;
end;

procedure TfMenuP.OrdemdeCompra1Click(Sender: TObject);
begin
  fOrdemCompra := TfOrdemCompra.Create(Self);
  fOrdemCompra.ShowModal;
end;

procedure TfMenuP.Fornecedores2Click(Sender: TObject);
begin
  fPrevFornecedores := TfPrevFornecedores.Create(Self);
  fPrevFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais2Click(Sender: TObject);
begin
  fPrevMaterial := TfPrevMaterial.Create(Self);
  fPrevMaterial.ShowModal;
end;

procedure TfMenuP.Pedido1Click(Sender: TObject);
begin
  fPedido := TfPedido.Create(Self);
  fPedido.ShowModal;
end;

procedure TfMenuP.Setor1Click(Sender: TObject);
begin
  fSetor := TfSetor.Create(Self);
  fSetor.ShowModal;
end;

procedure TfMenuP.ProdutoFichaTcnica1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
end;

procedure TfMenuP.NotasFiscais1Click(Sender: TObject);
begin
  fEmissaoNotaFiscal := TfEmissaoNotaFiscal.Create(Self);
  fEmissaoNotaFiscal.ShowModal;
end;

procedure TfMenuP.LanaCtasaReceber1Click(Sender: TObject);
begin
  fLancaCReceber := TfLancaCReceber.Create(Self);
  fLancaCReceber.ShowModal;
end;

procedure TfMenuP.TipodeCobrana1Click(Sender: TObject);
begin
  fTipoCobranca := TfTipoCobranca.Create(Self);
  fTipoCobranca.ShowModal;
end;

procedure TfMenuP.Histricos1Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.Duplicatas1Click(Sender: TObject);
begin
  fPrevDuplicatas := TfPrevDuplicatas.Create(Self);
  fPrevDuplicatas.ShowModal;
end;

procedure TfMenuP.NotasdeEntrada1Click(Sender: TObject);
begin
  fNotaEntrada := TfNotaEntrada.Create(Self);
  fNotaEntrada.ShowModal;
end;

procedure TfMenuP.fLanaContasaPagar1Click(Sender: TObject);
begin
  fLancaCPagar := TfLancaCPagar.Create(Self);
  fLancaCPagar.ShowModal;
end;

procedure TfMenuP.Contas1Click(Sender: TObject);
begin
  fContas := TfContas.Create(Self);
  fContas.ShowModal;
end;

procedure TfMenuP.PlanodeContas1Click(Sender: TObject);
begin
  fPlanoContas := TfPlanoContas.Create(Self);
  fPlanoContas.ShowModal;
end;

procedure TfMenuP.Contas2Click(Sender: TObject);
begin
  fPrevContas := TfPrevContas.Create(Self);
  fPrevContas.ShowModal;
end;

procedure TfMenuP.Grupo2Click(Sender: TObject);
begin
  fGrupos := TfGrupos.Create(Self);
  fGrupos.ShowModal;
end;

procedure TfMenuP.Clientes3Click(Sender: TObject);
begin
  fCliente := TfCliente.Create(Self);
  fCliente.ShowModal;
end;

procedure TfMenuP.Grades1Click(Sender: TObject);
begin
  fGrade := TfGrade.Create(Self);
  fGrade.ShowModal;
end;

procedure TfMenuP.Cor2Click(Sender: TObject);
begin
  fCor := TfCor.Create(Self);
  fCor.ShowModal;
end;

procedure TfMenuP.CondiesdePagamento1Click(Sender: TObject);
begin
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
end;

procedure TfMenuP.Impressoras2Click(Sender: TObject);
begin
  fImpressora := TfImpressora.Create(Self);
  fIMpressora.ShowModal;
end;

procedure TfMenuP.Transportadoras2Click(Sender: TObject);
begin
  fTransp := TfTransp.Create(Self);
  fTransp.ShowModal;
end;

procedure TfMenuP.ClassificaoFiscal2Click(Sender: TObject);
begin
  fClasFiscal := TfClasFiscal.Create(Self);
  fClasFiscal.ShowModal;
end;

procedure TfMenuP.SituaoTributria2Click(Sender: TObject);
begin
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowModal;
end;

procedure TfMenuP.NaturezadeOperao2Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
end;

procedure TfMenuP.EstadoseAlqotas2Click(Sender: TObject);
begin
  fUf := TfUf.Create(Self);
  fUf.ShowModal;
end;

procedure TfMenuP.Clientes4Click(Sender: TObject);
begin
  fPrevRelClientes := TfPrevRelClientes.Create(Self);
  fPrevRelClientes.ShowModal;
end;

procedure TfMenuP.Vendedores4Click(Sender: TObject);
begin
  fPrevVendedores := TfPrevVendedores.Create(Self);
  fPrevVendedores.ShowModal;
end;

procedure TfMenuP.OrdemdeCompra2Click(Sender: TObject);
begin
  fOrdemCompra := TfOrdemCompra.Create(Self);
  fOrdemCompra.ShowModal;
end;

procedure TfMenuP.Fornecedores4Click(Sender: TObject);
begin
  fPrevFornecedores := TfPrevFornecedores.Create(Self);
  fPrevFornecedores.ShowModal;
end;

procedure TfMenuP.Materiais4Click(Sender: TObject);
begin
  fPrevMaterial := TfPrevMaterial.Create(Self);
  fPrevMaterial.ShowModal;
end;

procedure TfMenuP.Pedido2Click(Sender: TObject);
begin
  fPedido := TfPedido.Create(Self);
  fPedido.ShowModal;
end;

procedure TfMenuP.Setor2Click(Sender: TObject);
begin
  fSetor := TfSetor.Create(Self);
  fSetor.ShowModal;
end;
                            
procedure TfMenuP.NotasFiscais2Click(Sender: TObject);
begin
	screen.cursor := crHourGlass;
  fEmissaoNotaFiscal := TfEmissaoNotaFiscal.Create(Self);
  fEmissaoNotaFiscal.ShowModal;
end;

procedure TfMenuP.LancaCtasaReceber1Click(Sender: TObject);
begin
  fLancaCReceber := TfLancaCReceber.Create(Self);
  fLancaCReceber.ShowModal;
end;

procedure TfMenuP.TipodeCobranas1Click(Sender: TObject);
begin
  fTipoCobranca := TfTipoCobranca.Create(Self);
  fTipoCobranca.ShowModal;
end;

procedure TfMenuP.Histricos2Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.Duplicatas2Click(Sender: TObject);
begin
  fPrevDuplicatas := TfPrevDuplicatas.Create(Self);
  fPrevDuplicatas.ShowModal;
end;

procedure TfMenuP.LanaCtasaPagar1Click(Sender: TObject);
begin
  fLancaCPagar := TfLancaCPagar.Create(Self);
  fLancaCPagar.ShowModal;
end;

procedure TfMenuP.Contas3Click(Sender: TObject);
begin
  fContas := TfContas.Create(Self);
  fContas.ShowModal;
end;

procedure TfMenuP.PlanodeContas2Click(Sender: TObject);
begin
  fPlanoContas := TfPlanoContas.Create(Self);
  fPlanoContas.ShowModal;
end;

procedure TfMenuP.Movimentos2Click(Sender: TObject);
begin
  fMovimentos2 := TfMovimentos2.Create(Self);
  fMovimentos2.ShowModal;
end;

procedure TfMenuP.Contas4Click(Sender: TObject);
begin
  fPrevContas := TfPrevContas.Create(Self);
  fPrevContas.ShowModal;
end;

procedure TfMenuP.RxSpeedButton9Click(Sender: TObject);
begin
  Close;
end;

procedure TfMenuP.Notasemitidasporvendedor1Click(Sender: TObject);
begin
  fPrevNotasVendedor := TfPrevNotasVendedor.Create(Self);
  fPrevNotasVendedor.ShowModal;
end;

procedure TfMenuP.Juros1Click(Sender: TObject);
begin
  fJuros := TfJuros.Create(Self);
  fJuros.ShowModal;
end;

procedure TfMenuP.Notasemitidaspornaturezadeoperao1Click(Sender: TObject);
begin
  fPrevNotasNatOpe2 := TfPrevNotasNatOpe2.Create(Self);
  fPrevNotasNatOpe2.ShowModal;
end;

procedure TfMenuP.RegiesdeVendas1Click(Sender: TObject);
begin
  fRegioes := TfRegioes.Create(Self);
  fRegioes.ShowModal;
end;

procedure TfMenuP.RegiesdeVendas2Click(Sender: TObject);
begin
  fRegioes := TfRegioes.Create(Self);
  fRegioes.ShowModal;
end;

procedure TfMenuP.tEmpresaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEmpresa.Handle);
end;

procedure TfMenuP.Parametros1Click(Sender: TObject);
begin
  fParametros := TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenuP.Pedidosnofaturados1Click(Sender: TObject);
begin
  fPrevPedidosNaoFat := TfPrevPedidosNaoFat.Create(Self);
  fPrevPedidosNaoFat.ShowModal;
end;

procedure TfMenuP.BaixaPedidos1Click(Sender: TObject);
begin
  fBaixaPedido := TfBaixaPedido.Create(Self);
  fBaixaPedido.ShowModal;
end;

procedure TfMenuP.BaixaPedidos2Click(Sender: TObject);
begin
  fBaixaPedido := TfBaixaPedido.Create(Self);
  fBaixaPedido.ShowModal;
end;

procedure TfMenuP.EtiquetasClientes1Click(Sender: TObject);
begin
  fEtiqCliente := TfEtiqCliente.Create(self);
  fEtiqCliente.ShowModal;
end;

procedure TfMenuP.EtiquetasClientes2Click(Sender: TObject);
begin
  fEtiqCliente := TfEtiqCliente.Create(Self);
  fEtiqCliente.ShowModal;
end;

procedure TfMenuP.EtiquetasVendedores1Click(Sender: TObject);
begin
  fEtiqVendedor := TfEtiqVendedor.Create(Self);
  fEtiqVendedor.ShowModal;
end;

procedure TfMenuP.EtiquetasVendedores2Click(Sender: TObject);
begin
  fEtiqVendedor := TfEtiqVendedor.Create(Self);
  fEtiqVendedor.ShowModal;
end;

procedure TfMenuP.FormShow(Sender: TObject);
var
  vLinha2 : String;
begin
  if DM1.tParametrosUsaRepresentada.AsBoolean then
    Clientes1.Caption := 'Clientes/Marca/Fábrica'
  else
    Clientes1.Caption := 'Clientes';
  Clientes3.Caption := Clientes1.Caption;

  FDataSetError.CreateError(DM1);
  FDataSetError.CreateError(DM2);

  DM1.tEmpresa.open;
  DM1.tUsuario.open;
  DM1.tImpressora.open;
  DM1.tUsuarioAlt.open;
  DM1.tUsuarioExc.open;
  DM1.tUsuarioIns.open;
  vLinha2 := DM1.tEmpresaLinha2.AsString;
  RxLabel1.Caption := DM1.tEmpresaLinha1.AsString;
  RxLabel2.Caption := DM1.tEmpresaLinha2.AsString;
  fAcesso := TfAcesso.Create(Self);
  fAcesso.Caption := '  Senha de Acesso  -  ' + DateToStr(Date);
  //Foi tirado para o pacote básico dia 10/03/2010
  {if DM1.tEmpresaData.AsDateTime <= (Date - 10) then
    begin
      DM1.tEmpresa.Edit;
      DM1.tEmpresaData.AsDateTime := (Date - 10);
      DM1.tEmpresa.Post;
    end
  else
    begin
      ShowMessage('A data do sistema foi alterada!'+#13+#13+
                  'Entre com a senha de liberação '+#13+
                  ' e a data correta do sistema !');
      fAutorizacao := TfAutorizacao.Create(Self);
      fAutorizacao.ShowModal;
    end;}
  fAcesso.ShowModal;
  if Dm1.tEmpresaLogoEmpresa.AsString <> '' then
    begin
      Image1.Picture.LoadFromFile(Dm1.tEmpresaLogoEmpresa.AsString);
      RxLabel1.Visible := False;
      RxLabel2.Visible := False;
    end
  else
    begin
      Image1.Visible := False;
      RxLabel1.Visible := True;
      RxLabel2.Visible := True;
    end;
  BitBtn4.Visible := DM1.tUsuarioAgenda.AsBoolean;
end;

procedure TfMenuP.Parmetros1Click(Sender: TObject);
begin
  fParametros :=TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenuP.Pedidosnofaturados2Click(Sender: TObject);
begin
  fPrevPedidosNaoFat := TfPrevPedidosNaoFat.Create(Self);
  fPrevPedidosNaoFat.ShowModal;
end;

procedure TfMenuP.N1Vendedor1Click(Sender: TObject);
begin
  fVendedor := TfVendedor.Create(Self);
  fVendedor.ShowModal;
end;

procedure TfMenuP.N1Vendedor2Click(Sender: TObject);
begin
  fVendedor := TfVendedor.Create(Self);
  fVendedor.ShowModal;
end;

procedure TfMenuP.Comisso2Click(Sender: TObject);
begin
  //fPgtoComissao := TfPgtoComissao.Create(Self);
  //fPgtoComissao.ShowModal;
end;

procedure TfMenuP.Comisso3Click(Sender: TObject);
begin
  //fPgtoComissao := TfPgtoComissao.Create(Self);
  //fPgtoComissao.ShowModal;
end;

procedure TfMenuP.LanamentodeComisses1Click(Sender: TObject);
begin
  fLancComissao := TfLancComissao.Create(Self);
  fLancComissao.ShowModal;
end;

procedure TfMenuP.LanamentodeComisso1Click(Sender: TObject);
begin
  fLancComissao := TfLancComissao.Create(Self);
  fLancComissao.ShowModal;
end;

procedure TfMenuP.ExtratodeVendedoresNotas1Click(Sender: TObject);
begin
  fConsComissao := TfConsComissao.Create(Self);
  fConsComissao.ShowModal;
end;

procedure TfMenuP.N2Histricos1Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.N2Histricos2Click(Sender: TObject);
begin
  fHistorico := TfHistorico.Create(Self);
  fHistorico.ShowModal;
end;

procedure TfMenuP.Sobre1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenuP.N6AReceberporCliente1Click(Sender: TObject);
begin
  fPrevRecCli := TfPrevRecCli.Create(Self);
  fPrevRecCli.ShowModal;
end;

procedure TfMenuP.N3APagarporFornecedores1Click(Sender: TObject);
begin
  fPrevPagForn := TfPrevPagForn.Create(Self);
  fPrevPagForn.ShowModal;
end;

procedure TfMenuP.N4PagamentodeJuros1Click(Sender: TObject);
begin
  fPrevPgtoJuros := TfPrevPgtoJuros.Create(Self);
  fPrevPgtoJuros.ShowModal;
end;

procedure TfMenuP.N5EtiquetasFornecedores1Click(Sender: TObject);
begin
  fEtiqFornecedor := TfEtiqFornecedor.Create(Self);
  fEtiqFornecedor.ShowModal;
end;

procedure TfMenuP.ObsAuxiliar1Click(Sender: TObject);
begin
  fObsAux := TfObsAux.Create(Self);
  fObsAux.ShowModal;
end;

procedure TfMenuP.N3NotadeCompra1Click(Sender: TObject);
begin
  fNotaEntrada := TfNotaEntrada.Create(Self);
  fNotaEntrada.ShowModal;
end;

procedure TfMenuP.Sair1Click(Sender: TObject);
begin
  fUsuarios := TfUsuarios.Create(Self);
  fUsuarios.ShowModal;
end;

procedure TfMenuP.ALogin1Click(Sender: TObject);
begin
  DM1.Login;
end;

procedure TfMenuP.N1Atividades1Click(Sender: TObject);
begin
  fAtividade := TfAtividade.Create(Self);
  fAtividade.ShowModal;
end;

procedure TfMenuP.N3Indexador1Click(Sender: TObject);
begin
  fIndexador := TfIndexador.Create(Self);
  fIndexador.ShowModal;
end;

procedure TfMenuP.N3ConsultadeFornecpAtividade1Click(Sender: TObject);
begin
  fConsFornecAtiv := TfConsFornecAtiv.Create(Self);
  fConsFornecAtiv.ShowModal;
end;

procedure TfMenuP.N4MateriaisAbaixodoMnimo1Click(Sender: TObject);
begin
  fPrevMatMinimo := TfPrevMatMinimo.Create(Self);
  fPrevMatMinimo.ShowModal;
end;

procedure TfMenuP.N3ConsultadeEstoquedeMateriais1Click(Sender: TObject);
begin
  fConsEstoqueMat := TfConsEStoqueMat.Create(Self);
  fConsEstoqueMat.ShowModal;
end;

procedure TfMenuP.N5HistricodoMaterial1Click(Sender: TObject);
begin
  fPrevRelHistMaterial := TfPrevRelHistMaterial.Create(Self);
  fPrevRelHistMaterial.ShowModal;
end;

procedure TfMenuP.ModeObra1Click(Sender: TObject);
begin
  fMaoDeObra := TfMaoDeObra.Create(Self);
  fMaoDeObra.ShowModal;
end;

procedure TfMenuP.PedidoEspecial1Click(Sender: TObject);
begin
  fPedidoEsp := TfPedidoEsp.Create(Self);
  fPedidoEsp.ShowModal;
end;

procedure TfMenuP.N7NotadeEntrada1Click(Sender: TObject);
begin
  fPrevNotaEntrada := TfPrevNotaEntrada.Create(Self);
  fPrevNotaEntrada.ShowModal;
end;

procedure TfMenuP.N2Cidades1Click(Sender: TObject);
begin
  fCidade := TfCidade.Create(Self);
  fCidade.ShowModal;
end;

procedure TfMenuP.DctodeEntradaeSadadoEstoque1Click(Sender: TObject);
begin
  fDctoEst := TfDctoEst.Create(Self);
  fDctoEst.ShowModal;
end;

procedure TfMenuP.N1AgendaTelefnica1Click(Sender: TObject);
begin
  fAgendaTelef := TfAgendaTelef.Create(Self);
  fAgendaTelef.ShowModal;
end;

procedure TfMenuP.N1CpiasdeDuplicatas1Click(Sender: TObject);
begin
  fCopiaDuplicata := TfCopiaDuplicata.Create(Self);
  fCopiaDuplicata.ShowModal;
end;

procedure TfMenuP.N8BalancodoEstoque1Click(Sender: TObject);
begin
  fPrevBalancoEst := TfPrevBalancoEst.Create(Self);
  fPrevBalancoEst.ShowModal;
end;

procedure TfMenuP.N9OrdensdeCompra1Click(Sender: TObject);
begin
  fPrevRelOC := TfPrevRelOC.Create(Self);
  fPrevRelOC.ShowModal;
end;

procedure TfMenuP.N9Funcionrios1Click(Sender: TObject);
begin
  fFuncionario := TfFuncionario.Create(Self);
  fFuncionario.ShowModal;
end;

procedure TfMenuP.N2EmbarqueDirio1Click(Sender: TObject);
begin
  fPrevEmbDiario := TfPrevEmbDiario.Create(Self);
  fPrevEmbDiario.ShowModal;
end;

procedure TfMenuP.N8Programao1Click(Sender: TObject);
begin
  fPrevProgramacao := TfPrevProgramacao.Create(Self);
  fPrevProgramacao.ShowModal;
end;

procedure TfMenuP.NTabeladePreo1Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;       

procedure TfMenuP.N1ControledeFaturamento1Click(Sender: TObject);
begin
  fPrevContrFat := TfPrevContrFat.Create(Self);
  fPrevContrFat.ShowModal;
end;

procedure TfMenuP.OAgendadeContatos1Click(Sender: TObject);
begin
  fAgeContato := TfAgeContato.Create(Self);
  fAgeContato.ShowModal;
end;

procedure TfMenuP.N3GeraSintegra1Click(Sender: TObject);
begin
  fGeraSintegra := TfGeraSintegra.Create(Self);
  fGeraSintegra.ShowModal;
end;

procedure TfMenuP.N7Cheque1Click(Sender: TObject);
begin
  fCheques := TfCheques.Create(Self);
  fCheques.ShowModal;
end;

procedure TfMenuP.N2Cheques1Click(Sender: TObject);
begin
  fPrevCheque := TfPrevCheque.Create(Self);
  fPrevCheque.ShowModal;
end;

procedure TfMenuP.N4ConsultaHistricoMaterial1Click(Sender: TObject);
begin
  fConsHistMat := TfConsHistMat.Create(Self);
  fConsHistMat.ShowModal;
end;

procedure TfMenuP.N5ControleFornecedores1Click(Sender: TObject);
begin
  fPrevContFornecedores := TfPrevContFornecedores.Create(Self);
  fPrevContFornecedores.ShowModal;
end;

procedure TfMenuP.COramento1Click(Sender: TObject);
begin
  fOrcamento := TfOrcamento.Create(Self);
  fOrcamento.ShowModal;
end;

procedure TfMenuP.N3ContasaReceberporSemana1Click(Sender: TObject);
begin
  fPrevCReceberSem := TfPrevCReceberSem.Create(Self);
  fPrevCReceberSem.ShowModal;
end;

procedure TfMenuP.N3ContasaPagarporSemana1Click(Sender: TObject);
begin
  fPrevCPagarSem := TfPrevCPagarSem.Create(Self);
  fPrevCPagarSem.ShowModal;
end;

procedure TfMenuP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3)  then
    begin
      fConsHistCliente := TfConsHistCliente.Create(Self);
      fConsHistCliente.ShowModal;
    end;
  if (Key = Vk_F8) and (DM1.tUsuarioConsPedidoPendFat.AsBoolean) then
    begin
      fConsPedPendFat := TfConsPedPendFat.Create(Self);
      fConsPedPendFat.ShowModal;
    end;
  if (Shift = [ssCtrl]) and (Key = 87) then
  begin
    BitBtn1.Visible := not(BitBtn1.Visible);
    BitBtn2.Visible := not(BitBtn2.Visible);
    BitBtn3.Visible := not(BitBtn3.Visible);
    BitBtn5.Visible := not(BitBtn5.Visible);
  end;
end;

procedure TfMenuP.N8Produtos1Click(Sender: TObject);
begin
  fPrevMaterial := TfPrevMaterial.Create(Self);
  fPrevMaterial.ShowModal;
end;

procedure TfMenuP.BaixaTalo1Click(Sender: TObject);
begin
  fBaixaTalao := TfBaixaTalao.Create(Self);
  fBaixaTalao.ShowModal;
end;

procedure TfMenuP.Vale1Click(Sender: TObject);
begin
  fVale := TfVale.Create(Self);
  fVale.ShowModal;
end;

procedure TfMenuP.Vale3Click(Sender: TObject);
begin
  fPrevVale := TfPrevVale.Create(Self);
  fPrevVale.ShowModal;
end;

procedure TfMenuP.ClienteHistrico1Click(Sender: TObject);
begin
  fHistCliente := TfHistCliente.Create(Self);
  fHistCliente.ShowModal;
end;

procedure TfMenuP.N3PlanodeContas1Click(Sender: TObject);
begin
  fPrevPlanoContas2 := TfPrevPlanoContas2.Create(Self);
  fPrevPlanoContas2.ShowModal;
end;

procedure TfMenuP.PrevisodeComisso1Click(Sender: TObject);
begin
  fPrevPrevComissao := TfPrevPrevComissao.Create(Self);
  fPrevPrevComissao.ShowModal; 
end;

procedure TfMenuP.Feriado1Click(Sender: TObject);
begin
  fFeriado := TfFeriado.Create(Self);
  fFeriado.ShowModal;
end;

procedure TfMenuP.ProdutosFaturadosPorPerodo1Click(Sender: TObject);
begin
  fPrevProdutoFat := TfPrevProdutoFat.Create(Self);
  fPrevProdutoFat.ShowModal;
end;

procedure TfMenuP.ConsultaSituaodosPedidos1Click(Sender: TObject);
begin
  fConsPedidoBR := TfConsPedidoBR.Create(Self);
  fConsPedidoBR.ShowModal;
end;

procedure TfMenuP.ConsultaNotasdeBeneficiamento1Click(Sender: TObject);
begin
  fConsNotaBeneficiamento := TfConsNotaBeneficiamento.Create(Self);
  fConsNotaBeneficiamento.ShowModal;
end;

procedure TfMenuP.PedidosemCarteira1Click(Sender: TObject);
begin
  fPrevPedCarteira := TfPrevPedCarteira.Create(Self);
  fPrevPedCarteira.ShowModal;
end;

procedure TfMenuP.PedidosemCarteiraValor1Click(Sender: TObject);
begin
  fPrevPedCarteiraVlr := TfPrevPedCarteiraVlr.Create(Self);
  fPrevPedCarteiraVlr.ShowModal;
end;

procedure TfMenuP.AcumuladoporProduto1Click(Sender: TObject);
begin
  fPrevAcumuladoFat := TfPrevAcumuladoFat.Create(Self);
  fPrevAcumuladoFat.ShowModal;
end;

procedure TfMenuP.ConsultaNotasEmbalagem1Click(Sender: TObject);
begin
  fConsNotaFiscalBeneficiamento := TfConsNotaFiscalBeneficiamento.Create(Self);
  fConsNotaFiscalBeneficiamento.ShowModal;
end;

procedure TfMenuP.ConsultaProduto1Click(Sender: TObject);
begin
  fConsProduto := TfConsProduto.Create(Self);
  fConsProduto.ShowModal;
end;

procedure TfMenuP.HistricodoProduto1Click(Sender: TObject);
begin
  fHistProduto := TfHistProduto.Create(Self);
  fHistProduto.ShowModal;
end;

procedure TfMenuP.HistricoGeral1Click(Sender: TObject);
begin
  fHistGeral := TfHistGeral.Create(Self);
  fHistGeral.ShowModal;
end;

procedure TfMenuP.GrupoCliente1Click(Sender: TObject);
begin
  fGrupoCliente := TfGrupoCliente.Create(Self);
  fGrupoCliente.vTipoGrupo := 'CLI';
  fGrupoCliente.ShowModal;
end;

procedure TfMenuP.ConsultaRelatrioClientesporProduto1Click(
  Sender: TObject);
begin
  fConsClientesRef := TfConsClientesRef.Create(Self);
  fConsClientesRef.ShowModal;
end;

procedure TfMenuP.ConsultaNotaspedidos1Click(Sender: TObject);
begin
  fConsNotasPorPedido := TfConsNotasPorPedido.Create(Self);
  fConsNotasPorPedido.ShowModal;
end;

procedure TfMenuP.GeraodosLotes1Click(Sender: TObject);
begin
  if DM1.tParametrosMetalurgica.AsBoolean then
  begin
    fGeraLoteFB := TfGeraLoteFB.Create(Self);
    fGeraLoteFB.ShowModal;
  end
  else
  begin
    fGeraLote := TfGeraLote.Create(Self);
    fGeraLote.ShowModal;
  end;
end;

procedure TfMenuP.ConsultaLote1Click(Sender: TObject);
begin
  if DM1.tParametrosMetalurgica.AsBoolean then
  begin
    fConsLoteFB := TfConsLoteFB.Create(Self);
    fConsLoteFB.ShowModal;
  end
  else
  begin
    fConsLote := TfConsLote.Create(Self);
    fConsLote.ShowModal;
  end;
end;

procedure TfMenuP.ConsultaLotesPendentesFaturamento1Click(Sender: TObject);
begin
  fConsPedPendFat := TfConsPedPendFat.Create(Self);
  fConsPedPendFat.ShowModal;
end;

procedure TfMenuP.FormCreate(Sender: TObject);
begin
  FDataSetError := TrsDataSetError.Create;
  DM1.tParametros.Open;
end;

procedure TfMenuP.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FDataSetError);
end;

procedure TfMenuP.ConsultaMaterialnaFichaTcnica1Click(Sender: TObject);
begin
  fConsMaterialFicha := TfConsMaterialFicha.Create(Self);
  fConsMaterialFicha.ShowModal;
end;

procedure TfMenuP.Unidade1Click(Sender: TObject);
begin
  fUnidade := TfUnidade.Create(Self);
  fUnidade.ShowModal;
end;

procedure TfMenuP.CadastroGeralTipoProdutoTipoMaterial1Click(
  Sender: TObject);
begin
  fCadastroSimples := TfCadastroSimples.Create(Self);
  fCadastroSimples.ShowModal;
end;

procedure TfMenuP.ConsultaContasaReceber1Click(Sender: TObject);
begin
  fConsCReceber := TfConsCReceber.Create(Self);
  fConsCReceber.ShowModal;
end;

procedure TfMenuP.EmbarqueDirioLote1Click(Sender: TObject);
begin
  fPrevEmbDiarioLote := TfPrevEmbDiarioLote.Create(Self);
  fPrevEmbDiarioLote.ShowModal;
end;

procedure TfMenuP.ContasaPagarNovo1Click(Sender: TObject);
begin
  fContasPagar2 := TfContasPagar2.Create(Self);
  fContasPagar2.ShowModal;
end;

procedure TfMenuP.Impostos1Click(Sender: TObject);
begin
  fImpostos := TfImpostos.Create(Self);
  fImpostos.ShowModal;
end;

procedure TfMenuP.Inventrio1Click(Sender: TObject);
begin
  fPrevInventario := TfPrevInventario.Create(Self);
  fPrevInventario.ShowModal;
end;

procedure TfMenuP.ConsultaFaturamento1Click(Sender: TObject);
begin
  fConsFaturamento := TfConsFaturamento.Create(Self);
  fConsFaturamento.ShowModal;
end;

procedure TfMenuP.ContasaReceberNovo1Click(Sender: TObject);
begin
  fContasReceber2 := TfContasReceber2.Create(Self);
  fContasReceber2.ShowModal;
end;

procedure TfMenuP.ipoProcesso1Click(Sender: TObject);
begin
  fTipoProcesso := TfTipoProcesso.Create(Self);
  fTipoProcesso.ShowModal;
end;

procedure TfMenuP.ConsultaPedidoPorProcesso1Click(Sender: TObject);
begin
  fConsPedido2 := TfConsPedido2.Create(Self);
  fConsPedido2.ShowModal;
end;

procedure TfMenuP.ConsultaCompras1Click(Sender: TObject);
begin
  fConsCompras := TfConsCompras.Create(Self);
  fConsCompras.ShowModal;
end;

procedure TfMenuP.NaturezadeOperaoQuantidade1Click(Sender: TObject);
begin
  fPrevNatOperacao := TfPrevNatOperacao.Create(Self);
  fPrevNatOperacao.ShowModal;
end;

procedure TfMenuP.ConsultaFaturamentoporGrupo1Click(Sender: TObject);
begin
  fConsFaturamentoGrupo := TfConsFaturamentoGrupo.Create(Self);
  fConsFaturamentoGrupo.ShowModal;
end;

procedure TfMenuP.LimiteCliente1Click(Sender: TObject);
begin
  fConsLimiteCredCliente := TfConsLimiteCredCliente.Create(Self);
  fConsLimiteCredCliente.ShowModal;
end;

procedure TfMenuP.ipoIndicao1Click(Sender: TObject);
begin
  fTipoIndicacao := TfTipoIndicacao.Create(Self);
  fTipoIndicacao.ShowModal;
end;

procedure TfMenuP.ConsultaMovimentoClienteFornecedor1Click(
  Sender: TObject);
begin
  fConsCliFornMov := TfConsCliFornMov.Create(Self);
  fConsCliFornMov.ShowModal;
end;

procedure TfMenuP.ConsultaNotasCanceladas1Click(Sender: TObject);
begin
  fConsNotaCancelada := TfConsNotaCancelada.Create(Self);
  fConsNotaCancelada.ShowModal;
end;

procedure TfMenuP.ConsultaPagamentosRecebimentos1Click(Sender: TObject);
begin
  fConsPagarReceber := TfConsPagarReceber.Create(Self);
  fConsPagarReceber.ShowModal;
end;

procedure TfMenuP.BitBtn1Click(Sender: TObject);
begin
  fVerificaContasRecPag := TfVerificaContasRecPag.Create(Self);
  fVerificaContasRecPag.ShowModal;
end;

procedure TfMenuP.ConsultaPagamentosDevolues1Click(Sender: TObject);
begin
  fConsContasPagar := TfConsContasPagar.Create(Self);
  fConsContasPagar.ShowModal;
end;

procedure TfMenuP.ClientessemComprasnoPerodo1Click(Sender: TObject);
begin
  fClientesAusentes := TfClientesAusentes.Create(Self);
  fClientesAusentes.ShowModal;
end;

procedure TfMenuP.SituaoTributriaIPI1Click(Sender: TObject);
begin
  fCSTIPI := TfCSTIPI.Create(Self);
  fCSTIPI.ShowModal;
end;

procedure TfMenuP.Pais1Click(Sender: TObject);
begin
  fPais := TfPais.Create(Self);
  fPais.ShowModal;
end;

procedure TfMenuP.CadastrodeItensdeAjusteComplementar1Click(
  Sender: TObject);
begin
  foutrosServicosNota := TfoutrosServicosNota.Create(Self);
  foutrosServicosNota.ShowModal;
end;

procedure TfMenuP.PercentualSimples1Click(Sender: TObject);
begin
  fPercSimples := TfPercSimples.Create(Self);
  fPercSimples.ShowModal;
end;

procedure TfMenuP.Fornecedor1Click(Sender: TObject);
begin
  fFornecedores := TfFornecedores.Create(Self);
  fFornecedores.ShowModal;
end;

procedure TfMenuP.ConsultaPedidoPendente1Click(Sender: TObject);
begin
  fConsPedidoPend := TfConsPedidoPend.Create(Self);
  fConsPedidoPend.ShowModal;
end;

procedure TfMenuP.RegimeTributrio1Click(Sender: TObject);
begin
  fRegimeTrib := TfRegimeTrib.Create(Self);
  fRegimeTrib.ShowModal;
end;

procedure TfMenuP.CSOSNClick(Sender: TObject);
begin
  fSitTributariaSimples := TfSitTributariaSimples.Create(Self);
  fSitTributariaSimples.ShowModal;
end;

procedure TfMenuP.abelaCofins1Click(Sender: TObject);
begin
  fTabCofins := TfTabCofins.Create(Self);
  fTabCofins.ShowModal;
end;

procedure TfMenuP.abelaPis1Click(Sender: TObject);
begin
  fTabPis := TfTabPis.Create(Self);
  fTabPis.ShowModal;
end;

procedure TfMenuP.OrigemMercadoria1Click(Sender: TObject);
begin
  fOrigemProd := TfOrigemProd.Create(Self);
  fOrigemProd.ShowModal;
end;

procedure TfMenuP.InutilizarNumeraodeNota1Click(Sender: TObject);
begin
  fNFeInutilizacao := TfNFeInutilizacao.Create(Self);
  fNFeInutilizacao.ShowModal;
end;

procedure TfMenuP.Duplicatas21Click(Sender: TObject);
begin
  fPrevDuplicatas2 := TfPrevDuplicatas2.Create(Self);
  fPrevDuplicatas2.ShowModal;
end;

procedure TfMenuP.MenuItem1Click(Sender: TObject);
var
  vPath : String;
begin
  vPath := ExtractFilePath(Application.ExeName) + 'NFeVisualizador.EXE';
  //winexec('C:\Delphi7\NFeVisualizador\EXE\NFeVisualizador.EXE',sw_shownormal);
  winexec(PChar(vPath),sw_shownormal);
end;

procedure TfMenuP.NotasPorNaturezadeOperao1Click(Sender: TObject);
begin
  fPrevNComprasNatOpe := TfPrevNComprasNatOpe.Create(Self);
  fPrevNComprasNatOpe.ShowModal;
end;

procedure TfMenuP.NotasdeEntradaPorProduto1Click(Sender: TObject);
begin
  fPrevNotasEnt := TfPrevNotasEnt.Create(Self);
  fPrevNotasEnt.ShowModal;
end;

procedure TfMenuP.CobranaEletrnica1Click(Sender: TObject);
begin
  fCobEletronicaC := TfCobEletronicaC.Create(Self);
  fCobEletronicaC.ShowModal;
end;

procedure TfMenuP.CupomFiscal1Click(Sender: TObject);
begin
  fCupomFiscalC := TfCupomFiscalC.Create(Self);
  fCupomFiscalC.ShowModal;
end;

procedure TfMenuP.ClienteTerceiro1Click(Sender: TObject);
begin
  fClienteTerceiroC := TfClienteTerceiroC.Create(Self);
  fClienteTerceiroC.ShowModal;
end;

procedure TfMenuP.Produtos2Click(Sender: TObject);
begin
  if dm1.tParametrosCartonagem.AsBoolean then
  begin
    fProdutoCartoC := TfProdutoCartoC.Create(Self);
    fProdutoCartoC.ShowModal;
  end
  else
  begin
    fProduto := TfProduto.Create(Self);
    fProduto.ShowModal;
  end;
end;

procedure TfMenuP.Posiesdomaterial1Click(Sender: TObject);
begin
  fPosicao := TfPosicao.Create(Self);
  fPosicao.ShowModal;
end;

procedure TfMenuP.ConsultaPlanoContasCentroCusto1Click(Sender: TObject);
begin
  fConsPlanoContas := TfConsPlanoContas.Create(Self);
  fConsPlanoContas.ShowModal;
end;

procedure TfMenuP.ConsultaAmostra1Click(Sender: TObject);
begin
  fConsAmostra := TfConsAmostra.Create(Self);
  fConsAmostra.ShowModal;
end;

procedure TfMenuP.ConsMovPedido1Click(
  Sender: TObject);
begin
  if DM1.tParametrosMovPedidoPorItem.AsBoolean then
  begin
    fConsMovPedido := TfConsMovPedido.Create(Self);
    fConsMovPedido.ShowModal;
  end
  else
  begin
    fConsMovPedido2 := TfConsMovPedido2.Create(Self);
    fConsMovPedido2.ShowModal;
  end;
end;

procedure TfMenuP.BitBtn2Click(Sender: TObject);
begin
  DM1.tCliente.Open;
  if MessageDlg('Gerar os clientes em FB?',mtconfirmation,[mbok,mbno],0)=mrok then
  begin
    DM1.tCliente.First;
    while not DM1.tCliente.Eof do
    begin
      Prc_Gravar_Cliente_FB(DM1.tClienteCodigo.AsInteger);

      DM1.tCliente.Next;
    end;
  end;

  DM1.tCliente.Close;

  ShowMessage('Cliente Convertido');
end;

procedure TfMenuP.ConverterProdutoLTXT1Click(Sender: TObject);
begin
  fConvProduto := TfConvProduto.Create(Self);
  fConvProduto.ShowModal;
end;

procedure TfMenuP.Filial1Click(Sender: TObject);
begin
  fFilial := TfFilial.Create(Self);
  fFilial.ShowModal;
end;

procedure TfMenuP.Facas1Click(Sender: TObject);
begin
  fFacaC := TfFacaC.Create(Self);
  fFacaC.ShowModal;
end;

procedure TfMenuP.Carteira1Click(Sender: TObject);
begin
  fCarteiraC := TfCarteiraC.Create(Self);
  fCarteiraC.ShowModal;
end;

procedure TfMenuP.CentrodeCusto1Click(Sender: TObject);
begin
  fCentroCusto := TfCentroCusto.Create(Self);
  fCentroCusto.ShowModal;
end;

procedure TfMenuP.BitBtn3Click(Sender: TObject);
begin
  fConvCPagar := TfConvCPagar.Create(Self);
  fConvCPagar.ShowModal;
end;

procedure TfMenuP.ColeoRefernci1Click(Sender: TObject);
begin
  fTipo_ProdutoC := TfTipo_ProdutoC.Create(Self);
  fTipo_ProdutoC.Tag := 1;
  fTipo_ProdutoC.ShowModal;
end;

procedure TfMenuP.ProdutoFornecedorReferncia1Click(Sender: TObject);
begin
  fTipo_ProdutoC := TfTipo_ProdutoC.Create(Self);
  fTipo_ProdutoC.Tag := 2;
  fTipo_ProdutoC.ShowModal;
end;

procedure TfMenuP.ipoProdutoReferncia1Click(Sender: TObject);
begin
  fTipo_ProdutoC := TfTipo_ProdutoC.Create(Self);
  fTipo_ProdutoC.Tag := 3;
  fTipo_ProdutoC.ShowModal;
end;

procedure TfMenuP.MaterialReferncia1Click(Sender: TObject);
begin
  fTipo_ProdutoC := TfTipo_ProdutoC.Create(Self);
  fTipo_ProdutoC.Tag := 4;
  fTipo_ProdutoC.ShowModal;
end;

procedure TfMenuP.CorReferncia1Click(Sender: TObject);
begin
  fTipo_ProdutoC := TfTipo_ProdutoC.Create(Self);
  fTipo_ProdutoC.Tag := 5;
  fTipo_ProdutoC.ShowModal;
end;

procedure TfMenuP.MatrizLocalizao1Click(Sender: TObject);
begin
  fMatriz_LocC := TfMatriz_LocC.Create(Self);
  fMatriz_LocC.ShowModal;
end;

procedure TfMenuP.BitBtn4Click(Sender: TObject);
begin
  fAgenda := TfAgenda.Create(Self);
  fAgenda.ShowModal;
end;

procedure TfMenuP.ProcessoMetalrgica1Click(Sender: TObject);
begin
  fProcessoC := TfProcessoC.Create(Self);
  fProcessoC.ShowModal;
end;

procedure TfMenuP.BitBtn5Click(Sender: TObject);
begin
  DM1.tFilial.Open;
  DM1.tEstoqueMatMov.Open;
  if MessageDlg('Gerar o estoque em FB?',mtconfirmation,[mbok,mbno],0)=mrok then
  begin
    DM1.tFilial.First;
    while not DM1.tFilial.Eof do
    begin
      DM1.tEstoqueMatMov.First;
      while not DM1.tEstoqueMatMov.Eof do
      begin
        Prc_Gravar_Estoque_Mov_FB(DM1.tEstoqueMatMovFilial.AsInteger,DM1.tEstoqueMatMovNumMov.AsInteger);

        DM1.tEstoqueMatMov.Next;
      end;

      DM1.tFilial.Next;
    end;
  end;

  DM1.tEstoqueMatMov.Close;

  ShowMessage('Estoque gerado em FB!');
end;

procedure TfMenuP.EmailsAdicionaisdaNFe1Click(Sender: TObject);
begin
  fNFeEmailC := TfNFeEmailC.Create(Self);
  fNFeEmailC.ShowModal;
end;

procedure TfMenuP.MarcaReferncia1Click(Sender: TObject);
begin
  fTipo_ProdutoC := TfTipo_ProdutoC.Create(Self);
  fTipo_ProdutoC.Tag := 6;
  fTipo_ProdutoC.ShowModal;
end;

procedure TfMenuP.RepresentanteMetas1Click(Sender: TObject);
begin
  fVendedorMetaC := TfVendedorMetaC.Create(Self);
  fVendedorMetaC.ShowModal;
end;

procedure TfMenuP.ConsultaHistricoPedido1Click(Sender: TObject);
begin
  fHistPedido := TfHistPedido.Create(Self);
  fHistPedido.ShowModal;
end;

procedure TfMenuP.ConsultaCdigodeBarras1Click(Sender: TObject);
begin
  fConsCBarra := TfConsCBarra.Create(Self);
  fConsCBarra.ShowModal;
end;

procedure TfMenuP.EtiquetaCaixaIndividual1Click(Sender: TObject);
begin
  fEtiqCx := TfEtiqCx.Create(Self);
  fEtiqCx.ShowModal;
end;

procedure TfMenuP.EtiquetaRtulo1Click(Sender: TObject);
begin
  fEtiqRotulo := TfEtiqRotulo.Create(Self);
  fEtiqRotulo.ShowModal;
end;

procedure TfMenuP.EtiquetaCaixaIndividualNovo1Click(Sender: TObject);
begin
  fEtiquetaCaixaInd := TfEtiquetaCaixaInd.Create(Self);
  fEtiquetaCaixaInd.ShowModal;
end;

procedure TfMenuP.abelaIBPT1Click(Sender: TObject);
begin
  fTabIBPTC := TfTabIBPTC.Create(Self);
  fTabIBPTC.ShowModal;
end;

initialization
  RLConsts.SetVersion(3,72,'B');

end.
