object fConsEstoqueMat: TfConsEstoqueMat
  Left = 41
  Top = 66
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Estoque'
  ClientHeight = 545
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 545
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 128
      Width = 776
      Height = 416
      Align = alClient
      Caption = 'Estoque'
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 2
        Top = 397
        Width = 772
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo Clique no Produto Mostra os '#218'ltimos Movimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object SMDBGrid1: TSMDBGrid
        Left = 2
        Top = 15
        Width = 772
        Height = 382
        Align = alClient
        DataSource = dsEstoque
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 263
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Estoque'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clQtdOC'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Ordem Compra'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstMinimo'
            Title.Alignment = taCenter
            Title.Caption = 'Est. M'#237'nimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstMaximo'
            Title.Alignment = taCenter
            Title.Caption = 'Est. M'#225'ximo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 776
      Height = 127
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      object Label2: TLabel
        Left = 123
        Top = 76
        Width = 140
        Height = 16
        Caption = 'Data de Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ALed1: TALed
        Left = 625
        Top = 66
        Width = 16
        Height = 16
        FalseColor = clRed
      end
      object Label32: TLabel
        Left = 645
        Top = 69
        Width = 73
        Height = 13
        Caption = 'Saldo Negativo'
      end
      object ALed4: TALed
        Left = 625
        Top = 84
        Width = 16
        Height = 16
        FalseColor = clYellow
      end
      object Label34: TLabel
        Left = 645
        Top = 87
        Width = 115
        Height = 13
        Caption = 'Saldo Abaixo do M'#237'nimo'
      end
      object ALed2: TALed
        Left = 625
        Top = 102
        Width = 16
        Height = 16
        FalseColor = clAqua
      end
      object Label3: TLabel
        Left = 645
        Top = 105
        Width = 113
        Height = 13
        Caption = 'Saldo Acima do M'#225'ximo'
      end
      object Label6: TLabel
        Left = 8
        Top = 4
        Width = 39
        Height = 16
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 448
        Top = 5
        Width = 145
        Height = 13
        DataField = 'CNPJ'
        DataSource = DM1.dsFilial
      end
      object Panel3: TPanel
        Left = 595
        Top = 5
        Width = 175
        Height = 41
        TabOrder = 3
        object BitBtn3: TBitBtn
          Left = 88
          Top = 6
          Width = 83
          Height = 30
          Hint = 'Fecha a janela atual'
          Caption = 'Balan'#231'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn3Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            88888800000000000888808888888880808800000000000008080888888BBB88
            0008088888877788080800000000000008800888888888808080800000000008
            0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
            088888880FFFFFFFF08888888000000000888888888888888888}
        end
        object BitBtn6: TBitBtn
          Left = 5
          Top = 6
          Width = 83
          Height = 30
          Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
          Caption = '&Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn6Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777700000000000777707777777770707700000000000007070777777BBB77
            0007077777788877070700000000000007700777777777707070700000000007
            0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
            077777770FFFFFFFF07777777000000000777777777777777777}
        end
      end
      object DateEdit1: TDateEdit
        Left = 263
        Top = 71
        Width = 96
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 360
        Top = 69
        Width = 89
        Height = 25
        Caption = 'Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
      object RadioGroup2: TRadioGroup
        Left = 4
        Top = 25
        Width = 109
        Height = 97
        Caption = ' Op'#231#227'o da Consulta '
        ItemIndex = 2
        Items.Strings = (
          'Com Saldo'
          'Negativo'
          'Todos')
        TabOrder = 4
        OnClick = RadioGroup2Click
      end
      object RadioGroup1: TRadioGroup
        Left = 244
        Top = 26
        Width = 137
        Height = 42
        Caption = 'Tipo da Impress'#227'o'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Dos'
          'Windows')
        TabOrder = 5
      end
      object RadioGroup3: TRadioGroup
        Left = 113
        Top = 26
        Width = 131
        Height = 42
        Caption = 'Tipo de Consulta'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Produto'
          'Material'
          'Outros')
        TabOrder = 7
      end
      object RadioGroup4: TRadioGroup
        Left = 381
        Top = 26
        Width = 207
        Height = 42
        Caption = ' Ordenar por '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Refer'#234'ncia'
          'Produto'
          'C'#243'digo')
        TabOrder = 6
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 47
        Top = 2
        Width = 394
        Height = 21
        DropDownCount = 8
        DropDownWidth = 600
        DisplayAllFields = True
        ListStyle = lsDelimited
        LookupField = 'Codigo'
        LookupDisplay = 'Empresa;Cnpj'
        LookupSource = DM1.dsFilial
        TabOrder = 0
        OnExit = RxDBLookupCombo3Exit
      end
    end
  end
  object qEstoque: TQuery
    Active = True
    OnCalcFields = qEstoqueCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT DISTINCT Dbproduto.Codigo CodMaterial, Dbproduto.Nome Nom' +
        'eMaterial, Dbestoquematmov.CodCor, SUM(Dbestoquematmov.Qtd2) Qtd' +
        ', Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbestoquematmov.Larg' +
        'ura, Dbcor.Nome NomeCor, Dbproduto.Referencia, dbestoquematmov.T' +
        'amanho'
      'FROM "dbProduto.DB" Dbproduto'
      '   FULL OUTER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   ON  (Dbproduto.Codigo = Dbestoquematmov.CodMaterial)'
      '   FULL OUTER JOIN "dbCor.DB" Dbcor'
      '   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)'
      
        'WHERE ((Dbestoquematmov.DtMov <= :Data) OR (Dbestoquematmov.DtMo' +
        'v is NULL))  and (Dbproduto.Estoque = True) and (dbproduto.ProdM' +
        'at = :T1)'
      
        'GROUP BY Dbproduto.Codigo, Dbproduto.Nome, Dbestoquematmov.CodCo' +
        'r, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbestoquematmov.Lar' +
        'gura, Dbcor.Nome, Dbproduto.Referencia, dbEstoquematmov.Tamanho'
      'ORDER BY NomeMaterial, NomeCor, Tamanho'
      '                                                  '
      ' '
      ' '
      ' '
      ' ')
    Left = 242
    Top = 320
    ParamData = <
      item
        DataType = ftDate
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'T1'
        ParamType = ptUnknown
      end>
    object qEstoqueCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qEstoqueNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object qEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qEstoqueQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '#.#####'
    end
    object qEstoqueEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object qEstoqueLargura: TStringField
      FieldName = 'Largura'
      Size = 1
    end
    object qEstoqueNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object qEstoqueReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qEstoqueEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object qEstoqueTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object qEstoquelkQtdOC: TFloatField
      FieldKind = fkLookup
      FieldName = 'lkQtdOC'
      LookupDataSet = qOC
      LookupKeyFields = 'CodMaterial;CodCor'
      LookupResultField = 'QtdOC'
      KeyFields = 'CodMaterial;CodCor'
      DisplayFormat = '#.#####'
      Lookup = True
    end
    object qEstoqueclQtdOC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtdOC'
      DisplayFormat = '#.#####'
      Calculated = True
    end
  end
  object dsEstoque: TDataSource
    DataSet = qEstoque
    Left = 274
    Top = 320
  end
  object qOC: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodMaterial, CodCor, SUM( QtdRestante ) QtdOC, Tamanho '
      'FROM "dbOrdemCompraItem.db" Dbordemcompraitem'
      'WHERE Filial = :Filial'
      'GROUP BY CodMaterial, CodCor, Tamanho')
    Left = 242
    Top = 356
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object qOCCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".CodMaterial'
    end
    object qOCCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".CodCor'
    end
    object qOCQtdOC: TFloatField
      FieldName = 'QtdOC'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".QtdRestante'
    end
    object qOCTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbOrdemCompraItem.DB".Tamanho'
      Size = 3
    end
  end
  object dsOC: TDataSource
    DataSet = qOC
    Left = 274
    Top = 356
  end
  object mBalanco: TMemoryTable
    Active = True
    OnNewRecord = mBalancoNewRecord
    Left = 554
    Top = 260
    object mBalancoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mBalancoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mBalancoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mBalancoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mBalancoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object mBalancoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mBalancoEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object mBalancoEstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object mBalancoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object mBalancoPrecoCompra: TFloatField
      FieldName = 'PrecoCompra'
      DisplayFormat = '###,###,##0.000'
    end
    object mBalancoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
  end
end
