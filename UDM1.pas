Unit UDM1;

interface

uses                     
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBTables, DBIProcs, RLFilters, RLDraftFilter, Mask,
  RLHTMLFilter, RLXLSFilter, RLPreviewForm, RLPDFFilter, SMDBGrid, DBFilter, MidasLib, RLRichFilter, SendMailOptions, StdConvs,
  DateUtils, rsDataSetError;

type
  TDM1 = class(TDataModule)
    Tabelas: TDatabase;
    tGrupo: TTable;
    dsGrupo: TDataSource;
    tGrupoCodigo: TIntegerField;
    tGrupoNome: TStringField;
    tUsuario: TTable;
    dsUsuario: TDataSource;
    tUsuarioAlt: TTable;
    dsUsuarioAlt: TDataSource;
    tUsuarioExc: TTable;
    dsUsuarioExc: TDataSource;
    tUsuarioIns: TTable;
    dsUsuarioIns: TDataSource;
    tFornecedores: TTable;
    dsFornecedores: TDataSource;
    tFornecedoresCodForn: TIntegerField;
    tFornecedoresEndForn: TStringField;
    tFornecedoresBairroForn: TStringField;
    tFornecedoresCidadeForn: TStringField;
    tFornecedoresCEPForn: TStringField;
    tFornecedoresEstadoForn: TStringField;
    tFornecedoresTel1Forn: TStringField;
    tFornecedoresTel2Forn: TStringField;
    tFornecedoresFaxForn: TStringField;
    tFornecedoresCGC: TStringField;
    tFornecedoresInsc: TStringField;
    tFornecedoresContatoForn: TStringField;
    tFornecedoresDataCadastroForn: TDateField;
    tFornecedoresRamal: TStringField;
    tGrade: TTable;
    dsGrade: TDataSource;
    tGradeCodigo: TIntegerField;
    tGradeNome: TStringField;
    tGradeItem: TTable;
    dsGradeItem: TDataSource;
    tGradeItemCodGrade: TIntegerField;
    tGradeItemPosicao: TIntegerField;
    tGradeItemTamanho: TStringField;
    tCor: TTable;
    dsCor: TDataSource;
    tCorCodigo: TIntegerField;
    tCondPgto: TTable;
    dsCondPgto: TDataSource;
    tCondPgtoCodigo: TIntegerField;
    tCondPgtoNome: TStringField;
    tCondPgtoItem: TTable;
    dsCondPgtoItem: TDataSource;
    tCondPgtoItemCodigo: TIntegerField;
    tCondPgtoItemItem: TIntegerField;
    tCondPgtoItemQtdDias: TSmallintField;
    tTransp: TTable;
    dsTransp: TDataSource;
    tTranspCodigo: TIntegerField;
    tTranspNome: TStringField;
    tTranspEndereco: TStringField;
    tTranspBairro: TStringField;
    tTranspCidade: TStringField;
    tTranspCep: TStringField;
    tTranspUF: TStringField;
    tTranspFone: TStringField;
    tTranspFax: TStringField;
    tTranspCNPJ: TStringField;
    tTranspInscricao: TStringField;
    tTranspContato: TStringField;
    tTranspObs: TMemoField;
    tOrdemCompra: TTable;
    dsOrdemCompra: TDataSource;
    tOrdemCompraCodFornecedor: TIntegerField;
    tOrdemCompraCodCondPgto: TIntegerField;
    tOrdemCompraCodTransp: TIntegerField;
    tOrdemCompraDtEmissao: TDateField;
    tOrdemCompraObs: TMemoField;
    tOrdemCompraVlrTotal: TFloatField;
    tOrdemCompraItem: TTable;
    dsOrdemCompraItem: TDataSource;
    tOrdemCompraCodigo: TIntegerField;
    tOrdemCompraItemCodigo: TIntegerField;
    tOrdemCompraItemItem: TIntegerField;
    tOrdemCompraItemCodMaterial: TIntegerField;
    tOrdemCompraItemQtd: TFloatField;
    tOrdemCompraItemVlrUnitario: TFloatField;
    tOrdemCompraItemAliqIPI: TFloatField;
    tOrdemCompraItemVlrIPI: TFloatField;
    tOrdemCompraItemDtEntrega: TDateField;
    tOrdemCompraItemVlrTotal: TFloatField;
    tOrdemCompraItemCodCor: TIntegerField;
    tOrdemCompraItemGrade: TTable;
    dsOrdemCompraItemGrade: TDataSource;
    tOrdemCompraItemGradeCodigo: TIntegerField;
    tOrdemCompraItemGradeItem: TIntegerField;
    tOrdemCompraItemGradeCodGrade: TIntegerField;
    tOrdemCompraItemGradePosicao: TIntegerField;
    tOrdemCompraItemGradeQtd: TFloatField;
    tOrdemCompraItemGradeVlrUnitario: TFloatField;
    tOrdemCompraItemGradeVlrTotal: TFloatField;
    tOrdemCompraItemGradelkTamanho: TStringField;
    tOrdemCompraItemlkNomeMaterial: TStringField;
    tFornecedoresCodCondPgto: TIntegerField;
    tCondPgtoPrazoVista: TStringField;
    tEmpresa: TTable;
    dsEmpresa: TDataSource;
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
    tOrdemCompraItemlkLancaGrade: TBooleanField;
    tOrdemCompraItemlkPrecoGrade: TBooleanField;
    tClasFiscal: TTable;
    dsClasFiscal: TDataSource;
    tClasFiscalClasFiscal: TStringField;
    tSitTributaria: TTable;
    dsSitTributaria: TDataSource;
    tSitTributariaCodigo: TIntegerField;
    tSitTributariaSitTributaria: TFloatField;
    tSitTributariaHistorico: TMemoField;
    tProduto: TTable;
    dsProduto: TDataSource;
    tProdutoCodigo: TIntegerField;
    tProdutoCodGrupo: TIntegerField;
    tProdutoCodSubGrupo: TIntegerField;
    tProdutoNome: TStringField;
    tProdutoUnidade: TStringField;
    tProdutoCodSitTrib: TIntegerField;
    tProdutoQParTalao: TFloatField;
    tProdutoPesoLiquido: TFloatField;
    tProdutoPesoBruto: TFloatField;
    tProdutoCodClasFiscal: TStringField;
    tProdutoCodGrade: TIntegerField;
    tProdutoCor: TTable;
    dsProdutoCor: TDataSource;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoLancaGrade: TBooleanField;
    tProdutoInativo: TBooleanField;
    tProdutoMat: TTable;
    dsProdutoMat: TDataSource;
    tProdutoMatCodProduto: TIntegerField;
    tProdutoMatItem: TIntegerField;
    tProdutoMatCodMaterial: TIntegerField;
    tProdutoMatCodGrade: TIntegerField;
    tProdutoMatCodCor: TIntegerField;
    tProdutoMatQtd: TFloatField;
    tProdutoMatVlrUnitario: TFloatField;
    tProdutoMatVlrTotal: TFloatField;
    tProdutoMatlkNomeMaterial: TStringField;
    tVendedor: TTable;
    dsVendedor: TDataSource;
    dsVendedor2: TDataSource;
    tVendedor2Codigo: TIntegerField;
    tVendedor2Nome: TStringField;
    tVendedor2PercComissao: TFloatField;
    tVendedorCodigo: TIntegerField;
    tVendedorNome: TStringField;
    tVendedorPercComissao: TFloatField;
    tNatOperacao: TTable;
    dsNatOperacao: TDataSource;
    tNatOperacaoCodigo: TIntegerField;
    tNatOperacaoCodNatOper: TStringField;
    tNatOperacaoDescricao: TStringField;
    tNatOperacaoEntradaSaida: TBooleanField;
    tNatOperacao2: TTable;
    dsNatOperacao2: TDataSource;
    tNatOperacao2Codigo: TIntegerField;
    tNatOperacao2CodNatOper: TStringField;
    tNatOperacao2Descricao: TStringField;
    tNatOperacao2EntradaSaida: TBooleanField;
    tPedido: TTable;
    dsPedido: TDataSource;
    tPedidoDesconto: TTable;
    dsPedidoDesconto: TDataSource;
    tPedidoGrade: TTable;
    dsPedidoGrade: TDataSource;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    tPedidoMaterial: TTable;
    dsPedidoMaterial: TDataSource;
    tPedidoPedido: TIntegerField;
    tPedidoDtEmissao: TDateField;
    tPedidoCodCliente: TIntegerField;
    tPedidoCodTransp: TIntegerField;
    tPedidoCodRedespacho: TIntegerField;
    tPedidoCodCondPgto: TIntegerField;
    tPedidoTipoFrete: TStringField;
    tPedidoCodVendedor: TIntegerField;
    tPedidoPercComissao: TFloatField;
    tPedidoDtIniEmbarque: TDateField;
    tPedidoDtFinEmbarque: TDateField;
    tPedidoCodNatOper: TIntegerField;
    tPedidoSituacao: TIntegerField;
    tPedidoDescontoPedido: TIntegerField;
    tPedidoDescontoItem: TIntegerField;
    tPedidoDescontoPercDesconto: TFloatField;
    tPedidoDescontoVlrDesconto: TFloatField;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradeQtd: TFloatField;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoMaterialPedido: TIntegerField;
    tPedidoMaterialItemPed: TIntegerField;
    tPedidoMaterialOrdem: TIntegerField;
    tPedidoMaterialCodCor: TIntegerField;
    tPedidoMaterialCodMaterial: TIntegerField;
    tPedidoMaterialConsumoPr: TFloatField;
    tCliente: TTable;
    dsCliente: TDataSource;
    tPedidoQtdPares: TFloatField;
    tPedidoVlrTotal: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tClienteCodigo: TIntegerField;
    tClienteNome: TStringField;
    tClienteEndereco: TStringField;
    tClienteBairro: TStringField;
    tClienteCidade: TStringField;
    tClienteUf: TStringField;
    tClienteTelefone: TStringField;
    tClienteTelefone2: TStringField;
    tClienteFax: TStringField;
    tClientePessoa: TStringField;
    tClienteCgcCpf: TStringField;
    tClienteInscrEst: TStringField;
    tClienteContato: TStringField;
    tPedidoGradeVlrUnitario: TFloatField;
    tPedidoGradeVlrTotal: TFloatField;
    tPedidoMateriallkNomeMaterial: TStringField;
    tPedidoVlrMercadoria: TFloatField;
    tPedidoVlrDesconto: TFloatField;
    tPedidolkNomeVendedor: TStringField;
    tPedidolkNomeCliente: TStringField;
    tClienteAprovCredito: TStringField;
    tClienteTipoAprov: TStringField;
    tSetor: TTable;
    dsSetor: TDataSource;
    tSetorCodigo: TIntegerField;
    tSetorNome: TStringField;
    tPedidoMateriallkUnidade: TStringField;
    tPedidoMateriallkCodGrade: TIntegerField;
    tSetorImpTalao: TBooleanField;
    tCorNome: TStringField;
    tOrdemCompraItemlkNomeCor: TStringField;
    tProdutoMatlkNomeCor: TStringField;
    tPedidoItemlkCor: TStringField;
    tPedidoMateriallkNomeCor: TStringField;
    tPedidolkEndereco: TStringField;
    tPedidolkBairro: TStringField;
    tPedidolkTransp: TStringField;
    tPedidolkTelefone: TStringField;
    tPedidolkFax: TStringField;
    tPedidolkUf: TStringField;
    tPedidolkCgcCpf: TStringField;
    tPedidolkInscrEst: TStringField;
    tPedidolkCondPgto: TStringField;
    tPedidoMateriallkLancaGrade: TBooleanField;
    tPedidoCancelado: TBooleanField;
    tPedidoImpresso: TBooleanField;
    tPedido2: TTable;
    dsPedido2: TDataSource;
    tPedido2Pedido: TIntegerField;
    tPedido2DtEmissao: TDateField;
    tPedido2CodCliente: TIntegerField;
    tPedido2CodTransp: TIntegerField;
    tPedido2CodRedespacho: TIntegerField;
    tPedido2CodCondPgto: TIntegerField;
    tPedido2TipoFrete: TStringField;
    tPedido2CodVendedor: TIntegerField;
    tPedido2PercComissao: TFloatField;
    tPedido2DtIniEmbarque: TDateField;
    tPedido2DtFinEmbarque: TDateField;
    tPedido2CodNatOper: TIntegerField;
    tPedido2Situacao: TIntegerField;
    tPedido2QtdPares: TFloatField;
    tPedido2VlrTotal: TFloatField;
    tPedido2VlrMercadoria: TFloatField;
    tPedido2VlrDesconto: TFloatField;
    tPedido2Cancelado: TBooleanField;
    tPedido2Impresso: TBooleanField;
    tPedidoItemCancelado: TBooleanField;
    tTipoCobranca: TTable;
    tHistorico: TTable;
    dsTipoCobranca: TDataSource;
    dsHistorico: TDataSource;
    tTipoCobrancaCodigo: TIntegerField;
    tTipoCobrancaNome: TStringField;
    tHistoricoCodigo: TIntegerField;
    tPedidoPesoBruto: TFloatField;
    tPedidoPesoLiquido: TFloatField;
    tPedidoItemlkPesoBruto: TFloatField;
    tPedidoItemlkPesoLiquido: TFloatField;
    tNotaFiscal: TTable;
    dsNotaFiscal: TDataSource;
    tNotaFiscalNumNota: TIntegerField;
    tNotaFiscalDtEmissao: TDateField;
    tNotaFiscalCodNatOper: TSmallintField;
    tNotaFiscalCodCli: TIntegerField;
    tNotaFiscalCondPgto: TStringField;
    tNotaFiscalCodVendedor: TIntegerField;
    tNotaFiscalBaseIcms: TFloatField;
    tNotaFiscalVlrIcms: TFloatField;
    tNotaFiscalVlrIpi: TFloatField;
    tNotaFiscalVlrTotalNota: TFloatField;
    tNotaFiscalVlrTotalItens: TFloatField;
    tNotaFiscalPercDesc: TFloatField;
    tNotaFiscalVlrTotalDesc: TFloatField;
    tNotaFiscalVlrFrete: TFloatField;
    tNotaFiscalVlrSeguro: TFloatField;
    tNotaFiscalOutrasDesp: TFloatField;
    tNotaFiscalQtd: TIntegerField;
    tNotaFiscalEspecie: TStringField;
    tNotaFiscalMarca: TStringField;
    tNotaFiscalNumero: TStringField;
    tNotaFiscalPesoBruto: TFloatField;
    tNotaFiscalPesoLiquido: TFloatField;
    tNotaFiscalPlaca: TStringField;
    tNotaFiscalUFPlaca: TStringField;
    tNotaFiscalEmitDest: TStringField;
    tNotaFiscalCodTransp: TIntegerField;
    tNotaFiscalObs: TMemoField;
    tNotaFiscalSaidaEntrada: TStringField;
    tNotaFiscalCancelada: TBooleanField;
    tNotaFiscalDtSaidaEnt: TDateField;
    tNotaFiscalHoraSaida: TTimeField;
    tNotaFiscalTipoCobr: TStringField;
    tNotaFiscalBcoCobr: TIntegerField;
    tNotaFiscalImpressa: TBooleanField;
    tNotaFiscalLocalEntrega: TBooleanField;
    tNotaFiscalInss: TBooleanField;
    tNotaFiscalIrf: TBooleanField;
    tNotaFiscalVlrInss: TFloatField;
    tNotaFiscalVlrIrf: TFloatField;
    tNotaFiscalCustoPerc: TFloatField;
    tNotaFiscalCustoFinanc: TFloatField;
    tNotaFiscalEntrada: TFloatField;
    tNotaFiscalPercComissao: TFloatField;
    tNotaFiscalDtEntr: TDateField;
    tNotaFiscalIcmsIpi: TBooleanField;
    tNotaFiscalPlanoContas: TIntegerField;
    tCReceberParc: TTable;
    dsCReceberParc: TDataSource;
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
    tIndexador: TTable;
    dsIndexador: TDataSource;
    tIndexadorData: TDateField;
    tIndexadorTaxa: TFloatField;
    tUF: TTable;
    dsUF: TDataSource;
    tUFSigla: TStringField;
    tUFPercentual: TFloatField;
    tNotaFiscalItens: TTable;
    dsNotaFiscalItens: TDataSource;
    tNotaFiscalItensNumNota: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensCodProduto: TIntegerField;
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
    tNotaFiscalParc: TTable;
    dsNotaFiscalParc: TDataSource;
    tNotaFiscalParcParcela: TSmallintField;
    tNotaFiscalParcDtVenc: TDateField;
    tNotaFiscalParcVlrVenc: TFloatField;
    tParametros: TTable;
    dsParametros: TDataSource;
    tContas: TTable;
    dsContas: TDataSource;
    tContasCodConta: TIntegerField;
    tContasNomeConta: TStringField;
    tContasSaldoConta: TFloatField;
    tContasTipoConta: TStringField;
    tMovimentos: TTable;
    dsMovimentos: TDataSource;
    tMovimentosCodConta: TIntegerField;
    tMovimentosNumMovimento: TAutoIncField;
    tMovimentosNumCReceber: TIntegerField;
    tMovimentosNumCPagar: TIntegerField;
    tMovimentosNumPedVenda: TIntegerField;
    tMovimentosDtMovimento: TDateField;
    tMovimentosVlrMovDebito: TFloatField;
    tMovimentosVlrMovCredito: TFloatField;
    tMovimentosHistorico: TStringField;
    tMovimentosNumChequePag: TIntegerField;
    tMovimentosPlanoContas: TIntegerField;
    tMovimentosNumNota: TIntegerField;
    tMovimentosCodCli: TIntegerField;
    tMovimentosCodForn: TIntegerField;
    tMovimentosNumNotaEnt: TIntegerField;
    tMovimentosSaldoCliente: TFloatField;
    tMovimentosSaldoFornecedor: TFloatField;
    tMovimentosSaldoPlanoContas: TFloatField;
    tMovimentosSaldoConta: TFloatField;
    tCReceber: TTable;
    dsCReceber: TDataSource;
    tCReceberNumCReceber: TIntegerField;
    tCReceberNumNota: TIntegerField;
    tCReceberQuitado: TBooleanField;
    tCReceberCodCli: TIntegerField;
    tCReceberTipoDoc: TStringField;
    tCReceberDtGerado: TDateField;
    tCReceberHistorico: TStringField;
    tPlanoContas: TTable;
    dsPlanoContas: TDataSource;
    tPlanoContasCodigo: TIntegerField;
    tPlanoContasDescricao: TStringField;
    tCPagar: TTable;
    dsCPagar: TDataSource;
    tCPagarParc: TTable;
    dsCPagarParc: TDataSource;
    tCPagarNumCPagar: TIntegerField;
    tCPagarNumNotaEnt: TIntegerField;
    tCPagarCodForn: TIntegerField;
    tCPagarQuitado: TBooleanField;
    tCPagarTipoDoc: TStringField;
    tCPagarDtGerado: TDateField;
    tCPagarHistorico: TStringField;
    tCondPgtoCusto: TFloatField;
    tCondPgtoEntrada: TBooleanField;
    tPedido2PesoBruto: TFloatField;
    tPedido2PesoLiquido: TFloatField;
    tPedido2Copiado: TBooleanField;
    tPedidoCopiado: TBooleanField;
    tNotaFiscallkUf: TStringField;
    tNotaFiscallkNomeCli: TStringField;
    tNotaFiscallkDescNatOper: TStringField;
    tNotaFiscallkCgcCli: TStringField;
    tNotaFiscallkEndCli: TStringField;
    tNotaFiscallkBairroCli: TStringField;
    tNotaFiscallkTelCli: TStringField;
    tNotaFiscallkInscCli: TStringField;
    tNotaFiscallkNomeTransp: TStringField;
    tNotaFiscallkCgcTransp: TStringField;
    tNotaFiscallkEndTransp: TStringField;
    tNotaFiscallkInscTransp: TStringField;
    tCPagarlkNomeForn: TStringField;
    tCReceberlkNomeCli: TStringField;
    tClienteEndEntrega: TStringField;
    tClienteBairroEntrega: TStringField;
    tClienteCidEntrega: TStringField;
    tClienteUfEntrega: TStringField;
    tClienteCgcCpfEntrega: TStringField;
    tClienteInscEntrega: TStringField;
    tNotaFiscallkEndEntrega: TStringField;
    tNotaFiscallkBairroEntrega: TStringField;
    tNotaFiscallkUfEntrega: TStringField;
    tNEntradaParc: TTable;
    dsNEntradaParc: TDataSource;
    tNEntradaParcCodForn: TIntegerField;
    tNEntradaParcNumNEntr: TIntegerField;
    tNEntradaParcParcela: TSmallintField;
    tNEntradaParcDtVenc: TDateField;
    tNEntradaParcVlrVenc: TFloatField;
    tNEntradaParcBanco: TStringField;
    tNEntradaParcCheque: TStringField;
    tNEntrada: TTable;
    dsNEntrada: TDataSource;
    tNEntradaNumNEntr: TIntegerField;
    tNEntradaCodForn: TIntegerField;
    tNEntradaNumOC: TIntegerField;
    tNEntradaCondPgto: TStringField;
    tNEntradaDtEmissaoNEntr: TDateField;
    tNEntradaDtEntrada: TDateField;
    tNEntradaVlrTotalNEntr: TFloatField;
    tNEntradaBaseIcms: TFloatField;
    tNEntradaVlrIcms: TFloatField;
    tNEntradaVlrIpi: TFloatField;
    tNEntradaCodNatOper: TSmallintField;
    tNEntradaIcmsIpi: TBooleanField;
    tNEntradaPlanoContas: TIntegerField;
    tNEntradaItensMobra: TTable;
    dsNEntradaItensMobra: TDataSource;
    tNEntradaItensMobraCodForn: TIntegerField;
    tNEntradaItensMobraNumNEntr: TIntegerField;
    tNEntradaItensMobraItem: TSmallintField;
    tNEntradaItensMobraCodigo: TSmallintField;
    tNEntradaItensMobraDescricao: TStringField;
    tNEntradaItensMobraQtd: TFloatField;
    tNEntradaItensMobraAliquota: TFloatField;
    tNEntradaItensMobraVlrUnit: TFloatField;
    tNEntradaItensMobraVlrTotal: TFloatField;
    tNEntradaItensMobraVlrIssqn: TFloatField;
    tNEntradaItensMobraInss: TFloatField;
    tNEntradaItensMobraIrf: TFloatField;
    tNEntradaItens: TTable;
    dsNEntradaItens: TDataSource;
    tNEntradaItensCodForn: TIntegerField;
    tNEntradaItensNumNEntr: TIntegerField;
    tNEntradaItensItem: TSmallintField;
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
    tNEntradalkNomeForn: TStringField;
    tNEntradalkUf: TStringField;
    tProdutoAliqIcms: TFloatField;
    tProdutoAliqIPI: TFloatField;
    tNotaFiscalItensCodCor: TIntegerField;
    tNotaFiscalItenslkNomeCor: TStringField;
    tNotaFiscalPrazoPgto: TIntegerField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemCopiado: TBooleanField;
    tNotaFiscalItensNumPedido: TIntegerField;
    tPedidoItemQtdParesCanc: TFloatField;
    tNotaFiscallkPessoa: TStringField;
    tCReceberParcHist: TTable;
    dsCReceberParcHist: TDataSource;
    tCReceberParcHistNumCReceber: TIntegerField;
    tCReceberParcHistParcCReceber: TIntegerField;
    tCReceberParcHistItem: TIntegerField;
    tCReceberParcHistCodHistorico: TIntegerField;
    tCReceberParcHistDtHistorico: TDateField;
    tFornecedoreslkCondPgto: TStringField;
    tPedidolkRedespacho: TStringField;
    tClienteEndPgto: TStringField;
    tClienteBairroPgto: TStringField;
    tClienteCidPgto: TStringField;
    tClienteUfPgto: TStringField;
    tClienteFantasia: TStringField;
    tClienteDtCadastro: TDateField;
    tNotaFiscallkEndPgto: TStringField;
    tNotaFiscallkBairroPgto: TStringField;
    tNotaFiscallkUfPgto: TStringField;
    tNotaFiscalSituacao: TIntegerField;
    tProdutoMatCodCorProd: TIntegerField;
    tImpressora: TTable;
    tImpressoraCodigo: TIntegerField;
    tImpressoraNome: TStringField;
    tImpressoraEndereco: TStringField;
    dsImpressora: TDataSource;
    tNatOperacaoIpi: TBooleanField;
    tNatOperacaoIcms: TBooleanField;
    tNatOperacao2Ipi: TBooleanField;
    tNatOperacao2Icms: TBooleanField;
    tOrdemCompralkFornecedor: TStringField;
    tOrdemCompralkFone: TStringField;
    tOrdemCompralkEnd: TStringField;
    tOrdemCompralkCep: TStringField;
    tOrdemCompralkBairro: TStringField;
    tOrdemCompralkCidade: TStringField;
    tOrdemCompralkEstado: TStringField;
    tVendedorEndereco: TStringField;
    tVendedorBairro: TStringField;
    tVendedorCidade: TStringField;
    tVendedorEstado: TStringField;
    tVendedorCep: TStringField;
    tVendedorFone: TStringField;
    tVendedorFax: TStringField;
    tVendedorPessoa: TStringField;
    tVendedorCgcCpf: TStringField;
    tVendedorInscEst: TStringField;
    tPedidoObs: TMemoField;
    tNotaFiscalItenslkPesoBruto: TFloatField;
    tNotaFiscalItenslkPesoLiquido: TFloatField;
    tPedidolkPrazoVista: TStringField;
    tNotaFiscalItensItemPedido: TIntegerField;
    tPedidoItemVlrDesconto: TFloatField;
    tVendedor2Endereco: TStringField;
    tVendedor2Bairro: TStringField;
    tVendedor2Cidade: TStringField;
    tVendedor2Estado: TStringField;
    tVendedor2Cep: TStringField;
    tVendedor2Fone: TStringField;
    tVendedor2Fax: TStringField;
    tVendedor2Pessoa: TStringField;
    tVendedor2CgcCpf: TStringField;
    tVendedor2InscEst: TStringField;
    tNotaFiscallkNomeVendedor: TStringField;
    tClienteCodVendedor: TIntegerField;
    tClientelkComissao: TFloatField;
    tCReceberParcTitPortador: TStringField;
    tCReceberParcCodTipoCobranca: TIntegerField;
    tCReceberParcDespesas: TFloatField;
    tCReceberParcAbatimentos: TFloatField;
    tNotaFiscalItensDescricao: TStringField;
    tHistoricoNome: TStringField;
    tCReceberParcHistHistorico: TStringField;
    tCReceberlkTipoAprovacao: TStringField;
    tCReceberParcclDiasAtraso: TIntegerField;
    tContasCodBanco: TStringField;
    tCReceberParcCodConta: TIntegerField;
    tNatOperacaoLei: TMemoField;
    tCReceberParclkCodBanco: TStringField;
    tCReceberParcPgCartorio: TBooleanField;
    tNotaFiscalItensUnidade: TStringField;
    tClienteObsCtas: TMemoField;
    tCReceberParcDiasAtraso: TFloatField;
    tJuros: TTable;
    dsJuros: TDataSource;
    tJurosAno: TIntegerField;
    tJurosMes: TIntegerField;
    tJurosJuro: TFloatField;
    tCReceberParcLetraCambio: TBooleanField;
    tRegioes: TTable;
    dsRegioes: TDataSource;
    tRegioesCodigo: TIntegerField;
    tRegioesNome: TStringField;
    tClienteLojas: TIntegerField;
    tVendedorRegioes: TIntegerField;
    tNEntradaParcNroDuplicata: TIntegerField;
    tCPagarNroDuplicata: TIntegerField;
    tNEntradaItensCodMaterial: TIntegerField;
    tNEntradaItenslkNomeMaterial: TStringField;
    tNEntradaNroDuplicata: TIntegerField;
    tNEntradaItensGrade: TTable;
    dsNEntradaItensGrade: TDataSource;
    tNEntradaItensGradeCodForn: TIntegerField;
    tNEntradaItensGradeNumNEntr: TIntegerField;
    tNEntradaItensGradeItem: TIntegerField;
    tNEntradaItensGradeCodGrade: TIntegerField;
    tNEntradaItensGradePosicao: TIntegerField;
    tNEntradaItensGradeQtd: TFloatField;
    tNEntradaItensGradeVlrUnitario: TFloatField;
    tNEntradaItensGradeVlrTotal: TFloatField;
    tNEntradaItensCodCor: TIntegerField;
    tNEntradaItenslkCor: TStringField;
    tVendedorTipoComissao: TStringField;
    tVendedorPercImpRenda: TFloatField;
    tParametrosIcmsIpi: TBooleanField;
    tParametrosVlrLimImpRenda: TFloatField;
    tNotaFiscallkTipoAprovCli: TStringField;
    tCReceberParcAgencia: TStringField;
    tPedidoItemSitTrib: TSmallintField;
    tNatOperacaoUsada: TStringField;
    tExtComissao: TTable;
    dsExtComissao: TDataSource;
    tExtComissaoNroLancamento: TIntegerField;
    tExtComissaoCodVendedor: TIntegerField;
    tExtComissaoDtReferencia: TDateField;
    tExtComissaoNroDoc: TIntegerField;
    tExtComissaoParcDoc: TIntegerField;
    tExtComissaoCodCliente: TIntegerField;
    tExtComissaoFuncao: TStringField;
    tExtComissaoVlrBase: TFloatField;
    tExtComissaoPercDescDupl: TFloatField;
    tExtComissaoPercComissao: TFloatField;
    tExtComissaoVlrComissao: TFloatField;
    tExtComissaoTipo: TStringField;
    tExtComissaoSuspensa: TBooleanField;
    tExtComissaolkNomeVendedor: TStringField;
    tNotaFiscalNroLancExtComissao: TIntegerField;
    tNotaFiscallkTipoComissao: TStringField;
    tProdutoNomeExp: TStringField;
    tPedido2Obs: TMemoField;
    tVendedorSelecionado: TBooleanField;
    tVendedor2Regioes: TIntegerField;
    tVendedor2TipoComissao: TStringField;
    tVendedor2PercImpRenda: TFloatField;
    tVendedor2Selecionado: TBooleanField;
    tVendedor2: TTable;
    tClienteSelecionado: TBooleanField;
    tPedidoQtdParesFat: TFloatField;
    tPedidoQtdParesRest: TFloatField;
    tPedido2QtdParesCanc: TFloatField;
    tPedido2QtdParesFat: TFloatField;
    tPedido2QtdParesRest: TFloatField;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaDtNota: TDateField;
    tPedidoNotaNumNota: TIntegerField;
    tImpressoraVisualizar: TBooleanField;
    tImpressoraPrograma: TStringField;
    tNotaFiscalTipoNota: TStringField;
    tVendedorContato: TStringField;
    tCReceberParcHistDtUltPgto: TDateField;
    tCReceberParcHistVlrUltPgto: TFloatField;
    tCReceberParcHistVlrUltJuros: TFloatField;
    tCReceberParcHistVlrUltDescontos: TFloatField;
    tCReceberParcHistVlrUltDespesas: TFloatField;
    tCReceberParcHistVlrUltAbatimentos: TFloatField;
    tCReceberParcHistPgto: TBooleanField;
    tCReceberParclkTipoCobranca: TStringField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoQtdFatAut: TFloatField;
    tPedidoQtdFatMan: TFloatField;
    tPedido2QtdFatAut: TFloatField;
    tPedido2QtdFatMan: TFloatField;
    tExtComissaolkCliente: TStringField;
    tCReceberParclkTipoComissao: TStringField;
    tNotaFiscalDescricaoDesc: TStringField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tNotaFiscalExtComDif: TIntegerField;
    tCReceberParcJurosPagos: TFloatField;
    tNotaFiscallkCodNatOper: TIntegerField;
    tNotaFiscalItensComissaoMod: TFloatField;
    tNotaFiscalItensCodComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    tPedidoItemlkUnidade: TStringField;
    tCReceberParclkVendedor: TStringField;
    tFornecedoresFantasia: TStringField;
    tNEntradaOutrasDesp: TFloatField;
    tNEntradaTotalParcelas: TIntegerField;
    tNEntradaItensUnidade: TStringField;
    tCReceberParcHistJurosPagos: TFloatField;
    tNEntradaCodNatOper2: TIntegerField;
    tNEntradaItensMobraCodNatOper: TIntegerField;
    tCPagarParcHist: TTable;
    tCPagarParcHistNumCPagar: TIntegerField;
    tCPagarParcHistParcCPagar: TIntegerField;
    tCPagarParcHistItem: TIntegerField;
    tCPagarParcHistCodHistorico: TIntegerField;
    tCPagarParcHistDtHistorico: TDateField;
    tCPagarParcHistHistorico: TStringField;
    tCPagarParcHistDtUltPgto: TDateField;
    tCPagarParcHistVlrUltPgto: TFloatField;
    tCPagarParcHistVlrUltJuros: TFloatField;
    tCPagarParcHistVlrUltDescontos: TFloatField;
    tCPagarParcHistVlrUltDespesas: TFloatField;
    tCPagarParcHistVlrUltAbatimentos: TFloatField;
    tCPagarParcHistPgto: TBooleanField;
    tCPagarParcHistJurosPagos: TFloatField;
    dsCPagarParcHist: TDataSource;
    tNEntradaObsPagamento: TMemoField;
    tCPagarParcNumCPagar: TIntegerField;
    tCPagarParcParcCPagar: TIntegerField;
    tCPagarParcDtVencCPagar: TDateField;
    tCPagarParcVlrParcCPagar: TFloatField;
    tCPagarParcQuitParcCPagar: TBooleanField;
    tCPagarParcDtPagParcCPagar: TDateField;
    tCPagarParcJurosParcCPagar: TFloatField;
    tCPagarParcCodForn: TIntegerField;
    tCPagarParcNumNotaEnt: TIntegerField;
    tCPagarParcDesconto: TFloatField;
    tCPagarParcPgtoParcial: TFloatField;
    tCPagarParcRestParcela: TFloatField;
    tCPagarParcBanco: TStringField;
    tCPagarParcPlanoContas: TIntegerField;
    tCPagarParcDespesas: TFloatField;
    tCPagarParcAbatimentos: TFloatField;
    tCPagarParcCodConta: TIntegerField;
    tCPagarParcDiasAtraso: TFloatField;
    tCPagarParcCodTipoCobranca: TIntegerField;
    tCPagarParcJurosPagos: TFloatField;
    tCPagarParclkCodBanco: TStringField;
    tCPagarParclkNomeBanco: TStringField;
    tCPagarParcclDiasAtraso: TIntegerField;
    tFornecedores2: TTable;
    tFornecedores2CodForn: TIntegerField;
    tFornecedores2NomeForn: TStringField;
    tFornecedores2Fantasia: TStringField;
    tCPagarParclkFornecedor: TStringField;
    tFornecedoresFornecedorOutros: TStringField;
    tHistoricoTipo: TStringField;
    tNEntradaParcCodBco: TIntegerField;
    tNEntradaParclkBco: TStringField;
    tCPagarParcHistNumMov: TIntegerField;
    tCPagarParcHistNumMovJuros: TIntegerField;
    tCReceberParcHistNumMov: TIntegerField;
    tCReceberParcHistNumMovJuros: TIntegerField;
    tOrdemCompralkCondsPgto: TStringField;
    tCPagarParclkFantasia: TStringField;
    tNEntradaNroFatura: TIntegerField;
    tNEntradaDtFatura: TDateField;
    tCPagarNroFatura: TIntegerField;
    tCPagarParcNroFatura: TIntegerField;
    tOrdemCompraItemCodGrade: TIntegerField;
    tNEntradaItensCodGrade: TIntegerField;
    tOrdemCompraNota: TTable;
    dsOrdemCompraNota: TDataSource;
    tOrdemCompraNotaCodigo: TIntegerField;
    tOrdemCompraNotaItem: TIntegerField;
    tOrdemCompraNotaNumNota: TIntegerField;
    tOrdemCompraNotaCodFornecedor: TIntegerField;
    tOrdemCompraNotaItemNota: TIntegerField;
    tOrdemCompraNotaDtNota: TDateField;
    tOrdemCompraNotaQtdPares: TFloatField;
    tOrdemCompraNotaGrade: TTable;
    tOrdemCompraNotaGradeCodigo: TIntegerField;
    tOrdemCompraNotaGradeItem: TIntegerField;
    tOrdemCompraNotaGradeNumNota: TIntegerField;
    tOrdemCompraNotaGradeCodFornecedor: TIntegerField;
    tOrdemCompraNotaGradeItemNota: TIntegerField;
    tOrdemCompraNotaGradeCodGrade: TIntegerField;
    tOrdemCompraNotaGradePosicao: TIntegerField;
    tOrdemCompraNotaGradeQtdPares: TFloatField;
    dsOrdemCompraNotaGrade: TDataSource;
    tOrdemCompraItemQtdEntregue: TFloatField;
    tOrdemCompraItemQtdRestante: TFloatField;
    tOrdemCompraEntregue: TBooleanField;
    tOrdemCompraItemGradeQtdEntregue: TFloatField;
    tOrdemCompraItemGradeQtdRestante: TFloatField;
    tNEntradaItensNumOC: TIntegerField;
    tNEntradaItensItemOC: TIntegerField;
    tCReceberParclkFantasia: TStringField;
    tOrdemCompraItemUnidade: TStringField;
    tCReceberCancelado: TBooleanField;
    tCReceberParcCancelado: TBooleanField;
    tNotaFiscalExportacao: TBooleanField;
    tClienteCaixaPostal: TStringField;
    tVendedorCaixaPostal: TStringField;
    tClienteRg: TStringField;
    tCReceberParcTitProtestado: TBooleanField;
    tPedidoItemlkReferencia: TStringField;
    tNotaFiscalItenslkReferencia: TStringField;
    tNotaFiscalItenslkReferencia2: TStringField;
    tPedidoQtdParesCanc: TFloatField;
    tObsAux: TTable;
    tObsAuxCodigo: TIntegerField;
    tObsAuxDescricao: TMemoField;
    dsObsAux: TDataSource;
    tObsAux2: TTable;
    tObsAux2Codigo: TIntegerField;
    tObsAuxNome: TStringField;
    tUsuarioUsuario: TStringField;
    tUsuarioSenha: TStringField;
    tUsuarioAdministrador: TBooleanField;
    tUsuarioClientes: TBooleanField;
    tUsuarioFornecedores: TBooleanField;
    tUsuarioGrupos: TBooleanField;
    tUsuarioMaterial: TBooleanField;
    tUsuarioGrade: TBooleanField;
    tUsuarioCor: TBooleanField;
    tUsuarioCondPgto: TBooleanField;
    tUsuarioTransp: TBooleanField;
    tUsuarioOrdemCompra: TBooleanField;
    tUsuarioProduto: TBooleanField;
    tUsuarioSetor: TBooleanField;
    tUsuarioMaoDeObra: TBooleanField;
    tUsuarioVendedor: TBooleanField;
    tUsuarioClasFiscal: TBooleanField;
    tUsuarioParametro: TBooleanField;
    tUsuarioUf: TBooleanField;
    tUsuarioComissao: TBooleanField;
    tUsuarioPedido: TBooleanField;
    tUsuarioLote: TBooleanField;
    tUsuarioNotaEnt: TBooleanField;
    tUsuarioMovto: TBooleanField;
    tUsuarioNotaFiscal: TBooleanField;
    tUsuarioCPagar: TBooleanField;
    tUsuarioCReceber: TBooleanField;
    tUsuarioRelCli: TBooleanField;
    tUsuarioRelForn: TBooleanField;
    tUsuarioRelBoleto: TBooleanField;
    tUsuarioRelProdutos: TBooleanField;
    tUsuarioRelVendas: TBooleanField;
    tUsuarioSitTrib: TBooleanField;
    tUsuarioSubGrupo: TBooleanField;
    tUsuarioRelVendasNatOper: TBooleanField;
    tUsuarioLctoPagar: TBooleanField;
    tUsuarioNatOper: TBooleanField;
    tUsuarioHistoricos: TBooleanField;
    tUsuarioImpressoras: TBooleanField;
    tUsuarioObsAux: TBooleanField;
    tUsuarioLojas: TBooleanField;
    tUsuarioRegioesVendas: TBooleanField;
    tUsuarioRelVendedores: TBooleanField;
    tUsuarioRelEtiqCli: TBooleanField;
    tUsuarioRelEtiqVend: TBooleanField;
    tUsuarioRelEtiqForn: TBooleanField;
    tUsuarioRelEstMat: TBooleanField;
    tUsuarioBaixaPedidos: TBooleanField;
    tUsuarioConsultaLote: TBooleanField;
    tUsuarioRelCalcMatLote: TBooleanField;
    tUsuarioRelPlanejamento: TBooleanField;
    tUsuarioRelPedNFat: TBooleanField;
    tUsuarioRotulos: TBooleanField;
    tUsuarioRelVendasVendCli: TBooleanField;
    tUsuarioRelVendasVendRef: TBooleanField;
    tUsuarioConsFat: TBooleanField;
    tUsuarioRelNEmitVend: TBooleanField;
    tUsuarioLancComisVend: TBooleanField;
    tUsuarioRelExtrComisVend: TBooleanField;
    tUsuarioLancCReceber: TBooleanField;
    tUsuarioTiposCobr: TBooleanField;
    tUsuarioRelCReceber: TBooleanField;
    tUsuarioRelCRecCli: TBooleanField;
    tUsuarioFaturas: TBooleanField;
    tUsuarioRelCPagar: TBooleanField;
    tUsuarioRelNEntrNatOper: TBooleanField;
    tUsuarioRelCPagForn: TBooleanField;
    tUsuarioRelPgtoJuros: TBooleanField;
    tUsuarioContas: TBooleanField;
    tUsuarioEntrMov: TBooleanField;
    tUsuarioJuros: TBooleanField;
    tUsuarioPlanoCtas: TBooleanField;
    tUsuarioRelCtas: TBooleanField;
    tUsuarioAltUsuario: TStringField;
    tUsuarioAltClientes: TBooleanField;
    tUsuarioAltFornecedores: TBooleanField;
    tUsuarioAltGrupos: TBooleanField;
    tUsuarioAltGrade: TBooleanField;
    tUsuarioAltMaterial: TBooleanField;
    tUsuarioAltCor: TBooleanField;
    tUsuarioAltCondPgto: TBooleanField;
    tUsuarioAltTransp: TBooleanField;
    tUsuarioAltOrdemCompra: TBooleanField;
    tUsuarioAltProduto: TBooleanField;
    tUsuarioAltSetor: TBooleanField;
    tUsuarioAltMaoDeObra: TBooleanField;
    tUsuarioAltVendedor: TBooleanField;
    tUsuarioAltClasFiscal: TBooleanField;
    tUsuarioAltUf: TBooleanField;
    tUsuarioAltPedido: TBooleanField;
    tUsuarioAltSitTrib: TBooleanField;
    tUsuarioAltSubGrupo: TBooleanField;
    tUsuarioAltNatOper: TBooleanField;
    tUsuarioAltHistoricos: TBooleanField;
    tUsuarioAltImpressoras: TBooleanField;
    tUsuarioAltObsAux: TBooleanField;
    tUsuarioAltLojas: TBooleanField;
    tUsuarioAltRegioesVendas: TBooleanField;
    tUsuarioAltTiposCobr: TBooleanField;
    tUsuarioAltContas: TBooleanField;
    tUsuarioAltJuros: TBooleanField;
    tUsuarioAltPlanoCtas: TBooleanField;
    tUsuarioExcUsuario: TStringField;
    tUsuarioExcClientes: TBooleanField;
    tUsuarioExcFornecedores: TBooleanField;
    tUsuarioExcGrupos: TBooleanField;
    tUsuarioExcGrade: TBooleanField;
    tUsuarioExcMaterial: TBooleanField;
    tUsuarioExcCor: TBooleanField;
    tUsuarioExcCondPgto: TBooleanField;
    tUsuarioExcTransp: TBooleanField;
    tUsuarioExcOrdemCompra: TBooleanField;
    tUsuarioExcProduto: TBooleanField;
    tUsuarioExcSetor: TBooleanField;
    tUsuarioExcMaoDeObra: TBooleanField;
    tUsuarioExcVendedor: TBooleanField;
    tUsuarioExcClasFiscal: TBooleanField;
    tUsuarioExcUf: TBooleanField;
    tUsuarioExcPedido: TBooleanField;
    tUsuarioExcSitTrib: TBooleanField;
    tUsuarioExcSubGrupo: TBooleanField;
    tUsuarioExcNatOper: TBooleanField;
    tUsuarioExcHistoricos: TBooleanField;
    tUsuarioExcImpressoras: TBooleanField;
    tUsuarioExcObsAux: TBooleanField;
    tUsuarioExcLojas: TBooleanField;
    tUsuarioExcRegioesVendas: TBooleanField;
    tUsuarioExcTiposCobr: TBooleanField;
    tUsuarioExcContas: TBooleanField;
    tUsuarioExcJuros: TBooleanField;
    tUsuarioExcPlanoCtas: TBooleanField;
    tUsuarioInsUsuario: TStringField;
    tUsuarioInsClientes: TBooleanField;
    tUsuarioInsFornecedores: TBooleanField;
    tUsuarioInsGrupos: TBooleanField;
    tUsuarioInsGrade: TBooleanField;
    tUsuarioInsMaterial: TBooleanField;
    tUsuarioInsCor: TBooleanField;
    tUsuarioInsCondPgto: TBooleanField;
    tUsuarioInsTransp: TBooleanField;
    tUsuarioInsOrdemCompra: TBooleanField;
    tUsuarioInsProduto: TBooleanField;
    tUsuarioInsSetor: TBooleanField;
    tUsuarioInsMaoDeObra: TBooleanField;
    tUsuarioInsVendedor: TBooleanField;
    tUsuarioInsClasFiscal: TBooleanField;
    tUsuarioInsUf: TBooleanField;
    tUsuarioInsPedido: TBooleanField;
    tUsuarioInsSitTrib: TBooleanField;
    tUsuarioInsSubGrupo: TBooleanField;
    tUsuarioInsNatOper: TBooleanField;
    tUsuarioInsHistoricos: TBooleanField;
    tUsuarioInsImpressoras: TBooleanField;
    tUsuarioInsObsAux: TBooleanField;
    tUsuarioInsLojas: TBooleanField;
    tUsuarioInsRegioesVendas: TBooleanField;
    tUsuarioInsTiposCobr: TBooleanField;
    tUsuarioInsContas: TBooleanField;
    tUsuarioInsJuros: TBooleanField;
    tUsuarioInsPlanoCtas: TBooleanField;
    tUsuarioIndexador: TBooleanField;
    tUsuarioAltIndexador: TBooleanField;
    tUsuarioExcIndexador: TBooleanField;
    tUsuarioInsIndexador: TBooleanField;
    tUsuarioCPagarAltera: TBooleanField;
    tUsuarioCPagarPag: TBooleanField;
    tUsuarioEstPgtoPagar: TBooleanField;
    tUsuarioCReceberAltera: TBooleanField;
    tUsuarioCReceberPag: TBooleanField;
    tUsuarioEstPgtoRec: TBooleanField;
    tCPagarParcDtRecto: TDateField;
    tCReceberParcDtGerado: TDateField;
    tClienteCep: TStringField;
    tClienteCepEntrega: TStringField;
    tClienteCepPgto: TStringField;
    tPedidolkCep: TStringField;
    tNotaFiscallkCepCli: TStringField;
    tNotaFiscallkCepEntrega: TStringField;
    tNotaFiscallkCepPgto: TStringField;
    tUsuarioInsAtelier: TBooleanField;
    tUsuarioExcAtelier: TBooleanField;
    tUsuarioAltAtelier: TBooleanField;
    tUsuarioAtelier: TBooleanField;
    tProdutoVlrAtelier: TFloatField;
    tUsuarioContrAtelier: TBooleanField;
    tSetorAtelier: TBooleanField;
    tUsuarioMovAtelier: TBooleanField;
    tUsuarioMovTalao: TBooleanField;
    tUsuarioAltMovAtelier: TBooleanField;
    tUsuarioExcMovAtelier: TBooleanField;
    tUsuarioInsMovAtelier: TBooleanField;
    tUsuarioInsRequisicao: TBooleanField;
    tUsuarioExcRequisicao: TBooleanField;
    tUsuarioAltRequisicao: TBooleanField;
    tUsuarioRequisicao: TBooleanField;
    tAtividade: TTable;
    tAtividadeCodigo: TIntegerField;
    tAtividadeNome: TStringField;
    dsAtividade: TDataSource;
    tAtividade2: TTable;
    tAtividade2Codigo: TIntegerField;
    tAtividade2Nome: TStringField;
    tUsuarioInsAtividade: TBooleanField;
    tUsuarioExcAtividade: TBooleanField;
    tUsuarioAltAtividade: TBooleanField;
    tUsuarioAtividade: TBooleanField;
    tFornecAtiv: TTable;
    tFornecAtivCodForn: TIntegerField;
    tFornecAtivItem: TIntegerField;
    tFornecAtivCodAtiv: TIntegerField;
    dsFornecAtiv: TDataSource;
    tFornecAtiv2: TTable;
    tFornecAtiv2CodForn: TIntegerField;
    tFornecAtiv2Item: TIntegerField;
    tFornecAtiv2CodAtiv: TIntegerField;
    tFornecAtivlkAtividade: TStringField;
    tPedidoDolar: TBooleanField;
    tUsuarioConsFornecAtiv: TBooleanField;
    tGradeItemlk: TTable;
    tGradeItemlkCodGrade: TIntegerField;
    tGradeItemlkPosicao: TIntegerField;
    tGradeItemlkTamanho: TStringField;
    tPedidoGradelkTamanho: TStringField;
    tPedidoItemlkQParTalao: TFloatField;
    tProdutoNomeModelo: TStringField;
    tProdutoFotoJpeg: TBlobField;
    tUsuarioExcTalao: TBooleanField;
    tProdutoMatclQtdPr: TFloatField;
    tProdutolkGrupo: TStringField;
    tProdutolkSitTributaria: TStringField;
    tProdutolkNomeGrade: TStringField;
    tUsuarioCustoSetor: TBooleanField;
    tNEntradaItensQtdPacote: TFloatField;
    tUsuarioRelMatMinimo: TBooleanField;
    tOrdemCompra2: TTable;
    tOrdemCompra2Codigo: TIntegerField;
    tOrdemCompra2CodFornecedor: TIntegerField;
    tOrdemCompra2CodCondPgto: TIntegerField;
    tOrdemCompra2CodTransp: TIntegerField;
    tOrdemCompra2DtEmissao: TDateField;
    tOrdemCompra2Obs: TMemoField;
    tOrdemCompra2VlrTotal: TFloatField;
    tOrdemCompra2Entregue: TBooleanField;
    tOrdemCompraItem2: TTable;
    tOrdemCompraItem2Codigo: TIntegerField;
    tOrdemCompraItem2Item: TIntegerField;
    tOrdemCompraItem2CodMaterial: TIntegerField;
    tOrdemCompraItem2CodCor: TIntegerField;
    tUsuarioConsEstoqueMat: TBooleanField;
    tUsuarioExcluirTalao: TBooleanField;
    tUsuarioRelHistMaterial: TBooleanField;
    tOrdemCompralkNomeTransp: TStringField;
    tOrdemCompralkEndTransp: TStringField;
    tOrdemCompralkBairroTransp: TStringField;
    tOrdemCompralkCepTransp: TStringField;
    tOrdemCompralkUfTransp: TStringField;
    tOrdemCompralkFoneTransp: TStringField;
    tSetorMetaDia: TIntegerField;
    tCReceberParclkBanco: TStringField;
    tPedidoQtdParesRep: TFloatField;
    tPedido2QtdParesRep: TFloatField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoVlrReposicao: TFloatField;
    tPedidoItem2: TTable;
    tPedidoItem2Pedido: TIntegerField;
    tPedidoItem2Item: TIntegerField;
    tPedidoItem2Reposicao: TBooleanField;
    tParametrosNroItensNota: TIntegerField;
    tEmpresaLinha1: TStringField;
    tEmpresaLinha2: TStringField;
    tMaoDeObra: TTable;
    dsMaoDeObra: TDataSource;
    tMaoDeObraCodigo: TSmallintField;
    tMaoDeObraDescricao: TStringField;
    tParametrosPercIssqn: TFloatField;
    tParametrosMaoDeObra: TBooleanField;
    tNotaFiscalPercIssqn: TFloatField;
    tNotaFiscalVlrMObra: TFloatField;
    tNotaFiscalVlrIssqn: TFloatField;
    tUsuarioConsMovTalaoMI: TBooleanField;
    tPedidoEsp: TTable;
    dsPedidoEsp: TDataSource;
    tPedidoEspNumPed: TIntegerField;
    tPedidoEspDtEmissao: TDateField;
    tPedidoEspCodCliente: TIntegerField;
    tPedidoEspNotaPedido: TStringField;
    tPedidoEspCodVendedor: TIntegerField;
    tPedidoEspVlrTotal: TFloatField;
    tPedidoEspCodNatureza: TIntegerField;
    tPedidoEsplkNomeCliente: TStringField;
    tPedidoEsplkNomeVendedor: TStringField;
    tPedidoEspItem: TTable;
    dsPedidoEspItem: TDataSource;
    tPedidoEspParc: TTable;
    dsPedidoEspParc: TDataSource;
    tPedidoEspParcNumPed: TIntegerField;
    tPedidoEspParcParcela: TIntegerField;
    tPedidoEspParcDtVecto: TDateField;
    tPedidoEspParcVlrVecto: TFloatField;
    tPedidoEspCodCondPgto: TIntegerField;
    tPedidoEspPercComissao: TFloatField;
    tPedidoEspGeraContas: TBooleanField;
    tPedidoEspItemNumPed: TIntegerField;
    tPedidoEspItemItem: TIntegerField;
    tPedidoEspItemNumNota: TIntegerField;
    tPedidoEspItemNumPedido: TIntegerField;
    tPedidoEspItemItemPedido: TIntegerField;
    tPedidoEspItemDescricao: TStringField;
    tPedidoEspItemVlrUnitario: TFloatField;
    tPedidoEspItemVlrTotal: TFloatField;
    tPedidoEspItemQtd: TFloatField;
    tPedidoEsplkNomeNatOperacao: TStringField;
    tPedidoEsplkPrazoVista: TStringField;
    tUsuarioPedidoEsp: TBooleanField;
    tUsuarioAltPedidoEsp: TBooleanField;
    tUsuarioExcPedidoEsp: TBooleanField;
    tUsuarioInsPedidoEsp: TBooleanField;
    tCReceberParcTipoDoc: TStringField;
    tNotaFiscalGrade: TTable;
    dsNotaFiscalGrade: TDataSource;
    tNotaFiscalGradeItem: TIntegerField;
    tNotaFiscalGradeCodGrade: TIntegerField;
    tNotaFiscalGradePosicao: TIntegerField;
    tNotaFiscalGradeQtd: TFloatField;
    tNotaFiscalGradeVlrUnitario: TFloatField;
    tNotaFiscalGradeVlrTotal: TFloatField;
    tNotaFiscalItensCodGrade: TIntegerField;
    tNEntradaDevolvida: TBooleanField;
    tCPagarCodAtelier: TIntegerField;
    tCPagarParcCodAtelier: TIntegerField;
    tNEntradaCodAtelier: TIntegerField;
    tCReceberDuplicataImp: TBooleanField;
    tCReceberVlrTotal: TFloatField;
    tCReceberlkNomeCliente: TStringField;
    tCReceberParclkNomeCliente: TStringField;
    tCReceberParclkEndereco: TStringField;
    tCReceberParclkBairro: TStringField;
    tCReceberParclkCep: TStringField;
    tCReceberParclkEstado: TStringField;
    tCReceberParclkEndPgto: TStringField;
    tCReceberParclkUfPgto: TStringField;
    tCReceberParclkCepPgto: TStringField;
    tCReceberParclkCgcCpf: TStringField;
    tNatOperacaoTipoFat: TStringField;
    tNotaFiscallkTipoFat: TStringField;
    tProdutoObs: TMemoField;
    tProdutoMatImpTalao: TStringField;
    tPedidoMaterialImpTalao: TStringField;
    tPedidoMercado: TStringField;
    tNotaFiscallkUfTransp: TStringField;
    tCidade: TTable;
    tCidadeCodigo: TIntegerField;
    tCidadeNome: TStringField;
    tCidadeEstado: TStringField;
    tCidadePrefixo: TStringField;
    tCidadeCep: TStringField;
    tClienteCodCidade: TIntegerField;
    tFornecedoresCodCidade: TIntegerField;
    tTranspCodCidade: TIntegerField;
    tUsuarioCidade: TBooleanField;
    tUsuarioAltCidade: TBooleanField;
    tUsuarioExcCidade: TBooleanField;
    tUsuarioInsCidade: TBooleanField;
    dsCidade: TDataSource;
    tClienteCodCidadeE: TIntegerField;
    tClienteCodCidadeP: TIntegerField;
    tClientelkCidade: TStringField;
    tClientelkCidadeE: TStringField;
    tNotaFiscallkCidade: TStringField;
    tNotaFiscallkCidEntrega: TStringField;
    tNotaFiscallkCidPgto: TStringField;
    tFornecedoreslkCidade: TStringField;
    tTransplkCidade: TStringField;
    tOrdemCompralkCidTransp: TStringField;
    tNotaFiscallkCidadeTransp: TStringField;
    tPedidoItemlkDescMaterial: TStringField;
    tUsuarioOperAtelier: TBooleanField;
    tUsuarioAltOperAtelier: TBooleanField;
    tUsuarioExcOperAtelier: TBooleanField;
    tUsuarioInsOperAtelier: TBooleanField;
    tNotaFiscalItenslkDescMaterial: TStringField;
    tPedidoItem2ObsLote: TStringField;
    tGradeItemMarcarTam: TStringField;
    tGradeItemlkMarcarTam: TStringField;
    tPedidoGradelkMarcarTam: TStringField;
    tProdutoEndEtiq: TStringField;
    tPedidoItemlkEndEtiq: TStringField;
    tDctoEst: TTable;
    tDctoEstNumDcto: TIntegerField;
    tDctoEstData: TDateField;
    tDctoEstUsuario: TStringField;
    tDctoEstTipo: TStringField;
    dsDctoEst: TDataSource;
    tDctoEstItem: TTable;
    tDctoEstItemNumDcto: TIntegerField;
    tDctoEstItemItem: TIntegerField;
    tDctoEstItemCodMaterial: TIntegerField;
    tDctoEstItemCodCor: TIntegerField;
    tDctoEstItemCodGrade: TIntegerField;
    tDctoEstItemUnidade: TStringField;
    tDctoEstItemQtd: TFloatField;
    dsDctoEstItem: TDataSource;
    tDctoEstGrade: TTable;
    tDctoEstGradeNumDcto: TIntegerField;
    tDctoEstGradeItem: TIntegerField;
    tDctoEstGradeCodGrade: TIntegerField;
    tDctoEstGradePosicao: TIntegerField;
    tDctoEstGradeQtd: TFloatField;
    tUsuarioDctoEst: TBooleanField;
    tUsuarioAltDctoEst: TBooleanField;
    tUsuarioExcDctoEst: TBooleanField;
    tUsuarioInsDctoEst: TBooleanField;
    tDctoEstTotal: TFloatField;
    tDctoEstItemVlrUnit: TFloatField;
    tDctoEstItemVlrTotal: TFloatField;
    tDctoEstItemlkMaterial: TStringField;
    tDctoEstItemlkCor: TStringField;
    tCReceberParcHistJurosCalc: TFloatField;
    tParametrosTempoEtiq: TIntegerField;
    tUsuarioAgenda: TBooleanField;
    tNatOperacaoGeraDuplicata: TBooleanField;
    tNotaFiscallkGeraDuplicata: TBooleanField;
    tUsuarioCopiaDuplicata: TBooleanField;
    tGradeCodLetra: TStringField;
    tGradeLargura: TStringField;
    tGradeItemQtdPar: TIntegerField;
    tGradeItemlkQtdPar: TIntegerField;
    tPedidoItemlkCodLetra: TStringField;
    tPedidoItemlkLargura: TStringField;
    tGradeTipoDig: TStringField;
    tGradeQtdParTotal: TIntegerField;
    tPedidoItemlkTipoDig: TStringField;
    tNEntradaItenslkLargura: TStringField;
    tNEntradaItensGradelkTamanho: TStringField;
    tNotaFiscalItenslkLargura: TStringField;
    tNotaFiscalGradelkTamanho: TStringField;
    tDctoEstItemlkLargura: TStringField;
    tDctoEstGradelkTamanho: TStringField;
    tOrdemCompraItemlkLargura: TStringField;
    tParametrosPercC200: TFloatField;
    tProdutoMatUnidade: TStringField;
    tEstoqueMatMov: TTable;
    dsEstoqueMatMov: TDataSource;
    tEstoqueMatMovNumMov: TIntegerField;
    tEstoqueMatMovCodMaterial: TIntegerField;
    tEstoqueMatMovCodCor: TIntegerField;
    tEstoqueMatMovLargura: TStringField;
    tEstoqueMatMovDtMov: TDateField;
    tEstoqueMatMovES: TStringField;
    tEstoqueMatMovTipoMov: TStringField;
    tEstoqueMatMovNumNota: TIntegerField;
    tEstoqueMatMovCodCliForn: TIntegerField;
    tEstoqueMatMovVlrUnitario: TFloatField;
    tEstoqueMatMovQtd: TFloatField;
    tEstoqueMatMovPercIcms: TFloatField;
    tEstoqueMatMovPercIpi: TFloatField;
    tEstoqueMatMovVlrDesconto: TFloatField;
    tNEntradaItensNumMovEst: TIntegerField;
    tDctoEstItemNumMovEst: TIntegerField;
    tCReceberParcVlrDevolucao: TFloatField;
    tCReceberParcHistVlrDevolucao: TFloatField;
    tCReceberParcHistDevolucao: TBooleanField;
    tCPagarParcVlrDevolucao: TFloatField;
    tCPagarParcHistVlrDevolucao: TFloatField;
    tCPagarParcHistDevolucao: TBooleanField;
    tCReceberParclkCidade: TStringField;
    tCReceberParclkCidPgto: TStringField;
    tClientelkCidadeP: TStringField;
    tCReceberParclkInscrEst: TStringField;
    tEstoqueMatMovlkNomeMaterial: TStringField;
    tEstoqueMatMovlkCor: TStringField;
    tEstoqueMatMovUnidade: TStringField;
    tNotaFiscalItensNumMovEst: TIntegerField;
    tOutros: TTable;
    dsOutros: TDataSource;
    tUsuarioRelBalancoEst: TBooleanField;
    tUsuarioRelNEntrada: TBooleanField;
    tUsuarioRelOC: TBooleanField;
    tOrdemCompraItem2Qtd: TFloatField;
    tOrdemCompraItem2VlrUnitario: TFloatField;
    tOrdemCompraItem2AliqIPI: TFloatField;
    tOrdemCompraItem2VlrIPI: TFloatField;
    tOrdemCompraItem2DtEntrega: TDateField;
    tOrdemCompraItem2VlrTotal: TFloatField;
    tOrdemCompraItem2CodGrade: TIntegerField;
    tOrdemCompraItem2QtdEntregue: TFloatField;
    tOrdemCompraItem2QtdRestante: TFloatField;
    tOrdemCompraItem2Unidade: TStringField;
    tProdutoConsumo: TTable;
    dsProdutoConsumo: TDataSource;
    tProdutoConsumoItem: TTable;
    dsProdutoConsumoItem: TDataSource;
    tProdutoConsumoItemCodProduto: TIntegerField;
    tProdutoConsumoItemCodCorProduto: TIntegerField;
    tProdutoConsumoItemItemMaterial: TIntegerField;
    tProdutoConsumoItemCodGrade: TIntegerField;
    tProdutoConsumoItemPosicao: TIntegerField;
    tProdutoConsumoItemConsumo: TFloatField;
    tProdutoConsumoItemlkTamanho: TStringField;
    tProdutoConsumoCodProduto: TIntegerField;
    tProdutoConsumoCodCorProduto: TIntegerField;
    tProdutoConsumoItemMaterial: TIntegerField;
    tProdutoConsumoCodGrade: TIntegerField;
    tProdutoConsumoConsumo: TFloatField;
    tProdutoConsumolkNomeGrade: TStringField;
    tProdutoConsumolkLargura: TStringField;
    tProdutoMatConsumo: TStringField;
    tPedidoConsumo: TTable;
    dsPedidoConsumo: TDataSource;
    tPedidoMaterialTipoConsumo: TStringField;
    tPedidoConsumoPedido: TIntegerField;
    tPedidoConsumoItemPed: TIntegerField;
    tPedidoConsumoOrdem: TIntegerField;
    tPedidoConsumoCodGrade: TIntegerField;
    tPedidoConsumoPosicao: TIntegerField;
    tPedidoConsumoConsumo: TFloatField;
    tPedidoConsumolkTamanho: TStringField;
    tFuncionario: TTable;
    tFuncionarioCodigo: TIntegerField;
    tFuncionarioNome: TStringField;
    tFuncionarioEndereco: TStringField;
    tFuncionarioCodCidade: TIntegerField;
    tFuncionarioBairro: TStringField;
    tFuncionarioCep: TStringField;
    tFuncionarioFone: TStringField;
    tFuncionarioDtAdmissao: TDateField;
    tFuncionarioCPF: TStringField;
    tFuncionarioRG: TStringField;
    tFuncionarioCTPS: TIntegerField;
    tFuncionarioSerie: TStringField;
    tFuncionarioPIS: TStringField;
    tFuncionarioDtNascimento: TDateField;
    tFuncionarioHrSemanais: TFloatField;
    tFuncionarioTipoPgto: TStringField;
    tFuncionarioVlrSalario: TFloatField;
    tFuncionarioDtDemissao: TDateField;
    tFuncionarioHorario1: TStringField;
    tFuncionarioHorario2: TStringField;
    tFuncionarioPercInsalubridade: TFloatField;
    tFuncionarioPercPericulosidade: TFloatField;
    dsFuncionario: TDataSource;
    tUsuarioFuncionario: TBooleanField;
    tUsuarioAltFuncionario: TBooleanField;
    tUsuarioExcFuncionario: TBooleanField;
    tUsuarioInsFuncionario: TBooleanField;
    tFerias: TTable;
    tFeriasCodFuncionario: TIntegerField;
    tFeriasItem: TIntegerField;
    tFeriasDtInicial: TDateField;
    tFeriasDtFinal: TDateField;
    dsFerias: TDataSource;
    tFuncionarioUf: TStringField;
    tFuncionarioObs: TMemoField;
    tSalario: TTable;
    tSalarioCodFuncionario: TIntegerField;
    tSalarioItem: TIntegerField;
    tSalarioData: TDateField;
    tSalarioMotivo: TStringField;
    tSalarioValor: TFloatField;
    dsSalario: TDataSource;
    tGradeItemQtdNav: TFloatField;
    tGradeItemLargura: TFloatField;
    tGradeItemAltura: TFloatField;
    tGradeItemlkQtdNav: TFloatField;
    tGradeItemlkLargura: TFloatField;
    tGradeItemlkAltura: TFloatField;
    tUsuarioProgramacao: TBooleanField;
    tUsuarioAltProgramacao: TBooleanField;
    tUsuarioExcProgramacao: TBooleanField;
    tUsuarioInsProgramacao: TBooleanField;
    tPedidoItem2QtdParesRest: TFloatField;
    tPedidoItemObsLote: TStringField;
    tPedidoItem2QtdParesFat: TFloatField;
    tUsuarioRelEmbDiario: TBooleanField;
    tPedidoGradeQtdParesRest: TFloatField;
    tPedidoGradeQtdParesFat: TFloatField;
    tPedidoGradeQtdParesAut: TFloatField;
    tPedidoGradeQtdParesMan: TFloatField;
    tUsuarioExtratoCom: TBooleanField;
    tCReceberParcHistNroLancExtComissao: TIntegerField;
    tPedidoItemDtEmbarque: TDateField;
    tTabPreco: TTable;
    dsTabPreco: TDataSource;
    tTabPrecolkReferencia: TStringField;
    tTabPrecolkNomeCor: TStringField;
    tUsuarioTabPreco: TBooleanField;
    tUsuarioExcTabPreco: TBooleanField;
    tUsuarioInsTabPreco: TBooleanField;
    tPedidoItemNumOS: TStringField;
    tPedidoItem2NumOS: TStringField;
    tSitTributariaCodSit: TStringField;
    tPedidoItemlkSitTributaria: TStringField;
    tNotaFiscalItenslkSitTributaria: TStringField;
    tNotaFiscalPercTransf: TFloatField;
    tUsuarioContrFaturamento: TBooleanField;
    tTabPrecolkNomeProd: TStringField;
    tClientePercTransf: TFloatField;
    tClienteCodCondPgto: TIntegerField;
    tPedidoItemlkNomeProduto: TStringField;
    tFuncFaltas: TTable;
    tFuncFaltasCodFuncionario: TIntegerField;
    tFuncFaltasData: TDateField;
    tFuncFaltasDescricao: TStringField;
    dsFuncFaltas: TDataSource;
    tFuncionarioEstCivil: TStringField;
    tFuncionarioEscolaridade: TStringField;
    tFuncionarioFuncao: TStringField;
    tClientelkVendedor: TStringField;
    tClientelkCondPgto: TStringField;
    tClienteDtNascContato: TDateField;
    tClienteNomeResp: TStringField;
    tAgeContato: TTable;
    dsAgeContato: TDataSource;
    tAgeContatoNumMov: TIntegerField;
    tAgeContatoData: TDateField;
    tAgeContatoHora: TTimeField;
    tAgeContatoCodCliente: TIntegerField;
    tAgeContatoResponsavel: TStringField;
    tAgeContatoObs: TMemoField;
    tAgeContatolkNomeCliente: TStringField;
    tUsuarioAgeContato: TBooleanField;
    tUsuarioAltAgeContato: TBooleanField;
    tUsuarioExcAgeContato: TBooleanField;
    tUsuarioInsAgeContato: TBooleanField;
    tUsuarioHistPedido: TBooleanField;
    tNatOperacaoRelFat: TBooleanField;
    tNotaFiscalVlrTotalDupl: TFloatField;
    tNotaFiscalItensGeraDupl: TBooleanField;
    tNotaFiscalItenslkCodNatOper: TStringField;
    tNotaFiscalItenslkDescricaoNatOper: TStringField;
    tProdutoCli: TTable;
    dsProdutoCli: TDataSource;
    tProdutoCliCodProduto: TIntegerField;
    tProdutoCliCodCliente: TIntegerField;
    tProdutoCliCodProdCli: TStringField;
    tProdutoClilkNomeCliente: TStringField;
    tProdutoCliCodCor: TIntegerField;
    tUsuarioRecPedido: TBooleanField;
    dsPedidoItem2: TDataSource;
    tPedidoItem2CodProduto: TIntegerField;
    tPedidoItem2CodCor: TIntegerField;
    tPedidoItem2CodGrade: TIntegerField;
    tPedidoItem2QtdPares: TFloatField;
    tPedidoItem2Preco: TFloatField;
    tPedidoItem2VlrTotal: TFloatField;
    tPedidoItem2Cancelado: TBooleanField;
    tPedidoItem2Copiado: TBooleanField;
    tPedidoItem2QtdParesCanc: TFloatField;
    tPedidoItem2VlrDesconto: TFloatField;
    tPedidoItem2SitTrib: TSmallintField;
    tPedidoItem2QtdFatAut: TFloatField;
    tPedidoItem2QtdFatMan: TFloatField;
    tPedidoItem2DtEmbarque: TDateField;
    tUsuarioRelCalcMatPed: TBooleanField;
    tParametrosCodNatVenda: TIntegerField;
    tParametrosCodNatVendaF: TIntegerField;
    tParametrosCodNatBenef: TIntegerField;
    tUsuarioCia: TBooleanField;
    tUsuarioAltCia: TBooleanField;
    tUsuarioExcCia: TBooleanField;
    tUsuarioInsCia: TBooleanField;
    tTipoCobrancalk: TTable;
    tTipoCobrancalkCodigo: TIntegerField;
    tTipoCobrancalkNome: TStringField;
    tNotaFiscalParcCodTipoCobr: TIntegerField;
    tNotaFiscalParclkTipoCobr: TStringField;
    tNotaFiscalItensMaterial: TBooleanField;
    tNatOperacaoSomaMercNF: TBooleanField;
    tNatOperacao2Lei: TMemoField;
    tNatOperacao2Usada: TStringField;
    tNatOperacao2TipoFat: TStringField;
    tNatOperacao2GeraDuplicata: TBooleanField;
    tNatOperacao2RelFat: TBooleanField;
    tNatOperacao2SomaMercNF: TBooleanField;
    tEmpresaNomeResp: TStringField;
    tEmpresaEndResp: TStringField;
    tEmpresaBaiResp: TStringField;
    tEmpresaCepResp: TStringField;
    tEmpresaPFone: TStringField;
    tEmpresaNFone: TStringField;
    tEmpresaConvenio: TStringField;
    tEmpresaNumRuaResp: TIntegerField;
    tNEntradalkCGC: TStringField;
    tNEntradalkInscEstadual: TStringField;
    tNEntradalkCodNatOper: TStringField;
    tClienteContatoModelagem: TStringField;
    tUsuarioRelCia: TBooleanField;
    tPedidoItemCodCia: TIntegerField;
    tTipoCobrancaDescontado: TBooleanField;
    tNEntradaItenslkCodSitTrib: TStringField;
    tNEntradaDevolucao: TBooleanField;
    tProdutolkCodSitTrib: TStringField;
    tNEntradaItensMatProd: TStringField;
    tNEntradaItensSomaEstoque: TBooleanField;
    tNEntradaItensNomeMaterial: TStringField;
    tNEntradaItensReferencia: TStringField;
    tUsuarioGeraSintegra: TBooleanField;
    tNEntradaModelo: TIntegerField;
    tNEntradalkGeraDupl: TBooleanField;
    tNEntradalkGeraDupl2: TBooleanField;
    tNEntradaItensMobralkGeraDupl: TBooleanField;
    tNEntradaItensMobralkCodNatOper: TStringField;
    tPedidoCia: TIntegerField;
    tCheque: TTable;
    dsCheque: TDataSource;
    tChequeCodConta: TIntegerField;
    tChequeNumCheque: TIntegerField;
    tChequeDtEmissao: TDateField;
    tChequeVlrTotal: TFloatField;
    tChequeNominal: TStringField;
    tChequeDtEntrada: TDateField;
    tChequeDtPrevista: TDateField;
    tChequeAutomatico: TBooleanField;
    tUsuarioCheque: TBooleanField;
    tUsuarioAltCheque: TBooleanField;
    tUsuarioExcCheque: TBooleanField;
    tUsuarioInsCheque: TBooleanField;
    tCPagarParcHistNumCheque: TIntegerField;
    tCPagarParcHistDtPrevCheque: TDateField;
    tChequelkConta: TStringField;
    tNotaFiscalVlrTransf: TFloatField;
    tUsuarioConsHistMat: TBooleanField;
    tNotaFiscalItensEstoque: TBooleanField;
    tUsuarioCobrBcoSafra: TBooleanField;
    tCReceberParcArqGerado: TBooleanField;
    tPedidoItem2CodCia: TIntegerField;
    tPedidoItemDtReprogramacao: TDateField;
    tCReceberParcTransferencia: TBooleanField;
    tNEntradaItensCodNatOper: TIntegerField;
    tNEntradaItenslkCodNatOper: TStringField;
    tUsuarioVlrIcms: TBooleanField;
    tFornecedoresCustoFixo: TBooleanField;
    tUsuarioRelContFornecedores: TBooleanField;
    tNotaFiscalItensNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCodFornDev: TIntegerField;
    tNotaFiscalItensItemDev: TIntegerField;
    tUsuarioGeraNotaEdi: TBooleanField;
    tCReceberParcNumTitBanco: TStringField;
    tClienteContatoCliente: TStringField;
    tClienteImpItemNotaPorTam: TBooleanField;
    tParametrosEnderecoNotaEDI: TStringField;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    tUFCodSitTrib: TIntegerField;
    tUsuarioBaixaEstoque: TBooleanField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tUsuarioBaixaProducao: TBooleanField;
    tOrcamento: TTable;
    dsOrcamento: TDataSource;
    tOrcamentoItens: TTable;
    dsOrcamentoItens: TDataSource;
    tUsuarioOrcamento: TBooleanField;
    tUsuarioAltOrcamento: TBooleanField;
    tUsuarioExcOrcamento: TBooleanField;
    tUsuarioInsOrcamento: TBooleanField;
    tOrcamentoNumOrcamento: TIntegerField;
    tOrcamentoData: TDateField;
    tOrcamentoCodCliente: TIntegerField;
    tOrcamentoNomeCliente: TStringField;
    tOrcamentoNomeContato: TStringField;
    tOrcamentoNomeCia: TStringField;
    tOrcamentoQtdDiasValidade: TIntegerField;
    tOrcamentoObs: TMemoField;
    tOrcamentoPrazoPagto: TStringField;
    tOrcamentoVlrTotal: TFloatField;
    tOrcamentoItensNumOrcamento: TIntegerField;
    tOrcamentoItensItem: TIntegerField;
    tOrcamentoItensNomeProduto: TStringField;
    tOrcamentoItensVlrUnitario: TFloatField;
    tOrcamentoItensComMatriz: TBooleanField;
    tOrcamentoItensQtd: TFloatField;
    tOrcamentoItensVlrTotal: TFloatField;
    tParametrosNumSeqEtiqMista: TIntegerField;
    tEstoqueMatMovQtd2: TFloatField;
    tUsuarioRelCReceberSem: TBooleanField;
    tUsuarioRelCPagarSem: TBooleanField;
    tEmpresaNumCodBarra: TStringField;
    tUsuarioAltNotaEnt: TBooleanField;
    tUsuarioExcNotaEnt: TBooleanField;
    tUsuarioInsNotaEnt: TBooleanField;
    tNotaFiscalItensNumOS: TStringField;
    tNEntradaItensDtBaixa: TDateField;
    tNEntradaItensHrBaixa: TTimeField;
    tNEntradaItensNumMovEstBaixa: TIntegerField;
    tPedidoItemFabrica: TStringField;
    tPedidoItem2DtReprogramacao: TDateField;
    tPedidoItem2Reprogramacao: TBooleanField;
    tPedidoItem2DtBaixa: TDateField;
    tPedidoItem2HrBaixa: TTimeField;
    tPedidoItem2Fabrica: TStringField;
    tNotaFiscalItenslkFabrica: TStringField;
    tNotaFiscalItensCodBarraRotulo: TStringField;
    tProdutoReferencia: TStringField;
    tNotaFiscalItensReferencia: TStringField;
    tOrcamentoItensReferencia: TStringField;
    tProdutoReferencia2: TStringField;
    tProdutoLancaCor: TBooleanField;
    tProdutoPrecoGrade: TBooleanField;
    tProdutoVlrVenda: TFloatField;
    tGrupoReferencia: TStringField;
    tProdutoProdMat: TStringField;
    tProdutoPrecoCusto: TFloatField;
    tProdutoPosseMat: TStringField;
    tProdutoEstoque: TBooleanField;
    tProdutoDtAlteracao: TDateField;
    tProdutoMaterialOutros: TStringField;
    tProdutoPrecoCor: TBooleanField;
    tProdutoCodFornecedor: TIntegerField;
    tProdutoEstMinimo: TFloatField;
    tProdutoCorPrCusto: TFloatField;
    tOrdemCompraItemlkReferencia: TStringField;
    tDctoEstItemlkReferencia: TStringField;
    tProduto2: TTable;
    tProduto2Codigo: TIntegerField;
    tProduto2CodGrupo: TIntegerField;
    tProduto2CodSubGrupo: TIntegerField;
    tProduto2Referencia: TStringField;
    tProduto2Nome: TStringField;
    tProduto2Unidade: TStringField;
    tProduto2CodClasFiscal: TStringField;
    tProduto2CodSitTrib: TIntegerField;
    tProduto2LancaGrade: TBooleanField;
    tProduto2CodGrade: TIntegerField;
    tProduto2QParTalao: TFloatField;
    tProduto2PesoLiquido: TFloatField;
    tProduto2PesoBruto: TFloatField;
    tProduto2Inativo: TBooleanField;
    tProduto2AliqIcms: TFloatField;
    tProduto2AliqIPI: TFloatField;
    tProduto2NomeExp: TStringField;
    tProduto2Referencia2: TStringField;
    tProduto2VlrAtelier: TFloatField;
    tProduto2NomeModelo: TStringField;
    tProduto2FotoJpeg: TBlobField;
    tProduto2Obs: TMemoField;
    tProduto2EndEtiq: TStringField;
    tProduto2LancaCor: TBooleanField;
    tProduto2PrecoGrade: TBooleanField;
    tProduto2VlrVenda: TFloatField;
    tProduto2ProdMat: TStringField;
    tProduto2PrecoCusto: TFloatField;
    tProduto2PosseMat: TStringField;
    tProduto2Estoque: TBooleanField;
    tProduto2DtAlteracao: TDateField;
    tProduto2MaterialOutros: TStringField;
    tProduto2PrecoCor: TBooleanField;
    tProduto2CodFornecedor: TIntegerField;
    tProduto2EstMinimo: TFloatField;
    tProdutoEstMaximo: TFloatField;
    tParametrosCliEstoque: TIntegerField;
    tTalao: TTable;
    dsTalao: TDataSource;
    tTalaoGrade: TTable;
    dsTalaoGrade: TDataSource;
    tTalaoCodProduto: TIntegerField;
    tTalaoCodCor: TIntegerField;
    tTalaoCodGrade: TIntegerField;
    tTalaoQuantidade: TFloatField;
    tTalaoCodCliente: TIntegerField;
    tTalaoGradeTalao: TIntegerField;
    tTalaoGradeCodGrade: TIntegerField;
    tTalaoGradePosicao: TIntegerField;
    tTalaoGradeQuantidade: TFloatField;
    tTalaoGradeQtdRestante: TFloatField;
    tTalaolkNomeCliente: TStringField;
    tTalaolkReferencia: TStringField;
    tTalaolkNomeCor: TStringField;
    tTalaolkDescMaterial: TStringField;
    tTalaolkNomeProduto: TStringField;
    tProdutoCliCodGrade: TIntegerField;
    tProdutoCliPosicao: TIntegerField;
    tProdutoClilkTamanho: TStringField;
    tProdutoClilkNomeGrade: TStringField;
    tNotaFiscalItenslkPercSitTributaria: TFloatField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoGradeCodProdutoCli: TStringField;
    tSetorFinal: TBooleanField;
    tTalaoProduzido: TBooleanField;
    tClienteCodBancoBoleto: TIntegerField;
    tContasInstrucao1: TStringField;
    tContasInstrucao2: TStringField;
    tContasInstrucao3: TStringField;
    tContasInstrucao4: TStringField;
    tContasEspecie: TStringField;
    tContasLocalPagamento: TStringField;
    tContasQtdLinhasInst: TIntegerField;
    tTalaoDtBaixa: TDateField;
    tVale: TTable;
    dsVale: TDataSource;
    tValeItens: TTable;
    dsValeItens: TDataSource;
    tValeNumVale: TIntegerField;
    tValeDtEmissao: TDateField;
    tValeCodCliente: TIntegerField;
    tValeVlrTotal: TFloatField;
    tValeFaturado: TBooleanField;
    tValeItensNumVale: TIntegerField;
    tValeItensItem: TIntegerField;
    tValeItensCodProduto: TIntegerField;
    tValeItensCodCor: TIntegerField;
    tValeItensQtd: TFloatField;
    tValeItensUnidade: TStringField;
    tValeItensVlrUnitario: TFloatField;
    tValeItensVlrTotal: TFloatField;
    tValeItensCodSitTrib: TIntegerField;
    tValeItensAliqIcms: TFloatField;
    tValeItensAliqIPI: TFloatField;
    tValeItensNumPedido: TIntegerField;
    tValeItensItemPedido: TIntegerField;
    tValeItenslkNomeProduto: TStringField;
    tValeItenslkNomeCor: TStringField;
    tValelkNomeCliente: TStringField;
    tValelkUF: TStringField;
    tValeItensNumMovEst: TIntegerField;
    tValeItenslkReferencia: TStringField;
    tPedidoNotaTipo: TStringField;
    tUsuarioVale: TBooleanField;
    tUsuarioRelVale: TBooleanField;
    tUsuarioAltVale: TBooleanField;
    tUsuarioExcVale: TBooleanField;
    tUsuarioInsVale: TBooleanField;
    tNotaFiscalVale: TTable;
    dsNotaFiscalVale: TDataSource;
    tValeSelecionado: TBooleanField;
    tNotaFiscalValeNumVale: TIntegerField;
    tNotaFiscalItensVale: TBooleanField;
    tValeNumNota: TIntegerField;
    tHistCliente: TTable;
    dsHistCliente: TDataSource;
    tHistClienteNumMov: TIntegerField;
    tHistClienteCodCliente: TIntegerField;
    tHistClienteNomeCliente: TStringField;
    tHistClienteDtHistorico: TDateField;
    tHistClienteObs: TMemoField;
    tUsuarioHistCliente: TBooleanField;
    tUsuarioAltHistCliente: TBooleanField;
    tUsuarioExcHistCliente: TBooleanField;
    tUsuarioInsHistCliente: TBooleanField;
    tOrcamentoCodVendedor: TIntegerField;
    tOrcamentolkNomeVendedor: TStringField;
    tOrcamentoItensUnidade: TStringField;
    tOrcamentoItensCodCor: TIntegerField;
    tOrcamentoItensCodProduto: TIntegerField;
    tOrcamentoItenslkNomeCor: TStringField;
    tOrcamentoItensMotivoNaoAprov: TStringField;
    tOrcamentoAprovado: TStringField;
    tOrcamentoItensDtAprovado: TDateField;
    tOrcamentoItensAprovado: TStringField;
    tPedidoItemProducaoVenda: TStringField;
    tProdutoPercComissaoVend: TFloatField;
    tParametrosPrecoAutomatico: TBooleanField;
    tPedidoEstoque: TBooleanField;
    tNotaFiscallkImpItemNotaPorTamanho: TBooleanField;
    tNotaFiscalItensPosicao: TIntegerField;
    tNotaFiscalItensTamanho: TStringField;
    tPedidolkImpItemNotaPorTam: TBooleanField;
    tPedidoItemPosicao: TIntegerField;
    tPedidoItemTamanho: TStringField;
    tValeItensPosicao: TIntegerField;
    tValeItensTamanho: TStringField;
    tValeItensCodGrade: TIntegerField;
    tParametrosMargemPreco1: TFloatField;
    tParametrosMargemPreco2: TFloatField;
    tParametrosMargemPreco3: TFloatField;
    tProdutoImpTabPreco: TBooleanField;
    tParametrosTabelaPrincipal: TStringField;
    tNotaFiscalItensPercComissao: TFloatField;
    tPedidoItemPercComissao: TFloatField;
    tProdutoUsuario: TStringField;
    tPedidoUsuario: TStringField;
    tNotaFiscalUsuario: TStringField;
    tClienteUsuario: TStringField;
    tFornecedoresUsuario: TStringField;
    tClienteDtCad: TDateField;
    tClienteHrCad: TTimeField;
    tFornecedoresDtCad: TDateField;
    tFornecedoresHrCad: TTimeField;
    tProdutoDtCad: TDateField;
    tProdutoHrCad: TTimeField;
    tPedidoDtCad: TDateField;
    tPedidoHrCad: TTimeField;
    tNotaFiscalDtCad: TDateField;
    tNotaFiscalHrCad: TTimeField;
    tUsuarioRelPlanoContas: TBooleanField;
    tOrcamentoItensProdutoNCad: TBooleanField;
    tFilial: TTable;
    dsFilial: TDataSource;
    tFilialCodigo: TIntegerField;
    tFilialEmpresa: TStringField;
    tFilialEndereco: TStringField;
    tFilialBairro: TStringField;
    tFilialCep: TStringField;
    tFilialCidade: TStringField;
    tFilialEstado: TStringField;
    tFilialTel: TStringField;
    tFilialTel2: TStringField;
    tFilialFax: TStringField;
    tFilialCNPJ: TStringField;
    tFilialInscr: TStringField;
    tUsuarioFilial: TBooleanField;
    tUsuarioAltFilial: TBooleanField;
    tUsuarioExcFilial: TBooleanField;
    tUsuarioInsFilial: TBooleanField;
    tNatOperacaoDescInterna: TStringField;
    tNEntradaCodCondPagto: TIntegerField;
    tCPagarFilial: TIntegerField;
    tCPagarParcFilial: TIntegerField;
    tCPagarParcHistFilial: TIntegerField;
    tCReceberFilial: TIntegerField;
    tCReceberParcFilial: TIntegerField;
    tCReceberParcHistFilial: TIntegerField;
    tNEntradaFilial: TIntegerField;
    tNEntradaItensFilial: TIntegerField;
    tNEntradaItensGradeFilial: TIntegerField;
    tNEntradaItensMobraFilial: TIntegerField;
    tNEntradaParcFilial: TIntegerField;
    tNotaFiscalFilial: TIntegerField;
    tNotaFiscalGradeFilial: TIntegerField;
    tNotaFiscalItensFilial: TIntegerField;
    tNotaFiscalParcFilial: TIntegerField;
    tNotaFiscalValeFilial: TIntegerField;
    tEstoqueMatMovFilial: TIntegerField;
    tDctoEstFilial: TIntegerField;
    tDctoEstGradeFilial: TIntegerField;
    tDctoEstItemFilial: TIntegerField;
    tParametrosFilial: TIntegerField;
    tClienteCodTransp: TIntegerField;
    tFilialSimples: TBooleanField;
    tOrcamentoFilial: TIntegerField;
    tOrcamentoItensFilial: TIntegerField;
    tProdutoCA: TStringField;
    tOrdemCompraFilial: TIntegerField;
    tOrdemCompra2Filial: TIntegerField;
    tOrdemCompraItemFilial: TIntegerField;
    tOrdemCompraItem2Filial: TIntegerField;
    tOrdemCompraItemGradeFilial: TIntegerField;
    tOrdemCompraNotaFilial: TIntegerField;
    tOrdemCompraNotaGradeFilial: TIntegerField;
    tCReceberParcNroLancExtComissao: TIntegerField;
    tCReceberParcComissaoItem: TBooleanField;
    tCReceberParcVlrComissaoRestante: TFloatField;
    RLPreviewSetup1: TRLPreviewSetup;
    tOrdemCompralkEmail: TStringField;
    tOrcamentoEmail: TStringField;
    tClienteIPISuspenso: TBooleanField;
    tClienteDtValidadeIPI: TDateField;
    tClienteCodObsIPI: TIntegerField;
    tNotaFiscalMotivoCanc: TStringField;
    tPedidoPedidoCliente: TStringField;
    tNotaFiscalItensNumOC: TStringField;
    tPedido2PedidoCliente: TStringField;
    tPedidoEspItemlkPedidoCliente: TStringField;
    tTalaoPedidoCliente: TStringField;
    tValeItenslkPedidoCliente: TStringField;
    tValeFilial: TIntegerField;
    tValeItensFilial: TIntegerField;
    tTranspFantasia: TStringField;
    tClasFiscalTipo: TStringField;
    tNEntradaVlrTotalDuplicata: TFloatField;
    tNEntradaItensGeraDupl: TBooleanField;
    tNEntradaItensMobraGeraDupl: TBooleanField;
    tNotaFiscallkIPISuspenso: TBooleanField;
    tEstoqueMatMovTamanho: TStringField;
    tOrdemCompraItemTamanho: TStringField;
    tNatOperacaoCodSitTrib: TIntegerField;
    tNatOperacaoCalcComissao: TBooleanField;
    dsProdutoGrade: TDataSource;
    tProdutoGrade: TTable;
    tProdutoGradeCodProduto: TIntegerField;
    tProdutoGradeCodGrade: TIntegerField;
    tProdutoTam: TTable;
    dsProdutoTam: TDataSource;
    tProdutoTamCodProduto: TIntegerField;
    tProdutoTamCodGrade: TIntegerField;
    tProdutoTamPosicao: TIntegerField;
    tProdutoTamTamanho: TStringField;
    tProdutoTamQtdMinima: TFloatField;
    tProdutoTamQtdMaxima: TFloatField;
    tProdutoTamlkTamanho: TStringField;
    tProdutoGradelkNomeGrade: TStringField;
    tProdutoCliNomeProdCli: TStringField;
    tDctoEstGradeNumMovEst: TIntegerField;
    tDctoEstGradeVlrUnitario: TFloatField;
    tDctoEstGradeVlrTotal: TFloatField;
    tNEntradaItensGradeNumMovEst: TIntegerField;
    tNEntradaVlrFrete: TFloatField;
    tNEntradaCodPlanoContasItens: TIntegerField;
    tPlanoContasItens: TTable;
    dsPlanoContasItens: TDataSource;
    tPlanoContasItensCodPlano: TIntegerField;
    tPlanoContasItensCodItem: TIntegerField;
    tPlanoContasItensNome: TStringField;
    tNEntradaItensPosicao: TIntegerField;
    tNEntradaItensTamanho: TStringField;
    tOrdemCompraItemPosicao: TIntegerField;
    tOrdemCompraItem2Posicao: TIntegerField;
    tOrdemCompraItem2Tamanho: TStringField;
    tClienteVendaPorMilheiro: TBooleanField;
    tPedidolkVendaPorMilheiro: TBooleanField;
    tProdutoClilkNomeFornecedor: TStringField;
    tProdutoClilkNomeCor: TStringField;
    tTranspCliente: TBooleanField;
    tFilialEmail: TStringField;
    tTranspPlaca: TStringField;
    tTranspUFPlaca: TStringField;
    tProdutoCodProdutoEst: TIntegerField;
    tProdutoVincularProduto: TBooleanField;
    tParametrosPercJuros: TFloatField;
    tProdutoTamPesoL: TFloatField;
    tProdutoTamPesoB: TFloatField;
    tFilial2: TTable;
    tFilial2Codigo: TIntegerField;
    tFilial2Empresa: TStringField;
    tFilial2Endereco: TStringField;
    tFilial2Bairro: TStringField;
    tFilial2Cep: TStringField;
    tFilial2Cidade: TStringField;
    tFilial2Estado: TStringField;
    tFilial2Tel: TStringField;
    tFilial2Tel2: TStringField;
    tFilial2Fax: TStringField;
    tFilial2CNPJ: TStringField;
    tFilial2Inscr: TStringField;
    tFilial2Simples: TBooleanField;
    tFilial2Email: TStringField;
    tExtComissaoFilial: TIntegerField;
    tExtComissaolkNomeFilial: TStringField;
    tParametrosControlarJurosParam: TBooleanField;
    tFeriado: TTable;
    tFeriadoData: TDateField;
    tFeriadoDescricao: TStringField;
    dsFeriado: TDataSource;
    tPedidoCanc: TTable;
    tPedidoCancPedido: TIntegerField;
    tPedidoCancItem: TIntegerField;
    tPedidoCancData: TDateField;
    tPedidoCancMotivo: TStringField;
    tPedidoCancItemPed: TIntegerField;
    dsPedidoCanc: TDataSource;
    tPedidoCancQtd: TFloatField;
    tPedidoNotaQtdPares: TFloatField;
    tProdutoCorlkNomeCor: TStringField;
    tDctoEstItemMotivoCanc: TStringField;
    tPedidoFilial: TIntegerField;
    tCReceberBoletoImp: TBooleanField;
    tFilialImpSimplesGaucho: TBooleanField;
    tFilialSimplesGaucho: TBooleanField;
    tPedidoItemUnidade: TStringField;
    tParametrosImpItemNotaPorTam: TBooleanField;
    tParametrosVendaPorMilheiro: TBooleanField;
    tPedidoImpTamPorItem: TBooleanField;
    tTalaoPosicao: TIntegerField;
    tTalaoTamanho: TStringField;
    tProdutoCliTamProdCli: TStringField;
    tProdutoCliCodCorCli: TIntegerField;
    tPedidoItemTalaoGerado: TBooleanField;
    tNotaFiscalGradeNumMovEst: TIntegerField;
    tClienteAgrupaPedidoNaNota: TBooleanField;
    tParametrosOCImpNosDadosAdicionais: TBooleanField;
    tParametrosUnidadePadrao: TStringField;
    tProdutoCorCodPigmento: TStringField;
    tPedidoCodVendedor2: TIntegerField;
    tPedidoPercComissao2: TFloatField;
    tClienteCodVendedor2: TIntegerField;
    tPedidoItemPercComissao2: TFloatField;
    tClientelkPercComissao2: TFloatField;
    tProdutoPercQuebraTaloes: TFloatField;
    tPedidoItemlkPercQuebraTalao: TFloatField;
    tProdutoPercComissaoVend2: TFloatField;
    tNotaFiscalItensPercComissao2: TFloatField;
    tCReceberParcCodPlanoContasItens: TIntegerField;
    tCPagarParcCodPlanoContasItens: TIntegerField;
    tMovimentosCodPlanoContasItens: TIntegerField;
    tChequePlanoContas: TIntegerField;
    tChequeCodPlanoContasItens: TIntegerField;
    tProdutoCorVlrVenda: TFloatField;
    tEmpresaLogoEmpresa: TStringField;
    tPedidoItemObsTalao: TStringField;
    tPedidolkFantasia: TStringField;
    tProdutoConsumoItemTamanhoMat: TStringField;
    tProdutoTamPrecoCusto: TFloatField;
    tProdutoFichaTecnicaConsPorTam: TBooleanField;
    tPedidoConsumoTamanhoMat: TStringField;
    tPedidoMateriallkFichaTecnicaConsPorTam: TStringField;
    tNotaFiscalPed: TTable;
    tNotaFiscalPedNumNota: TIntegerField;
    tNotaFiscalPedItemNota: TIntegerField;
    tNotaFiscalPedPedido: TIntegerField;
    tNotaFiscalPedItemPedido: TIntegerField;
    tNotaFiscalPedQtd: TFloatField;
    tNotaFiscalPedFilial: TIntegerField;
    dsNotaFiscalPed: TDataSource;
    tNotaFiscalPedGrade: TTable;
    dsNotaFiscalPedGrade: TDataSource;
    tNotaFiscalPedGradeFilial: TIntegerField;
    tNotaFiscalPedGradeNumNota: TIntegerField;
    tNotaFiscalPedGradeItemNota: TIntegerField;
    tNotaFiscalPedGradePedido: TIntegerField;
    tNotaFiscalPedGradeItemPedido: TIntegerField;
    tNotaFiscalPedGradeCodGrade: TIntegerField;
    tNotaFiscalPedGradePosicao: TIntegerField;
    tNotaFiscalPedGradeQtd: TFloatField;
    tParametrosSenhaAlt: TStringField;
    tUsuarioConsPedidos: TBooleanField;
    tPedidoItemLargura: TStringField;
    tNotaFiscalItensLargura: TStringField;
    tValeItensLargura: TStringField;
    tNotaFiscalItenslkNomeProduto: TStringField;
    tNotaFiscalPedlkPedidoCliente: TStringField;
    tNotaFiscalPedlkNumOS: TStringField;
    tNotaFiscalPedGradelkTamanho: TStringField;
    tTalaoQtdFaturada: TFloatField;
    tTalaoQtdRestante: TFloatField;
    tProdutoJuntarLarguraEDI: TBooleanField;
    tClienteJuntarLarguraEDI: TBooleanField;
    tPedidoTipo: TStringField;
    tNEntradaItensQtdRestante: TFloatField;
    tNEntradaItensQtdDevolvida: TFloatField;
    tNotaFiscalNDevolvida: TTable;
    tNotaFiscalNDevolvidaFilial: TIntegerField;
    tNotaFiscalNDevolvidaNumNota: TIntegerField;
    tNotaFiscalNDevolvidaItem: TIntegerField;
    tNotaFiscalNDevolvidaCodFornecedor: TIntegerField;
    tNotaFiscalNDevolvidaNumNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaItemNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaQtd: TFloatField;
    dsNotaFiscalNDevolvida: TDataSource;
    tTipoCobrancaDeposito: TBooleanField;
    tTipoCobrancaGeraBoleto: TBooleanField;
    tClienteCodTipoCobranca: TIntegerField;
    tNotaFiscalParclkDeposito: TBooleanField;
    tNotaFiscalParcCodConta: TIntegerField;
    tContasAgencia: TStringField;
    tClienteMDia1: TIntegerField;
    tClienteMDia2: TIntegerField;
    tNotaFiscallkMDia1: TIntegerField;
    tNotaFiscallkMDia2: TIntegerField;
    tTabPrecoCodCliente: TIntegerField;
    tTabPrecoCodProduto: TIntegerField;
    tTabPrecoCodCor: TIntegerField;
    tTabPrecoPreco: TFloatField;
    tTabPrecoDtPreco: TDateField;
    tTabPrecolkDescMaterial: TStringField;
    tTabPrecoPrecoMObra: TFloatField;
    tNatOperacaoMaoObra: TBooleanField;
    tUsuarioConsNotasBeneficiamento: TBooleanField;
    tUsuarioRelPedCarteira: TBooleanField;
    tClientePercComissao: TFloatField;
    tClientePercComissao2: TFloatField;
    tParametrosTipoComissao: TStringField;
    tCReceberParcCodVendedor2: TIntegerField;
    tCReceberParcPercComissao2: TFloatField;
    tNotaFiscalNDevolvidalkNomeFornecedor: TStringField;
    tGrupoCodSitTrib: TIntegerField;
    tContasDescNota: TStringField;
    tContaslk: TTable;
    tContaslkCodConta: TIntegerField;
    tContaslkNomeConta: TStringField;
    tContaslkSaldoConta: TFloatField;
    tContaslkTipoConta: TStringField;
    tContaslkCodBanco: TStringField;
    tContaslkInstrucao1: TStringField;
    tContaslkInstrucao2: TStringField;
    tContaslkInstrucao3: TStringField;
    tContaslkInstrucao4: TStringField;
    tContaslkEspecie: TStringField;
    tContaslkLocalPagamento: TStringField;
    tContaslkQtdLinhasInst: TIntegerField;
    tContaslkAgencia: TStringField;
    tContaslkDescNota: TStringField;
    tNotaFiscalParclkNomeBanco: TStringField;
    tUsuarioRelPedCarteiraVlr: TBooleanField;
    tUsuarioRelAcumuladoFat: TBooleanField;
    tGrupoPrecoAmostra: TFloatField;
    tNotaFiscalItensTipoItem: TStringField;
    tValeItensTipoItem: TStringField;
    tPedidoItemMateriaPrima: TBooleanField;
    tNotaFiscalItensQtdRestante: TFloatField;
    tNEntradaNDevolvida: TTable;
    dsNEntradaNDevolvida: TDataSource;
    tNEntradaNDevolvidaFilial: TIntegerField;
    tNEntradaNDevolvidaCodForn: TIntegerField;
    tNEntradaNDevolvidaNumNEntr: TIntegerField;
    tNEntradaNDevolvidaItem: TIntegerField;
    tNEntradaNDevolvidaNumNotaSaida: TIntegerField;
    tNEntradaNDevolvidaItemNotaSaida: TIntegerField;
    tNEntradaNDevolvidaQtd: TFloatField;
    tNotaFiscalItensQtdDevolvida: TFloatField;
    tNEntradaNDevolvidaDtEmissao: TDateField;
    tNEntradaNDevolvidaDtEntrada: TDateField;
    tUsuarioConsNotaFiscalBenef: TBooleanField;
    tNEntradaItensDevolucao: TBooleanField;
    tNatOperacaoControlarRetorno: TBooleanField;
    tPedidoItemAmostraEntregue: TBooleanField;
    tPedidoItemDtEntregaAmostra: TDateField;
    tPedidoItemHrEntregaAmostra: TTimeField;
    tUsuarioConsAmostra: TBooleanField;
    tGrupolk: TTable;
    tGrupolkCodigo: TIntegerField;
    tGrupolkNome: TStringField;
    tGrupolkReferencia: TStringField;
    tGrupolkCodSitTrib: TIntegerField;
    tGrupolkPrecoAmostra: TFloatField;
    tProdutolkCodSitTribGrupo: TFloatField;
    tNotaFiscalCodClienteTriang: TIntegerField;
    tClasFiscalNome: TStringField;
    tNotaFiscalNDevolvidalkCgcFornecedor: TStringField;
    tPedidoGradeQtdParesCanc: TFloatField;
    tPedidoCancGrade: TTable;
    tPedidoCancGradePedido: TIntegerField;
    tPedidoCancGradeItemPed: TIntegerField;
    tPedidoCancGradeItem: TIntegerField;
    tPedidoCancGradeCodGrade: TIntegerField;
    tPedidoCancGradePosicao: TIntegerField;
    tPedidoCancGradeQtd: TFloatField;
    dsPedidoCancGrade: TDataSource;
    tCondPgto2: TTable;
    tCondPgto2Codigo: TIntegerField;
    tCondPgto2Nome: TStringField;
    tCondPgto2PrazoVista: TStringField;
    tCondPgto2Custo: TFloatField;
    tCondPgto2Entrada: TBooleanField;
    tClienteImpOCAbaixoItem: TBooleanField;
    tUsuarioHistProduto: TBooleanField;
    tUsuarioHistFaturamento: TBooleanField;
    tGrupoCliente: TTable;
    dsGrupoCliente: TDataSource;
    tGrupoClienteCodigo: TIntegerField;
    tGrupoClienteNome: TStringField;
    tClienteCodGrupo: TIntegerField;
    tUsuarioGrupoCliente: TBooleanField;
    tUsuarioAltGrupoCliente: TBooleanField;
    tUsuarioInsGrupoCliente: TBooleanField;
    tUsuarioExcGrupoCliente: TBooleanField;
    tClienteCodTranspRedespacho: TIntegerField;
    tClienteFoneEntrega: TStringField;
    tClienteCaixaPostalEntrega: TStringField;
    tClienteFoneCobranca: TStringField;
    tClienteCaixaPostalCobranca: TStringField;
    tNotaFiscalPedCopia: TBooleanField;
    tNatOperacaoDeduzirFat: TBooleanField;
    tUsuarioConsNotasPorPedido: TBooleanField;
    tCPagarParcDtGerado: TDateField;
    tNotaFiscalBaseTransfICM: TFloatField;
    tNotaFiscalItensSomaTransfICM: TBooleanField;
    tNEntradaVlrDevolucao: TFloatField;
    tNatOperacao2DescInterna: TStringField;
    tNatOperacao2CodSitTrib: TIntegerField;
    tNatOperacao2CalcComissao: TBooleanField;
    tNatOperacao2MaoObra: TBooleanField;
    tNatOperacao2ControlarRetorno: TBooleanField;
    tNatOperacao2DeduzirFat: TBooleanField;
    tNEntradaItenslkDeduzirFat: TBooleanField;
    tGrupoCliente2: TTable;
    tGrupoCliente2Codigo: TIntegerField;
    tGrupoCliente2Nome: TStringField;
    tClientelkNomeGrupo: TStringField;
    tChequeCPagar: TTable;
    dsChequeCPagar: TDataSource;
    tChequeCPagarCodConta: TIntegerField;
    tChequeCPagarNumCheque: TIntegerField;
    tChequeCPagarNumCPagar: TIntegerField;
    tChequeCPagarParcela: TIntegerField;
    tChequeCPagarNumNota: TIntegerField;
    tChequeCPagarCodFornecedor: TIntegerField;
    tChequeCPagarValor: TFloatField;
    tChequeCPagarVlrJuros: TFloatField;
    tChequeCPagarVlrDesconto: TFloatField;
    tChequeCPagarFilial: TIntegerField;
    tChequeCPagarlkNomeFornecedor: TStringField;
    tCor2: TTable;
    tCor2Codigo: TIntegerField;
    tCor2Nome: TStringField;
    tEmpresaNumCodBarra1: TStringField;
    tEmpresaNumCodBarra2: TStringField;
    tCliente2: TTable;
    tCliente2Codigo: TIntegerField;
    tCliente2Nome: TStringField;
    tCliente2Endereco: TStringField;
    tCliente2Bairro: TStringField;
    tCliente2Cidade: TStringField;
    tCliente2Uf: TStringField;
    tCliente2Cep: TStringField;
    tCliente2Telefone: TStringField;
    tCliente2Telefone2: TStringField;
    tCliente2Fax: TStringField;
    tCliente2Pessoa: TStringField;
    tCliente2CgcCpf: TStringField;
    tCliente2InscrEst: TStringField;
    tCliente2Contato: TStringField;
    tCliente2Obs: TMemoField;
    tCliente2AprovCredito: TStringField;
    tCliente2TipoAprov: TStringField;
    tCliente2EndEntrega: TStringField;
    tCliente2BairroEntrega: TStringField;
    tCliente2CidEntrega: TStringField;
    tCliente2CepEntrega: TStringField;
    tCliente2UfEntrega: TStringField;
    tCliente2CgcCpfEntrega: TStringField;
    tCliente2InscEntrega: TStringField;
    tCliente2EndPgto: TStringField;
    tCliente2BairroPgto: TStringField;
    tCliente2CidPgto: TStringField;
    tCliente2CepPgto: TStringField;
    tCliente2UfPgto: TStringField;
    tCliente2Fantasia: TStringField;
    tCliente2DtCadastro: TDateField;
    tCliente2CodVendedor: TIntegerField;
    tCliente2ObsCtas: TMemoField;
    tCliente2Lojas: TIntegerField;
    tCliente2Selecionado: TBooleanField;
    tCliente2CaixaPostal: TStringField;
    tCliente2Rg: TStringField;
    tCliente2CodCidade: TIntegerField;
    tCliente2CodCidadeE: TIntegerField;
    tCliente2CodCidadeP: TIntegerField;
    tCliente2Email: TStringField;
    tCliente2PercTransf: TFloatField;
    tCliente2CodCondPgto: TIntegerField;
    tCliente2DtNascContato: TDateField;
    tCliente2NomeResp: TStringField;
    tCliente2ContatoCliente: TStringField;
    tCliente2ContatoModelagem: TStringField;
    tCliente2ImpItemNotaPorTam: TBooleanField;
    tCliente2CodBancoBoleto: TIntegerField;
    tCliente2Usuario: TStringField;
    tCliente2DtCad: TDateField;
    tCliente2HrCad: TTimeField;
    tCliente2CodTransp: TIntegerField;
    tCliente2IPISuspenso: TBooleanField;
    tCliente2DtValidadeIPI: TDateField;
    tCliente2CodObsIPI: TIntegerField;
    tCliente2VendaPorMilheiro: TBooleanField;
    tCliente2AgrupaPedidoNaNota: TBooleanField;
    tCliente2CodVendedor2: TIntegerField;
    tCliente2JuntarLarguraEDI: TBooleanField;
    tCliente2CodTipoCobranca: TIntegerField;
    tCliente2MDia1: TIntegerField;
    tCliente2MDia2: TIntegerField;
    tCliente2PercComissao: TFloatField;
    tCliente2PercComissao2: TFloatField;
    tCliente2ImpOCAbaixoItem: TBooleanField;
    tCliente2CodGrupo: TIntegerField;
    tCliente2CodTranspRedespacho: TIntegerField;
    tCliente2FoneEntrega: TStringField;
    tCliente2CaixaPostalEntrega: TStringField;
    tCliente2FoneCobranca: TStringField;
    tCliente2CaixaPostalCobranca: TStringField;
    tTransp2: TTable;
    tTransp2Codigo: TIntegerField;
    tTransp2Nome: TStringField;
    tTransp2Endereco: TStringField;
    tTransp2Bairro: TStringField;
    tTransp2Cidade: TStringField;
    tTransp2Cep: TStringField;
    tTransp2UF: TStringField;
    tTransp2Fone: TStringField;
    tTransp2Fax: TStringField;
    tTransp2CNPJ: TStringField;
    tTransp2Inscricao: TStringField;
    tTransp2Contato: TStringField;
    tTransp2Obs: TMemoField;
    tTransp2CodCidade: TIntegerField;
    tTransp2Fantasia: TStringField;
    tTransp2Cliente: TBooleanField;
    tTransp2UFPlaca: TStringField;
    tTransp2Placa: TStringField;
    tFuncionario2: TTable;
    tFuncionario2Codigo: TIntegerField;
    tFuncionario2Nome: TStringField;
    tFuncionario2Endereco: TStringField;
    tFuncionario2CodCidade: TIntegerField;
    tFuncionario2Bairro: TStringField;
    tFuncionario2Cep: TStringField;
    tFuncionario2Fone: TStringField;
    tFuncionario2DtAdmissao: TDateField;
    tFuncionario2CPF: TStringField;
    tFuncionario2RG: TStringField;
    tFuncionario2CTPS: TIntegerField;
    tFuncionario2Serie: TStringField;
    tFuncionario2PIS: TStringField;
    tFuncionario2DtNascimento: TDateField;
    tFuncionario2HrSemanais: TFloatField;
    tFuncionario2TipoPgto: TStringField;
    tFuncionario2VlrSalario: TFloatField;
    tFuncionario2DtDemissao: TDateField;
    tFuncionario2Horario1: TStringField;
    tFuncionario2Horario2: TStringField;
    tFuncionario2PercInsalubridade: TFloatField;
    tFuncionario2PercPericulosidade: TFloatField;
    tFuncionario2Uf: TStringField;
    tFuncionario2Obs: TMemoField;
    tFuncionario2EstCivil: TStringField;
    tFuncionario2Escolaridade: TStringField;
    tFuncionario2Funcao: TStringField;
    tFuncionario2NomeConjuge: TStringField;
    tGrade2: TTable;
    tGrade2Codigo: TIntegerField;
    tGrade2Nome: TStringField;
    tGrade2CodLetra: TStringField;
    tGrade2Largura: TStringField;
    tGrade2TipoDig: TStringField;
    tGrade2QtdParTotal: TIntegerField;
    tProduto2PercQuebraTaloes: TFloatField;
    tFilialEndLogo: TStringField;
    tFilial2SimplesGaucho: TBooleanField;
    tFilial2ImpSimplesGaucho: TBooleanField;
    tFilial2EndLogo: TStringField;
    tOrcamentoFone: TStringField;
    tOrcamentoCifFob: TStringField;
    tOrcamentoCopiado: TBooleanField;
    tOrcamentoItensPrazoEntrega: TStringField;
    tOrcamentoItensCopiado: TBooleanField;
    tOrcamentoItensCodGrade: TIntegerField;
    tOrcamentoItensPosicao: TIntegerField;
    tOrcamentoItensTamanho: TStringField;
    tOrcamentoItensPercComissao: TFloatField;
    tOrcamentoGrade: TTable;
    tOrcamentoGradeFilial: TIntegerField;
    tOrcamentoGradeNumOrcamento: TIntegerField;
    tOrcamentoGradeItem: TIntegerField;
    tOrcamentoGradeCodGrade: TIntegerField;
    tOrcamentoGradePosicao: TIntegerField;
    tOrcamentoGradeQtd: TFloatField;
    tOrcamentoGradeVlrUnitario: TFloatField;
    tOrcamentoGradeVlrTotal: TFloatField;
    dsOrcamentoGrade: TDataSource;
    tOrcamentoGradelkTamanho: TStringField;
    tOrcamentolkFoneVendedor: TStringField;
    tTalaoTalao: TIntegerField;
    tTalaoPedido: TIntegerField;
    tTalaoItemPedido: TIntegerField;
    tTalaoDtEntrega: TDateField;
    tTalaoGradeQtdFaturada: TFloatField;
    tTalaoGradeTamanho: TStringField;
    tTalaoFilial: TIntegerField;
    tTalaoDtReprogramacao: TDateField;
    tTalaoReprogramacao: TBooleanField;
    tTalaoNumOS: TStringField;
    tTalaoCancelado: TBooleanField;
    tTalaoHrBaixa: TTimeField;
    tTalaoMotivoCancelado: TStringField;
    tTalaoDtCancelado: TDateField;
    tParametrosImpNovaEtiqueta: TBooleanField;
    tNotaFiscalItensFabrica: TStringField;
    tNotaFiscalItensNumTalao: TIntegerField;
    tNotaFiscalPedNumTalao: TIntegerField;
    tNotaFiscalPedGradeNumTalao: TIntegerField;
    tPedidoItemPlano: TStringField;
    tPedidoItem2QtdLote: TFloatField;
    tPedidoItem2CodProdutoCli: TStringField;
    tPedidoItem2ProdCliPorTamanho: TBooleanField;
    tPedidoItem2ProducaoVenda: TStringField;
    tPedidoItem2Posicao: TIntegerField;
    tPedidoItem2Tamanho: TStringField;
    tPedidoItem2PercComissao: TFloatField;
    tPedidoItem2Unidade: TStringField;
    tPedidoItem2TalaoGerado: TBooleanField;
    tPedidoItem2PercComissao2: TFloatField;
    tPedidoItem2ObsTalao: TStringField;
    tPedidoItem2Largura: TStringField;
    tPedidoItem2MateriaPrima: TBooleanField;
    tPedidoItem2AmostraEntregue: TBooleanField;
    tPedidoItem2DtEntregaAmostra: TDateField;
    tPedidoItem2HrEntregaAmostra: TTimeField;
    tPedidoItem2Plano: TStringField;
    tTalaoPlano: TStringField;
    tNotaFiscalNumSeq: TIntegerField;
    tNotaFiscalItensNumSeq: TIntegerField;
    tNotaFiscalGradeNumSeq: TIntegerField;
    tNotaFiscalNDevolvidaNumSeq: TIntegerField;
    tNotaFiscalParcNumSeq: TIntegerField;
    tNotaFiscalValeNumSeq: TIntegerField;
    tPedidoNotaNumSeqNota: TIntegerField;
    tNotaFiscalPedNumSeq: TIntegerField;
    tNotaFiscalPedGradeNumSeq: TIntegerField;
    DSCondPgto2: TDataSource;
    tProdutoTamQtdMatriz: TIntegerField;
    tNEntradaNDevolvidaNumSeqNotaSaida: TIntegerField;
    tParametrosCodNatBenefF: TIntegerField;
    tCReceberParcHistTipo: TStringField;
    tCPagarParcHistTipo: TStringField;
    tParametrosCaminhoGrids: TStringField;
    tProdutoTamQtdNavalha: TIntegerField;
    tFilialNomeInterno: TStringField;
    tProdutoImpMatTalao: TBooleanField;
    tClienteInativo: TBooleanField;
    tTalaoTipo: TStringField;
    tTalaoDtImpressao: TDateField;
    tTalaoHrImpressao: TTimeField;
    tProdutoComplemento: TStringField;
    tCorPantone: TStringField;
    tUsuarioRelTalao: TBooleanField;
    tTalaoFabrica: TStringField;
    tUsuarioFeriado: TBooleanField;
    tUsuarioAltFeriado: TBooleanField;
    tUsuarioExcFeriado: TBooleanField;
    tUsuarioInsFeriado: TBooleanField;
    tUsuarioConsClienteProdPend: TBooleanField;
    tUsuarioConsProdutoPed: TBooleanField;
    tUsuarioConsLote: TBooleanField;
    tUsuarioGeraLote: TBooleanField;
    tUsuarioFichaProducao: TBooleanField;
    tUsuarioConsPedidoPendFat: TBooleanField;
    tProdutoCorInativo: TBooleanField;
    tFornecedoresCliente: TBooleanField;
    tUsuarioConsMaterialFicha: TBooleanField;
    tUsuarioUnidade: TBooleanField;
    tUsuarioAltUnidade: TBooleanField;
    tUsuarioExcUnidade: TBooleanField;
    tUsuarioInsUnidade: TBooleanField;
    tUnidade: TTable;
    dsUnidade: TDataSource;
    tUnidadeUnidade: TStringField;
    tUnidadeConversor: TFloatField;
    tCadastroSimples: TTable;
    tCadastroSimplesCodigo: TIntegerField;
    tCadastroSimplesTipo: TStringField;
    dsCadastroSimples: TDataSource;
    tUsuarioCadastroSimples: TBooleanField;
    tUsuarioAltCadastroSimples: TBooleanField;
    tUsuarioExcCadastroSimples: TBooleanField;
    tUsuarioInsCadastroSimples: TBooleanField;
    tProdutoCodTipoProduto: TIntegerField;
    tProdutoCodTipoMaterial: TIntegerField;
    tFornecedoresEmail: TStringField;
    tFornecedoresHomePage: TStringField;
    tFornecedoresDDDFone1: TIntegerField;
    tFornecedoresDDDFone2: TIntegerField;
    tFornecedoresDDDFax: TIntegerField;
    tClienteObs: TMemoField;
    tClienteDDDFone1: TIntegerField;
    tClienteDDDFone2: TIntegerField;
    tClienteDDDFax: TIntegerField;
    tClienteHomePage: TStringField;
    tClienteEmail: TStringField;
    tFornecedoresObsForn: TMemoField;
    tClienteEndComplemento: TStringField;
    tFornecedoresEndComplemento: TStringField;
    tCPagarParcHistCodConta: TIntegerField;
    tCReceberParcHistCodConta: TIntegerField;
    tCPagarParcHistlkNomeConta: TStringField;
    tCReceberParcHistlkNomeConta: TStringField;
    tUsuarioRelDiarioForn: TBooleanField;
    tUsuarioRelRazaoForn: TBooleanField;
    tUsuarioRelDiarioCli: TBooleanField;
    tUsuarioRelRazaoCli: TBooleanField;
    tCReceberParcRem: TTable;
    tCReceberParcRemFilial: TIntegerField;
    tCReceberParcRemNumCReceber: TIntegerField;
    tCReceberParcRemParcCReceber: TIntegerField;
    tCReceberParcRemItemHist: TIntegerField;
    tCReceberParcRemItemRem: TIntegerField;
    tCReceberParcRemCodConta: TIntegerField;
    tCReceberParcRemInstrucao: TStringField;
    tCReceberParcRemCampoAlterado: TStringField;
    tCReceberParcRemEspDoc: TStringField;
    tCReceberParcRemCodAceite: TStringField;
    tCReceberParcRemInstProtesto: TStringField;
    tCReceberParcRemDiasProtesto: TIntegerField;
    tCReceberParcRemTaxaMulta: TFloatField;
    tCReceberParcRemTipoJuros: TStringField;
    tCReceberParcRemVlrJuros: TFloatField;
    tCReceberParcRemTipoDesconto: TStringField;
    tCReceberParcRemVlrDesconto: TFloatField;
    tCReceberParcRemDtLimiteDesconto: TStringField;
    tCReceberParcRemVlrDescAntecipacao: TFloatField;
    tCReceberParcRemVlrAbatimento: TFloatField;
    tCReceberParcRemAvalista: TStringField;
    tCReceberParcRemCnpjAvalista: TStringField;
    tCReceberParcRemDtVecto: TStringField;
    tCReceberParcRemCodCedente: TStringField;
    tCReceberParcRemCepAvalista: TStringField;
    tCReceberParcRemEndAvalista: TStringField;
    tCReceberParcRemCidAvalista: TStringField;
    tCReceberParcRemUFAvalista: TStringField;
    tCReceberParcRemImpBoleto: TStringField;
    tCReceberParcRemInstrCobranca1: TStringField;
    tCReceberParcRemInstrCobranca2: TStringField;
    tCReceberParcRemNumCarteira: TStringField;
    tCReceberParcRemBairroAvalista: TStringField;
    tCReceberParcRemEmail: TStringField;
    tCReceberParcRemBoletoPorEmail: TBooleanField;
    tCReceberParcRemNumTitBanco: TStringField;
    dsCReceberParcRem: TDataSource;
    tCReceberParcRemlkNomeConta: TStringField;
    tCReceberParcCodBancoBoleto: TIntegerField;
    tUsuarioCobrBcoItau: TBooleanField;
    tUsuarioCobrBcoSantander: TBooleanField;
    tContaslkDigConta: TStringField;
    tContaslkCodCedente: TStringField;
    tContaslkFilial: TIntegerField;
    tContasDigConta: TStringField;
    tContasCodCedente: TStringField;
    tContasFilial: TIntegerField;
    tCReceberParcNumCarteira: TStringField;
    tContasParametros: TTable;
    dsContasParametros: TDataSource;
    tContasParametrosCodConta: TIntegerField;
    tContasParametrosAno: TIntegerField;
    tContasParametrosItem: TIntegerField;
    tContasParametrosNumSeqNossoNum: TIntegerField;
    tContasNumConta: TStringField;
    tContaslkNumConta: TStringField;
    tUsuarioAltCobrBcoSantander: TBooleanField;
    tUsuarioExcCobrBcoSantander: TBooleanField;
    tUsuarioInsCobrBcoSantander: TBooleanField;
    tCReceberParcRemTipoDocumentoST: TStringField;
    tCReceberParcRemCodCompensacaoST: TStringField;
    tCReceberParcRemCodBaixaST: TStringField;
    tCReceberParcRemCodProtestoST: TStringField;
    tCReceberParcRemFormaCadastramentoST: TStringField;
    tCReceberParcRemNumRemessaST: TIntegerField;
    tCReceberParcRemCodTransmissaoST: TStringField;
    tCReceberParclkNomeBancoBoleto: TStringField;
    tCliente2lkCidade: TStringField;
    tCliente2lkCidadeP: TStringField;
    tCReceberParcRemDiasBaixa: TIntegerField;
    tCReceberParcRemVlrIOF: TFloatField;
    tCReceberParcRemCodMulta: TStringField;
    tCReceberParcRemDtMulta: TStringField;
    tCReceberParcRemVlrMulta: TFloatField;
    tCReceberParcRemTipoDesconto2: TStringField;
    tCReceberParcRemDtLimiteDesconto2: TStringField;
    tCReceberParcRemVlrDesconto2: TFloatField;
    tCReceberParcNumSeqNossoNum: TIntegerField;
    tCReceberParcItemSeqNossoNum: TIntegerField;
    tOrdemCompraCanc: TTable;
    dsOrdemCompraCanc: TDataSource;
    tOrdemCompraCancFilial: TIntegerField;
    tOrdemCompraCancCodigo: TIntegerField;
    tOrdemCompraCancItem: TIntegerField;
    tOrdemCompraCancItemCanc: TIntegerField;
    tOrdemCompraCancData: TDateField;
    tOrdemCompraCancMotivo: TStringField;
    tOrdemCompraCancQtd: TFloatField;
    tOrdemCompraCancDtUsuario: TDateField;
    tOrdemCompraCancUsuario: TStringField;
    tOrdemCompraCancHrUsuario: TTimeField;
    tOrdemCompraItemQtdCancelada: TFloatField;
    tOrdemCompraItemGradeQtdCancelada: TFloatField;
    tOrdemCompraCancCodGrade: TIntegerField;
    tOrdemCompraCancPosicao: TIntegerField;
    tOrdemCompraCanclkTamanho: TStringField;
    tUsuarioCobrBcoReal: TBooleanField;
    tUsuarioAltCobrBcoReal: TBooleanField;
    tUsuarioExcCobrBcoReal: TBooleanField;
    tUsuarioInsCobrBcoReal: TBooleanField;
    tCReceberParcRemIncidenciaMulta: TStringField;
    tCReceberParcRemQtdDiasMulta: TIntegerField;
    tUsuarioCobrBcoBrasil: TBooleanField;
    tUsuarioAltCobrBcoBrasil: TBooleanField;
    tUsuarioExcCobrBcoBrasil: TBooleanField;
    tUsuarioInsCobrBcoBrasil: TBooleanField;
    tCReceberParcRemCodComando: TStringField;
    tContasCNAB: TStringField;
    tNotaFiscalTBObs: TTable;
    dsNotaFiscalTBObs: TDataSource;
    tNotaFiscalTBObsFilial: TIntegerField;
    tNotaFiscalTBObsNumSeq: TIntegerField;
    tNotaFiscalTBObsNumNota: TIntegerField;
    tNotaFiscalTBObsDadosAdicionais: TMemoField;
    tParametrosObsSimples: TStringField;
    tProdutoDescMaterial: TStringField;
    tProduto2DescMaterial: TStringField;
    tProduto2EstMaximo: TFloatField;
    tProduto2PercComissaoVend: TFloatField;
    tProduto2ImpTabPreco: TBooleanField;
    tProduto2Usuario: TStringField;
    tProduto2DtCad: TDateField;
    tProduto2HrCad: TTimeField;
    tProduto2CA: TStringField;
    tProduto2VincularProduto: TBooleanField;
    tProduto2CodProdutoEst: TIntegerField;
    tProduto2PercComissaoVend2: TFloatField;
    tProduto2FichaTecnicaConsPorTam: TBooleanField;
    tProduto2JuntarLarguraEDI: TBooleanField;
    tProduto2ImpMatTalao: TBooleanField;
    tProduto2Complemento: TStringField;
    tProduto2CodTipoProduto: TIntegerField;
    tProduto2CodTipoMaterial: TIntegerField;
    tCadastroSimplesAbreviatura: TStringField;
    tGrupoItem: TTable;
    tGrupoItemCodGrupo: TIntegerField;
    tGrupoItemCodSubGrupo: TIntegerField;
    tGrupoItemNome: TStringField;
    tGrupoItemEstoque: TBooleanField;
    dsGrupoItem: TDataSource;
    tGrupoEstoque: TBooleanField;
    tCliente2Inativo: TBooleanField;
    tCliente2DDDFone1: TIntegerField;
    tCliente2DDDFone2: TIntegerField;
    tCliente2DDDFax: TIntegerField;
    tCliente2HomePage: TStringField;
    tCliente2EndComplemento: TStringField;
    tClienteCodAnt: TIntegerField;
    tCliente2CodAnt: TIntegerField;
    tVendedorCodAnt: TIntegerField;
    tUsuarioConsCReceber: TBooleanField;
    tNotaFiscalQtdTotalPares: TFloatField;
    tClienteAcumularFabricaEDI: TBooleanField;
    tVendedorInativo: TBooleanField;
    tProdutoQtdVolume: TIntegerField;
    tProdutoTamQtdVolume: TIntegerField;
    tClienteIpi: TFloatField;
    tClienteTipoFrete: TStringField;
    tUsuarioImposto: TBooleanField;
    tUsuarioAltImposto: TBooleanField;
    tUsuarioExcImposto: TBooleanField;
    tUsuarioInsImposto: TBooleanField;
    tImpostos: TTable;
    tImpostosCodigo: TIntegerField;
    tImpostosNome: TStringField;
    tImpostosPercentual: TFloatField;
    dsImpostos: TDataSource;
    tUsuarioRelInventario: TBooleanField;
    tEstoqueMatMovPercTributacao: TFloatField;
    tNotaFiscalItenslkIcms: TBooleanField;
    tNEntradaItenslkPercSitTrib: TFloatField;
    tValeItenslkPercSitTrib: TFloatField;
    tProduto2QtdVolume: TIntegerField;
    tEstoqueMatMovVlrFrete: TFloatField;
    tNEntradaItensVlrFrete: TFloatField;
    tCor2Pantone: TStringField;
    tProdutoMatlkPantone: TStringField;
    tUsuarioTipoProcesso: TBooleanField;
    tUsuarioAltTipoProcesso: TBooleanField;
    tUsuarioExcTipoProcesso: TBooleanField;
    tUsuarioInsTipoProcesso: TBooleanField;
    tProdutoCodProcesso: TIntegerField;
    tClienteNomeEntrega: TStringField;
    tCadastroSimplesNome: TStringField;
    tUsuarioConsPedidoProcesso: TBooleanField;
    tUsuarioAltNotaFinanceiro: TBooleanField;
    tGrupoTipoProduto: TStringField;
    tPedidoItemlkCodGrupo: TIntegerField;
    tUsuarioMostraPrecoMat: TBooleanField;
    tEstoqueMatMovCodNatOper: TIntegerField;
    tPedidoCancNumLote: TIntegerField;
    tPedidoCancUsuario: TStringField;
    tPedidoCancDtUsuario: TDateField;
    tPedidoCancHrUsuario: TTimeField;
    tProdutoGradeInativo: TBooleanField;
    tCliente2lkCidadeE: TStringField;
    tTransp2lkCidade: TStringField;
    tTabPrecoHist: TTable;
    tTabPrecoHistCodCliente: TIntegerField;
    tTabPrecoHistCodProduto: TIntegerField;
    tTabPrecoHistCodCor: TIntegerField;
    tTabPrecoHistItem: TIntegerField;
    tTabPrecoHistPreco: TFloatField;
    tTabPrecoHistPrecoMObra: TFloatField;
    tTabPrecoHistDtAlteracao: TDateField;
    tTabPrecoHistUsuario: TStringField;
    tTabPrecoHistDtUsuario: TDateField;
    tTabPrecoHistHrUsuario: TTimeField;
    dsTabPrecoHist: TDataSource;
    tTabPrecoHistMotivo: TStringField;
    tPedidoItemNumNotaEntrada: TIntegerField;
    tNEntradaItensNumPedCliente: TStringField;
    tTipoCobrancaQtdDias: TIntegerField;
    tCReceberParcDtVencimento2: TDateField;
    tChequeFilial: TIntegerField;
    tChequeNumMov: TIntegerField;
    tChequeCPagarNumMov: TIntegerField;
    tClienteVlrLimiteCredito: TFloatField;
    tUsuarioConsLimiteCli: TBooleanField;
    tRelatorio: TTable;
    tRelatorioNomeRel: TStringField;
    tRelatorioNumUltPagina: TIntegerField;
    dsRelatorio: TDataSource;
    tRelatorioPaginaAnt: TIntegerField;
    tRelatorioFilial: TIntegerField;
    tDctoEstGradelkLargura: TStringField;
    tUsuarioPosicao: TBooleanField;
    tUsuarioAltPosicao: TBooleanField;
    tUsuarioExcPosicao: TBooleanField;
    tUsuarioInsPosicao: TBooleanField;
    tPosicao: TTable;
    dsPosicao: TDataSource;
    tPosicaoCodigo: TIntegerField;
    tPosicaoNome: TStringField;
    tProdutoComb: TTable;
    dsProdutoComb: TDataSource;
    tProdutoMatCodSetor: TIntegerField;
    tProdutoMatCodCombinacao: TIntegerField;
    tProdutoMatCodPosicao: TIntegerField;
    tParametrosUsaSetorFichaTecnica: TBooleanField;
    tParametrosUsaPosicaoFichaTecnica: TBooleanField;
    tProdutoCombCodProduto: TIntegerField;
    tProdutoCombCodCor: TIntegerField;
    tProdutoCombCodCombinacao: TIntegerField;
    tProdutoCombNome: TStringField;
    tPedidoItemCodCombinacao: TIntegerField;
    tNotaFiscalItensCodCombinacao: TIntegerField;
    tTalaoCodCombinacao: TIntegerField;
    tSetor2: TTable;
    tPosicao2: TTable;
    tSetor2Codigo: TIntegerField;
    tSetor2Nome: TStringField;
    tSetor2ImpTalao: TBooleanField;
    tSetor2Atelier: TBooleanField;
    tSetor2MetaDia: TIntegerField;
    tSetor2Final: TBooleanField;
    tPosicao2Codigo: TIntegerField;
    tPosicao2Nome: TStringField;
    tProdutoMatlkNomeSetor: TStringField;
    tProdutoMatlkNomePosicao: TStringField;
    tUsuarioTipoIndicacao: TBooleanField;
    tUsuarioAltTipoIndicacao: TBooleanField;
    tUsuarioExcTipoIndicacao: TBooleanField;
    tUsuarioInsTipoIndicacao: TBooleanField;
    tParametrosUsaTipoIndicacao: TBooleanField;
    tClienteCodIndicacao: TIntegerField;
    tClienteComplementoIndicacao: TStringField;
    tDctoEstCodFornecedor: TIntegerField;
    tParametrosUsaFornDoctoEstoque: TBooleanField;
    tUsuarioConsCliFornMov: TBooleanField;
    tUsuarioMostrarValorMovCli: TBooleanField;
    tFornecedoresCodTransportadora: TIntegerField;
    tFornecedoresTipoFrete: TStringField;
    tClienteMercado: TStringField;
    tClienteRef: TTable;
    dsClienteRef: TDataSource;
    tClienteRefCodCliente: TIntegerField;
    tClienteRefItem: TIntegerField;
    tClienteRefTipo: TStringField;
    tClienteRefNome: TStringField;
    tClienteRefFone: TStringField;
    tClienteRefFax: TStringField;
    tClienteRefRamal: TStringField;
    tClienteRefSetor: TStringField;
    tClienteRefEndereco: TStringField;
    tClienteRefCodCidade: TIntegerField;
    tClienteRefUF: TStringField;
    tClienteRefEMail: TStringField;
    tClienteRefAgencia: TStringField;
    tClienteRefDtNascimento: TDateField;
    tClienteObsComercial: TMemoField;
    tTalaoEntregue: TBooleanField;
    tTalaoDtEntregue: TDateField;
    tFornecedoresNomeForn: TStringField;
    tFornecedores2EndForn: TStringField;
    tFornecedores2BairroForn: TStringField;
    tFornecedores2CidadeForn: TStringField;
    tFornecedores2CEPForn: TStringField;
    tFornecedores2EstadoForn: TStringField;
    tFornecedores2Tel1Forn: TStringField;
    tFornecedores2Tel2Forn: TStringField;
    tFornecedores2FaxForn: TStringField;
    tFornecedores2CGC: TStringField;
    tFornecedores2Insc: TStringField;
    tFornecedores2ContatoForn: TStringField;
    tFornecedores2DataCadastroForn: TDateField;
    tFornecedores2ObsForn: TMemoField;
    tFornecedores2Ramal: TStringField;
    tFornecedores2Email: TStringField;
    tFornecedores2HomePage: TStringField;
    tFornecedores2CodCondPgto: TIntegerField;
    tFornecedores2FornecedorOutros: TStringField;
    tFornecedores2CodCidade: TIntegerField;
    tFornecedores2CustoFixo: TBooleanField;
    tFornecedores2Usuario: TStringField;
    tFornecedores2DtCad: TDateField;
    tFornecedores2HrCad: TTimeField;
    tFornecedores2Cliente: TBooleanField;
    tFornecedores2EndComplemento: TStringField;
    tFornecedores2DDDFone1: TIntegerField;
    tFornecedores2DDDFone2: TIntegerField;
    tFornecedores2DDDFax: TIntegerField;
    tFornecedores2CodAnt: TIntegerField;
    tFornecedores2CodTransportadora: TIntegerField;
    tFornecedores2TipoFrete: TStringField;
    tFilialCalculaIPI: TBooleanField;
    tProdutoMatlkInativo: TBooleanField;
    tFilial2NomeInterno: TStringField;
    tFilial2CalculaIPI: TBooleanField;
    tClienteImpPlano: TBooleanField;
    tNotaFiscalItensPlano: TStringField;
    tUsuarioTalaoImprFaturado: TBooleanField;
    tUsuarioTalaoBaixaManual: TBooleanField;
    tFilialInativo: TBooleanField;
    RxDBFilter1: TRxDBFilter;
    tNEntradaVlrDesc: TFloatField;
    tNEntradaPercDesc: TFloatField;
    tNEntradaItensVlrRateioDupl: TFloatField;
    tNEntradaItensVlrRateioNota: TFloatField;
    tCidadeCodMunicipio: TStringField;
    tParametrosVersaoEmissaoNFe: TStringField;
    tParametrosSerieNormal: TStringField;
    tParametrosSerieContingencia: TStringField;
    tParametrosLocalServidorNFe: TStringField;
    tParametrosControlaNFe: TBooleanField;
    tParametrosEndSalvarXMLNFe: TStringField;
    tParametrosEmailResponsavelSistema: TStringField;
    tParametrosNFeProducao: TBooleanField;
    tFilialCodCidade: TIntegerField;
    tFilialInscMunicipal: TStringField;
    tFilialCNAE: TStringField;
    tFilialNumEnd: TStringField;
    tFilialHomePage: TStringField;
    tFilial2Inativo: TBooleanField;
    tFilial2CodCidade: TIntegerField;
    tFilial2InscMunicipal: TStringField;
    tFilial2CNAE: TStringField;
    tFilial2NumEnd: TStringField;
    tFilial2HomePage: TStringField;
    tFornecedoresNumEnd: TStringField;
    tCReceberSerie: TStringField;
    tCReceberNumSeqNota: TIntegerField;
    tCReceberParcSerie: TStringField;
    tCReceberParcNumSeqNota: TIntegerField;
    tClienteEmailNFe: TStringField;
    tClienteNumEnd: TStringField;
    tClienteNumEndEntrega: TStringField;
    tClienteCodCSTIPI: TStringField;
    tClienteComplEndereco: TStringField;
    tUFIDPais: TIntegerField;
    tUFCodUF: TStringField;
    tProdutoCodCSTIPI: TStringField;
    tNotaFiscalNFeRecibo: TStringField;
    tNotaFiscalNFeProtocolo: TStringField;
    tNotaFiscalNFeChaveAcesso: TStringField;
    tNotaFiscalNFeProtocoloCancelada: TStringField;
    tNotaFiscalSerie: TStringField;
    tNotaFiscalNFeCodBarraCont: TStringField;
    tNotaFiscalItensCodCSTIPI: TStringField;
    tNatOperacaoCodCSTIPI: TStringField;
    tValeNumSeqNota: TIntegerField;
    tEstoqueMatMovNumSeqNota: TIntegerField;
    tEstoqueMatMovSerie: TStringField;
    tExtComissaoNumSeqNota: TIntegerField;
    tExtComissaoSerie: TStringField;
    tPais: TTable;
    tPaisID: TIntegerField;
    tPaisCodPais: TStringField;
    dsPais: TDataSource;
    tCSTIPI: TTable;
    dsCSTIPI: TDataSource;
    tCSTIPICodigo: TStringField;
    tCSTIPINome: TStringField;
    tNotaFiscalItensObsComplementar: TStringField;
    tNotaFiscalItensAliqPis: TFloatField;
    tNotaFiscalItensAliqCofins: TFloatField;
    tNotaFiscalItensVlrPis: TFloatField;
    tNotaFiscalItensVlrCofins: TFloatField;
    tNotaFiscalRef: TTable;
    tNotaFiscalRefFilial: TIntegerField;
    tNotaFiscalRefNumSeq: TIntegerField;
    tNotaFiscalRefItem: TIntegerField;
    tNotaFiscalRefNumSeqRef: TIntegerField;
    tNotaFiscalRefNumNotaRef: TIntegerField;
    tNotaFiscalRefSerieRef: TStringField;
    tNotaFiscalRefCodUFEmitenteRef: TStringField;
    tNotaFiscalRefAnoEmissaoRef: TIntegerField;
    tNotaFiscalRefMesEmissaoRef: TIntegerField;
    tNotaFiscalRefCNPJEmitenteRef: TStringField;
    tNotaFiscalRefModeloRef: TStringField;
    tNotaFiscalRefNFeChaveAcessoRef: TStringField;
    tNotaFiscalRefCodFornecedor: TIntegerField;
    dsNotaFiscalRef: TDataSource;
    tNotaFiscalVlrPis: TFloatField;
    tNotaFiscalVlrCofins: TFloatField;
    tNotaFiscalTipoNotaNFeRef: TStringField;
    tNotaFiscalVlrTaxaCiscomex: TFloatField;
    tNotaFiscalVlrOutros: TFloatField;
    tMovimentosFilial: TIntegerField;
    tMovimentosParcela: TIntegerField;
    tPercSimples: TTable;
    dsPercSimples: TDataSource;
    tPercSimplesFilial: TIntegerField;
    tPercSimplesAno: TIntegerField;
    tPercSimplesMes: TIntegerField;
    tPercSimplesPercentual: TFloatField;
    tUsuarioPercSimples: TBooleanField;
    tUsuarioAltPercSimples: TBooleanField;
    tUsuarioExcPercSimples: TBooleanField;
    tUsuarioInsPercSimples: TBooleanField;
    tFilialUsarICMSimples: TBooleanField;
    tNotaFiscalBaseIcmsSimples: TFloatField;
    tNotaFiscalVlrIcmsSimples: TFloatField;
    tNotaFiscalItensBaseIcmsSimples: TFloatField;
    tNotaFiscalItensVlrIcmsSimples: TFloatField;
    tNotaFiscalPercIcmsSimples: TFloatField;
    tHistClienteResponsavel: TStringField;
    tHistClienteFilial: TIntegerField;
    tHistClienteCodHistorico: TIntegerField;
    tHistClienteTipo: TStringField;
    tNotaFiscalVlrImpImportacao: TFloatField;
    tNotaFiscalICMSVlrSubst: TFloatField;
    tNotaFiscalICMSBaseSubst: TFloatField;
    tParametrosImpRefNota: TBooleanField;
    tTranspEmail: TStringField;
    tTranspHomePage: TStringField;
    tParametrosMostrarTelaOCnaNotaFiscal: TBooleanField;
    tUsuarioPais: TBooleanField;
    tUsuarioAltPais: TBooleanField;
    tUsuarioExcPais: TBooleanField;
    tUsuarioInsPais: TBooleanField;
    tExtCartao: TTable;
    dsExtCartao: TDataSource;
    tExtCartaoNumMov: TIntegerField;
    tExtCartaoCodCartao: TIntegerField;
    tExtCartaoNumCartao: TStringField;
    tExtCartaoValidadeCartao: TStringField;
    tExtCartaoNumAutorizacao: TStringField;
    tExtCartaoDtMov: TDateField;
    tExtCartaoFuncao: TStringField;
    tExtCartaoCodCliente: TIntegerField;
    tExtCartaoValor: TFloatField;
    tExtCartaoDtEmissao: TDateField;
    tExtCartaoObs: TStringField;
    tExtCartaoTipoDoc: TStringField;
    tExtCartaoNumNota: TIntegerField;
    tExtCartaoNumSeqNota: TIntegerField;
    tExtCartaoFilial: TIntegerField;
    tExtCartaoDtPagamento: TDateField;
    tExtCartaoVlrPagamento: TFloatField;
    tExtCartaoPago: TBooleanField;
    tExtCartaoVlrPendente: TFloatField;
    tExtCartaoDtVencimento: TDateField;
    tExtCartaoCodLoja: TIntegerField;
    tExtCartaoCodConta: TIntegerField;
    tExtCartaoNumMovFin: TIntegerField;
    tExtCartaoPlanoContas: TIntegerField;
    tExtCartaoCodPlanoContasItens: TIntegerField;
    tExtCartaoNumCReceber: TIntegerField;
    tExtCartaoParcela: TIntegerField;
    tEmpresaNivel: TIntegerField;
    tUFICMSInterno: TFloatField;
    tCliente2NumEnd: TStringField;
    tCliente2NumEndEntrega: TStringField;
    tCliente2ComplEndereco: TStringField;
    tCReceberParclkNumEnd: TStringField;
    tTranspPessoa: TStringField;
    tTransp2Pessoa: TStringField;
    tNotaFiscallkPessoaTransp: TStringField;
    tNotaFiscalItensSerie: TStringField;
    tParametrosUsarOutlook: TBooleanField;
    tParametrosEndSalvarPDFNFe: TStringField;
    tTranspEmailNFe: TStringField;
    tParametrosQtdLinhasIniciaisDupl: TIntegerField;
    tParametrosQtdLinhasIniciaisBoleto: TIntegerField;
    tNatOperacaoCopiarNotaTriangular: TBooleanField;
    tParametrosCodNatOperTriangular: TIntegerField;
    tParametrosCodNatOperTriangular2: TIntegerField;
    tNotaFiscalNumNotaCopiada: TIntegerField;
    tNotaFiscalSerieCopiada: TStringField;
    tClienteUsaIcmsSimples: TBooleanField;
    tProdutoTamCalculo: TFloatField;
    tNatOperacaoCodPis: TStringField;
    tNatOperacaoCodCofins: TStringField;
    tNatOperacaoTipoPis: TStringField;
    tNatOperacaoTipoCofins: TStringField;
    tNotaFiscalItensCodPis: TStringField;
    tNotaFiscalItensCodCofins: TStringField;
    tNotaFiscalItensTipoPis: TStringField;
    tNotaFiscalItensTipoCofins: TStringField;
    tParametrosGeraComissaoDevol: TBooleanField;
    tUsuarioRegimeTrib: TBooleanField;
    tUsuarioAltRegimeTrib: TBooleanField;
    tUsuarioExcRegimeTrib: TBooleanField;
    tUsuarioInsRegimeTrib: TBooleanField;
    tUsuarioAltTabPreco: TBooleanField;
    tUsuarioCSOSN: TBooleanField;
    tUsuarioAltCSOSN: TBooleanField;
    tUsuarioExcCSOSN: TBooleanField;
    tUsuarioInsCSOSN: TBooleanField;
    tUsuarioTabPis: TBooleanField;
    tUsuarioTabCofins: TBooleanField;
    tUsuarioAltTabPis: TBooleanField;
    tUsuarioAltTabCofins: TBooleanField;
    tUsuarioExcTabPis: TBooleanField;
    tUsuarioExcTabCofins: TBooleanField;
    tUsuarioInsTabPis: TBooleanField;
    tUsuarioInsTabCofins: TBooleanField;
    tFilialCodRegimeTrib: TIntegerField;
    tNotaFiscalItensClasFiscal: TStringField;
    tSitTributariaTipo: TStringField;
    tSitTributariaNome: TStringField;
    tNotaFiscalItensOrigemProd: TStringField;
    tProdutoOrigemProd: TStringField;
    tCSTIPIGeraIPI: TBooleanField;
    tFilialCodPis: TStringField;
    tFilialCodCofins: TStringField;
    tFilialTipoPis: TStringField;
    tFilialTipoCofins: TStringField;
    tFilialPercCofins: TFloatField;
    tFilialPercPis: TFloatField;
    tParametrosVersaoNFe: TStringField;
    tNotaFiscalVersaoNFe: TStringField;
    tNotaFiscalRefDescTipo: TStringField;
    tNotaFiscalRefCupomNumCOO: TIntegerField;
    tNotaFiscalRefCupomModelo: TStringField;
    tNotaFiscalRefCupomNumECF: TIntegerField;
    tNotaFiscalFinalidade: TStringField;
    tNotaFiscalMotivoContingencia: TStringField;
    tNotaFiscalIdentVersaoEmissao: TStringField;
    tNotaFiscalDtContingencia: TDateField;
    tNotaFiscalHrContingencia: TTimeField;
    tNotaFiscalCodRegimeTrib: TIntegerField;
    tClienteComplEnderecoEntrega: TStringField;
    tNotaFiscalRNTC: TStringField;
    tNotaFiscalIdentifVagaoBalsa: TStringField;
    tNotaFiscalTipoIdentifVagaoBalsa: TStringField;
    tNotaFiscalUFEmbExp: TStringField;
    tNotaFiscalLocalEmbExp: TStringField;
    tUsuarioNFeInutilizar: TBooleanField;
    tUsuarioAltNFeInutilizar: TBooleanField;
    tUsuarioExcNFeInutilizar: TBooleanField;
    tUsuarioInsNFeInutilizar: TBooleanField;
    tNotaFiscalTipoEnvioNF: TStringField;
    tClienteCodSitTribSimples: TIntegerField;
    tNatOperacaoIcmsSimples: TBooleanField;
    tParametrosImp2ObsSimples: TBooleanField;
    tNatOperacaoTipoEmpresa: TStringField;
    tNatOperacaoPercPis: TFloatField;
    tNatOperacaoPercCofins: TFloatField;
    tNatOperacao2CodCSTIPI: TStringField;
    tNatOperacao2CopiarNotaTriangular: TBooleanField;
    tNatOperacao2CodPis: TStringField;
    tNatOperacao2CodCofins: TStringField;
    tNatOperacao2TipoPis: TStringField;
    tNatOperacao2TipoCofins: TStringField;
    tNatOperacao2IcmsSimples: TBooleanField;
    tNatOperacao2PercPis: TFloatField;
    tNatOperacao2PercCofins: TFloatField;
    tNatOperacao2TipoEmpresa: TStringField;
    tNotaFiscalBaseIcmsOutros: TFloatField;
    tNotaFiscalVlrIcmsOutros: TFloatField;
    tNotaFiscalVlrDuplicataOutros: TFloatField;
    tParametrosPisCofinsSomarOutrasDesp: TBooleanField;
    tNotaFiscalPisCofinsSomarOutrasDesp: TBooleanField;
    tOutrosCodigo: TIntegerField;
    tOutrosNome: TStringField;
    tOutrosContato: TStringField;
    tOutrosTelefone1: TStringField;
    tOutrosTelefone2: TStringField;
    tOutrosFax: TStringField;
    tOutrosEmail: TStringField;
    tOutrosCodCidade: TIntegerField;
    tOutrosEndereco: TStringField;
    tOutrosCep: TStringField;
    tOutrosUF: TStringField;
    tOutrosNumDoc: TStringField;
    tOutrosPessoa: TStringField;
    tOutrosHomePage: TStringField;
    tOutrosObs: TMemoField;
    tOutrosBairro: TStringField;
    tOutrosFantasia: TStringField;
    tNEntradaNFeChaveAcesso: TStringField;
    tNEntradaNFeProtocolo: TStringField;
    tNotaFiscalNDevolvidaSerie: TStringField;
    tNotaFiscalNDevolvidaModelo: TStringField;
    tNotaFiscalNDevolvidaUFFornecedor: TStringField;
    tParametrosEnviarNotasBenefNaNFe: TBooleanField;
    tNotaFiscalNDevolvidaDtEmissao: TDateField;
    tNotaFiscalNDevolvidaNFeChaveAcessoNEntrada: TStringField;
    tNotaFiscalRefTipo: TStringField;
    tPedidoItemDtProducao: TDateField;
    tFilialCodSitTrib: TIntegerField;
    tFilialCodCSTIPI: TStringField;
    tNotaFiscalItensSomaVlrTotalProd: TBooleanField;
    tParametrosQtdHorasCancNFe: TIntegerField;
    tNotaFiscalTipoDesconto: TStringField;
    tParametrosTipoDoLogoNFe: TStringField;
    tParametrosAplicarDescontoNoIPI: TBooleanField;
    tParametrosAplicarDescontoNoICMS: TBooleanField;
    tParametrosSomarNoProdFrete: TBooleanField;
    tParametrosSomarNoProdOutrasDesp: TBooleanField;
    tParametrosSomarNoProdSeguro: TBooleanField;
    tNotaFiscalGeraDupl_PisCofins: TBooleanField;
    tNotaFiscalGeraDupl_OutrosValores: TBooleanField;
    tNotaFiscalGeraDupl_Frete: TBooleanField;
    tNotaFiscalGeraDupl_Seguro: TBooleanField;
    tNotaFiscalAliqICMS_PisCofins: TFloatField;
    tNotaFiscalAliqICMS_OutrosValores: TFloatField;
    tNotaFiscalAliqICMS_Frete: TFloatField;
    tNotaFiscalPercDescontoOrig: TFloatField;
    tNotaFiscalItensVlrFrete: TFloatField;
    tNotaFiscalItensVlrOutrasDespesas: TFloatField;
    tNotaFiscalItensVlrSeguro: TFloatField;
    tNotaFiscalItensVlrIcmsFrete: TFloatField;
    tNotaFiscalItensVlrIcmsOutrasDespesas: TFloatField;
    tNotaFiscalItensVlrDescontoRateio: TFloatField;
    tParametrosAjusteLogoNFeAutomatico: TBooleanField;
    tFilialEmailNFe: TStringField;
    tFilialDtEstoque: TDateField;
    tUsuarioAltNotaFiscal: TBooleanField;
    tUsuarioExcNotaFiscal: TBooleanField;
    tUsuarioInsNotaFiscal: TBooleanField;
    tNatOperacaoSubstTrib: TBooleanField;
    tNatOperacaoMVA: TBooleanField;
    tNotaFiscalItensIcmsBaseSubst: TFloatField;
    tNotaFiscalItensIcmsVlrSubst: TFloatField;
    tClasFiscalVmaInterno: TFloatField;
    tClasFiscalVmaInterestadual: TFloatField;
    tCPagarParcNroDuplicata: TIntegerField;
    tTranspIDPais: TIntegerField;
    tFornecedoresIDPais: TIntegerField;
    tClienteIDPais: TIntegerField;
    tPaisPais: TStringField;
    tFornecedoresPessoa: TStringField;
    tUsuarioEncerrarContaPeriodo: TBooleanField;
    tContasDtEncerramento: TDateField;
    tMovimentosDtUsuario: TDateField;
    tMovimentosHrUsuario: TTimeField;
    tMovimentosUsuario: TStringField;
    tUsuarioNFeRecebe: TBooleanField;
    tUsuarioNFeRecebeGrava: TBooleanField;
    tNatOperacaoGeraEstoque: TBooleanField;
    tParametrosTipoEmpresa: TStringField;
    tParametrosMostrarSitTribProduto: TBooleanField;
    tProdutoLocalCorredor: TStringField;
    tProdutoLocalPosicao: TStringField;
    tCBarra: TTable;
    tCBarraCodBarra: TStringField;
    tCBarraCodProduto: TIntegerField;
    tCBarraCodCor: TIntegerField;
    tCBarraCodGrade: TIntegerField;
    tCBarraPosicao: TIntegerField;
    tCBarraTamanho: TStringField;
    tCBarraCodPrincipal: TIntegerField;
    tCBarraCodSeq: TIntegerField;
    dsCBarra: TDataSource;
    tParametrosInfNumNotaManual: TBooleanField;
    tNotaFiscalInfNumNotaManual: TBooleanField;
    tProdutoCorEstMinimo: TFloatField;
    tProdutoCorEstMaximo: TFloatField;
    tEstoqueMatMovUnidadeOrig: TStringField;
    tEstoqueMatMovVlrUnitarioOrig: TFloatField;
    tEstoqueMatMovQtdOrig: TFloatField;
    tEstoqueMatMovVlrDescontoOrig: TFloatField;
    tParametrosUsaFB: TBooleanField;
    tUsuarioCobEletronica: TBooleanField;
    tContasConvenioLider: TStringField;
    tClienteEMailCobranca: TStringField;
    tCReceberParcIDCobEletronica: TIntegerField;
    tContasCodTipoCobranca: TIntegerField;
    tCReceberParcEspecieDoc: TStringField;
    tCReceberParcAceite: TStringField;
    tParametrosNomeImpFiscal: TStringField;
    tGradeItemIns: TTable;
    tGradeItemInsCodGrade: TIntegerField;
    tGradeItemInsPosicao: TIntegerField;
    tGradeItemInsTamanho: TStringField;
    tGradeItemInsMarcarTam: TStringField;
    tGradeItemInsQtdPar: TIntegerField;
    tGradeItemInsQtdNav: TFloatField;
    tGradeItemInsLargura: TFloatField;
    tGradeItemInsAltura: TFloatField;
    tParametrosCodClienteConsumidor: TIntegerField;
    tParametrosCartonagem: TBooleanField;
    tTipoCobrancaCartaoCredito: TBooleanField;
    tTipoCobrancaCheque: TBooleanField;
    tTipoCobrancaDinheiro: TBooleanField;
    tTipoCobrancaMostrarNoCupom: TBooleanField;
    tUsuarioCupomFiscal: TBooleanField;
    tUsuarioAltCupomFiscal: TBooleanField;
    tUsuarioExcCupomFiscal: TBooleanField;
    tUsuarioInsCupomFiscal: TBooleanField;
    tUsuarioCupomFiscalLeitRed: TBooleanField;
    tNotaFiscalParclkNumConta: TStringField;
    tNotaFiscalParclkAgencia: TStringField;
    tNotaFiscalParclkDigConta: TStringField;
    tNotaFiscalParclkDescNota: TStringField;
    tParametrosMensagemRodapeCupom: TStringField;
    tCReceberParcCodCartaoCredito: TIntegerField;
    tCartaoCredito: TTable;
    tCartaoCreditoCodigo: TIntegerField;
    tCartaoCreditoNome: TStringField;
    tExtCartaolkCartaoCredito: TStringField;
    tParametrosPossuiFichaTecnica: TBooleanField;
    tUsuarioClienteTerceiro: TBooleanField;
    tUsuarioAltClienteTerceiro: TBooleanField;
    tUsuarioExcClienteTerceiro: TBooleanField;
    tUsuarioInsClienteTerceiro: TBooleanField;
    tParametrosUsaClienteTerceiro: TBooleanField;
    tProdutoCodCliente: TIntegerField;
    tProdutoCodSitCF: TStringField;
    tValeObs: TMemoField;
    tValeParc: TTable;
    dsValeParc: TDataSource;
    tValeParcFilial: TIntegerField;
    tValeParcNumVale: TIntegerField;
    tValeParcParcela: TIntegerField;
    tValeParcDtVencimento: TDateField;
    tValeParcValor: TFloatField;
    tValeParcCodConta: TIntegerField;
    tValeParcCodTipoCobr: TIntegerField;
    tValeGeraFat: TBooleanField;
    tValeGeraCobranca: TBooleanField;
    tClienteCliente: TBooleanField;
    tClienteFabrica: TBooleanField;
    tClienteRepresentada: TBooleanField;
    tClienteEndLogo: TStringField;
    tProdutoCodRepresentada: TIntegerField;
    tProdutoCodFabrica: TIntegerField;
    tPedidoCodRepresentada: TIntegerField;
    tPedidoCodFabrica: TIntegerField;
    tProdutoRefCliente: TStringField;
    tParametrosMostrarVale: TBooleanField;
    tParametrosUsaRepresentada: TBooleanField;
    tParametrosUsaPedAmostra: TBooleanField;
    tUsuarioPedAmostra: TBooleanField;
    tUsuarioAltPedAmostra: TBooleanField;
    tUsuarioExcPedAmostra: TBooleanField;
    tUsuarioInsPedAmostra: TBooleanField;
    tParametrosUsaCupomFiscal: TBooleanField;
    tProdutoCarimboPalmilha: TStringField;
    tProdutoFicha: TStringField;
    tProdutoConstrucao: TStringField;
    tProdutoCarimboSola: TStringField;
    tPosicaoImpAmostra: TBooleanField;
    tProdutoForma: TStringField;
    tPosicao2ImpAmostra: TBooleanField;
    tProdutoMatlkImpAmostra: TBooleanField;
    tParametrosPosicao: TTable;
    tParametrosPosicaoOrdem: TIntegerField;
    tParametrosPosicaoCodPosicao: TIntegerField;
    tParametrosPosicaoImpMaterial: TBooleanField;
    tParametrosPosicaolkPosicao: TStringField;
    tParametrosPosicaoImpCor: TBooleanField;
    tCliente2EndLogo: TStringField;
    dsParametrosPosicao: TDataSource;
    tParametrosMovPed: TTable;
    tParametrosMovPedOrdem: TIntegerField;
    tParametrosMovPedCodSetor: TIntegerField;
    dsParametrosMovPed: TDataSource;
    tParametrosControlePedidoMov: TBooleanField;
    tParametrosMovPedlkNomeSetor: TStringField;
    tUsuarioConsMovPedido: TBooleanField;
    tNotaFiscalVlrAduaneira: TFloatField;
    tNotaFiscalItensVlrImportacao: TFloatField;
    tNotaFiscalItensVlrAduaneira: TFloatField;
    tCPagarParcNumSolicitacao: TIntegerField;
    tCReceberParclkPessoa: TStringField;
    tParametrosImpReciboRec: TBooleanField;
    tParametrosPedidoControlarAltPreco: TBooleanField;
    tUsuarioFaca: TBooleanField;
    tUsuarioAltFaca: TBooleanField;
    tUsuarioExcFaca: TBooleanField;
    tUsuarioInsFaca: TBooleanField;
    tParametrosUsaGrupoFilial: TBooleanField;
    tFilialDep: TTable;
    dsFilialDep: TDataSource;
    tFilialDepCodFilial: TIntegerField;
    tFilialDepCodFilialDep: TIntegerField;
    tFilialDeplkNomeFilialDep: TStringField;
    tProdutoMatObs: TStringField;
    tUsuarioCarteira: TBooleanField;
    tUsuarioAltCarteira: TBooleanField;
    tUsuarioExcCarteira: TBooleanField;
    tUsuarioInsCarteira: TBooleanField;
    tCPagarCodCentroCusto: TIntegerField;
    tCPagarCodCentroCustoItem: TIntegerField;
    tCPagarParcCodCentroCusto: TIntegerField;
    tCPagarParcCodCentroCustoItem: TIntegerField;
    tNEntradaCodCentroCusto: TIntegerField;
    tNEntradaCodCentroCustoItem: TIntegerField;
    tParametrosUsaCentroCusto: TBooleanField;
    tMovimentosCodCentroCusto: TIntegerField;
    tMovimentosCodCentroCustoItem: TIntegerField;
    tNotaFiscalRefIE: TStringField;
    tParametrosUsaPlanoContasNEntradaIt: TBooleanField;
    tParametrosUsaReferenciaEstruturada: TBooleanField;
    tUsuarioRefEstruturada_Tipos: TBooleanField;
    tUsuarioAltRefEstruturada_Tipos: TBooleanField;
    tUsuarioExcRefEstruturada_Tipos: TBooleanField;
    tUsuarioInsRefEstruturada_Tipos: TBooleanField;
    tProdutoTipoCodColecao: TIntegerField;
    tProdutoTipoCodProdutoForn: TIntegerField;
    tProdutoTipoCodProduto: TIntegerField;
    tProdutoTipoCodMaterial: TIntegerField;
    tProdutoTipoCodCor: TIntegerField;
    tUsuarioMatriz_Loc: TBooleanField;
    tUsuarioAltMatriz_Loc: TBooleanField;
    tUsuarioExcMatriz_Loc: TBooleanField;
    tUsuarioInsMatriz_Loc: TBooleanField;
    tUsuarioCodFuncionario: TIntegerField;
    tParametrosControlarAgendaPorFunc: TBooleanField;
    tNotaFiscalNFeDenegada: TBooleanField;
    tNotaFiscalNFeMotivoDenegada: TStringField;
    tProdutoMatTipo: TStringField;
    tProdutoMatQtdPecaProd: TFloatField;
    tParametrosMostrarPrecoProdFinal: TBooleanField;
    tParametrosMetalurgica: TBooleanField;
    tUsuarioProcesso: TBooleanField;
    tUsuarioAltProcesso: TBooleanField;
    tUsuarioExcProcesso: TBooleanField;
    tUsuarioInsProcesso: TBooleanField;
    tParametrosPedirFilial: TBooleanField;
    tProdutoEndArquivoCNC: TStringField;
    tCBarraCodCombinacao: TIntegerField;
    tPedidoItemNumTalao: TIntegerField;
    tPedidoItemGerarTalao: TBooleanField;
    tOrdemCompraCodSolicitante: TIntegerField;
    tOrdemCompralkNomeSolicitante: TStringField;
    tClienteEmailNFe2: TStringField;
    tUsuarioNFeEmail: TBooleanField;
    tUsuarioAltNFeEmail: TBooleanField;
    tUsuarioExcNFeEmail: TBooleanField;
    tUsuarioInsNFeEmail: TBooleanField;
    tPedidoPercFabrica: TFloatField;
    tParametrosMostrarPrecoFabrica: TBooleanField;
    tParametrosPercFabrica: TFloatField;
    tPedidoItemPrecoFabrica: TFloatField;
    tPedidoItemVlrTotalFabrica: TFloatField;
    tPedidoVlrMercadoriaFabrica: TFloatField;
    tPedidoVlrTotalFabrica: TFloatField;
    tParametrosMovPedidoPorItem: TBooleanField;
    tPedidolkDDDFone1: TIntegerField;
    tClienteCgcCpfPgto: TStringField;
    tClienteInscPgto: TStringField;
    tClientePessoaEntrega: TStringField;
    tClientePessoaPgto: TStringField;
    tCliente2CgcCpfPgto: TStringField;
    tCliente2InscPgto: TStringField;
    tCliente2PessoaEntrega: TStringField;
    tCliente2PessoaPgto: TStringField;
    tNotaFiscallkCgcCpfPgto: TStringField;
    tNotaFiscallkInscPgto: TStringField;
    tNotaFiscallkPessoaEntrega: TStringField;
    tNotaFiscallkPessoaPgto: TStringField;
    tNotaFiscallkCgcCpfEntrega: TStringField;
    tPosicaoCabedal: TBooleanField;
    tPosicao2Cabedal: TBooleanField;
    tProdutoMatlkCabedal: TBooleanField;
    tParametrosImpMaterialPedido: TBooleanField;
    tProdutoTipoCodMarca: TIntegerField;
    tClientePercFabrica: TFloatField;
    tParametrosControlarQtdGradePed: TBooleanField;
    tUsuarioVendedorMeta: TBooleanField;
    tUsuarioAltVendedorMeta: TBooleanField;
    tUsuarioExcVendedorMeta: TBooleanField;
    tUsuarioInsVendedorMeta: TBooleanField;
    tParametrosTipoDtEntrega: TStringField;
    tParametrosImpDtFabricaNaDesc: TBooleanField;
    tPedidoDtEmbarque: TDateField;
    tPedidoDtProducao: TDateField;
    tParametrosQtdCasasDecimaisPrecoPed: TIntegerField;
    tNEntradaSerie: TStringField;
    tCPagarSerie: TStringField;
    tCPagarParcSerie: TStringField;
    tParametrosReferenciaAceitarDupl: TBooleanField;
    tProdutoGerarCodBarra: TBooleanField;
    tUsuarioGerarCodBarra: TBooleanField;
    tUsuarioAltGerarCodBarra: TBooleanField;
    tUsuarioExcGerarCodBarra: TBooleanField;
    tUsuarioInsGerarCodBarra: TBooleanField;
    tUsuarioEtiquetaIndividual: TBooleanField;
    tPlanoContasInativo: TBooleanField;
    tParametrosArgox_OffSetBorda: TIntegerField;
    tParametrosArgox_Backfeed: TIntegerField;
    tParametrosArgox_Temperatura: TIntegerField;
    tParametrosArgox_Velocidade: TStringField;
    tCReceberParcDescontoDe: TStringField;
    tCReceberParcDescontoAte: TStringField;
    tCReceberDescontoDe: TStringField;
    tCReceberDescontoAte: TStringField;
    tContasAge_PossuiDigVerificador: TBooleanField;
    RLPDFFilter1: TRLPDFFilter;
    tFilialPerc_Trib_NTS_Ind: TFloatField;
    tFilialPerc_Trib_NTS_Ven: TFloatField;
    tFilialPerc_Trib_NTS_Ind_Exp: TFloatField;
    tFilialPerc_Trib_NTS_Ven_Exp: TFloatField;
    tNatOperacaoGerar_Tributo: TStringField;
    tNatOperacaoTipo_Ind_Ven: TStringField;
    tNotaFiscalVlr_Tributo: TFloatField;
    tNotaFiscalItensPerc_Tributo: TFloatField;
    tNotaFiscalItensVlr_Tributo: TFloatField;
    tParametrosLei_Transp_Imp_Item: TStringField;
    tParametrosLei_Transp_Texto_Item: TStringField;
    tParametrosLei_Transp_Perc_Adic: TStringField;
    tParametrosTipo_Lei_Transp: TStringField;
    tProdutoNCM_Ex: TStringField;
    procedure tGrupoAfterPost(DataSet: TDataSet);
    procedure tFornecedoresAfterPost(DataSet: TDataSet);
    procedure tGradeAfterPost(DataSet: TDataSet);
    procedure tGradeItemAfterPost(DataSet: TDataSet);
    procedure tCorAfterPost(DataSet: TDataSet);
    procedure tGradeItemBeforePost(DataSet: TDataSet);
    procedure tCondPgtoAfterPost(DataSet: TDataSet);
    procedure tCondPgtoItemAfterPost(DataSet: TDataSet);
    procedure tCondPgtoItemBeforePost(DataSet: TDataSet);
    procedure tTranspAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraItemAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraItemGradeAfterPost(DataSet: TDataSet);
    procedure tClasFiscalAfterPost(DataSet: TDataSet);
    procedure tSitTributariaAfterPost(DataSet: TDataSet);
    procedure tProdutoAfterPost(DataSet: TDataSet);
    procedure tProdutoCorAfterPost(DataSet: TDataSet);
    procedure tProdutoMatAfterPost(DataSet: TDataSet);
    procedure tPedidoAfterPost(DataSet: TDataSet);
    procedure tPedidoDescontoAfterPost(DataSet: TDataSet);
    procedure tPedidoGradeAfterPost(DataSet: TDataSet);
    procedure tPedidoItemAfterPost(DataSet: TDataSet);
    procedure tPedidoMaterialAfterPost(DataSet: TDataSet);
    procedure tClienteAfterPost(DataSet: TDataSet);
    procedure tPedidoDescontoBeforePost(DataSet: TDataSet);
    procedure tUsuarioAfterPost(DataSet: TDataSet);
    procedure tUsuarioAltAfterPost(DataSet: TDataSet);
    procedure tUsuarioExcAfterPost(DataSet: TDataSet);
    procedure tUsuarioInsAfterPost(DataSet: TDataSet);
    procedure tEmpresaAfterPost(DataSet: TDataSet);
    procedure tNatOperacaoAfterPost(DataSet: TDataSet);
    procedure tVendedorAfterPost(DataSet: TDataSet);
    procedure tSetorAfterPost(DataSet: TDataSet);
    procedure tTipoCobrancaAfterPost(DataSet: TDataSet);
    procedure tHistoricoAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalAfterPost(DataSet: TDataSet);
    procedure tCReceberParcAfterPost(DataSet: TDataSet);
    procedure tIndexadorAfterPost(DataSet: TDataSet);
    procedure tUFAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalItensAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalParcAfterPost(DataSet: TDataSet);
    procedure tParametrosAfterPost(DataSet: TDataSet);
    procedure tContasAfterPost(DataSet: TDataSet);
    procedure tMovimentosAfterPost(DataSet: TDataSet);
    procedure tCReceberAfterPost(DataSet: TDataSet);
    procedure tPlanoContasAfterPost(DataSet: TDataSet);
    procedure tCPagarAfterPost(DataSet: TDataSet);
    procedure tCPagarParcAfterPost(DataSet: TDataSet);
    procedure tNEntradaParcAfterPost(DataSet: TDataSet);
    procedure tNEntradaAfterPost(DataSet: TDataSet);
    procedure tNEntradaItensMobraAfterPost(DataSet: TDataSet);
    procedure tNEntradaItensAfterPost(DataSet: TDataSet);
    procedure tNEntradaParcBeforePost(DataSet: TDataSet);
    procedure tCReceberParcHistAfterPost(DataSet: TDataSet);
    procedure tImpressoraAfterPost(DataSet: TDataSet);
    procedure tCReceberParcCalcFields(DataSet: TDataSet);
    procedure tJurosAfterPost(DataSet: TDataSet);
    procedure tRegioesAfterPost(DataSet: TDataSet);
    procedure tPedidoNotaAfterPost(DataSet: TDataSet);
    procedure tCPagarParcCalcFields(DataSet: TDataSet);
    procedure tOrdemCompraNotaAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraNotaGradeAfterPost(DataSet: TDataSet);
    procedure tObsAuxAfterPost(DataSet: TDataSet);
    procedure tAtividadeAfterPost(DataSet: TDataSet);
    procedure tFornecAtivAfterPost(DataSet: TDataSet);
    procedure tProdutoMatCalcFields(DataSet: TDataSet);
    procedure tMaoDeObraAfterPost(DataSet: TDataSet);
    procedure tPedidoEspAfterPost(DataSet: TDataSet);
    procedure tPedidoEspItemAfterPost(DataSet: TDataSet);
    procedure tPedidoEspParcAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalGradeAfterPost(DataSet: TDataSet);
    procedure tCidadeAfterPost(DataSet: TDataSet);
    procedure tDctoEstAfterPost(DataSet: TDataSet);
    procedure tDctoEstItemAfterPost(DataSet: TDataSet);
    procedure tDctoEstGradeAfterPost(DataSet: TDataSet);
    procedure tEstoqueMatMovAfterPost(DataSet: TDataSet);
    procedure tOutrosAfterPost(DataSet: TDataSet);
    procedure tProdutoConsumoAfterPost(DataSet: TDataSet);
    procedure tProdutoConsumoItemAfterPost(DataSet: TDataSet);
    procedure tPedidoConsumoAfterPost(DataSet: TDataSet);
    procedure tFuncionarioAfterPost(DataSet: TDataSet);
    procedure tFeriasAfterPost(DataSet: TDataSet);
    procedure tSalarioAfterPost(DataSet: TDataSet);
    procedure tTabPrecoAfterPost(DataSet: TDataSet);
    procedure tFuncFaltasAfterPost(DataSet: TDataSet);
    procedure tAgeContatoAfterPost(DataSet: TDataSet);
    procedure tProdutoCliAfterPost(DataSet: TDataSet);
    procedure tSitTributariaNewRecord(DataSet: TDataSet);
    procedure tOrcamentoAfterPost(DataSet: TDataSet);
    procedure tOrcamentoItensAfterPost(DataSet: TDataSet);
    procedure tNEntradaItensNewRecord(DataSet: TDataSet);
    procedure tPedidoItemNewRecord(DataSet: TDataSet);
    procedure tTalaoAfterPost(DataSet: TDataSet);
    procedure tTalaoGradeAfterPost(DataSet: TDataSet);
    procedure tValeAfterPost(DataSet: TDataSet);
    procedure tValeItensAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalValeAfterPost(DataSet: TDataSet);
    procedure tHistClienteAfterPost(DataSet: TDataSet);
    procedure tPedidoAfterInsert(DataSet: TDataSet);
    procedure tFornecedoresAfterInsert(DataSet: TDataSet);
    procedure tCReceberParcNewRecord(DataSet: TDataSet);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure tFilialAfterPost(DataSet: TDataSet);
    procedure tClienteNewRecord(DataSet: TDataSet);
    procedure tPedidoNewRecord(DataSet: TDataSet);
    procedure tProdutoNewRecord(DataSet: TDataSet);
    procedure tNatOperacaoNewRecord(DataSet: TDataSet);
    procedure tProdutoGradeAfterPost(DataSet: TDataSet);
    procedure tProdutoTamAfterPost(DataSet: TDataSet);
    procedure tPlanoContasItensAfterPost(DataSet: TDataSet);
    procedure tProdutoTamNewRecord(DataSet: TDataSet);
    procedure tTranspNewRecord(DataSet: TDataSet);
    procedure tProdutoCliNewRecord(DataSet: TDataSet);
    procedure tNotaFiscalItensNewRecord(DataSet: TDataSet);
    procedure tProdutoTamBeforePost(DataSet: TDataSet);
    procedure tExtComissaoNewRecord(DataSet: TDataSet);
    procedure tNEntradaNewRecord(DataSet: TDataSet);
    procedure tFilialNewRecord(DataSet: TDataSet);
    procedure tNotaFiscalPedAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalPedGradeAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalNDevolvidaAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalNewRecord(DataSet: TDataSet);
    procedure tPedidoGradeNewRecord(DataSet: TDataSet);
    procedure tNEntradaNDevolvidaAfterPost(DataSet: TDataSet);
    procedure tPedidoCancAfterPost(DataSet: TDataSet);
    procedure tPedidoCancGradeAfterPost(DataSet: TDataSet);
    procedure tGrupoClienteAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalPedNewRecord(DataSet: TDataSet);
    procedure tChequeCPagarAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tOrcamentoGradeAfterPost(DataSet: TDataSet);
    procedure tTalaoNewRecord(DataSet: TDataSet);
    procedure tOrdemCompraItemNewRecord(DataSet: TDataSet);
    procedure tTalaoBeforePost(DataSet: TDataSet);
    procedure tProdutoCorNewRecord(DataSet: TDataSet);
    procedure tFornecedoresNewRecord(DataSet: TDataSet);
    procedure tUnidadeAfterPost(DataSet: TDataSet);
    procedure tUnidadeNewRecord(DataSet: TDataSet);
    procedure tCadastroSimplesAfterPost(DataSet: TDataSet);
    procedure tCReceberParcHistNewRecord(DataSet: TDataSet);
    procedure tCPagarParcHistNewRecord(DataSet: TDataSet);
    procedure tCPagarParcHistAfterPost(DataSet: TDataSet);
    procedure tCReceberParcRemAfterPost(DataSet: TDataSet);
    procedure tContasParametrosAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraCancAfterPost(DataSet: TDataSet);
    procedure tOrdemCompraCancNewRecord(DataSet: TDataSet);
    procedure tContasNewRecord(DataSet: TDataSet);
    procedure tNotaFiscalTBObsAfterPost(DataSet: TDataSet);
    procedure tGrupoItemAfterPost(DataSet: TDataSet);
    procedure tGrupoNewRecord(DataSet: TDataSet);
    procedure tGrupoItemNewRecord(DataSet: TDataSet);
    procedure tVendedorNewRecord(DataSet: TDataSet);
    procedure tCPagarNewRecord(DataSet: TDataSet);
    procedure tImpostosAfterPost(DataSet: TDataSet);
    procedure tEstoqueMatMovNewRecord(DataSet: TDataSet);
    procedure tPedidoCancNewRecord(DataSet: TDataSet);
    procedure tProdutoGradeNewRecord(DataSet: TDataSet);
    procedure tTabPrecoHistAfterPost(DataSet: TDataSet);
    procedure tTabPrecoHistNewRecord(DataSet: TDataSet);
    procedure tChequeAfterPost(DataSet: TDataSet);
    procedure tCReceberParcBeforePost(DataSet: TDataSet);
    procedure tChequeBeforePost(DataSet: TDataSet);
    procedure tHistoricoNewRecord(DataSet: TDataSet);
    procedure tRelatorioAfterPost(DataSet: TDataSet);
    procedure tRelatorioNewRecord(DataSet: TDataSet);
    procedure tRelatorioBeforePost(DataSet: TDataSet);
    procedure tPosicaoAfterPost(DataSet: TDataSet);
    procedure tProdutoCombAfterPost(DataSet: TDataSet);
    procedure tProdutoMatNewRecord(DataSet: TDataSet);
    procedure tPedidoItemBeforePost(DataSet: TDataSet);
    procedure tNotaFiscalItensBeforePost(DataSet: TDataSet);
    procedure tDctoEstBeforePost(DataSet: TDataSet);
    procedure tPaisAfterPost(DataSet: TDataSet);
    procedure tCSTIPIAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalRefAfterPost(DataSet: TDataSet);
    procedure tCReceberNewRecord(DataSet: TDataSet);
    procedure tExtCartaoAfterPost(DataSet: TDataSet);
    procedure tCSTIPINewRecord(DataSet: TDataSet);
    procedure tNotaFiscalNDevolvidaNewRecord(DataSet: TDataSet);
    procedure tMovimentosNewRecord(DataSet: TDataSet);
    procedure tCBarraAfterPost(DataSet: TDataSet);
    procedure tTipoCobrancaNewRecord(DataSet: TDataSet);
    procedure tValeParcBeforePost(DataSet: TDataSet);
    procedure tValeNewRecord(DataSet: TDataSet);
    procedure tPosicaoNewRecord(DataSet: TDataSet);
    procedure tParametrosPosicaoAfterPost(DataSet: TDataSet);
    procedure tParametrosMovPedAfterPost(DataSet: TDataSet);
    procedure tCPagarParcNewRecord(DataSet: TDataSet);
    procedure tFilialDepAfterPost(DataSet: TDataSet);
    procedure tEstoqueMatMovBeforePost(DataSet: TDataSet);
    procedure tPedidoBeforePost(DataSet: TDataSet);
    procedure tCBarraNewRecord(DataSet: TDataSet);
    procedure tPlanoContasNewRecord(DataSet: TDataSet);
    procedure tClienteBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FDataSetError: TrsDataSetError;
    function Dias_Atraso: Boolean;
    procedure Abre_Tabelas1;
    procedure Calcula_DtVencimento2;
  public
    { Public declarations }
    vDataVectoCalc : TDate;

    procedure Mostra_Menu;
    Procedure Login;

    procedure GravaGrid(Grid: TSMDBGrid; Form: string);
    procedure LeGrid(Grid: TSMDBGrid; Form: string);

    procedure GravaEnt_tCReceberParcHist(Tipo : String); //ENT = Entrada   CAN = Cancelado
    procedure GravaEnt_tCPagarParcHist;
    procedure Grava_DtVencimento2;
  end;

