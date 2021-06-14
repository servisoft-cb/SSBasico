object fConsPedPendFat: TfConsPedPendFat
  Left = 4
  Top = 55
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta dos lotes pendentes de faturamento'
  ClientHeight = 470
  ClientWidth = 784
  Color = 10930928
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 49
    Width = 784
    Height = 421
    Align = alClient
    DataSource = dsPedPendente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoShowRecNo, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 20
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 27
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Width = 27
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Alignment = taCenter
        Title.Caption = 'Item Ped.'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Talao'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Cliente (OC)'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 98
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumOS'
        Title.Alignment = taCenter
        Title.Caption = 'BR (N'#186' OS)'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Plano'
        Title.Alignment = taCenter
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fabrica'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdRestante'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde. Pendente'
        Width = 57
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
        Expanded = False
        FieldName = 'CgcCpf'
        Title.Alignment = taCenter
        Title.Caption = 'Cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Fantasia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome da Cor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desdobramento'
        Width = 136
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 49
    Align = alTop
    Color = 10930928
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 336
      Top = 14
      Width = 397
      Height = 24
      Caption = '..... Lotes liberados para o faturamento .....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 12
      Top = 6
      Width = 84
      Height = 29
      Caption = 'Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object qPedPendente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbTalao.Pedido, Dbproduto.Referencia, Dbcliente.Nome Nome' +
        'Cliente, Dbcor.Nome NomeCor, dbTalao.DtReprogramacao, dbTalao.Qt' +
        'dRestante, dbTalao.PedidoCliente, dbTalao.NumOS, dbTalao.ItemPed' +
        'ido, dbTalao.CodProduto, dbTalao.Plano, dbTalao.Talao, dbTalao.T' +
        'ipo, Dbcliente.Fantasia, dbTalao.CodCliente, Dbproduto.DescMater' +
        'ial, dbTalao.Fabrica, Dbcliente.CgcCpf, dbTalao.Filial'
      'FROM "dbTalao.DB" dbTalao'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (dbTalao.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (dbTalao.CodProduto = Dbproduto.Codigo)  '
      '   FULL OUTER JOIN "Dbcor.DB" Dbcor'
      '   ON  (dbTalao.CodCor = Dbcor.Codigo)  '
      'WHERE   (dbTalao.QtdRestante > 0)  '
      '   AND  ( (dbTalao.Tipo <> '#39'A'#39')  OR  (dbTalao.Tipo IS NULL) )  '
      
        '   AND  ( (dbTalao.Cancelado = FALSE)  OR  (dbTalao.Cancelado IS' +
        ' NULL) )  '
      '   AND  (dbTalao.DtBaixa IS NOT NULL)  '
      '   AND  (dbTalao.DtBaixa <> '#39'12/30/1899'#39')  '
      
        'ORDER BY NomeCliente, dbTalao.DtReprogramacao, dbTalao.Pedido, d' +
        'bTalao.ItemPedido')
    Left = 448
    Top = 136
    object qPedPendentePedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qPedPendenteReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qPedPendenteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPedPendenteNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object qPedPendenteDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qPedPendenteQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object qPedPendentePedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qPedPendenteNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qPedPendenteItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object qPedPendenteCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qPedPendentePlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object qPedPendenteTalao: TIntegerField
      FieldName = 'Talao'
    end
    object qPedPendenteTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qPedPendenteFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedPendenteCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qPedPendenteDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 30
    end
    object qPedPendenteFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object qPedPendenteCgcCpf: TStringField
      FieldName = 'CgcCpf'
      Size = 18
    end
    object qPedPendenteFilial: TIntegerField
      FieldName = 'Filial'
    end
  end
  object dsPedPendente: TDataSource
    DataSet = qPedPendente
    Left = 472
    Top = 136
  end
end
