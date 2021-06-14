object fLoteQtd: TfLoteQtd
  Left = 106
  Top = 143
  Width = 459
  Height = 375
  Caption = 'Informar as quantidades por lote'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 8
    Top = 8
    Width = 345
    Height = 321
    DataSource = fGeraLote2.dsmInfLote
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdLote'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Lotes'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPares'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pares'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 224
    Width = 87
    Height = 30
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 360
    Top = 304
    Width = 87
    Height = 30
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 360
    Top = 256
    Width = 87
    Height = 30
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
end
