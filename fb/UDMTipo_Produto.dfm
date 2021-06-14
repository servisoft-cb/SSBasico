object DMTipo_Produto: TDMTipo_Produto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 215
  Height = 310
  Width = 544
  object sdsTipo_Produto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsTipo_ProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipo_ProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTipo_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsTipo_ProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspTipo_Produto: TDataSetProvider
    DataSet = sdsTipo_Produto
    OnUpdateError = dspTipo_ProdutoUpdateError
    Left = 216
    Top = 40
  end
  object cdsTipo_Produto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipo_Produto'
    Left = 304
    Top = 40
    object cdsTipo_ProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_ProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTipo_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsTipo_ProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipo_Produto: TDataSource
    DataSet = cdsTipo_Produto
    Left = 392
    Top = 40
  end
end
