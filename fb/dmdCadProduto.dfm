object dmCadProduto: TdmCadProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 227
  Top = 199
  Height = 431
  Width = 441
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 32
    object sdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object sdsProdutoCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 3
    end
    object sdsProdutoCODCLASFISCAL: TStringField
      FieldName = 'CODCLASFISCAL'
      Size = 12
    end
    object sdsProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object sdsProdutoLANCAGRADE: TStringField
      FieldName = 'LANCAGRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object sdsProdutoQPARTALAO: TFloatField
      FieldName = 'QPARTALAO'
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object sdsProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object sdsProdutoNOMEEXP: TStringField
      FieldName = 'NOMEEXP'
      Size = 45
    end
    object sdsProdutoDESCMATERIAL: TStringField
      FieldName = 'DESCMATERIAL'
      Size = 40
    end
    object sdsProdutoREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
    end
    object sdsProdutoVLRATELIER: TFloatField
      FieldName = 'VLRATELIER'
    end
    object sdsProdutoNOMEMODELO: TStringField
      FieldName = 'NOMEMODELO'
    end
    object sdsProdutoFOTOJPEG: TBlobField
      FieldName = 'FOTOJPEG'
      Size = 1
    end
    object sdsProdutoENDETIQ: TStringField
      FieldName = 'ENDETIQ'
      Size = 150
    end
    object sdsProdutoLANCACOR: TStringField
      FieldName = 'LANCACOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECOGRADE: TStringField
      FieldName = 'PRECOGRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object sdsProdutoPRODMAT: TStringField
      FieldName = 'PRODMAT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object sdsProdutoPOSSEMAT: TStringField
      FieldName = 'POSSEMAT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
    end
    object sdsProdutoMATERIALOUTROS: TStringField
      FieldName = 'MATERIALOUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECOCOR: TStringField
      FieldName = 'PRECOCOR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object sdsProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object sdsProdutoESTMAXIMO: TFloatField
      FieldName = 'ESTMAXIMO'
    end
    object sdsProdutoPERCCOMISSAOVEND: TFloatField
      FieldName = 'PERCCOMISSAOVEND'
    end
    object sdsProdutoIMPTABPRECO: TStringField
      FieldName = 'IMPTABPRECO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoVINCULARPRODUTO: TStringField
      FieldName = 'VINCULARPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCODPRODUTOEST: TIntegerField
      FieldName = 'CODPRODUTOEST'
    end
    object sdsProdutoPERCQUEBRATALOES: TFloatField
      FieldName = 'PERCQUEBRATALOES'
    end
    object sdsProdutoPERCCOMISSAOVEND2: TFloatField
      FieldName = 'PERCCOMISSAOVEND2'
    end
    object sdsProdutoFICHATECNICACONSPORTAM: TStringField
      FieldName = 'FICHATECNICACONSPORTAM'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoJUNTARLARGURAEDI: TStringField
      FieldName = 'JUNTARLARGURAEDI'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoIMPMATTALAO: TStringField
      FieldName = 'IMPMATTALAO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoCODTIPOPRODUTO: TIntegerField
      FieldName = 'CODTIPOPRODUTO'
    end
    object sdsProdutoCODTIPOMATERIAL: TIntegerField
      FieldName = 'CODTIPOMATERIAL'
    end
    object sdsProdutoQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object sdsProdutoCODPROCESSO: TIntegerField
      FieldName = 'CODPROCESSO'
    end
    object sdsProdutoCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      FixedChar = True
      Size = 2
    end
    object sdsProdutoTAMCALCULO: TFloatField
      FieldName = 'TAMCALCULO'
    end
    object sdsProdutoORIGEMPROD: TStringField
      FieldName = 'ORIGEMPROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoLOCALCORREDOR: TStringField
      FieldName = 'LOCALCORREDOR'
      Size = 10
    end
    object sdsProdutoLOCALPOSICAO: TStringField
      FieldName = 'LOCALPOSICAO'
      Size = 25
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoCODREPRESENTADA: TIntegerField
      FieldName = 'CODREPRESENTADA'
    end
    object sdsProdutoCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object sdsProdutoREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      Size = 25
    end
    object sdsProdutoCARIMBOSOLA: TStringField
      FieldName = 'CARIMBOSOLA'
      Size = 50
    end
    object sdsProdutoCARIMBOPALMILHA: TStringField
      FieldName = 'CARIMBOPALMILHA'
      Size = 50
    end
    object sdsProdutoFICHA: TStringField
      FieldName = 'FICHA'
      Size = 30
    end
    object sdsProdutoCONSTRUCAO: TStringField
      FieldName = 'CONSTRUCAO'
      Size = 30
    end
    object sdsProdutoFORMA: TStringField
      FieldName = 'FORMA'
      Size = 30
    end
    object sdsProdutoTIPOCODCOLECAO: TIntegerField
      FieldName = 'TIPOCODCOLECAO'
    end
    object sdsProdutoTIPOCODPRODUTOFORN: TIntegerField
      FieldName = 'TIPOCODPRODUTOFORN'
    end
    object sdsProdutoTIPOCODPRODUTO: TIntegerField
      FieldName = 'TIPOCODPRODUTO'
    end
    object sdsProdutoTIPOCODMATERIAL: TIntegerField
      FieldName = 'TIPOCODMATERIAL'
    end
    object sdsProdutoTIPOCODCOR: TIntegerField
      FieldName = 'TIPOCODCOR'
    end
    object sdsProdutoENDARQUIVOCNC: TStringField
      FieldName = 'ENDARQUIVOCNC'
      Size = 250
    end
    object sdsProdutoTIPOCODMARCA: TIntegerField
      FieldName = 'TIPOCODMARCA'
    end
    object sdsProdutoGERARCODBARRA: TStringField
      FieldName = 'GERARCODBARRA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    OnUpdateError = dspProdutoUpdateError
    Left = 168
    Top = 32
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 224
    Top = 32
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsProdutoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object cdsProdutoCODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 3
    end
    object cdsProdutoCODCLASFISCAL: TStringField
      FieldName = 'CODCLASFISCAL'
      Size = 12
    end
    object cdsProdutoCODSITTRIB: TIntegerField
      FieldName = 'CODSITTRIB'
    end
    object cdsProdutoLANCAGRADE: TStringField
      FieldName = 'LANCAGRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODGRADE: TIntegerField
      FieldName = 'CODGRADE'
    end
    object cdsProdutoQPARTALAO: TFloatField
      FieldName = 'QPARTALAO'
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object cdsProdutoALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object cdsProdutoNOMEEXP: TStringField
      FieldName = 'NOMEEXP'
      Size = 45
    end
    object cdsProdutoDESCMATERIAL: TStringField
      FieldName = 'DESCMATERIAL'
      Size = 40
    end
    object cdsProdutoREFERENCIA2: TStringField
      FieldName = 'REFERENCIA2'
    end
    object cdsProdutoVLRATELIER: TFloatField
      FieldName = 'VLRATELIER'
    end
    object cdsProdutoNOMEMODELO: TStringField
      FieldName = 'NOMEMODELO'
    end
    object cdsProdutoFOTOJPEG: TBlobField
      FieldName = 'FOTOJPEG'
      Size = 1
    end
    object cdsProdutoENDETIQ: TStringField
      FieldName = 'ENDETIQ'
      Size = 150
    end
    object cdsProdutoLANCACOR: TStringField
      FieldName = 'LANCACOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECOGRADE: TStringField
      FieldName = 'PRECOGRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object cdsProdutoPRODMAT: TStringField
      FieldName = 'PRODMAT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsProdutoPOSSEMAT: TStringField
      FieldName = 'POSSEMAT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
    end
    object cdsProdutoMATERIALOUTROS: TStringField
      FieldName = 'MATERIALOUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECOCOR: TStringField
      FieldName = 'PRECOCOR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsProdutoESTMINIMO: TFloatField
      FieldName = 'ESTMINIMO'
    end
    object cdsProdutoESTMAXIMO: TFloatField
      FieldName = 'ESTMAXIMO'
    end
    object cdsProdutoPERCCOMISSAOVEND: TFloatField
      FieldName = 'PERCCOMISSAOVEND'
    end
    object cdsProdutoIMPTABPRECO: TStringField
      FieldName = 'IMPTABPRECO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoVINCULARPRODUTO: TStringField
      FieldName = 'VINCULARPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODPRODUTOEST: TIntegerField
      FieldName = 'CODPRODUTOEST'
    end
    object cdsProdutoPERCQUEBRATALOES: TFloatField
      FieldName = 'PERCQUEBRATALOES'
    end
    object cdsProdutoPERCCOMISSAOVEND2: TFloatField
      FieldName = 'PERCCOMISSAOVEND2'
    end
    object cdsProdutoFICHATECNICACONSPORTAM: TStringField
      FieldName = 'FICHATECNICACONSPORTAM'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoJUNTARLARGURAEDI: TStringField
      FieldName = 'JUNTARLARGURAEDI'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoIMPMATTALAO: TStringField
      FieldName = 'IMPMATTALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoCODTIPOPRODUTO: TIntegerField
      FieldName = 'CODTIPOPRODUTO'
    end
    object cdsProdutoCODTIPOMATERIAL: TIntegerField
      FieldName = 'CODTIPOMATERIAL'
    end
    object cdsProdutoQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsProdutoCODPROCESSO: TIntegerField
      FieldName = 'CODPROCESSO'
    end
    object cdsProdutoCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      FixedChar = True
      Size = 2
    end
    object cdsProdutoTAMCALCULO: TFloatField
      FieldName = 'TAMCALCULO'
    end
    object cdsProdutoORIGEMPROD: TStringField
      FieldName = 'ORIGEMPROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoLOCALCORREDOR: TStringField
      FieldName = 'LOCALCORREDOR'
      Size = 10
    end
    object cdsProdutoLOCALPOSICAO: TStringField
      FieldName = 'LOCALPOSICAO'
      Size = 25
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoCODREPRESENTADA: TIntegerField
      FieldName = 'CODREPRESENTADA'
    end
    object cdsProdutoCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object cdsProdutoREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      Size = 25
    end
    object cdsProdutoCARIMBOSOLA: TStringField
      FieldName = 'CARIMBOSOLA'
      Size = 50
    end
    object cdsProdutoCARIMBOPALMILHA: TStringField
      FieldName = 'CARIMBOPALMILHA'
      Size = 50
    end
    object cdsProdutoFICHA: TStringField
      FieldName = 'FICHA'
      Size = 30
    end
    object cdsProdutoCONSTRUCAO: TStringField
      FieldName = 'CONSTRUCAO'
      Size = 30
    end
    object cdsProdutoFORMA: TStringField
      FieldName = 'FORMA'
      Size = 30
    end
    object cdsProdutoTIPOCODCOLECAO: TIntegerField
      FieldName = 'TIPOCODCOLECAO'
    end
    object cdsProdutoTIPOCODPRODUTOFORN: TIntegerField
      FieldName = 'TIPOCODPRODUTOFORN'
    end
    object cdsProdutoTIPOCODPRODUTO: TIntegerField
      FieldName = 'TIPOCODPRODUTO'
    end
    object cdsProdutoTIPOCODMATERIAL: TIntegerField
      FieldName = 'TIPOCODMATERIAL'
    end
    object cdsProdutoTIPOCODCOR: TIntegerField
      FieldName = 'TIPOCODCOR'
    end
    object cdsProdutoENDARQUIVOCNC: TStringField
      FieldName = 'ENDARQUIVOCNC'
      Size = 250
    end
    object cdsProdutoTIPOCODMARCA: TIntegerField
      FieldName = 'TIPOCODMARCA'
    end
    object cdsProdutoGERARCODBARRA: TStringField
      FieldName = 'GERARCODBARRA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 280
    Top = 32
  end
  object dsProdutoMaster: TDataSource
    DataSet = sdsProduto
    Left = 48
    Top = 112
  end
  object sdsProduto_Posicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, POSICAO.NOME NOMEPOSICAO'#13#10'FROM  PRODUTO_POSICAO P'#13#10'I' +
      'NNER JOIN POSICAO '#13#10'ON P.CODPOSICAO = POSICAO.CODIGO'#13#10'WHERE P.CO' +
      'DIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 184
    object sdsProduto_PosicaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsProduto_PosicaoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object sdsProduto_PosicaoCODPOSICAO: TIntegerField
      FieldName = 'CODPOSICAO'
    end
    object sdsProduto_PosicaoIMPMATERIAL: TStringField
      FieldName = 'IMPMATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_PosicaoIMPCOR: TStringField
      FieldName = 'IMPCOR'
      FixedChar = True
      Size = 1
    end
    object sdsProduto_PosicaoNOMEPOSICAO: TStringField
      FieldName = 'NOMEPOSICAO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspProduto_Posicao: TDataSetProvider
    DataSet = sdsProduto_Posicao
    OnUpdateError = dspProduto_PosicaoUpdateError
    Left = 184
    Top = 184
  end
  object cdsProduto_Posicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Posicao'
    Left = 240
    Top = 184
    object cdsProduto_PosicaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsProduto_PosicaoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsProduto_PosicaoCODPOSICAO: TIntegerField
      FieldName = 'CODPOSICAO'
    end
    object cdsProduto_PosicaoIMPMATERIAL: TStringField
      FieldName = 'IMPMATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_PosicaoIMPCOR: TStringField
      FieldName = 'IMPCOR'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_PosicaoNOMEPOSICAO: TStringField
      FieldName = 'NOMEPOSICAO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsProduto_Posicao: TDataSource
    DataSet = cdsProduto_Posicao
    Left = 296
    Top = 184
  end
  object sdsProduto_Ferramental: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PF.*, MAT.NOME NOMEMATERIAL'#13#10'FROM  PRODUTO_FERRAMENTAL PF' +
      #13#10'INNER JOIN PRODUTO MAT '#13#10'ON PF.CODMATERIAL = MAT.CODIGO'#13#10'WHERE' +
      ' PF.CODPRODUTO = :CODPRODUTO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 272
    object sdsProduto_FerramentalCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sdsProduto_FerramentalITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_FerramentalCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object sdsProduto_FerramentalTIPOVC: TStringField
      FieldName = 'TIPOVC'
      Size = 7
    end
    object sdsProduto_FerramentalTIPOAP: TStringField
      FieldName = 'TIPOAP'
      Size = 7
    end
    object sdsProduto_FerramentalTIPOA: TStringField
      FieldName = 'TIPOA'
      Size = 7
    end
    object sdsProduto_FerramentalNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      ProviderFlags = []
      Size = 65
    end
  end
  object dspProduto_Ferramental: TDataSetProvider
    DataSet = sdsProduto_Ferramental
    OnUpdateError = dspProduto_PosicaoUpdateError
    Left = 176
    Top = 272
  end
  object cdsProduto_Ferramental: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODPRODUTO;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Ferramental'
    Left = 232
    Top = 272
    object cdsProduto_FerramentalCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsProduto_FerramentalITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_FerramentalCODMATERIAL: TIntegerField
      FieldName = 'CODMATERIAL'
    end
    object cdsProduto_FerramentalTIPOVC: TStringField
      FieldName = 'TIPOVC'
      Size = 7
    end
    object cdsProduto_FerramentalTIPOAP: TStringField
      FieldName = 'TIPOAP'
      Size = 7
    end
    object cdsProduto_FerramentalTIPOA: TStringField
      FieldName = 'TIPOA'
      Size = 7
    end
    object cdsProduto_FerramentalNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      ProviderFlags = []
      Size = 65
    end
  end
  object dsProduto_Ferramental: TDataSource
    DataSet = cdsProduto_Ferramental
    Left = 288
    Top = 272
  end
  object sdsProduto_Tempo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PT.*, PROC.NOME NOMEPROCESSO'#13#10'FROM  PRODUTO_TEMPO PT'#13#10'INN' +
      'ER JOIN PROCESSO PROC'#13#10'ON PT.ID_PROCESSO = PROC.ID'#13#10'WHERE PT.COD' +
      'PRODUTO = :CODPRODUTO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 336
    object sdsProduto_TempoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sdsProduto_TempoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_TempoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsProduto_TempoTEMPO: TFloatField
      FieldName = 'TEMPO'
    end
    object sdsProduto_TempoTEMPOREG: TFloatField
      FieldName = 'TEMPOREG'
    end
    object sdsProduto_TempoNOMEPROCESSO: TStringField
      FieldName = 'NOMEPROCESSO'
      ProviderFlags = []
      Size = 30
    end
    object sdsProduto_TempoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProduto_TempoQTDPECAHORA: TIntegerField
      FieldName = 'QTDPECAHORA'
    end
  end
  object dspProduto_Tempo: TDataSetProvider
    DataSet = sdsProduto_Tempo
    OnUpdateError = dspProduto_PosicaoUpdateError
    Left = 176
    Top = 336
  end
  object cdsProduto_Tempo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODPRODUTO;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Tempo'
    Left = 232
    Top = 336
    object cdsProduto_TempoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsProduto_TempoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_TempoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsProduto_TempoTEMPO: TFloatField
      FieldName = 'TEMPO'
    end
    object cdsProduto_TempoTEMPOREG: TFloatField
      FieldName = 'TEMPOREG'
    end
    object cdsProduto_TempoNOMEPROCESSO: TStringField
      FieldName = 'NOMEPROCESSO'
      ProviderFlags = []
      Size = 30
    end
    object cdsProduto_TempoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProduto_TempoQTDPECAHORA: TIntegerField
      FieldName = 'QTDPECAHORA'
    end
  end
  object dsProduto_Tempo: TDataSource
    DataSet = cdsProduto_Tempo
    Left = 288
    Top = 336
  end
end
