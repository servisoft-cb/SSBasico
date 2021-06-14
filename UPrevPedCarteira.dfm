object fPrevPedCarteira: TfPrevPedCarteira
  Left = 3
  Top = 37
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio dos pedidos em carteira (em quantidade)'
  ClientHeight = 512
  ClientWidth = 782
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
    Left = 56
    Top = 11
    Width = 23
    Height = 13
    Caption = 'Filial:'
  end
  object Label2: TLabel
    Left = 10
    Top = 34
    Width = 69
    Height = 13
    Caption = 'Dt.Refer'#234'ncia:'
  end
  object Label3: TLabel
    Left = 44
    Top = 56
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label4: TLabel
    Left = 17
    Top = 78
    Width = 62
    Height = 13
    Caption = 'C'#243'd.Produto:'
  end
  object Label5: TLabel
    Left = 168
    Top = 78
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 97
    Width = 784
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel2: TBevel
    Left = 0
    Top = 122
    Width = 784
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label6: TLabel
    Left = 172
    Top = 103
    Width = 44
    Height = 13
    Caption = 'Gerando:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 410
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 80
    Top = 3
    Width = 328
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
  end
  object DateEdit1: TDateEdit
    Left = 80
    Top = 26
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 80
    Top = 48
    Width = 328
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 2
    OnEnter = RxDBLookupCombo2Enter
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 80
    Top = 70
    Width = 73
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 3
    OnExit = CurrencyEdit1Exit
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 224
    Top = 70
    Width = 185
    Height = 21
    DropDownCount = 8
    DropDownWidth = 350
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia;DescMaterial'
    LookupSource = DM1.dsProduto
    TabOrder = 4
    OnEnter = RxDBLookupCombo3Enter
    OnExit = RxDBLookupCombo3Exit
  end
  object BitBtn1: TBitBtn
    Left = 680
    Top = 32
    Width = 87
    Height = 28
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 680
    Top = 61
    Width = 87
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object ProgressBar1: TProgressBar
    Left = 218
    Top = 102
    Width = 359
    Height = 16
    TabOrder = 7
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 127
    Width = 777
    Height = 366
    DataSource = dsmProduto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid1DblClick
    OnGetCellParams = RxDBGrid1GetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
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
        Title.Caption = 'Nome do produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome da cor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdAtrazo'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Atraso'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData1'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData2'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData3'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData4'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData5'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData6'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData7'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData8'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData9'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData10'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData11'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QData12'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdAcumulada'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Acumulada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Total'
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 680
    Top = 3
    Width = 87
    Height = 28
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn3Click
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 495
    Width = 782
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para mostrar os pedidos do produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 446
    Top = 48
    Width = 225
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsGrupoCliente
    TabOrder = 11
    OnEnter = RxDBLookupCombo4Enter
  end
  object CheckBox3: TCheckBox
    Left = 446
    Top = 71
    Width = 166
    Height = 17
    Caption = 'Acumular por grupo de cliente'
    TabOrder = 12
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcliente.Nome NomeCliente, Dbcliente.Codigo CodCliente, ' +
        'Dbproduto.Referencia, Dbproduto.Codigo CodProduto, Dbpedidoitem.' +
        'CodCor, Dbproduto.Nome NomeProduto, Dbpedidoitem.DtReprogramacao' +
        ', SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, dbCliente.Fanta' +
        'sia, dbCliente.CodGrupo'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      'WHERE  Dbpedidoitem.QtdParesRest > 0'
      
        'GROUP BY Dbcliente.Nome, Dbcliente.Codigo, Dbproduto.Referencia,' +
        ' Dbproduto.Codigo, Dbpedidoitem.CodCor, Dbproduto.Nome, Dbpedido' +
        'item.DtReprogramacao, dbCliente.Fantasia, dbCliente.CodGrupo'
      'ORDER BY NomeCliente, Dbproduto.Referencia, Dbpedidoitem.CodCor')
    Left = 200
    Top = 272
    object qPedidoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedidoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedidoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qPedidoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qPedidoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qPedidoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qPedidolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qPedidoFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedidoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qPedidolkNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeGrupo'
      LookupDataSet = DM1.tGrupoCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodGrupo'
      Size = 30
      Lookup = True
    end
  end
  object qData: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdParesR' +
        'est ) QtdParesRest'
      'FROM "dbPedido.DB" Dbpedido'
      ' INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      ' ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      ' INNER JOIN "dbCliente.DB" dbCliente'
      ' ON  (dbCliente.Codigo = Dbpedido.CodCliente)'
      
        ' WHERE  (Dbpedidoitem.QtdParesRest > 0) And (dbPedidoItem.DtRepr' +
        'ogramacao >= :Data)'
      ' AND  (Dbpedido.Tipo = '#39'V'#39')'
      ' AND  (DbpedidoItem.MateriaPrima = False)'
      'GROUP BY DtReprogramacao'
      'ORDER BY DtReprogramacao'
      ''
      ' ')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftDate
        Name = 'Data'
        ParamType = ptUnknown
      end>
    object qDataDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbPedidoItem.DB".DtReprogramacao'
    end
    object qDataQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
      DisplayFormat = '#,###'
    end
  end
  object mData: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 24
    Data = {
      360000009619E0BD010000001800000002000000000003000000360004446174
      61040006000000000006496E6469636504000100000000000000}
    object mDataData: TDateField
      FieldName = 'Data'
    end
    object mDataIndice: TIntegerField
      FieldName = 'Indice'
    end
  end
  object mProduto: TClientDataSet
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
        Name = 'Fantasia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Largura'
        DataType = ftString
        Size = 8
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
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'QtdAtrazo'
        DataType = ftFloat
      end
      item
        Name = 'QtdAcumulada'
        DataType = ftFloat
      end
      item
        Name = 'QtdTotal'
        DataType = ftFloat
      end
      item
        Name = 'QData1'
        DataType = ftFloat
      end
      item
        Name = 'QData2'
        DataType = ftFloat
      end
      item
        Name = 'QData3'
        DataType = ftFloat
      end
      item
        Name = 'QData4'
        DataType = ftFloat
      end
      item
        Name = 'QData5'
        DataType = ftFloat
      end
      item
        Name = 'QData6'
        DataType = ftFloat
      end
      item
        Name = 'QData7'
        DataType = ftFloat
      end
      item
        Name = 'QData8'
        DataType = ftFloat
      end
      item
        Name = 'QData9'
        DataType = ftFloat
      end
      item
        Name = 'QData10'
        DataType = ftFloat
      end
      item
        Name = 'QData11'
        DataType = ftFloat
      end
      item
        Name = 'QData12'
        DataType = ftFloat
      end
      item
        Name = 'QData13'
        DataType = ftFloat
      end
      item
        Name = 'QData14'
        DataType = ftFloat
      end
      item
        Name = 'QData15'
        DataType = ftFloat
      end
      item
        Name = 'CorBanda'
        DataType = ftInteger
      end
      item
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'CodAgrupado'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomeCliente;Referencia;NomeCor'
    Params = <>
    StoreDefs = True
    OnNewRecord = mProdutoNewRecord
    Left = 288
    Top = 216
    Data = {
      640200009619E0BD01000000180000001E00000000000300000064020A436F64
      436C69656E746504000100000000000B4E6F6D65436C69656E74650100490000
      0001000557494454480200020028000846616E74617369610100490000000100
      0557494454480200020014000A5265666572656E636961010049000000010005
      5749445448020002001400074C61726775726101004900000001000557494454
      480200020008000A436F6450726F6475746F04000100000000000B4E6F6D6550
      726F6475746F010049000000010005574944544802000200280006436F64436F
      720400010000000000074E6F6D65436F72010049000000010005574944544802
      000200190009517464417472617A6F08000400000000000C5174644163756D75
      6C616461080004000000000008517464546F74616C0800040000000000065144
      6174613108000400000000000651446174613208000400000000000651446174
      6133080004000000000006514461746134080004000000000006514461746135
      0800040000000000065144617461360800040000000000065144617461370800
      0400000000000651446174613808000400000000000651446174613908000400
      0000000007514461746131300800040000000000075144617461313108000400
      0000000007514461746131320800040000000000075144617461313308000400
      0000000007514461746131340800040000000000075144617461313508000400
      0000000008436F7242616E6461040001000000000008436F64477275706F0400
      0100000000000B436F64416772757061646F0100490000000100055749445448
      020002000A000000}
    object mProdutoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mProdutoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mProdutoFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object mProdutoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mProdutoLargura: TStringField
      FieldName = 'Largura'
      Size = 8
    end
    object mProdutoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mProdutoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mProdutoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mProdutoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object mProdutoQtdAtrazo: TFloatField
      FieldName = 'QtdAtrazo'
    end
    object mProdutoQtdAcumulada: TFloatField
      FieldName = 'QtdAcumulada'
      DisplayFormat = '#'
    end
    object mProdutoQtdTotal: TFloatField
      FieldName = 'QtdTotal'
    end
    object mProdutoQData1: TFloatField
      FieldName = 'QData1'
      DisplayFormat = '#'
    end
    object mProdutoQData2: TFloatField
      FieldName = 'QData2'
      DisplayFormat = '#'
    end
    object mProdutoQData3: TFloatField
      FieldName = 'QData3'
      DisplayFormat = '#'
    end
    object mProdutoQData4: TFloatField
      FieldName = 'QData4'
      DisplayFormat = '#'
    end
    object mProdutoQData5: TFloatField
      FieldName = 'QData5'
      DisplayFormat = '#'
    end
    object mProdutoQData6: TFloatField
      FieldName = 'QData6'
      DisplayFormat = '#'
    end
    object mProdutoQData7: TFloatField
      FieldName = 'QData7'
      DisplayFormat = '#'
    end
    object mProdutoQData8: TFloatField
      FieldName = 'QData8'
      DisplayFormat = '#'
    end
    object mProdutoQData9: TFloatField
      FieldName = 'QData9'
      DisplayFormat = '#'
    end
    object mProdutoQData10: TFloatField
      FieldName = 'QData10'
      DisplayFormat = '#'
    end
    object mProdutoQData11: TFloatField
      FieldName = 'QData11'
      DisplayFormat = '#'
    end
    object mProdutoQData12: TFloatField
      FieldName = 'QData12'
      DisplayFormat = '#'
    end
    object mProdutoQData13: TFloatField
      FieldName = 'QData13'
      DisplayFormat = '#'
    end
    object mProdutoQData14: TFloatField
      FieldName = 'QData14'
      DisplayFormat = '#'
    end
    object mProdutoQData15: TFloatField
      FieldName = 'QData15'
      DisplayFormat = '#'
    end
    object mProdutoCorBanda: TIntegerField
      FieldName = 'CorBanda'
    end
    object mProdutoCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object mProdutoCodAgrupado: TStringField
      FieldName = 'CodAgrupado'
      Size = 10
    end
  end
  object dsmProduto: TDataSource
    DataSet = mProduto
    Left = 312
    Top = 216
  end
end
