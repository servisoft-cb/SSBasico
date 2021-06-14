object DMEstoque: TDMEstoque
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 235
  Top = 338
  Height = 309
  Width = 643
  object sdsEstoqueMov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM ESTOQUEMOV'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 176
    Top = 16
    object sdsEstoqueMovFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object sdsEstoqueMovNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object sdsEstoqueMovCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object sdsEstoqueMovCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsEstoqueMovLARGURA: TStringField
      FieldName = 'LARGURA'
      Size = 1
    end
    object sdsEstoqueMovDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object sdsEstoqueMovES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoqueMovTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 3
    end
    object sdsEstoqueMovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsEstoqueMovCODCLIFORN: TIntegerField
      FieldName = 'CODCLIFORN'
    end
    object sdsEstoqueMovVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
    end
    object sdsEstoqueMovQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsEstoqueMovPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object sdsEstoqueMovPERCIPI: TFloatField
      FieldName = 'PERCIPI'
    end
    object sdsEstoqueMovVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsEstoqueMovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsEstoqueMovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object sdsEstoqueMovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object sdsEstoqueMovCODPRODUTO2: TIntegerField
      FieldName = 'CODPRODUTO2'
    end
    object sdsEstoqueMovPERCTRIBUTACAO: TFloatField
      FieldName = 'PERCTRIBUTACAO'
    end
    object sdsEstoqueMovVLRFRETE: TFloatField
      FieldName = 'VLRFRETE'
    end
    object sdsEstoqueMovCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object sdsEstoqueMovNUMSEQNOTA: TIntegerField
      FieldName = 'NUMSEQNOTA'
    end
    object sdsEstoqueMovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsEstoqueMovUNIDADEORIG: TStringField
      FieldName = 'UNIDADEORIG'
      Size = 6
    end
    object sdsEstoqueMovVLRUNITARIOORIG: TFloatField
      FieldName = 'VLRUNITARIOORIG'
    end
    object sdsEstoqueMovQTDORIG: TFloatField
      FieldName = 'QTDORIG'
    end
    object sdsEstoqueMovVLRDESCONTOORIG: TFloatField
      FieldName = 'VLRDESCONTOORIG'
    end
    object sdsEstoqueMovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
  end
  object dspEstoqueMov: TDataSetProvider
    DataSet = sdsEstoqueMov
    OnUpdateError = dspEstoqueMovUpdateError
    Left = 216
    Top = 16
  end
  object cdsEstoqueMov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FILIAL;NUMMOV'
    PacketRecords = 50
    Params = <>
    ProviderName = 'dspEstoqueMov'
    Left = 248
    Top = 16
    object cdsEstoqueMovFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsEstoqueMovNUMMOV: TIntegerField
      FieldName = 'NUMMOV'
      Required = True
    end
    object cdsEstoqueMovCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object cdsEstoqueMovCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object cdsEstoqueMovLARGURA: TStringField
      FieldName = 'LARGURA'
      Size = 1
    end
    object cdsEstoqueMovDTMOV: TDateField
      FieldName = 'DTMOV'
    end
    object cdsEstoqueMovES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoqueMovTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 3
    end
    object cdsEstoqueMovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoqueMovCODCLIFORN: TIntegerField
      FieldName = 'CODCLIFORN'
    end
    object cdsEstoqueMovVLRUNITARIO: TFloatField
      FieldName = 'VLRUNITARIO'
    end
    object cdsEstoqueMovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoqueMovPERCICMS: TFloatField
      FieldName = 'PERCICMS'
    end
    object cdsEstoqueMovPERCIPI: TFloatField
      FieldName = 'PERCIPI'
    end
    object cdsEstoqueMovVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object cdsEstoqueMovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsEstoqueMovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoqueMovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object cdsEstoqueMovCODPRODUTO2: TIntegerField
      FieldName = 'CODPRODUTO2'
    end
    object cdsEstoqueMovPERCTRIBUTACAO: TFloatField
      FieldName = 'PERCTRIBUTACAO'
    end
    object cdsEstoqueMovVLRFRETE: TFloatField
      FieldName = 'VLRFRETE'
    end
    object cdsEstoqueMovCODNATOPER: TIntegerField
      FieldName = 'CODNATOPER'
    end
    object cdsEstoqueMovNUMSEQNOTA: TIntegerField
      FieldName = 'NUMSEQNOTA'
    end
    object cdsEstoqueMovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoqueMovUNIDADEORIG: TStringField
      FieldName = 'UNIDADEORIG'
      Size = 6
    end
    object cdsEstoqueMovVLRUNITARIOORIG: TFloatField
      FieldName = 'VLRUNITARIOORIG'
    end
    object cdsEstoqueMovQTDORIG: TFloatField
      FieldName = 'QTDORIG'
    end
    object cdsEstoqueMovVLRDESCONTOORIG: TFloatField
      FieldName = 'VLRDESCONTOORIG'
    end
    object cdsEstoqueMovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
  end
  object dsEstoqueMov: TDataSource
    DataSet = cdsEstoqueMov
    Left = 280
    Top = 16
  end
  object qEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'Tamanho'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT Filial, CodMaterial, CodCor, Qtd, Tamanho, QtdLocado, Qtd' +
        'EmPedido'
      'FROM ESTOQUE_ATUAL'
      'WHERE   (Filial = :Filial)  '
      '   AND  (CodMaterial = :CodMaterial)  '
      '   AND  (CodCor = :CodCor)  '
      '   AND  (Tamanho = :Tamanho)'
      'ORDER BY Tamanho')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 152
    object qEstoqueFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qEstoqueCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object qEstoqueCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object qEstoqueQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object qEstoqueTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qEstoqueQTDLOCADO: TFloatField
      FieldName = 'QTDLOCADO'
    end
    object qEstoqueQTDEMPEDIDO: TFloatField
      FieldName = 'QTDEMPEDIDO'
    end
  end
  object qEstoque_Existe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT CodMaterial, CodCor,  SUM(Qtd2) Qtd'
      'FROM ESTOQUEMOV'
      'WHERE (CodMaterial = :CodMaterial)  '
      '   AND  (CodCor = :CodCor)  '
      'GROUP BY CodMaterial, CodCor'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 152
    object qEstoque_ExisteCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object qEstoque_ExisteCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object qEstoque_ExisteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
  end
  object sdsAux: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 152
  end
  object sdsEstoque_Atual: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_ATUAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 176
    object sdsEstoque_AtualFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object sdsEstoque_AtualCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
      Required = True
    end
    object sdsEstoque_AtualCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Required = True
    end
    object sdsEstoque_AtualTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsEstoque_AtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
  end
  object dspEstoque_Atual: TDataSetProvider
    DataSet = sdsEstoque_Atual
    OnUpdateError = dspEstoque_AtualUpdateError
    Left = 200
    Top = 176
  end
  object cdsEstoque_Atual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Atual'
    Left = 248
    Top = 184
    object cdsEstoque_AtualFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsEstoque_AtualCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
      Required = True
    end
    object cdsEstoque_AtualCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Required = True
    end
    object cdsEstoque_AtualTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsEstoque_AtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
  end
  object dsEstoque_Atual: TDataSource
    DataSet = cdsEstoque_Atual
    Left = 312
    Top = 184
  end
  object qEstoque_Atual: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'Tamanho'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT Filial, CodMaterial, CodCor,  Tamanho, Qtd, QtdLocado, Qt' +
        'dEmPedido'
      'FROM ESTOQUE_ATUAL'
      'WHERE   (Filial = :Filial)  '
      '   AND  (CodMaterial = :CodMaterial)  '
      '   AND  (CodCor = :CodCor)  '
      '   AND  (Tamanho = :Tamanho)'
      'ORDER BY Tamanho')
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 80
    object qEstoque_AtualFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qEstoque_AtualCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
      Required = True
    end
    object qEstoque_AtualCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Required = True
    end
    object qEstoque_AtualTAMANHO: TStringField
      Alignment = taRightJustify
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qEstoque_AtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object qEstoque_AtualQTDLOCADO: TFloatField
      FieldName = 'QTDLOCADO'
    end
    object qEstoque_AtualQTDEMPEDIDO: TFloatField
      FieldName = 'QTDEMPEDIDO'
    end
  end
end
