object fReferenciaInf: TfReferenciaInf
  Left = 222
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar os dados para a refer'#234'ncia'
  ClientHeight = 238
  ClientWidth = 432
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
  object Label1: TLabel
    Left = 72
    Top = 48
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cole'#231#227'o:'
  end
  object Label2: TLabel
    Left = 9
    Top = 72
    Width = 105
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto / Fornecedor:'
  end
  object Label3: TLabel
    Left = 11
    Top = 96
    Width = 103
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ref.Cliente / Produto:'
  end
  object Label4: TLabel
    Left = 74
    Top = 120
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Material:'
  end
  object Label5: TLabel
    Left = 95
    Top = 144
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cor:'
    Visible = False
  end
  object Label6: TLabel
    Left = 81
    Top = 24
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Marca:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 116
    Top = 40
    Width = 250
    Height = 21
    DropDownCount = 8
    DataField = 'TipoCodColecao'
    DataSource = DM1.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsColecao
    TabOrder = 1
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 116
    Top = 64
    Width = 250
    Height = 21
    DropDownCount = 8
    DataField = 'TipoCodProdutoForn'
    DataSource = DM1.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsProdutoFornecedor
    TabOrder = 2
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 116
    Top = 88
    Width = 250
    Height = 21
    DropDownCount = 8
    DataField = 'TipoCodProduto'
    DataSource = DM1.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsTipoProduto
    TabOrder = 3
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 116
    Top = 112
    Width = 250
    Height = 21
    DropDownCount = 8
    DataField = 'TipoCodMaterial'
    DataSource = DM1.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsMaterial
    TabOrder = 4
  end
  object RxDBLookupCombo5: TRxDBLookupCombo
    Left = 116
    Top = 136
    Width = 250
    Height = 21
    DropDownCount = 8
    DataField = 'TipoCodCor'
    DataSource = DM1.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsCor
    TabOrder = 5
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 197
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 116
    Top = 16
    Width = 250
    Height = 21
    DropDownCount = 8
    DataField = 'TipoCodCor'
    DataSource = DM1.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsMarca
    TabOrder = 0
  end
  object sdsColecao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10'WHERE TIPO = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 48
    object sdsColecaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsColecaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsColecaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsColecaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspColecao: TDataSetProvider
    DataSet = sdsColecao
    Left = 320
    Top = 48
  end
  object cdsColecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspColecao'
    Left = 352
    Top = 48
    object cdsColecaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsColecaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsColecaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsColecaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsColecao: TDataSource
    DataSet = cdsColecao
    Left = 392
    Top = 48
  end
  object sdsProdutoFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10'WHERE TIPO = '#39'2'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 77
    object sdsProdutoFornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoFornecedorTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsProdutoFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspProdutoFornecedor: TDataSetProvider
    DataSet = sdsProdutoFornecedor
    Left = 320
    Top = 77
  end
  object cdsProdutoFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoFornecedor'
    Left = 352
    Top = 85
    object cdsProdutoFornecedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoFornecedorTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsProdutoFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsProdutoFornecedor: TDataSource
    DataSet = cdsProdutoFornecedor
    Left = 392
    Top = 77
  end
  object sdsTipoProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10'WHERE TIPO = '#39'3'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 114
    object sdsTipoProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipoProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsTipoProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspTipoProduto: TDataSetProvider
    DataSet = sdsTipoProduto
    Left = 320
    Top = 114
  end
  object cdsTipoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoProduto'
    Left = 352
    Top = 114
    object cdsTipoProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsTipoProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipoProduto: TDataSource
    DataSet = cdsTipoProduto
    Left = 392
    Top = 114
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10'WHERE TIPO = '#39'4'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 154
    object sdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsMaterialCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 320
    Top = 154
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 352
    Top = 154
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsMaterialCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 392
    Top = 154
  end
  object sdsCor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10'WHERE TIPO = '#39'5'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 194
    object sdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspCor: TDataSetProvider
    DataSet = sdsCor
    Left = 320
    Top = 194
  end
  object cdsCor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCor'
    Left = 352
    Top = 194
    object cdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsCor: TDataSource
    DataSet = cdsCor
    Left = 392
    Top = 194
  end
  object sdsMarca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10'WHERE TIPO = '#39'6'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 10
    object sdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMarcaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    Left = 320
    Top = 10
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarca'
    Left = 352
    Top = 10
    object cdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMarcaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsMarca: TDataSource
    DataSet = cdsMarca
    Left = 392
    Top = 10
  end
end
