object fConvCPagar: TfConvCPagar
  Left = 127
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fConvCPagar'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 40
    Width = 59
    Height = 13
    Caption = 'Convertidos:'
  end
  object Label2: TLabel
    Left = 264
    Top = 184
    Width = 32
    Height = 13
    Caption = 'Filial 1:'
  end
  object Label3: TLabel
    Left = 264
    Top = 208
    Width = 32
    Height = 13
    Caption = 'Filial 2:'
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 104
    Width = 129
    Height = 25
    Caption = 'Converter'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 166
    Top = 32
    Width = 99
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 1
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 304
    Top = 176
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 2
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 304
    Top = 200
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 144
    Width = 129
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object tCPagar: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumCPagar'
    TableName = 'dbCPagar.DB'
    Left = 440
    Top = 104
    object tCPagarFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tCPagarNumCPagar: TIntegerField
      FieldName = 'NumCPagar'
    end
    object tCPagarNumNotaEnt: TIntegerField
      FieldName = 'NumNotaEnt'
    end
    object tCPagarCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tCPagarQuitado: TBooleanField
      FieldName = 'Quitado'
    end
    object tCPagarTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object tCPagarDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object tCPagarHistorico: TStringField
      FieldName = 'Historico'
      Size = 100
    end
    object tCPagarNroDuplicata: TIntegerField
      FieldName = 'NroDuplicata'
    end
    object tCPagarNroFatura: TIntegerField
      FieldName = 'NroFatura'
    end
    object tCPagarCodAtelier: TIntegerField
      FieldName = 'CodAtelier'
    end
    object tCPagarCodCentroCusto: TIntegerField
      FieldName = 'CodCentroCusto'
    end
    object tCPagarCodCentroCustoItem: TIntegerField
      FieldName = 'CodCentroCustoItem'
    end
  end
  object tCPagarParc: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumCPagar;ParcCPagar'
    MasterFields = 'Filial;NumCPagar'
    MasterSource = dsCPagar
    TableName = 'dbCPagarParc.DB'
    Left = 440
    Top = 144
    object tCPagarParcFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tCPagarParcNumCPagar: TIntegerField
      FieldName = 'NumCPagar'
    end
    object tCPagarParcParcCPagar: TIntegerField
      FieldName = 'ParcCPagar'
    end
    object tCPagarParcDtVencCPagar: TDateField
      FieldName = 'DtVencCPagar'
    end
    object tCPagarParcVlrParcCPagar: TFloatField
      FieldName = 'VlrParcCPagar'
    end
    object tCPagarParcQuitParcCPagar: TBooleanField
      FieldName = 'QuitParcCPagar'
    end
    object tCPagarParcDtPagParcCPagar: TDateField
      FieldName = 'DtPagParcCPagar'
    end
    object tCPagarParcJurosParcCPagar: TFloatField
      FieldName = 'JurosParcCPagar'
    end
    object tCPagarParcCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tCPagarParcNumNotaEnt: TIntegerField
      FieldName = 'NumNotaEnt'
    end
    object tCPagarParcDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tCPagarParcPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
    end
    object tCPagarParcRestParcela: TFloatField
      FieldName = 'RestParcela'
    end
    object tCPagarParcBanco: TStringField
      FieldName = 'Banco'
      Size = 40
    end
    object tCPagarParcPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object tCPagarParcNroDuplicata: TIntegerField
      FieldName = 'NroDuplicata'
    end
    object tCPagarParcDespesas: TFloatField
      FieldName = 'Despesas'
    end
    object tCPagarParcAbatimentos: TFloatField
      FieldName = 'Abatimentos'
    end
    object tCPagarParcCodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object tCPagarParcDiasAtraso: TFloatField
      FieldName = 'DiasAtraso'
    end
    object tCPagarParcJurosPagos: TFloatField
      FieldName = 'JurosPagos'
    end
    object tCPagarParcCodTipoCobranca: TIntegerField
      FieldName = 'CodTipoCobranca'
    end
    object tCPagarParcNroFatura: TIntegerField
      FieldName = 'NroFatura'
    end
    object tCPagarParcDtRecto: TDateField
      FieldName = 'DtRecto'
    end
    object tCPagarParcCodAtelier: TIntegerField
      FieldName = 'CodAtelier'
    end
    object tCPagarParcVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
    end
    object tCPagarParcCodPlanoContasItens: TIntegerField
      FieldName = 'CodPlanoContasItens'
    end
    object tCPagarParcDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object tCPagarParcNumSolicitacao: TIntegerField
      FieldName = 'NumSolicitacao'
    end
    object tCPagarParcCodCentroCusto: TIntegerField
      FieldName = 'CodCentroCusto'
    end
    object tCPagarParcCodCentroCustoItem: TIntegerField
      FieldName = 'CodCentroCustoItem'
    end
  end
  object tCPagarParcHist: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumCPagar;ParcCPagar;Item'
    MasterFields = 'Filial;NumCPagar;ParcCPagar'
    MasterSource = dscPagarParc
    TableName = 'dbCPagarParcHist.DB'
    Left = 440
    Top = 184
    object tCPagarParcHistFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tCPagarParcHistNumCPagar: TIntegerField
      FieldName = 'NumCPagar'
    end
    object tCPagarParcHistParcCPagar: TIntegerField
      FieldName = 'ParcCPagar'
    end
    object tCPagarParcHistItem: TIntegerField
      FieldName = 'Item'
    end
    object tCPagarParcHistCodHistorico: TIntegerField
      FieldName = 'CodHistorico'
    end
    object tCPagarParcHistDtHistorico: TDateField
      FieldName = 'DtHistorico'
    end
    object tCPagarParcHistHistorico: TStringField
      FieldName = 'Historico'
      Size = 70
    end
    object tCPagarParcHistDtUltPgto: TDateField
      FieldName = 'DtUltPgto'
    end
    object tCPagarParcHistVlrUltPgto: TFloatField
      FieldName = 'VlrUltPgto'
    end
    object tCPagarParcHistVlrUltJuros: TFloatField
      FieldName = 'VlrUltJuros'
    end
    object tCPagarParcHistVlrUltDescontos: TFloatField
      FieldName = 'VlrUltDescontos'
    end
    object tCPagarParcHistVlrUltDespesas: TFloatField
      FieldName = 'VlrUltDespesas'
    end
    object tCPagarParcHistVlrUltAbatimentos: TFloatField
      FieldName = 'VlrUltAbatimentos'
    end
    object tCPagarParcHistPgto: TBooleanField
      FieldName = 'Pgto'
    end
    object tCPagarParcHistJurosPagos: TFloatField
      FieldName = 'JurosPagos'
    end
    object tCPagarParcHistNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object tCPagarParcHistNumMovJuros: TIntegerField
      FieldName = 'NumMovJuros'
    end
    object tCPagarParcHistVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
    end
    object tCPagarParcHistDevolucao: TBooleanField
      FieldName = 'Devolucao'
    end
    object tCPagarParcHistNumCheque: TIntegerField
      FieldName = 'NumCheque'
    end
    object tCPagarParcHistDtPrevCheque: TDateField
      FieldName = 'DtPrevCheque'
    end
    object tCPagarParcHistTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object tCPagarParcHistCodConta: TIntegerField
      FieldName = 'CodConta'
    end
  end
  object dsCPagar: TDataSource
    DataSet = tCPagar
    Left = 472
    Top = 104
  end
  object dscPagarParc: TDataSource
    DataSet = tCPagarParc
    Left = 472
    Top = 144
  end
end
