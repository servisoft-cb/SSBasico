object fPedAmostra: TfPedAmostra
  Left = 105
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedido de Amostra'
  ClientHeight = 538
  ClientWidth = 816
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 816
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
    Width = 816
    Height = 242
    Align = alClient
    TabOrder = 1
    DesignSize = (
      816
      242)
    object Label1: TLabel
      Left = 663
      Top = 10
      Width = 39
      Height = 13
      Caption = 'N'#186' Mov:'
    end
    object Label2: TLabel
      Left = 52
      Top = 10
      Width = 38
      Height = 13
      Caption = 'F'#225'brica:'
    end
    object Label3: TLabel
      Left = 646
      Top = 30
      Width = 56
      Height = 13
      Caption = 'Dt.Emiss'#227'o:'
    end
    object Label4: TLabel
      Left = 676
      Top = 50
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label5: TLabel
      Left = 663
      Top = 70
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label17: TLabel
      Left = 607
      Top = 127
      Width = 82
      Height = 13
      Caption = 'Dt.Encaminhada:'
    end
    object Label18: TLabel
      Left = 635
      Top = 150
      Width = 54
      Height = 13
      Caption = 'Dt.Entrega:'
    end
    object Label19: TLabel
      Left = 475
      Top = 70
      Width = 50
      Height = 13
      Caption = 'Qtd. Total:'
    end
    object Label6: TLabel
      Left = 61
      Top = 57
      Width = 29
      Height = 13
      Caption = 'Ficha:'
    end
    object Label7: TLabel
      Left = 7
      Top = 81
      Width = 83
      Height = 13
      Caption = 'Carimbo Palmilha:'
    end
    object Label8: TLabel
      Left = 25
      Top = 105
      Width = 65
      Height = 13
      Caption = 'Carimbo Sola:'
    end
    object Label9: TLabel
      Left = 55
      Top = 33
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label10: TLabel
      Left = 68
      Top = 150
      Width = 22
      Height = 13
      Caption = 'Obs:'
    end
    object Label11: TLabel
      Left = 48
      Top = 127
      Width = 42
      Height = 13
      Caption = 'Etiqueta:'
    end
    object DBEdit1: TDBEdit
      Left = 704
      Top = 2
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMPedAmostra.dsPedAmostra
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit3: TDBEdit
      Left = 704
      Top = 22
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'DTCADASTRO'
      DataSource = DMPedAmostra.dsPedAmostra
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit4: TDBEdit
      Left = 704
      Top = 42
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'HRCADASTRO'
      DataSource = DMPedAmostra.dsPedAmostra
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit5: TDBEdit
      Left = 704
      Top = 62
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = DMPedAmostra.dsPedAmostra
      ReadOnly = True
      TabOrder = 13
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 92
      Top = 2
      Width = 369
      Height = 21
      DropDownCount = 8
      DataField = 'CODFABRICA'
      DataSource = DMPedAmostra.dsPedAmostra
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqFabrica
      TabOrder = 0
    end
    object DBDateEdit1: TDBDateEdit
      Left = 691
      Top = 119
      Width = 121
      Height = 21
      DataField = 'DTENCAMINHADA'
      DataSource = DMPedAmostra.dsPedAmostra
      Color = clAqua
      NumGlyphs = 2
      TabOrder = 7
    end
    object DBDateEdit2: TDBDateEdit
      Left = 691
      Top = 142
      Width = 121
      Height = 21
      DataField = 'DTENTREGA'
      DataSource = DMPedAmostra.dsPedAmostra
      Color = clAqua
      NumGlyphs = 2
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 528
      Top = 62
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'QTDTOTAL'
      DataSource = DMPedAmostra.dsPedAmostra
      ReadOnly = True
      TabOrder = 14
    end
    object BitBtn3: TBitBtn
      Left = 7
      Top = 212
      Width = 219
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Digitar Combina'#231#227'o/Tamanhos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn3Click
    end
    object DBEdit2: TDBEdit
      Left = 92
      Top = 49
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FICHA'
      DataSource = DMPedAmostra.dsPedAmostra
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 92
      Top = 73
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CARIMBOPALMILHA'
      DataSource = DMPedAmostra.dsPedAmostra
      TabOrder = 3
    end
    object DBEdit8: TDBEdit
      Left = 92
      Top = 97
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CARIMBOSOLA'
      DataSource = DMPedAmostra.dsPedAmostra
      TabOrder = 4
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 92
      Top = 25
      Width = 369
      Height = 21
      DropDownCount = 8
      DataField = 'CODCLIENTE'
      DataSource = DMPedAmostra.dsPedAmostra
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object DBMemo1: TDBMemo
      Left = 92
      Top = 141
      Width = 405
      Height = 53
      DataField = 'OBS'
      DataSource = DMPedAmostra.dsPedAmostra
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 92
      Top = 119
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ETIQUETA'
      DataSource = DMPedAmostra.dsPedAmostra
      TabOrder = 5
    end
    object BitBtn4: TBitBtn
      Left = 242
      Top = 211
      Width = 219
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Excluir Combina'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BitBtn4Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 281
    Width = 816
    Height = 257
    Align = alBottom
    TabOrder = 2
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 814
      Height = 169
      Align = alTop
      DataSource = DMPedAmostra.dsPedAmostra_Item
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          Expanded = False
          FieldName = 'ID'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCOMBINACAO'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECOR'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECOMBINACAO'
          Visible = True
        end>
    end
    object VDBGrid1: TVDBGrid
      Left = 1
      Top = 181
      Width = 814
      Height = 75
      Align = alBottom
      DataSource = DMPedAmostra.dsPedAmostra_Grade
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
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
          FieldName = 'TAMANHO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tamanho'
          Title.Color = clGray
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
        end>
    end
  end
end
