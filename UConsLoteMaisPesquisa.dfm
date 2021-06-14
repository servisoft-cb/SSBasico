object fConsLoteMaisPesquisa: TfConsLoteMaisPesquisa
  Left = 105
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Lotes (mais op'#231#245'es)'
  ClientHeight = 178
  ClientWidth = 365
  Color = 10930928
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
    Left = 30
    Top = 14
    Width = 76
    Height = 13
    Caption = 'Dt. Baixa Inicial:'
  end
  object Label2: TLabel
    Left = 221
    Top = 14
    Width = 25
    Height = 13
    Caption = 'Final:'
  end
  object Label3: TLabel
    Left = 8
    Top = 37
    Width = 98
    Height = 13
    Caption = 'Dt. Impress'#227'o Inicial:'
  end
  object Label4: TLabel
    Left = 221
    Top = 37
    Width = 25
    Height = 13
    Caption = 'Final:'
  end
  object RxLabel1: TRxLabel
    Left = 49
    Top = 63
    Width = 57
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel3: TRxLabel
    Left = 85
    Top = 84
    Width = 21
    Height = 13
    Caption = 'Cor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 69
    Top = 116
    Width = 37
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 136
    Width = 365
    Height = 2
    Shape = bsTopLine
  end
  object DateEdit1: TDateEdit
    Left = 107
    Top = 6
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 247
    Top = 6
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit3: TDateEdit
    Left = 107
    Top = 29
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit4: TDateEdit
    Left = 247
    Top = 29
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 107
    Top = 56
    Width = 239
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia;DescMaterial'
    LookupSource = DM1.dsProduto
    TabOrder = 4
    OnEnter = RxDBLookupCombo2Enter
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 107
    Top = 77
    Width = 239
    Height = 21
    DropDownCount = 8
    LookupField = 'CodCor'
    LookupDisplay = 'lkNomeCor'
    LookupSource = DM1.dsProdutoCor
    TabOrder = 5
    OnEnter = RxDBLookupCombo1Enter
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 107
    Top = 110
    Width = 239
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;CgcCpf'
    LookupSource = DM1.dsCliente
    TabOrder = 6
    OnEnter = RxDBLookupCombo3Enter
  end
  object BitBtn1: TBitBtn
    Left = 181
    Top = 143
    Width = 87
    Height = 27
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 268
    Top = 143
    Width = 89
    Height = 27
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
end
