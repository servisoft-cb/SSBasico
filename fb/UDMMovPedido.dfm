object DMMovPedido: TDMMovPedido
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 336
  Top = 188
  Height = 371
  Width = 505
  object sdsMovPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOVPEDIDO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 48
    object sdsMovPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMovPedidoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object sdsMovPedidoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object sdsMovPedidoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object sdsMovPedidoCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object sdsMovPedidoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsMovPedidoDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsMovPedidoDTPREVISAO: TDateField
      FieldName = 'DTPREVISAO'
    end
    object sdsMovPedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsMovPedidoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsMovPedidoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsMovPedidoCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object sdsMovPedidoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsMovPedidoQTDPENDENTE: TIntegerField
      FieldName = 'QTDPENDENTE'
    end
    object sdsMovPedidoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
  end
  object dspMovPedido: TDataSetProvider
    DataSet = sdsMovPedido
    OnUpdateError = dspMovPedidoUpdateError
    Left = 152
    Top = 48
  end
  object cdsMovPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovPedido'
    OnNewRecord = cdsMovPedidoNewRecord
    Left = 232
    Top = 48
    object cdsMovPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovPedidoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object cdsMovPedidoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object cdsMovPedidoCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object cdsMovPedidoCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object cdsMovPedidoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsMovPedidoDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsMovPedidoDTPREVISAO: TDateField
      FieldName = 'DTPREVISAO'
    end
    object cdsMovPedidoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsMovPedidoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsMovPedidoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object cdsMovPedidoCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object cdsMovPedidoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsMovPedidoQTDPENDENTE: TIntegerField
      FieldName = 'QTDPENDENTE'
    end
    object cdsMovPedidoQTDPRODUZIDA: TIntegerField
      FieldName = 'QTDPRODUZIDA'
    end
    object cdsMovPedidosdsMovPedido_Nota: TDataSetField
      FieldName = 'sdsMovPedido_Nota'
    end
  end
  object dsMovPedido: TDataSource
    DataSet = cdsMovPedido
    Left = 312
    Top = 48
  end
  object sdsMovPedido_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOVPEDIDO_NOTA'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsMovPedidoMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 200
    object sdsMovPedido_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMovPedido_NotaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsMovPedido_NotaPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object sdsMovPedido_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsMovPedido_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsMovPedido_NotaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object sdsMovPedido_NotaQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsMovPedido_NotaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMovPedido_NotaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsMovPedido_NotaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object cdsMovPedido_Nota: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMovPedidosdsMovPedido_Nota
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 200
    object cdsMovPedido_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovPedido_NotaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsMovPedido_NotaPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object cdsMovPedido_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsMovPedido_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsMovPedido_NotaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsMovPedido_NotaQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsMovPedido_NotaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMovPedido_NotaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsMovPedido_NotaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object dsMovPedido_Nota: TDataSource
    DataSet = cdsMovPedido_Nota
    Left = 304
    Top = 200
  end
  object dsMovPedidoMestre: TDataSource
    DataSet = sdsMovPedido
    Left = 48
    Top = 120
  end
  object qMovPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEMPEDIDO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, PEDIDO, ITEMPEDIDO'
      'FROM MOVPEDIDO'
      'WHERE PEDIDO = :PEDIDO'
      'AND ITEMPEDIDO = :ITEMPEDIDO')
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 272
    object qMovPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMovPedidoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object qMovPedidoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
  end
end
