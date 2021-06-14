object fHistGeral: TfHistGeral
  Left = 12
  Top = 87
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico do faturamento'
  ClientHeight = 580
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 68
    Width = 949
    Height = 465
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Cliente'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 32
        Width = 945
        Height = 410
        Align = alClient
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do cliente'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFatBruto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Fat. Bruto'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDevolucao'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Devolu'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Faturamento'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercFat'
            Title.Alignment = taCenter
            Title.Caption = '% Sobre o Faturamento'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Width = 151
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          32)
        object ProgressBar3: TProgressBar
          Left = 431
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 755
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object BitBtn5: TBitBtn
          Left = 848
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn5Click
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Clientes por produto'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 409
        Align = alClient
        DataSource = dsmClienteProd
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
        ColCount = 14
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 215
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
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFatBruto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Fat. Bruto'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDevolucao'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Devolu'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Faturamento'
            Width = 93
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercFat'
            Title.Alignment = taCenter
            Title.Caption = '% Sobre o Faturamento'
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Restante'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdCancelada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cancelada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          33)
        object ProgressBar2: TProgressBar
          Left = 439
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 755
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 848
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn3Click
        end
      end
    end
    object TabSheet9: TRzTabSheet
      Caption = 'Cliente por produto (Mensal)'
      object SMDBGrid9: TSMDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 409
        Align = alClient
        DataSource = dsmClienteProdMes
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
        ColCount = 15
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 208
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
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Ano'
            Title.Alignment = taCenter
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Mes'
            Title.Alignment = taCenter
            Title.Caption = 'M'#234's'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdFaturada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Restante'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdCancelada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cancelada'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'Perc'
            Title.Alignment = taCenter
            Title.Caption = '% Sobre Fatur.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCliente'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cliente'
            Width = 45
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente (Fantasia)'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          33)
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Ordem:'
        end
        object ProgressBar8: TProgressBar
          Left = 440
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object BitBtn17: TBitBtn
          Left = 844
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn17Click
        end
        object BitBtn18: TBitBtn
          Left = 751
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn18Click
        end
        object ComboBox1: TComboBox
          Left = 43
          Top = 3
          Width = 206
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'Cliente, Refer'#234'ncia e Data'
          OnChange = ComboBox1Change
          Items.Strings = (
            'Cliente, Refer'#234'ncia e Data'
            'Cliente, Data e Refer'#234'ncia'
            'Refer'#234'ncia, Cliente e Data'
            'Refer'#234'ncia, Data e Cliente'
            'Data, Refer'#234'ncia e Cliente'
            'Data, Cliente e Refer'#234'ncia')
        end
      end
    end
    object TabSheet10: TRzTabSheet
      Caption = 'Cliente por produto resumido (Mensal)'
      object SMDBGrid10: TSMDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 409
        Align = alClient
        DataSource = dsmClienteProdMesRes
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
        OnGetCellParams = SMDBGrid10GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 18
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Width = 133
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 106
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Modelo'
            Title.Alignment = taCenter
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento4'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento5'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento6'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento7'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento8'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento9'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento10'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento11'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento12'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento13'
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          33)
        object ProgressBar9: TProgressBar
          Left = 446
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object BitBtn19: TBitBtn
          Left = 754
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn19Click
        end
        object BitBtn20: TBitBtn
          Left = 847
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn20Click
        end
      end
    end
    object TabSheet5: TRzTabSheet
      Caption = 'Clientes por Produtos/Cor'
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 32
        Width = 945
        Height = 410
        Align = alClient
        DataSource = dsmClienteProdCor
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 223
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
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total do Faturamento'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercFat'
            Title.Alignment = taCenter
            Title.Caption = '% Sobre o Faturamento'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 102
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          32)
        object ProgressBar5: TProgressBar
          Left = 432
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object BitBtn9: TBitBtn
          Left = 750
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn9Click
        end
        object BitBtn10: TBitBtn
          Left = 844
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn10Click
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Total Clientes por m'#234's'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 409
        Align = alClient
        DataSource = dsmClienteMes
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
        ColCount = 15
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento1'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento2'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento3'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento4'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento5'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento6'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento7'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento8'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento9'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento10'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento11'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento12'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento13'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          33)
        object ProgressBar1: TProgressBar
          Left = 352
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 8
          Width = 129
          Height = 17
          Caption = 'Mostrar as quantidades'
          TabOrder = 1
        end
        object BitBtn4: TBitBtn
          Left = 662
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn4Click
        end
        object BitBtn6: TBitBtn
          Left = 755
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir Resumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn6Click
        end
        object BitBtn21: TBitBtn
          Left = 848
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imp.Com Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn21Click
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Produtos'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 409
        Align = alClient
        DataSource = dsmProduto
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
        ColCount = 9
        RowCount = 2
        Columns = <
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
            Width = 294
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total Faturamento'
            Width = 123
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercFat'
            Title.Alignment = taCenter
            Title.Caption = '% Sobre Faturamento'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Restante'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdCancelada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cancelada'
            Width = 68
            Visible = True
          end>
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          33)
        object ProgressBar4: TProgressBar
          Left = 424
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object BitBtn7: TBitBtn
          Left = 751
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn7Click
        end
        object BitBtn8: TBitBtn
          Left = 844
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn8Click
        end
      end
    end
    object TabSheet8: TRzTabSheet
      Caption = 'Prod. por m'#234's'
      object CheckBox2: TCheckBox
        Left = 8
        Top = 8
        Width = 177
        Height = 17
        Caption = 'Mostrar as quantidades'
        TabOrder = 0
      end
      object SMDBGrid8: TSMDBGrid
        Left = 0
        Top = 31
        Width = 945
        Height = 411
        Align = alClient
        DataSource = dsmProdutoMes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 17
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento1'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento2'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento3'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento4'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento5'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento6'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento7'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento8'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento9'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento10'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento11'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento12'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFaturamento13'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 31
        Align = alTop
        Color = clSilver
        TabOrder = 2
        DesignSize = (
          945
          31)
        object BitBtn16: TBitBtn
          Left = 848
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn16Click
        end
        object BitBtn15: TBitBtn
          Left = 755
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn15Click
        end
        object ProgressBar7: TProgressBar
          Left = 447
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = 'Vendedor'
      object SMDBGrid6: TSMDBGrid
        Left = 0
        Top = 33
        Width = 945
        Height = 409
        Align = alClient
        DataSource = dsmVendedor
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
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Vendedor'
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total do Faturamento'
            Width = 192
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercFat'
            Title.Alignment = taCenter
            Title.Caption = '% Sobre o Faturamento'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 141
            Visible = True
          end>
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          33)
        object BitBtn12: TBitBtn
          Left = 848
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn12Click
        end
        object BitBtn11: TBitBtn
          Left = 754
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn11Click
        end
        object ProgressBar6: TProgressBar
          Left = 444
          Top = 8
          Width = 297
          Height = 16
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
      end
    end
    object TabSheet7: TRzTabSheet
      Caption = 'Notas Detalhadas'
      object SMDBGrid7: TSMDBGrid
        Left = 0
        Top = 32
        Width = 945
        Height = 410
        Align = alClient
        DataSource = dsqNotas
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
        ColCount = 17
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do cliente'
            Width = 212
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkCodNatOper'
            Title.Alignment = taCenter
            Title.Caption = 'Nat. Oper.'
            Width = 43
            Visible = True
            FooterText = 'aaa'
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrUnit'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercDesc'
            Title.Alignment = taCenter
            Title.Caption = '% Desconto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Icms'
            Title.Alignment = taCenter
            Title.Caption = '% Icms'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Ipi'
            Title.Alignment = taCenter
            Title.Caption = '% Ipi'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CondPgto'
            Title.Alignment = taCenter
            Title.Caption = '(P=Prazo V=Vista N=Nenhum)'
            Visible = True
          end>
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 945
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 1
        DesignSize = (
          945
          32)
        object BitBtn13: TBitBtn
          Left = 755
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn13Click
        end
        object BitBtn14: TBitBtn
          Left = 848
          Top = 3
          Width = 93
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 68
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 28
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label2: TLabel
      Left = 16
      Top = 30
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 552
      Top = 9
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label6: TLabel
      Left = 398
      Top = 32
      Width = 39
      Height = 13
      Caption = 'Dt.Final:'
    end
    object Label7: TLabel
      Left = 2
      Top = 51
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label3: TLabel
      Left = 392
      Top = 9
      Width = 47
      Height = 13
      Caption = 'Dt.Inicial: '
    end
    object Label4: TLabel
      Left = 608
      Top = 26
      Width = 169
      Height = 13
      AutoSize = False
    end
    object Label10: TLabel
      Left = 405
      Top = 54
      Width = 32
      Height = 13
      Caption = 'Grupo:'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 51
      Top = 1
      Width = 336
      Height = 21
      DropDownCount = 8
      DropDownWidth = 600
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno;Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
      OnChange = RxDBLookupCombo2Change
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 51
      Top = 22
      Width = 336
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'Nome;CgcCpf'
      LookupSource = DM1.dsCliente
      TabOrder = 1
      OnChange = RxDBLookupCombo2Change
      OnEnter = RxDBLookupCombo1Enter
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 609
      Top = 1
      Width = 169
      Height = 21
      DropDownCount = 8
      DropDownWidth = 350
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia;DescMaterial'
      LookupSource = DM1.dsProduto
      TabOrder = 2
      OnChange = RxDBLookupCombo2Change
      OnExit = RxDBLookupCombo3Exit
    end
    object DateEdit2: TDateEdit
      Left = 438
      Top = 22
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      OnChange = RxDBLookupCombo2Change
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 51
      Top = 43
      Width = 336
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsVendedor
      TabOrder = 4
      OnChange = RxDBLookupCombo2Change
    end
    object DateEdit1: TDateEdit
      Left = 438
      Top = 1
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
      OnChange = RxDBLookupCombo2Change
    end
    object CheckBox3: TCheckBox
      Left = 620
      Top = 47
      Width = 166
      Height = 17
      Caption = 'Acumular por grupo de cliente'
      TabOrder = 6
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 438
      Top = 43
      Width = 179
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsGrupoCliente
      TabOrder = 7
      OnChange = RxDBLookupCombo2Change
      OnEnter = RxDBLookupCombo5Enter
    end
    object CheckBox4: TCheckBox
      Left = 620
      Top = 24
      Width = 137
      Height = 17
      Caption = 'Mostrar Mat'#233'ria Prima'
      TabOrder = 8
      OnClick = CheckBox4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 533
    Width = 949
    Height = 47
    Align = alBottom
    Color = clSilver
    TabOrder = 2
    object Label8: TLabel
      Left = 3
      Top = 4
      Width = 300
      Height = 39
      Caption = 
        'Esse valor '#233' calculado sobre a filial e a data inicial e final'#13#10 +
        '(quando essas op'#231#245'es forem informadas, caso n'#227'o informadas, '#13#10#233' ' +
        'sobre o geral)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 449
      Top = 6
      Width = 107
      Height = 13
      Caption = 'Faturamento Bruto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 568
      Top = 6
      Width = 97
      Height = 13
      Caption = 'Valor Devolu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 683
      Top = 6
      Width = 93
      Height = 13
      Caption = '(Fatur. - Devol.)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 446
      Top = 22
      Width = 113
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,###,###,###,##0.00'
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
      Left = 559
      Top = 22
      Width = 112
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,###,###,###,##0.00'
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
      Left = 671
      Top = 22
      Width = 113
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object qCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.CodCli, Dbcliente.Nome, Dbcliente.Fantasia, ' +
        'SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, SUM( Dbnotafiscalite' +
        'ns.Qtd ) Qtd, dbNotaFiscal.PercDesc, dbCliente.CodGrupo'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      'WHERE  Dbnotafiscalitens.GeraDupl = TRUE '
      
        'GROUP BY Dbnotafiscal.CodCli, Dbcliente.Nome, Dbcliente.Fantasia' +
        ', dbNotaFiscal.PercDesc, dbCliente.CodGrupo'
      'ORDER BY VlrTotal DESC'
      ''
      ' ')
    Left = 529
    Top = 257
    object qClienteCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qClienteFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qClienteVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qClienteQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qClientePercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object qClienteCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qClientelkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
  end
  object qFaturamento: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, dbNotaFiscal.' +
        'PercDesc, dbNotaFiscal.DtEmissao'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      'WHERE  Dbnotafiscalitens.GeraDupl = TRUE '
      'GROUP BY dbNotaFiscal.PercDesc, dbNotaFiscal.DtEmissao')
    Left = 665
    Top = 457
    object qFaturamentoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qFaturamentoPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qFaturamentoDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
  end
  object qClienteProd: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.CodCli, Dbcliente.Fantasia, Dbcliente.Nome N' +
        'omeCliente, Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, ' +
        'Dbproduto.Nome NomeProduto, SUM( Dbnotafiscalitens.VlrTotal ) Vl' +
        'rTotal, SUM( Dbnotafiscalitens.Qtd ) Qtd, dbNotaFiscal.PercDesc,' +
        ' dbcliente.CodGrupo'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)'
      
        'GROUP BY Dbnotafiscal.CodCli, Dbcliente.Fantasia, Dbcliente.Nome' +
        ', Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, Dbproduto.' +
        'Nome, dbNotaFiscal.PercDesc, dbcliente.CodGrupo'
      'ORDER BY VlrTotal'
      ' '
      ' ')
    Left = 529
    Top = 308
    object qClienteProdCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qClienteProdFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qClienteProdNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qClienteProdCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qClienteProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qClienteProdNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qClienteProdVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object qClienteProdQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qClienteProdPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object qClienteProdCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qClienteProdlkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
  end
  object qClienteMes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbNotafiscal.DtEmissao,  Dbnotafiscal.PercDesc, Dbnotafis' +
        'calitens.VlrTotal, dbNotaFiscal.CodCli, dbNotaFiscalItens.Qtd, d' +
        'bCliente.CodGrupo, dbCliente.Nome NomeCliente, dbCliente.Fantasi' +
        'a'
      'FROM "dbnotafiscal.db" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      '   INNER JOIN "dbCliente.DB" dbCliente'
      '   ON  (dbCliente.Codigo = Dbnotafiscal.CodCli)'
      ' '
      ' ')
    Left = 369
    Top = 178
    object qClienteMesDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qClienteMesPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qClienteMesVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qClienteMesCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qClienteMesQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qClienteMesCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qClienteMeslkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
    object qClienteMesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qClienteMesFantasia: TStringField
      FieldName = 'Fantasia'
    end
  end
  object mClienteMes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'VlrFaturamento1'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento2'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento3'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento4'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento5'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento6'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento7'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento8'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento9'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento10'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento11'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento12'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento13'
        DataType = ftFloat
      end
      item
        Name = 'Qtd1'
        DataType = ftFloat
      end
      item
        Name = 'Qtd2'
        DataType = ftFloat
      end
      item
        Name = 'Qtd3'
        DataType = ftFloat
      end
      item
        Name = 'Qtd4'
        DataType = ftFloat
      end
      item
        Name = 'Qtd5'
        DataType = ftFloat
      end
      item
        Name = 'Qtd6'
        DataType = ftFloat
      end
      item
        Name = 'Qtd7'
        DataType = ftFloat
      end
      item
        Name = 'Qtd8'
        DataType = ftFloat
      end
      item
        Name = 'Qtd9'
        DataType = ftFloat
      end
      item
        Name = 'Qtd10'
        DataType = ftFloat
      end
      item
        Name = 'Qtd11'
        DataType = ftFloat
      end
      item
        Name = 'Qtd12'
        DataType = ftFloat
      end
      item
        Name = 'Qtd13'
        DataType = ftFloat
      end
      item
        Name = 'Perc1'
        DataType = ftFloat
      end
      item
        Name = 'Perc2'
        DataType = ftFloat
      end
      item
        Name = 'Perc3'
        DataType = ftFloat
      end
      item
        Name = 'Perc4'
        DataType = ftFloat
      end
      item
        Name = 'Perc5'
        DataType = ftFloat
      end
      item
        Name = 'Perc6'
        DataType = ftFloat
      end
      item
        Name = 'Perc7'
        DataType = ftFloat
      end
      item
        Name = 'Perc8'
        DataType = ftFloat
      end
      item
        Name = 'Perc9'
        DataType = ftFloat
      end
      item
        Name = 'Perc10'
        DataType = ftFloat
      end
      item
        Name = 'Perc11'
        DataType = ftFloat
      end
      item
        Name = 'Perc12'
        DataType = ftFloat
      end
      item
        Name = 'Perc13'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido1'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido2'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido3'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido4'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido5'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido6'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido7'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido8'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido9'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido10'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido11'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido12'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido13'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante1'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante2'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante3'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante4'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante5'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante6'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante7'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante8'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante9'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante10'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante11'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante12'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante13'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada1'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada2'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada3'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada4'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada5'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada6'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada7'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada8'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada9'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada10'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada11'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada12'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada13'
        DataType = ftFloat
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'mClienteMesIndex3'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end>
    IndexName = 'mClienteMesIndex3'
    Params = <>
    StoreDefs = True
    OnNewRecord = mClienteMesNewRecord
    Left = 369
    Top = 210
    Data = {
      970600009619E0BD01000000180000005400000000000300000097060B4E6F6D
      65436C69656E746501004900000001000557494454480200020028000846616E
      74617369610100490000000100055749445448020002001E000A436F64436C69
      656E746504000100000000000F566C724661747572616D656E746F3108000400
      000000000F566C724661747572616D656E746F3208000400000000000F566C72
      4661747572616D656E746F3308000400000000000F566C724661747572616D65
      6E746F3408000400000000000F566C724661747572616D656E746F3508000400
      000000000F566C724661747572616D656E746F3608000400000000000F566C72
      4661747572616D656E746F3708000400000000000F566C724661747572616D65
      6E746F3808000400000000000F566C724661747572616D656E746F3908000400
      0000000010566C724661747572616D656E746F3130080004000000000010566C
      724661747572616D656E746F3131080004000000000010566C72466174757261
      6D656E746F3132080004000000000010566C724661747572616D656E746F3133
      0800040000000000045174643108000400000000000451746432080004000000
      0000045174643308000400000000000451746434080004000000000004517464
      3508000400000000000451746436080004000000000004517464370800040000
      0000000451746438080004000000000004517464390800040000000000055174
      6431300800040000000000055174643131080004000000000005517464313208
      0004000000000005517464313308000400000000000550657263310800040000
      0000000550657263320800040000000000055065726333080004000000000005
      5065726334080004000000000005506572633508000400000000000550657263
      3608000400000000000550657263370800040000000000055065726338080004
      0000000000055065726339080004000000000006506572633130080004000000
      0000065065726331310800040000000000065065726331320800040000000000
      06506572633133080004000000000008566C72546F74616C0800040000000000
      0A51746450656469646F3108000400000000000A51746450656469646F320800
      0400000000000A51746450656469646F3308000400000000000A517464506564
      69646F3408000400000000000A51746450656469646F3508000400000000000A
      51746450656469646F3608000400000000000A51746450656469646F37080004
      00000000000A51746450656469646F3808000400000000000A51746450656469
      646F3908000400000000000B51746450656469646F313008000400000000000B
      51746450656469646F313108000400000000000B51746450656469646F313208
      000400000000000B51746450656469646F313308000400000000000C51746452
      657374616E74653108000400000000000C51746452657374616E746532080004
      00000000000C51746452657374616E74653308000400000000000C5174645265
      7374616E74653408000400000000000C51746452657374616E74653508000400
      000000000C51746452657374616E74653608000400000000000C517464526573
      74616E74653708000400000000000C51746452657374616E7465380800040000
      0000000C51746452657374616E74653908000400000000000D51746452657374
      616E7465313008000400000000000D51746452657374616E7465313108000400
      000000000D51746452657374616E7465313208000400000000000D5174645265
      7374616E7465313308000400000000000D51746443616E63656C616461310800
      0400000000000D51746443616E63656C6164613208000400000000000D517464
      43616E63656C6164613308000400000000000D51746443616E63656C61646134
      08000400000000000D51746443616E63656C6164613508000400000000000D51
      746443616E63656C6164613608000400000000000D51746443616E63656C6164
      613708000400000000000D51746443616E63656C616461380800040000000000
      0D51746443616E63656C6164613908000400000000000E51746443616E63656C
      616461313008000400000000000E51746443616E63656C616461313108000400
      000000000E51746443616E63656C616461313208000400000000000E51746443
      616E63656C6164613133080004000000000008436F64477275706F0400010000
      0000000B436F64416772757061646F0100490000000100055749445448020002
      000A0001000D44454641554C545F4F524445520200820000000000}
    object mClienteMesNomeCliente: TStringField
      DisplayWidth = 42
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteMesFantasia: TStringField
      DisplayWidth = 9
      FieldName = 'Fantasia'
      Size = 30
    end
    object mClienteMesCodCliente: TIntegerField
      DisplayWidth = 2
      FieldName = 'CodCliente'
    end
    object mClienteMesVlrFaturamento1: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento1'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento2: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento2'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento3: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento3'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento4: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento4'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento5: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento5'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento6: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento6'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento7: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento7'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento8: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento8'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento9: TFloatField
      DisplayWidth = 16
      FieldName = 'VlrFaturamento9'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento10: TFloatField
      DisplayWidth = 17
      FieldName = 'VlrFaturamento10'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento11: TFloatField
      DisplayWidth = 17
      FieldName = 'VlrFaturamento11'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento12: TFloatField
      DisplayWidth = 17
      FieldName = 'VlrFaturamento12'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesVlrFaturamento13: TFloatField
      DisplayWidth = 17
      FieldName = 'VlrFaturamento13'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesQtd1: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd1'
    end
    object mClienteMesQtd2: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd2'
    end
    object mClienteMesQtd3: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd3'
    end
    object mClienteMesQtd4: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd4'
    end
    object mClienteMesQtd5: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd5'
    end
    object mClienteMesQtd6: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd6'
    end
    object mClienteMesQtd7: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd7'
    end
    object mClienteMesQtd8: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd8'
    end
    object mClienteMesQtd9: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd9'
    end
    object mClienteMesQtd10: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd10'
    end
    object mClienteMesQtd11: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd11'
    end
    object mClienteMesQtd12: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd12'
    end
    object mClienteMesQtd13: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtd13'
    end
    object mClienteMesPerc1: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc1'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc2: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc2'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc3: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc3'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc4: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc4'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc5: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc5'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc6: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc6'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc7: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc7'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc8: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc8'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc9: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc9'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc10: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc10'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc11: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc11'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc12: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc12'
      DisplayFormat = '0.00000'
    end
    object mClienteMesPerc13: TFloatField
      DisplayWidth = 12
      FieldName = 'Perc13'
      DisplayFormat = '0.00000'
    end
    object mClienteMesVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteMesQtdPedido1: TFloatField
      FieldName = 'QtdPedido1'
    end
    object mClienteMesQtdPedido2: TFloatField
      FieldName = 'QtdPedido2'
    end
    object mClienteMesQtdPedido3: TFloatField
      FieldName = 'QtdPedido3'
    end
    object mClienteMesQtdPedido4: TFloatField
      FieldName = 'QtdPedido4'
    end
    object mClienteMesQtdPedido5: TFloatField
      FieldName = 'QtdPedido5'
    end
    object mClienteMesQtdPedido6: TFloatField
      FieldName = 'QtdPedido6'
    end
    object mClienteMesQtdPedido7: TFloatField
      FieldName = 'QtdPedido7'
    end
    object mClienteMesQtdPedido8: TFloatField
      FieldName = 'QtdPedido8'
    end
    object mClienteMesQtdPedido9: TFloatField
      FieldName = 'QtdPedido9'
    end
    object mClienteMesQtdPedido10: TFloatField
      FieldName = 'QtdPedido10'
    end
    object mClienteMesQtdPedido11: TFloatField
      FieldName = 'QtdPedido11'
    end
    object mClienteMesQtdPedido12: TFloatField
      FieldName = 'QtdPedido12'
    end
    object mClienteMesQtdPedido13: TFloatField
      FieldName = 'QtdPedido13'
    end
    object mClienteMesQtdRestante1: TFloatField
      FieldName = 'QtdRestante1'
    end
    object mClienteMesQtdRestante2: TFloatField
      FieldName = 'QtdRestante2'
    end
    object mClienteMesQtdRestante3: TFloatField
      FieldName = 'QtdRestante3'
    end
    object mClienteMesQtdRestante4: TFloatField
      FieldName = 'QtdRestante4'
    end
    object mClienteMesQtdRestante5: TFloatField
      FieldName = 'QtdRestante5'
    end
    object mClienteMesQtdRestante6: TFloatField
      FieldName = 'QtdRestante6'
    end
    object mClienteMesQtdRestante7: TFloatField
      FieldName = 'QtdRestante7'
    end
    object mClienteMesQtdRestante8: TFloatField
      FieldName = 'QtdRestante8'
    end
    object mClienteMesQtdRestante9: TFloatField
      FieldName = 'QtdRestante9'
    end
    object mClienteMesQtdRestante10: TFloatField
      FieldName = 'QtdRestante10'
    end
    object mClienteMesQtdRestante11: TFloatField
      FieldName = 'QtdRestante11'
    end
    object mClienteMesQtdRestante12: TFloatField
      FieldName = 'QtdRestante12'
    end
    object mClienteMesQtdRestante13: TFloatField
      FieldName = 'QtdRestante13'
    end
    object mClienteMesQtdCancelada1: TFloatField
      FieldName = 'QtdCancelada1'
    end
    object mClienteMesQtdCancelada2: TFloatField
      FieldName = 'QtdCancelada2'
    end
    object mClienteMesQtdCancelada3: TFloatField
      FieldName = 'QtdCancelada3'
    end
    object mClienteMesQtdCancelada4: TFloatField
      FieldName = 'QtdCancelada4'
    end
    object mClienteMesQtdCancelada5: TFloatField
      FieldName = 'QtdCancelada5'
    end
    object mClienteMesQtdCancelada6: TFloatField
      FieldName = 'QtdCancelada6'
    end
    object mClienteMesQtdCancelada7: TFloatField
      FieldName = 'QtdCancelada7'
    end
    object mClienteMesQtdCancelada8: TFloatField
      FieldName = 'QtdCancelada8'
    end
    object mClienteMesQtdCancelada9: TFloatField
      FieldName = 'QtdCancelada9'
    end
    object mClienteMesQtdCancelada10: TFloatField
      FieldName = 'QtdCancelada10'
    end
    object mClienteMesQtdCancelada11: TFloatField
      FieldName = 'QtdCancelada11'
    end
    object mClienteMesQtdCancelada12: TFloatField
      FieldName = 'QtdCancelada12'
    end
    object mClienteMesQtdCancelada13: TFloatField
      FieldName = 'QtdCancelada13'
    end
    object mClienteMesCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mClienteMesCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
  end
  object dsmClienteMes: TDataSource
    DataSet = mClienteMes
    Left = 385
    Top = 210
  end
  object mDatas: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Indice'
    Params = <>
    OnNewRecord = mDatasNewRecord
    Left = 313
    Top = 362
    Data = {
      420000009619E0BD010000001800000002000000000003000000420004446174
      61010049000000010005574944544802000200080006496E6469636504000100
      000000000000}
    object mDatasData: TStringField
      FieldName = 'Data'
      Size = 8
    end
    object mDatasIndice: TIntegerField
      FieldName = 'Indice'
    end
  end
  object mCliente: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'PercFat'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VlrDevolucao'
        DataType = ftFloat
      end
      item
        Name = 'VlrFatBruto'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'mClienteIndex3'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end>
    IndexName = 'mClienteIndex3'
    Params = <>
    StoreDefs = True
    OnNewRecord = mClienteNewRecord
    Left = 569
    Top = 258
    Data = {
      070100009619E0BD01000000180000000A00000000000300000007010A436F64
      436C69656E746504000100000000000B4E6F6D65436C69656E74650100490000
      0001000557494454480200020028000846616E74617369610100490000000100
      055749445448020002001E0008566C72546F74616C0800040000000000075065
      7263466174080004000000000003517464080004000000000008436F64477275
      706F04000100000000000B436F64416772757061646F01004900000001000557
      49445448020002000A000C566C724465766F6C7563616F08000400000000000B
      566C72466174427275746F080004000000000001000D44454641554C545F4F52
      4445520200820000000000}
    object mClienteCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 30
    end
    object mClienteVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClientePercFat: TFloatField
      FieldName = 'PercFat'
      DisplayFormat = '0.00000'
    end
    object mClienteQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mClienteCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mClienteCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
    object mClienteVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteVlrFatBruto: TFloatField
      FieldName = 'VlrFatBruto'
      DisplayFormat = '###,###,###,###,##0.00'
    end
  end
  object dsmCliente: TDataSource
    DataSet = mCliente
    Left = 585
    Top = 258
  end
  object mClienteProd: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
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
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'PercFat'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada'
        DataType = ftFloat
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VlrDevolucao'
        DataType = ftFloat
      end
      item
        Name = 'VlrFatBruto'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'mClienteProdIndex4'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end>
    IndexName = 'mClienteProdIndex4'
    Params = <>
    StoreDefs = True
    OnNewRecord = mClienteProdNewRecord
    Left = 577
    Top = 306
    Data = {
      940100009619E0BD01000000180000001000000000000300000094010A436F64
      436C69656E746504000100000000000846616E74617369610100490000000100
      055749445448020002001E000B4E6F6D65436C69656E74650100490000000100
      0557494454480200020028000A436F6450726F6475746F04000100000000000A
      5265666572656E63696101004900000001000557494454480200020014000B4E
      6F6D6550726F6475746F01004900000001000557494454480200020028000856
      6C72546F74616C08000400000000000351746408000400000000000750657263
      46617408000400000000000951746450656469646F08000400000000000B5174
      6452657374616E746508000400000000000C51746443616E63656C6164610800
      04000000000008436F64477275706F04000100000000000B436F644167727570
      61646F0100490000000100055749445448020002000A000C566C724465766F6C
      7563616F08000400000000000B566C72466174427275746F0800040000000000
      01000D44454641554C545F4F524445520200820000000000}
    object mClienteProdCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mClienteProdFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 30
    end
    object mClienteProdNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteProdCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mClienteProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mClienteProdNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mClienteProdVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteProdQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mClienteProdPercFat: TFloatField
      FieldName = 'PercFat'
      DisplayFormat = '0.00000'
    end
    object mClienteProdQtdPedido: TFloatField
      FieldName = 'QtdPedido'
    end
    object mClienteProdQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mClienteProdQtdCancelada: TFloatField
      FieldName = 'QtdCancelada'
    end
    object mClienteProdCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mClienteProdCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
    object mClienteProdVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteProdVlrFatBruto: TFloatField
      FieldName = 'VlrFatBruto'
      DisplayFormat = '###,###,###,###,##0.00'
    end
  end
  object dsmClienteProd: TDataSource
    DataSet = mClienteProd
    Left = 593
    Top = 306
  end
  object qProduto: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, SUM( Dbnotafi' +
        'scalitens.Qtd ) Qtd, Dbnotafiscal.PercDesc, Dbnotafiscalitens.Co' +
        'dProduto, Dbproduto.Referencia, Dbproduto.Nome'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)  '
      'WHERE  Dbnotafiscalitens.GeraDupl = TRUE '
      
        'GROUP BY Dbnotafiscal.PercDesc, Dbnotafiscalitens.CodProduto, Db' +
        'produto.Referencia, Dbproduto.Nome'
      'ORDER BY VlrTotal DESC')
    Left = 353
    Top = 409
    object qProdutoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qProdutoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qProdutoPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object qProdutoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object mProduto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
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
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'PercFat'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'mProdutoIndex3'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end>
    IndexName = 'mProdutoIndex3'
    Params = <>
    StoreDefs = True
    OnNewRecord = mProdutoNewRecord
    Left = 384
    Top = 410
    Data = {
      EA0000009619E0BD010000001800000009000000000003000000EA000A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      010005574944544802000200280008566C72546F74616C080004000000000007
      5065726346617408000400000000000351746408000400000000000951746450
      656469646F08000400000000000B51746452657374616E746508000400000000
      000C51746443616E63656C616461080004000000000001000D44454641554C54
      5F4F524445520200820000000000}
    object mProdutoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoPercFat: TFloatField
      FieldName = 'PercFat'
      DisplayFormat = '0.00000'
    end
    object mProdutoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mProdutoQtdPedido: TFloatField
      FieldName = 'QtdPedido'
    end
    object mProdutoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mProdutoQtdCancelada: TFloatField
      FieldName = 'QtdCancelada'
    end
  end
  object dsmProduto: TDataSource
    DataSet = mProduto
    Left = 400
    Top = 410
  end
  object qClienteProdCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.CodCli, Dbcliente.Fantasia, Dbcliente.Nome N' +
        'omeCliente, Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, ' +
        'Dbproduto.Nome NomeProduto, SUM( Dbnotafiscalitens.VlrTotal ) Vl' +
        'rTotal, SUM( Dbnotafiscalitens.Qtd ) Qtd, Dbnotafiscal.PercDesc,' +
        ' Dbnotafiscalitens.CodCor, dbCliente.CodGrupo'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)  '
      
        'GROUP BY Dbnotafiscal.CodCli, Dbcliente.Fantasia, Dbcliente.Nome' +
        ', Dbnotafiscalitens.CodProduto, Dbproduto.Referencia, Dbproduto.' +
        'Nome, Dbnotafiscal.PercDesc, Dbnotafiscalitens.CodCor, dbCliente' +
        '.CodGrupo'
      'ORDER BY VlrTotal')
    Left = 529
    Top = 356
    object qClienteProdCorCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qClienteProdCorFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qClienteProdCorNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qClienteProdCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qClienteProdCorReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qClienteProdCorNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qClienteProdCorVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qClienteProdCorQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qClienteProdCorPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object qClienteProdCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qClienteProdCorCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qClienteProdCorlkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
  end
  object mClienteProdCor: TClientDataSet
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
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
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
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'PercFat'
        DataType = ftFloat
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'mClienteProdCorIndex3'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end>
    IndexName = 'mClienteProdCorIndex3'
    Params = <>
    StoreDefs = True
    OnNewRecord = mClienteProdCorNewRecord
    Left = 585
    Top = 354
    Data = {
      5B0100009619E0BD01000000180000000D0000000000030000005B010A436F64
      436C69656E746504000100000000000A436F6450726F6475746F040001000000
      000006436F64436F7204000100000000000B4E6F6D65436C69656E7465010049
      00000001000557494454480200020028000846616E7461736961010049000000
      0100055749445448020002001E000A5265666572656E63696101004900000001
      000557494454480200020014000B4E6F6D6550726F6475746F01004900000001
      00055749445448020002002800074E6F6D65436F720100490000000100055749
      445448020002001E0008566C72546F74616C0800040000000000035174640800
      0400000000000750657263466174080004000000000008436F64477275706F04
      000100000000000B436F64416772757061646F01004900000001000557494454
      48020002000A0001000D44454641554C545F4F524445520200820000000000}
    object mClienteProdCorCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mClienteProdCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mClienteProdCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mClienteProdCorNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteProdCorFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 30
    end
    object mClienteProdCorReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mClienteProdCorNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mClienteProdCorNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mClienteProdCorVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteProdCorQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mClienteProdCorPercFat: TFloatField
      FieldName = 'PercFat'
      DisplayFormat = '0.00000'
    end
    object mClienteProdCorCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mClienteProdCorCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
  end
  object dsmClienteProdCor: TDataSource
    DataSet = mClienteProdCor
    Left = 601
    Top = 354
  end
  object qVendedor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, SUM( Dbnotafi' +
        'scalitens.Qtd ) Qtd, Dbnotafiscal.PercDesc, Dbnotafiscal.CodVend' +
        'edor, Dbnotafiscal.CodVendedor2'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      'WHERE  Dbnotafiscalitens.GeraDupl = TRUE '
      
        'GROUP BY Dbnotafiscal.PercDesc, Dbnotafiscal.CodVendedor, Dbnota' +
        'fiscal.CodVendedor2'
      'ORDER BY VlrTotal DESC')
    Left = 529
    Top = 401
    object qVendedorVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qVendedorQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qVendedorPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qVendedorCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodVendedor'
    end
    object qVendedorCodVendedor2: TIntegerField
      FieldName = 'CodVendedor2'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodVendedor2'
    end
  end
  object mVendedor: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodVendedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeVendedor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'PercFat'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'mVendedorIndex3'
        Fields = 'VlrTotal'
        Options = [ixDescending]
      end>
    Params = <>
    StoreDefs = True
    Left = 577
    Top = 402
    Data = {
      7C0000009619E0BD0100000018000000050000000000030000007C000B436F64
      56656E6465646F7204000100000000000C4E6F6D6556656E6465646F72010049
      000000010005574944544802000200280008566C72546F74616C080004000000
      0000035174640800040000000000075065726346617408000400000000000000}
    object mVendedorCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object mVendedorNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object mVendedorVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mVendedorQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mVendedorPercFat: TFloatField
      FieldName = 'PercFat'
      DisplayFormat = '0.00000'
    end
  end
  object dsmVendedor: TDataSource
    DataSet = mVendedor
    Left = 593
    Top = 402
  end
  object qNotas: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.CodCli, Dbcliente.Fantasia, Dbcliente.Nome N' +
        'omeCliente, Dbnotafiscal.PercDesc, Dbnotafiscalitens.CodProduto,' +
        ' Dbnotafiscalitens.CodCor, Dbnotafiscal.NumNota, Dbnotafiscal.Dt' +
        'Emissao, Dbproduto.Referencia, Dbproduto.DescMaterial, Dbproduto' +
        '.Nome NomeProduto, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.' +
        'Qtd, Dbnotafiscalitens.Icms, Dbnotafiscalitens.Ipi, Dbnotafiscal' +
        'itens.VlrUnit, Dbnotafiscalitens.VlrTotal, Dbnotafiscalitens.Nat' +
        'Oper, dbNotaFiscal.CondPgto'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)  '
      'WHERE  Dbnotafiscalitens.GeraDupl = TRUE ')
    Left = 529
    Top = 449
    object qNotasCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qNotasFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qNotasNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qNotasPercDesc: TFloatField
      FieldName = 'PercDesc'
    end
    object qNotasCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qNotasCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotasNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qNotasDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qNotasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qNotasDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 10
    end
    object qNotasNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qNotasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotasQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qNotasIcms: TFloatField
      FieldName = 'Icms'
    end
    object qNotasIpi: TFloatField
      FieldName = 'Ipi'
    end
    object qNotasVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotasVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qNotasNatOper: TSmallintField
      FieldName = 'NatOper'
    end
    object qNotaslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qNotaslkCodNatOper: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodNatOper'
      LookupDataSet = DM1.tNatOperacao2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodNatOper'
      KeyFields = 'NatOper'
      Size = 4
      Lookup = True
    end
    object qNotasCondPgto: TStringField
      FieldName = 'CondPgto'
      Size = 1
    end
  end
  object dsqNotas: TDataSource
    DataSet = qNotas
    Left = 553
    Top = 450
  end
  object qPedidoCliMes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.CodCliente, Dbpedidoitem.DtReprogramacao, SUM( D' +
        'bpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesRest ' +
        ') QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, d' +
        'bCliente.CodGrupo, dbCliente.Nome NomeCliente, dbCliente.Fantasi' +
        'a'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbCliente.DB" dbCliente'
      '   ON  (dbCliente.Codigo = Dbpedido.CodCliente)  '
      
        'GROUP BY Dbpedido.CodCliente, Dbpedidoitem.DtReprogramacao, dbCl' +
        'iente.CodGrupo, dbCliente.Nome,  dbCliente.Fantasia')
    Left = 417
    Top = 210
    object qPedidoCliMesCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoCliMesDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbPedidoItem.DB".DtReprogramacao'
    end
    object qPedidoCliMesQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoCliMesQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoCliMesQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesCanc'
    end
    object qPedidoCliMesCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qPedidoCliMesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedidoCliMesFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedidoCliMeslkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
  end
  object qPedidoProd: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.' +
        'QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) Qt' +
        'dParesCanc, Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbpro' +
        'duto.Nome'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      
        'GROUP BY Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbprodut' +
        'o.Nome')
    Left = 433
    Top = 410
    object qPedidoProdQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoProdQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoProdCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qPedidoProdQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesCanc'
    end
    object qPedidoProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPedidoProdNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object qProdutoMes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.DtEmissao, Dbnotafiscal.PercDesc, Dbnotafisc' +
        'alitens.VlrTotal, Dbnotafiscalitens.Qtd, Dbnotafiscalitens.CodPr' +
        'oduto, Dbnotafiscalitens.Descricao, Dbnotafiscalitens.Referencia'
      'FROM "dbnotafiscal.db" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  ')
    Left = 33
    Top = 202
    object qProdutoMesDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbnotafiscal.DB".DtEmissao'
    end
    object qProdutoMesPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbnotafiscal.DB".PercDesc'
    end
    object qProdutoMesVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qProdutoMesQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qProdutoMesCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qProdutoMesDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Descricao'
      Size = 40
    end
    object qProdutoMesReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Referencia'
    end
  end
  object qPedidoProdMes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdPares ' +
        ') QtdPares, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, Dbped' +
        'idoitem.CodProduto, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCan' +
        'c'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      'GROUP BY  Dbpedidoitem.DtReprogramacao, Dbpedidoitem.CodProduto')
    Left = 81
    Top = 202
    object qPedidoProdMesDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbPedidoItem.DB".DtReprogramacao'
    end
    object qPedidoProdMesQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoProdMesQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoProdMesCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qPedidoProdMesQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesCanc'
    end
  end
  object dsmProdutoMes: TDataSource
    DataSet = mProdutoMes
    Left = 57
    Top = 234
  end
  object mProdutoMes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
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
        Name = 'QtdCancelada1'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada2'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada3'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada4'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada5'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada6'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada7'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada8'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada9'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada10'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada11'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada12'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada13'
        DataType = ftFloat
      end
      item
        Name = 'Qtd1'
        DataType = ftFloat
      end
      item
        Name = 'Qtd2'
        DataType = ftFloat
      end
      item
        Name = 'Qtd3'
        DataType = ftFloat
      end
      item
        Name = 'Qtd4'
        DataType = ftFloat
      end
      item
        Name = 'Qtd5'
        DataType = ftFloat
      end
      item
        Name = 'Qtd6'
        DataType = ftFloat
      end
      item
        Name = 'Qtd7'
        DataType = ftFloat
      end
      item
        Name = 'Qtd8'
        DataType = ftFloat
      end
      item
        Name = 'Qtd9'
        DataType = ftFloat
      end
      item
        Name = 'Qtd10'
        DataType = ftFloat
      end
      item
        Name = 'Qtd11'
        DataType = ftFloat
      end
      item
        Name = 'Qtd12'
        DataType = ftFloat
      end
      item
        Name = 'Qtd13'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido1'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido2'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido3'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido4'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido5'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido6'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido7'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido8'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido9'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido10'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido11'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido12'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido13'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante1'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante2'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante3'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante4'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante5'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante6'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante7'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante8'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante9'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante10'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante11'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante12'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante13'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento1'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento2'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento3'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento4'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento5'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento6'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento7'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento8'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento9'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento10'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento11'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento12'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento13'
        DataType = ftFloat
      end
      item
        Name = 'Perc1'
        DataType = ftFloat
      end
      item
        Name = 'Perc2'
        DataType = ftFloat
      end
      item
        Name = 'Perc3'
        DataType = ftFloat
      end
      item
        Name = 'Perc4'
        DataType = ftFloat
      end
      item
        Name = 'Perc5'
        DataType = ftFloat
      end
      item
        Name = 'Perc6'
        DataType = ftFloat
      end
      item
        Name = 'Perc7'
        DataType = ftFloat
      end
      item
        Name = 'Perc8'
        DataType = ftFloat
      end
      item
        Name = 'Perc9'
        DataType = ftFloat
      end
      item
        Name = 'Perc10'
        DataType = ftFloat
      end
      item
        Name = 'Perc11'
        DataType = ftFloat
      end
      item
        Name = 'Perc12'
        DataType = ftFloat
      end
      item
        Name = 'Perc13'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'VlrTotal'
    Params = <>
    StoreDefs = True
    OnNewRecord = mProdutoMesNewRecord
    Left = 40
    Top = 240
    Data = {
      9B0600009619E0BD0100000018000000540000000000030000009B060A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      01000557494454480200020028000D51746443616E63656C6164613108000400
      000000000D51746443616E63656C6164613208000400000000000D5174644361
      6E63656C6164613308000400000000000D51746443616E63656C616461340800
      0400000000000D51746443616E63656C6164613508000400000000000D517464
      43616E63656C6164613608000400000000000D51746443616E63656C61646137
      08000400000000000D51746443616E63656C6164613808000400000000000D51
      746443616E63656C6164613908000400000000000E51746443616E63656C6164
      61313008000400000000000E51746443616E63656C6164613131080004000000
      00000E51746443616E63656C616461313208000400000000000E51746443616E
      63656C6164613133080004000000000004517464310800040000000000045174
      6432080004000000000004517464330800040000000000045174643408000400
      0000000004517464350800040000000000045174643608000400000000000451
      7464370800040000000000045174643808000400000000000451746439080004
      0000000000055174643130080004000000000005517464313108000400000000
      00055174643132080004000000000005517464313308000400000000000A5174
      6450656469646F3108000400000000000A51746450656469646F320800040000
      0000000A51746450656469646F3308000400000000000A51746450656469646F
      3408000400000000000A51746450656469646F3508000400000000000A517464
      50656469646F3608000400000000000A51746450656469646F37080004000000
      00000A51746450656469646F3808000400000000000A51746450656469646F39
      08000400000000000B51746450656469646F313008000400000000000B517464
      50656469646F313108000400000000000B51746450656469646F313208000400
      000000000B51746450656469646F313308000400000000000C51746452657374
      616E74653108000400000000000C51746452657374616E746532080004000000
      00000C51746452657374616E74653308000400000000000C5174645265737461
      6E74653408000400000000000C51746452657374616E74653508000400000000
      000C51746452657374616E74653608000400000000000C51746452657374616E
      74653708000400000000000C51746452657374616E7465380800040000000000
      0C51746452657374616E74653908000400000000000D51746452657374616E74
      65313008000400000000000D51746452657374616E7465313108000400000000
      000D51746452657374616E7465313208000400000000000D5174645265737461
      6E7465313308000400000000000F566C724661747572616D656E746F31080004
      00000000000F566C724661747572616D656E746F3208000400000000000F566C
      724661747572616D656E746F3308000400000000000F566C724661747572616D
      656E746F3408000400000000000F566C724661747572616D656E746F35080004
      00000000000F566C724661747572616D656E746F3608000400000000000F566C
      724661747572616D656E746F3708000400000000000F566C724661747572616D
      656E746F3808000400000000000F566C724661747572616D656E746F39080004
      000000000010566C724661747572616D656E746F313008000400000000001056
      6C724661747572616D656E746F3131080004000000000010566C724661747572
      616D656E746F3132080004000000000010566C724661747572616D656E746F31
      3308000400000000000550657263310800040000000000055065726332080004
      0000000000055065726333080004000000000005506572633408000400000000
      0005506572633508000400000000000550657263360800040000000000055065
      7263370800040000000000055065726338080004000000000005506572633908
      0004000000000006506572633130080004000000000006506572633131080004
      0000000000065065726331320800040000000000065065726331330800040000
      00000008566C72546F74616C08000400000000000A436F64436C69656E746504
      000100000000000B436F64416772757061646F01004900000001000557494454
      48020002000A0001000D44454641554C545F4F524445520200820000000000}
    object mProdutoMesCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoMesReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoMesNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutoMesQtdCancelada1: TFloatField
      FieldName = 'QtdCancelada1'
    end
    object mProdutoMesQtdCancelada2: TFloatField
      FieldName = 'QtdCancelada2'
    end
    object mProdutoMesQtdCancelada3: TFloatField
      FieldName = 'QtdCancelada3'
    end
    object mProdutoMesQtdCancelada4: TFloatField
      FieldName = 'QtdCancelada4'
    end
    object mProdutoMesQtdCancelada5: TFloatField
      FieldName = 'QtdCancelada5'
    end
    object mProdutoMesQtdCancelada6: TFloatField
      FieldName = 'QtdCancelada6'
    end
    object mProdutoMesQtdCancelada7: TFloatField
      FieldName = 'QtdCancelada7'
    end
    object mProdutoMesQtdCancelada8: TFloatField
      FieldName = 'QtdCancelada8'
    end
    object mProdutoMesQtdCancelada9: TFloatField
      FieldName = 'QtdCancelada9'
    end
    object mProdutoMesQtdCancelada10: TFloatField
      FieldName = 'QtdCancelada10'
    end
    object mProdutoMesQtdCancelada11: TFloatField
      FieldName = 'QtdCancelada11'
    end
    object mProdutoMesQtdCancelada12: TFloatField
      FieldName = 'QtdCancelada12'
    end
    object mProdutoMesQtdCancelada13: TFloatField
      FieldName = 'QtdCancelada13'
    end
    object mProdutoMesQtd1: TFloatField
      FieldName = 'Qtd1'
    end
    object mProdutoMesQtd2: TFloatField
      FieldName = 'Qtd2'
    end
    object mProdutoMesQtd3: TFloatField
      FieldName = 'Qtd3'
    end
    object mProdutoMesQtd4: TFloatField
      FieldName = 'Qtd4'
    end
    object mProdutoMesQtd5: TFloatField
      FieldName = 'Qtd5'
    end
    object mProdutoMesQtd6: TFloatField
      FieldName = 'Qtd6'
    end
    object mProdutoMesQtd7: TFloatField
      FieldName = 'Qtd7'
    end
    object mProdutoMesQtd8: TFloatField
      FieldName = 'Qtd8'
    end
    object mProdutoMesQtd9: TFloatField
      FieldName = 'Qtd9'
    end
    object mProdutoMesQtd10: TFloatField
      FieldName = 'Qtd10'
    end
    object mProdutoMesQtd11: TFloatField
      FieldName = 'Qtd11'
    end
    object mProdutoMesQtd12: TFloatField
      FieldName = 'Qtd12'
    end
    object mProdutoMesQtd13: TFloatField
      FieldName = 'Qtd13'
    end
    object mProdutoMesQtdPedido1: TFloatField
      FieldName = 'QtdPedido1'
    end
    object mProdutoMesQtdPedido2: TFloatField
      FieldName = 'QtdPedido2'
    end
    object mProdutoMesQtdPedido3: TFloatField
      FieldName = 'QtdPedido3'
    end
    object mProdutoMesQtdPedido4: TFloatField
      FieldName = 'QtdPedido4'
    end
    object mProdutoMesQtdPedido5: TFloatField
      FieldName = 'QtdPedido5'
    end
    object mProdutoMesQtdPedido6: TFloatField
      FieldName = 'QtdPedido6'
    end
    object mProdutoMesQtdPedido7: TFloatField
      FieldName = 'QtdPedido7'
    end
    object mProdutoMesQtdPedido8: TFloatField
      FieldName = 'QtdPedido8'
    end
    object mProdutoMesQtdPedido9: TFloatField
      FieldName = 'QtdPedido9'
    end
    object mProdutoMesQtdPedido10: TFloatField
      FieldName = 'QtdPedido10'
    end
    object mProdutoMesQtdPedido11: TFloatField
      FieldName = 'QtdPedido11'
    end
    object mProdutoMesQtdPedido12: TFloatField
      FieldName = 'QtdPedido12'
    end
    object mProdutoMesQtdPedido13: TFloatField
      FieldName = 'QtdPedido13'
    end
    object mProdutoMesQtdRestante1: TFloatField
      FieldName = 'QtdRestante1'
    end
    object mProdutoMesQtdRestante2: TFloatField
      FieldName = 'QtdRestante2'
    end
    object mProdutoMesQtdRestante3: TFloatField
      FieldName = 'QtdRestante3'
    end
    object mProdutoMesQtdRestante4: TFloatField
      FieldName = 'QtdRestante4'
    end
    object mProdutoMesQtdRestante5: TFloatField
      FieldName = 'QtdRestante5'
    end
    object mProdutoMesQtdRestante6: TFloatField
      FieldName = 'QtdRestante6'
    end
    object mProdutoMesQtdRestante7: TFloatField
      FieldName = 'QtdRestante7'
    end
    object mProdutoMesQtdRestante8: TFloatField
      FieldName = 'QtdRestante8'
    end
    object mProdutoMesQtdRestante9: TFloatField
      FieldName = 'QtdRestante9'
    end
    object mProdutoMesQtdRestante10: TFloatField
      FieldName = 'QtdRestante10'
    end
    object mProdutoMesQtdRestante11: TFloatField
      FieldName = 'QtdRestante11'
    end
    object mProdutoMesQtdRestante12: TFloatField
      FieldName = 'QtdRestante12'
    end
    object mProdutoMesQtdRestante13: TFloatField
      FieldName = 'QtdRestante13'
    end
    object mProdutoMesVlrFaturamento1: TFloatField
      FieldName = 'VlrFaturamento1'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento2: TFloatField
      FieldName = 'VlrFaturamento2'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento3: TFloatField
      FieldName = 'VlrFaturamento3'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento4: TFloatField
      FieldName = 'VlrFaturamento4'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento5: TFloatField
      FieldName = 'VlrFaturamento5'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento6: TFloatField
      FieldName = 'VlrFaturamento6'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento7: TFloatField
      FieldName = 'VlrFaturamento7'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento8: TFloatField
      FieldName = 'VlrFaturamento8'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento9: TFloatField
      FieldName = 'VlrFaturamento9'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento10: TFloatField
      FieldName = 'VlrFaturamento10'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento11: TFloatField
      FieldName = 'VlrFaturamento11'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento12: TFloatField
      FieldName = 'VlrFaturamento12'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesVlrFaturamento13: TFloatField
      FieldName = 'VlrFaturamento13'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mProdutoMesPerc1: TFloatField
      FieldName = 'Perc1'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc2: TFloatField
      FieldName = 'Perc2'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc3: TFloatField
      FieldName = 'Perc3'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc4: TFloatField
      FieldName = 'Perc4'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc5: TFloatField
      FieldName = 'Perc5'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc6: TFloatField
      FieldName = 'Perc6'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc7: TFloatField
      FieldName = 'Perc7'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc8: TFloatField
      FieldName = 'Perc8'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc9: TFloatField
      FieldName = 'Perc9'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc10: TFloatField
      FieldName = 'Perc10'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc11: TFloatField
      FieldName = 'Perc11'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc12: TFloatField
      FieldName = 'Perc12'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesPerc13: TFloatField
      FieldName = 'Perc13'
      DisplayFormat = '0.00000'
    end
    object mProdutoMesVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mProdutoMesCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mProdutoMesCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
  end
  object mFatMensal: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Data'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'VlrFaturamento'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mFatMensalNewRecord
    Left = 385
    Top = 298
    Data = {
      4A0000009619E0BD0100000018000000020000000000030000004A0004446174
      6101004900000001000557494454480200020008000E566C724661747572616D
      656E746F08000400000000000000}
    object mFatMensalData: TStringField
      FieldName = 'Data'
      Size = 8
    end
    object mFatMensalVlrFaturamento: TFloatField
      FieldName = 'VlrFaturamento'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object mClienteProdMes: TClientDataSet
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
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'QtdFaturada'
        DataType = ftFloat
      end
      item
        Name = 'QtdPedido'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento'
        DataType = ftFloat
      end
      item
        Name = 'Perc'
        DataType = ftFloat
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
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeCliente;Referencia;Ano;Mes'
    Params = <>
    StoreDefs = True
    Left = 25
    Top = 418
    Data = {
      8E0100009619E0BD0100000018000000100000000000030000008E010A436F64
      436C69656E746504000100000000000A436F6450726F6475746F040001000000
      00000846616E74617369610100490000000100055749445448020002001E000B
      4E6F6D65436C69656E7465010049000000010005574944544802000200280003
      416E6F0400010000000000034D657304000100000000000B5174644661747572
      61646108000400000000000951746450656469646F08000400000000000B5174
      6452657374616E746508000400000000000C51746443616E63656C6164610800
      0400000000000E566C724661747572616D656E746F0800040000000000045065
      726308000400000000000A5265666572656E6369610100490000000100055749
      4454480200020014000B4E6F6D6550726F6475746F0100490000000100055749
      44544802000200280008436F64477275706F04000100000000000B436F644167
      72757061646F0100490000000100055749445448020002000A0001000D444546
      41554C545F4F524445520200820000000000}
    object mClienteProdMesCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mClienteProdMesCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mClienteProdMesFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 30
    end
    object mClienteProdMesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteProdMesAno: TIntegerField
      FieldName = 'Ano'
    end
    object mClienteProdMesMes: TIntegerField
      FieldName = 'Mes'
    end
    object mClienteProdMesQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object mClienteProdMesQtdPedido: TFloatField
      FieldName = 'QtdPedido'
    end
    object mClienteProdMesQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mClienteProdMesQtdCancelada: TFloatField
      FieldName = 'QtdCancelada'
    end
    object mClienteProdMesVlrFaturamento: TFloatField
      FieldName = 'VlrFaturamento'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object mClienteProdMesPerc: TFloatField
      FieldName = 'Perc'
      DisplayFormat = '0.00000'
    end
    object mClienteProdMesReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mClienteProdMesNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mClienteProdMesCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mClienteProdMesCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
  end
  object qClienteProdMes: TQuery
    OnNewRecord = qClienteProdMesNewRecord
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.DtEmissao, Dbnotafiscal.CodCli, Dbnotafiscal' +
        'itens.CodProduto, SUM( Dbnotafiscalitens.Qtd ) Qtd, SUM( Dbnotaf' +
        'iscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.PercDesc, Dbnotafis' +
        'calitens.Referencia, Dbnotafiscalitens.Descricao, dbCliente.CodG' +
        'rupo, dbCliente.Nome NomeCliente, dbCliente.Fantasia'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      '   INNER JOIN "dbCliente.DB" dbCliente'
      '   ON  (dbCliente.Codigo = dbNotaFiscal.CodCli)  '
      
        'GROUP BY Dbnotafiscal.DtEmissao, Dbnotafiscal.CodCli, Dbnotafisc' +
        'alitens.CodProduto, Dbnotafiscal.PercDesc, Dbnotafiscalitens.Ref' +
        'erencia, Dbnotafiscalitens.Descricao, dbCliente.CodGrupo, dbClie' +
        'nte.Nome, dbCliente.Fantasia'
      '')
    Left = 25
    Top = 378
    object qClienteProdMesDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qClienteProdMesCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qClienteProdMesCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qClienteProdMesQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qClienteProdMesVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qClienteProdMesPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qClienteProdMesReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Referencia'
    end
    object qClienteProdMesDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Descricao'
      Size = 40
    end
    object qClienteProdMesCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qClienteProdMeslkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
    object qClienteProdMesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qClienteProdMesFantasia: TStringField
      FieldName = 'Fantasia'
    end
  end
  object dsmClienteProdMes: TDataSource
    DataSet = mClienteProdMes
    Left = 41
    Top = 418
  end
  object qPedidoCliProdMes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdPares ' +
        ') QtdPares, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, Dbped' +
        'idoitem.CodProduto, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCan' +
        'c, dbPedido.CodCliente, dbCliente.CodGrupo, dbCliente.Nome NomeC' +
        'liente, dbCliente.Fantasia'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" dbCliente'
      '   ON  (dbCliente.Codigo = dbPedido.CodCliente)'
      
        'GROUP BY Dbpedidoitem.DtReprogramacao, Dbpedidoitem.CodProduto, ' +
        'dbPedido.CodCliente, dbCliente.CodGrupo, dbCliente.Nome, dbClien' +
        'te.Fantasia'
      ''
      ' ')
    Left = 65
    Top = 378
    object qPedidoCliProdMesDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbPedidoItem.DB".DtReprogramacao'
    end
    object qPedidoCliProdMesQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoCliProdMesQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoCliProdMesCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qPedidoCliProdMesQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesCanc'
    end
    object qPedidoCliProdMesCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoCliProdMesCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qPedidoCliProdMeslkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
    object qPedidoCliProdMesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedidoCliProdMesFantasia: TStringField
      FieldName = 'Fantasia'
    end
  end
  object qPedidoCliProd: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.' +
        'QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) Qt' +
        'dParesCanc, Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbpro' +
        'duto.Nome, dbPedido.CodCliente, dbCliente.CodGrupo, dbCliente.No' +
        'me NomeCliente, dbCliente.Fantasia'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbcliente.Codigo = DbPedido.CodCliente)'
      
        'GROUP BY Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbprodut' +
        'o.Nome, dbPedido.CodCliente, dbCliente.CodGrupo, dbCliente.Nome,' +
        ' dbCliente.Fantasia'
      '')
    Left = 633
    Top = 306
    object qPedidoCliProdQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qPedidoCliProdQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPedidoCliProdQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qPedidoCliProdCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedidoCliProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPedidoCliProdNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qPedidoCliProdCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedidoCliProdCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qPedidoCliProdNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedidoCliProdFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedidoCliProdlkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
  end
  object qPedidoProdMesCli: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbPedido.CodCliente, Dbpedidoitem.DtReprogramacao, SUM( D' +
        'bpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesRest ' +
        ') QtdParesRest, Dbpedidoitem.CodProduto, SUM( Dbpedidoitem.QtdPa' +
        'resCanc ) QtdParesCanc, dbCliente.CodGrupo'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" DbCliente'
      '   ON  (Dbpedido.CodCliente = DbCliente.Codigo)'
      
        'GROUP BY dbPedido.CodCliente, Dbpedidoitem.DtReprogramacao, Dbpe' +
        'didoitem.CodProduto, dbCliente.CodGrupo'
      ' '
      ' '
      ' ')
    Left = 177
    Top = 210
    object qPedidoProdMesCliCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoProdMesCliDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbPedidoItem.DB".DtReprogramacao'
    end
    object qPedidoProdMesCliQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoProdMesCliQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoProdMesCliCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qPedidoProdMesCliQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesCanc'
    end
    object qPedidoProdMesCliCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
  end
  object qProdutoMesCli: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.CodCli, Dbnotafiscal.DtEmissao, Dbnotafiscal' +
        '.PercDesc, Dbnotafiscalitens.VlrTotal, Dbnotafiscalitens.Qtd, Db' +
        'notafiscalitens.CodProduto, Dbnotafiscalitens.Descricao, Dbnotaf' +
        'iscalitens.Referencia, dbCliente.CodGrupo '
      'FROM "dbnotafiscal.db" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      '   INNER JOIN "dbCliente.DB" dbCliente'
      '   ON  (Dbnotafiscal.CodCli = dbCliente.Codigo)'
      '   '
      ''
      ' ')
    Left = 153
    Top = 210
    object qProdutoMesCliCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbnotafiscal.DB".CodCli'
    end
    object qProdutoMesCliDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbnotafiscal.DB".DtEmissao'
    end
    object qProdutoMesCliPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbnotafiscal.DB".PercDesc'
    end
    object qProdutoMesCliVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qProdutoMesCliQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qProdutoMesCliCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qProdutoMesCliDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Descricao'
      Size = 40
    end
    object qProdutoMesCliReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Referencia'
    end
    object qProdutoMesCliCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
  end
  object mClienteProdMesRes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Modelo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'VlrFaturamento1'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento2'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento3'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento4'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento5'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento6'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento7'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento8'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento9'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento10'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento11'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento12'
        DataType = ftFloat
      end
      item
        Name = 'VlrFaturamento13'
        DataType = ftFloat
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Fantasia;Referencia'
    Params = <>
    StoreDefs = True
    Left = 145
    Top = 322
    Data = {
      550200009619E0BD01000000180000001700000000000300000055020A436F64
      436C69656E746504000100000000000B4E6F6D65436C69656E74650100490000
      0001000557494454480200020028000846616E74617369610100490000000100
      0557494454480200020014000A5265666572656E636961010049000000010005
      5749445448020002001400064D6F64656C6F0100490000000100055749445448
      0200020014000B4E6F6D6550726F6475746F0100490000000100055749445448
      0200020028000A436F6450726F6475746F04000100000000000F566C72466174
      7572616D656E746F3108000400000000000F566C724661747572616D656E746F
      3208000400000000000F566C724661747572616D656E746F3308000400000000
      000F566C724661747572616D656E746F3408000400000000000F566C72466174
      7572616D656E746F3508000400000000000F566C724661747572616D656E746F
      3608000400000000000F566C724661747572616D656E746F3708000400000000
      000F566C724661747572616D656E746F3808000400000000000F566C72466174
      7572616D656E746F39080004000000000010566C724661747572616D656E746F
      3130080004000000000010566C724661747572616D656E746F31310800040000
      00000010566C724661747572616D656E746F3132080004000000000010566C72
      4661747572616D656E746F3133080004000000000008436F64477275706F0400
      0100000000000B436F64416772757061646F0100490000000100055749445448
      020002000A0008566C72546F74616C08000400000000000000}
    object mClienteProdMesResCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mClienteProdMesResNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mClienteProdMesResFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object mClienteProdMesResReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mClienteProdMesResModelo: TStringField
      FieldName = 'Modelo'
    end
    object mClienteProdMesResNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mClienteProdMesResCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mClienteProdMesResVlrFaturamento1: TFloatField
      FieldName = 'VlrFaturamento1'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento2: TFloatField
      FieldName = 'VlrFaturamento2'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento3: TFloatField
      FieldName = 'VlrFaturamento3'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento4: TFloatField
      FieldName = 'VlrFaturamento4'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento5: TFloatField
      FieldName = 'VlrFaturamento5'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento6: TFloatField
      FieldName = 'VlrFaturamento6'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento7: TFloatField
      FieldName = 'VlrFaturamento7'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento8: TFloatField
      FieldName = 'VlrFaturamento8'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento9: TFloatField
      FieldName = 'VlrFaturamento9'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento10: TFloatField
      FieldName = 'VlrFaturamento10'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento11: TFloatField
      FieldName = 'VlrFaturamento11'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento12: TFloatField
      FieldName = 'VlrFaturamento12'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResVlrFaturamento13: TFloatField
      FieldName = 'VlrFaturamento13'
      DisplayFormat = '###,###,##0.##'
    end
    object mClienteProdMesResCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mClienteProdMesResCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
    object mClienteProdMesResVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
  end
  object dsmClienteProdMesRes: TDataSource
    DataSet = mClienteProdMesRes
    Left = 169
    Top = 322
  end
  object qDevolucao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.DtEntrada, SUM( Dbnentrada.VlrDevolucao ) VlrD' +
        'evolucao'
      'FROM dbnentrada Dbnentrada'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.Filial = Dbnentradaitens.Filial)'
      '   AND  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      'WHERE  Dbnentrada.VlrDevolucao > 0'
      'GROUP BY Dbnentrada.DtEntrada'
      ' '
      ' ')
    Left = 705
    Top = 348
    object qDevolucaoDtEntrada: TDateField
      FieldName = 'DtEntrada'
      Origin = 'TABELAS."dbnentrada.DB".DtEntrada'
    end
    object qDevolucaoVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      Origin = 'TABELAS."dbnentrada.DB".VlrDevolucao'
    end
  end
  object mDevMensal: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'VlrDevolucao'
        DataType = ftFloat
      end
      item
        Name = 'Data'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mDevMensalNewRecord
    Left = 433
    Top = 300
    Data = {
      480000009619E0BD01000000180000000200000000000300000048000C566C72
      4465766F6C7563616F0800040000000000044461746101004900000001000557
      494454480200020008000000}
    object mDevMensalVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
    end
    object mDevMensalData: TStringField
      FieldName = 'Data'
      Size = 8
    end
  end
  object qDevolucao2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.NumNEntr, Dbfornecedores.NomeForn, SUM( Dbnent' +
        'rada.VlrDevolucao ) VlrDevolucao, Dbfornecedores.CodForn, Dbforn' +
        'ecedores.CGC, Dbnentradaitens.Qtd'
      'FROM "dbNEntrada.DB" Dbnentrada'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.Filial = Dbnentradaitens.Filial)  '
      '   AND  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)  '
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)  '
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)  '
      'WHERE  Dbnentrada.VlrDevolucao > 0 '
      
        'GROUP BY Dbnentrada.NumNEntr, Dbfornecedores.NomeForn, Dbfornece' +
        'dores.CodForn, Dbfornecedores.CGC, Dbnentradaitens.Qtd')
    Left = 705
    Top = 212
  end
end
