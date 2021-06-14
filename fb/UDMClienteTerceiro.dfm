object DMClienteTerceiro: TDMClienteTerceiro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 215
  Height = 310
  Width = 544
  object sdsClienteTerceiro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CLIENTETERCEIRO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsClienteTerceiroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsClienteTerceiroNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsClienteTerceiroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsClienteTerceiroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object sdsClienteTerceiroCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object sdsClienteTerceiroUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsClienteTerceiroCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsClienteTerceiroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sdsClienteTerceiroTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsClienteTerceiroFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsClienteTerceiroPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteTerceiroCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object sdsClienteTerceiroINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object sdsClienteTerceiroCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsClienteTerceiroFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object sdsClienteTerceiroCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsClienteTerceiroRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsClienteTerceiroCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsClienteTerceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsClienteTerceiroDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsClienteTerceiroHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsClienteTerceiroINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteTerceiroDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsClienteTerceiroDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsClienteTerceiroDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsClienteTerceiroIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
  end
  object dspClienteTerceiro: TDataSetProvider
    DataSet = sdsClienteTerceiro
    OnUpdateError = dspClienteTerceiroUpdateError
    Left = 216
    Top = 40
  end
  object cdsClienteTerceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClienteTerceiro'
    Left = 304
    Top = 40
    object cdsClienteTerceiroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteTerceiroNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteTerceiroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsClienteTerceiroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object cdsClienteTerceiroCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object cdsClienteTerceiroUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteTerceiroCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteTerceiroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsClienteTerceiroTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsClienteTerceiroFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsClienteTerceiroPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteTerceiroCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object cdsClienteTerceiroINSCREST: TStringField
      FieldName = 'INSCREST'
      Size = 18
    end
    object cdsClienteTerceiroCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsClienteTerceiroFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object cdsClienteTerceiroCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsClienteTerceiroRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsClienteTerceiroCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsClienteTerceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsClienteTerceiroDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsClienteTerceiroHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsClienteTerceiroINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteTerceiroDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsClienteTerceiroDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsClienteTerceiroDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsClienteTerceiroIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
  end
  object dsClienteTerceiro: TDataSource
    DataSet = cdsClienteTerceiro
    Left = 392
    Top = 40
  end
end
