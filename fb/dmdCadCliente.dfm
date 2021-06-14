object dmCadCliente: TdmCadCliente
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 342
  Top = 314
  Height = 270
  Width = 384
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'   FROM CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object sdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object sdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sdsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object sdsClienteINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object sdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsClienteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteAPROVCREDITO: TStringField
      FieldName = 'APROVCREDITO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteTIPOAPROV: TStringField
      FieldName = 'TIPOAPROV'
      FixedChar = True
      Size = 1
    end
    object sdsClienteENDENTREGA: TStringField
      FieldName = 'ENDENTREGA'
      Size = 40
    end
    object sdsClienteBAIRROENTREGA: TStringField
      FieldName = 'BAIRROENTREGA'
      Size = 26
    end
    object sdsClienteCIDENTREGA: TStringField
      FieldName = 'CIDENTREGA'
      Size = 26
    end
    object sdsClienteCEPENTREGA: TStringField
      FieldName = 'CEPENTREGA'
      Size = 10
    end
    object sdsClienteUFENTREGA: TStringField
      FieldName = 'UFENTREGA'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCGCCPFENTREGA: TStringField
      FieldName = 'CGCCPFENTREGA'
      Size = 18
    end
    object sdsClienteINSCENTREGA: TStringField
      FieldName = 'INSCENTREGA'
      Size = 18
    end
    object sdsClienteENDPGTO: TStringField
      FieldName = 'ENDPGTO'
      Size = 40
    end
    object sdsClienteBAIRROPGTO: TStringField
      FieldName = 'BAIRROPGTO'
      Size = 26
    end
    object sdsClienteCIDPGTO: TStringField
      FieldName = 'CIDPGTO'
      Size = 26
    end
    object sdsClienteCEPPGTO: TStringField
      FieldName = 'CEPPGTO'
      Size = 10
    end
    object sdsClienteUFPGTO: TStringField
      FieldName = 'UFPGTO'
      FixedChar = True
      Size = 2
    end
    object sdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object sdsClienteDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsClienteCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsClienteOBSCTAS: TMemoField
      FieldName = 'OBSCTAS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteLOJAS: TIntegerField
      FieldName = 'LOJAS'
    end
    object sdsClienteSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsClienteCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsClienteCODCIDADEE: TIntegerField
      FieldName = 'CODCIDADEE'
    end
    object sdsClienteCODCIDADEP: TIntegerField
      FieldName = 'CODCIDADEP'
    end
    object sdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 170
    end
    object sdsClientePERCTRANSF: TFloatField
      FieldName = 'PERCTRANSF'
    end
    object sdsClienteCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object sdsClienteDTNASCCONTATO: TDateField
      FieldName = 'DTNASCCONTATO'
    end
    object sdsClienteNOMERESP: TStringField
      FieldName = 'NOMERESP'
      Size = 30
    end
    object sdsClienteCONTATOCLIENTE: TStringField
      FieldName = 'CONTATOCLIENTE'
      Size = 40
    end
    object sdsClienteCONTATOMODELAGEM: TStringField
      FieldName = 'CONTATOMODELAGEM'
      Size = 40
    end
    object sdsClienteIMPITEMNOTAPORTAM: TStringField
      FieldName = 'IMPITEMNOTAPORTAM'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCODBANCOBOLETO: TIntegerField
      FieldName = 'CODBANCOBOLETO'
    end
    object sdsClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsClienteDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsClienteHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsClienteCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object sdsClienteIPISUSPENSO: TStringField
      FieldName = 'IPISUSPENSO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteDTVALIDADEIPI: TDateField
      FieldName = 'DTVALIDADEIPI'
    end
    object sdsClienteCODOBSIPI: TIntegerField
      FieldName = 'CODOBSIPI'
    end
    object sdsClienteVENDAPORMILHEIRO: TStringField
      FieldName = 'VENDAPORMILHEIRO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteAGRUPAPEDIDONANOTA: TStringField
      FieldName = 'AGRUPAPEDIDONANOTA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCODVENDEDOR2: TIntegerField
      FieldName = 'CODVENDEDOR2'
    end
    object sdsClienteJUNTARLARGURAEDI: TStringField
      FieldName = 'JUNTARLARGURAEDI'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsClienteMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object sdsClienteMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
    object sdsClientePERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object sdsClientePERCCOMISSAO2: TFloatField
      FieldName = 'PERCCOMISSAO2'
    end
    object sdsClienteIMPOCABAIXOITEM: TStringField
      FieldName = 'IMPOCABAIXOITEM'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object sdsClienteCODTRANSPREDESPACHO: TIntegerField
      FieldName = 'CODTRANSPREDESPACHO'
    end
    object sdsClienteFONEENTREGA: TStringField
      FieldName = 'FONEENTREGA'
    end
    object sdsClienteCAIXAPOSTALENTREGA: TStringField
      FieldName = 'CAIXAPOSTALENTREGA'
      Size = 10
    end
    object sdsClienteFONECOBRANCA: TStringField
      FieldName = 'FONECOBRANCA'
    end
    object sdsClienteCAIXAPOSTALCOBRANCA: TStringField
      FieldName = 'CAIXAPOSTALCOBRANCA'
      Size = 10
    end
    object sdsClienteINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsClienteDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 170
    end
    object sdsClienteENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 70
    end
    object sdsClienteCODANT: TIntegerField
      FieldName = 'CODANT'
    end
    object sdsClienteACUMULARFABRICAEDI: TStringField
      FieldName = 'ACUMULARFABRICAEDI'
      FixedChar = True
      Size = 1
    end
    object sdsClienteIPI: TFloatField
      FieldName = 'IPI'
    end
    object sdsClienteTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteNOMEENTREGA: TStringField
      FieldName = 'NOMEENTREGA'
      Size = 40
    end
    object sdsClienteVLRLIMITECREDITO: TFloatField
      FieldName = 'VLRLIMITECREDITO'
    end
    object sdsClienteCODINDICACAO: TIntegerField
      FieldName = 'CODINDICACAO'
    end
    object sdsClienteCOMPLEMENTOINDICACAO: TStringField
      FieldName = 'COMPLEMENTOINDICACAO'
      Size = 70
    end
    object sdsClienteMERCADO: TStringField
      FieldName = 'MERCADO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteOBSCOMERCIAL: TMemoField
      FieldName = 'OBSCOMERCIAL'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteIMPPLANO: TStringField
      FieldName = 'IMPPLANO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteEMAILNFE: TStringField
      FieldName = 'EMAILNFE'
      Size = 250
    end
    object sdsClienteNUMEND: TStringField
      FieldName = 'NUMEND'
      Size = 15
    end
    object sdsClienteNUMENDENTREGA: TStringField
      FieldName = 'NUMENDENTREGA'
      Size = 15
    end
    object sdsClienteCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCOMPLENDERECO: TStringField
      FieldName = 'COMPLENDERECO'
      Size = 50
    end
    object sdsClienteUSAICMSSIMPLES: TStringField
      FieldName = 'USAICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCOMPLENDERECOENTREGA: TStringField
      FieldName = 'COMPLENDERECOENTREGA'
      Size = 50
    end
    object sdsClienteCODSITTRIBSIMPLES: TIntegerField
      FieldName = 'CODSITTRIBSIMPLES'
    end
    object sdsClienteIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object sdsClienteEMAILCOBRANCA: TStringField
      FieldName = 'EMAILCOBRANCA'
      Size = 150
    end
    object sdsClienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteFABRICA: TStringField
      FieldName = 'FABRICA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteREPRESENTADA: TStringField
      FieldName = 'REPRESENTADA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 200
    end
    object sdsClienteEMAILNFE2: TStringField
      FieldName = 'EMAILNFE2'
      Size = 150
    end
    object sdsClienteCGCCPFPGTO: TStringField
      FieldName = 'CGCCPFPGTO'
      Size = 18
    end
    object sdsClienteINSCPGTO: TStringField
      FieldName = 'INSCPGTO'
      Size = 18
    end
    object sdsClientePESSOAENTREGA: TStringField
      FieldName = 'PESSOAENTREGA'
      FixedChar = True
      Size = 1
    end
    object sdsClientePESSOAPGTO: TStringField
      FieldName = 'PESSOAPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsClientePERCFABRICA: TFloatField
      FieldName = 'PERCFABRICA'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 136
    Top = 24
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 224
    Top = 24
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object cdsClienteINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object cdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsClienteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteAPROVCREDITO: TStringField
      FieldName = 'APROVCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteTIPOAPROV: TStringField
      FieldName = 'TIPOAPROV'
      FixedChar = True
      Size = 1
    end
    object cdsClienteENDENTREGA: TStringField
      FieldName = 'ENDENTREGA'
      Size = 40
    end
    object cdsClienteBAIRROENTREGA: TStringField
      FieldName = 'BAIRROENTREGA'
      Size = 26
    end
    object cdsClienteCIDENTREGA: TStringField
      FieldName = 'CIDENTREGA'
      Size = 26
    end
    object cdsClienteCEPENTREGA: TStringField
      FieldName = 'CEPENTREGA'
      Size = 10
    end
    object cdsClienteUFENTREGA: TStringField
      FieldName = 'UFENTREGA'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCGCCPFENTREGA: TStringField
      FieldName = 'CGCCPFENTREGA'
      Size = 18
    end
    object cdsClienteINSCENTREGA: TStringField
      FieldName = 'INSCENTREGA'
      Size = 18
    end
    object cdsClienteENDPGTO: TStringField
      FieldName = 'ENDPGTO'
      Size = 40
    end
    object cdsClienteBAIRROPGTO: TStringField
      FieldName = 'BAIRROPGTO'
      Size = 26
    end
    object cdsClienteCIDPGTO: TStringField
      FieldName = 'CIDPGTO'
      Size = 26
    end
    object cdsClienteCEPPGTO: TStringField
      FieldName = 'CEPPGTO'
      Size = 10
    end
    object cdsClienteUFPGTO: TStringField
      FieldName = 'UFPGTO'
      FixedChar = True
      Size = 2
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object cdsClienteDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsClienteCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsClienteOBSCTAS: TMemoField
      FieldName = 'OBSCTAS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteLOJAS: TIntegerField
      FieldName = 'LOJAS'
    end
    object cdsClienteSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsClienteCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsClienteCODCIDADEE: TIntegerField
      FieldName = 'CODCIDADEE'
    end
    object cdsClienteCODCIDADEP: TIntegerField
      FieldName = 'CODCIDADEP'
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 170
    end
    object cdsClientePERCTRANSF: TFloatField
      FieldName = 'PERCTRANSF'
    end
    object cdsClienteCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsClienteDTNASCCONTATO: TDateField
      FieldName = 'DTNASCCONTATO'
    end
    object cdsClienteNOMERESP: TStringField
      FieldName = 'NOMERESP'
      Size = 30
    end
    object cdsClienteCONTATOCLIENTE: TStringField
      FieldName = 'CONTATOCLIENTE'
      Size = 40
    end
    object cdsClienteCONTATOMODELAGEM: TStringField
      FieldName = 'CONTATOMODELAGEM'
      Size = 40
    end
    object cdsClienteIMPITEMNOTAPORTAM: TStringField
      FieldName = 'IMPITEMNOTAPORTAM'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCODBANCOBOLETO: TIntegerField
      FieldName = 'CODBANCOBOLETO'
    end
    object cdsClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsClienteDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsClienteHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsClienteCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsClienteIPISUSPENSO: TStringField
      FieldName = 'IPISUSPENSO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteDTVALIDADEIPI: TDateField
      FieldName = 'DTVALIDADEIPI'
    end
    object cdsClienteCODOBSIPI: TIntegerField
      FieldName = 'CODOBSIPI'
    end
    object cdsClienteVENDAPORMILHEIRO: TStringField
      FieldName = 'VENDAPORMILHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteAGRUPAPEDIDONANOTA: TStringField
      FieldName = 'AGRUPAPEDIDONANOTA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCODVENDEDOR2: TIntegerField
      FieldName = 'CODVENDEDOR2'
    end
    object cdsClienteJUNTARLARGURAEDI: TStringField
      FieldName = 'JUNTARLARGURAEDI'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsClienteMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object cdsClienteMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
    object cdsClientePERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object cdsClientePERCCOMISSAO2: TFloatField
      FieldName = 'PERCCOMISSAO2'
    end
    object cdsClienteIMPOCABAIXOITEM: TStringField
      FieldName = 'IMPOCABAIXOITEM'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object cdsClienteCODTRANSPREDESPACHO: TIntegerField
      FieldName = 'CODTRANSPREDESPACHO'
    end
    object cdsClienteFONEENTREGA: TStringField
      FieldName = 'FONEENTREGA'
    end
    object cdsClienteCAIXAPOSTALENTREGA: TStringField
      FieldName = 'CAIXAPOSTALENTREGA'
      Size = 10
    end
    object cdsClienteFONECOBRANCA: TStringField
      FieldName = 'FONECOBRANCA'
    end
    object cdsClienteCAIXAPOSTALCOBRANCA: TStringField
      FieldName = 'CAIXAPOSTALCOBRANCA'
      Size = 10
    end
    object cdsClienteINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsClienteDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 170
    end
    object cdsClienteENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 70
    end
    object cdsClienteCODANT: TIntegerField
      FieldName = 'CODANT'
    end
    object cdsClienteACUMULARFABRICAEDI: TStringField
      FieldName = 'ACUMULARFABRICAEDI'
      FixedChar = True
      Size = 1
    end
    object cdsClienteIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsClienteTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteNOMEENTREGA: TStringField
      FieldName = 'NOMEENTREGA'
      Size = 40
    end
    object cdsClienteVLRLIMITECREDITO: TFloatField
      FieldName = 'VLRLIMITECREDITO'
    end
    object cdsClienteCODINDICACAO: TIntegerField
      FieldName = 'CODINDICACAO'
    end
    object cdsClienteCOMPLEMENTOINDICACAO: TStringField
      FieldName = 'COMPLEMENTOINDICACAO'
      Size = 70
    end
    object cdsClienteMERCADO: TStringField
      FieldName = 'MERCADO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteOBSCOMERCIAL: TMemoField
      FieldName = 'OBSCOMERCIAL'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteIMPPLANO: TStringField
      FieldName = 'IMPPLANO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteEMAILNFE: TStringField
      FieldName = 'EMAILNFE'
      Size = 250
    end
    object cdsClienteNUMEND: TStringField
      FieldName = 'NUMEND'
      Size = 15
    end
    object cdsClienteNUMENDENTREGA: TStringField
      FieldName = 'NUMENDENTREGA'
      Size = 15
    end
    object cdsClienteCODCSTIPI: TStringField
      FieldName = 'CODCSTIPI'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCOMPLENDERECO: TStringField
      FieldName = 'COMPLENDERECO'
      Size = 50
    end
    object cdsClienteUSAICMSSIMPLES: TStringField
      FieldName = 'USAICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCOMPLENDERECOENTREGA: TStringField
      FieldName = 'COMPLENDERECOENTREGA'
      Size = 50
    end
    object cdsClienteCODSITTRIBSIMPLES: TIntegerField
      FieldName = 'CODSITTRIBSIMPLES'
    end
    object cdsClienteIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsClienteEMAILCOBRANCA: TStringField
      FieldName = 'EMAILCOBRANCA'
      Size = 150
    end
    object cdsClienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteFABRICA: TStringField
      FieldName = 'FABRICA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteREPRESENTADA: TStringField
      FieldName = 'REPRESENTADA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 200
    end
    object cdsClienteEMAILNFE2: TStringField
      FieldName = 'EMAILNFE2'
      Size = 150
    end
    object cdsClienteCGCCPFPGTO: TStringField
      FieldName = 'CGCCPFPGTO'
      Size = 18
    end
    object cdsClienteINSCPGTO: TStringField
      FieldName = 'INSCPGTO'
      Size = 18
    end
    object cdsClientePESSOAENTREGA: TStringField
      FieldName = 'PESSOAENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsClientePESSOAPGTO: TStringField
      FieldName = 'PESSOAPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsClientePERCFABRICA: TFloatField
      FieldName = 'PERCFABRICA'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 304
    Top = 24
  end
end
