object fEscNotaDevolPorItem: TfEscNotaDevolPorItem
  Left = 15
  Top = 18
  Width = 745
  Height = 550
  BorderIcons = [biSystemMenu]
  Caption = 'Escolhe a Nota de Compra para ser devolvida'
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
    Width = 737
    Height = 523
    Align = alClient
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 8
      Top = 43
      Width = 134
      Height = 13
      Caption = 'N'#186' da Nota de Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 71
      Top = 16
      Width = 71
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 62
      Top = 67
      Width = 80
      Height = 13
      Caption = 'Item da Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 144
      Top = 8
      Width = 348
      Height = 21
      DropDownCount = 8
      LookupField = 'CodForn'
      LookupDisplay = 'NomeForn'
      LookupSource = DM1.dsFornecedores
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
    end
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 86
      Width = 730
      Height = 302
      Hint = 'Duplo click para selecionar a nota'
      TabStop = False
      DataSource = dsqNotaEntrada
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeForn'
          Title.Caption = 'Nome Fornecedor'
          Width = 305
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissaoNEntr'
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
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotalNEntr'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Width = 94
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodForn'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Fornec.'
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 388
      Width = 733
      Height = 131
      Caption = 'Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object RxDBGrid2: TRxDBGrid
        Left = 4
        Top = 13
        Width = 724
        Height = 114
        TabStop = False
        DataSource = dsNEntradaItens
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = RxDBGrid2DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 36
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Material'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeMaterial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Material'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 252
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrUnit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalItens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 77
            Visible = True
          end>
      end
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 144
      Top = 35
      Width = 105
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object BitBtn2: TBitBtn
      Left = 252
      Top = 56
      Width = 119
      Height = 25
      Hint = 'Confirma a escolha da nota fiscal'
      Caption = '&Confirma o item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000D80E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080FFFFFF
        FFFFFF0080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        008080008080008080808080808080808080808080808080808080FFFFFFFFFF
        FF00808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080808080808080808080808080
        80808080808080808080808080FFFFFF00808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080808080
        80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
        8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        80008080008080008080008080008080008080808080808080FFFFFF00808000
        8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
        808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        008080008080008080008080008080008080FFFFFF8080808080808080808080
        80FFFFFF00808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        80008080008080008080008080008080FFFFFF808080808080808080808080FF
        FFFF008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        80008080008080008080008080008080008080008080008080008080008080FF
        FFFF808080808080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080FFFFFF808080808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080FFFFFF
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 144
      Top = 59
      Width = 105
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 2
      OnKeyDown = CurrencyEdit2KeyDown
    end
  end
  object qNotaEntrada: TQuery
    Active = True
    AfterScroll = qNotaEntradaAfterScroll
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.Filial, Dbnentrada.CodForn, Dbfornecedores.Nom' +
        'eForn, Dbnentrada.NumNEntr, Dbnentrada.DtEmissaoNEntr, Dbnentrad' +
        'a.VlrTotalNEntr, Dbnentrada.DtEntrada'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)'
      'WHERE  Dbnentrada.CodForn = 1'
      
        'ORDER BY Dbnentrada.Filial, Dbnentrada.CodForn, Dbnentrada.NumNE' +
        'ntr'
      ' ')
    Left = 552
    Top = 152
    object qNotaEntradaFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNEntrada.DB".Filial'
    end
    object qNotaEntradaCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntrada.DB".CodForn'
    end
    object qNotaEntradaNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".NumNEntr'
    end
    object qNotaEntradaNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qNotaEntradaDtEmissaoNEntr: TDateField
      FieldName = 'DtEmissaoNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".DtEmissaoNEntr'
    end
    object qNotaEntradaVlrTotalNEntr: TFloatField
      FieldName = 'VlrTotalNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".VlrTotalNEntr'
    end
    object qNotaEntradaDtEntrada: TDateField
      FieldName = 'DtEntrada'
      Origin = 'TABELAS."dbNEntrada.DB".DtEntrada'
    end
  end
  object dsqNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 576
    Top = 152
  end
  object tNEntradaItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    MasterFields = 'Filial;CodForn;NumNEntr'
    MasterSource = dsqNotaEntrada
    TableName = 'dbNEntradaItens.DB'
    Left = 528
    Top = 200
    object tNEntradaItensFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNEntradaItensCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object tNEntradaItensNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
    end
    object tNEntradaItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tNEntradaItensCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tNEntradaItensQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,##0.00000'
    end
    object tNEntradaItensVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      DisplayFormat = '###,###,##0.000'
    end
    object tNEntradaItensVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
      DisplayFormat = '###,###,##0.00'
    end
    object tNEntradaItensIcms: TFloatField
      FieldName = 'Icms'
    end
    object tNEntradaItensIpi: TFloatField
      FieldName = 'Ipi'
    end
    object tNEntradaItensDesc: TFloatField
      FieldName = 'Desc'
    end
    object tNEntradaItensVlrDesc: TFloatField
      FieldName = 'VlrDesc'
    end
    object tNEntradaItensVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object tNEntradaItensVlrIcms: TFloatField
      FieldName = 'VlrIcms'
    end
    object tNEntradaItensBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object tNEntradaItensSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tNEntradaItensIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNEntradaItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tNEntradaItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tNEntradaItensCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNEntradaItensNumOC: TIntegerField
      FieldName = 'NumOC'
    end
    object tNEntradaItensItemOC: TIntegerField
      FieldName = 'ItemOC'
    end
    object tNEntradaItensQtdPacote: TFloatField
      FieldName = 'QtdPacote'
    end
    object tNEntradaItensNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tNEntradaItensMatProd: TStringField
      FieldName = 'MatProd'
      Size = 3
    end
    object tNEntradaItensSomaEstoque: TBooleanField
      FieldName = 'SomaEstoque'
    end
    object tNEntradaItensNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object tNEntradaItensCodNatOper: TIntegerField
      FieldName = 'CodNatOper'
    end
    object tNEntradaItenslkNomeMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeMaterial'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodMaterial'
      Size = 40
      Lookup = True
    end
    object tNEntradaItenslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object tNEntradaItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tNEntradaItensDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object tNEntradaItensHrBaixa: TTimeField
      FieldName = 'HrBaixa'
    end
    object tNEntradaItensNumMovEstBaixa: TIntegerField
      FieldName = 'NumMovEstBaixa'
    end
    object tNEntradaItenslkCodClasFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodClasFiscal'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodClasFiscal'
      KeyFields = 'CodMaterial'
      Size = 12
      Lookup = True
    end
  end
  object dsNEntradaItens: TDataSource
    DataSet = tNEntradaItens
    Left = 552
    Top = 200
  end
end
