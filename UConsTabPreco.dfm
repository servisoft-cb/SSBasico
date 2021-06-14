object fConsTabPreco: TfConsTabPreco
  Left = 4
  Top = 27
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Tabela de Pre'#231'o'
  ClientHeight = 502
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 8
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Label3: TLabel
    Left = 384
    Top = 8
    Width = 85
    Height = 13
    Caption = 'Nome do produto:'
  end
  object Label4: TLabel
    Left = 16
    Top = 32
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 56
    Top = 0
    Width = 81
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
    OnExit = CurrencyEdit1Exit
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 208
    Top = 0
    Width = 169
    Height = 21
    DropDownCount = 8
    DropDownWidth = 350
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia;DescMaterial'
    LookupSource = DM1.dsProduto
    TabOrder = 1
    OnChange = RxDBLookupCombo1Change
    OnEnter = RxDBLookupCombo1Enter
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 472
    Top = 0
    Width = 305
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsProduto
    TabOrder = 2
    OnChange = RxDBLookupCombo2Change
    OnEnter = RxDBLookupCombo2Enter
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 56
    Top = 24
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 3
    OnChange = RxDBLookupCombo3Change
    OnEnter = RxDBLookupCombo3Enter
  end
  object Edit1: TEdit
    Left = 56
    Top = 24
    Width = 304
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 384
    Top = 24
    Width = 89
    Height = 25
    Caption = '(F5) Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object RxDBGrid1: TRxDBGrid
    Left = 1
    Top = 51
    Width = 785
    Height = 448
    DataSource = dsqTabPreco
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = RxDBGrid1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do cliente'
        Width = 196
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodProduto'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Prod.'
        Width = 49
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 115
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 10930928
        Expanded = False
        FieldName = 'Preco'
        Title.Alignment = taCenter
        Title.Caption = 'Pr.Venda'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 10930928
        Expanded = False
        FieldName = 'PrecoMObra'
        Title.Alignment = taCenter
        Title.Caption = 'Pr.M.Obra'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Nome da cor'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do produto'
        Width = 214
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtPreco'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Pre'#231'o'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desc.Material'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 704
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object qTabPreco: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcliente.Nome NomeCliente, Dbtabpreco.CodProduto, Dbtabp' +
        'reco.CodCor, Dbtabpreco.Preco, Dbtabpreco.DtPreco, Dbtabpreco.Co' +
        'dCliente, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbpr' +
        'oduto.DescMaterial, dbTabPreco.PrecoMObra'
      'FROM "dbTabPreco.DB" Dbtabpreco'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbtabpreco.CodCliente = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbtabpreco.CodProduto = Dbproduto.Codigo)  '
      
        'ORDER BY NomeCliente, dbProduto.Referencia, dbProduto.DescMateri' +
        'al, dbtabpreco.codcor')
    Left = 496
    Top = 144
    object qTabPrecolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object qTabPrecoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qTabPrecoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qTabPrecoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qTabPrecoPreco: TFloatField
      FieldName = 'Preco'
    end
    object qTabPrecoDtPreco: TDateField
      FieldName = 'DtPreco'
    end
    object qTabPrecoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qTabPrecoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qTabPrecoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qTabPrecoDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 30
    end
    object qTabPrecoPrecoMObra: TFloatField
      FieldName = 'PrecoMObra'
    end
  end
  object dsqTabPreco: TDataSource
    DataSet = qTabPreco
    Left = 512
    Top = 144
  end
end
