object fHistProduto: TfHistProduto
  Left = 112
  Top = 38
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico dos produtos'
  ClientHeight = 540
  ClientWidth = 776
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
  object Label1: TLabel
    Left = 36
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Filial:'
  end
  object Label2: TLabel
    Left = 24
    Top = 30
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 270
    Top = 74
    Width = 62
    Height = 13
    Caption = 'C'#243'd.Produto:'
  end
  object Label5: TLabel
    Left = 3
    Top = 74
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Label6: TLabel
    Left = 425
    Top = 30
    Width = 39
    Height = 13
    Caption = 'Dt.Final:'
  end
  object Label7: TLabel
    Left = 10
    Top = 52
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label3: TLabel
    Left = 419
    Top = 7
    Width = 47
    Height = 13
    Caption = 'Dt.Inicial: '
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 59
    Top = 1
    Width = 347
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 59
    Top = 22
    Width = 347
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;CgcCpf'
    LookupSource = DM1.dsCliente
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 333
    Top = 66
    Width = 73
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 4
    OnExit = CurrencyEdit1Exit
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 59
    Top = 66
    Width = 185
    Height = 21
    DropDownCount = 8
    DropDownWidth = 350
    LookupField = 'Referencia'
    LookupDisplay = 'Referencia;DescMaterial'
    LookupSource = DM1.dsProduto
    TabOrder = 3
    OnExit = RxDBLookupCombo3Exit
  end
  object DateEdit2: TDateEdit
    Left = 465
    Top = 22
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 59
    Top = 44
    Width = 347
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsVendedor
    TabOrder = 2
    OnEnter = RxDBLookupCombo4Enter
  end
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 93
    Width = 776
    Height = 447
    ActivePage = RzTabSheet1
    Align = alBottom
    TabIndex = 1
    TabOrder = 9
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Produtos'
      object SMDBGrid3: TSMDBGrid
        Left = 2
        Top = 30
        Width = 768
        Height = 376
        DataSource = dsqProduto
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid3DblClick
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
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedido'
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Faturada'
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pendente'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cancelada'
            Width = 79
            Visible = True
          end>
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 407
        Width = 772
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para mostrar mais detalhes do produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 676
        Top = 3
        Width = 93
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 2
        OnClick = BitBtn5Click
      end
    end
    object RzTabSheet1: TRzTabSheet
      Caption = 'Pedidos Detalhado'
      OnEnter = RzTabSheet1Enter
      object RxLabel1: TRxLabel
        Left = 8
        Top = 1
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
        Top = 1
        Width = 141
        Height = 14
        DataField = 'Referencia'
        DataSource = dsqProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 78
        Top = 17
        Width = 581
        Height = 14
        DataField = 'Nome'
        DataSource = dsqProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel2: TRxLabel
        Left = 38
        Top = 17
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
      object ALed2: TALed
        Left = 683
        Top = 5
        Width = 16
        Height = 16
        TrueColor = clTeal
        FalseColor = clTeal
      end
      object Label9: TLabel
        Left = 703
        Top = 7
        Width = 51
        Height = 13
        Caption = 'Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 32
        Width = 772
        Height = 392
        Align = alBottom
        DataSource = dsqPedidoDet
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        FixedCols = 2
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 19
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do cliente'
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PedidoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'O.C (Ped.Cliente)'
            Width = 117
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumOS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Width = 118
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtReprogramacao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Entrega'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Pedido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cancelada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Preco'
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
            FieldName = 'VlrDesconto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desconto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Ped.Interno'
            Visible = True
            InplaceEditor = ieProgressbar
            TextEllipsis = teEnd
          end
          item
            Expanded = False
            FieldName = 'lkNomeVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PercComissao'
            Title.Alignment = taCenter
            Title.Caption = '% Comiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object RzTabSheet2: TRzTabSheet
      Caption = 'Pedidos Acumulado'
      object ALed3: TALed
        Left = 683
        Top = 5
        Width = 16
        Height = 16
        TrueColor = clTeal
        FalseColor = clTeal
      end
      object Label10: TLabel
        Left = 703
        Top = 7
        Width = 51
        Height = 13
        Caption = 'Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 8
        Width = 137
        Height = 17
        Caption = 'Separar os clientes'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 160
        Top = 8
        Width = 121
        Height = 17
        Caption = 'Separar as cores'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 32
        Width = 772
        Height = 392
        Align = alBottom
        DataSource = dsmPedAcumulado
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
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
        FixedCols = 2
        OnGetCellParams = SMDBGrid2GetCellParams
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
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 224
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cancelada'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeVendedor'
            Title.Caption = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total Pedido'
            Visible = True
          end>
      end
      object CheckBox3: TCheckBox
        Left = 288
        Top = 8
        Width = 137
        Height = 17
        Caption = 'Separar os vendedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object BitBtn2: TBitBtn
        Left = 464
        Top = 3
        Width = 177
        Height = 25
        Caption = 'Gera a consulta acumulada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn2Click
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Notas detalhada'
      OnEnter = TabSheet2Enter
      object RxLabel3: TRxLabel
        Left = 8
        Top = 1
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
      object RxLabel4: TRxLabel
        Left = 38
        Top = 17
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
      object DBText3: TDBText
        Left = 78
        Top = 17
        Width = 581
        Height = 14
        DataField = 'Nome'
        DataSource = dsqProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 78
        Top = 1
        Width = 141
        Height = 14
        DataField = 'Referencia'
        DataSource = dsqProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 34
        Width = 772
        Height = 390
        Align = alBottom
        DataSource = dsqNotaDet
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
        FixedCols = 3
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 15
        RowCount = 2
        Columns = <
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da cor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 183
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Visible = True
          end
          item
            Alignment = taCenter
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
            Title.Caption = '% Ipi'
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
            FieldName = 'VlrIpi'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Ipi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Icms'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Visible = True
          end>
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Geral por ordem de faturamento'
      object Label8: TLabel
        Left = 307
        Top = 4
        Width = 172
        Height = 26
        Caption = 'Consulta geral de todos os produtos,'#13#10'pela ordem de faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn4: TBitBtn
        Left = 634
        Top = 3
        Width = 137
        Height = 29
        Caption = 'Gera consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn4Click
      end
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 34
        Width = 772
        Height = 390
        Align = alBottom
        DataSource = dsmFaturamento
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
        ColCount = 2
        RowCount = 2
      end
      object ProgressBar2: TProgressBar
        Left = 8
        Top = 16
        Width = 239
        Height = 16
        TabOrder = 2
      end
    end
  end
  object DateEdit1: TDateEdit
    Left = 465
    Top = 1
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 465
    Top = 43
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 7
    Text = 'Ambos'
    Items.Strings = (
      'Pendentes'
      'Faturados'
      'Ambos')
  end
  object ProgressBar1: TProgressBar
    Left = 560
    Top = 80
    Width = 209
    Height = 16
    TabOrder = 10
  end
  object BitBtn1: TBitBtn
    Left = 576
    Top = 40
    Width = 81
    Height = 25
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 688
    Top = 40
    Width = 81
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object qPedidoDet: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.DtEmissao, Dbpedido.CodCliente,' +
        ' Dbcliente.Nome NomeCliente, Dbpedido.CodVendedor, Dbpedido.Perc' +
        'Comissao, Dbpedido.PedidoCliente, Dbpedidoitem.Item, Dbpedidoite' +
        'm.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade, Dbpedi' +
        'doitem.QtdPares, Dbpedidoitem.QtdParesFat, Dbpedidoitem.QtdPares' +
        'Rest, Dbpedidoitem.Preco, Dbpedidoitem.VlrTotal, Dbpedidoitem.Vl' +
        'rDesconto, Dbpedidoitem.QtdParesCanc, Dbpedidoitem.NumOS, Dbpedi' +
        'doitem.DtReprogramacao, Dbpedidoitem.Unidade, Dbpedido.Tipo,  db' +
        'Cliente.Fantasia'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      'ORDER BY Dbpedido.DtEmissao, NomeCliente'
      ' ')
    Left = 440
    Top = 281
    object qPedidoDetPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPedidoDetDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qPedidoDetCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedidoDetNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedidoDetCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object qPedidoDetPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object qPedidoDetPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qPedidoDetItem: TIntegerField
      FieldName = 'Item'
    end
    object qPedidoDetCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedidoDetCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qPedidoDetCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qPedidoDetQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qPedidoDetQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qPedidoDetQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPedidoDetPreco: TFloatField
      FieldName = 'Preco'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qPedidoDetVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qPedidoDetVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qPedidoDetQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qPedidoDetNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qPedidoDetDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qPedidoDetUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qPedidoDetTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qPedidoDetlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qPedidoDetlkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
    object qPedidoDetFantasia: TStringField
      FieldName = 'Fantasia'
    end
  end
  object dsqPedidoDet: TDataSource
    DataSet = qPedidoDet
    Left = 456
    Top = 281
  end
  object tCor: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'Dbcor.DB'
    Left = 530
    Top = 192
    object tCorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCorNome: TStringField
      FieldName = 'Nome'
      Size = 25
    end
  end
  object qPedidoAcum: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedidoitem.CodCor, Dbpedidoitem.CodGra' +
        'de, Dbproduto.Referencia, Dbpedidoitem.CodProduto, Dbproduto.Nom' +
        'e NomeProduto, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbped' +
        'idoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdParesRes' +
        't ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc,' +
        ' Dbpedido.CodVendedor, Dbpedido.CodCliente, Dbcliente.Nome NomeC' +
        'liente, dbCliente.Fantasia, SUM( Dbpedidoitem.VlrTotal ) VlrTota' +
        'l'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)'
      'WHERE (dbPedidoItem.CodProduto = 1)'
      
        'GROUP BY Dbpedido.Pedido, Dbpedidoitem.CodCor, Dbpedidoitem.CodG' +
        'rade, Dbproduto.Referencia, Dbproduto.Nome, Dbpedidoitem.CodProd' +
        'uto, Dbpedido.CodVendedor, Dbcliente.Nome, Dbpedido.CodCliente, ' +
        'Dbproduto.Nome, Dbcliente.Nome, dbCliente.Fantasia'
      ' '
      ' '
      ' ')
    Left = 529
    Top = 273
    object qPedidoAcumPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPedidoAcumCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qPedidoAcumCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qPedidoAcumCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedidoAcumQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qPedidoAcumQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qPedidoAcumQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPedidoAcumQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qPedidoAcumCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object qPedidoAcumCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedidoAcumNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedidoAcumlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qPedidoAcumlkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
    object qPedidoAcumFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedidoAcumVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
  end
  object mPedAcumulado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
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
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QtdPares'
        DataType = ftFloat
      end
      item
        Name = 'QtdParesRest'
        DataType = ftFloat
      end
      item
        Name = 'QtdParesFat'
        DataType = ftFloat
      end
      item
        Name = 'QtdParesCanc'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mPedAcumuladoNewRecord
    Left = 624
    Top = 265
    Data = {
      3D0100009619E0BD01000000180000000D0000000000030000003D010A436F64
      50726F6475746F040001000000000006436F64436F720400010000000000074E
      6F6D65436F720100490000000100055749445448020002001E000B436F645665
      6E6465646F7204000100000000000C4E6F6D6556656E6465646F720100490000
      0001000557494454480200020028000A436F64436C69656E7465040001000000
      00000B4E6F6D65436C69656E7465010049000000010005574944544802000200
      280008517464506172657308000400000000000C517464506172657352657374
      08000400000000000B517464506172657346617408000400000000000C517464
      506172657343616E63080004000000000008566C72546F74616C080004000000
      00000846616E7461736961010049000000010005574944544802000200140000
      00}
    object mPedAcumuladoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mPedAcumuladoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mPedAcumuladoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mPedAcumuladoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object mPedAcumuladoNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object mPedAcumuladoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mPedAcumuladoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mPedAcumuladoQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object mPedAcumuladoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object mPedAcumuladoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object mPedAcumuladoQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object mPedAcumuladoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mPedAcumuladoFantasia: TStringField
      FieldName = 'Fantasia'
    end
  end
  object dsmPedAcumulado: TDataSource
    DataSet = mPedAcumulado
    Left = 649
    Top = 265
  end
  object dsqPedidoAcum: TDataSource
    DataSet = qPedidoAcum
    Left = 545
    Top = 273
  end
  object qProduto: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedidoitem.CodProduto, Dbproduto.Referencia, Dbproduto.' +
        'Nome, SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.Q' +
        'tdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdParesRest ) QtdPa' +
        'resRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, SUM( Dbp' +
        'edidoitem.VlrTotal ) VlrTotal'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      
        'GROUP BY Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbproduto' +
        '.Referencia, Dbproduto.Nome'
      'ORDER BY Dbproduto.Referencia')
    Left = 161
    Top = 169
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
    object qProdutoQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qProdutoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qProdutoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qProdutoQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qProdutoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dsqProduto: TDataSource
    DataSet = qProduto
    Left = 177
    Top = 169
  end
  object qNotaDet: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.NumNota, Dbnotafiscal.Filial, Dbnotafiscal.D' +
        'tEmissao, Dbnotafiscalitens.CodProduto, Dbnotafiscalitens.CodCor' +
        ', Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd, Dbnotafiscal' +
        'itens.Icms, Dbnotafiscalitens.Ipi, Dbnotafiscalitens.VlrUnit, Db' +
        'notafiscalitens.VlrTotal, Dbnotafiscalitens.BaseIcms, Dbnotafisc' +
        'alitens.VlrIcms, Dbnotafiscalitens.VlrIpi, Dbnotafiscalitens.Nat' +
        'Oper, dbCliente.Nome NomeCliente'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (DbNotaFiscal.CodCli = Dbcliente.Codigo)')
    Left = 521
    Top = 361
    object qNotaDetNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumNota'
    end
    object qNotaDetFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNotaFiscal.DB".Filial'
    end
    object qNotaDetDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qNotaDetCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qNotaDetCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodCor'
    end
    object qNotaDetUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Unidade'
      Size = 3
    end
    object qNotaDetQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qNotaDetIcms: TFloatField
      FieldName = 'Icms'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Icms'
    end
    object qNotaDetIpi: TFloatField
      FieldName = 'Ipi'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Ipi'
    end
    object qNotaDetVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrUnit'
    end
    object qNotaDetVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qNotaDetBaseIcms: TFloatField
      FieldName = 'BaseIcms'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".BaseIcms'
    end
    object qNotaDetVlrIpi: TFloatField
      FieldName = 'VlrIpi'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrIpi'
    end
    object qNotaDetNatOper: TSmallintField
      FieldName = 'NatOper'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".NatOper'
    end
    object qNotaDetlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qNotaDetVlrIcms: TFloatField
      FieldName = 'VlrIcms'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrIcms'
    end
    object qNotaDetNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
  end
  object dsqNotaDet: TDataSource
    DataSet = qNotaDet
    Left = 545
    Top = 361
  end
  object qFaturamento: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.' +
        'PercDesc, dbNotaFiscal.CodCli, Min(dbNotaFiscal.DtEmissao) DtEmi' +
        'ssaoIni, Max(dbNotaFiscal.DtEmissao) DtEmissaoFin, dbNotaFiscalI' +
        'tens.CodProduto, dbNotaFiscalItens.CodCor, dbNotaFiscal.CodVende' +
        'dor, dbNotaFiscal.CodVendedor2'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      
        'WHERE   ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )'
      '   AND (dbNotaFiscalItens.GeraDupl = True)'
      
        'GROUP BY Dbnotafiscal.PercDesc, dbNotaFiscal.CodCli, dbNotaFisca' +
        'lItens.CodProduto, dbNotaFiscalItens.CodCor, dbNotaFiscal.CodVen' +
        'dedor, dbNotaFiscal.CodVendedor2'
      ' ')
    Left = 345
    Top = 429
    object qFaturamentoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qFaturamentoPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qFaturamentoCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qFaturamentoDtEmissaoIni: TDateField
      FieldName = 'DtEmissaoIni'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qFaturamentoDtEmissaoFin: TDateField
      FieldName = 'DtEmissaoFin'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qFaturamentoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qFaturamentoCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodCor'
    end
    object qFaturamentoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodVendedor'
    end
    object qFaturamentoCodVendedor2: TIntegerField
      FieldName = 'CodVendedor2'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodVendedor2'
    end
    object qFaturamentolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qFaturamentolkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
  end
  object mFaturamento: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = mFaturamentoNewRecord
    Left = 289
    Top = 433
    object mFaturamentoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mFaturamentoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mFaturamentoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mFaturamentoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mFaturamentoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mFaturamentoDtEmissaoNotaIni: TDateField
      FieldName = 'DtEmissaoNotaIni'
    end
    object mFaturamentoDtEmissaoNotaFin: TDateField
      FieldName = 'DtEmissaoNotaFin'
    end
    object mFaturamentoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mFaturamentoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object mFaturamentoNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object mFaturamentoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mFaturamentoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mFaturamentoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
  end
  object dsmFaturamento: TDataSource
    DataSet = mFaturamento
    Left = 305
    Top = 433
  end
  object tProduto: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbProduto.DB'
    Left = 353
    Top = 217
    object tProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object qFatGeral: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.' +
        'PercDesc'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      'WHERE   (Dbnotafiscalitens.CodProduto <> :CodProduto)  '
      
        '   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )  '
      '   AND (dbNotaFiscalItens.GeraDupl = True)'
      'GROUP BY Dbnotafiscal.PercDesc')
    Left = 633
    Top = 381
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qFatGeralVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
    object qFatGeralPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
  end
  object qFatProduto: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal, Dbnotafiscal.' +
        'PercDesc'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)  '
      'WHERE   (Dbnotafiscalitens.CodProduto = :CodProduto)  '
      
        '   AND  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )  '
      '   AND (dbNotaFiscalItens.GeraDupl = True)'
      'GROUP BY Dbnotafiscal.PercDesc')
    Left = 513
    Top = 445
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qFatProdutoPercDesc: TFloatField
      FieldName = 'PercDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".PercDesc'
    end
    object qFatProdutoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
    end
  end
end
