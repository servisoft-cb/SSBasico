object fTabPrecoMotivo: TfTabPrecoMotivo
  Left = 136
  Top = 287
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Motivo'
  ClientHeight = 86
  ClientWidth = 688
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 139
    Height = 13
    Caption = 'Motivo da altera'#231#227'o do pre'#231'o'
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 51
    Width = 129
    Height = 28
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 24
    Width = 657
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Motivo'
    DataSource = DM1.dsTabPrecoHist
    TabOrder = 0
  end
end
