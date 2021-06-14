object fConsNotaFiscalBeneficiamento: TfConsNotaFiscalBeneficiamento
  Left = 59
  Top = 88
  Width = 796
  Height = 543
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta das notas fiscais de beneficiamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 509
    Align = alClient
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 2
      Top = 30
      Width = 46
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 15
      Top = 7
      Width = 33
      Height = 13
      Caption = 'Filial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 666
      Top = 378
      Width = 102
      Height = 13
      Caption = 'Notas Encerradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed4: TALed
      Left = 645
      Top = 376
      Width = 16
      Height = 16
      FalseColor = clTeal
    end
    object RxLabel3: TRxLabel
      Left = 7
      Top = 53
      Width = 41
      Height = 13
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBGrid1: TRxDBGrid
      Left = 3
      Top = 72
      Width = 781
      Height = 290
      Hint = 'Duplo click para selecionar a nota'
      TabStop = False
      DataSource = dsqNotaFiscal
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnGetCellParams = RxDBGrid1GetCellParams
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNota'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Title.Alignment = taCenter
          Title.Caption = 'Material'
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Width = 146
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdRestante'
          Title.Alignment = taCenter
          Title.Caption = 'Q.Restante'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDevolvida'
          Title.Alignment = taCenter
          Title.Caption = 'Q.Devolvida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnit'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'clVlrTotalRestante'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Restante'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissao'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCli'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cli.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodProduto'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Material'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCor'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Cor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Title.Caption = 'Nome Cliente'
          Width = 172
          Visible = True
        end>
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 48
      Top = 26
      Width = 283
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object BitBtn1: TBitBtn
      Left = 466
      Top = 20
      Width = 115
      Height = 27
      Caption = 'Filtra as Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 48
      Top = 3
      Width = 283
      Height = 21
      DropDownCount = 8
      DropDownWidth = 600
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno;Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 697
      Top = 20
      Width = 88
      Height = 27
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 581
      Top = 20
      Width = 115
      Height = 27
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object RxDBGrid2: TRxDBGrid
      Left = -5
      Top = 356
      Width = 566
      Height = 148
      TabStop = False
      Color = clInfoBk
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NumNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota Fiscal'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Caption = 'Item Nota'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Enviada'
          Width = 111
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissao'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEntrada'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Entrada'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ItemNotaSaida'
          Title.Alignment = taCenter
          Title.Caption = 'Item Nota Saida'
          Width = 86
          Visible = True
        end>
    end
    object RadioGroup1: TRadioGroup
      Left = 338
      Top = 2
      Width = 105
      Height = 56
      Caption = ' Op'#231#227'o '
      ItemIndex = 0
      Items.Strings = (
        'Pendentes'
        'Encerradas'
        'Ambas')
      TabOrder = 3
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 48
      Top = 49
      Width = 283
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsGrupo
      TabOrder = 2
      OnEnter = RxDBLookupCombo3Enter
    end
  end
  object dsNEntradaNDevolvida: TDataSource
    DataSet = tNEntradaNDevolvida
    Left = 128
    Top = 456
  end
  object qNotaFiscal: TQuery
    Active = True
    OnCalcFields = qNotaFiscalCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.Filial, Dbnotafiscal.NumNota, Dbnotafiscal.D' +
        'tEmissao, Dbnotafiscalitens.Item, Dbnotafiscalitens.CodProduto, ' +
        'Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbnotafiscalit' +
        'ens.CodCor, Dbnotafiscal.CodCli, Dbcor.Nome NomeCor, Dbnatoperac' +
        'ao.CodNatOper, Dbcliente.Nome NomeCliente, Dbnotafiscalitens.Uni' +
        'dade, Dbnotafiscalitens.Qtd, Dbnotafiscalitens.VlrUnit, Dbnotafi' +
        'scalitens.VlrTotal, Dbnotafiscalitens.QtdRestante, Dbnotafiscali' +
        'tens.QtdDevolvida, Dbnotafiscal.NumSeq'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)  '
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbnotafiscalitens.CodCor = Dbcor.Codigo)  '
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)  '
      'WHERE   (Dbnatoperacao.CodNatOper = '#39'5920'#39')  '
      '   AND  (Dbnotafiscalitens.QtdRestante > 0)  '
      ' ')
    Left = 448
    Top = 160
    object qNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qNotaFiscalItem: TSmallintField
      FieldName = 'Item'
    end
    object qNotaFiscalCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qNotaFiscalReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qNotaFiscalNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qNotaFiscalCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qNotaFiscalNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object qNotaFiscalCodNatOper: TStringField
      FieldName = 'CodNatOper'
      Size = 4
    end
    object qNotaFiscalNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qNotaFiscalUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotaFiscalQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object qNotaFiscalVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotaFiscalVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qNotaFiscalQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.#####'
    end
    object qNotaFiscalQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
      DisplayFormat = '0.#####'
    end
    object qNotaFiscalclVlrTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrTotalRestante'
      Calculated = True
    end
    object qNotaFiscalNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
  end
  object dsqNotaFiscal: TDataSource
    DataSet = qNotaFiscal
    Left = 464
    Top = 160
  end
  object tNEntradaNDevolvida: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexName = 'iFilialNumSeqSaida'
    MasterFields = 'Filial;NumSeq;Item'
    MasterSource = dsqNotaFiscal
    TableName = 'dbNEntradaNDevolvida.db'
    Left = 104
    Top = 456
    object tNEntradaNDevolvidaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNEntradaNDevolvidaCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tNEntradaNDevolvidaNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
    end
    object tNEntradaNDevolvidaItem: TIntegerField
      FieldName = 'Item'
    end
    object tNEntradaNDevolvidaNumNotaSaida: TIntegerField
      FieldName = 'NumNotaSaida'
    end
    object tNEntradaNDevolvidaItemNotaSaida: TIntegerField
      FieldName = 'ItemNotaSaida'
    end
    object tNEntradaNDevolvidaQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object tNEntradaNDevolvidaDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object tNEntradaNDevolvidaDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object tNEntradaNDevolvidaNumSeqNotaSaida: TIntegerField
      FieldName = 'NumSeqNotaSaida'
    end
  end
  object qCliente: TQuery
    OnCalcFields = qNotaFiscalCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT DISTINCT Dbnotafiscal.CodCli, Dbcliente.Nome NomeCliente'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)'
      ' ')
    Left = 448
    Top = 208
    object qClienteCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
  end
  object dsqCliente: TDataSource
    DataSet = qCliente
    Left = 464
    Top = 208
  end
end
