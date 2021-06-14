object fSenhaAlt: TfSenhaAlt
  Left = 306
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Senha'
  ClientHeight = 65
  ClientWidth = 207
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
    Top = 20
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label2: TLabel
    Left = 79
    Top = 37
    Width = 77
    Height = 26
    Caption = 'Pressione Enter '#13#10'para confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 64
    Top = 12
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 8
    PasswordChar = '*'
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
end
