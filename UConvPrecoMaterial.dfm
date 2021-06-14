object fConvPrecoMaterial: TfConvPrecoMaterial
  Left = 10
  Top = 45
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fConvPrecoMaterial'
  ClientHeight = 472
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object qPreco: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbestoquematmov.VlrUnitario, Dbestoquematmov.ES, Dbestoqu' +
        'ematmov.DtMov, Dbfornecedores.NomeForn, Dbfornecedores.CodForn, ' +
        'Dbestoquematmov.CodCor, Dbestoquematmov.CodMaterial'
      'FROM "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbestoquematmov.CodCliForn = Dbfornecedores.CodForn)  '
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbestoquematmov.CodNatOper = Dbnatoperacao.Codigo)  '
      'WHERE   (Dbnatoperacao.GeraDuplicata = TRUE)  '
      '   AND  (Dbestoquematmov.TipoMov = '#39'NTE'#39')  '
      
        'ORDER BY Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Db' +
        'estoquematmov.DtMov, Dbestoquematmov.VlrUnitario')
    Left = 642
    Top = 137
    object qPrecoVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".VlrUnitario'
    end
    object qPrecoES: TStringField
      FieldName = 'ES'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".ES'
      Size = 1
    end
    object qPrecoDtMov: TDateField
      FieldName = 'DtMov'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".DtMov'
    end
    object qPrecoCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbFornecedores.DB".CodForn'
    end
    object qPrecoNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qPrecoCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbEstoqueMatMov.DB".CodCor'
    end
    object qPrecoCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
  end
  object mAjuste: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 32
    Data = {
      9D0000009619E0BD0100000018000000060000000000030000009D000B436F64
      4D6174657269616C040001000000000006436F64436F7204000100000000000C
      4E6F6D654D6174657269616C0100490000000100055749445448020002002800
      074E6F6D65436F720100490000000100055749445448020002001E0008507265
      636F416E74080004000000000009507265636F4E6F766F080004000000000000
      00}
    object mAjusteCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mAjusteCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mAjusteNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mAjusteNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mAjustePrecoAnt: TFloatField
      FieldName = 'PrecoAnt'
    end
    object mAjustePrecoNovo: TFloatField
      FieldName = 'PrecoNovo'
    end
  end
  object dsmAjuste: TDataSource
    DataSet = mAjuste
    Left = 632
    Top = 32
  end
end