var
  DM1: TDM1;
  vNumPedido, vItemPedido, vNumLote: Integer;
  vFabrica: String;
  vCodProdutoPos, vCodClientePos: Integer; //Serve para posicionar o produto quando é chamado de algum form
  vNumNotaEntPos, vCodFornPos: Integer;
  vCodClasFiscalPos, vFormulario: String;
  vDataRef: TDate;
  vSenhaAlt: String;
  vDtPreco: TDate;
  vRodape: String;

implementation

uses UMaterial, UCondPgto, UOrdemCompra, UPedido, UPedidoDesconto, UNotaEntrada, UBaixaItOC, UMenuP, ULogin,
  DmdDatabase;

{$R *.DFM}

procedure TDM1.Calcula_DtVencimento2;
var
  vDataAux : TDate;
begin
  vDataAux := 0;
  while vDataAux <> vDataVectoCalc do
    begin
      vDataAux := vDataVectoCalc;
      if (DayOfWeek(vDataVectoCalc) = 1) then //Domingo
        vDataVectoCalc := vDataVectoCalc + 1
      else
      if (DayOfWeek(vDataVectoCalc) = 7) then //Sabado
        vDataVectoCalc := vDataVectoCalc + 2;
      if ((DayOfTheMonth(vDataVectoCalc) = 25) and (MonthOf(vDataVectoCalc) = 12)) or
         ((DayOfTheMonth(vDataVectoCalc) = 01) and (MonthOf(vDataVectoCalc) = 01)) or
         ((DayOfTheMonth(vDataVectoCalc) = 07) and (MonthOf(vDataVectoCalc) = 09)) or
         ((DayOfTheMonth(vDataVectoCalc) = 12) and (MonthOf(vDataVectoCalc) = 10)) or
         ((DayOfTheMonth(vDataVectoCalc) = 02) and (MonthOf(vDataVectoCalc) = 11)) or
         ((DayOfTheMonth(vDataVectoCalc) = 01) and (MonthOf(vDataVectoCalc) = 05)) or
         ((DayOfTheMonth(vDataVectoCalc) = 21) and (MonthOf(vDataVectoCalc) = 04)) then
        vDataVectoCalc := vDataVectoCalc + 1;
      if DM1.tFeriado.Locate('Data',vDataVectoCalc,[loCaseInsensitive]) then
        vDataVectoCalc := vDataVectoCalc + 1;
    end;
