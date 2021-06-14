object fConsMovPedido: TfConsMovPedido
  Left = 47
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Movimento Pedido (F'#225'brica/Setor)'
  ClientHeight = 561
  ClientWidth = 932
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
    Width = 932
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 11
      Width = 38
      Height = 13
      Caption = 'F'#225'brica:'
    end
    object Label2: TLabel
      Left = 2
      Top = 58
      Width = 70
      Height = 13
      Caption = 'Representada:'
    end
    object Label3: TLabel
      Left = 37
      Top = 81
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 44
      Top = 35
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object Label5: TLabel
      Left = 362
      Top = 11
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label6: TLabel
      Left = 337
      Top = 35
      Width = 60
      Height = 13
      Caption = 'Ordenar Por:'
    end
    object Label7: TLabel
      Left = 336
      Top = 58
      Width = 61
      Height = 13
      Caption = 'Dt. Envio Ini:'
    end
    object Label8: TLabel
      Left = 504
      Top = 58
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label9: TLabel
      Left = 325
      Top = 81
      Width = 72
      Height = 13
      Caption = 'Dt. Retorno Ini:'
    end
    object Label10: TLabel
      Left = 504
      Top = 81
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label11: TLabel
      Left = 16
      Top = 105
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label12: TLabel
      Left = 16
      Top = 129
      Width = 58
      Height = 13
      Caption = 'Ref. Cliente:'
    end
    object Shape1: TShape
      Left = 504
      Top = 126
      Width = 28
      Height = 15
      Brush.Color = 10930928
    end
    object Label13: TLabel
      Left = 536
      Top = 128
      Width = 107
      Height = 13
      Caption = 'Na F'#225'brica (Pendente)'
    end
    object Shape2: TShape
      Left = 654
      Top = 126
      Width = 28
      Height = 15
      Brush.Color = clYellow
    end
    object Label14: TLabel
      Left = 686
      Top = 128
      Width = 109
      Height = 13
      Caption = 'N'#227'o Enviada a F'#225'brica'
    end
    object Shape3: TShape
      Left = 814
      Top = 125
      Width = 28
      Height = 15
      Brush.Color = clMoneyGreen
    end
    object Label15: TLabel
      Left = 846
      Top = 127
      Width = 47
      Height = 13
      Caption = 'Concluido'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 74
      Top = 3
      Width = 243
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqFabrica
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 74
      Top = 50
      Width = 243
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqRepresentada
      TabOrder = 1
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 74
      Top = 73
      Width = 243
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqRepresentada
      TabOrder = 2
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 74
      Top = 27
      Width = 243
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqFabrica
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 400
      Top = 3
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 4
      Text = 'Ambos'
      Items.Strings = (
        'Na F'#225'brica (Pendente)'
        'Retorno'
        'N'#227'o Enviado a F'#225'brica'
        'Ambos')
    end
    object ComboBox2: TComboBox
      Left = 400
      Top = 27
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Pedido'
      Items.Strings = (
        'Pedido'
        'F'#225'brica'
        'Setor'
        'Dt.Entregue'
        'Dt.Saida'
        'Refer'#234'ncia'
        'Ref. Cliente'
        'Cliente')
    end
    object DateEdit1: TDateEdit
      Left = 400
      Top = 50
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
    object DateEdit2: TDateEdit
      Left = 515
      Top = 50
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object DateEdit3: TDateEdit
      Left = 400
      Top = 73
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object DateEdit4: TDateEdit
      Left = 515
      Top = 73
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object BitBtn1: TBitBtn
      Left = 616
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 10
      OnClick = BitBtn1Click
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 74
      Top = 97
      Width = 243
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia'
      LookupSource = DM1.dsProduto
      TabOrder = 11
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 74
      Top = 121
      Width = 243
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'RefCliente'
      LookupSource = dsqRefCliente
      TabOrder = 12
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 145
    Width = 932
    Height = 396
    Align = alClient
    DataSource = dsmConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
    ColCount = 20
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Item Pedido'
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Cliente'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RefCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia do Cliente'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeSetor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Setor'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeFabrica'
        Title.Alignment = taCenter
        Title.Caption = 'Nome F'#225'brica'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeRepresentada'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Representada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEntrada'
        Title.Alignment = taCenter
        Title.Caption = 'Data de Envio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtSaida'
        Title.Alignment = taCenter
        Title.Caption = 'Data Retorno'
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
        Title.Caption = 'Nome Produto'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtPrevisao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Previs'#227'o'
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
        FieldName = 'CodFabrica'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. F'#225'brica'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodRepresentada'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Representada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodSetor'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Setor'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 541
    Width = 932
    Height = 20
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo Clique Para Informar a Data de Envio e de Retorno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsCliente
    Filter.Strings = (
      'Cliente = True')
    Left = 600
    Top = 16
  end
  object mConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'ItemPedido'
        DataType = ftInteger
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 30
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
        Name = 'CodFabrica'
        DataType = ftInteger
      end
      item
        Name = 'NomeFabrica'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodRepresentada'
        DataType = ftInteger
      end
      item
        Name = 'NomeRepresentada'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodSetor'
        DataType = ftInteger
      end
      item
        Name = 'NomeSetor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DtSaida'
        DataType = ftDate
      end
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
        Name = 'RefCliente'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'DtPrevisao'
        DataType = ftDate
      end
      item
        Name = 'DtEntrada'
        DataType = ftDate
      end
      item
        Name = 'IDMovPedido'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 576
    Top = 152
    Data = {
      F60100009619E0BD010000001800000014000000000003000000F60106506564
      69646F04000100000000000A4974656D50656469646F04000100000000000D50
      656469646F436C69656E74650100490000000100055749445448020002001E00
      0A436F64436C69656E746504000100000000000B4E6F6D65436C69656E746501
      004900000001000557494454480200020028000A436F64466162726963610400
      0100000000000B4E6F6D65466162726963610100490000000100055749445448
      0200020028000F436F64526570726573656E746164610400010000000000104E
      6F6D65526570726573656E746164610100490000000100055749445448020002
      00280008436F645365746F720400010000000000094E6F6D655365746F720100
      490000000100055749445448020002001E000744745361696461040006000000
      00000A436F6450726F6475746F04000100000000000B4E6F6D6550726F647574
      6F0100490000000100055749445448020002003C000A5265666572656E636961
      01004900000001000557494454480200020014000A526566436C69656E746501
      004900000001000557494454480200020019000351746404000100000000000A
      4474507265766973616F0400060000000000094474456E747261646104000600
      000000000B49444D6F7650656469646F04000100000000000000}
    object mConsultaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mConsultaItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object mConsultaPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
      Size = 30
    end
    object mConsultaCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mConsultaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mConsultaCodFabrica: TIntegerField
      FieldName = 'CodFabrica'
    end
    object mConsultaNomeFabrica: TStringField
      FieldName = 'NomeFabrica'
      Size = 40
    end
    object mConsultaCodRepresentada: TIntegerField
      FieldName = 'CodRepresentada'
    end
    object mConsultaNomeRepresentada: TStringField
      FieldName = 'NomeRepresentada'
      Size = 40
    end
    object mConsultaCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object mConsultaNomeSetor: TStringField
      FieldName = 'NomeSetor'
      Size = 30
    end
    object mConsultaDtSaida: TDateField
      FieldName = 'DtSaida'
    end
    object mConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mConsultaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 60
    end
    object mConsultaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mConsultaRefCliente: TStringField
      FieldName = 'RefCliente'
      Size = 25
    end
    object mConsultaQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mConsultaDtPrevisao: TDateField
      FieldName = 'DtPrevisao'
    end
    object mConsultaDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object mConsultaIDMovPedido: TIntegerField
      FieldName = 'IDMovPedido'
    end
  end
  object sdsMovPedido: TSQLDataSet
    CommandText = 
      'SELECT M.*, P.NOME NOMEPRODUTO, P.REFERENCIA, P.REFCLIENTE, P.CO' +
      'DREPRESENTADA'#13#10'FROM MOVPEDIDO M'#13#10'INNER JOIN PRODUTO P'#13#10'ON M.CODP' +
      'RODUTO = P.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 672
    Top = 160
    object sdsMovPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMovPedidoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object sdsMovPedidoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object sdsMovPedidoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object sdsMovPedidoCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object sdsMovPedidoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsMovPedidoDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsMovPedidoDTPREVISAO: TDateField
      FieldName = 'DTPREVISAO'
    end
    object sdsMovPedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsMovPedidoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsMovPedidoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsMovPedidoCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object sdsMovPedidoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 65
    end
    object sdsMovPedidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsMovPedidoREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      Size = 25
    end
    object sdsMovPedidoCODREPRESENTADA: TIntegerField
      FieldName = 'CODREPRESENTADA'
    end
  end
  object cdsMovPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovPedido'
    Left = 752
    Top = 160
    object cdsMovPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovPedidoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object cdsMovPedidoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object cdsMovPedidoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object cdsMovPedidoCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object cdsMovPedidoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsMovPedidoDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsMovPedidoDTPREVISAO: TDateField
      FieldName = 'DTPREVISAO'
    end
    object cdsMovPedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsMovPedidoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsMovPedidoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object cdsMovPedidoCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object cdsMovPedidoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 65
    end
    object cdsMovPedidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMovPedidoREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      Size = 25
    end
    object cdsMovPedidoCODREPRESENTADA: TIntegerField
      FieldName = 'CODREPRESENTADA'
    end
  end
  object dspMovPedido: TDataSetProvider
    DataSet = sdsMovPedido
    Left = 712
    Top = 160
  end
  object dsMovPedido: TDataSource
    DataSet = cdsMovPedido
    Left = 792
    Top = 160
  end
  object qRefCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, RefCliente'
      'FROM "dbProduto.DB" Dbproduto'
      'WHERE  RefCliente <> '#39#39' '
      'ORDER BY RefCliente')
    Left = 728
    Top = 56
    object qRefClienteCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbProduto.DB".Codigo'
    end
    object qRefClienteRefCliente: TStringField
      FieldName = 'RefCliente'
      Origin = 'TABELAS."dbProduto.DB".RefCliente'
      Size = 25
    end
  end
  object dsqRefCliente: TDataSource
    DataSet = qRefCliente
    Left = 760
    Top = 56
  end
  object dsmConsulta: TDataSource
    DataSet = mConsulta
    Left = 600
    Top = 152
  end
end
