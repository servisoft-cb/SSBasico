object fMatriz_LocC: TfMatriz_LocC
  Left = 4
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Matriz (Localiza'#231#227'o)'
  ClientHeight = 537
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 92
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 17
      Top = 34
      Width = 44
      Height = 13
      Caption = 'Empresa:'
    end
    object Label3: TLabel
      Left = 392
      Top = 12
      Width = 60
      Height = 13
      Caption = 'Ordenar Por:'
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 474
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 912
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object Edit1: TEdit
      Left = 62
      Top = 4
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 62
      Top = 26
      Width = 243
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 40
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 454
      Top = 4
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'N'#186' Mov'
      Items.Strings = (
        'N'#186' Mov'
        'Refer'#234'ncia'
        'Empresa'
        'Prateleira')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 92
    Width = 989
    Height = 343
    Align = alClient
    DataSource = DMMatriz_Loc.dsMatriz_Loc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFMATRIZ'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Title.Alignment = taCenter
        Title.Caption = 'Empresa'
        Width = 317
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRATELEIRA'
        Title.Alignment = taCenter
        Title.Caption = 'Prateleira'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'POSSUIGRADE'
        Title.Alignment = taCenter
        Title.Caption = 'Possui Tamanhos'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTCAD'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Cadastro'
        Width = 80
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 520
    Width = 989
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object VDBGrid1: TVDBGrid
    Left = 0
    Top = 435
    Width = 989
    Height = 85
    Align = alBottom
    DataSource = DMMatriz_Loc.dsMatriz_LocTam
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
        Color = clSilver
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Title.Color = clSilver
      end
      item
        Alignment = taCenter
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end>
  end
end
