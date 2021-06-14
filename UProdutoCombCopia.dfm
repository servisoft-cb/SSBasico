object fProdutoCombCopia: TfProdutoCombCopia
  Left = 165
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copiar combina'#231#227'o de materiais'
  ClientHeight = 511
  ClientWidth = 752
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 57
    Align = alTop
    TabOrder = 0
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 174
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label3: TLabel
      Left = 23
      Top = 36
      Width = 19
      Height = 13
      Caption = 'Cor:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 44
      Top = 4
      Width = 89
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnExit = CurrencyEdit1Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 231
      Top = 4
      Width = 184
      Height = 21
      DropDownCount = 8
      DropDownWidth = 700
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia;Nome'
      LookupSource = dsProduto
      TabOrder = 1
      OnExit = RxDBLookupCombo1Exit
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 44
      Top = 28
      Width = 371
      Height = 21
      DropDownCount = 8
      LookupField = 'CodCor'
      LookupDisplay = 'lkNomeCor'
      LookupSource = dsProdutoCor
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
    end
    object BitBtn3: TBitBtn
      Left = 416
      Top = 24
      Width = 113
      Height = 25
      Caption = 'Mostrar Combina'#231#245'es'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 98
    Width = 752
    Height = 136
    Align = alTop
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cor'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCombinacao'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Combina'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Combina'#231#227'o'
        Width = 309
        Visible = True
      end>
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 234
    Width = 752
    Height = 264
    Align = alTop
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 2
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
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Material'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Material'
        Width = 340
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Consumo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Consumo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#227'o'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 752
    Height = 41
    Align = alTop
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 9
      Top = 7
      Width = 185
      Height = 29
      Caption = 'Copiar Combina'#231#245'es Selecionadas'
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
      Left = 195
      Top = 7
      Width = 85
      Height = 29
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
  object tProduto: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbProduto.DB'
    Left = 600
    Top = 64
    object tProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tProdutoCodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tProdutoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tProdutoCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tProdutoLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tProdutoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoQParTalao: TFloatField
      FieldName = 'QParTalao'
    end
    object tProdutoPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tProdutoPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdutoInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProdutoAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tProdutoAliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tProdutoNomeExp: TStringField
      FieldName = 'NomeExp'
      Size = 45
    end
    object tProdutoDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 40
    end
    object tProdutoReferencia2: TStringField
      FieldName = 'Referencia2'
    end
    object tProdutoVlrAtelier: TFloatField
      FieldName = 'VlrAtelier'
    end
    object tProdutoNomeModelo: TStringField
      FieldName = 'NomeModelo'
    end
    object tProdutoFotoJpeg: TBlobField
      FieldName = 'FotoJpeg'
      BlobType = ftParadoxOle
      Size = 1
    end
    object tProdutoObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tProdutoEndEtiq: TStringField
      FieldName = 'EndEtiq'
      Size = 60
    end
    object tProdutoLancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
    object tProdutoPrecoGrade: TBooleanField
      FieldName = 'PrecoGrade'
    end
    object tProdutoVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tProdutoProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object tProdutoPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object tProdutoPosseMat: TStringField
      FieldName = 'PosseMat'
      Size = 1
    end
    object tProdutoEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tProdutoDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object tProdutoMaterialOutros: TStringField
      FieldName = 'MaterialOutros'
      Size = 1
    end
    object tProdutoPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object tProdutoCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object tProdutoEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tProdutoEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object tProdutoPercComissaoVend: TFloatField
      FieldName = 'PercComissaoVend'
    end
    object tProdutoImpTabPreco: TBooleanField
      FieldName = 'ImpTabPreco'
    end
    object tProdutoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tProdutoDtCad: TDateField
      FieldName = 'DtCad'
    end
    object tProdutoHrCad: TTimeField
      FieldName = 'HrCad'
    end
    object tProdutoCA: TStringField
      FieldName = 'CA'
    end
    object tProdutoVincularProduto: TBooleanField
      FieldName = 'VincularProduto'
    end
    object tProdutoCodProdutoEst: TIntegerField
      FieldName = 'CodProdutoEst'
    end
    object tProdutoPercQuebraTaloes: TFloatField
      FieldName = 'PercQuebraTaloes'
    end
    object tProdutoPercComissaoVend2: TFloatField
      FieldName = 'PercComissaoVend2'
    end
    object tProdutoFichaTecnicaConsPorTam: TBooleanField
      FieldName = 'FichaTecnicaConsPorTam'
    end
    object tProdutoJuntarLarguraEDI: TBooleanField
      FieldName = 'JuntarLarguraEDI'
    end
    object tProdutoImpMatTalao: TBooleanField
      FieldName = 'ImpMatTalao'
    end
    object tProdutoComplemento: TStringField
      FieldName = 'Complemento'
      Size = 200
    end
    object tProdutoCodTipoProduto: TIntegerField
      FieldName = 'CodTipoProduto'
    end
    object tProdutoCodTipoMaterial: TIntegerField
      FieldName = 'CodTipoMaterial'
    end
    object tProdutoQtdVolume: TIntegerField
      FieldName = 'QtdVolume'
    end
    object tProdutoCodProcesso: TIntegerField
      FieldName = 'CodProcesso'
    end
  end
  object dsProduto: TDataSource
    DataSet = tProduto
    Left = 624
    Top = 64
  end
  object tProdutoCor: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCor'
    MasterFields = 'Codigo'
    MasterSource = dsProduto
    TableName = 'dbProdutoCor.DB'
    Left = 600
    Top = 104
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
    object tProdutoCorlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 40
      Lookup = True
    end
  end
  object dsProdutoCor: TDataSource
    DataSet = tProdutoCor
    Left = 624
    Top = 104
  end
  object tProdutoComb: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto'
    MasterFields = 'Codigo'
    MasterSource = dsProduto
    TableName = 'DBPRODUTOCOMB.DB'
    Left = 600
    Top = 144
    object tProdutoCombCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCombCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCombCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object tProdutoCombNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dsProdutoComb: TDataSource
    DataSet = tProdutoComb
    Left = 624
    Top = 144
  end
  object tProdutoMat: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProd;CodCombinacao;CodSetor;Item'
    MasterFields = 'CodProduto;CodCor;CodCombinacao'
    MasterSource = dsProdutoComb
    TableName = 'DBPRODUTOMAT.DB'
    Left = 600
    Top = 184
    object tProdutoMatCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoMatCodCorProd: TIntegerField
      FieldName = 'CodCorProd'
    end
    object tProdutoMatCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object tProdutoMatCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object tProdutoMatItem: TIntegerField
      FieldName = 'Item'
    end
    object tProdutoMatCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tProdutoMatCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoMatCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoMatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tProdutoMatVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tProdutoMatVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tProdutoMatImpTalao: TStringField
      FieldName = 'ImpTalao'
      Size = 1
    end
    object tProdutoMatUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoMatConsumo: TStringField
      FieldName = 'Consumo'
      Size = 1
    end
    object tProdutoMatCodPosicao: TIntegerField
      FieldName = 'CodPosicao'
    end
    object tProdutoMatlkNomeMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeMaterial'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodMaterial'
      Size = 60
      Lookup = True
    end
    object tProdutoMatlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 40
      Lookup = True
    end
    object tProdutoMatObs: TStringField
      FieldName = 'Obs'
      Size = 30
    end
  end
  object dsProdutoMat: TDataSource
    DataSet = tProdutoMat
    Left = 624
    Top = 184
  end
  object tProdutoConsumo: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade'
    MasterFields = 'CodProduto;CodCorProd;Item'
    MasterSource = dsProdutoMat
    TableName = 'dbProdutoConsumo.DB'
    Left = 608
    Top = 232
    object tProdutoConsumoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumoCodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumoItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumoConsumo: TFloatField
      FieldName = 'Consumo'
    end
  end
  object tProdutoConsumoItem: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade;Posicao'
    MasterFields = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade'
    MasterSource = dsProdutoConsumo
    TableName = 'dbProdutoConsumoItem.DB'
    Left = 608
    Top = 280
    object tProdutoConsumoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumoItemCodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumoItemItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumoItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumoItemPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoConsumoItemConsumo: TFloatField
      FieldName = 'Consumo'
    end
    object tProdutoConsumoItemTamanhoMat: TStringField
      FieldName = 'TamanhoMat'
      Size = 6
    end
  end
  object dsProdutoConsumo: TDataSource
    DataSet = tProdutoConsumo
    Left = 632
    Top = 232
  end
  object dsProdutoConsumoItem: TDataSource
    DataSet = tProdutoConsumoItem
    Left = 632
    Top = 280
  end
end