end;

procedure TDM1.Grava_DtVencimento2;
var
  vQtdDias : Integer;
  i : Integer;
begin
  if not DM1.tFeriado.Active then
    DM1.tFeriado.Open;
  vDataVectoCalc := DM1.tCReceberParcDtVencCReceber.AsDateTime;
  Calcula_DtVencimento2;
  vQtdDias := 1;
  if DM1.tCReceberParcCodTipoCobranca.AsInteger > 0 then
    if DM1.tTipoCobranca.Locate('Codigo',DM1.tCReceberParcCodTipoCobranca.AsInteger,[loCaseInsensitive]) then
      vQtdDias := DM1.tTipoCobrancaQtdDias.AsInteger;
  for i := 1 to vQtdDias do
    begin
      vDataVectoCalc := vDataVectoCalc + 1;
      Calcula_DtVencimento2;
    end;
  DM1.tCReceberParcDtVencimento2.AsDateTime := vDataVectoCalc;
end;

procedure Tdm1.GravaEnt_tCPagarParcHist;
var
  vNumAux : Integer;
begin
  DM1.tCPagarParcHist.Refresh;
  DM1.tCPagarParcHist.Last;
  vNumAux := DM1.tCPagarParcHistItem.AsInteger; 

  if DM1.tCPagarParcHist.Locate('Tipo','ENT',[loCaseInsensitive]) then
    DM1.tCPagarParcHist.Edit
  else
    begin
      DM1.tCPagarParcHist.Insert;
      Dm1.tCPagarParcHistFilial.AsInteger     := DM1.tCPagarParcFilial.AsInteger;
      DM1.tCPagarParcHistNumCPagar.AsInteger  := DM1.tCPagarParcNumCPagar.AsInteger;
      DM1.tCPagarParcHistParcCPagar.AsInteger := DM1.tCPagarParcParcCPagar.AsInteger;
      DM1.tCPagarParcHistItem.AsInteger       := vNumAux + 1;
    end;
  DM1.tCPagarParcHistHistorico.AsString   := 'ENTRADA DO TITULO';
  DM1.tCPagarParcHistDtUltPgto.AsDateTime := DM1.tCPagarParcDtGerado.AsDateTime;
  DM1.tCPagarParcHistTipo.AsString        := 'ENT';
  DM1.tCPagarParcHist.Post;
