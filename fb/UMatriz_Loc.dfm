object fMatriz_Loc: TfMatriz_Loc
  Left = 123
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Matriz (Localiza'#231#227'o)'
  ClientHeight = 322
  ClientWidth = 735
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 39
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 6
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 80
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 735
    Height = 133
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 587
      Top = 10
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 36
      Top = 16
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label3: TLabel
      Left = 561
      Top = 30
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro:'
    end
    object Label4: TLabel
      Left = 597
      Top = 50
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label5: TLabel
      Left = 584
      Top = 70
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label13: TLabel
      Left = 47
      Top = 37
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa:'
    end
    object Label6: TLabel
      Left = 44
      Top = 59
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prateleira:'
    end
    object Label7: TLabel
      Left = 71
      Top = 81
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd:'
    end
    object Label8: TLabel
      Left = 4
      Top = 104
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Possui Tamanhos:'
    end
    object DBEdit1: TDBEdit
      Left = 624
      Top = 2
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 624
      Top = 22
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'DTCAD'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 624
      Top = 42
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'HRCAD'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 624
      Top = 62
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 94
      Top = 8
      Width = 323
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REFMATRIZ'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 94
      Top = 29
      Width = 323
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMPRESA'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 94
      Top = 51
      Width = 323
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRATELEIRA'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 94
      Top = 73
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      DataField = 'QTD'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      TabOrder = 3
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 94
      Top = 96
      Width = 91
      Height = 21
      Style = csDropDownList
      DataField = 'POSSUIGRADE'
      DataSource = DMMatriz_Loc.dsMatriz_Loc
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 8
      Values.Strings = (
        'S'
        'N')
      OnChange = RxDBComboBox1Change
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 172
    Width = 735
    Height = 150
    Align = alBottom
    TabOrder = 2
    Visible = False
    object Label9: TLabel
      Left = 40
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Tamanho'
    end
    object Label10: TLabel
      Left = 141
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object SpeedButton2: TSpeedButton
      Left = 234
      Top = 20
      Width = 27
      Height = 27
      Hint = 'Cancela a inser'#231#227'o de um item'
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080808080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080FFFFFF008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        800000808080800080800080800080800080800080800000FF80808000808000
        8080008080008080008080008080008080008080808080808080FFFFFF008080
        008080008080008080008080008080FFFFFF0080800080800080800080800080
        800080800080800000FF00008000008000008080808000808000808000808000
        00FF000080000080808080008080008080008080008080008080008080808080
        FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
        FF0080800080800080800080800080800080800000FF00008000008000008000
        00808080800080800000FF000080000080000080000080808080008080008080
        008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
        FF808080008080008080808080FFFFFF00808000808000808000808000808000
        80800000FF000080000080000080000080808080000080000080000080000080
        000080808080008080008080008080008080008080808080FFFFFF0080800080
        80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
        80800080800080800080800080800080800000FF000080000080000080000080
        0000800000800000800000808080800080800080800080800080800080800080
        80008080808080FFFFFF00808000808000808080808000808000808000808000
        8080FFFFFF808080008080008080008080008080008080008080008080008080
        0000FF0000800000800000800000800000800000808080800080800080800080
        80008080008080008080008080008080008080808080FFFFFF00808000808000
        8080008080008080008080FFFFFF808080008080008080008080008080008080
        0080800080800080800080800080800000800000800000800000800000808080
        8000808000808000808000808000808000808000808000808000808000808000
        8080808080FFFFFF008080008080008080008080008080808080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        8000008000008000008080808000808000808000808000808000808000808000
        8080008080008080008080008080008080808080FFFFFF008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        800080800000FF00008000008000008000008000008080808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        008080008080008080008080808080FFFFFF0080800080800080800080800080
        800080800080800080800080800000FF00008000008000008080808000008000
        0080000080808080008080008080008080008080008080008080008080008080
        008080008080808080008080008080008080008080008080808080FFFFFF0080
        800080800080800080800080800080800080800080800000FF00008000008000
        00808080800080800000FF000080000080000080808080008080008080008080
        008080008080008080008080008080808080008080008080008080808080FFFF
        FF008080008080808080FFFFFF00808000808000808000808000808000808000
        80800000FF0000800000808080800080800080800080800000FF000080000080
        000080808080008080008080008080008080008080008080808080FFFFFF0080
        80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
        80800080800080800080800080800080800000FF000080008080008080008080
        0080800080800000FF0000800000800000800080800080800080800080800080
        80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
        8080008080808080FFFFFF008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800000FF0000800000FF0080
        8000808000808000808000808000808000808080808080808000808000808000
        8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 261
      Top = 20
      Width = 27
      Height = 27
      Hint = 'Exclui o item selecionado ao lado'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 0
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 131
      Top = 24
      Width = 73
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      Left = 207
      Top = 20
      Width = 27
      Height = 27
      Hint = 'Confirma a inser'#231#227'o de um item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn7Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000D80E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080FFFFFF
        FFFFFF0080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        008080008080008080808080808080808080808080808080808080FFFFFFFFFF
        FF00808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080808080808080808080808080
        80808080808080808080808080FFFFFF00808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080808080
        80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
        8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        80008080008080008080008080008080008080808080808080FFFFFF00808000
        8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
        808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        008080008080008080008080008080008080FFFFFF8080808080808080808080
        80FFFFFF00808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        80008080008080008080008080008080FFFFFF808080808080808080808080FF
        FFFF008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        80008080008080008080008080008080008080008080008080008080008080FF
        FFFF808080808080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF808080808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080FFFFFF
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object VDBGrid1: TVDBGrid
      Left = 1
      Top = 64
      Width = 733
      Height = 85
      Align = alBottom
      DataSource = DMMatriz_Loc.dsMatriz_LocTam
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Vertical = True
      TitlesWidth = 70
      Columns = <
        item
          Alignment = taCenter
          Color = clGray
          FieldName = 'ITEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Color = clGray
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Alignment = taCenter
          FieldName = 'TAMANHO'
          Title.Alignment = taCenter
          Title.Caption = 'Tamanho'
        end
        item
          Alignment = taCenter
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
        end>
    end
  end
end