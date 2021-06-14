object fPrevProduto: TfPrevProduto
  Left = 143
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Materiais/Produtos'
  ClientHeight = 412
  ClientWidth = 776
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
    Width = 776
    Height = 56
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 10
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label2: TLabel
      Left = 1
      Top = 34
      Width = 59
      Height = 13
      Caption = 'Ordenar por:'
    end
    object Label3: TLabel
      Left = 217
      Top = 9
      Width = 40
      Height = 13
      Caption = 'Inativos:'
    end
    object Label4: TLabel
      Left = 215
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Estoque:'
    end
    object ComboBox1: TComboBox
      Left = 62
      Top = 2
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Materiais'
      Items.Strings = (
        'Materiais'
        'Materiais e Outros'
        'Outros Materiais'
        'Produtos')
    end
    object ComboBox2: TComboBox
      Left = 62
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Nome Produto'
      Items.Strings = (
        'Nome Produto'
        'Codigo'
        'Refer'#234'ncia'
        'Nome Fornecedor')
    end
    object ComboBox3: TComboBox
      Left = 260
      Top = 1
      Width = 148
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'N'#227'o Mostrar'
      Items.Strings = (
        'N'#227'o Mostrar'
        'Mostrar Inativo Junto'
        'Mostrar Somente Inativos')
    end
    object BitBtn1: TBitBtn
      Left = 424
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 500
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object ComboBox4: TComboBox
      Left = 260
      Top = 23
      Width = 148
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Mostrar s'#243' com saldo'
      Items.Strings = (
        'Mostrar s'#243' com saldo'
        'Mostrar Negativos'
        'Mostrar todos')
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 56
    Width = 776
    Height = 356
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Material'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 772
        Height = 333
        Align = alClient
        DataSource = dsqProduto
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 1
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto / Material'
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
            Title.Caption = 'Fornecedor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodFornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Forn.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LancaCor'
            Title.Alignment = taCenter
            Title.Caption = 'Possui Cor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecoCusto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Unit'#225'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PrecoCor'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o '#233' Por Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LancaGrade'
            Title.Alignment = taCenter
            Title.Caption = 'Possui Grade'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Estoque'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 772
        Height = 272
        Align = alClient
        DataSource = dsmEstoque
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        FixedCols = 1
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Width = 212
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Width = 146
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
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
            FieldName = 'QtdEstoque'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrUnitario'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'Fornecedor'
            Visible = True
          end>
      end
      object VDBGrid1: TVDBGrid
        Left = 0
        Top = 272
        Width = 772
        Height = 61
        Align = alBottom
        Color = clMoneyGreen
        DataSource = dsmEstoqueGrade
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Vertical = True
        DefaultColWidth = 100
        TitlesWidth = 72
        Columns = <
          item
            Alignment = taCenter
            Color = clGray
            FieldName = 'Tamanho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
          end
          item
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
          end>
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 424
    Top = 33
    Width = 306
    Height = 17
    TabOrder = 2
  end
  object qProduto: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbproduto.Codigo, Dbproduto.Referencia, Dbproduto.CodGrup' +
        'o, Dbproduto.Nome NomeProduto, Dbgrupo.Nome NomeGrupo, Dbproduto' +
        '.Unidade, Dbfornecedores.NomeForn, Dbproduto.CodFornecedor, Dbpr' +
        'oduto.LancaCor, Dbproduto.PrecoCusto, Dbproduto.PrecoCor, Dbprod' +
        'uto.LancaGrade, Dbproduto.Inativo'
      'FROM "dbProduto.DB" Dbproduto'
      '   FULL JOIN "dbGrupo.DB" Dbgrupo'
      '   ON  (Dbproduto.CodGrupo = Dbgrupo.Codigo)  '
      '   FULL JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbproduto.CodFornecedor = Dbfornecedores.CodForn)  '
      '')
    Left = 377
    Top = 173
    object qProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qProdutoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qProdutoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qProdutoNomeGrupo: TStringField
      FieldName = 'NomeGrupo'
      Size = 30
    end
    object qProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qProdutoNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object qProdutoCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object qProdutoLancaCor: TBooleanField
      FieldName = 'LancaCor'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qProdutoPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
      DisplayFormat = '0.000###'
    end
    object qProdutoPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qProdutoLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
      DisplayValues = 'Sim;N'#227'o'
    end
  end
  object dsqProduto: TDataSource
    DataSet = qProduto
    Left = 401
    Top = 173
  end
  object mEstoque: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 505
    Top = 229
    Data = {
      5E0100009619E0BD01000000180000000D0000000000030000005E010A436F64
      50726F6475746F04000100000000000B4E6F6D6550726F6475746F0100490000
      00010005574944544802000200280006436F64436F720400010000000000074E
      6F6D65436F720100490000000100055749445448020002001E000A5265666572
      656E63696101004900000001000557494454480200020014000754616D616E68
      6F0100490000000100055749445448020002000A000E4E6F6D65466F726E6563
      65646F7201004900000001000557494454480200020028000D436F64466F726E
      656365646F7204000100000000000B566C72556E69746172696F080004000000
      00000A5174644573746F717565080004000000000008436F64477275706F0400
      010000000000094E6F6D65477275706F01004900000001000557494454480200
      0200280007556E69646164650100490000000100055749445448020002000300
      0000}
    object mEstoqueCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEstoqueNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mEstoqueNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mEstoqueReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEstoqueTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mEstoqueNomeFornecedor: TStringField
      FieldName = 'NomeFornecedor'
      Size = 40
    end
    object mEstoqueCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object mEstoqueVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object mEstoqueQtdEstoque: TFloatField
      FieldName = 'QtdEstoque'
    end
    object mEstoqueCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mEstoqueNomeGrupo: TStringField
      FieldName = 'NomeGrupo'
      Size = 40
    end
    object mEstoqueUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
  end
  object dsmEstoque: TDataSource
    DataSet = mEstoque
    Left = 529
    Top = 229
  end
  object qEstoque: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodMaterial, CodCor, Tamanho, SUM( Qtd2 ) Qtd'
      'FROM "DBESTOQUEMATMOV.DB" Dbestoquematmov'
      'GROUP BY CodMaterial, CodCor, Tamanho')
    Left = 601
    Top = 309
    object qEstoqueCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodMaterial'
    end
    object qEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodCor'
    end
    object qEstoqueTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Tamanho'
      Size = 10
    end
    object qEstoqueQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".Qtd2'
    end
  end
  object tProdutoCor: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto'
    MasterFields = 'Codigo'
    MasterSource = dsqProduto
    TableName = 'dbProdutoCor.DB'
    Left = 457
    Top = 301
    object tProdutoCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCorCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCorPrCusto: TFloatField
      FieldName = 'PrCusto'
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
  object tProdutoTam: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodGrade'
    MasterFields = 'CodProduto;CodGrade'
    MasterSource = dsProdutoGrade
    TableName = 'dbProdutoTam.DB'
    Left = 521
    Top = 301
    object tProdutoTamCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoTamCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoTamPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoTamTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object tProdutoGrade: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto'
    MasterFields = 'Codigo'
    MasterSource = dsqProduto
    TableName = 'dbProdutoGrade.DB'
    Left = 377
    Top = 325
    object tProdutoGradeCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoGradeInativo: TBooleanField
      FieldName = 'Inativo'
    end
  end
  object dsProdutoGrade: TDataSource
    DataSet = tProdutoGrade
    Left = 393
    Top = 325
  end
  object mEstoqueGrade: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodProduto;CodCor'
    MasterFields = 'CodProduto;CodCor'
    MasterSource = dsmEstoque
    PacketRecords = 0
    Params = <>
    OnNewRecord = mEstoqueGradeNewRecord
    Left = 625
    Top = 136
    Data = {
      640000009619E0BD01000000180000000400000000000300000064000A436F64
      50726F6475746F040001000000000006436F64436F7204000100000000000754
      616D616E686F0100490000000100055749445448020002000A00035174640800
      0400000000000000}
    object mEstoqueGradeCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEstoqueGradeCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mEstoqueGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mEstoqueGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmEstoqueGrade: TDataSource
    DataSet = mEstoqueGrade
    Left = 641
    Top = 136
  end
end