end;

procedure Tdm1.GravaEnt_tCReceberParcHist(Tipo : String);
var
  vNumAux : Integer;
begin
  DM1.tCReceberParcHist.Refresh;
  DM1.tCReceberParcHist.Last;
  vNumAux := DM1.tCReceberParcHistItem.AsInteger;
  if DM1.tCReceberParcHist.Locate('Tipo',Tipo,[loCaseInsensitive]) then
    DM1.tCReceberParcHist.Edit
  else
    begin
      DM1.tCReceberParcHist.Insert;
      Dm1.tCReceberParcHistFilial.AsInteger       := Dm1.tCReceberParcFilial.AsInteger;
      DM1.tCReceberParcHistNumCReceber.AsInteger  := DM1.tCReceberParcNumCReceber.AsInteger;
      DM1.tCReceberParcHistParcCReceber.AsInteger := DM1.tCReceberParcParcCReceber.AsInteger;
      DM1.tCReceberParcHistItem.AsInteger         := vNumAux + 1;
    end;
  DM1.tCReceberParcHistCodHistorico.AsCurrency := 0;
  if Tipo = 'ENT' then
    DM1.tCReceberParcHistHistorico.AsString := 'ENTRADA DO TITULO'
  else
    DM1.tCReceberParcHistHistorico.AsString := 'TITULO CANCELADO';
  DM1.tCReceberParcHistTipo.AsString        := Tipo;
  DM1.tCReceberParcHistDtUltPgto.AsDateTime := DM1.tCReceberParcDtGerado.AsDateTime;
  //DM1.tCReceberParcHistVlrUltPgto.AsFloat := DM1.tCReceberParcVlrParcCReceber.AsFloat;
  DM1.tCReceberParcHist.Post;
