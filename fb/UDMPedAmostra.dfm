object DMPedAmostra: TDMPedAmostra
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 201
  Top = 164
  Height = 494
  Width = 637
  object sdsPedAmostra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, C.NOME NOMEFABRICA'#13#10'FROM PEDAMOSTRA P'#13#10'INNER JOIN CL' +
      'IENTE C'#13#10'ON P.CODFABRICA = C.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 56
    object sdsPedAmostraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedAmostraNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object sdsPedAmostraDTENCAMINHADA: TDateField
      FieldName = 'DTENCAMINHADA'
    end
    object sdsPedAmostraDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedAmostraCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object sdsPedAmostraCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsPedAmostraQTDTOTAL: TIntegerField
      FieldName = 'QTDTOTAL'
    end
    object sdsPedAmostraNOMEFABRICA: TStringField
      FieldName = 'NOMEFABRICA'
      ProviderFlags = []
      Size = 60
    end
    object sdsPedAmostraCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsPedAmostraUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPedAmostraDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPedAmostraHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPedAmostraFICHA: TStringField
      FieldName = 'FICHA'
      Size = 30
    end
    object sdsPedAmostraCARIMBOSOLA: TStringField
      FieldName = 'CARIMBOSOLA'
      Size = 50
    end
    object sdsPedAmostraCARIMBOPALMILHA: TStringField
      FieldName = 'CARIMBOPALMILHA'
      Size = 50
    end
    object sdsPedAmostraOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedAmostraETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 60
    end
  end
  object dspPedAmostra: TDataSetProvider
    DataSet = sdsPedAmostra
    OnUpdateError = dspPedAmostraUpdateError
    Left = 216
    Top = 56
  end
  object cdsPedAmostra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedAmostra'
    Left = 288
    Top = 56
    object cdsPedAmostraID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Mov.'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedAmostraNUMPEDIDO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'NUMPEDIDO'
    end
    object cdsPedAmostraDTENCAMINHADA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Encaminhada'
      FieldName = 'DTENCAMINHADA'
    end
    object cdsPedAmostraDTENTREGA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPedAmostraCODFABRICA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. F'#225'brica'
      FieldName = 'CODFABRICA'
    end
    object cdsPedAmostraCODCLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CODCLIENTE'
    end
    object cdsPedAmostraQTDTOTAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Qtd. Total'
      FieldName = 'QTDTOTAL'
    end
    object cdsPedAmostraNOMEFABRICA: TStringField
      DisplayLabel = 'Nome F'#225'brica'
      FieldName = 'NOMEFABRICA'
      ProviderFlags = []
      Size = 60
    end
    object cdsPedAmostraCODPRODUTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CODPRODUTO'
    end
    object cdsPedAmostraUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedAmostraDTCADASTRO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsPedAmostraHRCADASTRO: TTimeField
      Alignment = taCenter
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'HRCADASTRO'
    end
    object cdsPedAmostraFICHA: TStringField
      FieldName = 'FICHA'
      Size = 30
    end
    object cdsPedAmostraCARIMBOSOLA: TStringField
      FieldName = 'CARIMBOSOLA'
      Size = 50
    end
    object cdsPedAmostraCARIMBOPALMILHA: TStringField
      FieldName = 'CARIMBOPALMILHA'
      Size = 50
    end
    object cdsPedAmostraOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedAmostrasdsPedAmostra_Item: TDataSetField
      FieldName = 'sdsPedAmostra_Item'
    end
    object cdsPedAmostraETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 60
    end
  end
  object dsPedAmostra: TDataSource
    DataSet = cdsPedAmostra
    Left = 368
    Top = 56
  end
  object dsPedAmostra_Mestre: TDataSource
    DataSet = sdsPedAmostra
    Left = 80
    Top = 104
  end
  object sdsPedAmostra_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDAMOSTRA_ITEM'#13#10'WHERE ID = :ID'
    DataSource = dsPedAmostra_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 192
    object sdsPedAmostra_ItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedAmostra_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedAmostra_ItemCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsPedAmostra_ItemCODCOMBINACAO: TIntegerField
      FieldName = 'CODCOMBINACAO'
    end
    object sdsPedAmostra_ItemQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsPedAmostra_ItemNOMECOR: TStringField
      FieldName = 'NOMECOR'
      Size = 40
    end
    object sdsPedAmostra_ItemNOMECOMBINACAO: TStringField
      FieldName = 'NOMECOMBINACAO'
      Size = 40
    end
  end
  object cdsPedAmostra_Item: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedAmostrasdsPedAmostra_Item
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 192
    object cdsPedAmostra_ItemID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Mov.'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedAmostra_ItemITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedAmostra_ItemCODCOR: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'CODCOR'
    end
    object cdsPedAmostra_ItemCODCOMBINACAO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Combina'#231#227'o'
      FieldName = 'CODCOMBINACAO'
    end
    object cdsPedAmostra_ItemQTD: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Qtd.'
      FieldName = 'QTD'
    end
    object cdsPedAmostra_ItemNOMECOR: TStringField
      DisplayLabel = 'Nome Cor'
      FieldName = 'NOMECOR'
      Size = 40
    end
    object cdsPedAmostra_ItemNOMECOMBINACAO: TStringField
      DisplayLabel = 'Nome Combina'#231#227'o'
      FieldName = 'NOMECOMBINACAO'
      Size = 40
    end
    object cdsPedAmostra_ItemsdsPedAmostra_Grade: TDataSetField
      FieldName = 'sdsPedAmostra_Grade'
    end
  end
  object dsPedAmostra_Item: TDataSource
    DataSet = cdsPedAmostra_Item
    Left = 352
    Top = 192
  end
  object sdsPedAmostra_Grade: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM PEDAMOSTRA_GRADE'#13#10'WHERE ID = :ID'#13#10'     AND ITEM =' +
      ' :ITEM'
    DataSource = dsPedAmostra_MestreItem
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 328
    object sdsPedAmostra_GradeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedAmostra_GradeITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedAmostra_GradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsPedAmostra_GradeQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object dsPedAmostra_MestreItem: TDataSource
    DataSet = sdsPedAmostra_Item
    Left = 48
    Top = 248
  end
  object cdsPedAmostra_Grade: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedAmostra_ItemsdsPedAmostra_Grade
    Params = <>
    BeforePost = cdsPedAmostra_GradeBeforePost
    Left = 240
    Top = 328
    object cdsPedAmostra_GradeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedAmostra_GradeITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedAmostra_GradeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsPedAmostra_GradeQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object dsPedAmostra_Grade: TDataSource
    DataSet = cdsPedAmostra_Grade
    Left = 352
    Top = 328
  end
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'OrdemImp'
        DataType = ftInteger
      end
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'NomeMaterial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NomePosicao'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item;OrdemImp'
    Params = <>
    StoreDefs = True
    Left = 520
    Top = 96
    Data = {
      BA0000009619E0BD010000001800000006000000000003000000BA0004497465
      6D0400010000000000084F7264656D496D70040001000000000006436F646967
      6F04000100000000000C4E6F6D654D6174657269616C01004900000001000557
      49445448020002002800074E6F6D65436F720100490000000100055749445448
      020002001E000B4E6F6D65506F736963616F0100490000000100055749445448
      020002001E0001000D44454641554C545F4F524445520200820000000000}
    object mMaterialItem: TIntegerField
      FieldName = 'Item'
    end
    object mMaterialOrdemImp: TIntegerField
      FieldName = 'OrdemImp'
    end
    object mMaterialCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mMaterialNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mMaterialNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mMaterialNomePosicao: TStringField
      FieldName = 'NomePosicao'
      Size = 30
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 552
    Top = 96
  end
  object mGrade: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Item;Tamanho'
    MasterFields = 'Item'
    MasterSource = dsmMaterial
    PacketRecords = 0
    Params = <>
    Left = 520
    Top = 176
    Data = {
      4F0000009619E0BD0100000018000000030000000000030000004F0004497465
      6D04000100000000000754616D616E686F010049000000010005574944544802
      0002000A000351746404000100000000000000}
    object mGradeItem: TIntegerField
      FieldName = 'Item'
    end
    object mGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mGradeQtd: TIntegerField
      FieldName = 'Qtd'
    end
  end
  object dsGrade: TDataSource
    DataSet = mGrade
    Left = 552
    Top = 176
  end
end
