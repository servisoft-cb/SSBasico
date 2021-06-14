object fInfFabrica: TfInfFabrica
  Left = 360
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar a F'#225'brica'
  ClientHeight = 129
  ClientWidth = 353
  Color = clMoneyGreen
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
    Left = 34
    Top = 14
    Width = 38
    Height = 13
    Caption = 'F'#225'brica:'
  end
  object Label2: TLabel
    Left = 16
    Top = 38
    Width = 56
    Height = 13
    Caption = 'Data Envio:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 74
    Top = 6
    Width = 217
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM2.dsqFabrica
    TabOrder = 0
  end
  object DateEdit1: TDateEdit
    Left = 74
    Top = 30
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 146
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
