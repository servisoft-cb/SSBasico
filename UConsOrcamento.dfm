object fConsOrcamento: TfConsOrcamento
  Left = 13
  Top = 36
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta do Or'#231'amento'
  ClientHeight = 516
  ClientWidth = 758
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 516
    Align = alClient
    TabOrder = 0
    object ALed1: TALed
      Left = 48
      Top = 497
      Width = 16
      Height = 16
      FalseColor = clAqua
    end
    object ALed2: TALed
      Left = 336
      Top = 497
      Width = 16
      Height = 16
      FalseColor = clWhite
    end
    object Label4: TLabel
      Left = 72
      Top = 500
      Width = 55
      Height = 13
      Caption = 'Aprovado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 356
      Top = 500
      Width = 55
      Height = 13
      Caption = 'Pendente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed3: TALed
      Left = 472
      Top = 497
      Width = 16
      Height = 16
      FalseColor = clRed
    end
    object Label12: TLabel
      Left = 492
      Top = 500
      Width = 107
      Height = 13
      Caption = 'Item n'#227'o aprovado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 478
      Width = 128
      Height = 13
      Caption = 'Motivo N'#227'o Aprovado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ALed4: TALed
      Left = 168
      Top = 497
      Width = 16
      Height = 16
      FalseColor = clYellow
    end
    object Label7: TLabel
      Left = 192
      Top = 500
      Width = 98
      Height = 13
      Caption = 'Aprovado Parcial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 751
      Height = 83
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 31
        Top = 39
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Label3: TLabel
        Left = 350
        Top = 62
        Width = 68
        Height = 13
        Caption = 'Data Emiss'#227'o:'
      end
      object Label2: TLabel
        Left = 17
        Top = 62
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object Label8: TLabel
        Left = 43
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Filial:'
      end
      object DateEdit1: TDateEdit
        Left = 421
        Top = 54
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 69
        Top = 31
        Width = 340
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 520
        Top = 42
        Width = 77
        Height = 33
        Caption = 'Consultar'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          36050000424D360500000000000036040000280000000E000000100000000100
          08000000000000010000CA0E0000C30E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ACACACACACAC
          ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
          00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
          02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
          5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
          00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
          ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
          D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
          D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
      end
      object BitBtn2: TBitBtn
        Left = 598
        Top = 42
        Width = 77
        Height = 33
        Caption = 'Fechar'
        TabOrder = 4
        OnClick = BitBtn2Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          038383838383830E603800000000380E660033333330830E660333333330000E
          660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
          660300000E60330E660333330600330E660333330030330E6603333333303330
          E6033333333033330E0333333330000000033333333333333333}
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 69
        Top = 54
        Width = 247
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsVendedor
        TabOrder = 5
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 69
        Top = 8
        Width = 340
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Empresa'
        LookupSource = DM1.dsFilial
        TabOrder = 0
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 89
      Width = 751
      Height = 235
      DataSource = qsOrcamento
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid1DblClick
      OnGetCellParams = RxDBGrid1GetCellParams
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumOrcamento'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Or'#231'amento'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCliente'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeContato'
          Title.Alignment = taCenter
          Title.Caption = 'Contato'
          Width = 155
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdDiasValidade'
          Title.Alignment = taCenter
          Title.Caption = 'Validade'
          Width = 46
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
          FieldName = 'lkNomeVendedor'
          Title.Alignment = taCenter
          Title.Caption = 'Vendedor'
          Visible = True
        end>
    end
    object RxDBGrid2: TRxDBGrid
      Left = 4
      Top = 327
      Width = 748
      Height = 137
      DataSource = dsOrcamentoItens
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnGetCellParams = RxDBGrid2GetCellParams
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 32
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Produto'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unidade'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
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
          Expanded = False
          FieldName = 'VlrUnitario'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodProduto'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtAprovado'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Aprovado'
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 470
      Width = 616
      Height = 21
      DataField = 'MotivoNaoAprov'
      DataSource = dsOrcamentoItens
      ReadOnly = True
      TabOrder = 3
    end
  end
  object qOrcamento: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT NumOrcamento, Data, CodCliente, NomeCliente, NomeContato,' +
        ' NomeCia, QtdDiasValidade, PrazoPagto, Aprovado, VlrTotal, CodVe' +
        'ndedor, Filial'
      'FROM "dbOrcamento.DB" Dborcamento')
    Left = 472
    Top = 72
    object qOrcamentoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbOrcamento.DB".Filial'
    end
    object qOrcamentoNumOrcamento: TIntegerField
      FieldName = 'NumOrcamento'
      Origin = 'TABELAS."dbOrcamento.DB".NumOrcamento'
    end
    object qOrcamentoData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbOrcamento.DB".Data'
    end
    object qOrcamentoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbOrcamento.DB".CodCliente'
    end
    object qOrcamentoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbOrcamento.DB".NomeCliente'
      Size = 40
    end
    object qOrcamentoNomeContato: TStringField
      FieldName = 'NomeContato'
      Origin = 'TABELAS."dbOrcamento.DB".NomeContato'
      Size = 30
    end
    object qOrcamentoNomeCia: TStringField
      FieldName = 'NomeCia'
      Origin = 'TABELAS."dbOrcamento.DB".NomeCia'
      Size = 40
    end
    object qOrcamentoQtdDiasValidade: TIntegerField
      FieldName = 'QtdDiasValidade'
      Origin = 'TABELAS."dbOrcamento.DB".QtdDiasValidade'
    end
    object qOrcamentoPrazoPagto: TStringField
      FieldName = 'PrazoPagto'
      Origin = 'TABELAS."dbOrcamento.DB".PrazoPagto'
      Size = 30
    end
    object qOrcamentoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbOrcamento.DB".VlrTotal'
    end
    object qOrcamentoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbOrcamento.DB".CodVendedor'
    end
    object qOrcamentolkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
    object qOrcamentoAprovado: TStringField
      FieldName = 'Aprovado'
      Origin = 'TABELAS."dbOrcamento.DB".Aprovado'
      Size = 1
    end
  end
  object qsOrcamento: TDataSource
    DataSet = qOrcamento
    Left = 504
    Top = 72
  end
  object tOrcamentoItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumOrcamento'
    MasterFields = 'Filial;NumOrcamento'
    MasterSource = qsOrcamento
    TableName = 'dbOrcamentoItens.DB'
    Left = 480
    Top = 328
    object tOrcamentoItensFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tOrcamentoItensNumOrcamento: TIntegerField
      FieldName = 'NumOrcamento'
    end
    object tOrcamentoItensItem: TIntegerField
      FieldName = 'Item'
    end
    object tOrcamentoItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tOrcamentoItensNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object tOrcamentoItensVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tOrcamentoItensComMatriz: TBooleanField
      FieldName = 'ComMatriz'
    end
    object tOrcamentoItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tOrcamentoItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tOrcamentoItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tOrcamentoItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tOrcamentoItensCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tOrcamentoItenslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object tOrcamentoItensMotivoNaoAprov: TStringField
      FieldName = 'MotivoNaoAprov'
      Size = 70
    end
    object tOrcamentoItensAprovado: TStringField
      FieldName = 'Aprovado'
      Size = 1
    end
    object tOrcamentoItensDtAprovado: TDateField
      FieldName = 'DtAprovado'
    end
    object tOrcamentoItensProdutoNCad: TBooleanField
      FieldName = 'ProdutoNCad'
    end
  end
  object dsOrcamentoItens: TDataSource
    DataSet = tOrcamentoItens
    Left = 496
    Top = 328
  end
end
