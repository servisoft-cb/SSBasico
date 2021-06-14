object fPrevEmbDiario: TfPrevEmbDiario
  Left = 113
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Embarque Di'#225'rio'
  ClientHeight = 493
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 493
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 224
      Top = 25
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 413
      Top = 25
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object Shape1: TShape
      Left = 16
      Top = 474
      Width = 27
      Height = 16
      Brush.Color = clRed
    end
    object Label3: TLabel
      Left = 47
      Top = 475
      Width = 47
      Height = 13
      Caption = 'Em atraso'
    end
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object DateEdit1: TDateEdit
      Left = 287
      Top = 17
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 471
      Top = 17
      Width = 95
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = -1
      Top = 50
      Width = 786
      Height = 42
      TabOrder = 4
      object RxSpeedButton1: TRxSpeedButton
        Left = 332
        Top = 5
        Width = 100
        Height = 32
        Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
        DropDownMenu = PopupMenu1
        Caption = 'Imprimir'
        Glyph.Data = {
          0E030000424D0E030000000000003600000028000000110000000E0000000100
          180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBF0000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
          BF00BFBFBF000000000000000000000000000000000000000000000000000000
          000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
          000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
          BF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
          BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
          00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
          000000000000000000000000000000FFFFFF000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
          BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
          0000000000000000000000BFBFBFBFBFBF00}
        Layout = blGlyphLeft
      end
      object BitBtn2: TBitBtn
        Left = 432
        Top = 5
        Width = 100
        Height = 32
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn2Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          038383838383830E603800000000380E660033333330830E660333333330000E
          660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
          660300000E60330E660333330600330E660333330030330E6603333333303330
          E6033333333033330E0333333330000000033333333333333333}
      end
      object BitBtn3: TBitBtn
        Left = 232
        Top = 5
        Width = 100
        Height = 32
        Caption = 'Consulta'
        TabOrder = 1
        OnClick = BitBtn3Click
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000D000000000000DD00D000000D0FF
          FFFFFFFF0D000D000000D0FFFFFFF0000800DD000000D0FFFFFF0877808DDD00
          0000D0FFFFF0877E880DDD000000D0FFFFF07777870DDD000000D0FFFFF07E77
          870DDD000000D0FFFFF08EE7880DDD000000D0FFFFFF087780DDDD000000D0FF
          FFFFF0000DDDDD000000D0FFFFFFFFFF0DDDDD000000D0FFFFFFF0000DDDDD00
          0000D0FFFFFFF070DDDDDD000000D0FFFFFFF00DDDDDDD000000DD00000000DD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      end
      object ProgressBar1: TProgressBar
        Left = 552
        Top = 16
        Width = 217
        Height = 17
        TabOrder = 2
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 583
      Top = 8
      Width = 185
      Height = 37
      Caption = ' Agrupar por '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Cliente'
        'Refer'#234'ncia')
      TabOrder = 3
    end
    object SMDBGrid1: TSMDBGrid
      Left = 10
      Top = 94
      Width = 773
      Height = 377
      DataSource = dsmEmbarque
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 5
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
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Width = 69
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
          FieldName = 'NomeCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 256
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDia'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Dia'
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdFaturado'
          Title.Alignment = taCenter
          Title.Caption = 'Embarcado'
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdRest'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Desc. Material'
          Visible = True
        end>
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 32
      Top = 16
      Width = 185
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 208
    object Imprimir1: TMenuItem
      Caption = '&Imprimir'
      OnClick = Imprimir1Click
    end
    object Visualizar1: TMenuItem
      Caption = '&Visualizar'
      OnClick = Visualizar1Click
    end
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.CodCliente, SUM( Dbpedidoitem.QtdPares ) QtdPare' +
        's, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoite' +
        'm.QtdParesRest ) QtdParesRest, Dbpedidoitem.DtReprogramacao, Dbp' +
        'edidoitem.CodProduto'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      'WHERE   (Dbpedidoitem.materiaprima = FALSE)'
      
        '  AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado I' +
        'S NULL) )'
      
        '  AND  ( (Dbpedido.Cancelado = FALSE)  OR  (Dbpedido.Cancelado I' +
        'S NULL) )'
      
        '  AND  (Dbpedidoitem.DtReprogramacao BETWEEN :DataIni AND :DataF' +
        'in)'
      
        'GROUP BY Dbpedido.CodCliente, Dbpedidoitem.DtReprogramacao, Dbpe' +
        'didoitem.CodProduto'
      'ORDER BY Dbpedidoitem.DtReprogramacao, Dbpedidoitem.CodProduto'
      ''
      '')
    Left = 200
    Top = 160
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataFin'
        ParamType = ptUnknown
      end>
    object qPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesFat'
    end
    object qPedidoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      Origin = 'TABELAS."dbPedidoItem.DB".DtReprogramacao'
    end
    object qPedidoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
  end
  object qsPedido: TDataSource
    DataSet = qPedido
    Left = 224
    Top = 160
  end
  object mEmbarque: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'CodCli'
        DataType = ftInteger
      end
      item
        Name = 'QtdDia'
        DataType = ftFloat
      end
      item
        Name = 'QtdFaturado'
        DataType = ftFloat
      end
      item
        Name = 'QtdRest'
        DataType = ftFloat
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
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DescMaterial'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    IndexFieldNames = 'Data;NomeCliente'
    Params = <>
    StoreDefs = True
    OnNewRecord = mEmbarqueNewRecord
    Left = 280
    Top = 224
    Data = {
      DC0000009619E0BD010000001800000009000000000003000000DC0004446174
      61040006000000000006436F64436C6904000100000000000651746444696108
      000400000000000B517464466174757261646F08000400000000000751746452
      65737408000400000000000B4E6F6D65436C69656E7465010049000000010005
      57494454480200020028000A436F6450726F6475746F04000100000000000A52
      65666572656E63696101004900000001000557494454480200020014000C4465
      73634D6174657269616C01004900000001000557494454480200020032000000}
    object mEmbarqueData: TDateField
      FieldName = 'Data'
    end
    object mEmbarqueCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object mEmbarqueQtdDia: TFloatField
      FieldName = 'QtdDia'
    end
    object mEmbarqueQtdFaturado: TFloatField
      FieldName = 'QtdFaturado'
    end
    object mEmbarqueQtdRest: TFloatField
      FieldName = 'QtdRest'
    end
    object mEmbarqueNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mEmbarqueCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEmbarqueReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEmbarqueDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 50
    end
  end
  object dsmEmbarque: TDataSource
    DataSet = mEmbarque
    Left = 307
    Top = 225
  end
end
