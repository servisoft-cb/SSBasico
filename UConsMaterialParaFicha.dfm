object fConsMaterialParaFicha: TfConsMaterialParaFicha
  Left = 116
  Top = 122
  Width = 585
  Height = 405
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Materiais'
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 577
    Height = 354
    Align = alClient
    DataSource = dsqMaterial
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 401
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Width = 66
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 354
    Width = 577
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'ENTER ou Duplo Clique para usar o material'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object qMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, Unidade'
      'FROM "dbProduto.DB" Dbproduto'
      'WHERE   (ProdMat = '#39'M'#39')  '
      '   AND  (MaterialOutros = '#39'M'#39')  '
      '   AND  (Inativo = FALSE)  '
      'ORDER BY Nome, Codigo')
    Left = 312
    Top = 88
    object qMaterialCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbProduto.DB".Codigo'
    end
    object qMaterialNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbProduto.DB".Nome'
      Size = 40
    end
    object qMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbProduto.DB".Unidade'
      Size = 3
    end
  end
  object dsqMaterial: TDataSource
    DataSet = qMaterial
    Left = 336
    Top = 88
  end
end
