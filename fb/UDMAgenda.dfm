object DMAgenda: TDMAgenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 215
  Height = 310
  Width = 544
  object sdsAgenda: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM AGENDA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsAgendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAgendaDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
    end
    object sdsAgendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaPAUTA: TMemoField
      FieldName = 'PAUTA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaDESCISOES: TMemoField
      FieldName = 'DESCISOES'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaPENDENCIAS: TMemoField
      FieldName = 'PENDENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      Size = 50
    end
    object sdsAgendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsAgendaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsAgendaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsAgendaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsAgendaHRAGENDA: TTimeField
      FieldName = 'HRAGENDA'
    end
    object sdsAgendaCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object sdsAgendaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
  end
  object dspAgenda: TDataSetProvider
    DataSet = sdsAgenda
    OnUpdateError = dspAgendaUpdateError
    Left = 216
    Top = 40
  end
  object cdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgenda'
    Left = 304
    Top = 40
    object cdsAgendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgendaDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
    end
    object cdsAgendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaPAUTA: TMemoField
      FieldName = 'PAUTA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaDESCISOES: TMemoField
      FieldName = 'DESCISOES'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaPENDENCIAS: TMemoField
      FieldName = 'PENDENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaNOMEPESSOA: TStringField
      FieldName = 'NOMEPESSOA'
      Size = 50
    end
    object cdsAgendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsAgendaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsAgendaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsAgendaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsAgendaHRAGENDA: TTimeField
      FieldName = 'HRAGENDA'
    end
    object cdsAgendaCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsAgendaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsAgendasdsAgenda_Hist: TDataSetField
      FieldName = 'sdsAgenda_Hist'
    end
  end
  object dsAgenda: TDataSource
    DataSet = cdsAgenda
    Left = 392
    Top = 40
  end
  object dsAgendaMestre: TDataSource
    DataSet = sdsAgenda
    Left = 72
    Top = 104
  end
  object sdsAgenda_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM AGENDA_HIST'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsAgendaMestre
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
    object sdsAgenda_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAgenda_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsAgenda_HistDTANTAGENDA: TDateField
      FieldName = 'DTANTAGENDA'
    end
    object sdsAgenda_HistMOTIVOREAGENDAMENTO: TMemoField
      FieldName = 'MOTIVOREAGENDAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgenda_HistUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsAgenda_HistDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsAgenda_HistHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsAgenda_HistHRANTAGENDA: TTimeField
      FieldName = 'HRANTAGENDA'
    end
  end
  object dspAgenda_Hist: TDataSetProvider
    DataSet = sdsAgenda_Hist
    OnUpdateError = dspAgendaUpdateError
    Left = 200
    Top = 192
  end
  object cdsAgenda_Hist: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAgendasdsAgenda_Hist
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 288
    Top = 192
    object cdsAgenda_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgenda_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsAgenda_HistDTANTAGENDA: TDateField
      FieldName = 'DTANTAGENDA'
    end
    object cdsAgenda_HistMOTIVOREAGENDAMENTO: TMemoField
      FieldName = 'MOTIVOREAGENDAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgenda_HistUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsAgenda_HistDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsAgenda_HistHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsAgenda_HistHRANTAGENDA: TTimeField
      FieldName = 'HRANTAGENDA'
    end
  end
  object dsAgenda_Hist: TDataSource
    DataSet = cdsAgenda_Hist
    Left = 376
    Top = 192
  end
end
