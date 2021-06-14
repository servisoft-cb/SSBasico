object fConsPedidoBRTam: TfConsPedidoBRTam
  Left = 16
  Top = 35
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fConsPedidoBRTam'
  ClientHeight = 613
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 41
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
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
      Left = 90
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 983
    Height = 572
    Align = alClient
    DataSource = dsmProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
        FieldName = 'CodProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tamanho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotalFabrica'
        Visible = True
      end>
  end
  object mProduto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotalFabrica'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodProduto;Tamanho'
    Params = <>
    StoreDefs = True
    OnNewRecord = mProdutoNewRecord
    Left = 504
    Top = 232
    Data = {
      D30000009619E0BD010000001800000007000000000003000000D3000A436F64
      50726F6475746F04000100000000000B4E6F6D6550726F6475746F0100490000
      000100055749445448020002003C000A5265666572656E636961010049000000
      01000557494454480200020014000754616D616E686F01004900000001000557
      49445448020002000A0003517464040001000000000008566C72546F74616C08
      000400000000000F566C72546F74616C46616272696361080004000000000001
      000D44454641554C545F4F524445520200820000000000}
    object mProdutoCodProduto: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      DisplayWidth = 13
      FieldName = 'CodProduto'
    end
    object mProdutoNomeProduto: TStringField
      DisplayLabel = 'Nome Produto'
      DisplayWidth = 72
      FieldName = 'NomeProduto'
      Size = 60
    end
    object mProdutoReferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 24
      FieldName = 'Referencia'
    end
    object mProdutoTamanho: TStringField
      DisplayWidth = 12
      FieldName = 'Tamanho'
      Size = 10
    end
    object mProdutoQtd: TIntegerField
      DisplayWidth = 12
      FieldName = 'Qtd'
    end
    object mProdutoVlrTotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 12
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object mProdutoVlrTotalFabrica: TFloatField
      DisplayLabel = 'Vlr. Total F'#225'brica'
      DisplayWidth = 17
      FieldName = 'VlrTotalFabrica'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmProduto: TDataSource
    DataSet = mProduto
    Left = 536
    Top = 232
  end
end
