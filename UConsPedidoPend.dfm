object fConsPedidoPend: TfConsPedidoPend
  Left = 143
  Top = 122
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Pedidos Pendentes (N'#227'o Faturados)'
  ClientHeight = 563
  ClientWidth = 782
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
    Width = 782
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 11
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label2: TLabel
      Left = 7
      Top = 35
      Width = 44
      Height = 13
      Caption = 'Dt.Inicial:'
    end
    object Label3: TLabel
      Left = 159
      Top = 35
      Width = 39
      Height = 13
      Caption = 'Dt.Final:'
    end
    object Label4: TLabel
      Left = 304
      Top = 32
      Width = 60
      Height = 13
      Caption = 'Ordenar Por:'
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 16
      Width = 78
      Height = 28
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 53
      Top = 3
      Width = 246
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 53
      Top = 27
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 200
      Top = 27
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 368
      Top = 24
      Width = 120
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Cliente, Referencia'
      Items.Strings = (
        'Cliente, Referencia'
        'Referencia, Cliente')
    end
    object BitBtn2: TBitBtn
      Left = 490
      Top = 16
      Width = 78
      Height = 28
      Caption = 'Consultar'
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 569
      Top = 16
      Width = 78
      Height = 28
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = BitBtn3Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 51
    Width = 782
    Height = 512
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
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor'
        Width = 149
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
        FieldName = 'QtdPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TamCalculo'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdProducao'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Produ'#231#227'o'
        Width = 78
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
        Title.Caption = 'C'#243'd. Produto'
        Visible = True
      end>
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.CodCliente, Dbpedidoitem.CodPro' +
        'duto, Dbpedidoitem.CodCor, Dbpedidoitem.Unidade, SUM( Dbpedidoit' +
        'em.QtdParesRest ) QtdParesRest'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      'WHERE   (Dbpedido.Cancelado = FALSE)  '
      '   AND  (Dbpedidoitem.Cancelado = FALSE)  '
      '   AND  (Dbpedidoitem.QtdParesRest > 0)  '
      
        '   AND  Dbpedidoitem.DtReprogramacao BETWEEN '#39'01/01/2010'#39' AND '#39'0' +
        '1/01/2011'#39'  '
      
        'GROUP BY Dbpedido.Pedido, Dbpedido.CodCliente, Dbpedidoitem.CodP' +
        'roduto, Dbpedidoitem.CodCor, Dbpedidoitem.Unidade')
    Left = 432
    Top = 96
    object qConsultaPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbPedido.DB".Pedido'
    end
    object qConsultaCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qConsultaCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbPedidoItem.DB".CodCor'
    end
    object qConsultaUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbPedidoItem.DB".Unidade'
      Size = 3
    end
    object qConsultaQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
  end
  object mPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
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
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QtdPedido'
        DataType = ftFloat
      end
      item
        Name = 'QtdProducao'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TamCalculo'
        DataType = ftFloat
      end
      item
        Name = 'Erro'
        DataType = ftBoolean
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mPedidoNewRecord
    Left = 544
    Top = 104
    Data = {
      3E0100009619E0BD01000000180000000D0000000000030000003E010A436F64
      436C69656E746504000100000000000B4E6F6D65436C69656E74650100490000
      0001000557494454480200020028000A436F6450726F6475746F040001000000
      000006436F64436F7204000100000000000A5265666572656E63696101004900
      000001000557494454480200020014000B4E6F6D6550726F6475746F01004900
      000001000557494454480200020028000951746450656469646F080004000000
      00000B51746450726F647563616F080004000000000007556E69646164650100
      490000000100055749445448020002000300074E6F6D65436F72010049000000
      01000557494454480200020028000A54616D43616C63756C6F08000400000000
      00044572726F0200030000000000094474456E74726567610400060000000000
      0000}
    object mPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mPedidoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mPedidoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mPedidoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mPedidoQtdPedido: TFloatField
      FieldName = 'QtdPedido'
    end
    object mPedidoQtdProducao: TFloatField
      FieldName = 'QtdProducao'
    end
    object mPedidoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mPedidoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 40
    end
    object mPedidoTamCalculo: TFloatField
      FieldName = 'TamCalculo'
    end
    object mPedidoErro: TBooleanField
      FieldName = 'Erro'
    end
    object mPedidoDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
  end
  object dsmPedido: TDataSource
    DataSet = mPedido
    Left = 568
    Top = 104
  end
end
