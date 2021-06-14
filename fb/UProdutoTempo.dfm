object fProdutoTempo: TfProdutoTempo
  Left = 92
  Top = 36
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tempo'
  ClientHeight = 645
  ClientWidth = 911
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 100
    Top = 64
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = 'Processo:'
  end
  object Label5: TLabel
    Left = 85
    Top = 87
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tempo (Min):'
  end
  object Label6: TLabel
    Left = 4
    Top = 111
    Width = 143
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tempo Regulagem Maq (Min):'
  end
  object Label7: TLabel
    Left = 280
    Top = 91
    Width = 138
    Height = 13
    Caption = 'Tempo informado em minutos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 125
    Top = 135
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs.'
  end
  object Label9: TLabel
    Left = 513
    Top = 111
    Width = 116
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd. de Pe'#231'as Por Hora:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 52
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 8
    object Label1: TLabel
      Left = 24
      Top = 3
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object DBText1: TDBText
      Left = 62
      Top = 3
      Width = 66
      Height = 13
      DataField = 'Codigo'
      DataSource = DM1.dsProduto
    end
    object Label2: TLabel
      Left = 5
      Top = 19
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object DBText2: TDBText
      Left = 62
      Top = 19
      Width = 145
      Height = 13
      DataField = 'Referencia'
      DataSource = DM1.dsProduto
    end
    object Label3: TLabel
      Left = 29
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object DBText3: TDBText
      Left = 62
      Top = 35
      Width = 523
      Height = 13
      DataField = 'Nome'
      DataSource = DM1.dsProduto
    end
    object BitBtn4: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 150
    Top = 56
    Width = 286
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMProcesso.dsProcesso
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 150
    Top = 262
    Width = 81
    Height = 26
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 230
    Top = 262
    Width = 81
    Height = 26
    Caption = 'Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 310
    Top = 262
    Width = 81
    Height = 26
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 150
    Top = 79
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 1
    OnExit = CurrencyEdit1Exit
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 150
    Top = 101
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 149
    Top = 124
    Width = 604
    Height = 133
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 911
    Height = 349
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 9
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 602
      Height = 347
      Align = alLeft
      DataSource = dmCadProduto.dsProduto_Tempo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 38
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PROCESSO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Processo'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPROCESSO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Processo'
          Width = 254
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TEMPO'
          Title.Alignment = taCenter
          Title.Caption = 'Tempo'
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TEMPOREG'
          Title.Alignment = taCenter
          Title.Caption = 'Tempo Regulagem M'#225'quina'
          Width = 61
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDPECAHORA'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Por Hora'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS'
          Title.Caption = 'Observa'#231#227'o'
          Width = 110
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 603
      Top = 1
      Width = 307
      Height = 347
      Align = alClient
      Color = clBtnFace
      DataField = 'OBS'
      DataSource = dmCadProduto.dsProduto_Tempo
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 632
    Top = 101
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 3
  end
end
