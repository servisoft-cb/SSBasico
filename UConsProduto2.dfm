object fConsProduto2: TfConsProduto2
  Left = 6
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Produtos'
  ClientHeight = 548
  ClientWidth = 984
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 53
    Width = 984
    Height = 495
    Align = alClient
    DataSource = dsqProduto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = SMDBGrid1TitleClick
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
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto na Empresa'
        Width = 247
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeForn'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Fornecedor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 127
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodForn'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeGrupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomesubgrupo'
        Title.Alignment = taCenter
        Title.Caption = 'Sub Grupo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Inativo'
        Title.Alignment = taCenter
        Width = 42
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LancaCor'
        Title.Alignment = taCenter
        Title.Caption = 'Lan'#231'a Cor'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 53
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 89
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Dt.Cadastro Inicial:'
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 13
      Top = 35
      Width = 84
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Dt.Cadastro Final:'
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 216
      Top = 35
      Width = 59
      Height = 13
      Caption = 'Separar Por:'
    end
    object SpeedButton2: TSpeedButton
      Left = 611
      Top = 10
      Width = 99
      Height = 30
      Caption = 'Imprimir Por Cor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 525
      Top = 10
      Width = 86
      Height = 30
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 710
      Top = 10
      Width = 99
      Height = 30
      Caption = 'Imprimir Com Pre'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object BitBtn1: TBitBtn
      Left = 440
      Top = 10
      Width = 85
      Height = 30
      Caption = 'Consultar'
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
      Left = 809
      Top = 10
      Width = 90
      Height = 30
      Hint = 'Imp. Etiquetas dos produtos selecionados'
      Caption = 'Imp. Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object CheckBox1: TCheckBox
      Left = 216
      Top = 8
      Width = 129
      Height = 17
      Caption = 'Mostrar os inativos'
      TabOrder = 2
    end
    object DateEdit1: TDateEdit
      Left = 100
      Top = 3
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object DateEdit2: TDateEdit
      Left = 100
      Top = 27
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 278
      Top = 27
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'N'#227'o Separar'
      Items.Strings = (
        'N'#227'o Separar'
        'Fornecedor'
        'Grupo'
        'Grupo,SubGrupo')
    end
  end
  object qProduto: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbproduto.Codigo, Dbproduto.Nome, Dbproduto.Referencia, D' +
        'bproduto.EstMinimo, Dbproduto.EstMaximo, Dbfornecedores.CodForn,' +
        ' Dbfornecedores.NomeForn, Dbproduto.Inativo, Dbgrupo.Nome NomeGr' +
        'upo, Dbproduto.CodGrupo, Dbproduto.Unidade, Dbproduto.LancaCor, ' +
        'DbgrupoItem.nome nomesubgrupo, Dbproduto.PrecoCor, Dbproduto.Pre' +
        'coCusto, dbProduto.VlrVenda'
      'FROM "dbProduto.DB" Dbproduto'
      '   LEFT OUTER JOIN "dbGrupo.DB" Dbgrupo'
      '   ON  (Dbproduto.CodGrupo = Dbgrupo.Codigo)  '
      '   LEFT OUTER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbproduto.CodFornecedor = Dbfornecedores.CodForn)'
      '   LEFT OUTER JOIN "dbGrupoItem.DB" DbgrupoItem'
      '   ON  (Dbproduto.CodGrupo = DbgrupoItem.CodGrupo)  '
      '   AND  (Dbproduto.CodSubGrupo = DbgrupoItem.CodSubGrupo)  '
      'WHERE  Dbproduto.ProdMat = '#39'M'#39' '
      'ORDER BY Dbproduto.Nome, Dbfornecedores.NomeForn'
      ' ')
    Left = 648
    Top = 120
    object qProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 65
    end
    object qProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qProdutoCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object qProdutoNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object qProdutoInativo: TBooleanField
      FieldName = 'Inativo'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qProdutoNomeGrupo: TStringField
      FieldName = 'NomeGrupo'
      Size = 30
    end
    object qProdutoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qProdutoLancaCor: TBooleanField
      FieldName = 'LancaCor'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qProdutoEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object qProdutoEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object qProdutonomesubgrupo: TStringField
      FieldName = 'nomesubgrupo'
      Size = 30
    end
    object qProdutoPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object qProdutoPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object qProdutoVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
  end
  object dsqProduto: TDataSource
    DataSet = qProduto
    Left = 664
    Top = 120
  end
  object mProdutoCor: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeGrupo;NomeProduto;NomeCor'
    Params = <>
    StoreDefs = True
    Left = 600
    Top = 176
    object mProdutoCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoCorNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 70
    end
    object mProdutoCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mProdutoCorNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mProdutoCorReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoCorCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object mProdutoCorNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object mProdutoCorInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object mProdutoCorCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mProdutoCorNomeGrupo: TStringField
      FieldName = 'NomeGrupo'
      Size = 30
    end
    object mProdutoCorUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mProdutoCorEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object mProdutoCorEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object mProdutoCorQtdEstoque: TFloatField
      FieldName = 'QtdEstoque'
    end
    object mProdutoCorNomeSubGrupo: TStringField
      FieldName = 'NomeSubGrupo'
      Size = 40
    end
    object mProdutoCorPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
      DisplayFormat = '###,##0.00###'
    end
    object mProdutoCorPrecoVenda: TFloatField
      FieldName = 'PrecoVenda'
      DisplayFormat = '###,##0.00###'
    end
    object mProdutoCorCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 14
    end
  end
  object qEstoque: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT DISTINCT CodMaterial, CodCor, SUM( Qtd2 ) Qtd2'
      'FROM "dbEstoqueMatMov.DB" Dbestoquematmov'
      'GROUP BY CodMaterial, CodCor')
    Left = 600
    Top = 248
    object qEstoqueCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodMaterial'
    end
    object qEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodCor'
    end
    object qEstoqueQtd2: TFloatField
      FieldName = 'Qtd2'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Qtd2'
    end
  end
  object tProdutoCor: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCor'
    MasterFields = 'Codigo'
    MasterSource = dsqProduto
    TableName = 'dbProdutoCor.DB'
    Left = 736
    Top = 200
    object tProdutoCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCorPrCusto: TFloatField
      FieldName = 'PrCusto'
    end
    object tProdutoCorCodPigmento: TStringField
      FieldName = 'CodPigmento'
      Size = 10
    end
    object tProdutoCorVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tProdutoCorInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProdutoCorEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tProdutoCorEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object tProdutoCorlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
  end
  object dsmProdutoCor: TDataSource
    DataSet = mProdutoCor
    Left = 624
    Top = 176
  end
  object tCBarra: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbCBarra.DB'
    Left = 600
    Top = 360
    object tCBarraCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 14
    end
    object tCBarraCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tCBarraCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tCBarraCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tCBarraPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tCBarraTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object tCBarraCodPrincipal: TIntegerField
      FieldName = 'CodPrincipal'
    end
    object tCBarraCodSeq: TIntegerField
      FieldName = 'CodSeq'
    end
  end
end
