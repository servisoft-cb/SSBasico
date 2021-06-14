object fConvProduto: TfConvProduto
  Left = 45
  Top = 29
  BorderStyle = bsSingle
  Caption = 'Recebimento de Pedidos (Ordem de Compra)'
  ClientHeight = 514
  ClientWidth = 781
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
  object Label5: TLabel
    Left = 7
    Top = 13
    Width = 124
    Height = 13
    Caption = 'Arquivo Cadastro Produto:'
  end
  object Label1: TLabel
    Left = 13
    Top = 36
    Width = 118
    Height = 13
    Caption = 'Arquivo C'#243'digo de Barra:'
  end
  object Panel1: TPanel
    Left = 515
    Top = 0
    Width = 259
    Height = 70
    BevelInner = bvRaised
    TabOrder = 0
    object BitBtn8: TBitBtn
      Left = 5
      Top = 36
      Width = 124
      Height = 30
      Hint = 'Executa o c'#225'lculo das parcelas'
      Caption = 'Gera Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn8Click
      Glyph.Data = {
        1E020000424D1E0200000000000042000000280000000D000000110000000100
        100003000000DC01000000000000000000000000000000000000007C0000E003
        00001F000000F75EF75EF75EF75E0000EF3DF75EF75EF75EF75EF75EF75EF75E
        2003F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75EF75E2003F75E
        F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75E6400F75EF75EF75E
        F75EF75E0000E07F0000EF3DF75EF75EF75EF75E2003F75EF75EF75E00000000
        00000000E07F0000EF3DF75EF75EF75E0D02F75EF75EF75E0000E07FE07FFF7F
        E07FE07F0000EF3DF75EF75E6C00F75EF75EF75EF75E0000FF7FE07F00000000
        00000000F75EF75E0A00F75EF75EF75EF75E0000E07FFF7FE07F0000EF3DF75E
        F75EF75E0600F75E00000000000000000000E07FFF7FE07F0000EF3DF75EF75E
        2003F75E0000FF7FE07FFF7FE07FFF7FE07FFF7FE07F0000EF3DF75E0D00F75E
        F75E0000FF7FE07FFF7FE07F0000000000000000F75EF75E2003F75EF75E0000
        E07FFF7FE07FFF7FE07F0000EF3DF75EF75EF75E8D00F75EF75EF75E0000E07F
        FF7FE07FFF7FE07F0000EF3DF75EF75E4E02F75EF75EF75E0000FF7FFF7FFF7F
        E07FFF7FFF7F0000EF3DF75E2003F75EF75EF75EF75E0000FF7FE07FFF7FFF7F
        E07FFF7F0000EF3D2003F75EF75EF75EF75E0000000000000000000000000000
        000000002003F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        7F01}
    end
    object BitBtn3: TBitBtn
      Left = 130
      Top = 34
      Width = 124
      Height = 31
      Hint = 'Fecha a janela acima'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
        038383838383830E603800000000380E660033333330830E660333333330000E
        660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
        660300000E60330E660333330600330E660333330030330E6603333333303330
        E6033333333033330E0333333330000000033333333333333333}
    end
  end
  object FilenameEdit1: TFilenameEdit
    Left = 133
    Top = 5
    Width = 300
    Height = 21
    Filter = '*.paq'
    NumGlyphs = 1
    TabOrder = 1
  end
  object FilenameEdit2: TFilenameEdit
    Left = 133
    Top = 28
    Width = 300
    Height = 21
    Filter = '*.paq'
    NumGlyphs = 1
    TabOrder = 2
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 314
    Width = 781
    Height = 200
    Align = alBottom
    DataSource = dsmProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
    ColCount = 14
    RowCount = 2
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 114
    Width = 781
    Height = 200
    Align = alBottom
    DataSource = dsmCBarra
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
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
  end
  object mProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 144
    Data = {
      690100009619E0BD01000000180000000D000000000003000000690106436F64
      69676F0100490000000100055749445448020002000A00044E6F6D6501004900
      000001000557494454480200020046000C4E6F6D65526564757A69646F010049
      0000000100055749445448020002001E000A436C617346697363616C01004900
      00000100055749445448020002000A000A507265636F437573746F0800040000
      0000000A507265636F4D6564696F08000400000000000A507265636F56656E64
      61080004000000000007556E6964616465010049000000010005574944544802
      000200030005417469766F01004900000001000557494454480200020005000B
      4474556C74436F6D70726104000600000000000A4474556C7456656E64610400
      0600000000000E436F6450726F6475746F466F726E0100490000000100055749
      445448020002000A000D436F64466F726E656365646F72010049000000010005
      5749445448020002000A000000}
    object mProdutoCodigo: TStringField
      DisplayWidth = 12
      FieldName = 'Codigo'
      Size = 10
    end
    object mProdutoNome: TStringField
      DisplayWidth = 76
      FieldName = 'Nome'
      Size = 70
    end
    object mProdutoNomeReduzido: TStringField
      DisplayWidth = 36
      FieldName = 'NomeReduzido'
      Size = 30
    end
    object mProdutoClasFiscal: TStringField
      DisplayWidth = 12
      FieldName = 'ClasFiscal'
      Size = 10
    end
    object mProdutoPrecoCusto: TFloatField
      DisplayWidth = 12
      FieldName = 'PrecoCusto'
    end
    object mProdutoPrecoMedio: TFloatField
      DisplayWidth = 12
      FieldName = 'PrecoMedio'
    end
    object mProdutoPrecoVenda: TFloatField
      DisplayWidth = 12
      FieldName = 'PrecoVenda'
    end
    object mProdutoUnidade: TStringField
      DisplayWidth = 8
      FieldName = 'Unidade'
      Size = 3
    end
    object mProdutoAtivo: TStringField
      DisplayWidth = 6
      FieldName = 'Ativo'
      Size = 5
    end
    object mProdutoDtUltCompra: TDateField
      DisplayWidth = 12
      FieldName = 'DtUltCompra'
    end
    object mProdutoDtUltVenda: TDateField
      DisplayWidth = 12
      FieldName = 'DtUltVenda'
    end
    object mProdutoCodProdutoForn: TStringField
      DisplayWidth = 16
      FieldName = 'CodProdutoForn'
      Size = 10
    end
    object mProdutoCodFornecedor: TStringField
      DisplayWidth = 15
      FieldName = 'CodFornecedor'
      Size = 10
    end
  end
  object dsmProduto: TDataSource
    DataSet = mProduto
    Left = 408
    Top = 144
  end
  object mCBarra: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 144
    Data = {
      E70000009619E0BD010000001800000008000000000003000000E7000A436F64
      50726F6475746F0100490000000100055749445448020002000A000B4E6F6D65
      50726F6475746F0100490000000100055749445448020002003C0008436F6442
      617272610100490000000100055749445448020002000E000A507265636F4375
      73746F08000400000000000A507265636F4D6564696F08000400000000000A50
      7265636F56656E64610800040000000000074E6F6D65436F7201004900000001
      00055749445448020002001E000754616D616E686F0100490000000100055749
      445448020002000A000000}
    object mCBarraCodProduto: TStringField
      DisplayWidth = 12
      FieldName = 'CodProduto'
      Size = 10
    end
    object mCBarraNomeProduto: TStringField
      DisplayWidth = 66
      FieldName = 'NomeProduto'
      Size = 60
    end
    object mCBarraCodBarra: TStringField
      DisplayWidth = 17
      FieldName = 'CodBarra'
      Size = 14
    end
    object mCBarraPrecoCusto: TFloatField
      DisplayWidth = 12
      FieldName = 'PrecoCusto'
    end
    object mCBarraPrecoMedio: TFloatField
      DisplayWidth = 12
      FieldName = 'PrecoMedio'
    end
    object mCBarraPrecoVenda: TFloatField
      DisplayWidth = 12
      FieldName = 'PrecoVenda'
    end
    object mCBarraNomeCor: TStringField
      DisplayWidth = 36
      FieldName = 'NomeCor'
      Size = 30
    end
    object mCBarraTamanho: TStringField
      DisplayWidth = 12
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object dsmCBarra: TDataSource
    DataSet = mCBarra
    Left = 488
    Top = 144
  end
  object qProximoMatForn: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT MAX( Item ) Item'
      'FROM "dbMaterialFornecedor.DB" Dbmaterialfornecedor'
      'WHERE  CodMaterial = :CodMaterial')
    Left = 568
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptUnknown
      end>
    object qProximoMatFornItem: TIntegerField
      FieldName = 'Item'
      Origin = 'TABELAS."dbMaterialFornecedor.DB".Item'
    end
  end
end
