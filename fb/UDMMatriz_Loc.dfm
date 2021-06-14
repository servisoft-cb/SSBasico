object DMMatriz_Loc: TDMMatriz_Loc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 215
  Height = 310
  Width = 544
  object sdsMatriz_Loc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MATRIZ_LOC'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsMatriz_LocID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMatriz_LocREFMATRIZ: TStringField
      FieldName = 'REFMATRIZ'
    end
    object sdsMatriz_LocEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object sdsMatriz_LocPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 30
    end
    object sdsMatriz_LocQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsMatriz_LocPOSSUIGRADE: TStringField
      FieldName = 'POSSUIGRADE'
      FixedChar = True
      Size = 1
    end
    object sdsMatriz_LocUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsMatriz_LocDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsMatriz_LocHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
  end
  object dspMatriz_Loc: TDataSetProvider
    DataSet = sdsMatriz_Loc
    OnUpdateError = dspMatriz_LocUpdateError
    Left = 216
    Top = 40
  end
  object cdsMatriz_Loc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMatriz_Loc'
    Left = 304
    Top = 40
    object cdsMatriz_LocID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMatriz_LocREFMATRIZ: TStringField
      FieldName = 'REFMATRIZ'
    end
    object cdsMatriz_LocEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object cdsMatriz_LocPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 30
    end
    object cdsMatriz_LocQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsMatriz_LocPOSSUIGRADE: TStringField
      FieldName = 'POSSUIGRADE'
      FixedChar = True
      Size = 1
    end
    object cdsMatriz_LocUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsMatriz_LocDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsMatriz_LocHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsMatriz_LocsdsMatriz_LocTam: TDataSetField
      FieldName = 'sdsMatriz_LocTam'
    end
  end
  object dsMatriz_Loc: TDataSource
    DataSet = cdsMatriz_Loc
    Left = 392
    Top = 40
  end
  object dsMatriz_LocMestre: TDataSource
    DataSet = sdsMatriz_Loc
    Left = 72
    Top = 104
  end
  object sdsMatriz_LocTam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MATRIZ_LOCTAM'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsMatriz_LocMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 192
    object sdsMatriz_LocTamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMatriz_LocTamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsMatriz_LocTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsMatriz_LocTamQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object dspMatriz_LocTam: TDataSetProvider
    DataSet = sdsMatriz_LocTam
    OnUpdateError = dspMatriz_LocUpdateError
    Left = 200
    Top = 192
  end
  object cdsMatriz_LocTam: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMatriz_LocsdsMatriz_LocTam
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 288
    Top = 192
    object cdsMatriz_LocTamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMatriz_LocTamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsMatriz_LocTamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsMatriz_LocTamQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object dsMatriz_LocTam: TDataSource
    DataSet = cdsMatriz_LocTam
    Left = 376
    Top = 192
  end
end