end;

procedure Tdm1.gravaGrid(Grid: TSMDBGrid; Form: string);
var
  caminho: string;
begin
  caminho := DM1.tParametrosCaminhoGrids.AsString;
  if not DirectoryExists(caminho) then
    CreateDirectory(PAnsiChar(caminho),nil);
  Grid.Columns.SaveToFile(Caminho + '\' + Form + '_' + Grid.Name + '_' + DM1.tUsuarioUsuario.AsString + '.txt');
end;

procedure Tdm1.leGrid(Grid: TSMDBGrid; Form: string);
var
  caminho: string;
begin
  caminho := DM1.tParametrosCaminhoGrids.AsString;
  if fileExists(Caminho + '\' + Form + '_' + Grid.Name + '_' + DM1.tUsuarioUsuario.AsString + '.txt') then
    Grid.Columns.LoadFromFile(Caminho + '\' + Form + '_' +  Grid.Name + '_' + DM1.tUsuarioUsuario.AsString + '.txt');
end;

procedure Tdm1.Abre_Tabelas1;
begin
  tParametros.Open;
  tFilial.Open;
  tFilial2.Open;
  tUsuario.Open;
  tUsuarioIns.Open;
  tUsuarioExc.Open;
  tUsuarioAlt.Open;
  tAtividade2.Open;
  tCliente2.Open;
  tCondPgto2.Open;
  tContaslk.Open;
  tCor2.Open;
  tFornecAtiv2.Open;
  tFornecedores2.Open;
  tFuncionario2.Open;
  tGrade2.Open;
  tGradeItemlk.Open;
  tGradeItemIns.Open;
  tGrupolk.Open;
  tGrupoCliente2.Open;
  tNatOperacao2.Open;
  tObsAux2.Open;
  tOrdemCompra2.Open;
  tOrdemCompraItem2.Open;
  tPedido2.Open;
  tPedidoItem2.Open;
  tPosicao2.Open;
  tProduto2.Open;
  tSetor2.Open;
  tTipoCobrancalk.Open;
  tTransp2.Open;
  tVendedor2.Open;
  tUF.Open;
  tCidade.Open;
  tPais.Open;
  tEmpresa.Open;
end;

procedure TDM1.Login;
begin
  fLogin := TfLogin.Create(Self);
  fLogin.ShowModal;
end;

function TDM1.Dias_Atraso: Boolean;
var
  vData: TDate;
begin
  Result := False;
  if vDataRef - tCReceberParcDtVencCReceber.AsDateTime > 0 then
    begin
      vData := tCReceberParcDtVencCReceber.AsDateTime;
      tFeriado.SetKey;
      tFeriadoData.AsDateTime := tCReceberParcDtVencCReceber.AsDateTime;
      if (tFeriado.GotoKey) or (DayOfWeek(vData) = 1) or (DayOfWeek(vData) = 7) then
        begin
          vData := vData + 1;
          while vData < vDataRef do
            begin
              tFeriado.SetKey;
              tFeriadoData.AsDateTime := vData;
              if (tFeriado.GotoKey) or (DayOfWeek(vData) = 1) or (DayOfWeek(vData) = 7) then
                vData := vData + 1
              else
                begin
                  vData  := vDataRef;
                  Result := True;
                end;
            end;
        end
      else
        Result := True;
    end;
end;

procedure TDM1.Mostra_Menu;
begin
// Manutenção
  fMenuP.N9Funcionrios1.Visible       := tUsuarioFuncionario.AsBoolean;
  fMenuP.N1AgendaTelefnica1.Visible   := tUsuarioAgenda.AsBoolean;
  fMenuP.ClassificaoFiscal2.Visible   := tUsuarioClasFiscal.AsBoolean;
  fMenuP.Clientes3.Visible            := tUsuarioClientes.AsBoolean;
  fMenuP.Cor2.Visible                 := tUsuarioCor.AsBoolean;
  fMenuP.CondiesdePagamento1.Visible  := tUsuarioCondPgto.AsBoolean;
  fMenuP.EstadoseAlqotas2.Visible     := tUsuarioUf.AsBoolean;
  fMenuP.Pais1.Visible                := tUsuarioPais.AsBoolean;
  fMenuP.N2Cidades2.Visible           := tUsuarioCidade.AsBoolean;
  fMenuP.ClienteTerceiro1.Visible     := tUsuarioClienteTerceiro.AsBoolean;
  fMenuP.ProcessoMetalrgica1.Visible  := tUsuarioProcesso.AsBoolean;
  if ((tUsuarioUf.AsBoolean = False) and (tUsuarioPais.AsBoolean = False) and (tUsuarioCidade.AsBoolean = False)) then
    fMenuP.CidadesUFPais1.Visible := False
  else
    fMenuP.CidadesUFPais1.Visible := True;
  if (tUsuarioAgenda.AsBoolean = False) and (tUsuarioAgeContato.AsBoolean = False) then
    fMenuP.Agenda1.Visible := False
  else
    fMenuP.Agenda1.Visible := True;
  if (tUsuarioClientes.AsBoolean = False) and (tUsuarioGrupoCliente.AsBoolean = False) and (tUsuarioHistCliente.AsBoolean = False) then
    fMenuP.Clientes1.Visible := False
  else
    fMenuP.Clientes1.Visible := True;
  fMenuP.Grades1.Visible                  := tUsuarioGrade.AsBoolean;
  fMenuP.Grupo2.Visible                   := tUsuarioGrupos.AsBoolean;
  fMenuP.N2Histricos2.Visible             := tUsuarioHistoricos.AsBoolean;
  fMenuP.Impressoras2.Visible             := tUsuarioImpressoras.AsBoolean;
  fMenuP.NaturezadeOperao2.Visible        := tUsuarioNatOper.AsBoolean;
  fMenuP.ObsAuxiliar1.Visible             := tUsuarioObsAux.AsBoolean;
  fMenuP.Parametros1.Visible              := tUsuarioParametro.AsBoolean;
  fMenuP.RegiesdeVendas2.Visible          := tUsuarioRegioesVendas.AsBoolean;
  fMenuP.SituaoTributria2.Visible         := tUsuarioSitTrib.AsBoolean;
  fMenuP.Transportadoras2.Visible         := tUsuarioTransp.AsBoolean;
  fMenuP.Clientes4.Visible                := tUsuarioRelCli.AsBoolean;
  fMenuP.Vendedores4.Visible              := tUsuarioRelVendedores.AsBoolean;
  fMenuP.EtiquetasClientes1.Visible       := tUsuarioRelEtiqCli.AsBoolean;
  fMenuP.EtiquetasVendedores1.Visible     := tUsuarioRelEtiqVend.AsBoolean;
  fMenuP.N5EtiquetasFornecedores1.Visible := tUsuarioRelEtiqForn.AsBoolean;//Botão
  fMenuP.ModeObra1.Visible                := tUsuarioMaoDeObra.AsBoolean;
  fMenuP.NTabeladePreo1.Visible           := tUsuarioTabPreco.AsBoolean;
  fMenuP.OAgendadeContatos1.Visible       := tUsuarioAgeContato.AsBoolean;
  fMenuP.ClienteHistrico1.Visible         := tUsuarioHistCliente.AsBoolean;

  fMenuP.GrupoCliente1.Visible            := tUsuarioGrupoCliente.AsBoolean;
  fMenuP.Feriado1.Visible                 := tUsuarioFeriado.AsBoolean;
  fMenuP.Unidade1.Visible                 := tUsuarioUnidade.AsBoolean;
  fMenuP.CadastroGeralTipoProdutoTipoMaterial1.Visible := tUsuarioCadastroSimples.AsBoolean;
  fMenuP.Impostos1.Visible                := tUsuarioImposto.AsBoolean;
  fMenuP.ipoIndicao1.Visible              := tUsuarioTipoIndicacao.AsBoolean;
  fMenuP.Facas1.Visible                   := tUsuarioFaca.AsBoolean;
  fMenuP.ColeoRefernci1.Visible              := tUsuarioRefEstruturada_Tipos.AsBoolean;
  fMenuP.ProdutoFornecedorReferncia1.Visible := tUsuarioRefEstruturada_Tipos.AsBoolean;
  fMenuP.ipoProdutoReferncia1.Visible        := tUsuarioRefEstruturada_Tipos.AsBoolean;
  fMenuP.MaterialReferncia1.Visible          := tUsuarioRefEstruturada_Tipos.AsBoolean;
  fMenuP.CorReferncia1.Visible               := tUsuarioRefEstruturada_Tipos.AsBoolean;
  fMenuP.MarcaReferncia1.Visible             := tUsuarioRefEstruturada_Tipos.AsBoolean;
  fMenuP.ConsultaCdigodeBarras1.Visible      := tUsuarioGerarCodBarra.AsBoolean;
  fMenuP.Filial1.Visible                     := tUsuarioFilial.AsBoolean;
  fMenuP.Posiesdomaterial1.Visible           := tUsuarioPosicao.AsBoolean;
  if not(tUsuarioRelCli.AsBoolean)     and not(tUsuarioRelVendedores.AsBoolean) and
     not(tUsuarioRelEtiqCli.AsBoolean) and not(tUsuarioRelEtiqForn.AsBoolean) and
     not(tUsuarioRelEtiqVend.AsBoolean) then
   fMenuP.Relatrios6.Visible := False
  else
    fMenuP.Relatrios6.Visible := True;
  if not(tUsuarioClasFiscal.AsBoolean)      and not(tUsuarioClientes.AsBoolean)        and
     not(tUsuarioCor.AsBoolean)             and not(tUsuarioCondPgto.AsBoolean)        and
     not(tUsuarioUf.AsBoolean)              and not(tUsuarioGrade.AsBoolean)           and
     not(tUsuarioGrupos.AsBoolean)          and not(tUsuarioHistoricos.AsBoolean)      and
     not(tUsuarioImpressoras.AsBoolean)     and not(tUsuarioNatOper.AsBoolean)         and
     not(tUsuarioObsAux.AsBoolean)          and not(tUsuarioParametro.AsBoolean)       and
     not(tUsuarioLojas.AsBoolean)           and not(tUsuarioRegioesVendas.AsBoolean)   and
     not(tUsuarioSubGrupo.AsBoolean)        and not(tUsuarioSitTrib.AsBoolean)         and
     not(tUsuarioTransp.AsBoolean)          and not(tUsuarioRelCli.AsBoolean)          and
     not(tUsuarioRelVendedores.AsBoolean)   and not(tUsuarioRelEtiqCli.AsBoolean)      and
     not(tUsuarioRelEtiqVend.AsBoolean)     and not(tUsuarioRelEtiqForn.AsBoolean)     and
     not(tUsuarioAtelier.AsBoolean)         and not(tUsuarioMaoDeObra.AsBoolean)       and
     not(tUsuarioOperAtelier.AsBoolean)     and not(tUsuarioCidade.AsBoolean)          and
     not(tUsuarioAgenda.AsBoolean)          and not(tUsuarioFuncionario.AsBoolean)     and
     not(tUsuarioTabPreco.AsBoolean)        and not(tUsuarioAgeContato.AsBoolean)      and
     not(tUsuarioCia.AsBoolean)             and not(tUsuarioHistCliente.AsBoolean)     and
     not(tUsuarioFilial.AsBoolean)          and not(tUsuarioGrupoCliente.AsBoolean)    and
     not(tUsuarioFeriado.AsBoolean)         and not(tUsuarioUnidade.AsBoolean)         and
     not(tUsuarioCadastroSimples.AsBoolean) and not(tUsuarioImposto.AsBoolean)         and
     not(tUsuarioTipoIndicacao.AsBoolean)   and not(tUsuarioClienteTerceiro.AsBoolean) and
     not(tUsuarioRefEstruturada_Tipos.AsBoolean) and not(tUsuarioPosicao.AsBoolean)    and
     not(tUsuarioProcesso.AsBoolean)        and not(tUsuarioGerarCodBarra.AsBoolean)   then
    fMenuP.RxSpeedButton1.Visible := False
  else
    fMenuP.RxSpeedButton1.Visible := True;

//Compras
  fMenuP.N9OrdensdeCompra1.Visible               := tUsuarioRelOC.AsBoolean;
  fMenuP.N1Atividades2.Visible                   := tUsuarioAtividade.AsBoolean;
  fMenuP.N3ConsultadeEstoquedeMateriais2.Visible := tUsuarioConsEstoqueMat.AsBoolean;
  fMenuP.N3ConsultadeFornecpAtividade2.Visible   := tUsuarioConsFornecAtiv.AsBoolean;
  fMenuP.Fornecedor1.Visible                     := tUsuarioFornecedores.AsBoolean;
  fMenuP.Materiais1.Visible                      := tUsuarioMaterial.AsBoolean;
  fMenuP.N3NotadeCompra1.Visible                 := tUsuarioNotaEnt.AsBoolean;
  fMenuP.OrdemdeCompra2.Visible                  := tUsuarioOrdemCompra.AsBoolean;
  fMenuP.Fornecedores4.Visible                   := tUsuarioRelForn.AsBoolean;
  fMenuP.Materiais4.Visible                      := tUsuarioRelProdutos.AsBoolean;
  fMenuP.N4MateriaisAbaixodoMnimo2.Visible       := tUsuarioRelMatMinimo.AsBoolean;
  fMenuP.N5HistricodoMaterial1.Visible           := tUsuarioRelHistMaterial.AsBoolean;
  fMenuP.DctodeEntradaeSadadoEstoque1.Visible    := tUsuarioDctoEst.AsBoolean;
  fMenuP.N7NotadeEntrada1.Visible                := tUsuarioRelNEntrada.AsBoolean;
  fMenuP.N8BalancodoEstoque1.Visible             := tUsuarioRelBalancoEst.AsBoolean;
  fMenuP.N4ConsultaHistricoMaterial1.Visible     := tUsuarioConsHistMat.AsBoolean;
  fMenuP.ConsultaNotasdeBeneficiamento1.Visible  := tUsuarioConsNotasBeneficiamento.AsBoolean;
  fMenuP.Inventrio1.Visible                      := tUsuarioRelInventario.AsBoolean;
  fMenuP.ConsultaCompras1.Visible                := tUsuarioOrdemCompra.AsBoolean;
  fMenuP.NotasPorNaturezadeOperao1.Visible       := tUsuarioRelNEntrNatOper.AsBoolean;
  fMenuP.NotasdeEntradaPorProduto1.Visible       := tUsuarioRelNEntrNatOper.AsBoolean;
  if not(tUsuarioRelForn.AsBoolean)         and not(tUsuarioRelProdutos.AsBoolean)     and
     not(tUsuarioRelEstMat.AsBoolean)       and not(tUsuarioRelMatMinimo.AsBoolean)    and
     not(tUsuarioCustoSetor.AsBoolean)      and not(tUsuarioRelNEntrada.AsBoolean)     and
     not(tUsuarioRelBalancoEst.AsBoolean)   and not(tUsuarioRelHistMaterial.AsBoolean) and
     not(tUsuarioRelOC.AsBoolean)           and not(tUsuarioConsHistMat.AsBoolean)     and
     not(tUsuarioRelNEntrNatOper.AsBoolean) then
    fMenuP.Relatrios7.Visible := False
  else
    fMenuP.Relatrios7.Visible := True;
  if not(tUsuarioFornecedores.AsBoolean)    and not(tUsuarioMaterial.AsBoolean)        and
     not(tUsuarioNotaEnt.AsBoolean)         and not(tUsuarioOrdemCompra.AsBoolean)     and
     not(tUsuarioRelForn.AsBoolean)         and not(tUsuarioConsNotasBeneficiamento.AsBoolean) and
     not(tUsuarioRelProdutos.AsBoolean)     and not(tUsuarioRelEstMat.AsBoolean)       and
     not(tUsuarioRequisicao.AsBoolean)      and not(tUsuarioAtividade.AsBoolean)       and
     not(tUsuarioConsFornecAtiv.AsBoolean)  and not(tUsuarioRelMatMinimo.AsBoolean)    and
     not(tUsuarioConsEstoqueMat.AsBoolean)  and not(tUsuarioBaixaEstoque.AsBoolean)    and
     not(tUsuarioCustoSetor.AsBoolean)      and not(tUsuarioDctoEst.AsBoolean)         and
     not(tUsuarioRelBalancoEst.AsBoolean)   and not(tUsuarioRelNEntrada.AsBoolean)     and
     not(tUsuarioRelHistMaterial.AsBoolean) and not(tUsuarioRelOC.AsBoolean)           and
     not(tUsuarioNFeRecebe.AsBoolean)       and not(tUsuarioRelNEntrNatOper.AsBoolean) then
    fMenuP.RxSpeedButton2.Visible := False
  else
   fMenuP.RxSpeedButton2.Visible := True;
// PCP
  fMenuP.N2EmbarqueDirio1.Visible              := tUsuarioRelEmbDiario.AsBoolean;
  fMenuP.EmbarqueDirioLote1.Visible            := tUsuarioRelEmbDiario.AsBoolean;
  fMenuP.BaixaPedidos1.Visible                 := tUsuarioBaixaPedidos.AsBoolean;
  fMenuP.Pedido2.Visible                       := tUsuarioPedido.AsBoolean;
  fMenuP.Produtos1.Visible                     := tUsuarioProduto.AsBoolean;
  fMenuP.Setor2.Visible                        := tUsuarioSetor.AsBoolean;
  fMenuP.Pedidosnofaturados1.Visible           := tUsuarioRelPedNFat.AsBoolean;
  fMenuP.PedidoEspecial1.Visible               := tUsuarioPedidoEsp.AsBoolean;
  fMenuP.BaixaTalo1.Visible                    := tUsuarioBaixaProducao.AsBoolean;
  fMenuP.COramento1.Visible                    := tUsuarioOrcamento.AsBoolean;
  fMenuP.ConsultaSituaodosPedidos1.Visible     := tUsuarioConsPedidos.AsBoolean;
  fMenuP.PedidosemCarteira1.Visible            := tUsuarioRelPedCarteira.AsBoolean;
  fMenuP.PedidosemCarteiraValor1.Visible       := tUsuarioRelPedCarteiraVlr.AsBoolean;
  fMenuP.HistricodoProduto1.Visible            := tUsuarioHistProduto.AsBoolean;
  fMenuP.ConsultaRelatrioClientesporProduto1.Visible := tUsuarioConsClienteProdPend.AsBoolean;
  fMenuP.ConsultaProduto1.Visible                    := tUsuarioConsProdutoPed.AsBoolean;
  //fMenuP.Referncia1.Visible                          := tUsuarioProduto.AsBoolean;
  fMenuP.ConsultaLote1.Visible                       := tUsuarioConsLote.AsBoolean;
  fMenuP.GeraodosLotes1.Visible                      := tUsuarioGeraLote.AsBoolean;
  fMenuP.ConsultaMaterialnaFichaTcnica1.Visible      := tUsuarioConsMaterialFicha.AsBoolean;
  fMenuP.ipoProcesso1.Visible                        := tUsuarioTipoProcesso.AsBoolean;
  fMenuP.ConsultaPedidoPorProcesso1.Visible          := tUsuarioConsPedidoProcesso.AsBoolean;
  fMenuP.ConsultaPedidoPendente1.Visible             :=  tUsuarioConsPedidoProcesso.AsBoolean;
  fMenuP.ConsultaAmostra1.Visible                    := tUsuarioPedAmostra.AsBoolean;
  fMenuP.ConsMovPedido1.Visible                      := tUsuarioConsMovPedido.AsBoolean;
  fMenuP.MatrizLocalizao1.Visible                    := tUsuarioMatriz_Loc.AsBoolean;
  fMenuP.EtiquetaCaixaIndividual1.Visible            := tUsuarioEtiquetaIndividual.AsBoolean;
  if not(tUsuarioRelCalcMatLote.AsBoolean)     and not(tUsuarioRelPedNFat.AsBoolean)         and
     not(tUsuarioRotulos.AsBoolean)            and not(tUsuarioRelVendasVendRef.AsBoolean)   and
     not(tUsuarioRelVendas.AsBoolean)          and not(tUsuarioRelVendasVendCli.AsBoolean)   and
     not(tUsuarioRelEmbDiario.AsBoolean)       and not(tUsuarioRelPedCarteira.AsBoolean)     and
     not(tUsuarioEtiquetaIndividual.AsBoolean) then
    fMenuP.Relatrios8.Visible := False
  else
    fMenuP.Relatrios8.Visible := True;
  if not(tUsuarioBaixaPedidos.AsBoolean)        and not(tUsuarioConsultaLote.AsBoolean)       and
     not(tUsuarioLote.AsBoolean)                and not(tUsuarioPedidoEsp.AsBoolean)          and
     not(tUsuarioPedido.AsBoolean)              and not(tUsuarioProduto.AsBoolean)            and
     not(tUsuarioRelCalcMatLote.AsBoolean)      and not(tUsuarioProgramacao.AsBoolean)        and
     not(tUsuarioRelPedNFat.AsBoolean)          and not(tUsuarioRotulos.AsBoolean)            and
     not(tUsuarioRelVendas.AsBoolean)           and not(tUsuarioRelEmbDiario.AsBoolean)       and
     not(tUsuarioRelVendasVendCli.AsBoolean)    and not(tUsuarioRelVendasVendRef.AsBoolean)   and
     not(tUsuarioConsMovTalaoMI.AsBoolean)      and not(tUsuarioSetor.AsBoolean)              and
     not(tUsuarioHistPedido.AsBoolean)          and not(tUsuarioRecPedido.AsBoolean)          and
     not(tUsuarioCobrBcoSafra.AsBoolean)        and not(tUsuarioOrcamento.AsBoolean)          and
     not(tUsuarioConsPedidos.AsBoolean)         and not(tUsuarioRelPedCarteira.AsBoolean)     and
     not(tUsuarioConsAmostra.AsBoolean)         and not(tUsuarioHistProduto.AsBoolean)        and
     not(tUsuarioConsClienteProdPend.AsBoolean) and not(tUsuarioConsProdutoPed.AsBoolean)     and
     not(tUsuarioConsLote.AsBoolean)            and not(tUsuarioGeraLote.AsBoolean)           and
     not(tUsuarioFichaProducao.AsBoolean)       and not(tUsuarioConsMaterialFicha.AsBoolean)  and
     not(tUsuarioTipoProcesso.AsBoolean)        and not(tUsuarioConsPedidoProcesso.AsBoolean) and
     not(tUsuarioPedAmostra.AsBoolean)          and not(tUsuarioEtiquetaIndividual.AsBoolean) and
     not(tUsuarioConsMovPedido.AsBoolean)       and not(tUsuarioMatriz_Loc.AsBoolean)         then
    fMenuP.RxSpeedButton3.Visible := False
  else
    fMenuP.RxSpeedButton3.Visible := True;

// Faturamento
  //NFe 2.0
  fMenuP.CadastrodeTributos1.Visible := ((tUsuarioRegimeTrib.AsBoolean) or (tUsuarioPercSimples.AsBoolean) or (tUsuarioCSOSN.AsBoolean)
                                         or (tUsuarioTabCofins.AsBoolean) or (tUsuarioTabPis.AsBoolean));
  fMenuP.RegimeTributrio1.Visible    := tUsuarioRegimeTrib.AsBoolean;
  fMenuP.CSOSN.Visible               := tUsuarioCSOSN.AsBoolean;
  fMenuP.abelaCofins1.Visible        := tUsuarioTabCofins.AsBoolean;
  fMenuP.abelaPis1.Visible           := tUsuarioTabPis.AsBoolean;
  fMenuP.OrigemMercadoria1.Visible   := tUsuarioRegimeTrib.AsBoolean;
  fMenuP.InutilizarNumeraodeNota1.Visible := tUsuarioNFeInutilizar.AsBoolean;
  fMenuP.EmailsAdicionaisdaNFe1.Visible   := tUsuarioNFeEmail.AsBoolean;
  //*******

  fMenuP.CupomFiscal1.Visible                      := tUsuarioCupomFiscal.AsBoolean;
  fMenuP.N1ControledeFaturamento1.Visible          := tUsuarioContrFaturamento.AsBoolean;
  fMenuP.NotasFiscais2.Visible                     := tUsuarioNotaFiscal.AsBoolean;
  fMenuP.Notasemitidasporvendedor1.Visible         := tUsuarioRelNEmitVend.AsBoolean;
  fMenuP.Notasemitidaspornaturezadeoperao1.Visible := tUsuarioRelVendasNatOper.AsBoolean;//Botão
  fMenuP.NaturezadeOperaoQuantidade1.Visible       := tUsuarioRelVendasNatOper.AsBoolean;
  fMenuP.N3GeraSintegra1.Visible                   := tUsuarioGeraSintegra.AsBoolean;
  fMenuP.Vale1.Visible                             := tUsuarioVale.AsBoolean;
  fMenuP.Vale3.Visible                             := tUsuarioRelVale.AsBoolean;
  fMenuP.AcumuladoporProduto1.Visible              := tUsuarioRelAcumuladoFat.AsBoolean;
  fMenuP.ConsultaNotasEmbalagem1.Visible           := tUsuarioConsNotaFiscalBenef.AsBoolean;
  fMenuP.HistricoGeral1.Visible                    := tUsuarioHistFaturamento.AsBoolean;
  fMenuP.ConsultaFaturamento1.Visible              := tUsuarioHistFaturamento.AsBoolean;
  fMenuP.ConsultaNotaspedidos1.Visible             := tUsuarioConsNotasPorPedido.AsBoolean;
  fMenuP.ConsultaLotesPendentesFaturamento1.Visible   := tUsuarioConsPedidoPendFat.AsBoolean;
  fMenuP.ConsultaFaturamentoporGrupo1.Visible         := tUsuarioHistFaturamento.AsBoolean;
  fMenuP.ConsultaMovimentoClienteFornecedor1.Visible  := tUsuarioConsCliFornMov.AsBoolean;
  fMenuP.ConsultaNotasCanceladas1.Visible             := tUsuarioNotaFiscal.AsBoolean;
  fMenup.CadastrodeItensdeAjusteComplementar1.Visible := tUsuarioNotaFiscal.AsBoolean;
  fMenup.PercentualSimples1.Visible                   := tUsuarioPercSimples.AsBoolean;
  if not(tUsuarioRelNEmitVend.AsBoolean)     and not(tUsuarioRelVendasNatOper.AsBoolean) and
     not(tUsuarioContrFaturamento.AsBoolean) and not(tUsuarioRelVale.AsBoolean)          and
     not(tUsuarioRelAcumuladoFat.AsBoolean)  then
    fMenuP.Relatrios11.Visible := False
  else
    fMenuP.Relatrios11.Visible := True;
  //if not(tUsuarioConsFat.AsBoolean)             and not(tUsuarioNotaFiscal.AsBoolean)        and
  if not(tUsuarioNotaFiscal.AsBoolean)        and
     not(tUsuarioRelNEmitVend.AsBoolean)        and not(tUsuarioRelVendasNatOper.AsBoolean)  and
     not(tUsuarioContrFaturamento.AsBoolean)    and not(tUsuarioVlrIcms.AsBoolean)           and
     not(tUsuarioVale.AsBoolean)              and
     not(tUsuarioRelVale.AsBoolean)             and not(tUsuarioRelAcumuladoFat.AsBoolean)   and
     not(tUsuarioConsNotaFiscalBenef.AsBoolean) and not(tUsuarioHistFaturamento.AsBoolean)   and
     not(tUsuarioConsNotasPorPedido.AsBoolean)  and not(tUsuarioConsPedidoPendFat.AsBoolean) and
     not(tUsuarioConsCliFornMov.AsBoolean)      and not(tUsuarioPercSimples.AsBoolean)       and
     not(tUsuarioRegimeTrib.AsBoolean)          and not(tUsuarioCSOSN.AsBoolean)             and
     not(tUsuarioTabCofins.AsBoolean)           and not(tUsuarioTabPis.AsBoolean)            and
     not(tUsuarioNFeInutilizar.AsBoolean)       and not(tUsuarioCupomFiscal.AsBoolean)       and
     not(tUsuarioNFeEmail.AsBoolean)            then
    fMenuP.RxSpeedButton4.Visible := False
  else
    fMenuP.RxSpeedButton4.Visible := True;

// Comissão
  fMenuP.Comisso2.Visible                  := tUsuarioComissao.AsBoolean;
  fMenuP.ExtratodeVendedoresNotas1.Visible := tUsuarioExtratoCom.AsBoolean;
  fMenuP.LanamentodeComisses1.Visible      := tUsuarioLancComisVend.AsBoolean;
  fMenuP.N1Vendedor1.Visible               := tUsuarioVendedor.AsBoolean;
  fMenuP.RepresentanteMetas1.Visible       := tUsuarioVendedorMeta.AsBoolean;
  if not tUsuarioRelExtrComisVend.AsBoolean then
    fMenuP.Relatrios13.Visible := False
  else
    fMenuP.Relatrios13.Visible := True;
  if not(tUsuarioComissao.AsBoolean)         and not(tUsuarioExtratoCom.AsBoolean)   and
     not(tUsuarioLancComisVend.AsBoolean)    and not(tUsuarioVendedor.AsBoolean)     and
     not(tUsuarioRelExtrComisVend.AsBoolean) and not(tUsuarioVendedorMeta.AsBoolean) then
    fMenuP.RxSpeedButton8.Visible := False
  else
    fMenuP.RxSpeedButton8.Visible := True;
    
// Contas a Receber
  fMenuP.ContasaReceberNovo1.Visible         := tUsuarioCReceber.AsBoolean;
  fMenuP.LancaCtasaReceber1.Visible          := tUsuarioLancCReceber.AsBoolean;
  fMenuP.TipodeCobranas1.Visible             := tUsuarioTiposCobr.AsBoolean;
  fMenuP.Duplicatas2.Visible                 := tUsuarioRelBoleto.AsBoolean;
  fMenuP.Duplicatas21.Visible                := tUsuarioRelBoleto.AsBoolean;
  fMenuP.N6AReceberporCliente1.Visible       := tUsuarioRelCRecCli.AsBoolean;
  fMenuP.N1CpiasdeDuplicatas1.Visible        := tUsuarioCopiaDuplicata.AsBoolean;
  fMenuP.N3ContasaReceberporSemana1.Visible  := tUsuarioRelCReceberSem.AsBoolean;
  fMenuP.ConsultaContasaReceber1.Visible     := tUsuarioConsCReceber.AsBoolean;
  fMenuP.LimiteCliente1.Visible              := tUsuarioConsLimiteCli.AsBoolean;
  fMenuP.CobranaEletrnica1.Visible           := tUsuarioCobEletronica.AsBoolean;
  fMenuP.Carteira1.Visible                   := tUsuarioCarteira.AsBoolean;

  //Cobrança
  if not(tUsuarioRelBoleto.AsBoolean)      and
     not(tUsuarioRelCReceber.AsBoolean)    and not(tUsuarioRelCRecCli.AsBoolean)     and
     not(tUsuarioCopiaDuplicata.AsBoolean) and not(tUsuarioRelCReceberSem.AsBoolean) and
     not(tUsuarioRelDiarioCli.AsBoolean)   and not(tUsuarioRelRazaoCli.AsBoolean)    then
    fMenuP.Relatrios9.Visible := False
  else
    fMenuP.Relatrios9.Visible := True;
  if not(tUsuarioCReceber.AsBoolean)       and not(tUsuarioLancCReceber.AsBoolean)     and
     not(tUsuarioTiposCobr.AsBoolean)      and not(tUsuarioRelBoleto.AsBoolean)        and
     not(tUsuarioRelCReceber.AsBoolean)    and not(tUsuarioRelCRecCli.AsBoolean)       and
     not(tUsuarioCopiaDuplicata.AsBoolean) and not(tUsuarioRelCReceberSem.AsBoolean)   and
     not(tUsuarioCobrBcoBrasil.AsBoolean)  and not(tUsuarioRelDiarioCli.AsBoolean)     and
     not(tUsuarioRelRazaoCli.AsBoolean)    and not(tUsuarioConsCReceber.AsBoolean)     and
     not(tUsuarioCobEletronica.AsBoolean)  and not(tUsuarioCarteira.AsBoolean)         then
    fMenuP.RxSpeedButton5.Visible  := False
  else
    fMenuP.RxSpeedButton5.Visible  := True;
// Contas a Pagar
  fMenuP.LanaCtasaPagar1.Visible             := tUsuarioLctoPagar.AsBoolean;
  fMenuP.N1ContasPagar1.Visible              := tUsuarioRelCPagar.AsBoolean;
  fMenuP.N3APagarporFornecedores1.Visible    := tUsuarioRelCPagForn.AsBoolean;
  fMenuP.N4PagamentodeJuros2.Visible         := tUsuarioRelPgtoJuros.AsBoolean;//Botão
  fMenuP.N5ControleFornecedores1.Visible     := tUsuarioRelContFornecedores.AsBoolean;
  fMenuP.N3ContasaPagarporSemana1.Visible    := tUsuarioRelCPagarSem.AsBoolean;
  fMenuP.ContasaPagarNovo1.Visible           := tUsuarioCPagar.AsBoolean;
  fMenuP.ConsultaPagamentosDevolues1.Visible := tUsuarioRelCPagar.AsBoolean;
  if not(tUsuarioRelCPagar.AsBoolean)           and 
     not(tUsuarioRelCPagForn.AsBoolean)         and not(tUsuarioRelPgtoJuros.AsBoolean)    and
     not(tUsuarioRelContFornecedores.AsBoolean) and not(tUsuarioRelCPagarSem.AsBoolean)    and
     not(tUsuarioRelDiarioForn.AsBoolean)       and not(tUsuarioRelRazaoForn.AsBoolean)    then
    fMenuP.N4Relatrios1.Visible := False
  else
    fMenuP.N4Relatrios1.Visible := True;
  if not(tUsuarioCPagar.AsBoolean)          and not(tUsuarioLctoPagar.AsBoolean)           and
     not(tUsuarioFaturas.AsBoolean)         and not(tUsuarioRelCPagar.AsBoolean)           and
     not(tUsuarioRelCPagForn.AsBoolean)         and
     not(tUsuarioRelPgtoJuros.AsBoolean)    and not(tUsuarioRelContFornecedores.AsBoolean) and
     not(tUsuarioRelCPagarSem.AsBoolean)    and not(tUsuarioRelDiarioForn.AsBoolean)       and
     not(tUsuarioRelRazaoForn.AsBoolean)    then
    fMenuP.RxSpeedButton6.Visible := False
  else
    fMenuP.RxSpeedButton6.Visible := True;
// Financeiro
  fMenuP.Contas3.Visible              := tUsuarioContas.AsBoolean;
  fMenuP.N3Indexador2.Visible         := tUsuarioIndexador.AsBoolean;
  fMenuP.Juros1.Visible               := tUsuarioJuros.AsBoolean;
  fMenuP.Movimentos2.Visible          := tUsuarioMovto.AsBoolean;
  fMenuP.ConsultaPagamentosRecebimentos1.Visible := tUsuarioMovto.AsBoolean;
  fMenuP.PlanodeContas2.Visible       := tUsuarioPlanoCtas.AsBoolean;
  fMenuP.Contas4.Visible              := tUsuarioRelCtas.AsBoolean;//Botão
  fMenuP.N7Cheque1.Visible            := tUsuarioCheque.AsBoolean;
  fMenuP.N3PlanodeContas1.Visible     := tUsuarioRelPlanoContas.AsBoolean;
  fMenuP.CentrodeCusto1.Visible       := ((tUsuarioRelPlanoContas.AsBoolean) and (tParametrosUsaCentroCusto.AsBoolean));
  if not(tUsuarioRelCtas.AsBoolean) and not(tUsuarioRelPlanoContas.AsBoolean) then
    fMenuP.Relatrios10.Visible := False
  else
    fMenuP.Relatrios10.Visible := True;
  if not(tUsuarioContas.AsBoolean)         and not(tUsuarioEntrMov.AsBoolean) and
     not(tUsuarioJuros.AsBoolean)          and not(tUsuarioMovto.AsBoolean)   and
     not(tUsuarioPlanoCtas.AsBoolean)      and not(tUsuarioRelCtas.AsBoolean) and
     not(tUsuarioIndexador.AsBoolean)      and not(tUsuarioCheque.AsBoolean)  and
     not(tUsuarioRelPlanoContas.AsBoolean) and not(tUsuarioAltNotaFinanceiro.AsBoolean) then
    fMenuP.RxSpeedButton7.Visible := False
  else
    fMenuP.RxSpeedButton7.Visible := True;
  fMenuP.Sair1.Visible := tUsuarioAdministrador.AsBoolean;
end;

procedure TDM1.tGrupoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGrupo.Handle);
end;

procedure TDM1.tFornecedoresAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFornecedores.Handle);
end;

procedure TDM1.tGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGrade.Handle);
end;

