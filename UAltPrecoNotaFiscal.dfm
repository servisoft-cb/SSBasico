object fAltPrecoNotaFiscal: TfAltPrecoNotaFiscal
  Left = 103
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fAltPrecoNotaFiscal'
  ClientHeight = 178
  ClientWidth = 536
  Color = 10930928
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
  object Label1: TLabel
    Left = 15
    Top = 5
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object DBText1: TDBText
    Left = 75
    Top = 5
    Width = 65
    Height = 13
    DataField = 'Referencia'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Label2: TLabel
    Left = 183
    Top = 5
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object DBText2: TDBText
    Left = 227
    Top = 5
    Width = 286
    Height = 13
    DataField = 'Descricao'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Label3: TLabel
    Left = 51
    Top = 23
    Width = 19
    Height = 13
    Caption = 'Cor:'
  end
  object DBText3: TDBText
    Left = 74
    Top = 23
    Width = 199
    Height = 13
    DataField = 'lkNomeCor'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Label4: TLabel
    Left = 50
    Top = 39
    Width = 23
    Height = 13
    Caption = 'Qtd.:'
  end
  object DBText4: TDBText
    Left = 73
    Top = 39
    Width = 72
    Height = 13
    DataField = 'Qtd'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Label5: TLabel
    Left = 194
    Top = 39
    Width = 54
    Height = 13
    Caption = 'Vlr.Unit'#225'rio:'
  end
  object DBText5: TDBText
    Left = 251
    Top = 39
    Width = 72
    Height = 13
    DataField = 'VlrUnit'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Label6: TLabel
    Left = 370
    Top = 39
    Width = 42
    Height = 13
    Caption = 'Vlr.Total:'
  end
  object DBText6: TDBText
    Left = 415
    Top = 39
    Width = 98
    Height = 13
    DataField = 'VlrTotal'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Bevel1: TBevel
    Left = 0
    Top = 77
    Width = 536
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object RxLabel1: TRxLabel
    Left = 26
    Top = 125
    Width = 70
    Height = 13
    Caption = 'Novo Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 24
    Top = 93
    Width = 74
    Height = 13
    Caption = '% Desconto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 13
    Top = 55
    Width = 60
    Height = 13
    Caption = '% Desconto:'
  end
  object DBText7: TDBText
    Left = 73
    Top = 55
    Width = 72
    Height = 13
    DataField = 'Desconto'
    DataSource = DM1.dsNotaFiscalItens
  end
  object Label8: TLabel
    Left = 184
    Top = 55
    Width = 64
    Height = 13
    Caption = 'Vlr.Desconto:'
  end
  object DBText8: TDBText
    Left = 251
    Top = 55
    Width = 72
    Height = 13
    DataField = 'VlrDesconto'
    DataSource = DM1.dsNotaFiscalItens
  end
  object RxLabel3: TRxLabel
    Left = 219
    Top = 92
    Width = 80
    Height = 13
    Caption = 'Vlr.Desconto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel4: TRxLabel
    Left = 26
    Top = 157
    Width = 55
    Height = 13
    Caption = 'Vlr.Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 98
    Top = 117
    Width = 106
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 215
    Top = 148
    Width = 81
    Height = 25
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 98
    Top = 85
    Width = 106
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 2
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 301
    Top = 84
    Width = 106
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 3
  end
  object CurrencyEdit5: TCurrencyEdit
    Left = 98
    Top = 149
    Width = 106
    Height = 21
    AutoSize = False
    Color = clInfoBk
    DisplayFormat = '0.00'
    ReadOnly = True
    TabOrder = 4
  end
end
