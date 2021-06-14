object fPedidoItem: TfPedidoItem
  Left = 66
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o dos Itens'
  ClientHeight = 462
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton10: TSpeedButton
    Left = 196
    Top = 208
    Width = 23
    Height = 22
    Hint = 'Abre o formul'#225'rio da situa'#231#227'o tribut'#225'ria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      0400000000007800000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777700000
      000077777770FFFFFFF077777770F00F00F077777770FFFFFFF077777770F00F
      00F077777770FFFFFFF077777774444444447700007444444444770BB0777777
      7777000BB000777777770BBBBBB0777777770BBBBBB077777777000BB0007777
      7777770BB077777777777700007777777777}
    Layout = blGlyphTop
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton10Click
  end
  object Panel2: TPanel
    Left = 16
    Top = 0
    Width = 577
    Height = 68
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel2Exit
    object SpeedButton9: TSpeedButton
      Left = 238
      Top = 24
      Width = 25
      Height = 22
      Hint = 'Abre o formul'#225'rio de produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777700000
        000077777770FFFFFFF077777770F00F00F077777770FFFFFFF077777770F00F
        00F077777770FFFFFFF077777774444444447700007444444444770BB0777777
        7777000BB000777777770BBBBBB0777777770BBBBBB077777777000BB0007777
        7777770BB077777777777700007777777777}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton9Click
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 99
      Top = 3
      Width = 72
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = CurrencyEdit3Exit
      OnKeyDown = CurrencyEdit3KeyDown
    end
    object StaticText10: TStaticText
      Left = 57
      Top = 7
      Width = 40
      Height = 17
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object StaticText1: TStaticText
      Left = 38
      Top = 29
      Width = 59
      Height = 17
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object StaticText8: TStaticText
      Left = 7
      Top = 50
      Width = 90
      Height = 17
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Nome do Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object RxDBLookupCombo10: TRxDBLookupCombo
      Left = 99
      Top = 46
      Width = 478
      Height = 21
      DropDownCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsProduto
      ParentFont = False
      TabOrder = 2
      OnChange = RxDBLookupCombo10Change
      OnEnter = RxDBLookupCombo10Enter
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 99
      Top = 24
      Width = 137
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Referencia'
      ListSource = DM1.dsProduto
      TabOrder = 1
      OnEnter = RzDBLookupComboBox1Enter
      OnExit = RzDBLookupComboBox1Exit
      TabOnEnter = True
    end
  end
  object StaticText5: TStaticText
    Left = 41
    Top = 167
    Width = 72
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Dt. Embarque:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
  object DateEdit1: TDateEdit
    Left = 115
    Top = 163
    Width = 101
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
  end
  object StaticText3: TStaticText
    Left = 80
    Top = 190
    Width = 33
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Qtde.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 115
    Top = 186
    Width = 78
    Height = 21
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '0.000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object RadioGroup3: TRadioGroup
    Left = 563
    Top = 95
    Width = 30
    Height = 43
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Produ'#231#227'o'
      'Venda')
    ParentFont = False
    TabOrder = 16
    Visible = False
  end
  object Edit4: TEdit
    Left = 114
    Top = 254
    Width = 78
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object StaticText7: TStaticText
    Left = 70
    Top = 258
    Width = 42
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'F'#225'brica:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    Visible = False
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 115
    Top = 231
    Width = 78
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnEnter = CurrencyEdit2Enter
    OnExit = CurrencyEdit2Exit
  end
  object StaticText4: TStaticText
    Left = 74
    Top = 235
    Width = 39
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'V.Unit.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
  end
  object Edit5: TEdit
    Left = 115
    Top = 118
    Width = 231
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 3
    OnExit = Edit5Exit
  end
  object StaticText6: TStaticText
    Left = 12
    Top = 122
    Width = 101
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'N'#186' da Remessa/OS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 115
    Top = 95
    Width = 231
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookupField = 'CodCor'
    LookupDisplay = 'Nome'
    LookupSource = dsqCorRef
    ParentFont = False
    TabOrder = 2
    OnEnter = RxDBLookupCombo3Enter
    OnExit = RxDBLookupCombo3Exit
  end
  object StaticText9: TStaticText
    Left = 44
    Top = 98
    Width = 69
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Nome da Cor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
  end
  object RxDBLookupCombo12: TRxDBLookupCombo
    Left = 115
    Top = 209
    Width = 78
    Height = 21
    DropDownCount = 8
    DropDownWidth = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookupField = 'Codigo'
    LookupDisplay = 'CodSit;SitTributaria'
    LookupSource = DM1.dsSitTributaria
    ParentFont = False
    TabOrder = 8
    OnDropDown = RxDBLookupCombo12Enter
    OnEnter = RxDBLookupCombo12Enter
  end
  object StaticText2: TStaticText
    Left = 75
    Top = 213
    Width = 38
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'S.Trib.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object BitBtn12: TBitBtn
    Left = 115
    Top = 68
    Width = 233
    Height = 25
    Hint = 'Informa a grade'
    Caption = 'Digitar a Grade '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn12Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 425
    Width = 646
    Height = 37
    Align = alBottom
    TabOrder = 17
    object SpeedButton7: TSpeedButton
      Left = 337
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Cancela a inser'#231#227'o do produto'
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        B2050000424DB205000000000000360400002800000012000000130000000100
        0800000000007C010000C30E0000C30E00000001000000000000000000007B00
        0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
        730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
        840008528400105284002963840008528C00085A8C00185A8C0018638C002963
        8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
        9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
        A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
        BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
        BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
        CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
        D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
        DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
        DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
        EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
        FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
        FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393939393939
        3939393939393939393939690000396939393939393939393939393939396939
        0000396969393910101010101010101010693939000039696969000000000000
        0000000069693939000039396969007879797978797979696939393900003939
        3969697903030303030379691039393900003939396969697978797979786969
        1039393900003939393969696903030369696900103939390000393939390069
        6969797869697900103939390000393939390079036969696903790010393939
        0000393939390079796969696978790010393939000039393939007903696969
        6900000010393939000039393939007869697900696979001039393900003939
        3939006969697900696969693939393900003939396969697978790079003969
        6939393900003969696969000000000000393939696939390000396969693939
        3939393939393939393969390000393939393939393939393939393939393969
        00003939393939393939393939393939393939390000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton7Click
    end
    object BitBtn6: TBitBtn
      Left = 219
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Confirma a inser'#231#227'o do produto'
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
    object BitBtn1: TBitBtn
      Left = 455
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Fecha a janela atual'
      Caption = '(F10) Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
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
  end
  object BitBtn8: TBitBtn
    Left = 496
    Top = 4
    Width = 131
    Height = 32
    Hint = 'Abre a tabela de pre'#231'o'
    Caption = 'Tabela de Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
    Visible = False
    OnClick = BitBtn8Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object StaticText13: TStaticText
    Left = 449
    Top = 159
    Width = 63
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = '% Comiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    Visible = False
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 514
    Top = 155
    Width = 78
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 14
    Visible = False
  end
  object StaticText14: TStaticText
    Left = 303
    Top = 235
    Width = 31
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    Visible = False
  end
  object CurrencyEdit5: TCurrencyEdit
    Left = 336
    Top = 231
    Width = 73
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
    Visible = False
  end
  object StaticText15: TStaticText
    Left = 231
    Top = 190
    Width = 47
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Unidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 29
  end
  object CurrencyEdit6: TCurrencyEdit
    Left = 514
    Top = 178
    Width = 78
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 15
    Visible = False
  end
  object StaticText16: TStaticText
    Left = 441
    Top = 182
    Width = 72
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = '% Comiss'#227'o 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
    Visible = False
  end
  object StaticText17: TStaticText
    Left = 57
    Top = 281
    Width = 56
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Obs.Tal'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 31
    Visible = False
  end
  object Edit2: TEdit
    Left = 115
    Top = 277
    Width = 326
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 11
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 194
    Top = 231
    Width = 75
    Height = 22
    Caption = 'Altera Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 32
    TabStop = False
    OnClick = BitBtn2Click
  end
  object StaticText19: TStaticText
    Left = 79
    Top = 145
    Width = 34
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Plano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
  end
  object Edit6: TEdit
    Left = 115
    Top = 141
    Width = 231
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 4
    OnExit = Edit5Exit
  end
  object RxDBLookupCombo15: TRxDBLookupCombo
    Left = 279
    Top = 186
    Width = 66
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookupField = 'Unidade'
    LookupDisplay = 'Unidade'
    LookupSource = DM1.dsUnidade
    ParentFont = False
    TabOrder = 7
  end
  object StaticText11: TStaticText
    Left = 3
    Top = 303
    Width = 110
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Dt. Produ'#231#227'o/F'#225'brica:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
  end
  object DateEdit2: TDateEdit
    Left = 115
    Top = 299
    Width = 101
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 12
  end
  object CheckBox1: TCheckBox
    Left = 115
    Top = 328
    Width = 97
    Height = 17
    Caption = 'Gerar Tal'#227'o/OS'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object qCorRef: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT dbProdutoCor.CodCor, Dbcor.Nome'
      'FROM dbProdutoCor'
      '   INNER JOIN "Dbcor.db" Dbcor'
      '   ON  (Dbcor.Codigo = dbProdutoCor.CodCor)  '
      'WHERE  (dbProdutoCor.CodProduto = :CodProd)'
      '      AND  (dbProdutoCor.Inativo = False)'
      'ORDER BY Dbcor.Nome')
    Left = 425
    Top = 78
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProd'
        ParamType = ptUnknown
        Value = 0
      end>
    object qCorRefCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbProdutoCor.DB".CodCor'
    end
    object qCorRefNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCor.DB".Nome'
      Size = 15
    end
  end
  object dsqCorRef: TDataSource
    DataSet = qCorRef
    Left = 440
    Top = 78
  end
  object RxDBFilter2: TRxDBFilter
    DataSource = DM1.dsProduto
    Filter.Strings = (
      '(Inativo <> True) and (ProdMat = '#39'P'#39')')
    Left = 384
    Top = 83
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsProdutoGrade
    Filter.Strings = (
      'Inativo <> True')
    Left = 504
    Top = 88
  end
  object tNEntradaItens2: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbNEntradaItens.DB'
    Left = 520
    Top = 224
    object tNEntradaItens2Filial: TIntegerField
      FieldName = 'Filial'
    end
    object tNEntradaItens2CodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tNEntradaItens2NumNEntr: TIntegerField
      FieldName = 'NumNEntr'
    end
    object tNEntradaItens2NumPedCliente: TStringField
      FieldName = 'NumPedCliente'
    end
  end
  object qCombinacao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodCombinacao, Nome'
      'FROM dbprodutocomb Dbprodutocomb'
      'WHERE   (CodProduto = :CodProduto)  '
      '   AND  (CodCor = :CodCor)  '
      'ORDER BY CodCombinacao')
    Left = 568
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptUnknown
      end>
    object qCombinacaoCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
      Origin = 'TABELAS."dbProdutoComb.DB".CodCombinacao'
    end
    object qCombinacaoNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbProdutoComb.DB".Nome'
      Size = 30
    end
  end
  object dsqCombinacao: TDataSource
    DataSet = qCombinacao
    Left = 592
    Top = 104
  end
end
