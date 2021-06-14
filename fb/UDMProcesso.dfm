object DMProcesso: TDMProcesso
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 215
  Height = 310
  Width = 544
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    OnUpdateError = dspProcessoUpdateError
    Left = 216
    Top = 40
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 304
    Top = 40
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 392
    Top = 40
  end
end
