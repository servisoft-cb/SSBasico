object fConsMaterialFicha: TfConsMaterialFicha
  Left = 5
  Top = 57
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta materiais dentro da ficha t'#233'cnica'
  ClientHeight = 483
  ClientWidth = 784
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
  object Label1: TLabel
    Left = 5
    Top = 30
    Width = 40
    Height = 13
    Caption = 'Material:'
  end
  object Label2: TLabel
    Left = 9
    Top = 8
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label3: TLabel
    Left = 26
    Top = 52
    Width = 19
    Height = 13
    Caption = 'Cor:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 46
    Top = 22
    Width = 342
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;Referencia'
    LookupSource = dsProduto2
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
    OnExit = RxDBLookupCombo1Exit
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 46
    Top = 0
    Width = 81
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
    OnExit = CurrencyEdit1Exit
  end
  object BitBtn1: TBitBtn
    Left = 390
    Top = 37
    Width = 80
    Height = 28
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 470
    Top = 37
    Width = 80
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 46
    Top = 44
    Width = 342
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    LookupField = 'CodCor'
    LookupDisplay = 'Nome'
    LookupSource = dsqCor
    TabOrder = 2
    OnEnter = RxDBLookupCombo2Enter
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 69
    Width = 783
    Height = 411
    DataSource = dsqConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 140
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 278
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCorProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Cor do Produto'
        Width = 210
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCorProd'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cor Produto'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCorMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cor Material'
        Visible = True
      end>
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = dsProduto2
    Filter.Strings = (
      '(ProdMat = '#39'M'#39' ) and (Inativo <> True)')
    Left = 684
    Top = 26
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Dbcor.Nome, Dbprodutocor.CodCor'
      'FROM "dbProdutoCor.DB" Dbprodutocor'
      '   INNER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbprodutocor.CodCor = Dbcor.Codigo)  '
      'WHERE  Dbprodutocor.CodProduto = :CodProduto '
      'ORDER BY NOME')
    Left = 504
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qCorNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCor.DB".Nome'
      Size = 35
    end
    object qCorCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbProdutoCor.DB".CodCor'
    end
  end
  object dsqCor: TDataSource
    DataSet = qCor
    Left = 520
    Top = 72
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbproduto.Referencia, Dbproduto.Codigo CodProduto, Dbprod' +
        'utomat.CodCorProd, Dbproduto.Nome NomeProduto, Dbcor.Nome NomeCo' +
        'rProduto, Dbprodutomat.CodMaterial CodMaterial, Dbprodutomat.Cod' +
        'Cor CodCorMaterial, dbProduto.Inativo'
      'FROM "dbProduto.DB" Dbproduto'
      '   INNER JOIN "dbProdutoMat.DB" Dbprodutomat'
      '   ON  (Dbproduto.Codigo = Dbprodutomat.CodProduto)  '
      '   INNER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbprodutomat.CodCorProd = Dbcor.Codigo)  '
      ' ')
    Left = 472
    Top = 184
    object qConsultaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qConsultaCodCorProd: TIntegerField
      FieldName = 'CodCorProd'
    end
    object qConsultaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qConsultaNomeCorProduto: TStringField
      FieldName = 'NomeCorProduto'
      Size = 35
    end
    object qConsultaCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qConsultaCodCorMaterial: TIntegerField
      FieldName = 'CodCorMaterial'
    end
    object qConsultaInativo: TBooleanField
      FieldName = 'Inativo'
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 488
    Top = 184
  end
  object tProduto2: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbProduto.DB'
    Left = 448
    Top = 264
    object tProduto2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProduto2CodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tProduto2CodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tProduto2Referencia: TStringField
      FieldName = 'Referencia'
    end
    object tProduto2Nome: TStringField
      FieldName = 'Nome'
      Size = 65
    end
    object tProduto2ProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object tProduto2Inativo: TBooleanField
      FieldName = 'Inativo'
    end
  end
  object dsProduto2: TDataSource
    DataSet = tProduto2
    Left = 472
    Top = 264
  end
end
