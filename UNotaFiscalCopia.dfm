object fNotaFiscalCopia: TfNotaFiscalCopia
  Left = 364
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copia da nota'
  ClientHeight = 171
  ClientWidth = 345
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 37
    Top = 87
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 2
    Top = 111
    Width = 70
    Height = 13
    Caption = 'Nat.Opera'#231#227'o:'
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 155
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object CheckBox1: TCheckBox
    Left = 56
    Top = 48
    Width = 97
    Height = 17
    Caption = 'Triangular'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 75
    Top = 80
    Width = 268
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 2
    OnEnter = RxDBLookupCombo1Enter
    OnExit = RxDBLookupCombo1Exit
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 75
    Top = 104
    Width = 268
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'CodNatOper;DescInterna'
    LookupSource = DM1.dsNatOperacao
    TabOrder = 3
    OnEnter = RxDBLookupCombo2Enter
    OnExit = RxDBLookupCombo2Exit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    TabOrder = 0
    OnExit = Panel1Exit
    object Label12: TLabel
      Left = 143
      Top = 5
      Width = 38
      Height = 26
      Caption = 'N'#186' Nota'#13#10'Original:'
    end
    object Label1: TLabel
      Left = 26
      Top = 15
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 185
      Top = 10
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 56
      Top = 9
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = '1'
    end
  end
  object tNotaFiscalPedCop: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq;ItemNota'
    MasterFields = 'Filial;NumSeq;Item'
    MasterSource = dsNotaFiscalItensCop
    TableName = 'dbNotaFiscalPed.DB'
    Left = 176
    Top = 16
    object tNotaFiscalPedCopFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalPedCopNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalPedCopItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object tNotaFiscalPedCopPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tNotaFiscalPedCopItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalPedCopNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object tNotaFiscalPedCopQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalPedCopCopia: TBooleanField
      FieldName = 'Copia'
    end
    object tNotaFiscalPedCopNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object dsNotaFiscalPedCop: TDataSource
    DataSet = tNotaFiscalPedCop
    Left = 196
    Top = 16
  end
  object tNotaFiscalPedGradeCop: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq;ItemNota;Pedido;ItemPedido;NumTalao'
    MasterFields = 'Filial;NumSeq;ItemNota;Pedido;ItemPedido;NumTalao'
    MasterSource = dsNotaFiscalPedCop
    TableName = 'dbNotaFiscalPedGrade.DB'
    Left = 16
    Top = 48
    object tNotaFiscalPedGradeCopFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalPedGradeCopNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalPedGradeCopItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object tNotaFiscalPedGradeCopPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tNotaFiscalPedGradeCopItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalPedGradeCopCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalPedGradeCopPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tNotaFiscalPedGradeCopQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalPedGradeCopNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalPedGradeCopNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
  end
  object tNotaFiscalItensCop: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq'
    MasterFields = 'Filial;NumSeq'
    MasterSource = dsNotaFiscalCop
    TableName = 'dbNotaFiscalItens.DB'
    Left = 16
    Top = 8
    object tNotaFiscalItensCopFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalItensCopNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalItensCopItem: TSmallintField
      FieldName = 'Item'
    end
    object tNotaFiscalItensCopCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tNotaFiscalItensCopCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tNotaFiscalItensCopClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Size = 3
    end
    object tNotaFiscalItensCopUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tNotaFiscalItensCopQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalItensCopIcms: TFloatField
      FieldName = 'Icms'
    end
    object tNotaFiscalItensCopIpi: TFloatField
      FieldName = 'Ipi'
    end
    object tNotaFiscalItensCopSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tNotaFiscalItensCopVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tNotaFiscalItensCopVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tNotaFiscalItensCopDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tNotaFiscalItensCopVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object tNotaFiscalItensCopBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNotaFiscalItensCopVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNotaFiscalItensCopVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNotaFiscalItensCopNatOper: TSmallintField
      FieldName = 'NatOper'
    end
    object tNotaFiscalItensCopIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNotaFiscalItensCopNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object tNotaFiscalItensCopItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalItensCopDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object tNotaFiscalItensCopReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tNotaFiscalItensCopComissaoMod: TFloatField
      FieldName = 'ComissaoMod'
    end
    object tNotaFiscalItensCopCodComissao: TIntegerField
      FieldName = 'CodComissao'
    end
    object tNotaFiscalItensCopCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalItensCopNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tNotaFiscalItensCopGeraDupl: TBooleanField
      FieldName = 'GeraDupl'
    end
    object tNotaFiscalItensCopMaterial: TBooleanField
      FieldName = 'Material'
    end
    object tNotaFiscalItensCopEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tNotaFiscalItensCopNumNotaDevForn: TIntegerField
      FieldName = 'NumNotaDevForn'
    end
    object tNotaFiscalItensCopCodFornDev: TIntegerField
      FieldName = 'CodFornDev'
    end
    object tNotaFiscalItensCopItemDev: TIntegerField
      FieldName = 'ItemDev'
    end
    object tNotaFiscalItensCopNumOC: TStringField
      FieldName = 'NumOC'
    end
    object tNotaFiscalItensCopNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tNotaFiscalItensCopCodBarraRotulo: TStringField
      FieldName = 'CodBarraRotulo'
      Size = 50
    end
    object tNotaFiscalItensCopVale: TBooleanField
      FieldName = 'Vale'
    end
    object tNotaFiscalItensCopPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tNotaFiscalItensCopTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tNotaFiscalItensCopPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tNotaFiscalItensCopNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalItensCopNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object tNotaFiscalItensCopPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
    object tNotaFiscalItensCopLargura: TStringField
      FieldName = 'Largura'
      Size = 8
    end
    object tNotaFiscalItensCopTipoItem: TStringField
      FieldName = 'TipoItem'
      Size = 1
    end
    object tNotaFiscalItensCopQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object tNotaFiscalItensCopQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
    end
    object tNotaFiscalItensCopSomaTransfICM: TBooleanField
      FieldName = 'SomaTransfICM'
    end
    object tNotaFiscalItensCopFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object tNotaFiscalItensCopCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object tNotaFiscalItensCopPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object tNotaFiscalItensCopCodCSTIPI: TStringField
      FieldName = 'CodCSTIPI'
      Size = 2
    end
    object tNotaFiscalItensCopObsComplementar: TStringField
      FieldName = 'ObsComplementar'
      Size = 250
    end
    object tNotaFiscalItensCopAliqPis: TFloatField
      FieldName = 'AliqPis'
    end
    object tNotaFiscalItensCopAliqCofins: TFloatField
      FieldName = 'AliqCofins'
    end
    object tNotaFiscalItensCopVlrPis: TFloatField
      FieldName = 'VlrPis'
    end
    object tNotaFiscalItensCopVlrCofins: TFloatField
      FieldName = 'VlrCofins'
    end
    object tNotaFiscalItensCopBaseIcmsSimples: TFloatField
      FieldName = 'BaseIcmsSimples'
    end
    object tNotaFiscalItensCopVlrIcmsSimples: TFloatField
      FieldName = 'VlrIcmsSimples'
    end
    object tNotaFiscalItensCopSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object tNotaFiscalItensCopCodPis: TStringField
      FieldName = 'CodPis'
      Size = 2
    end
    object tNotaFiscalItensCopCodCofins: TStringField
      FieldName = 'CodCofins'
      Size = 2
    end
    object tNotaFiscalItensCopTipoPis: TStringField
      FieldName = 'TipoPis'
      Size = 2
    end
    object tNotaFiscalItensCopTipoCofins: TStringField
      FieldName = 'TipoCofins'
      Size = 2
    end
    object tNotaFiscalItensCopOrigemProd: TStringField
      FieldName = 'OrigemProd'
      Size = 1
    end
    object tNotaFiscalItensCopSomaVlrTotalProd: TBooleanField
      FieldName = 'SomaVlrTotalProd'
    end
  end
  object dsNotaFiscalItensCop: TDataSource
    DataSet = tNotaFiscalItensCop
    Left = 28
    Top = 8
  end
  object tNotaFiscalCop: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq'
    TableName = 'dbNotaFiscal.DB'
    Left = 176
    Top = 47
    object tNotaFiscalCopFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalCopNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalCopNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalCopDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object tNotaFiscalCopCodNatOper: TSmallintField
      FieldName = 'CodNatOper'
    end
    object tNotaFiscalCopCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object tNotaFiscalCopCondPgto: TStringField
      FieldName = 'CondPgto'
      Size = 1
    end
    object tNotaFiscalCopCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tNotaFiscalCopBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNotaFiscalCopVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNotaFiscalCopVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNotaFiscalCopVlrTotalNota: TFloatField
      FieldName = 'VlrTotalNota'
    end
    object tNotaFiscalCopVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object tNotaFiscalCopPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object tNotaFiscalCopVlrTotalDesc: TFloatField
      FieldName = 'VlrTotalDesc'
    end
    object tNotaFiscalCopVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object tNotaFiscalCopVlrSeguro: TFloatField
      FieldName = 'VlrSeguro'
    end
    object tNotaFiscalCopOutrasDesp: TFloatField
      FieldName = 'OutrasDesp'
    end
    object tNotaFiscalCopQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object tNotaFiscalCopEspecie: TStringField
      FieldName = 'Especie'
      Size = 30
    end
    object tNotaFiscalCopMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object tNotaFiscalCopNumero: TStringField
      FieldName = 'Numero'
      Size = 30
    end
    object tNotaFiscalCopPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tNotaFiscalCopPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tNotaFiscalCopPlaca: TStringField
      FieldName = 'Placa'
      Size = 8
    end
    object tNotaFiscalCopUFPlaca: TStringField
      FieldName = 'UFPlaca'
      Size = 2
    end
    object tNotaFiscalCopEmitDest: TStringField
      FieldName = 'EmitDest'
      Size = 1
    end
    object tNotaFiscalCopCodTransp: TIntegerField
      FieldName = 'CodTransp'
    end
    object tNotaFiscalCopObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tNotaFiscalCopSaidaEntrada: TStringField
      FieldName = 'SaidaEntrada'
      Size = 1
    end
    object tNotaFiscalCopCancelada: TBooleanField
      FieldName = 'Cancelada'
    end
    object tNotaFiscalCopDtSaidaEnt: TDateField
      FieldName = 'DtSaidaEnt'
    end
    object tNotaFiscalCopHoraSaida: TTimeField
      FieldName = 'HoraSaida'
    end
    object tNotaFiscalCopTipoCobr: TStringField
      FieldName = 'TipoCobr'
      Size = 1
    end
    object tNotaFiscalCopBcoCobr: TIntegerField
      FieldName = 'BcoCobr'
    end
    object tNotaFiscalCopImpressa: TBooleanField
      FieldName = 'Impressa'
    end
    object tNotaFiscalCopLocalEntrega: TBooleanField
      FieldName = 'LocalEntrega'
    end
    object tNotaFiscalCopInss: TBooleanField
      FieldName = 'Inss'
    end
    object tNotaFiscalCopIrf: TBooleanField
      FieldName = 'Irf'
    end
    object tNotaFiscalCopVlrInss: TFloatField
      FieldName = 'VlrInss'
    end
    object tNotaFiscalCopVlrIrf: TFloatField
      FieldName = 'VlrIrf'
    end
    object tNotaFiscalCopCustoPerc: TFloatField
      FieldName = 'CustoPerc'
    end
    object tNotaFiscalCopCustoFinanc: TFloatField
      FieldName = 'CustoFinanc'
    end
    object tNotaFiscalCopPrazoPgto: TIntegerField
      FieldName = 'PrazoPgto'
    end
    object tNotaFiscalCopEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object tNotaFiscalCopPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tNotaFiscalCopDtEntr: TDateField
      FieldName = 'DtEntr'
    end
    object tNotaFiscalCopIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNotaFiscalCopPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object tNotaFiscalCopSituacao: TIntegerField
      FieldName = 'Situacao'
    end
    object tNotaFiscalCopNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
    end
    object tNotaFiscalCopTipoNota: TStringField
      FieldName = 'TipoNota'
      Size = 1
    end
    object tNotaFiscalCopDescricaoDesc: TStringField
      FieldName = 'DescricaoDesc'
      Size = 70
    end
    object tNotaFiscalCopExtComDif: TIntegerField
      FieldName = 'ExtComDif'
    end
    object tNotaFiscalCopExportacao: TBooleanField
      FieldName = 'Exportacao'
    end
    object tNotaFiscalCopPercIssqn: TFloatField
      FieldName = 'PercIssqn'
    end
    object tNotaFiscalCopVlrMObra: TFloatField
      FieldName = 'VlrMObra'
    end
    object tNotaFiscalCopVlrIssqn: TFloatField
      FieldName = 'VlrIssqn'
    end
    object tNotaFiscalCopPercTransf: TFloatField
      FieldName = 'PercTransf'
    end
    object tNotaFiscalCopVlrTotalDupl: TFloatField
      FieldName = 'VlrTotalDupl'
    end
    object tNotaFiscalCopVlrTransf: TFloatField
      FieldName = 'VlrTransf'
    end
    object tNotaFiscalCopUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tNotaFiscalCopDtCad: TDateField
      FieldName = 'DtCad'
    end
    object tNotaFiscalCopHrCad: TTimeField
      FieldName = 'HrCad'
    end
    object tNotaFiscalCopMotivoCanc: TStringField
      FieldName = 'MotivoCanc'
      Size = 100
    end
    object tNotaFiscalCopCodClienteTriang: TIntegerField
      FieldName = 'CodClienteTriang'
    end
    object tNotaFiscalCopBaseTransfICM: TFloatField
      FieldName = 'BaseTransfICM'
    end
    object tNotaFiscalCopSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object tNotaFiscalCopBaseIcmsSimples: TFloatField
      FieldName = 'BaseIcmsSimples'
    end
    object tNotaFiscalCopVlrIcmsSimples: TFloatField
      FieldName = 'VlrIcmsSimples'
    end
    object tNotaFiscalCopPercIcmsSimples: TFloatField
      FieldName = 'PercIcmsSimples'
    end
    object tNotaFiscalCopICMSVlrSubst: TFloatField
      FieldName = 'ICMSVlrSubst'
    end
    object tNotaFiscalCopICMSBaseSubst: TFloatField
      FieldName = 'ICMSBaseSubst'
    end
    object tNotaFiscalCopQtdTotalPares: TFloatField
      FieldName = 'QtdTotalPares'
    end
    object tNotaFiscalCopNFeRecibo: TStringField
      FieldName = 'NFeRecibo'
    end
    object tNotaFiscalCopNFeProtocolo: TStringField
      FieldName = 'NFeProtocolo'
      Size = 45
    end
    object tNotaFiscalCopNFeChaveAcesso: TStringField
      FieldName = 'NFeChaveAcesso'
      Size = 44
    end
    object tNotaFiscalCopNFeProtocoloCancelada: TStringField
      FieldName = 'NFeProtocoloCancelada'
      Size = 45
    end
    object tNotaFiscalCopTipoEnvioNF: TStringField
      FieldName = 'TipoEnvioNF'
      Size = 6
    end
    object tNotaFiscalCopNFeCodBarraCont: TStringField
      FieldName = 'NFeCodBarraCont'
      Size = 44
    end
    object tNotaFiscalCopVlrPis: TFloatField
      FieldName = 'VlrPis'
    end
    object tNotaFiscalCopVlrCofins: TFloatField
      FieldName = 'VlrCofins'
    end
    object tNotaFiscalCopTipoNotaNFeRef: TStringField
      FieldName = 'TipoNotaNFeRef'
      Size = 1
    end
    object tNotaFiscalCopVlrTaxaCiscomex: TFloatField
      FieldName = 'VlrTaxaCiscomex'
    end
    object tNotaFiscalCopVlrOutros: TFloatField
      FieldName = 'VlrOutros'
    end
    object tNotaFiscalCopVlrImpImportacao: TFloatField
      FieldName = 'VlrImpImportacao'
    end
    object tNotaFiscalCopNumNotaCopiada: TIntegerField
      FieldName = 'NumNotaCopiada'
    end
    object tNotaFiscalCopSerieCopiada: TStringField
      FieldName = 'SerieCopiada'
      Size = 3
    end
    object tNotaFiscalCopCodVenda: TSmallintField
      FieldName = 'CodVenda'
    end
    object tNotaFiscalCopDuplImp: TBooleanField
      FieldName = 'DuplImp'
    end
    object tNotaFiscalCopDescDupl: TFloatField
      FieldName = 'DescDupl'
    end
    object tNotaFiscalCopDescTransf: TMemoField
      FieldName = 'DescTransf'
      BlobType = ftMemo
      Size = 1
    end
    object tNotaFiscalCopObsAux: TMemoField
      FieldName = 'ObsAux'
      BlobType = ftMemo
      Size = 1
    end
    object tNotaFiscalCopCodVendedor2: TIntegerField
      FieldName = 'CodVendedor2'
    end
    object tNotaFiscalCopPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
    object tNotaFiscalCopNroLancExtComissao2: TIntegerField
      FieldName = 'NroLancExtComissao2'
    end
    object tNotaFiscalCopUsuarioAlt: TStringField
      FieldName = 'UsuarioAlt'
      Size = 15
    end
    object tNotaFiscalCopDtAlt: TDateField
      FieldName = 'DtAlt'
    end
    object tNotaFiscalCopHrAlt: TTimeField
      FieldName = 'HrAlt'
    end
    object tNotaFiscalCopVersaoNFe: TStringField
      FieldName = 'VersaoNFe'
      Size = 10
    end
    object tNotaFiscalCopFinalidade: TStringField
      FieldName = 'Finalidade'
      Size = 1
    end
    object tNotaFiscalCopDtContingencia: TDateField
      FieldName = 'DtContingencia'
    end
    object tNotaFiscalCopHrContingencia: TTimeField
      FieldName = 'HrContingencia'
    end
    object tNotaFiscalCopMotivoContingencia: TStringField
      FieldName = 'MotivoContingencia'
      Size = 250
    end
    object tNotaFiscalCopIdentVersaoEmissao: TStringField
      FieldName = 'IdentVersaoEmissao'
    end
    object tNotaFiscalCopCodRegimeTrib: TIntegerField
      FieldName = 'CodRegimeTrib'
    end
    object tNotaFiscalCopRNTC: TStringField
      FieldName = 'RNTC'
    end
    object tNotaFiscalCopIdentifVagaoBalsa: TStringField
      FieldName = 'IdentifVagaoBalsa'
    end
    object tNotaFiscalCopTipoIdentifVagaoBalsa: TStringField
      FieldName = 'TipoIdentifVagaoBalsa'
      Size = 1
    end
    object tNotaFiscalCopUFEmbExp: TStringField
      FieldName = 'UFEmbExp'
      Size = 2
    end
    object tNotaFiscalCopLocalEmbExp: TStringField
      FieldName = 'LocalEmbExp'
      Size = 60
    end
    object tNotaFiscalCopBaseIcmsOutros: TFloatField
      FieldName = 'BaseIcmsOutros'
    end
    object tNotaFiscalCopVlrIcmsOutros: TFloatField
      FieldName = 'VlrIcmsOutros'
    end
    object tNotaFiscalCopVlrDuplicataOutros: TFloatField
      FieldName = 'VlrDuplicataOutros'
    end
    object tNotaFiscalCopPisCofinsSomarOutrasDesp: TBooleanField
      FieldName = 'PisCofinsSomarOutrasDesp'
    end
  end
  object dsNotaFiscalCop: TDataSource
    DataSet = tNotaFiscalCop
    Left = 188
    Top = 47
  end
  object tNotaFiscalGradeCop: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq;Item'
    MasterFields = 'Filial;NumSeq;Item'
    MasterSource = dsNotaFiscalItensCop
    TableName = 'DBNotaFiscalGrade.DB'
    Left = 99
    Top = 1
    object tNotaFiscalGradeCopFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalGradeCopNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalGradeCopItem: TIntegerField
      FieldName = 'Item'
    end
    object tNotaFiscalGradeCopCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalGradeCopPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tNotaFiscalGradeCopQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalGradeCopVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tNotaFiscalGradeCopVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tNotaFiscalGradeCopNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
  end
  object qNotaAux: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select max(numnota) numnota'
      'from dbnotafiscal.db'
      'where Filial = :Filial'
      '   and Serie = :Serie')
    Left = 272
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptUnknown
      end>
    object qNotaAuxnumnota: TIntegerField
      FieldName = 'numnota'
    end
  end
end