procedure TDM1.tGradeItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGradeItem.Handle);
end;

procedure TDM1.tCorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCor.Handle);
end;

procedure TDM1.tGradeItemBeforePost(DataSet: TDataSet);
begin
  if tGradeItem.State in [dsInsert] then
  begin
    tGradeItemIns.Refresh;
    tGradeItemIns.Last;
    tGradeItemPosicao.AsInteger := tGradeItemInsPosicao.AsInteger + 1;
  end;
end;

procedure TDM1.tCondPgtoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCondPgto.Handle);
end;

procedure TDM1.tCondPgtoItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCondPgtoItem.Handle);
end;

procedure TDM1.tCondPgtoItemBeforePost(DataSet: TDataSet);
begin
  if tCondPgtoItem.State in [dsInsert] then
  begin
    fCondPgto.tCondPgtoItemIns.Refresh;
    fCondPgto.tCondPgtoItemIns.Last;
    tCondPgtoItemItem.AsInteger := fCondPgto.tCondPgtoItemInsItem.AsInteger + 1;
  end;
end;

procedure TDM1.tTranspAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTransp.Handle);
end;

procedure TDM1.tOrdemCompraAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompra.Handle);
end;

procedure TDM1.tOrdemCompraItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraItem.Handle);
end;

