object fConsSaldos: TfConsSaldos
  Left = 58
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Saldo das contas (Bancos)'
  ClientHeight = 444
  ClientWidth = 788
  Color = clMoneyGreen
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
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 41
    Width = 788
    Height = 403
    Align = alClient
    DataSource = dsmSaldo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodConta'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeConta'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Conta'
        Width = 248
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Real'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrChequesAtrazado'
        Title.Alignment = taCenter
        Title.Caption = 'Cheques Atrazados'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaldoPrevisao1'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo (Real - Cheques Atrazados)'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrChequesAVencer'
        Title.Alignment = taCenter
        Title.Caption = 'Cheques a Vencer'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTitulosPend'
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulos Pendentes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaldoPrevisao2'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo (Real - Cheques + T'#237'tulos)'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumConta'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Conta'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      788
      41)
    object BitBtn6: TBitBtn
      Left = 8
      Top = 3
      Width = 113
      Height = 33
      Caption = 'Atualiza Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn6Click
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 3
      Width = 89
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object qContas: TQuery
    OnCalcFields = qContasCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcontas.CodConta, Dbcontas.NomeConta, Dbcontas.NumConta,' +
        ' Dbcontas.Filial, SUM( Dbmovimentos.VlrMovDebito ) VlrMovDebito,' +
        ' SUM( Dbmovimentos.VlrMovCredito ) VlrMovCredito, Dbcontas.DigCo' +
        'nta'
      'FROM "dbContas.DB" Dbcontas'
      '   LEFT OUTER JOIN "dbMovimentos.DB" Dbmovimentos'
      '   ON  (Dbcontas.CodConta = Dbmovimentos.CodConta)  '
      
        'GROUP BY Dbcontas.CodConta, Dbcontas.NomeConta, Dbcontas.NumCont' +
        'a, Dbcontas.Filial, Dbcontas.DigConta'
      'ORDER BY Dbcontas.NomeConta')
    Left = 288
    Top = 232
    object qContasCodConta: TIntegerField
      FieldName = 'CodConta'
      Origin = 'TABELAS."dbContas.DB".CodConta'
    end
    object qContasNomeConta: TStringField
      FieldName = 'NomeConta'
      Origin = 'TABELAS."dbContas.DB".NomeConta'
      Size = 40
    end
    object qContasNumConta: TStringField
      FieldName = 'NumConta'
      Origin = 'TABELAS."dbContas.DB".NumConta'
      Size = 12
    end
    object qContasFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbContas.DB".Filial'
    end
    object qContasVlrMovDebito: TFloatField
      FieldName = 'VlrMovDebito'
      Origin = 'TABELAS."dbMovimentos.DB".VlrMovDebito'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qContasVlrMovCredito: TFloatField
      FieldName = 'VlrMovCredito'
      Origin = 'TABELAS."dbMovimentos.DB".VlrMovCredito'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qContasclVlrMovimento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrMovimento'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
  end
  object mSaldo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodConta'
        DataType = ftInteger
      end
      item
        Name = 'NomeConta'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NumConta'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Saldo'
        DataType = ftFloat
      end
      item
        Name = 'VlrDebito'
        DataType = ftFloat
      end
      item
        Name = 'VlrCredito'
        DataType = ftFloat
      end
      item
        Name = 'VlrChequesAtrazado'
        DataType = ftFloat
      end
      item
        Name = 'VlrChequesAVencer'
        DataType = ftFloat
      end
      item
        Name = 'VlrTitulosPend'
        DataType = ftFloat
      end
      item
        Name = 'SaldoPrevisao1'
        DataType = ftFloat
      end
      item
        Name = 'SaldoPrevisao2'
        DataType = ftFloat
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomeConta'
    Params = <>
    StoreDefs = True
    Left = 488
    Top = 144
    Data = {
      220100009619E0BD01000000180000000C000000000003000000220108436F64
      436F6E74610400010000000000094E6F6D65436F6E7461010049000000010005
      5749445448020002002800084E756D436F6E7461010049000000010005574944
      5448020002000C000553616C646F080004000000000009566C7244656269746F
      08000400000000000A566C724372656469746F080004000000000012566C7243
      686571756573417472617A61646F080004000000000011566C72436865717565
      734156656E63657208000400000000000E566C72546974756C6F7350656E6408
      000400000000000E53616C646F507265766973616F3108000400000000000E53
      616C646F507265766973616F3208000400000000000646696C69616C04000100
      000000000000}
    object mSaldoCodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object mSaldoNomeConta: TStringField
      FieldName = 'NomeConta'
      Size = 40
    end
    object mSaldoNumConta: TStringField
      FieldName = 'NumConta'
      Size = 12
    end
    object mSaldoSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoVlrDebito: TFloatField
      FieldName = 'VlrDebito'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoVlrCredito: TFloatField
      FieldName = 'VlrCredito'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoVlrChequesAtrazado: TFloatField
      FieldName = 'VlrChequesAtrazado'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoVlrChequesAVencer: TFloatField
      FieldName = 'VlrChequesAVencer'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoVlrTitulosPend: TFloatField
      FieldName = 'VlrTitulosPend'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoSaldoPrevisao1: TFloatField
      FieldName = 'SaldoPrevisao1'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoSaldoPrevisao2: TFloatField
      FieldName = 'SaldoPrevisao2'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mSaldoFilial: TIntegerField
      FieldName = 'Filial'
    end
  end
  object dsmSaldo: TDataSource
    DataSet = mSaldo
    Left = 504
    Top = 144
  end
  object qChequesAtrazado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodConta, SUM( VlrTotal ) VlrTotal'
      'FROM "dbCheque.DB" Dbcheque'
      'WHERE   ((DtEntrada IS NULL) or (DtEntrada < '#39'01/01/1900'#39'))'
      '   AND  (DtPrevista < :DtPrevista)  '
      'GROUP BY CodConta'
      ' ')
    Left = 376
    Top = 232
    ParamData = <
      item
        DataType = ftDate
        Name = 'DtPrevista'
        ParamType = ptUnknown
      end>
    object qChequesAtrazadoCodConta: TIntegerField
      FieldName = 'CodConta'
      Origin = 'TABELAS."dbCheque.DB".CodConta'
    end
    object qChequesAtrazadoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbCheque.DB".VlrTotal'
    end
  end
  object qCReceber: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodBancoBoleto, SUM( RestParcela ) RestParcela'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      'WHERE   (RestParcela > 0)  '
      '   AND  ((Cancelado = FALSE) or (Cancelado is Null))'
      'GROUP BY CodBancoBoleto'
      ' ')
    Left = 520
    Top = 224
    object qCReceberCodBancoBoleto: TIntegerField
      FieldName = 'CodBancoBoleto'
      Origin = 'TABELAS."dbCReceberParc.DB".CodBancoBoleto'
    end
    object qCReceberRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCReceberParc.DB".RestParcela'
    end
  end
  object qChequesAVencer: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodConta, SUM( VlrTotal ) VlrTotal'
      'FROM "dbCheque.DB" Dbcheque'
      'WHERE   ((DtEntrada IS NULL) or (DtEntrada < '#39'01/01/1900'#39'))'
      '   AND  (DtPrevista >= :DtPrevista)  '
      'GROUP BY CodConta'
      ' '
      ' ')
    Left = 448
    Top = 232
    ParamData = <
      item
        DataType = ftDate
        Name = 'DtPrevista'
        ParamType = ptUnknown
      end>
    object qChequesAVencerCodConta: TIntegerField
      FieldName = 'CodConta'
      Origin = 'TABELAS."dbCheque.DB".CodConta'
    end
    object qChequesAVencerVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbCheque.DB".VlrTotal'
    end
  end
end
