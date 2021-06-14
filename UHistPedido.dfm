object fHistPedido: TfHistPedido
  Left = 8
  Top = 92
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fHistPedido'
  ClientHeight = 598
  ClientWidth = 995
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 53
      Top = 7
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label1: TLabel
      Left = 41
      Top = 31
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label14: TLabel
      Left = 38
      Top = 52
      Width = 38
      Height = 13
      Caption = 'F'#225'brica:'
    end
    object Label15: TLabel
      Left = 43
      Top = 74
      Width = 33
      Height = 13
      Caption = 'Marca:'
    end
    object Label16: TLabel
      Left = 3
      Top = 96
      Width = 73
      Height = 13
      Caption = 'Representante:'
    end
    object RxLabel7: TRxLabel
      Left = 464
      Top = 10
      Width = 88
      Height = 13
      Caption = 'Dt.Emiss'#227'o Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 654
      Top = 10
      Width = 27
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 455
      Top = 31
      Width = 97
      Height = 13
      Caption = 'Dt.Embarque Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 654
      Top = 31
      Width = 27
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 468
      Top = 54
      Width = 84
      Height = 13
      Caption = 'Dt.F'#225'brica Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 654
      Top = 54
      Width = 27
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 644
      Top = 74
      Width = 37
      Height = 13
      Caption = 'Op'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 619
      Top = 96
      Width = 62
      Height = 13
      Caption = 'Ordenar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 78
      Top = 0
      Width = 334
      Height = 21
      DropDownCount = 8
      DropDownWidth = 600
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno;Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 78
      Top = 23
      Width = 334
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'Nome;CgcCpf'
      LookupSource = DM1.dsCliente
      TabOrder = 1
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 78
      Top = 44
      Width = 334
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqFabrica
      TabOrder = 2
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 78
      Top = 66
      Width = 334
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqRepresentada
      TabOrder = 3
    end
    object RxDBLookupCombo7: TRxDBLookupCombo
      Left = 78
      Top = 88
      Width = 334
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsVendedor
      TabOrder = 4
    end
    object DateEdit3: TDateEdit
      Left = 552
      Top = 2
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object DateEdit4: TDateEdit
      Left = 682
      Top = 2
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
    object DateEdit1: TDateEdit
      Left = 552
      Top = 23
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object DateEdit2: TDateEdit
      Left = 682
      Top = 23
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object DateEdit5: TDateEdit
      Left = 552
      Top = 46
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object DateEdit6: TDateEdit
      Left = 682
      Top = 46
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
    end
    object ComboBox1: TComboBox
      Left = 682
      Top = 66
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = 'Pendente'
      Items.Strings = (
        'Pendente'
        'Faturado'
        'Ambos')
    end
    object ComboBox2: TComboBox
      Left = 682
      Top = 88
      Width = 156
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = 'Pedido Interno'
      Items.Strings = (
        'Pedido Interno'
        'Pedido Cliente'
        'F'#225'brica'
        'Marca'
        'Cliente'
        'Representante'
        'Data Emiss'#227'o'
        'Data Entrega'
        'Data F'#225'brica')
    end
    object BitBtn3: TBitBtn
      Left = 898
      Top = 5
      Width = 90
      Height = 26
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn3Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 113
    Width = 995
    Height = 485
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Pedido'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 991
        Height = 34
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 9
          Top = 5
          Width = 90
          Height = 26
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 98
          Top = 5
          Width = 90
          Height = 26
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object BitBtn7: TBitBtn
          Left = 187
          Top = 5
          Width = 90
          Height = 26
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn7Click
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 34
        Width = 991
        Height = 428
        Align = alClient
        DataSource = dsmPedido
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
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 21
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Ped.Interno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PedidoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeVendedor'
            Title.Alignment = taCenter
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFabrica'
            Title.Alignment = taCenter
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeRepresentada'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 181
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPedido'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPendente'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdFaturado'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalFabrica'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmbarque'
            Title.Alignment = taCenter
            Title.Caption = 'Data Embarque'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtProducao'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCondPgto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Condi'#231#227'o de Pagamento'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCliente'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodVendedor'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodFabrica'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodRepresentada'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCondPgto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cond. Pgto'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Marca/F'#225'brica'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 991
        Height = 57
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object RxLabel6: TRxLabel
          Left = 643
          Top = 36
          Width = 62
          Height = 13
          Caption = 'Ordenar Por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn4: TBitBtn
          Left = 9
          Top = 5
          Width = 90
          Height = 26
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object GroupBox1: TGroupBox
          Left = 360
          Top = 2
          Width = 276
          Height = 52
          Caption = ' Incluir '
          TabOrder = 1
          object ckDtEmissao: TCheckBox
            Left = 76
            Top = 16
            Width = 94
            Height = 17
            Caption = 'Data Emiss'#227'o'
            TabOrder = 0
          end
          object ckDtEntregue: TCheckBox
            Left = 76
            Top = 34
            Width = 94
            Height = 17
            Caption = 'Data Entregue'
            TabOrder = 1
          end
          object ckDtFabrica: TCheckBox
            Left = 180
            Top = 16
            Width = 93
            Height = 17
            Caption = 'Data F'#225'brica'
            TabOrder = 2
          end
          object ckRepresentante: TCheckBox
            Left = 180
            Top = 34
            Width = 93
            Height = 17
            Caption = 'Representante'
            TabOrder = 3
          end
          object ckFabrica: TCheckBox
            Left = 6
            Top = 16
            Width = 61
            Height = 17
            Caption = 'F'#225'brica'
            TabOrder = 4
          end
          object ckMarca: TCheckBox
            Left = 6
            Top = 34
            Width = 61
            Height = 17
            Caption = 'Marca'
            TabOrder = 5
          end
        end
        object BitBtn6: TBitBtn
          Left = 99
          Top = 5
          Width = 90
          Height = 26
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn6Click
        end
        object ComboBox3: TComboBox
          Left = 706
          Top = 28
          Width = 156
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 3
          Text = 'Marca'
          Items.Strings = (
            'F'#225'brica'
            'Marca'
            'Representante'
            'Data Emiss'#227'o'
            'Data Entrega'
            'Data F'#225'brica')
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 57
        Width = 991
        Height = 405
        Align = alClient
        DataSource = dsMarcaFabricaRed
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
            FieldName = 'NomeRepresentada'
            Title.Alignment = taCenter
            Width = 214
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'Nome F'#225'brica'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPendente'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdFaturada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total F'#225'brica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtEntregue'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entregue'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'Data F'#225'brica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeVendedor'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodRepresentada'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. F'#225'brica'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodVendedor'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'Select Pedido, PedidoCliente, DtEmissao, DtEmbarque, DtProducao,' +
        ' CodCliente, QtdPares, QtdParesRest, QtdParesFat, VlrTotalFabric' +
        'a, PercFabrica, VlrTotal, CodFabrica, CodRepresentada, CodVended' +
        'or, PercComissao, CodCondPgto '
      'from dbPedido.db'
      'where Cancelado = False'
      ' '
      ' ')
    Left = 513
    Top = 293
    object qPedidoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPedidoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qPedidoDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
    end
    object qPedidoDtProducao: TDateField
      FieldName = 'DtProducao'
    end
    object qPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedidoQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qPedidoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPedidoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qPedidoVlrTotalFabrica: TFloatField
      FieldName = 'VlrTotalFabrica'
    end
    object qPedidoPercFabrica: TFloatField
      FieldName = 'PercFabrica'
    end
    object qPedidoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qPedidoCodFabrica: TIntegerField
      FieldName = 'CodFabrica'
    end
    object qPedidoCodRepresentada: TIntegerField
      FieldName = 'CodRepresentada'
    end
    object qPedidoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object qPedidoPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object qPedidoCodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
  end
  object mPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 20
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
        Name = 'CodVendedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeVendedor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodFabrica'
        DataType = ftInteger
      end
      item
        Name = 'NomeFabrica'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodRepresentada'
        DataType = ftInteger
      end
      item
        Name = 'NomeRepresentada'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QtdPedido'
        DataType = ftInteger
      end
      item
        Name = 'QtdPendente'
        DataType = ftInteger
      end
      item
        Name = 'QtdFaturado'
        DataType = ftInteger
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotalFabrica'
        DataType = ftFloat
      end
      item
        Name = 'VlrPendente'
        DataType = ftFloat
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'DtEmbarque'
        DataType = ftDate
      end
      item
        Name = 'DtProducao'
        DataType = ftDate
      end
      item
        Name = 'CodCondPgto'
        DataType = ftInteger
      end
      item
        Name = 'NomeCondPgto'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 577
    Top = 261
    Data = {
      070200009619E0BD010000001800000015000000000003000000070206506564
      69646F04000100000000000D50656469646F436C69656E746501004900000001
      000557494454480200020014000A436F64436C69656E74650400010000000000
      0B4E6F6D65436C69656E74650100490000000100055749445448020002002800
      0B436F6456656E6465646F7204000100000000000C4E6F6D6556656E6465646F
      7201004900000001000557494454480200020028000A436F6446616272696361
      04000100000000000B4E6F6D6546616272696361010049000000010005574944
      54480200020028000F436F64526570726573656E746164610400010000000000
      104E6F6D65526570726573656E74616461010049000000010005574944544802
      00020028000951746450656469646F04000100000000000B51746450656E6465
      6E746504000100000000000B517464466174757261646F040001000000000008
      566C72546F74616C08000400000000000F566C72546F74616C46616272696361
      08000400000000000B566C7250656E64656E7465080004000000000009447445
      6D697373616F04000600000000000A4474456D62617271756504000600000000
      000A447450726F647563616F04000600000000000B436F64436F6E645067746F
      04000100000000000C4E6F6D65436F6E645067746F0100490000000100055749
      4454480200020028000000}
    object mPedidoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mPedidoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object mPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mPedidoCodVendedor: TIntegerField
      DisplayLabel = 'C'#243'd. Representante'
      FieldName = 'CodVendedor'
    end
    object mPedidoNomeVendedor: TStringField
      DisplayLabel = 'Nome Representante'
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object mPedidoCodFabrica: TIntegerField
      DisplayLabel = 'C'#243'd. F'#225'brica'
      FieldName = 'CodFabrica'
    end
    object mPedidoNomeFabrica: TStringField
      DisplayLabel = 'Nome F'#225'brica'
      FieldName = 'NomeFabrica'
      Size = 40
    end
    object mPedidoCodRepresentada: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'CodRepresentada'
    end
    object mPedidoNomeRepresentada: TStringField
      DisplayLabel = 'Nome Marca'
      FieldName = 'NomeRepresentada'
      Size = 40
    end
    object mPedidoQtdPedido: TIntegerField
      DisplayLabel = 'Qtd. Pedido'
      FieldName = 'QtdPedido'
    end
    object mPedidoQtdPendente: TIntegerField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QtdPendente'
    end
    object mPedidoQtdFaturado: TIntegerField
      DisplayLabel = 'Qtd. Faturado'
      FieldName = 'QtdFaturado'
    end
    object mPedidoVlrTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VlrTotal'
    end
    object mPedidoVlrTotalFabrica: TFloatField
      DisplayLabel = 'Vlr. Total F'#225'brica'
      FieldName = 'VlrTotalFabrica'
    end
    object mPedidoVlrPendente: TFloatField
      FieldName = 'VlrPendente'
    end
    object mPedidoDtEmissao: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DtEmissao'
    end
    object mPedidoDtEmbarque: TDateField
      DisplayLabel = 'Data Entregue'
      FieldName = 'DtEmbarque'
    end
    object mPedidoDtProducao: TDateField
      DisplayLabel = 'Data F'#225'brica'
      FieldName = 'DtProducao'
    end
    object mPedidoCodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
    object mPedidoNomeCondPgto: TStringField
      FieldName = 'NomeCondPgto'
      Size = 40
    end
  end
  object dsmPedido: TDataSource
    DataSet = mPedido
    Left = 609
    Top = 261
  end
  object mMarcaFabricaRed: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodChave'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CodRepresentada'
        DataType = ftInteger
      end
      item
        Name = 'NomeRepresentada'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodFabrica'
        DataType = ftInteger
      end
      item
        Name = 'NomeFabrica'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QtdPedido'
        DataType = ftInteger
      end
      item
        Name = 'QtdPendente'
        DataType = ftInteger
      end
      item
        Name = 'QtdFaturada'
        DataType = ftInteger
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotalFabrica'
        DataType = ftFloat
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'DtEntregue'
        DataType = ftDate
      end
      item
        Name = 'DtFabrica'
        DataType = ftDate
      end
      item
        Name = 'CodVendedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeVendedor'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mMarcaFabricaRedNewRecord
    Left = 577
    Top = 293
    Data = {
      760100009619E0BD01000000180000000F000000000003000000760108436F64
      4368617665010049000000010005574944544802000200C8000F436F64526570
      726573656E746164610400010000000000104E6F6D65526570726573656E7461
      646101004900000001000557494454480200020028000A436F64466162726963
      6104000100000000000B4E6F6D65466162726963610100490000000100055749
      4454480200020028000951746450656469646F04000100000000000B51746450
      656E64656E746504000100000000000B51746446617475726164610400010000
      00000008566C72546F74616C08000400000000000F566C72546F74616C466162
      726963610800040000000000094474456D697373616F04000600000000000A44
      74456E7472656775650400060000000000094474466162726963610400060000
      0000000B436F6456656E6465646F7204000100000000000C4E6F6D6556656E64
      65646F7201004900000001000557494454480200020028000000}
    object mMarcaFabricaRedCodChave: TStringField
      FieldName = 'CodChave'
      Size = 200
    end
    object mMarcaFabricaRedCodRepresentada: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'CodRepresentada'
    end
    object mMarcaFabricaRedNomeRepresentada: TStringField
      DisplayLabel = 'Nome Marca'
      FieldName = 'NomeRepresentada'
      Size = 40
    end
    object mMarcaFabricaRedCodFabrica: TIntegerField
      FieldName = 'CodFabrica'
    end
    object mMarcaFabricaRedNomeFabrica: TStringField
      FieldName = 'NomeFabrica'
      Size = 40
    end
    object mMarcaFabricaRedQtdPedido: TIntegerField
      FieldName = 'QtdPedido'
    end
    object mMarcaFabricaRedQtdPendente: TIntegerField
      FieldName = 'QtdPendente'
    end
    object mMarcaFabricaRedQtdFaturada: TIntegerField
      FieldName = 'QtdFaturada'
    end
    object mMarcaFabricaRedVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
    object mMarcaFabricaRedVlrTotalFabrica: TFloatField
      FieldName = 'VlrTotalFabrica'
      DisplayFormat = '0.00'
    end
    object mMarcaFabricaRedDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mMarcaFabricaRedDtEntregue: TDateField
      FieldName = 'DtEntregue'
    end
    object mMarcaFabricaRedDtFabrica: TDateField
      FieldName = 'DtFabrica'
    end
    object mMarcaFabricaRedCodVendedor: TIntegerField
      DisplayLabel = 'C'#243'd. Representante'
      FieldName = 'CodVendedor'
    end
    object mMarcaFabricaRedNomeVendedor: TStringField
      DisplayLabel = 'Nome Representante'
      FieldName = 'NomeVendedor'
      Size = 40
    end
  end
  object dsMarcaFabricaRed: TDataSource
    DataSet = mMarcaFabricaRed
    Left = 609
    Top = 293
  end
end
