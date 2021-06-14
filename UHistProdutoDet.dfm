object fHistProdutoDet: TfHistProdutoDet
  Left = 8
  Top = 59
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalhes do produto'
  ClientHeight = 491
  ClientWidth = 775
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 41
    Align = alTop
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 8
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 78
      Top = 8
      Width = 141
      Height = 14
      DataField = 'Referencia'
      DataSource = fHistProduto.dsqProduto
    end
    object RxLabel2: TRxLabel
      Left = 38
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 78
      Top = 24
      Width = 581
      Height = 14
      DataField = 'Nome'
      DataSource = fHistProduto.dsqProduto
    end
  end
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 41
    Width = 775
    Height = 450
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Geral do produto'
      object Label3: TLabel
        Left = 482
        Top = 0
        Width = 285
        Height = 26
        Caption = 
          'Esta somando esta tabela pela Filial, data inicial e final '#13#10'(ca' +
          'so essas informa'#231#245'es forem preenchidas, na tela anterior)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel3: TRxLabel
        Left = 35
        Top = 313
        Width = 138
        Height = 13
        Caption = 'Vlr.do produto faturado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 11
        Top = 335
        Width = 162
        Height = 13
        Caption = '% sobre o faturamento total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SMDBGrid1: TSMDBGrid
        Left = 2
        Top = 27
        Width = 767
        Height = 270
        DataSource = dsmProdutoTipo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        GridStyle.Style = gsPriceList
        GridStyle.OddColor = cl3DLight
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        GridLineWidth = 0
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DescTipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 108
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissaoIni'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.1'#186' Pedido'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissaoFin'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.'#218'lt.Pedido'
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedido'
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdFaturada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Faturada'
            Width = 111
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPendente'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pendente'
            Width = 102
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdCancelada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cancelada'
            Width = 90
            Visible = True
          end>
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 172
        Top = 306
        Width = 137
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '###,###,###,##0.00'
        ReadOnly = True
        TabOrder = 1
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 172
        Top = 329
        Width = 137
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clInfoBk
        DecimalPlaces = 4
        DisplayFormat = '###,###,###,##0.0000'
        ReadOnly = True
        TabOrder = 2
      end
    end
    object RzTabSheet1: TRzTabSheet
      Caption = 'Clientes do produto'
      object Label1: TLabel
        Left = 400
        Top = 0
        Width = 212
        Height = 13
        Caption = 'Dados dos clientes pelo produto selecionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SMDBGrid3: TSMDBGrid
        Left = 2
        Top = 32
        Width = 767
        Height = 391
        DataSource = dsmCliente
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        GridStyle.Style = gsPriceList
        GridStyle.OddColor = cl3DLight
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do cliente'
            Width = 221
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissaoIni'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. 1'#186' Pedido'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissaoFin'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.'#218'lt. Pedido'
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Width = 59
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente'
            Width = 59
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cancelada'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Faturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercFaturamento'
            Title.Alignment = taCenter
            Title.Caption = '% sobre o faturamento'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtEmissaoNotaIni'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. 1'#186' Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtEmissaoNotaFin'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. '#218'lt. Nota'
            Visible = True
          end>
      end
    end
  end
  object qCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcliente.Nome, Dbpedido.CodCliente, SUM( Dbpedidoitem.Qt' +
        'dPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, ' +
        'SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem' +
        '.QtdParesCanc ) QtdParesCanc, Min(dbPedido.DtEmissao) DtEmissaoI' +
        'ni, Max(dbPedido.DtEmissao) DtEmissaoFin'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      'GROUP BY Dbcliente.Nome, Dbpedido.CodCliente'
      ' '
      ' '
      ' ')
    Left = 481
    Top = 141
    object qClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qClienteCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qClienteQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qClienteQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qClienteQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qClienteQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qClienteDtEmissaoIni: TDateField
      FieldName = 'DtEmissaoIni'
    end
    object qClienteDtEmissaoFin: TDateField
      FieldName = 'DtEmissaoFin'
    end
  end
  object dsqCliente: TDataSource
    DataSet = qCliente
    Left = 489
    Top = 141
  end
  object qTipoProduto: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Tipo, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM' +
        '( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdP' +
        'aresRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdPar' +
        'esCanc, SUM( Dbpedidoitem.VlrTotal ) VlrTotal, MIN( Dbpedido.DtE' +
        'missao ) DtEmissaoIni, MAX( Dbpedido.DtEmissao ) DtEmissaoFin'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      'where dbpedidoitem.codproduto = 1 and filial = 2'
      'GROUP BY Dbpedido.Tipo'
      ' ')
    Left = 457
    Top = 213
    object qTipoProdutoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbPedido.DB".Tipo'
      Size = 1
    end
    object qTipoProdutoQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qTipoProdutoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesFat'
    end
    object qTipoProdutoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qTipoProdutoQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesCanc'
    end
    object qTipoProdutoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbPedidoItem.DB".VlrTotal'
    end
    object qTipoProdutoDtEmissaoIni: TDateField
      FieldName = 'DtEmissaoIni'
      Origin = 'TABELAS."dbPedido.DB".DtEmissao'
    end
    object qTipoProdutoDtEmissaoFin: TDateField
      FieldName = 'DtEmissaoFin'
      Origin = 'TABELAS."dbPedido.DB".DtEmissao'
    end
  end
  object mProdutoTipo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DescTipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DtEmissaoIni'
        DataType = ftDate
      end
      item
        Name = 'DtEmissaoFin'
        DataType = ftDate
      end
      item
        Name = 'QtdPedido'
        DataType = ftFloat
      end
      item
        Name = 'QtdFaturada'
        DataType = ftFloat
      end
      item
        Name = 'QtdPendente'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'DescTipo'
    Params = <>
    StoreDefs = True
    OnNewRecord = mProdutoTipoNewRecord
    Left = 393
    Top = 213
    Data = {
      C10000009619E0BD010000001800000008000000000003000000C10008446573
      635469706F01004900000001000557494454480200020014000C4474456D6973
      73616F496E6904000600000000000C4474456D697373616F46696E0400060000
      0000000951746450656469646F08000400000000000B51746446617475726164
      6108000400000000000B51746450656E64656E746508000400000000000C5174
      6443616E63656C616461080004000000000008566C72546F74616C0800040000
      0000000000}
    object mProdutoTipoDescTipo: TStringField
      FieldName = 'DescTipo'
    end
    object mProdutoTipoDtEmissaoIni: TDateField
      FieldName = 'DtEmissaoIni'
    end
    object mProdutoTipoDtEmissaoFin: TDateField
      FieldName = 'DtEmissaoFin'
    end
    object mProdutoTipoQtdPedido: TFloatField
      FieldName = 'QtdPedido'
    end
    object mProdutoTipoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object mProdutoTipoQtdPendente: TFloatField
      FieldName = 'QtdPendente'
    end
    object mProdutoTipoQtdCancelada: TFloatField
      FieldName = 'QtdCancelada'
    end
    object mProdutoTipoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dsmProdutoTipo: TDataSource
    DataSet = mProdutoTipo
    Left = 409
    Top = 213
  end
  object dsqTipoProduto: TDataSource
    DataSet = qTipoProduto
    Left = 480
    Top = 213
  end
  object qFatCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.' +
        'PercDesc, dbNotaFiscal.CodCli, Min(dbNotaFiscal.DtEmissao) DtEmi' +
        'ssaoIni, Max(dbNotaFiscal.DtEmissao) DtEmissaoFin'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      'WHERE   (Dbnotafiscalitens.CodProduto = :CodProduto)'
      
        '   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )'
      '   AND (dbNotaFiscalItens.GeraDupl = True)'
      'GROUP BY Dbnotafiscal.PercDesc, dbNotaFiscal.CodCli'
      ' ')
    Left = 537
    Top = 221
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qFatClienteVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qFatClientePercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qFatClienteCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qFatClienteDtEmissaoIni: TDateField
      FieldName = 'DtEmissaoIni'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qFatClienteDtEmissaoFin: TDateField
      FieldName = 'DtEmissaoFin'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qFatClientelkNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCliente'
      LookupDataSet = DM1.tCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCli'
      Size = 40
      Lookup = True
    end
  end
  object mCliente: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'VlrFaturamento'
    Params = <>
    OnNewRecord = mClienteNewRecord
    Left = 433
    Top = 277
    Data = {
      270100009619E0BD01000000180000000C00000000000300000027010A436F64
      436C69656E746504000100000000000B4E6F6D65436C69656E74650100490000
      0001000557494454480200020028000C4474456D697373616F496E6904000600
      000000000C4474456D697373616F46696E040006000000000008517464506172
      657308000400000000000B517464506172657346617408000400000000000C51
      746450617265735265737408000400000000000C517464506172657343616E63
      08000400000000000E566C724661747572616D656E746F08000400000000000F
      506572634661747572616D656E746F0800040000000000104474456D69737361
      6F4E6F7461496E690400060000000000104474456D697373616F4E6F74614669
      6E04000600000000000000}
    object mClienteCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteDtEmissaoIni: TDateField
      FieldName = 'DtEmissaoIni'
    end
    object mClienteDtEmissaoFin: TDateField
      FieldName = 'DtEmissaoFin'
    end
    object mClienteQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object mClienteQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object mClienteQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object mClienteQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object mClienteVlrFaturamento: TFloatField
      FieldName = 'VlrFaturamento'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mClientePercFaturamento: TFloatField
      FieldName = 'PercFaturamento'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mClienteDtEmissaoNotaIni: TDateField
      FieldName = 'DtEmissaoNotaIni'
    end
    object mClienteDtEmissaoNotaFin: TDateField
      FieldName = 'DtEmissaoNotaFin'
    end
  end
  object dsmCliente: TDataSource
    DataSet = mCliente
    Left = 449
    Top = 277
  end
end