procedure TDM1.tOrdemCompraItemGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraItemGrade.Handle);
end;

procedure TDM1.tClasFiscalAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tClasFiscal.Handle);
end;

procedure TDM1.tSitTributariaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSitTributaria.Handle);
end;

procedure TDM1.tProdutoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProduto.Handle);
end;

procedure TDM1.tProdutoCorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoCor.Handle);
end;

procedure TDM1.tProdutoMatAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoMat.Handle);
end;

procedure TDM1.tPedidoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedido.Handle);
end;

procedure TDM1.tPedidoDescontoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoDesconto.Handle);
end;

procedure TDM1.tPedidoGradeAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoGrade.Handle);
end;

procedure TDM1.tPedidoItemAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoItem.Handle);
end;

procedure TDM1.tPedidoMaterialAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoMaterial.Handle);
end;

procedure TDM1.tClienteAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCliente.Handle);
end;

procedure TDM1.tPedidoDescontoBeforePost(DataSet: TDataSet);
begin
  if (tPedidoDescontoPercDesconto.AsFloat = 0) or (tPedidoDescontoPercDesconto.AsString = '') then
    fPedidoDesconto.BitBtn1.SetFocus;
end;

procedure TDM1.tUsuarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuario.Handle);
end;

procedure TDM1.tUsuarioAltAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioAlt.Handle)
end;

procedure TDM1.tUsuarioExcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioExc.Handle)
end;

procedure TDM1.tUsuarioInsAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUsuarioIns.Handle)
end;

procedure TDM1.tEmpresaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEmpresa.Handle)
end;

procedure TDM1.tNatOperacaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNatOperacao.Handle)
end;

procedure TDM1.tVendedorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tVendedor.Handle)
end;

procedure TDM1.tSetorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSetor.Handle);
end;

procedure TDM1.tTipoCobrancaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTipoCobranca.Handle);
end;

procedure TDM1.tHistoricoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tHistorico.Handle);
end;

procedure TDM1.tNotaFiscalAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscal.Handle);
end;

procedure TDM1.tCReceberParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCReceberParc.Handle);
end;

procedure TDM1.tIndexadorAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tIndexador.Handle);
end;

procedure TDM1.tUFAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUF.Handle);
end;

procedure TDM1.tNotaFiscalItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalItens.Handle);
end;

procedure TDM1.tNotaFiscalParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalParc.Handle);
end;

procedure TDM1.tParametrosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tParametros.Handle);
end;

procedure TDM1.tContasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tContas.Handle);
end;

procedure TDM1.tMovimentosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tMovimentos.Handle);
end;

procedure TDM1.tCReceberAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCReceber.Handle);
end;

procedure TDM1.tPlanoContasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPlanoContas.Handle);
end;

procedure TDM1.tCPagarAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCPagar.Handle);
end;

procedure TDM1.tCPagarParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCPagarParc.Handle);
end;

procedure TDM1.tNEntradaParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaParc.Handle);
end;

procedure TDM1.tNEntradaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntrada.Handle);
end;

