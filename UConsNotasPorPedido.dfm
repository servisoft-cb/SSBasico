object fConsNotasPorPedido: TfConsNotasPorPedido
  Left = 5
  Top = 8
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta notas por pedido'
  ClientHeight = 539
  ClientWidth = 781
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 23
    Top = 31
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 2
    Top = 54
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label3: TLabel
    Left = 199
    Top = 54
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label4: TLabel
    Left = 367
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Grupo Cliente:'
  end
  object Label5: TLabel
    Left = 393
    Top = 31
    Width = 41
    Height = 13
    Caption = 'N'#186' Nota:'
  end
  object Label6: TLabel
    Left = 23
    Top = 9
    Width = 23
    Height = 13
    Caption = 'Filial:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 58
    Top = 23
    Width = 297
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object DateEdit1: TDateEdit
    Left = 58
    Top = 46
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit2: TDateEdit
    Left = 255
    Top = 46
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 434
    Top = 0
    Width = 297
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsGrupoCliente
    TabOrder = 4
    OnEnter = RxDBLookupCombo2Enter
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 434
    Top = 23
    Width = 89
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 536
    Top = 40
    Width = 80
    Height = 28
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 58
    Top = 1
    Width = 297
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 82
    Width = 780
    Height = 221
    TabStop = False
    DataSource = dsqNota
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 13
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 275
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotalNota'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Nota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotalItens'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Itens'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotalDupl'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Duplicata'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BaseIcms'
        Title.Alignment = taCenter
        Title.Caption = 'Base Icms'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrIcms'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Icms'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PercTransf'
        Title.Alignment = taCenter
        Title.Caption = '%'#168'Transf.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTransf'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Transf.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCli'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 309
    Width = 781
    Height = 212
    TabStop = False
    Color = clInfoBk
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid2DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemNota'
        Title.Alignment = taCenter
        Title.Caption = 'Item Nota'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkPedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Cliente'
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Faturada'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkReferencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 224
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Item Pedido'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 696
    Top = 40
    Width = 80
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 779
    Height = 8
    Color = clNavy
    TabOrder = 12
  end
  object BitBtn3: TBitBtn
    Left = 616
    Top = 40
    Width = 80
    Height = 28
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 522
    Width = 781
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para mostrar a quantidade por tamanho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object CheckBox1: TCheckBox
    Left = 432
    Top = 48
    Width = 97
    Height = 17
    Caption = 'Imp. Tamanhos'
    TabOrder = 6
  end
  object qNota: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.Filial, Dbnotafiscal.NumNota, Dbnotafiscal.C' +
        'odCli, Dbcliente.Nome, Dbcliente.CodGrupo, Dbnotafiscal.DtEmissa' +
        'o, Dbnotafiscal.VlrTotalNota, Dbnotafiscal.VlrTotalItens, Dbnota' +
        'fiscal.BaseIcms, Dbnotafiscal.VlrIcms, Dbnotafiscal.VlrTotalDupl' +
        ', Dbnotafiscal.PercTransf, Dbnotafiscal.VlrTransf, dbNotaFiscal.' +
        'NumSeq'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      'WHERE  Dbnotafiscal.Filial = 1 '
      'ORDER BY Dbnotafiscal.Filial, Dbnotafiscal.NumNota'
      ' ')
    Left = 560
    Top = 200
    object qNotaFilial: TIntegerField
      DisplayWidth = 6
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNotaFiscal.DB".Filial'
    end
    object qNotaNumSeq: TIntegerField
      FieldName = 'NumSeq'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumSeq'
    end
    object qNotaNumNota: TIntegerField
      DisplayWidth = 12
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumNota'
    end
    object qNotaCodCli: TIntegerField
      DisplayWidth = 12
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qNotaNome: TStringField
      DisplayWidth = 48
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
    object qNotaCodGrupo: TIntegerField
      DisplayWidth = 12
      FieldName = 'CodGrupo'
      Origin = 'TABELAS."dbCliente.DB".CodGrupo'
    end
    object qNotaDtEmissao: TDateField
      DisplayWidth = 12
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qNotaVlrTotalNota: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrTotalNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalNota'
    end
    object qNotaVlrTotalItens: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrTotalItens'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalItens'
    end
    object qNotaBaseIcms: TFloatField
      DisplayWidth = 12
      FieldName = 'BaseIcms'
      Origin = 'TABELAS."dbNotaFiscal.DB".BaseIcms'
    end
    object qNotaVlrIcms: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrIcms'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrIcms'
    end
    object qNotaVlrTotalDupl: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrTotalDupl'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalDupl'
    end
    object qNotaPercTransf: TFloatField
      DisplayWidth = 12
      FieldName = 'PercTransf'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercTransf'
    end
    object qNotaVlrTransf: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrTransf'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTransf'
    end
  end
  object dsqNota: TDataSource
    DataSet = qNota
    Left = 584
    Top = 200
  end
  object tNotaFiscalPed: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq'
    MasterFields = 'Filial;NumSeq'
    MasterSource = dsqNota
    TableName = 'dbNotaFiscalPed.DB'
    Left = 512
    Top = 360
    object tNotaFiscalPedFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalPedNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalPedItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object tNotaFiscalPedPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tNotaFiscalPedItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalPedQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalPedCopia: TBooleanField
      FieldName = 'Copia'
    end
    object tNotaFiscalPedlkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = tNotaFiscalItens
      LookupKeyFields = 'Filial;NumNota;Item'
      LookupResultField = 'Referencia'
      KeyFields = 'Filial;NumNota;ItemNota'
      Lookup = True
    end
    object tNotaFiscalPedlkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = tNotaFiscalItens
      LookupKeyFields = 'Filial;NumNota;Item'
      LookupResultField = 'Descricao'
      KeyFields = 'Filial;NumNota;ItemNota'
      Size = 40
      Lookup = True
    end
    object tNotaFiscalPedlkPedidoCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPedidoCliente'
      LookupDataSet = DM1.tPedido2
      LookupKeyFields = 'Pedido'
      LookupResultField = 'PedidoCliente'
      KeyFields = 'Pedido'
      Size = 40
      Lookup = True
    end
    object tNotaFiscalPedNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object tNotaFiscalPedNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object tNotaFiscalItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbNotaFiscalItens.DB'
    Left = 600
    Top = 360
    object tNotaFiscalItensFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalItensNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tNotaFiscalItensNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalItensCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tNotaFiscalItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tNotaFiscalItensClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Size = 3
    end
    object tNotaFiscalItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tNotaFiscalItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalItensIcms: TFloatField
      FieldName = 'Icms'
    end
    object tNotaFiscalItensIpi: TFloatField
      FieldName = 'Ipi'
    end
    object tNotaFiscalItensSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tNotaFiscalItensVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tNotaFiscalItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tNotaFiscalItensDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tNotaFiscalItensVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object tNotaFiscalItensBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNotaFiscalItensVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNotaFiscalItensVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNotaFiscalItensNatOper: TSmallintField
      FieldName = 'NatOper'
    end
    object tNotaFiscalItensIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNotaFiscalItensNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object tNotaFiscalItensItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object tNotaFiscalItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tNotaFiscalItensComissaoMod: TFloatField
      FieldName = 'ComissaoMod'
    end
    object tNotaFiscalItensCodComissao: TIntegerField
      FieldName = 'CodComissao'
    end
    object tNotaFiscalItensCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalItensNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tNotaFiscalItensGeraDupl: TBooleanField
      FieldName = 'GeraDupl'
    end
    object tNotaFiscalItensMaterial: TBooleanField
      FieldName = 'Material'
    end
    object tNotaFiscalItensEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tNotaFiscalItensNumNotaDevForn: TIntegerField
      FieldName = 'NumNotaDevForn'
    end
    object tNotaFiscalItensCodFornDev: TIntegerField
      FieldName = 'CodFornDev'
    end
    object tNotaFiscalItensItemDev: TIntegerField
      FieldName = 'ItemDev'
    end
    object tNotaFiscalItensNumOC: TStringField
      FieldName = 'NumOC'
    end
    object tNotaFiscalItensNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tNotaFiscalItensCodBarraRotulo: TStringField
      FieldName = 'CodBarraRotulo'
      Size = 50
    end
    object tNotaFiscalItensVale: TBooleanField
      FieldName = 'Vale'
    end
    object tNotaFiscalItensPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tNotaFiscalItensTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tNotaFiscalItensPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tNotaFiscalItensPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
    object tNotaFiscalItensLargura: TStringField
      FieldName = 'Largura'
      Size = 8
    end
    object tNotaFiscalItensTipoItem: TStringField
      FieldName = 'TipoItem'
      Size = 1
    end
    object tNotaFiscalItensQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object tNotaFiscalItensQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
    end
    object tNotaFiscalItensSomaTransfICM: TBooleanField
      FieldName = 'SomaTransfICM'
    end
    object tNotaFiscalItensFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object tNotaFiscalItensNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
  end
  object dsNotaFiscalPed: TDataSource
    DataSet = tNotaFiscalPed
    Left = 528
    Top = 360
  end
  object tNotaFiscalPedGrade: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq;ItemNota;Pedido;ItemPedido'
    MasterFields = 'Filial;NumSeq;ItemNota;Pedido;ItemPedido'
    MasterSource = dsNotaFiscalPed
    TableName = 'DBNOTAFISCALPEDGRADE.DB'
    Left = 528
    Top = 400
    object tNotaFiscalPedGradeFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalPedGradeNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalPedGradeItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object tNotaFiscalPedGradePedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tNotaFiscalPedGradeItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalPedGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalPedGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tNotaFiscalPedGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalPedGradelkTamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTamanho'
      LookupDataSet = DM1.tGradeItemlk
      LookupKeyFields = 'CodGrade;Posicao'
      LookupResultField = 'Tamanho'
      KeyFields = 'CodGrade;Posicao'
      Size = 10
      Lookup = True
    end
    object tNotaFiscalPedGradeNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object tNotaFiscalPedGradeNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object dsNotaFiscalPedGrade: TDataSource
    DataSet = tNotaFiscalPedGrade
    Left = 552
    Top = 400
  end
end
