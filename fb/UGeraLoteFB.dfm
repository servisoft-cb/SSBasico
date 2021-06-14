object fGeraLoteFB: TfGeraLoteFB
  Left = 74
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de (Lote/Tal'#227'o/OS)'
  ClientHeight = 501
  ClientWidth = 856
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
    Width = 856
    Height = 77
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 22
      Width = 72
      Height = 13
      Caption = 'Pedido Interno:'
    end
    object Label2: TLabel
      Left = 204
      Top = 9
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
      Left = 8
      Top = 48
      Width = 633
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 77
      Top = 14
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnChange = CurrencyEdit1Change
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object BitBtn2: TBitBtn
      Left = 762
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
      TabOrder = 1
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
    object BitBtn1: TBitBtn
      Left = 658
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
      TabOrder = 2
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
    object BitBtn4: TBitBtn
      Left = 328
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Gera Lotes do pedido completo'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 77
    Width = 856
    Height = 424
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Itens do Pedido Para Gera'#231#227'o'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 401
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Pedidos Pendentes (N'#227'o foram gerados Tal'#227'o/OS)'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 852
        Height = 41
        Align = alTop
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 0
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888000000080000000008888888000000080FFFFFFF08888800000000080F8
            8888F08888000000000080F88888F08880008000000080F88870007800088000
            000080F8800FFF0000888000000080F807FFFF0708888000000080F70E000F08
            07888000000080F0EFEFEF0880888000000080F0F0000F088088800000008000
            EFEFFF0880888000000088870000000807888000000088880088888708888000
            0000888880088800888880000000888888700078888880000000888888888888
            888880000000}
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 41
        Width = 852
        Height = 360
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
  end
end
