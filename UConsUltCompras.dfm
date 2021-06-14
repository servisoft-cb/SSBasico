object fConsUltCompras: TfConsUltCompras
  Left = 5
  Top = 62
  Width = 789
  Height = 476
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta '#250'ltimas compras'
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
    Width = 781
    Height = 75
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 38
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label2: TLabel
      Left = 4
      Top = 33
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label3: TLabel
      Left = 17
      Top = 56
      Width = 44
      Height = 13
      Caption = 'Dt.Inicial:'
    end
    object Label4: TLabel
      Left = 178
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Dt.Final:'
    end
    object Label5: TLabel
      Left = 320
      Top = 10
      Width = 60
      Height = 13
      Caption = 'Ordenar Por:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 62
      Top = 2
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 62
      Top = 25
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'CodForn'
      LookupDisplay = 'NomeForn'
      LookupSource = DM1.dsFornecedores
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit1: TDateEdit
      Left = 62
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 219
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 702
      Top = 11
      Width = 75
      Height = 30
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 382
      Top = 2
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Data'
      Items.Strings = (
        'Data'
        'N'#186' Nota'
        'Fornecedor'
        'Material')
    end
    object BitBtn2: TBitBtn
      Left = 702
      Top = 42
      Width = 75
      Height = 30
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 75
    Width = 781
    Height = 374
    Align = alClient
    DataSource = dsqNotas
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 17
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodForn'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Forn.'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeForn'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Fornecedor'
        Width = 225
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtMov'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Material'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Material'
        Width = 274
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrUnitario'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clVlrTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrDesconto'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Desconto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PercIpi'
        Title.Alignment = taCenter
        Title.Caption = '% IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrFrete'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Frete'
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
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object qNotas: TQuery
    OnCalcFields = qNotasCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbestoquematmov.Filial, Dbestoquematmov.NumMov, Dbestoque' +
        'matmov.CodMaterial, Dbestoquematmov.DtMov, Dbproduto.Nome NomeMa' +
        'terial, Dbestoquematmov.CodCor, Dbestoquematmov.TipoMov, Dbestoq' +
        'uematmov.NumNota, Dbestoquematmov.VlrUnitario, Dbestoquematmov.Q' +
        'td, Dbestoquematmov.VlrDesconto, Dbestoquematmov.PercIpi, Dbesto' +
        'quematmov.Unidade, Dbestoquematmov.Tamanho, Dbestoquematmov.VlrF' +
        'rete, Dbfornecedores.NomeForn, Dbfornecedores.CodForn'
      'FROM "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)  '
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbestoquematmov.CodCliForn = Dbfornecedores.CodForn)  ')
    Left = 496
    Top = 200
    object qNotasFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qNotasNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object qNotasCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qNotasDtMov: TDateField
      FieldName = 'DtMov'
    end
    object qNotasNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object qNotasCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotasTipoMov: TStringField
      FieldName = 'TipoMov'
      Size = 3
    end
    object qNotasNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qNotasVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      DisplayFormat = '###,###,##0.000#'
    end
    object qNotasQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qNotasVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object qNotasPercIpi: TFloatField
      FieldName = 'PercIpi'
    end
    object qNotasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotasTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object qNotasVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object qNotasNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object qNotasCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object qNotaslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 30
      Lookup = True
    end
    object qNotasclVlrTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrTotal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object dsqNotas: TDataSource
    DataSet = qNotas
    Left = 520
    Top = 200
  end
end