procedure TDM1.tNEntradaItensMobraAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaItensMObra.Handle);
end;

procedure TDM1.tNEntradaItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaItens.Handle);
end;

procedure TDM1.tNEntradaParcBeforePost(DataSet: TDataSet);
begin
  if tNEntradaParcNroDuplicata.AsInteger = 0 then
    tNEntradaParcNroDuplicata.AsInteger := tNEntradaParcNumNEntr.AsInteger;
  if tNEntradaParc.State = dsInsert then
    fNotaEntrada.Verifica_Parcelas;
end;

procedure TDM1.tCReceberParcHistAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCReceberParcHist.Handle);
end;

procedure TDM1.tImpressoraAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tImpressora.Handle);
end;

procedure TDM1.tCReceberParcCalcFields(DataSet: TDataSet);
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

procedure TDM1.tJurosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tJuros.Handle);
end;

procedure TDM1.tRegioesAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tRegioes.Handle);
end;

procedure TDM1.tPedidoNotaAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPedidoNota.Handle);
end;

procedure TDM1.tCPagarParcCalcFields(DataSet: TDataSet);
begin
  if not tCPagarParcQuitParcCPagar.AsBoolean then
    begin
      tCPagarParcclDiasAtraso.AsFloat := Date - tCPagarParcDtVencCPagar.AsDateTime;
      if tCPagarParcclDiasAtraso.AsFloat <= 0 then
        tCPagarParcclDiasAtraso.AsFloat := 0;
    end
  else
    begin
      tCPagarParcclDiasAtraso.AsFloat := tCPagarParcDtPagParcCPagar.AsDateTime - tCPagarParcDtVencCPagar.AsDateTime;
      if tCPagarParcclDiasAtraso.AsFloat <= 0 then
        tCPagarParcclDiasAtraso.AsFloat := 0;
    end;
end;

procedure TDM1.tOrdemCompraNotaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraNota.Handle);
end;

procedure TDM1.tOrdemCompraNotaGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrdemCompraNotaGrade.Handle);
end;

procedure TDM1.tObsAuxAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tObsAux.Handle);
end;

procedure TDM1.tAtividadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAtividade.Handle);
end;

procedure TDM1.tFornecAtivAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFornecAtiv.Handle);
end;

procedure TDM1.tProdutoMatCalcFields(DataSet: TDataSet);
begin
  if tProdutoMatQtd.AsFloat > 0 then
    tProdutoMatclQtdPr.AsFloat := 1 / tProdutoMatQtd.AsFloat;
end;

procedure TDM1.tMaoDeObraAfterPost(DataSet: TDataSet);
begin
  DBIsaveChanges(tMaoDeObra.Handle);
end;

procedure TDM1.tPedidoEspAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoEsp.Handle);
end;

procedure TDM1.tPedidoEspItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoEspItem.Handle);
end;

procedure TDM1.tPedidoEspParcAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoEspParc.Handle);
end;

procedure TDM1.tNotaFiscalGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalGrade.Handle);
end;

procedure TDM1.tCidadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCidade.Handle);
end;

procedure TDM1.tDctoEstAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tDctoEst.Handle);
end;

procedure TDM1.tDctoEstItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tDctoEstItem.Handle);
end;

procedure TDM1.tDctoEstGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tDctoEstGrade.Handle);
end;

procedure TDM1.tEstoqueMatMovAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tEstoqueMatMov.Handle);
end;

procedure TDM1.tOutrosAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOutros.Handle);
end;

procedure TDM1.tProdutoConsumoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoConsumo.Handle);
end;

procedure TDM1.tProdutoConsumoItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoConsumoItem.Handle);
end;

procedure TDM1.tPedidoConsumoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoConsumo.Handle);
end;

procedure TDM1.tFuncionarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFuncionario.Handle);
end;

procedure TDM1.tFeriasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFerias.Handle);
end;

procedure TDM1.tSalarioAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tSalario.Handle);
end;

procedure TDM1.tTabPrecoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTabPreco.Handle);
end;

procedure TDM1.tFuncFaltasAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFuncFaltas.Handle);
end;

procedure TDM1.tAgeContatoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tAgeContato.Handle);
end;

procedure TDM1.tProdutoCliAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoCli.Handle);
end;

procedure TDM1.tSitTributariaNewRecord(DataSet: TDataSet);
begin
  tSitTributariaSitTributaria.AsFloat := 0;
end;

procedure TDM1.tOrcamentoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrcamento.Handle);
end;

procedure TDM1.tOrcamentoItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrcamentoItens.Handle);
end;

procedure TDM1.tNEntradaItensNewRecord(DataSet: TDataSet);
begin
  DM1.tNEntradaItensNumMovEstBaixa.AsInteger := 0;
  DM1.tNEntradaItensPosicao.AsInteger        := 0;
  DM1.tNEntradaItensCodGrade.AsInteger       := 0;
end;

procedure TDM1.tPedidoItemNewRecord(DataSet: TDataSet);
begin
  DM1.tPedidoItemCancelado.AsBoolean       := False;
  DM1.tPedidoItemCopiado.AsBoolean         := False;
  DM1.tPedidoItemQtdParesCanc.AsFloat      := 0;
  DM1.tPedidoItemTalaoGerado.AsBoolean     := False;
  DM1.tPedidoItemQtdFatAut.AsFloat         := 0;
  DM1.tPedidoItemQtdFatMan.AsFloat         := 0;
  DM1.tPedidoItemQtdParesFat.AsFloat       := 0;
  DM1.tPedidoItemMateriaPrima.AsBoolean    := False;
  DM1.tPedidoItemAmostraEntregue.AsBoolean := False;
  DM1.tPedidoItemVlrDesconto.AsFloat       := 0;
  DM1.tPedidoItemNumTalao.AsInteger        := 0;
  DM1.tPedidoItemGerarTalao.AsBoolean      := False;
  DM1.tPedidoItemPrecoFabrica.AsFloat      := 0;
  DM1.tPedidoItemVlrTotalFabrica.AsFloat   := 0;
end;

procedure TDM1.tTalaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTalao.Handle);
end;

procedure TDM1.tTalaoGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tTalaoGrade.Handle);
end;

procedure TDM1.tValeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tVale.Handle);
end;

procedure TDM1.tValeItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tValeItens.Handle);
end;

procedure TDM1.tNotaFiscalValeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalVale.Handle);
end;

procedure TDM1.tHistClienteAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tHistCliente.Handle);
end;

procedure TDM1.tPedidoAfterInsert(DataSet: TDataSet);
begin
  DM1.tPedidoDolar.AsBoolean        := False;
  DM1.tPedidoCancelado.AsBoolean    := False;
  DM1.tPedidoDtEmissao.AsDateTime  := Date;
  DM1.tPedidoTipoFrete.AsString    := 'C';
  DM1.tPedidoSituacao.AsInteger    := 1;
  DM1.tPedidoVlrDesconto.AsFloat   := 0;
  DM1.tPedidoCopiado.AsBoolean     := False;
  DM1.tPedidoCancelado.AsBoolean   := False;
  DM1.tPedidoEstoque.AsBoolean     := False;
  DM1.tPedidoUsuario.AsString      := DM1.tUsuarioUsuario.AsString;
  DM1.tPedidoDtCad.AsDateTime      := Date;
  DM1.tPedidoHrCad.AsDateTime      := Now;
end;

procedure TDM1.tFornecedoresAfterInsert(DataSet: TDataSet);
begin
  DM1.tFornecedoresUsuario.AsString := DM1.tUsuarioUsuario.AsString;
  DM1.tFornecedoresDtCad.AsDateTime := Date;
  DM1.tFornecedoresHrCad.AsDateTime := Now;
end;

procedure TDM1.tCReceberParcNewRecord(DataSet: TDataSet);
begin
  DM1.tCReceberParcQuitParcCReceber.AsBoolean  := False;
  DM1.tCReceberParcComissaoItem.AsBoolean      := False;
  DM1.tCReceberParcCancelado.AsBoolean         := False;
  DM1.tCReceberParcTitProtestado.AsBoolean     := False;
  DM1.tCReceberParcTransferencia.AsBoolean     := False;
  DM1.tCReceberParcPercComissao.AsFloat        := 0;
  DM1.tCReceberParcVlrComissao.AsFloat         := 0;
  DM1.tCReceberParcVlrComissaoRestante.AsFloat := 0;
  DM1.tCReceberParcNumSeqNota.AsInteger        := 0;
  DM1.tCReceberParcSerie.AsString              := '';
  DM1.tCReceberParcIDCobEletronica.AsInteger   := 0;
end;

procedure TDM1.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TDM1.tFilialAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tFilial.Handle);
end;

procedure TDM1.tClienteNewRecord(DataSet: TDataSet);
begin
  DM1.tClienteIPISuspenso.AsBoolean        := True;
  DM1.tClienteVendaPorMilheiro.AsBoolean   := DM1.tParametrosVendaPorMilheiro.AsBoolean;
  DM1.tClienteImpItemNotaPorTam.AsBoolean  := DM1.tParametrosImpItemNotaPorTam.AsBoolean;
  DM1.tClienteUsuario.AsString             := DM1.tUsuarioUsuario.AsString;
  DM1.tClienteDtCad.AsDateTime             := Date;
  DM1.tClienteHrCad.AsDateTime             := Now;
  DM1.tClienteAgrupaPedidoNaNota.AsBoolean := False;
  DM1.tClienteJuntarLarguraEDI.AsBoolean   := False;
  DM1.tClienteImpOCAbaixoItem.AsBoolean    := False;
  DM1.tClienteInativo.AsBoolean            := False;
  DM1.tClienteDtCadastro.AsDateTime        := Date;
  DM1.tClienteAcumularFabricaEDI.AsBoolean := False;
  DM1.tClienteCodObsIPI.AsInteger          := 2;
  DM1.tClienteMercado.AsString             := 'I';
  DM1.tClienteImpPlano.AsBoolean           := False;
  DM1.tClienteIDPais.AsInteger             := 1;
  DM1.tClienteCliente.AsBoolean            := True;
  DM1.tClienteRepresentada.AsBoolean       := False;
  DM1.tClienteFabrica.AsBoolean            := False;
  DM1.tClientePercFabrica.AsFloat          := 0;
  DM1.tClienteUsaIcmsSimples.AsBoolean     := True;
end;

procedure TDM1.tPedidoNewRecord(DataSet: TDataSet);
begin
  DM1.tPedidoEstoque.AsBoolean            := False;
  DM1.tPedidoTipo.AsString                := 'V';
  DM1.tPedidoCancelado.AsBoolean          := False;
  DM1.tPedidoVlrMercadoriaFabrica.AsFloat := 0;
  DM1.tPedidoVlrTotalFabrica.AsFloat      := 0;
end;

procedure TDM1.tProdutoNewRecord(DataSet: TDataSet);
begin
  DM1.tProdutoVincularProduto.AsBoolean        := False;
  DM1.tProdutoInativo.AsBoolean                := False;
  DM1.tProdutoLancaGrade.AsBoolean             := False;
  DM1.tProdutoPrecoGrade.AsBoolean             := False;
  DM1.tProdutoLancaCor.AsBoolean               := False;
  DM1.tProdutoEstoque.AsBoolean                := True;
  DM1.tProdutoPrecoCor.AsBoolean               := False;
  DM1.tProdutoDtAlteracao.AsDateTime           := Date;
  DM1.tProdutoFichaTecnicaConsPorTam.AsBoolean := False;
  DM1.tProdutoJuntarLarguraEDI.AsBoolean       := False;
  DM1.tProdutoImpMatTalao.AsBoolean            := True;
  DM1.tProdutoUsuario.AsString                 := DM1.tUsuarioUsuario.AsString;
  DM1.tProdutoDtCad.AsDateTime                 := Date;
  DM1.tProdutoHrCad.AsDateTime                 := Now;

  DM1.tProdutoLancaGrade.AsBoolean    := False;
  DM1.tProdutoPrecoGrade.AsBoolean    := False;
  DM1.tProdutoEstoque.AsBoolean       := True;
  DM1.tProdutoPosseMat.AsString       := 'E';
  DM1.tProdutoMaterialOutros.AsString := 'O';
  DM1.tProdutoProdMat.AsString        := 'N';
  DM1.tProdutoOrigemProd.AsString     := '0';
  DM1.tProdutoGerarCodBarra.AsBoolean := False;
end;

procedure TDM1.tNatOperacaoNewRecord(DataSet: TDataSet);
begin
  DM1.tNatOperacaoCalcComissao.AsBoolean     := False;
  DM1.tNatOperacaoMaoObra.AsBoolean          := False;
  DM1.tNatOperacaoControlarRetorno.AsBoolean := False;
  DM1.tNatOperacaoDeduzirFat.AsBoolean       := False;
end;

procedure TDM1.tProdutoGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoGrade.Handle);
end;

procedure TDM1.tProdutoTamAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoTam.Handle);
end;

procedure TDM1.tPlanoContasItensAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPlanoContasItens.Handle);
end;

procedure TDM1.tProdutoTamNewRecord(DataSet: TDataSet);
begin
  DM1.tProdutoTamQtdMaxima.AsFloat := 0;
  DM1.tProdutoTamQtdMinima.AsFloat := 0;
  DM1.tProdutoTamPesoL.AsFloat     := 0;
  DM1.tProdutoTamPesoB.AsFloat     := 0;
end;

procedure TDM1.tTranspNewRecord(DataSet: TDataSet);
begin
  DM1.tTranspCliente.AsBoolean := False;
end;

procedure TDM1.tProdutoCliNewRecord(DataSet: TDataSet);
begin
  DM1.tProdutoCliCodGrade.AsInteger := 0;
  DM1.tProdutoCliPosicao.AsInteger  := 0;
end;

procedure TDM1.tNotaFiscalItensNewRecord(DataSet: TDataSet);
begin
  DM1.tNotaFiscalItensPosicao.AsInteger        := 0;
  DM1.tNotaFiscalItensMaterial.AsBoolean       := False;
  DM1.tNotaFiscalItensSomaTransfICM.AsBoolean  := False;
  DM1.tNotaFiscalItensObsComplementar.AsString := '';
  DM1.tNotaFiscalItensAliqCofins.AsFloat       := 0;
  DM1.tNotaFiscalItensAliqPis.AsFloat          := 0;
  DM1.tNotaFiscalItensVlrCofins.AsFloat        := 0;
  DM1.tNotaFiscalItensVlrPis.AsFloat           := 0;
  DM1.tNotaFiscalItensBaseIcmsSimples.AsFloat  := 0;
  DM1.tNotaFiscalItensVlrIcmsSimples.AsFloat   := 0;
  DM1.tNotaFiscalItensClasFiscal.AsString      := '';
  DM1.tNotaFiscalItensOrigemProd.AsString      := '0';
end;

procedure TDM1.tProdutoTamBeforePost(DataSet: TDataSet);
begin
  if (DM1.tProdutoTamPesoL.AsFloat = 0) and (DM1.tProdutoTamPesoB.AsFloat > 0) then
    DM1.tProdutoTamPesoL.AsFloat := DM1.tProdutoTamPesoB.AsFloat
  else
  if (DM1.tProdutoTamPesoB.AsFloat = 0) and (DM1.tProdutoTamPesoL.AsFloat > 0) then
    DM1.tProdutoTamPesoB.AsFloat := DM1.tProdutoTamPesoL.AsFloat;
end;

procedure TDM1.tExtComissaoNewRecord(DataSet: TDataSet);
begin
  DM1.tExtComissaoFilial.AsInteger := DM1.tFilialCodigo.AsInteger;
end;

procedure TDM1.tNEntradaNewRecord(DataSet: TDataSet);
begin
  DM1.tNEntradaModelo.AsString      := '1';
  DM1.tNEntradaVlrDevolucao.AsFloat := 0;
end;

procedure TDM1.tFilialNewRecord(DataSet: TDataSet);
begin
  DM1.tFilialSimplesGaucho.AsBoolean          := False;
  DM1.tFilialImpSimplesGaucho.AsBoolean       := False;
end;

procedure TDM1.tNotaFiscalPedAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalPed.Handle);
end;

procedure TDM1.tNotaFiscalPedGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalPedGrade.Handle);
end;

procedure TDM1.tNotaFiscalNDevolvidaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalNDevolvida.Handle);
end;

procedure TDM1.tNotaFiscalNewRecord(DataSet: TDataSet);
begin
  //NFe 2.00
  DM1.tNotaFiscalVlrTransf.AsFloat          := 0;
  DM1.tNotaFiscalCancelada.AsBoolean        := False;
  DM1.tNotaFiscalObs.AsString               := '';
  DM1.tNotaFiscalBaseTransfICM.AsFloat      := 0;
  DM1.tNotaFiscalBaseIcmsSimples.AsFloat    := 0;
  DM1.tNotaFiscalVlrIcmsSimples.AsFloat     := 0;
  DM1.tNotaFiscalNumNotaCopiada.AsInteger   := 0;
  DM1.tNotaFiscalSerieCopiada.AsString      := '';
  DM1.tNotaFiscalFinalidade.AsString        := '1';
  DM1.tNotaFiscalVlrPis.AsFloat             := 0;
  DM1.tNotaFiscalVlrCofins.AsFloat          := 0;
  DM1.tNotaFiscalBaseIcmsOutros.AsFloat     := 0;
  DM1.tNotaFiscalVlrIcmsOutros.AsFloat      := 0;
  DM1.tNotaFiscalVlrDuplicataOutros.AsFloat := 0;
  DM1.tNotaFiscalTipoDesconto.AsString      := '';
  DM1.tNotaFiscalGeraDupl_Frete.AsBoolean         := False;
  DM1.tNotaFiscalGeraDupl_OutrosValores.AsBoolean := False;
  DM1.tNotaFiscalGeraDupl_PisCofins.AsBoolean     := False;
  DM1.tNotaFiscalGeraDupl_Seguro.AsBoolean        := False;
  DM1.tNotaFiscalInfNumNotaManual.AsBoolean       := False;
  DM1.tNotaFiscalNFeProtocoloCancelada.AsString   := '';
end;

procedure TDM1.tPedidoGradeNewRecord(DataSet: TDataSet);
begin
  DM1.tPedidoGradeQtd.AsFloat          := 0;
  DM1.tPedidoGradeQtdParesAut.AsFloat  := 0;
  DM1.tPedidoGradeQtdParesFat.AsFloat  := 0;
  DM1.tPedidoGradeQtdParesMan.AsFloat  := 0;
  DM1.tPedidoGradeQtdParesRest.AsFloat := 0;
end;

procedure TDM1.tNEntradaNDevolvidaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNEntradaNDevolvida.Handle);
end;

procedure TDM1.tPedidoCancAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoCanc.Handle);
end;

procedure TDM1.tPedidoCancGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoCancGrade.Handle);
end;

procedure TDM1.tGrupoClienteAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tGrupoCliente.Handle);
end;

procedure TDM1.tNotaFiscalPedNewRecord(DataSet: TDataSet);
begin
  tNotaFiscalPedCopia.AsBoolean := False;
end;

procedure TDM1.tChequeCPagarAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tChequeCPagar.Handle);
end;

procedure TDM1.DataModuleCreate(Sender: TObject);
begin
  Abre_Tabelas1;
  FDataSetError := TrsDataSetError.Create;
  FDataSetError.CreateError(Self);

  if tParametrosUsaFB.AsBoolean then
  begin
    if not Assigned(DmDatabase) then
      DmDatabase := TDmDatabase.Create(Self);
  end;
end;

procedure TDM1.tOrcamentoGradeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tOrcamentoGrade.Handle);
end;

procedure TDM1.tTalaoNewRecord(DataSet: TDataSet);
begin
  DM1.tTalaoCancelado.AsBoolean      := False;
  DM1.tTalaoReprogramacao.AsBoolean  := False;
  DM1.tTalaoQuantidade.AsFloat       := 0;
  DM1.tTalaoQtdFaturada.AsFloat      := 0;
  DM1.tTalaoQtdRestante.AsFloat      := 0;
  DM1.tTalaoMotivoCancelado.AsString := '';
  DM1.tTalaoEntregue.AsBoolean       := False;
  DM1.tTalaoDtImpressao.Clear;
  DM1.tTalaoDtEntrega.Clear;
end;

procedure TDM1.tOrdemCompraItemNewRecord(DataSet: TDataSet);
begin
  tOrdemCompraItemQtd.AsFloat          := 0;
  tOrdemCompraItemQtdEntregue.AsFloat  := 0;
  tOrdemCompraItemQtdRestante.AsFloat  := 0;
  tOrdemCompraItemQtdCancelada.AsFloat := 0;
end;

procedure TDM1.tTalaoBeforePost(DataSet: TDataSet);
begin
  if DM1.tTalaoDtImpressao.AsDateTime < 2 then
    DM1.tTalaoDtImpressao.Clear;
  if DM1.tTalaoCodCombinacao.AsInteger < 1 then
    DM1.tTalaoCodCombinacao.AsInteger := 1;
end;

procedure TDM1.tProdutoCorNewRecord(DataSet: TDataSet);
begin
  DM1.tProdutoCorInativo.AsBoolean := False;
end;

procedure TDM1.tFornecedoresNewRecord(DataSet: TDataSet);
begin
  DM1.tFornecedoresCliente.AsBoolean := False;
end;

procedure TDM1.tUnidadeAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tUnidade.Handle);
end;

procedure TDM1.tUnidadeNewRecord(DataSet: TDataSet);
begin
  tUnidadeConversor.AsFloat := 0;
end;

procedure TDM1.tCadastroSimplesAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tCadastroSimples.Handle);
end;

procedure TDM1.tCReceberParcHistNewRecord(DataSet: TDataSet);
begin
  tCReceberParcHistPgto.AsBoolean               := False;
  tCReceberParcHistNumMov.AsInteger             := 0;
  tCReceberParcHistNumMovJuros.AsInteger        := 0;
  tCReceberParcHistDevolucao.AsBoolean          := False;
  tCReceberParcHistNroLancExtComissao.AsInteger := 0;
  tCReceberParcHistTipo.AsString                := 'OUT';
  tCReceberParcHistDtHistorico.AsDateTime       := Date;
end;

procedure TDM1.tCPagarParcHistNewRecord(DataSet: TDataSet);
begin
  DM1.tCPagarParcHistCodHistorico.AsInteger := 0;
  DM1.tCPagarParcHistDtHistorico.AsDateTime := Date;
  DM1.tCPagarParcHistPgto.AsBoolean         := False;
  DM1.tCPagarParcHistNumMov.AsInteger       := 0;
  DM1.tCPagarParcHistNumMovJuros.AsInteger  := 0;
  DM1.tCPagarParcHistDevolucao.AsBoolean    := False;
  DM1.tCPagarParcHistTipo.AsString          := '';
end;

procedure TDM1.tCPagarParcHistAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCPagarParcHist.Handle);
end;

procedure TDM1.tCReceberParcRemAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCReceberParcRem.Handle);
end;

procedure TDM1.tContasParametrosAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tContasParametros.Handle);
end;

procedure TDM1.tOrdemCompraCancAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tOrdemCompraCanc.Handle);
end;

procedure TDM1.tOrdemCompraCancNewRecord(DataSet: TDataSet);
begin
  tOrdemCompraCancCodGrade.AsInteger := 0;
  tOrdemCompraCancPosicao.AsInteger  := 0;
end;

procedure TDM1.tContasNewRecord(DataSet: TDataSet);
begin
  tContasCNAB.AsString := '';
end;

procedure TDM1.tNotaFiscalTBObsAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tNotaFiscalTBObs.Handle);
end;

procedure TDM1.tGrupoItemAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tGrupoItem.Handle);
end;

procedure TDM1.tGrupoNewRecord(DataSet: TDataSet);
begin
  tGrupoEstoque.AsBoolean    := False;
  tGrupoTipoProduto.AsString := 'O';
end;

procedure TDM1.tGrupoItemNewRecord(DataSet: TDataSet);
begin
  tGrupoItemEstoque.AsBoolean := False;
end;

procedure TDM1.tVendedorNewRecord(DataSet: TDataSet);
begin
  DM1.tVendedorInativo.AsBoolean := False;
end;

procedure TDM1.tCPagarNewRecord(DataSet: TDataSet);
begin
  DM1.tCPagarQuitado.AsBoolean := False;
end;

procedure TDM1.tImpostosAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tImpostos.Handle);
end;

procedure TDM1.tEstoqueMatMovNewRecord(DataSet: TDataSet);
begin
  DM1.tEstoqueMatMovPercIcms.AsFloat       := 0;
  DM1.tEstoqueMatMovPercIpi.AsFloat        := 0;
  DM1.tEstoqueMatMovPercTributacao.AsFloat := 0;
end;

procedure TDM1.tPedidoCancNewRecord(DataSet: TDataSet);
begin
  DM1.tPedidoCancUsuario.AsString     := DM1.tUsuarioUsuario.AsString;
  DM1.tPedidoCancDtUsuario.AsDateTime := Date;
  DM1.tPedidoCancHrUsuario.AsDateTime := Now;
end;

procedure TDM1.tProdutoGradeNewRecord(DataSet: TDataSet);
begin
  tProdutoGradeInativo.AsBoolean := False;
end;

procedure TDM1.tTabPrecoHistAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tTabPrecoHist.Handle);
end;

procedure TDM1.tTabPrecoHistNewRecord(DataSet: TDataSet);
begin
  tTabPrecoHistUsuario.AsString     := tUsuarioUsuario.AsString;
  tTabPrecoHistDtUsuario.AsDateTime := Date;
  tTabPrecoHistHrUsuario.AsDateTime := Now;
end;

procedure TDM1.tChequeAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCheque.Handle);
end;

procedure TDM1.tCReceberParcBeforePost(DataSet: TDataSet);
begin
  Grava_DtVencimento2;
end;

procedure TDM1.tChequeBeforePost(DataSet: TDataSet);
begin
  if tChequeDtEntrada.AsDateTime < 1 then
    tChequeDtEntrada.Clear;
end;

procedure TDM1.tHistoricoNewRecord(DataSet: TDataSet);
begin
  tHistoricoTipo.AsString := 'A';
end;

procedure TDM1.tRelatorioAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tRelatorio.Handle);
end;

procedure TDM1.tRelatorioNewRecord(DataSet: TDataSet);
begin
  tRelatorioNumUltPagina.AsInteger := 0;
end;

procedure TDM1.tRelatorioBeforePost(DataSet: TDataSet);
begin
  if DM1.tRelatorioNumUltPagina.AsInteger < 0 then
    DM1.tRelatorioNumUltPagina.AsInteger := 0;
end;

procedure TDM1.tPosicaoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPosicao.Handle);
end;

procedure TDM1.tProdutoCombAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tProdutoComb.Handle);
end;

procedure TDM1.tProdutoMatNewRecord(DataSet: TDataSet);
begin
  DM1.tProdutoMatCodCombinacao.AsInteger := 1;
  DM1.tProdutoMatCodSetor.AsInteger      := 0;
  DM1.tProdutoMatCodPosicao.AsInteger    := 0;
end;

procedure TDM1.tPedidoItemBeforePost(DataSet: TDataSet);
begin
  if DM1.tPedidoItemCodCombinacao.AsInteger < 1 then
    DM1.tPedidoItemCodCombinacao.AsInteger := 1;
  DM1.tPedidoItemPrecoFabrica.AsFloat    := StrToFloat(FormatFloat('0.00000',DM1.tPedidoItemPreco.AsFloat));
  DM1.tPedidoItemVlrTotalFabrica.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tPedidoItemVlrTotal.AsFloat));
  if StrToFloat(FormatFloat('0.00',DM1.tPedidoPercFabrica.AsFloat)) > 0 then
  begin
    if StrToFloat(FormatFloat('0.00',DM1.tPedidoItemPreco.AsFloat)) > 0 then
      DM1.tPedidoItemPrecoFabrica.AsFloat    := StrToFloat(FormatFloat('0.00000',DM1.tPedidoItemPreco.AsFloat * DM1.tPedidoPercFabrica.AsFloat / 100));
    DM1.tPedidoItemVlrTotalFabrica.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tPedidoItemPrecoFabrica.AsFloat * DM1.tPedidoItemQtdPares.AsFloat));
  end;
end;

procedure TDM1.tNotaFiscalItensBeforePost(DataSet: TDataSet);
begin
  if DM1.tNotaFiscalItensCodCombinacao.AsInteger < 1 then
    DM1.tNotaFiscalItensCodCombinacao.AsInteger := 1;
end;

procedure TDM1.tDctoEstBeforePost(DataSet: TDataSet);
begin
  if tDctoEstCodFornecedor.IsNull then
    tDctoEstCodFornecedor.AsInteger := 0;
end;

procedure TDM1.tPaisAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tPais.Handle);
end;

procedure TDM1.tCSTIPIAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCSTIPI.Handle);
end;

procedure TDM1.tNotaFiscalRefAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tNotaFiscalRef.Handle);
end;

procedure TDM1.tCReceberNewRecord(DataSet: TDataSet);
begin
  tCReceberNumSeqNota.AsInteger := 0;
  tCReceberSerie.AsString       := '';
end;

procedure TDM1.tExtCartaoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tExtCartao.Handle);
end;

procedure TDM1.tCSTIPINewRecord(DataSet: TDataSet);
begin
  tCSTIPIGeraIPI.AsBoolean := False;
end;

procedure TDM1.tNotaFiscalNDevolvidaNewRecord(DataSet: TDataSet);
begin
  //NFe 2.00
  DM1.tNotaFiscalNDevolvidaNFeChaveAcessoNEntrada.AsString := '';
end;

procedure TDM1.tMovimentosNewRecord(DataSet: TDataSet);
begin
  tMovimentosDtUsuario.AsDateTime         := Date;
  tMovimentosHrUsuario.AsDateTime         := Now;
  tMovimentosUsuario.AsString             := tUsuarioUsuario.AsString;
  tMovimentosCodCentroCusto.AsInteger     := 0;
  tMovimentosCodCentroCustoItem.AsInteger := 0;
end;

procedure TDM1.tCBarraAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tCBarra.Handle);
end;

procedure TDM1.tTipoCobrancaNewRecord(DataSet: TDataSet);
begin
  tTipoCobrancaCartaoCredito.AsBoolean  := False;
  tTipoCobrancaCheque.AsBoolean         := False;
  tTipoCobrancaDinheiro.AsBoolean       := False;
  tTipoCobrancaMostrarNoCupom.AsBoolean := False;
end;

procedure TDM1.tValeParcBeforePost(DataSet: TDataSet);
begin
  DbiSaveChanges(tValeParc.Handle);
end;

procedure TDM1.tValeNewRecord(DataSet: TDataSet);
begin
  tValeGeraFat.AsBoolean      := True;
  tValeGeraCobranca.AsBoolean := False;
end;

procedure TDM1.tPosicaoNewRecord(DataSet: TDataSet);
begin
 tPosicaoImpAmostra.AsBoolean := False;
end;

procedure TDM1.tParametrosPosicaoAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tParametrosPosicao.Handle);
end;

procedure TDM1.tParametrosMovPedAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tParametrosMovPed.Handle);
end;

procedure TDM1.tCPagarParcNewRecord(DataSet: TDataSet);
begin
  tCPagarParcNumSolicitacao.AsInteger := 0;
end;

procedure TDM1.tFilialDepAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tFilialDep.Handle);
end;

procedure TDM1.tEstoqueMatMovBeforePost(DataSet: TDataSet);
begin
  if (Trim(tEstoqueMatMovTamanho.AsString) = '') or (tEstoqueMatMovTamanho.IsNull) then
    tEstoqueMatMovTamanho.AsString := '';
  if tEstoqueMatMovCodCor.AsInteger < 1 then
    tEstoqueMatMovCodCor.AsInteger := 0;
end;

procedure TDM1.tPedidoBeforePost(DataSet: TDataSet);
begin
  DM1.tPedidoVlrMercadoriaFabrica.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tPedidoVlrMercadoria.AsFloat));
  DM1.tPedidoVlrTotalFabrica.AsFloat      := StrToFloat(FormatFloat('0.00000',DM1.tPedidoVlrTotal.AsFloat));
  if StrToFloat(FormatFloat('0.00',DM1.tPedidoPercFabrica.AsFloat)) > 0  then
  begin
    if StrToFloat(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsFloat)) > 0  then
      DM1.tPedidoVlrMercadoriaFabrica.AsFloat    := StrToFloat(FormatFloat('0.00000',DM1.tPedidoVlrMercadoria.AsFloat * DM1.tPedidoPercFabrica.AsFloat / 100));
    if StrToFloat(FormatFloat('0.00',DM1.tPedidoVlrTotal.AsFloat)) > 0  then
      DM1.tPedidoVlrTotalFabrica.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tPedidoVlrTotal.AsFloat * DM1.tPedidoPercFabrica.AsFloat / 100));
  end;
end;

procedure TDM1.tCBarraNewRecord(DataSet: TDataSet);
begin
  tCBarraCodCombinacao.AsInteger := 0;
end;

procedure TDM1.tPlanoContasNewRecord(DataSet: TDataSet);
begin
  tPlanoContasInativo.AsBoolean := False;
end;

procedure TDM1.tClienteBeforePost(DataSet: TDataSet);
begin
  tClienteEndComplemento.AsString := tClienteComplEndereco.AsString;
end;

end.
