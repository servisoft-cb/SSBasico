object fNotaFiscalCliTriang: TfNotaFiscalCliTriang
  Left = 204
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informe o cliente triangular'
  ClientHeight = 79
  ClientWidth = 396
  Color = clMoneyGreen
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
  object Label2: TLabel
    Left = 21
    Top = 23
    Width = 85
    Height = 13
    Caption = 'Cliente Triangular:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 107
    Top = 16
    Width = 268
    Height = 21
    DropDownCount = 8
    DataField = 'CodClienteTriang'
    DataSource = DM1.dsNotaFiscal
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 0
    OnEnter = RxDBLookupCombo1Enter
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
