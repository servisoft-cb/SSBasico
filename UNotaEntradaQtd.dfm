object fNotaEntradaQtd: TfNotaEntradaQtd
  Left = 139
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quantidade Estoque (Material)'
  ClientHeight = 201
  ClientWidth = 523
  Color = clMoneyGreen
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
    Left = 88
    Top = 147
    Width = 296
    Height = 16
    Alignment = taRightJustify
    Caption = 'Informe a qtde. da unid.medida do estoque (PCT):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 8
    Width = 351
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade digitada na nota '#233' diferente do cadastro de produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 6
    Top = 50
    Width = 290
    Height = 52
    Caption = 
      'Lembrando que o sistema sempre vai multiplicar o valor '#13#10'que for' +
      ' informado no campo abaixo, '#13#10'    vai multiplicar o campo inform' +
      'ado a abaixo pela quantidade'#13#10'    que foi informada no item da n' +
      'ota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 386
    Top = 144
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 5
    DisplayFormat = '0.00000'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 387
    Top = 168
    Width = 121
    Height = 25
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
