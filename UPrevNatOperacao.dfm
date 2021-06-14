object fPrevNatOperacao: TfPrevNatOperacao
  Left = 93
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio'
  ClientHeight = 536
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 81
    Width = 782
    Height = 263
    Align = alClient
    DataSource = dsqNotaFiscal
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
    OnFilterChanged = SMDBGrid1FilterChanged
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NatOper'
        Title.Alignment = taCenter
        Title.Caption = 'Nat. Interna'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodNatOper'
        Title.Alignment = taCenter
        Title.Caption = 'Nat. Oper'
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Width = 46
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
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Material'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 101
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 81
    Align = alTop
    TabOrder = 1
    DesignSize = (
      782
      81)
    object Label1: TLabel
      Left = 3
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 334
      Top = 32
      Width = 73
      Height = 13
      Caption = 'Nat. Opera'#231#227'o:'
    end
    object Label3: TLabel
      Left = 360
      Top = 10
      Width = 47
      Height = 13
      Caption = 'Dt. Inicial:'
    end
    object Label4: TLabel
      Left = 543
      Top = 9
      Width = 42
      Height = 13
      Caption = 'Dt. Final:'
    end
    object Label5: TLabel
      Left = 15
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 48
      Width = 779
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 39
      Top = 24
      Width = 289
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 408
      Top = 24
      Width = 129
      Height = 21
      DropDownCount = 8
      DropDownWidth = 350
      LookupField = 'Codigo'
      LookupDisplay = 'CodNatOper;Codigo;Descricao'
      LookupSource = DM1.dsNatOperacao2
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit1: TDateEdit
      Left = 408
      Top = 2
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 587
      Top = 1
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 39
      Top = 2
      Width = 289
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 160
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 236
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 312
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object ProgressBar1: TProgressBar
      Left = 448
      Top = 56
      Width = 321
      Height = 16
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 344
    Width = 782
    Height = 192
    Align = alBottom
    TabOrder = 2
    object SMDBGrid2: TSMDBGrid
      Left = 1
      Top = 1
      Width = 368
      Height = 190
      Align = alLeft
      DataSource = dsmTotal
      FixedColor = clMoneyGreen
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 4
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodNatOper'
          Title.Alignment = taCenter
          Title.Caption = 'Nat. Interna'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodFiscal'
          Title.Alignment = taCenter
          Title.Caption = 'Nat. Opera'#231#227'o'
          Width = 94
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade Total'
          Width = 146
          Visible = True
        end>
    end
  end
  object qNotaFiscal: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumSeq, Dbnot' +
        'afiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscali' +
        'tens.Unidade, Dbnotafiscalitens.Qtd, Dbnotafiscal.NumNota, Dbnot' +
        'afiscal.DtEmissao, Dbnotafiscalitens.NatOper, Dbnotafiscalitens.' +
        'Descricao, Dbnotafiscalitens.Referencia, Dbnatoperacao.CodNatOpe' +
        'r, Dbnotafiscal.CodCli, Dbcliente.Nome'
      'FROM "DBNOTAFISCAL.DB" Dbnotafiscal'
      '   INNER JOIN "DBNOTAFISCALITENS.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)  '
      'WHERE   (Dbnotafiscal.Cancelada = FALSE)  '
      
        '   AND  Dbnotafiscal.DtEmissao BETWEEN '#39'01/01/2007'#39' AND '#39'01/01/2' +
        '009'#39'  ')
    Left = 472
    Top = 61
    object qNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qNotaFiscalNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object qNotaFiscalCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qNotaFiscalCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotaFiscalUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotaFiscalQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,##0.0000000'
    end
    object qNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qNotaFiscalNatOper: TSmallintField
      FieldName = 'NatOper'
    end
    object qNotaFiscalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object qNotaFiscalReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qNotaFiscalCodNatOper: TStringField
      FieldName = 'CodNatOper'
      Size = 4
    end
    object qNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qNotaFiscalNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object mTotal: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CodFiscal'
    Params = <>
    OnNewRecord = mTotalNewRecord
    Left = 416
    Top = 101
    Data = {
      5C0000009619E0BD0100000018000000030000000000030000005C000A436F64
      4E61744F706572040001000000000009436F6446697363616C01004900000001
      0005574944544802000200040008517464546F74616C08000400000000000000}
    object mTotalCodNatOper: TIntegerField
      FieldName = 'CodNatOper'
    end
    object mTotalCodFiscal: TStringField
      FieldName = 'CodFiscal'
      Size = 4
    end
    object mTotalQtdTotal: TFloatField
      FieldName = 'QtdTotal'
      DisplayFormat = '###,###,##0.0000000'
    end
  end
  object dsmTotal: TDataSource
    DataSet = mTotal
    Left = 432
    Top = 101
  end
  object dsqNotaFiscal: TDataSource
    DataSet = qNotaFiscal
    Left = 488
    Top = 61
  end
end
