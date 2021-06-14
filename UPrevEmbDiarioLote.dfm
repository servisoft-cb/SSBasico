object fPrevEmbDiarioLote: TfPrevEmbDiarioLote
  Left = 141
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Embarque Di'#225'rio (Tal'#245'es)'
  ClientHeight = 493
  ClientWidth = 780
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
    Width = 780
    Height = 493
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 778
      Height = 80
      Align = alTop
      TabOrder = 0
      DesignSize = (
        778
        80)
      object RxSpeedButton1: TRxSpeedButton
        Left = 332
        Top = 44
        Width = 100
        Height = 32
        Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
        DropDownMenu = PopupMenu1
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          0E030000424D0E030000000000003600000028000000110000000E0000000100
          180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBF0000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
          BF00BFBFBF000000000000000000000000000000000000000000000000000000
          000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
          000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
          BF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
          BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
          00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
          000000000000000000000000000000FFFFFF000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
          BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
          0000000000000000000000BFBFBFBFBFBF00}
        Layout = blGlyphLeft
        ParentFont = False
      end
      object Label2: TLabel
        Left = 397
        Top = 25
        Width = 51
        Height = 13
        Caption = 'Data Final:'
      end
      object Label1: TLabel
        Left = 232
        Top = 25
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Shape1: TShape
        Left = 692
        Top = 56
        Width = 27
        Height = 16
        Anchors = [akTop, akRight]
        Brush.Color = clRed
      end
      object Label3: TLabel
        Left = 723
        Top = 59
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Em atraso'
      end
      object Label4: TLabel
        Left = 560
        Top = 24
        Width = 59
        Height = 13
        Caption = 'Agrupar Por:'
      end
      object Label5: TLabel
        Left = 550
        Top = 64
        Width = 35
        Height = 13
        Caption = 'Op'#231#227'o:'
      end
      object Label11: TLabel
        Left = 12
        Top = 25
        Width = 23
        Height = 13
        Caption = 'Filial:'
      end
      object BitBtn2: TBitBtn
        Left = 432
        Top = 44
        Width = 100
        Height = 32
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BitBtn2Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          038383838383830E603800000000380E660033333330830E660333333330000E
          660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
          660300000E60330E660333330600330E660333330030330E6603333333303330
          E6033333333033330E0333333330000000033333333333333333}
      end
      object BitBtn3: TBitBtn
        Left = 232
        Top = 44
        Width = 100
        Height = 32
        Caption = 'Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn3Click
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000D000000000000DD00D000000D0FF
          FFFFFFFF0D000D000000D0FFFFFFF0000800DD000000D0FFFFFF0877808DDD00
          0000D0FFFFF0877E880DDD000000D0FFFFF07777870DDD000000D0FFFFF07E77
          870DDD000000D0FFFFF08EE7880DDD000000D0FFFFFF087780DDDD000000D0FF
          FFFFF0000DDDDD000000D0FFFFFFFFFF0DDDDD000000D0FFFFFFF0000DDDDD00
          0000D0FFFFFFF070DDDDDD000000D0FFFFFFF00DDDDDDD000000DD00000000DD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      end
      object ProgressBar1: TProgressBar
        Left = 8
        Top = 55
        Width = 217
        Height = 17
        TabOrder = 7
      end
      object DateEdit2: TDateEdit
        Left = 455
        Top = 17
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object DateEdit1: TDateEdit
        Left = 295
        Top = 17
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 624
        Top = 16
        Width = 89
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'Cliente'
        Items.Strings = (
          'Cliente'
          'Refer'#234'ncia')
      end
      object ComboBox2: TComboBox
        Left = 592
        Top = 56
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Pendente'
        Items.Strings = (
          'Pendente'
          'Faturadas'
          'Ambas')
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 40
        Top = 17
        Width = 177
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'NomeInterno'
        LookupSource = DM1.dsFilial
        TabOrder = 0
      end
    end
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 81
      Width = 778
      Height = 361
      Align = alClient
      DataSource = dsmEmbarque
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
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
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 256
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDia'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Dia'
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdFaturado'
          Title.Alignment = taCenter
          Title.Caption = 'Embarcado'
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdRest'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Desc. Material'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodProduto'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 442
      Width = 778
      Height = 50
      Align = alBottom
      Color = clSilver
      TabOrder = 2
      object Label6: TLabel
        Left = 408
        Top = 11
        Width = 62
        Height = 13
        Caption = 'Qtd. Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 391
        Top = 34
        Width = 79
        Height = 13
        Caption = 'Qtd.Faturada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 586
        Top = 34
        Width = 83
        Height = 13
        Caption = 'Qtd.Pendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 44
        Top = 34
        Width = 146
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.Atrasada no Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 17
        Top = 11
        Width = 173
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.Atrasada at'#233' 31/12/2008:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 471
        Top = 3
        Width = 105
        Height = 21
        AutoSize = False
        Color = clAqua
        DisplayFormat = '###,###,##0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 471
        Top = 26
        Width = 105
        Height = 21
        AutoSize = False
        Color = clAqua
        DisplayFormat = '###,###,##0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 672
        Top = 26
        Width = 105
        Height = 21
        AutoSize = False
        Color = clAqua
        DisplayFormat = '###,###,##0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 190
        Top = 26
        Width = 105
        Height = 21
        AutoSize = False
        Color = clAqua
        DisplayFormat = '###,###,##0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 190
        Top = 3
        Width = 105
        Height = 21
        AutoSize = False
        Color = clAqua
        DisplayFormat = '###,###,##0.##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 208
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      OnClick = Imprimir1Click
    end
    object Visualizar1: TMenuItem
      Caption = '&Visualizar'
      OnClick = Visualizar1Click
    end
  end
  object dsqTalao: TDataSource
    DataSet = qTalao
    Left = 440
    Top = 256
  end
  object mEmbarque: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'CodCli'
        DataType = ftInteger
      end
      item
        Name = 'QtdDia'
        DataType = ftFloat
      end
      item
        Name = 'QtdFaturado'
        DataType = ftFloat
      end
      item
        Name = 'QtdRest'
        DataType = ftFloat
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
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
        Name = 'DescMaterial'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    IndexFieldNames = 'Data;NomeCliente'
    Params = <>
    StoreDefs = True
    OnNewRecord = mEmbarqueNewRecord
    Left = 288
    Top = 224
    Data = {
      DC0000009619E0BD010000001800000009000000000003000000DC0004446174
      61040006000000000006436F64436C6904000100000000000651746444696108
      000400000000000B517464466174757261646F08000400000000000751746452
      65737408000400000000000B4E6F6D65436C69656E7465010049000000010005
      57494454480200020028000A436F6450726F6475746F04000100000000000A52
      65666572656E63696101004900000001000557494454480200020014000C4465
      73634D6174657269616C0100490000000100055749445448020002001E000000}
    object mEmbarqueData: TDateField
      FieldName = 'Data'
    end
    object mEmbarqueCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object mEmbarqueQtdDia: TFloatField
      FieldName = 'QtdDia'
      DisplayFormat = '###,###,##0.##'
    end
    object mEmbarqueQtdFaturado: TFloatField
      FieldName = 'QtdFaturado'
      DisplayFormat = '###,###,##0.##'
    end
    object mEmbarqueQtdRest: TFloatField
      FieldName = 'QtdRest'
      DisplayFormat = '###,###,##0.##'
    end
    object mEmbarqueNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mEmbarqueCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEmbarqueReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEmbarqueDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 30
    end
  end
  object dsmEmbarque: TDataSource
    DataSet = mEmbarque
    Left = 307
    Top = 225
  end
  object qTalao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Quantidade ) Quantidade, SUM( QtdFaturada ) QtdFatur' +
        'ada, SUM( QtdRestante ) QtdRestante, CodProduto, CodCliente, DtR' +
        'eprogramacao'
      'FROM "dbTalao.DB" Dbtalao'
      'WHERE   ((Cancelado = FALSE)  or (Cancelado is Null))'
      'GROUP BY CodProduto, CodCliente, DtReprogramacao')
    Left = 416
    Top = 256
    object qTalaoQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'TABELAS."dbTalao.DB".Quantidade'
    end
    object qTalaoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
      Origin = 'TABELAS."dbTalao.DB".QtdFaturada'
    end
    object qTalaoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbTalao.DB".QtdRestante'
    end
    object qTalaoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbTalao.DB".CodProduto'
    end
    object qTalaoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbTalao.DB".CodCliente'
    end
    object qTalaoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbTalao.DB".DtReprogramacao'
    end
  end
  object qAtrasada: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT SUM( QtdRestante ) QtdRestante'
      'FROM "dbTalao.DB" Dbtalao'
      'WHERE   (Cancelado = FALSE)  '
      '   OR  (Cancelado IS NULL)  ')
    Left = 472
    Top = 256
    object qAtrasadaQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbTalao.DB".QtdRestante'
    end
  end
  object qDetalhado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbtalao.CodProduto, Dbtalao.CodCliente, Dbtalao.DtReprogr' +
        'amacao, Dbtalao.Quantidade, Dbtalao.QtdFaturada, Dbtalao.QtdRest' +
        'ante, Dbtalao.Pedido, Dbtalao.ItemPedido, Dbpedidoitem.Preco, Db' +
        'pedidoitem.VlrDesconto'
      'FROM "dbTalao.DB" Dbtalao'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbtalao.Pedido = Dbpedidoitem.Pedido)  '
      '   AND  (Dbtalao.ItemPedido = Dbpedidoitem.Item)  '
      'WHERE   (Dbtalao.Cancelado = FALSE)  '
      '   OR  (Dbtalao.Cancelado IS NULL)  ')
    Left = 384
    Top = 256
    object qDetalhadoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbTalao.DB".CodProduto'
    end
    object qDetalhadoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbTalao.DB".CodCliente'
    end
    object qDetalhadoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbTalao.DB".DtReprogramacao'
    end
    object qDetalhadoQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'TABELAS."dbTalao.DB".Quantidade'
    end
    object qDetalhadoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
      Origin = 'TABELAS."dbTalao.DB".QtdFaturada'
    end
    object qDetalhadoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbTalao.DB".QtdRestante'
    end
    object qDetalhadoPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbTalao.DB".Pedido'
    end
    object qDetalhadoItemPedido: TIntegerField
      FieldName = 'ItemPedido'
      Origin = 'TABELAS."dbTalao.DB".ItemPedido'
    end
    object qDetalhadoPreco: TFloatField
      FieldName = 'Preco'
      Origin = 'TABELAS."dbPedidoItem.DB".Preco'
    end
    object qDetalhadoVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      Origin = 'TABELAS."dbPedidoItem.DB".VlrDesconto'
    end
  end
end
