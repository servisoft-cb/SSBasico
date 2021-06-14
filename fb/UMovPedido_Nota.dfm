object fMovPedido_Nota: TfMovPedido_Nota
  Left = 36
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fMovPedido_Nota'
  ClientHeight = 412
  ClientWidth = 923
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
  object Label8: TLabel
    Left = 14
    Top = 128
    Width = 29
    Height = 16
    Caption = 'Qtd:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 6
    Top = 145
    Width = 55
    Height = 13
    Alignment = taCenter
    DataField = 'QTD'
    DataSource = DMMovPedido.dsMovPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 371
    Width = 923
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 0
    object BitBtn2: TBitBtn
      Left = 784
      Top = 6
      Width = 121
      Height = 31
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 182
    Width = 923
    Height = 189
    Align = alBottom
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 52
      Top = 10
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
    end
    object Label3: TLabel
      Left = 25
      Top = 33
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie da Nota:'
    end
    object Label4: TLabel
      Left = 50
      Top = 56
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Nota:'
    end
    object Label5: TLabel
      Left = 17
      Top = 79
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd de Retorno:'
    end
    object Label6: TLabel
      Left = 71
      Top = 102
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Obs:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 96
      Top = 2
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 96
      Top = 25
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 96
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 96
      Top = 71
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 3
    end
    object Memo1: TMemo
      Left = 96
      Top = 94
      Width = 305
      Height = 89
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 411
      Top = 153
      Width = 134
      Height = 32
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 923
    Height = 182
    Align = alClient
    Caption = 'Notas e Retorno'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 145
      Height = 165
      Align = alLeft
      Color = clMoneyGreen
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 89
        Width = 106
        Height = 16
        Caption = 'Pedido Interno:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 14
        Top = 106
        Width = 107
        Height = 13
        Alignment = taCenter
        DataField = 'PEDIDO'
        DataSource = DMMovPedido.dsMovPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 14
        Top = 128
        Width = 29
        Height = 16
        Caption = 'Qtd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 6
        Top = 145
        Width = 55
        Height = 13
        Alignment = taCenter
        DataField = 'QTD'
        DataSource = DMMovPedido.dsMovPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 93
        Top = 128
        Width = 41
        Height = 16
        Caption = 'Pend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 85
        Top = 144
        Width = 55
        Height = 13
        Alignment = taCenter
        DataField = 'QTDPENDENTE'
        DataSource = DMMovPedido.dsMovPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn3: TBitBtn
        Left = 10
        Top = 19
        Width = 113
        Height = 32
        Caption = 'Incluir Nota/Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 10
        Top = 51
        Width = 113
        Height = 32
        Caption = 'Excluir Nota/Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object SMDBGrid2: TSMDBGrid
      Left = 147
      Top = 15
      Width = 474
      Height = 165
      Align = alClient
      DataSource = DMMovPedido.dsMovPedido_Nota
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
          Width = 25
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 74
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SERIE'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTNOTA'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Nota'
          Width = 79
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTCADASTRO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Mov.'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HRCADASTRO'
          Title.Alignment = taCenter
          Title.Caption = 'Hr. Mov.'
          Width = 58
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 621
      Top = 15
      Width = 300
      Height = 165
      Align = alRight
      DataField = 'OBS'
      DataSource = DMMovPedido.dsMovPedido_Nota
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
