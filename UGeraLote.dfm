object fGeraLote: TfGeraLote
  Left = 8
  Top = 47
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de lotes'
  ClientHeight = 451
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 35
    Width = 72
    Height = 13
    Caption = 'Pedido Interno:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 75
    Width = 777
    Height = 2
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 211
    Top = 26
    Width = 108
    Height = 26
    Caption = 'Informe o n'#186' do Pedido'#13#10'e pressione ENTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 59
    Top = 11
    Width = 23
    Height = 13
    Caption = 'Filial:'
  end
  object Shape1: TShape
    Left = -1
    Top = 370
    Width = 783
    Height = 7
    Brush.Color = clBlue
  end
  object ALed1: TALed
    Left = 491
    Top = 52
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clTeal
  end
  object Label7: TLabel
    Left = 511
    Top = 54
    Width = 42
    Height = 13
    Caption = 'Faturado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed2: TALed
    Left = 571
    Top = 52
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clRed
  end
  object Label4: TLabel
    Left = 591
    Top = 54
    Width = 51
    Height = 13
    Caption = 'Cancelado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 679
    Top = 54
    Width = 76
    Height = 13
    Caption = 'N'#227'o gerado lote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed3: TALed
    Left = 659
    Top = 52
    Width = 16
    Height = 16
    TrueColor = clTeal
  end
  object Label6: TLabel
    Left = 11
    Top = 57
    Width = 71
    Height = 13
    Caption = 'Pedido Cliente:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 84
    Top = 27
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 1
    OnChange = CurrencyEdit1Change
    OnKeyDown = CurrencyEdit1KeyDown
  end
  object BitBtn2: TBitBtn
    Left = 706
    Top = 7
    Width = 71
    Height = 34
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object SMDBGrid1: TSMDBGrid
    Left = 2
    Top = 80
    Width = 776
    Height = 272
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
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
        FieldName = 'Item'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 27
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 10930928
        Expanded = False
        FieldName = 'QtdLote'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Lotes'
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkReferencia'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPares'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumOS'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkCor'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtReprogramacao'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Entrega Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeProduto'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkDescMaterial'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Desdobramento'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Unidade'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tamanho'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 353
    Width = 781
    Height = 17
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Duplo clique para chamar a gera'#231#227'o dos lotes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 84
    Top = 3
    Width = 343
    Height = 21
    DropDownCount = 8
    DropDownWidth = 600
    LookupField = 'Codigo'
    LookupDisplay = 'NomeInterno;Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
  end
  object BitBtn3: TBitBtn
    Left = 434
    Top = 7
    Width = 168
    Height = 34
    Hint = 'Consulta pedidos n'#227'o gerados lotes'
    Caption = 'Cons.Pedidos N'#227'o Gerados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn3Click
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000070000000007777777000000070FFFFFFF07777700000000070F7
      7777F07777000000000070F77777F07770007000000070F77780008700077000
      000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
      08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
      EFEFFF0770777000000077780000000708777000000077770077777807777000
      0000777770077700777770000000777777800087777770000000777777777777
      777770000000}
  end
  object VDBGrid1: TVDBGrid
    Left = 1
    Top = 380
    Width = 781
    Height = 61
    Color = clInfoBk
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    TitlesWidth = 70
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'lkTamanho'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
      end
      item
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end>
  end
  object BitBtn1: TBitBtn
    Left = 602
    Top = 7
    Width = 103
    Height = 34
    Hint = 'Consulta pedidos n'#227'o gerados lotes'
    Caption = 'Cons. Lotes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BitBtn1Click
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDD0000000DDDDD000DDDDD000D0000000DDDDD070DDDDD070D0000000DDDD
      D0008DDD8000D0000000DDDDD00000000000D0000000D444407000070000D000
      0000D4FFF07000070000D0000000D4F8800000000000D0000000D4FFFF000070
      000DD0000000D4F88F80088F00DDD0000000D4FFFFF00FFF00DDD0000000D4F8
      8F80088F00DDD0000000D4FFFFFFFFFF4DDDD0000000D444444444444DDDD000
      0000D474474474474DDDD0000000D444444444444DDDD0000000DDDDDDDDDDDD
      DDDDD0000000}
  end
  object Edit1: TEdit
    Left = 84
    Top = 49
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnChange = Edit1Change
    OnKeyDown = Edit1KeyDown
  end
  object BitBtn4: TBitBtn
    Left = 312
    Top = 48
    Width = 169
    Height = 25
    Caption = 'Gera Lotes do pedido completo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn4Click
  end
end
