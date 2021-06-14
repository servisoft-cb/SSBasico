object fOrcamentoItens: TfOrcamentoItens
  Left = 11
  Top = 105
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o dos Itens'
  ClientHeight = 368
  ClientWidth = 777
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 325
    Width = 777
    Height = 4
    Shape = bsTopLine
    Style = bsRaised
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 99
    Top = 181
    Width = 261
    Height = 21
    DropDownCount = 8
    LookupField = 'CodCor'
    LookupDisplay = 'Nome'
    LookupSource = dsqCorRef
    TabOrder = 6
  end
  object StaticText6: TStaticText
    Left = 74
    Top = 185
    Width = 23
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Cor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object StaticText7: TStaticText
    Left = 53
    Top = 232
    Width = 44
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Entrega:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object Edit3: TEdit
    Left = 99
    Top = 228
    Width = 110
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 8
  end
  object Edit1: TEdit
    Left = 100
    Top = 204
    Width = 39
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 7
  end
  object StaticText5: TStaticText
    Left = 66
    Top = 208
    Width = 32
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Unid.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object BitBtn11: TBitBtn
    Left = 98
    Top = 107
    Width = 183
    Height = 26
    Hint = 'Digita os tamanho'
    Caption = 'Digitar a Grade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn11Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 99
    Top = 252
    Width = 55
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
    TabOrder = 9
  end
  object StaticText3: TStaticText
    Left = 64
    Top = 256
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
    TabOrder = 16
  end
  object StaticText4: TStaticText
    Left = 39
    Top = 280
    Width = 58
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Vlr.Unit'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 99
    Top = 276
    Width = 55
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnEnter = CurrencyEdit2Enter
  end
  object Edit4: TEdit
    Left = 139
    Top = 12
    Width = 566
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 80
    ParentFont = False
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 16
    Width = 128
    Height = 17
    Caption = 'Prod. N'#227'o Cadastrado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 100
    Top = 135
    Width = 234
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'CodGrade'
    LookupDisplay = 'lkNomeGrade'
    LookupSource = DM1.dsProdutoGrade
    TabOrder = 4
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 100
    Top = 158
    Width = 74
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'Posicao'
    LookupDisplay = 'lkTamanho'
    LookupSource = DM1.dsProdutoTam
    TabOrder = 5
    OnEnter = RxDBLookupCombo6Enter
  end
  object StaticText8: TStaticText
    Left = 62
    Top = 139
    Width = 36
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Grade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
  object StaticText9: TStaticText
    Left = 46
    Top = 162
    Width = 52
    Height = 17
    Alignment = taCenter
    BorderStyle = sbsSunken
    Caption = 'Tamanho:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object Panel1: TPanel
    Left = 0
    Top = 331
    Width = 777
    Height = 37
    Align = alBottom
    TabOrder = 12
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
  object StaticText11: TStaticText
    Left = 32
    Top = 304
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
    TabOrder = 20
    Visible = False
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 99
    Top = 300
    Width = 55
    Height = 21
    TabStop = False
    AutoSize = False
    DisplayFormat = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
  end
  object Panel2: TPanel
    Left = 1
    Top = 35
    Width = 361
    Height = 71
    BevelOuter = bvNone
    TabOrder = 2
    OnExit = Panel2Exit
    object SpeedButton9: TSpeedButton
      Left = 216
      Top = 20
      Width = 22
      Height = 24
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
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 100
      Top = 22
      Width = 117
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia;DescMaterial'
      LookupSource = DM1.dsProduto
      TabOrder = 1
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
    end
    object StaticText1: TStaticText
      Left = 39
      Top = 26
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
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 8
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
      TabOrder = 4
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 100
      Top = 46
      Width = 258
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsProduto
      TabOrder = 2
      OnChange = RxDBLookupCombo3Change
      OnEnter = RxDBLookupCombo3Enter
    end
    object StaticText10: TStaticText
      Left = 58
      Top = 4
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
      TabOrder = 5
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 100
      Top = 0
      Width = 77
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnExit = CurrencyEdit3Exit
      OnKeyDown = CurrencyEdit3KeyDown
    end
  end
  object RxDBFilter2: TRxDBFilter
    DataSource = DM1.dsProduto
    Filter.Strings = (
      'Inativo <> True')
    Left = 296
    Top = 224
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
    Left = 257
    Top = 179
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
      Size = 35
    end
  end
  object dsqCorRef: TDataSource
    DataSet = qCorRef
    Left = 272
    Top = 179
  end
end
