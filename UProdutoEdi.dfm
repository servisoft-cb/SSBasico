object fProdutoEDI: TfProdutoEDI
  Left = 178
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Digita'#231#227'o do produto (EDI)'
  ClientHeight = 170
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 34
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 5
    Top = 58
    Width = 112
    Height = 13
    Caption = 'C'#243'd.Produto no Cliente:'
  end
  object Label3: TLabel
    Left = 85
    Top = 82
    Width = 32
    Height = 13
    Caption = 'Grade:'
  end
  object Label4: TLabel
    Left = 69
    Top = 105
    Width = 48
    Height = 13
    Caption = 'Tamanho:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 128
    Width = 537
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 90
    Top = 11
    Width = 24
    Height = 13
    Caption = 'Cnpj:'
  end
  object SpeedButton1: TSpeedButton
    Left = 410
    Top = 23
    Width = 22
    Height = 22
    Hint = 'Abre o formul'#225'rio de cadastro de grupos'
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
      000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
      00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
      8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
      8888880BB088888888888800008888888888}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object RxDBLookupCombo11: TRxDBLookupCombo
    Left = 120
    Top = 26
    Width = 289
    Height = 21
    DropDownCount = 8
    DropDownWidth = 300
    Color = clInfoBk
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;CgcCpf'
    LookupSource = DM1.dsCliente
    TabOrder = 2
    OnEnter = RxDBLookupCombo11Enter
    OnExit = RxDBLookupCombo11Exit
  end
  object Edit3: TEdit
    Left = 120
    Top = 50
    Width = 116
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    MaxLength = 15
    TabOrder = 3
  end
  object RxDBLookupCombo13: TRxDBLookupCombo
    Left = 120
    Top = 74
    Width = 150
    Height = 21
    DropDownCount = 8
    DropDownWidth = 300
    Color = clInfoBk
    LookupField = 'CodGrade'
    LookupDisplay = 'lkNomeGrade'
    LookupSource = DM1.dsProdutoGrade
    TabOrder = 4
  end
  object RxDBLookupCombo14: TRxDBLookupCombo
    Left = 120
    Top = 97
    Width = 94
    Height = 21
    DropDownCount = 8
    DropDownWidth = 300
    Color = clInfoBk
    LookupField = 'Posicao'
    LookupDisplay = 'Tamanho'
    LookupSource = DM1.dsProdutoTam
    TabOrder = 5
    OnEnter = RxDBLookupCombo14Enter
  end
  object BitBtn1: TBitBtn
    Left = 216
    Top = 97
    Width = 185
    Height = 25
    Caption = 'Repetir o c'#243'digo para os tamanhos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 123
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 197
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 120
    Top = 3
    Width = 153
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    Color = clInfoBk
    LookupField = 'Codigo'
    LookupDisplay = 'CgcCpf;Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 0
    OnEnter = RxDBLookupCombo1Enter
    OnExit = RxDBLookupCombo1Exit
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 62
    Top = 26
    Width = 57
    Height = 21
    AutoSize = False
    Color = clInfoBk
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 1
    OnExit = CurrencyEdit1Exit
  end
end
