object fConsClientesRef: TfConsClientesRef
  Left = 5
  Top = 21
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Clientes com produtos pendentes'
  ClientHeight = 520
  ClientWidth = 784
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
    Left = 551
    Top = 10
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 554
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 0
    Width = 543
    Height = 182
    Caption = ' Clientes '
    TabOrder = 0
    object SMDBGrid1: TSMDBGrid
      Left = 5
      Top = 13
      Width = 532
      Height = 165
      DataSource = dsmCliente
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
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
      ColCount = 3
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Width = 421
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 1
    Top = 184
    Width = 782
    Height = 333
    Caption = ' Produtos '
    TabOrder = 1
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 16
      Width = 771
      Height = 311
      DataSource = dsmProduto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
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
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodProduto'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Produto'
          Width = 263
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso'
          Title.Alignment = taCenter
          Title.Caption = 'Peso Geral'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PrecoVenda'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Venda'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PrecoMaoObra'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o M'#227'o de Obra'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PrecoAmostra'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Amostra'
          Width = 69
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 550
    Top = 65
    Width = 101
    Height = 31
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 550
    Top = 129
    Width = 101
    Height = 31
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 550
    Top = 97
    Width = 101
    Height = 31
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object ProgressBar1: TProgressBar
    Left = 548
    Top = 164
    Width = 228
    Height = 16
    TabOrder = 5
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 587
    Top = 2
    Width = 194
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 6
    OnEnter = RxDBLookupCombo1Enter
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 587
    Top = 24
    Width = 194
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsGrupoCliente
    TabOrder = 7
    OnEnter = RxDBLookupCombo2Enter
  end
  object mProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PrecoVenda'
        DataType = ftFloat
      end
      item
        Name = 'PrecoMaoObra'
        DataType = ftFloat
      end
      item
        Name = 'PrecoAmostra'
        DataType = ftFloat
      end
      item
        Name = 'Peso'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodCliente;Referencia'
    MasterFields = 'Codigo'
    MasterSource = dsmCliente
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    OnNewRecord = mProdutosNewRecord
    Left = 265
    Top = 256
    Data = {
      DF0000009619E0BD010000001800000008000000000003000000DF000A436F64
      436C69656E746504000100000000000A436F6450726F6475746F040001000000
      00000A5265666572656E63696101004900000001000557494454480200020014
      000B4E6F6D6550726F6475746F01004900000001000557494454480200020028
      000A507265636F56656E646108000400000000000C507265636F4D616F4F6272
      6108000400000000000C507265636F416D6F7374726108000400000000000450
      65736F080004000000000001000D44454641554C545F4F524445520200820000
      000000}
    object mProdutosCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mProdutosCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutosNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutosPrecoVenda: TFloatField
      FieldName = 'PrecoVenda'
    end
    object mProdutosPrecoMaoObra: TFloatField
      FieldName = 'PrecoMaoObra'
    end
    object mProdutosPrecoAmostra: TFloatField
      FieldName = 'PrecoAmostra'
    end
    object mProdutosPeso: TFloatField
      FieldName = 'Peso'
    end
  end
  object tTabPreco: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbTabPreco.DB'
    Left = 377
    Top = 264
    object tTabPrecoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tTabPrecoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tTabPrecoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tTabPrecoPreco: TFloatField
      FieldName = 'Preco'
    end
    object tTabPrecoDtPreco: TDateField
      FieldName = 'DtPreco'
    end
    object tTabPrecoPrecoMObra: TFloatField
      FieldName = 'PrecoMObra'
    end
    object tTabPrecolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
  end
  object mCliente: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodCondPgto'
        DataType = ftInteger
      end
      item
        Name = 'NomeCondPgto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nome'
    Params = <>
    StoreDefs = True
    Left = 290
    Top = 112
    Data = {
      900000009619E0BD010000001800000005000000000003000000900006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      020028000B436F64436F6E645067746F04000100000000000C4E6F6D65436F6E
      645067746F010049000000010005574944544802000200280004434E504A0100
      4900000001000557494454480200020012000000}
    object mClienteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mClienteCodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
    object mClienteNomeCondPgto: TStringField
      FieldName = 'NomeCondPgto'
      Size = 40
    end
    object mClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
  end
  object dsmCliente: TDataSource
    DataSet = mCliente
    Left = 306
    Top = 112
  end
  object tCor: TTable
    DatabaseName = 'Tabelas'
    TableName = 'Dbcor.DB'
    Left = 409
    Top = 264
    object tCorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCorNome: TStringField
      FieldName = 'Nome'
      Size = 25
    end
  end
  object dsmProduto: TDataSource
    DataSet = mProdutos
    Left = 281
    Top = 256
  end
  object qNotaEntrada: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbnentrada.NumNEntr, Dbnentrada.DtEmi' +
        'ssaoNEntr, Dbnentrada.VlrTotalNEntr, Dbnentrada.DtEntrada, Dbnen' +
        'tradaitens.CodMaterial, Dbnentradaitens.Qtd, Dbnentradaitens.Vlr' +
        'Unit, Dbnentradaitens.VlrTotalItens, Dbnentradaitens.CodCor, Dbn' +
        'entradaitens.Unidade, Dbnentradaitens.QtdRestante, Dbnentradaite' +
        'ns.QtdDevolvida, Dbnentradaitens.Item, Dbnentradaitens.SitTrib, ' +
        'dbNEntrada.Filial'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      
        'WHERE   ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (Dbnentradaitens.QtdRestante > 0)'
      '   AND  (Dbnentradaitens.Devolucao = False)'
      'ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 608
    Top = 120
    object qNotaEntradaCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."DBNENTRADA.DB".CodForn'
    end
    object qNotaEntradaNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
      Origin = 'TABELAS."DBNENTRADA.DB".NumNEntr'
    end
    object qNotaEntradaDtEmissaoNEntr: TDateField
      FieldName = 'DtEmissaoNEntr'
      Origin = 'TABELAS."DBNENTRADA.DB".DtEmissaoNEntr'
    end
    object qNotaEntradaVlrTotalNEntr: TFloatField
      FieldName = 'VlrTotalNEntr'
      Origin = 'TABELAS."DBNENTRADA.DB".VlrTotalNEntr'
    end
    object qNotaEntradaDtEntrada: TDateField
      FieldName = 'DtEntrada'
      Origin = 'TABELAS."DBNENTRADA.DB".DtEntrada'
    end
    object qNotaEntradaCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbNEntradaItens.DB".CodMaterial'
    end
    object qNotaEntradaQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNEntradaItens.DB".Qtd'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      Origin = 'TABELAS."dbNEntradaItens.DB".VlrUnit'
    end
    object qNotaEntradaVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
      Origin = 'TABELAS."dbNEntradaItens.DB".VlrTotalItens'
    end
    object qNotaEntradaCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNEntradaItens.DB".CodCor'
    end
    object qNotaEntradaUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbNEntradaItens.DB".Unidade'
      Size = 3
    end
    object qNotaEntradaQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbNEntradaItens.DB".QtdRestante'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
      Origin = 'TABELAS."dbNEntradaItens.DB".QtdDevolvida'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaItem: TSmallintField
      FieldName = 'Item'
      Origin = 'TABELAS."dbNEntradaItens.DB".Item'
    end
    object qNotaEntradaSitTrib: TSmallintField
      FieldName = 'SitTrib'
      Origin = 'TABELAS."dbNEntradaItens.DB".SitTrib'
    end
    object qNotaEntradaFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."DBNENTRADA.DB".Filial'
    end
    object qNotaEntradalkNomeMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeMaterial'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodMaterial'
      Size = 40
      Lookup = True
    end
    object qNotaEntradalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
  end
  object dsqNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 624
    Top = 120
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT DISTINCT Dbpedido.CodCliente, Dbpedidoitem.CodProduto'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      'WHERE  Dbpedidoitem.QtdParesRest > 0 '
      'ORDER BY Dbpedido.CodCliente, Dbpedidoitem.CodProduto')
    Left = 608
    Top = 296
    object qPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
  end
end
