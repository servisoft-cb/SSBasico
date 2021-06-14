object fCancelaLote: TfCancelaLote
  Left = 48
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancela o lote'
  ClientHeight = 127
  ClientWidth = 657
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
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 88
    Height = 13
    Caption = 'Dt. Cancelamento:'
  end
  object Label3: TLabel
    Left = 38
    Top = 80
    Width = 106
    Height = 13
    Caption = 'Motivo Cancelamento:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Lote:'
    end
    object DBText1: TDBText
      Left = 41
      Top = 8
      Width = 64
      Height = 13
      DataField = 'Lote'
      DataSource = fGeraLote2.dsmTalao
    end
    object DBText5: TDBText
      Left = 41
      Top = 24
      Width = 160
      Height = 13
      DataField = 'NumOS'
      DataSource = fGeraLote2.dsmTalao
    end
    object Label5: TLabel
      Left = 6
      Top = 24
      Width = 33
      Height = 13
      Caption = 'N'#186' OS:'
    end
    object DBText7: TDBText
      Left = 235
      Top = 24
      Width = 63
      Height = 13
      DataField = 'Qtd'
      DataSource = fGeraLote2.dsmTalao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 200
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Qtde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DateEdit1: TDateEdit
    Left = 146
    Top = 48
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 146
    Top = 72
    Width = 503
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 147
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 223
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
end
