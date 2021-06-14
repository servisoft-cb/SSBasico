object fConsCliFornMov: TfConsCliFornMov
  Left = 156
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Cliente / Fornecedores com movimento'
  ClientHeight = 453
  ClientWidth = 688
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
    Width = 688
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 37
      Width = 47
      Height = 13
      Caption = 'Dt. Inicial:'
    end
    object Label2: TLabel
      Left = 176
      Top = 37
      Width = 42
      Height = 13
      Caption = 'Dt. Final:'
    end
    object Label3: TLabel
      Left = 40
      Top = 14
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object DateEdit1: TDateEdit
      Left = 65
      Top = 29
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 219
      Top = 29
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 65
      Top = 6
      Width = 254
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno'
      LookupSource = DM1.dsFilial
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 320
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 409
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 498
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 57
    Width = 688
    Height = 396
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Cliente'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 373
        Align = alClient
        DataSource = dsqCliente
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
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCli'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cliente'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 383
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalDupl'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Movimento'
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CgcCpf'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Width = 190
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Telefone'
            Title.Alignment = taCenter
            Title.Caption = 'Fone'
            Width = 144
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Fornecedor'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 373
        Align = alClient
        DataSource = dsqFornecedor
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
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodForn'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Fornecedor'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeForn'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 388
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalDuplicata'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Movimento'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CGC'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Width = 152
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tel1Forn'
            Title.Alignment = taCenter
            Title.Caption = 'Fone'
            Width = 123
            Visible = True
          end>
      end
    end
  end
  object qCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.CodCli, Dbcliente.CgcCpf, Dbcliente.Nome Nom' +
        'eCliente, Dbcliente.Telefone, SUM( Dbnotafiscal.VlrTotalDupl ) V' +
        'lrTotalDupl'
      'FROM "DBNOTAFISCAL.DB" Dbnotafiscal'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      'WHERE   (Dbnotafiscal.Cancelada = FALSE)  '
      '   AND  (Dbnotafiscal.VlrTotalDupl > 0)  '
      '   AND  (Dbnotafiscal.SaidaEntrada = '#39'S'#39')  '
      
        '   AND  Dbnotafiscal.DtEmissao BETWEEN '#39'01/01/2007'#39' AND '#39'01/01/2' +
        '010'#39'  '
      
        'GROUP BY Dbnotafiscal.CodCli, Dbcliente.CgcCpf, Dbcliente.Nome, ' +
        'Dbcliente.Telefone'
      'ORDER BY NomeCliente')
    Left = 576
    Top = 120
    object qClienteCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."DBNOTAFISCAL.DB".CodCli'
    end
    object qClienteCgcCpf: TStringField
      FieldName = 'CgcCpf'
      Origin = 'TABELAS."dbCliente.DB".CgcCpf'
      Size = 18
    end
    object qClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 60
    end
    object qClienteTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'TABELAS."dbCliente.DB".Telefone'
      Size = 15
    end
    object qClienteVlrTotalDupl: TFloatField
      FieldName = 'VlrTotalDupl'
      Origin = 'TABELAS."DBNOTAFISCAL.DB".VlrTotalDupl'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qFornecedor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbfornecedor' +
        'es.CGC, SUM( Dbnentrada.VlrTotalDuplicata ) VlrTotalDuplicata, D' +
        'bfornecedores.Tel1Forn'
      'FROM "dbNEntrada.DB" Dbnentrada'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)  '
      'WHERE   (Dbnentrada.VlrTotalDuplicata > 0)  '
      
        '   AND  Dbnentrada.DtEntrada BETWEEN '#39'01/01/2007'#39' AND '#39'01/01/201' +
        '0'#39'  '
      
        'GROUP BY Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbforneced' +
        'ores.CGC, Dbfornecedores.Tel1Forn')
    Left = 569
    Top = 21
    object qFornecedorCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntrada.DB".CodForn'
    end
    object qFornecedorNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qFornecedorCGC: TStringField
      FieldName = 'CGC'
      Origin = 'TABELAS."dbFornecedores.DB".CGC'
      Size = 18
    end
    object qFornecedorVlrTotalDuplicata: TFloatField
      FieldName = 'VlrTotalDuplicata'
      Origin = 'TABELAS."dbNEntrada.DB".VlrTotalDuplicata'
      DisplayFormat = '###,###,##0.00'
    end
    object qFornecedorTel1Forn: TStringField
      FieldName = 'Tel1Forn'
      Origin = 'TABELAS."dbFornecedores.DB".Tel1Forn'
      Size = 15
    end
  end
  object dsqCliente: TDataSource
    DataSet = qCliente
    Left = 600
    Top = 120
  end
  object dsqFornecedor: TDataSource
    DataSet = qFornecedor
    Left = 592
    Top = 24
  end
end
