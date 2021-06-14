object fConsPedido2: TfConsPedido2
  Left = 17
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Pedidos'
  ClientHeight = 487
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 113
    Align = alTop
    Color = clSilver
    TabOrder = 0
    DesignSize = (
      949
      113)
    object Label1: TLabel
      Left = 328
      Top = 9
      Width = 56
      Height = 13
      Caption = 'Dt.Emiss'#227'o:'
    end
    object Label2: TLabel
      Left = 491
      Top = 9
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label3: TLabel
      Left = 31
      Top = 9
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label4: TLabel
      Left = 9
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 643
      Top = 10
      Width = 59
      Height = 13
      Caption = 'Ordenar por:'
    end
    object Label9: TLabel
      Left = 330
      Top = 30
      Width = 54
      Height = 13
      Caption = 'Dt.Entrega:'
    end
    object Label10: TLabel
      Left = 491
      Top = 30
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object RxSpeedButton2: TRxSpeedButton
      Left = 696
      Top = 31
      Width = 70
      Height = 26
      Hint = 'Imprime o pedido de venda selecionado'
      DropDownMenu = PopupMenu1
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Layout = blGlyphLeft
      ParentFont = False
    end
    object Label8: TLabel
      Left = 321
      Top = 50
      Width = 63
      Height = 13
      Caption = 'Dt.Produ'#231#227'o:'
    end
    object Label11: TLabel
      Left = 491
      Top = 50
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object DateEdit1: TDateEdit
      Left = 386
      Top = 1
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 517
      Top = 1
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 56
      Top = 1
      Width = 193
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 625
      Top = 31
      Width = 70
      Height = 26
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
    object ComboBox1: TComboBox
      Left = 56
      Top = 21
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = 'Ambos'
      Items.Strings = (
        'Pendente'
        'Faturado'
        'Ambos')
    end
    object ComboBox2: TComboBox
      Left = 704
      Top = 2
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Dt.Emiss'#227'o'
      OnChange = ComboBox2Change
      Items.Strings = (
        'Dt.Emiss'#227'o'
        'Cliente'
        'Ord.Compra'
        'Cidade'
        'Dt.Entrega')
    end
    object CheckBox1: TCheckBox
      Left = 347
      Top = 71
      Width = 89
      Height = 17
      Caption = 'Imp. Vlr. Total'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object DateEdit3: TDateEdit
      Left = 386
      Top = 22
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object DateEdit4: TDateEdit
      Left = 517
      Top = 22
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Left = 454
      Top = 71
      Width = 146
      Height = 17
      Caption = 'Imprimir o Nome do Cliente'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox3: TCheckBox
      Left = 347
      Top = 87
      Width = 107
      Height = 17
      Caption = 'Imprimir a Cidade'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CheckBox4: TCheckBox
      Left = 454
      Top = 87
      Width = 109
      Height = 17
      Caption = 'Mostrar n'#186' da nota'
      TabOrder = 11
    end
    object ProgressBar1: TProgressBar
      Left = 624
      Top = 60
      Width = 321
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 12
    end
    object BitBtn7: TBitBtn
      Left = 767
      Top = 31
      Width = 70
      Height = 26
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn7Click
    end
    object DateEdit5: TDateEdit
      Left = 386
      Top = 42
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 14
    end
    object DateEdit6: TDateEdit
      Left = 517
      Top = 42
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 15
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 113
    Width = 949
    Height = 353
    Align = alClient
    DataSource = dsmPedido
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    FixedCols = 1
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 34
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeGrupo'
        Title.Alignment = taCenter
        Title.Caption = 'Programa'#231#227'o'
        Width = 168
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente (Fantasia)'
        Width = 151
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF'
        Title.Alignment = taCenter
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeVendedor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Vendedor'
        Width = 166
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Width = 56
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramado'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Entrega'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtProducao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Produ'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCidade'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 130
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Ordem de Compra'
        Width = 137
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Talao'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Tal'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Situacao'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 178
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Pedido'
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
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Prod.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdFaturada'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Faturada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdRestante'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdCancelada'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Cancelada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodVendedor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Vendedor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
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
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCondPgto'
        Title.Alignment = taCenter
        Title.Caption = 'Cond. Pgto.'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 466
    Width = 949
    Height = 21
    Align = alBottom
    TabOrder = 2
    object Shape1: TShape
      Left = 258
      Top = 4
      Width = 24
      Height = 13
      Brush.Color = clAqua
    end
    object Label6: TLabel
      Left = 284
      Top = 4
      Width = 70
      Height = 13
      Caption = 'Reprogramado'
    end
    object Shape2: TShape
      Left = 359
      Top = 4
      Width = 24
      Height = 13
      Brush.Color = clTeal
    end
    object Label7: TLabel
      Left = 385
      Top = 4
      Width = 42
      Height = 13
      Caption = 'Faturado'
    end
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.CodCliente, Dbpedido.DtEmissao,' +
        ' Dbcliente.Nome NomeCliente, Dbpedidoitem.CodProduto, Dbproduto.' +
        'Referencia, Dbpedidoitem.Unidade, Dbproduto.Nome NomeProduto, Db' +
        'pedidoitem.NumOS, Dbpedidoitem.DtReprogramacao, Dbpedidoitem.Pre' +
        'co, Dbpedidoitem.VlrDesconto, Dbpedido.PercComissao, Dbpedido.Co' +
        'dVendedor, Dbcliente.CodCidade, Dbpedidoitem.Item, Dbpedidoitem.' +
        'CodCor, Dbpedidoitem.VlrTotal, Dbpedido.PedidoCliente, Dbproduto' +
        '.CodGrupo, Dbcliente.Fantasia, Dbcliente.Uf, Dbpedidoitem.DtEmba' +
        'rque, Dbpedidoitem.Plano, Dbpedidoitem.Fabrica, Dbpedido.CodCond' +
        'Pgto, Dbtalao.Talao, Dbtalao.DtReprogramacao DtReprogramacaoTala' +
        'o, Dbtalao.QtdFaturada, Dbtalao.QtdRestante, Dbtalao.Quantidade,' +
        ' Dbtalao.Cancelado, Dbtalao.DtEntrega, Dbtalao.Entregue, Dbpedid' +
        'oitem.QtdPares QtdParesPedido, Dbpedidoitem.QtdParesFat QtdPares' +
        'FatPedido, Dbpedidoitem.QtdParesRest QtdParesRestPedido, Dbpedid' +
        'oitem.DtProducao'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      '   FULL OUTER JOIN "dbTalao.DB" Dbtalao'
      '   ON  (Dbpedidoitem.Pedido = Dbtalao.Pedido)  '
      '   AND  (Dbpedidoitem.Item = Dbtalao.ItemPedido)  '
      'WHERE   (Dbpedido.Cancelado = FALSE)  '
      '   AND  (Dbpedidoitem.Cancelado = FALSE)  '
      
        '   AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado ' +
        'IS NULL) )  '
      '   AND  (Dbpedidoitem.QtdPares > 0)  '
      
        '   AND  ( (Dbtalao.Cancelado = FALSE)  OR  (Dbtalao.Cancelado IS' +
        ' NULL) )  '
      ' ')
    Left = 456
    Top = 192
    object qPedidoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
    object qPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedidoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPedidoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qPedidoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qPedidoNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qPedidoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qPedidoPreco: TFloatField
      FieldName = 'Preco'
      DisplayFormat = '###,##0.00#'
    end
    object qPedidoVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object qPedidoPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object qPedidoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object qPedidoCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object qPedidoItem: TIntegerField
      FieldName = 'Item'
    end
    object qPedidoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qPedidoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qPedidoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qPedidolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qPedidoFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedidolkNomeCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCidade'
      LookupDataSet = DM1.tCidade
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCidade'
      Size = 30
      Lookup = True
    end
    object qPedidoUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
    object qPedidolkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
    object qPedidoDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
    end
    object qPedidoPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object qPedidoFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object qPedidoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qPedidolkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupo
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 40
      Lookup = True
    end
    object qPedidoCodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
    object qPedidolkNomeCondPgto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCondPgto'
      LookupDataSet = DM1.tCondPgto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCondPgto'
      Size = 30
      Lookup = True
    end
    object qPedidoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object qPedidoDtReprogramacaoTalao: TDateField
      FieldName = 'DtReprogramacaoTalao'
    end
    object qPedidoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object qPedidoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object qPedidoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qPedidoCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object qPedidoDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object qPedidolkNumNota: TIntegerField
      FieldKind = fkLookup
      FieldName = 'lkNumNota'
      LookupDataSet = tNotaFiscalItens
      LookupKeyFields = 'NumTalao'
      LookupResultField = 'NumNota'
      KeyFields = 'Talao'
      Lookup = True
    end
    object qPedidoEntregue: TBooleanField
      FieldName = 'Entregue'
    end
    object qPedidoQtdParesPedido: TFloatField
      FieldName = 'QtdParesPedido'
    end
    object qPedidoQtdParesFatPedido: TFloatField
      FieldName = 'QtdParesFatPedido'
    end
    object qPedidoQtdParesRestPedido: TFloatField
      FieldName = 'QtdParesRestPedido'
    end
    object qPedidoDtProducao: TDateField
      FieldName = 'DtProducao'
    end
  end
  object dsqPedido: TDataSource
    DataSet = qPedido
    Left = 480
    Top = 192
  end
  object mPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QtdPedido'
        DataType = ftFloat
      end
      item
        Name = 'QtdFaturada'
        DataType = ftFloat
      end
      item
        Name = 'QtdCancelada'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NomeCidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CodVendedor'
        DataType = ftInteger
      end
      item
        Name = 'NomeVendedor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Situacao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ItemPedido'
        DataType = ftInteger
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'DtReprogramado'
        DataType = ftDate
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'NomeGrupo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Preco'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Plano'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Fabrica'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NomeCondPgto'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'Talao'
        DataType = ftInteger
      end
      item
        Name = 'Entregue'
        DataType = ftBoolean
      end
      item
        Name = 'DtProducao'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mPedidoNewRecord
    Left = 584
    Top = 176
    Data = {
      5A0300009619E0BD0100000018000000240000000000030000005A030D506564
      69646F436C69656E74650100490000000100055749445448020002001E000650
      656469646F04000100000000000A436F64436C69656E74650400010000000000
      0B4E6F6D65436C69656E74650100490000000100055749445448020002002800
      0846616E74617369610100490000000100055749445448020002001400095174
      6450656469646F08000400000000000B51746446617475726164610800040000
      0000000C51746443616E63656C61646108000400000000000B51746452657374
      616E746508000400000000000A436F6450726F6475746F04000100000000000B
      4E6F6D6550726F6475746F01004900000001000557494454480200020028000A
      5265666572656E63696101004900000001000557494454480200020014000643
      6F64436F720400010000000000074E6F6D65436F720100490000000100055749
      445448020002001E000A4E6F6D65436964616465010049000000010005574944
      5448020002001E0002554601004900000001000557494454480200020002000B
      436F6456656E6465646F7204000100000000000C4E6F6D6556656E6465646F72
      010049000000010005574944544802000200280008536974756163616F010049
      00000001000557494454480200020014000A4974656D50656469646F04000100
      00000000094474456D697373616F04000600000000000E4474526570726F6772
      616D61646F0400060000000000094474456E7472656761040006000000000007
      556E6964616465010049000000010005574944544802000200030008436F6447
      7275706F0400010000000000094E6F6D65477275706F01004900000001000557
      4944544802000200280005507265636F080004000000000008566C72546F7461
      6C0800040000000000054E756D4F530100490000000100055749445448020002
      001E0005506C616E6F0100490000000100055749445448020002001E00074661
      62726963610100490000000100055749445448020002000A000C4E6F6D65436F
      6E645067746F0100490000000100055749445448020002001E00074E756D4E6F
      746104000100000000000554616C616F040001000000000008456E7472656775
      6502000300000000000A447450726F647563616F04000600000000000000}
    object mPedidoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
      Size = 30
    end
    object mPedidoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mPedidoFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object mPedidoQtdPedido: TFloatField
      FieldName = 'QtdPedido'
    end
    object mPedidoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object mPedidoQtdCancelada: TFloatField
      FieldName = 'QtdCancelada'
    end
    object mPedidoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mPedidoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mPedidoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mPedidoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mPedidoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mPedidoNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 30
    end
    object mPedidoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mPedidoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object mPedidoNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object mPedidoSituacao: TStringField
      FieldName = 'Situacao'
    end
    object mPedidoItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object mPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mPedidoDtReprogramado: TDateField
      FieldName = 'DtReprogramado'
    end
    object mPedidoDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mPedidoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mPedidoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mPedidoNomeGrupo: TStringField
      FieldName = 'NomeGrupo'
      Size = 40
    end
    object mPedidoPreco: TFloatField
      FieldName = 'Preco'
      DisplayFormat = '0.00'
    end
    object mPedidoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
    object mPedidoNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mPedidoPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object mPedidoFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 10
    end
    object mPedidoNomeCondPgto: TStringField
      FieldName = 'NomeCondPgto'
      Size = 30
    end
    object mPedidoNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mPedidoTalao: TIntegerField
      FieldName = 'Talao'
    end
    object mPedidoEntregue: TBooleanField
      FieldName = 'Entregue'
    end
    object mPedidoDtProducao: TDateField
      FieldName = 'DtProducao'
    end
  end
  object dsmPedido: TDataSource
    DataSet = mPedido
    Left = 608
    Top = 176
  end
  object tNotaFiscalItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbNotaFiscalItens.DB'
    Left = 408
    Top = 184
    object tNotaFiscalItensFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalItensNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tNotaFiscalItensNumTalao: TIntegerField
      FieldName = 'NumTalao'
    end
    object tNotaFiscalItensNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 665
    Top = 50
    object Imprimir1: TMenuItem
      Caption = 'Relat'#243'rio 1'
      OnClick = Imprimir1Click
    end
    object Visualizar1: TMenuItem
      Caption = 'Relat'#243'rio 2'
      OnClick = Visualizar1Click
    end
  end
end
