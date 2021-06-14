object fConsLote: TfConsLote
  Left = 192
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Lotes'
  ClientHeight = 531
  ClientWidth = 786
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
    Left = 27
    Top = 10
    Width = 23
    Height = 13
    Caption = 'Filial:'
  end
  object Label2: TLabel
    Left = 3
    Top = 30
    Width = 47
    Height = 13
    Caption = 'Dt. Inicial:'
  end
  object Label3: TLabel
    Left = 162
    Top = 30
    Width = 42
    Height = 13
    Caption = 'Dt. Final:'
  end
  object Label4: TLabel
    Left = 304
    Top = 32
    Width = 35
    Height = 13
    Caption = 'Op'#231#227'o:'
  end
  object Label5: TLabel
    Left = 304
    Top = 11
    Width = 35
    Height = 13
    Caption = 'Op'#231#227'o:'
  end
  object Label6: TLabel
    Left = 472
    Top = 11
    Width = 59
    Height = 13
    Caption = 'Ordenar por:'
  end
  object ALed2: TALed
    Left = 459
    Top = 409
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clTeal
  end
  object Label8: TLabel
    Left = 479
    Top = 412
    Width = 42
    Height = 13
    Caption = 'Faturado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed4: TALed
    Left = 534
    Top = 409
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clRed
  end
  object Label10: TLabel
    Left = 554
    Top = 412
    Width = 51
    Height = 13
    Caption = 'Cancelado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed5: TALed
    Left = 617
    Top = 409
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clAqua
  end
  object Label11: TLabel
    Left = 637
    Top = 412
    Width = 70
    Height = 13
    Caption = 'Reprogramado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed6: TALed
    Left = 721
    Top = 409
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clYellow
  end
  object Label12: TLabel
    Left = 741
    Top = 412
    Width = 38
    Height = 13
    Caption = 'Baixado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 52
    Width = 785
    Height = 353
    Color = clBtnFace
    DataSource = dsqTalao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
    ExOptions = [eoCheckBoxSelect, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 29
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 37
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 29
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Talao'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
        Width = 48
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Cliente'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Width = 43
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkUnidade'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdFaturada'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Faturada'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdRestante'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Restante'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Entrega'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente (Fantasia)'
        Width = 141
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desdobramento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 127
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Item Ped.'
        Width = 45
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
        FieldName = 'DtEntrega'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Entrega Inicial'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtBaixa'
        Title.Alignment = taCenter
        Title.Caption = 'Data Baixa'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrBaixa'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Baixa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumOS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Plano'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fabrica'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtCancelado'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cancelado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MotivoCancelado'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo do cancelamento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cancelado'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkObsTalao'
        Title.Alignment = taCenter
        Title.Caption = 'Obs. Tal'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkFabrica'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clTipo'
        Title.Alignment = taCenter
        Title.Caption = 'Desc. Tipo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtImpressao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Impress'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrImpressao'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Impress'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Frequencia'
        Title.Alignment = taCenter
        Title.Caption = 'Frequ'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 216
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCombinacao'
        Title.Alignment = taCenter
        Title.Caption = 'Combina'#231#227'o'
        Visible = True
      end>
  end
  object VDBGrid1: TVDBGrid
    Left = 1
    Top = 427
    Width = 781
    Height = 96
    Color = clInfoBk
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    DefaultColWidth = 54
    TitlesWidth = 70
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'Tamanho'
        Title.Alignment = taCenter
      end
      item
        Alignment = taCenter
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end
      item
        Alignment = taCenter
        FieldName = 'QtdFaturada'
        Title.Alignment = taCenter
        Title.Caption = 'Q.Faturada'
      end
      item
        Alignment = taCenter
        FieldName = 'QtdRestante'
        Title.Alignment = taCenter
        Title.Caption = 'Q.Restante'
      end>
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 51
    Top = 2
    Width = 249
    Height = 21
    DropDownCount = 8
    DropDownWidth = 600
    LookupField = 'Codigo'
    LookupDisplay = 'NomeInterno;Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 340
    Top = 24
    Width = 124
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Pendentes'
      'Faturados'
      'Ambos')
  end
  object DateEdit1: TDateEdit
    Left = 51
    Top = 24
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object DateEdit2: TDateEdit
    Left = 210
    Top = 24
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 468
    Top = 26
    Width = 69
    Height = 24
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 690
    Top = 26
    Width = 92
    Height = 24
    Caption = 'Imp.Detalhada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object ComboBox2: TComboBox
    Left = 340
    Top = 3
    Width = 124
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'N'#227'o Reprogramados'
      'Reprogramados'
      'Ambos')
  end
  object ComboBox3: TComboBox
    Left = 532
    Top = 3
    Width = 124
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Lote'
    Items.Strings = (
      'Lote'
      'PedidoCliente (OC)'
      'Referencia'
      'Dt.Entrega')
  end
  object BitBtn3: TBitBtn
    Left = 537
    Top = 26
    Width = 69
    Height = 24
    Caption = 'Imp. Lote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn3Click
  end
  object CheckBox1: TCheckBox
    Left = 672
    Top = 31
    Width = 43
    Height = 17
    Caption = 'QR'
    Checked = True
    State = cbChecked
    TabOrder = 11
    Visible = False
  end
  object BitBtn4: TBitBtn
    Left = 606
    Top = 26
    Width = 69
    Height = 24
    Caption = 'Mais Op'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn4Click
  end
  object CheckBox2: TCheckBox
    Left = 663
    Top = 7
    Width = 116
    Height = 17
    Caption = 'Imp. Nome Cliente'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object qTalao: TQuery
    OnCalcFields = qTalaoCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbtalao.CodCliente, Dbtalao.Talao, Dbtalao.Pedido, Dbtala' +
        'o.ItemPedido, Dbtalao.CodProduto, Dbtalao.CodCor, Dbtalao.CodGra' +
        'de, Dbtalao.Posicao, Dbtalao.Tamanho, Dbtalao.Quantidade, Dbtala' +
        'o.PedidoCliente, Dbtalao.Produzido, Dbtalao.DtBaixa, Dbtalao.Qtd' +
        'Faturada, Dbtalao.QtdRestante, Dbtalao.DtEntrega, Dbtalao.Filial' +
        ', Dbtalao.DtReprogramacao, Dbtalao.Reprogramacao, Dbcliente.Nome' +
        ' NomeCliente, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, ' +
        'Dbtalao.HrBaixa, Dbtalao.Cancelado, Dbtalao.NumOS, Dbtalao.Motiv' +
        'oCancelado, Dbtalao.DtCancelado, Dbtalao.Plano, Dbproduto.ImpMat' +
        'Talao, Dbtalao.Tipo, Dbtalao.DtImpressao, Dbtalao.HrImpressao, D' +
        'btalao.Fabrica, Dbproduto.Frequencia, Dbcliente.Fantasia, Dbprod' +
        'uto.DescMaterial, Dbproduto.Complemento, Dbtalao.CodCombinacao'
      'FROM "dbTalao.DB" Dbtalao'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbtalao.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)  '
      
        'ORDER BY Dbtalao.PedidoCliente, Dbproduto.Referencia, Dbtalao.Co' +
        'dCor')
    Left = 384
    Top = 128
    object qTalaoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qTalaoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object qTalaoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qTalaoItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object qTalaoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qTalaoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qTalaoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qTalaoPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object qTalaoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object qTalaoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qTalaoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qTalaoProduzido: TBooleanField
      FieldName = 'Produzido'
    end
    object qTalaoDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object qTalaoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object qTalaoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object qTalaoDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object qTalaoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qTalaoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qTalaoReprogramacao: TBooleanField
      FieldName = 'Reprogramacao'
    end
    object qTalaoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qTalaoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qTalaoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qTalaoHrBaixa: TTimeField
      FieldName = 'HrBaixa'
    end
    object qTalaoCancelado: TBooleanField
      FieldName = 'Cancelado'
      DisplayValues = 'SIM;NAO'
    end
    object qTalaoNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qTalaoMotivoCancelado: TStringField
      FieldName = 'MotivoCancelado'
      Size = 100
    end
    object qTalaoDtCancelado: TDateField
      FieldName = 'DtCancelado'
    end
    object qTalaoPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object qTalaolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 40
      Lookup = True
    end
    object qTalaolkObsTalao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkObsTalao'
      LookupDataSet = DM1.tPedidoItem2
      LookupKeyFields = 'Pedido;Item'
      LookupResultField = 'ObsTalao'
      KeyFields = 'Pedido;ItemPedido'
      Size = 100
      Lookup = True
    end
    object qTalaolkFabrica: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFabrica'
      LookupDataSet = DM1.tPedidoItem2
      LookupKeyFields = 'Pedido;Item'
      LookupResultField = 'Fabrica'
      KeyFields = 'Pedido;ItemPedido'
      Size = 10
      Lookup = True
    end
    object qTalaoImpMatTalao: TBooleanField
      FieldName = 'ImpMatTalao'
    end
    object qTalaoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qTalaoclTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo'
      Size = 10
      Calculated = True
    end
    object qTalaoDtImpressao: TDateField
      FieldName = 'DtImpressao'
    end
    object qTalaoHrImpressao: TTimeField
      FieldName = 'HrImpressao'
    end
    object qTalaoFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object qTalaoFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qTalaoDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 50
    end
    object qTalaoComplemento: TStringField
      FieldName = 'Complemento'
      Size = 200
    end
    object qTalaoCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object qTalaolkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = DM1.tPedidoItem2
      LookupKeyFields = 'Pedido;Item'
      LookupResultField = 'Unidade'
      KeyFields = 'Pedido;ItemPedido'
      Size = 3
      Lookup = True
    end
  end
  object dsqTalao: TDataSource
    DataSet = qTalao
    Left = 400
    Top = 128
  end
  object tTalaoGrade: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Talao'
    MasterFields = 'Talao'
    MasterSource = dsqTalao
    TableName = 'dbTalaoGrade.DB'
    Left = 360
    Top = 472
    object tTalaoGradeTalao: TIntegerField
      FieldName = 'Talao'
    end
    object tTalaoGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tTalaoGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tTalaoGradeQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tTalaoGradeQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object tTalaoGradeQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object tTalaoGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
  end
  object dsTalaoGrade: TDataSource
    DataSet = tTalaoGrade
    Left = 376
    Top = 472
  end
end
