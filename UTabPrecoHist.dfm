object fTabPrecoHist: TfTabPrecoHist
  Left = 103
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico'
  ClientHeight = 553
  ClientWidth = 782
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 37
    Width = 782
    Height = 516
    Align = alClient
    DataSource = DM1.dsTabPrecoHist
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
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtAlteracao'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecoMObra'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o M. Obra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Motivo'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Alterado'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Alterado'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 37
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 680
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
