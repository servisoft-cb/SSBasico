object DMTalao: TDMTalao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 242
  Top = 215
  Height = 310
  Width = 544
  object sdsTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TALAO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object sdsTalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsTalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsTalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsTalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object sdsTalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object sdsTalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
      Size = 30
    end
    object sdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsTalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsTalaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsTalaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsTalaoNUMOSPEDIDO: TStringField
      FieldName = 'NUMOSPEDIDO'
      Size = 30
    end
    object sdsTalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 200
    end
    object sdsTalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object sdsTalaoDTIMPRESSAO: TDateField
      FieldName = 'DTIMPRESSAO'
    end
    object sdsTalaoHRIMPRESSAO: TTimeField
      FieldName = 'HRIMPRESSAO'
    end
    object sdsTalaoCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object sdsTalaoQTDPRODUZIDO: TFloatField
      FieldName = 'QTDPRODUZIDO'
    end
    object sdsTalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object sdsTalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object sdsTalaoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object dspTalao: TDataSetProvider
    DataSet = sdsTalao
    OnUpdateError = dspTalaoUpdateError
    Left = 216
    Top = 40
  end
  object cdsTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalao'
    Left = 304
    Top = 40
    object cdsTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
      Required = True
    end
    object cdsTalaoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsTalaoCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object cdsTalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsTalaoPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object cdsTalaoITEMPEDIDO: TIntegerField
      FieldName = 'ITEMPEDIDO'
    end
    object cdsTalaoPEDIDOCLIENTE: TStringField
      FieldName = 'PEDIDOCLIENTE'
      Size = 30
    end
    object cdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalaoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsTalaoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsTalaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsTalaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsTalaoNUMOSPEDIDO: TStringField
      FieldName = 'NUMOSPEDIDO'
      Size = 30
    end
    object cdsTalaoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoMOTIVOCANCELADO: TStringField
      FieldName = 'MOTIVOCANCELADO'
      Size = 200
    end
    object cdsTalaoDTCANCELADO: TDateField
      FieldName = 'DTCANCELADO'
    end
    object cdsTalaoDTIMPRESSAO: TDateField
      FieldName = 'DTIMPRESSAO'
    end
    object cdsTalaoHRIMPRESSAO: TTimeField
      FieldName = 'HRIMPRESSAO'
    end
    object cdsTalaoCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object cdsTalaoQTDPRODUZIDO: TFloatField
      FieldName = 'QTDPRODUZIDO'
    end
    object cdsTalaoNUMMOVEST: TIntegerField
      FieldName = 'NUMMOVEST'
    end
    object cdsTalaoDTGERADO: TDateField
      FieldName = 'DTGERADO'
    end
    object cdsTalaoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object dsTalao: TDataSource
    DataSet = cdsTalao
    Left = 392
    Top = 40
  end
  object qProximoTalao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(TALAO) TALAO'
      'FROM TALAO')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 152
    object qProximoTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
    end
  end
end
