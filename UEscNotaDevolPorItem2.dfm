object fEscNotaDevolPorItem2: TfEscNotaDevolPorItem2
  Left = 149
  Top = 71
  Width = 792
  Height = 638
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
    Width = 784
    Height = 604
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 459
      Width = 782
      Height = 144
      Align = alBottom
      Caption = ' Notas Selecionadas para gravar '
      TabOrder = 0
      object RxDBGrid2: TRxDBGrid
        Left = 3
        Top = 12
        Width = 770
        Height = 113
        Hint = 'Duplo clique para excluir a nota selecionada'
        Color = clInfoBk
        Ctl3D = False
        DataSource = fNotaFiscalItens.dsmSelecionado
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = RxDBGrid2DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do material'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da cor'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Restante'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Material'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodFornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Fornecedor'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 126
        Width = 778
        Height = 16
        Align = alBottom
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Duplo clique para excluir a nota selecionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 58
      Align = alTop
      TabOrder = 1
      object Label2: TLabel
        Left = 609
        Top = 37
        Width = 80
        Height = 13
        Caption = 'Qtd.Restante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel1: TRxLabel
        Left = 3
        Top = 36
        Width = 42
        Height = 13
        Caption = 'Material:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel2: TRxLabel
        Left = 3
        Top = 9
        Width = 42
        Height = 13
        Caption = 'Cli/Forn:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn2: TBitBtn
        Left = 555
        Top = 2
        Width = 223
        Height = 22
        Hint = 'Confirma a escolha da nota fiscal'
        Caption = '&Confirma o material para a nota fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn2Click
        NumGlyphs = 2
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 691
        Top = 30
        Width = 85
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DecimalPlaces = 5
        DisplayFormat = '0.00000'
        TabOrder = 1
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 99
        Top = 32
        Width = 250
        Height = 21
        DropDownCount = 8
        LookupField = 'CodMaterial'
        LookupDisplay = 'Nome'
        LookupSource = dsqMaterial
        TabOrder = 2
        OnExit = RxDBLookupCombo2Exit
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 48
        Top = 32
        Width = 49
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 3
        OnChange = CurrencyEdit4Change
        OnExit = CurrencyEdit4Exit
      end
      object BitBtn3: TBitBtn
        Left = 350
        Top = 3
        Width = 137
        Height = 25
        Caption = 'Gera materiais para retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn3Click
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 48
        Top = 2
        Width = 300
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = dsmFornecedor
        TabOrder = 6
        OnChange = RxDBLookupCombo1Change
      end
      object BitBtn1: TBitBtn
        Left = 350
        Top = 28
        Width = 137
        Height = 25
        Caption = 'Filtra Notas (Material)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 59
      Width = 782
      Height = 139
      Align = alTop
      TabOrder = 2
      object RxDBGrid3: TRxDBGrid
        Left = 1
        Top = 1
        Width = 780
        Height = 122
        Align = alClient
        DataSource = fNotaFiscalItens.dsmMaterial
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = RxDBGrid3DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C.Mat.'
            Width = 433
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Material'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdConsumo'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Consumo'
            Width = 86
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdConsumoOriginal'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cons.Original'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdConsumoInf'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cons.Informada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Width = 41
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdNota'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.do Item'
            Width = 65
            Visible = True
          end>
      end
      object StaticText3: TStaticText
        Left = 1
        Top = 123
        Width = 780
        Height = 15
        Align = alBottom
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Duplo clique para selecionar as notas do material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 198
      Width = 782
      Height = 261
      Align = alClient
      TabOrder = 3
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 780
        Height = 13
        Align = alTop
        Caption = 'Notas do material selecionado ........................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBGrid1: TRxDBGrid
        Left = 1
        Top = 14
        Width = 780
        Height = 229
        Hint = 'Duplo click para selecionar a nota'
        TabStop = False
        Align = alClient
        DataSource = dsqNotaEntrada
        ReadOnly = True
        TabOrder = 0
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumPedCliente'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Material'
            Width = 209
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
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
            Title.Caption = 'Qtd.Restante'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdDevolvida'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Devolvida'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodForn'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Fornec.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
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
            FieldName = 'VlrUnit'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalItens'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeForn'
            Title.Caption = 'Nome Fornecedor'
            Width = 172
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Modelo'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Serie'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EstadoForn'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFeChaveAcesso'
            Title.Alignment = taCenter
            Title.Caption = 'Chave Acesso'
            Visible = True
          end>
      end
      object StaticText1: TStaticText
        Left = 1
        Top = 243
        Width = 780
        Height = 17
        Align = alBottom
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Duplo clique para selecionar as notas a serem devolvidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object qNotaEntrada: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.N' +
        'umNEntr, Dbnentrada.DtEmissaoNEntr, Dbnentrada.VlrTotalNEntr, Db' +
        'nentrada.DtEntrada, Dbnentradaitens.CodMaterial, Dbnentradaitens' +
        '.Qtd, Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Db' +
        'nentradaitens.CodCor, Dbnentradaitens.Unidade, Dbnentradaitens.Q' +
        'tdRestante, Dbnentradaitens.QtdDevolvida, Dbnentradaitens.Item, ' +
        'Dbnentradaitens.SitTrib, dbNEntradaItens.Tamanho, dbNEntradaIten' +
        's.CodGrade, dbNEntradaItens.Posicao, dbNEntradaItens.NumPedClien' +
        'te, dbNEntrada.Modelo, dbNEntrada.Serie, Dbfornecedores.EstadoFo' +
        'rn, dbNEntrada.NFeChaveAcesso'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      'WHERE   (Dbnentrada.CodForn = :CodFornecedor) AND'
      '        (dbnentrada.Filial = :Filial) AND'
      '        (Dbnentradaitens.codmaterial = :CodMaterial)'
      
        '   AND  ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (Dbnentradaitens.QtdRestante > 0)'
      '   AND  (Dbnentradaitens.Devolucao = False)'
      'ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr'
      ' '
      ' '
      ' '
      ' '
      ''
      ''
      ''
      ' ')
    Left = 560
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodMaterial'
        ParamType = ptUnknown
      end>
    object qNotaEntradaCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntrada.DB".CodForn'
    end
    object qNotaEntradaNomeForn: TStringField
      FieldName = 'NomeForn'
      Origin = 'TABELAS."dbFornecedores.DB".NomeForn'
      Size = 40
    end
    object qNotaEntradaNumNEntr: TIntegerField
      FieldName = 'NumNEntr'
      Origin = 'TABELAS."dbNEntrada.DB".NumNEntr'
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
    object qNotaEntradaCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qNotaEntradaQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qNotaEntradaVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
    end
    object qNotaEntradaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qNotaEntradaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qNotaEntradaQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradaQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
      DisplayFormat = '0.#####'
    end
    object qNotaEntradalkNomeMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeMaterial'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodMaterial'
      Size = 40
      Lookup = True
    end
    object qNotaEntradalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 15
      Lookup = True
    end
    object qNotaEntradaItem: TSmallintField
      FieldName = 'Item'
    end
    object qNotaEntradaSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object qNotaEntradaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object qNotaEntradaCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qNotaEntradaPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object qNotaEntradaNumPedCliente: TStringField
      FieldName = 'NumPedCliente'
    end
    object qNotaEntradaModelo: TIntegerField
      FieldName = 'Modelo'
    end
    object qNotaEntradaSerie: TStringField
      FieldName = 'Serie'
      Size = 2
    end
    object qNotaEntradaEstadoForn: TStringField
      FieldName = 'EstadoForn'
      Size = 2
    end
    object qNotaEntradaNFeChaveAcesso: TStringField
      FieldName = 'NFeChaveAcesso'
      Size = 44
    end
  end
  object dsqNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 576
    Top = 152
  end
  object qMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Distinct Dbnentradaitens.CodForn, Dbnentradaitens.CodMate' +
        'rial, dbProduto.Nome'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnentradaitens.CodMaterial = Dbproduto.Codigo)'
      'WHERE   (Dbnentrada.CodForn = :CodFornecedor)'
      '   AND  (Dbnentrada.Filial = :Filial)'
      
        '   AND  ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (DbnentradaItens.Devolucao = FALSE)'
      '   AND  (Dbnentradaitens.QtdRestante > 0)'
      'ORDER BY Dbnentradaitens.CodForn, dbProduto.Nome'
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 360
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object qMaterialCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbNEntradaItens.DB".CodForn'
    end
    object qMaterialCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
      Origin = 'TABELAS."dbNEntradaItens.DB".CodMaterial'
    end
    object qMaterialNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsqMaterial: TDataSource
    DataSet = qMaterial
    Left = 376
    Top = 152
  end
  object qItemNota: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CodProduto, CodCor, Qtd'
      'FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      'WHERE   (NumNota = :NumNota)  '
      '   AND  (Filial = :Filial)  '
      '   AND  (Material = TRUE)  ')
    Left = 440
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NumNota'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object qItemNotaCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qItemNotaCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodCor'
    end
    object qItemNotaQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
  end
  object tCliente: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbCliente.DB'
    Left = 536
    Top = 288
    object tClienteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object tClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object tClienteUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
    object tClienteCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object tClienteTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object tClienteTelefone2: TStringField
      FieldName = 'Telefone2'
      Size = 15
    end
    object tClienteFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object tClientePessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object tClienteCgcCpf: TStringField
      FieldName = 'CgcCpf'
      Size = 18
    end
    object tClienteInscrEst: TStringField
      FieldName = 'InscrEst'
      Size = 18
    end
    object tClienteContato: TStringField
      FieldName = 'Contato'
      Size = 30
    end
    object tClienteObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tClienteAprovCredito: TStringField
      FieldName = 'AprovCredito'
      Size = 1
    end
    object tClienteTipoAprov: TStringField
      FieldName = 'TipoAprov'
      Size = 1
    end
    object tClienteEndEntrega: TStringField
      FieldName = 'EndEntrega'
      Size = 40
    end
    object tClienteBairroEntrega: TStringField
      FieldName = 'BairroEntrega'
      Size = 26
    end
    object tClienteCidEntrega: TStringField
      FieldName = 'CidEntrega'
      Size = 26
    end
    object tClienteCepEntrega: TStringField
      FieldName = 'CepEntrega'
      Size = 10
    end
    object tClienteUfEntrega: TStringField
      FieldName = 'UfEntrega'
      Size = 2
    end
    object tClienteCgcCpfEntrega: TStringField
      FieldName = 'CgcCpfEntrega'
      Size = 18
    end
    object tClienteInscEntrega: TStringField
      FieldName = 'InscEntrega'
      Size = 18
    end
    object tClienteEndPgto: TStringField
      FieldName = 'EndPgto'
      Size = 40
    end
    object tClienteBairroPgto: TStringField
      FieldName = 'BairroPgto'
      Size = 26
    end
    object tClienteCidPgto: TStringField
      FieldName = 'CidPgto'
      Size = 26
    end
    object tClienteCepPgto: TStringField
      FieldName = 'CepPgto'
      Size = 10
    end
    object tClienteUfPgto: TStringField
      FieldName = 'UfPgto'
      Size = 2
    end
    object tClienteFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object tClienteDtCadastro: TDateField
      FieldName = 'DtCadastro'
    end
    object tClienteCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tClienteObsCtas: TMemoField
      FieldName = 'ObsCtas'
      BlobType = ftMemo
      Size = 1
    end
    object tClienteLojas: TIntegerField
      FieldName = 'Lojas'
    end
    object tClienteSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tClienteCaixaPostal: TStringField
      FieldName = 'CaixaPostal'
      Size = 10
    end
    object tClienteRg: TStringField
      FieldName = 'Rg'
      Size = 10
    end
    object tClienteCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object tClienteCodCidadeE: TIntegerField
      FieldName = 'CodCidadeE'
    end
    object tClienteCodCidadeP: TIntegerField
      FieldName = 'CodCidadeP'
    end
    object tClienteEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object tClientePercTransf: TFloatField
      FieldName = 'PercTransf'
    end
    object tClienteCodCondPgto: TIntegerField
      FieldName = 'CodCondPgto'
    end
    object tClienteDtNascContato: TDateField
      FieldName = 'DtNascContato'
    end
    object tClienteNomeResp: TStringField
      FieldName = 'NomeResp'
      Size = 30
    end
    object tClienteContatoCliente: TStringField
      FieldName = 'ContatoCliente'
      Size = 40
    end
    object tClienteContatoModelagem: TStringField
      FieldName = 'ContatoModelagem'
      Size = 40
    end
    object tClienteImpItemNotaPorTam: TBooleanField
      FieldName = 'ImpItemNotaPorTam'
    end
    object tClienteCodBancoBoleto: TIntegerField
      FieldName = 'CodBancoBoleto'
    end
    object tClienteUsuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tClienteDtCad: TDateField
      FieldName = 'DtCad'
    end
    object tClienteHrCad: TTimeField
      FieldName = 'HrCad'
    end
    object tClienteCodTransp: TIntegerField
      FieldName = 'CodTransp'
    end
    object tClienteIPISuspenso: TBooleanField
      FieldName = 'IPISuspenso'
    end
    object tClienteDtValidadeIPI: TDateField
      FieldName = 'DtValidadeIPI'
    end
    object tClienteCodObsIPI: TIntegerField
      FieldName = 'CodObsIPI'
    end
    object tClienteVendaPorMilheiro: TBooleanField
      FieldName = 'VendaPorMilheiro'
    end
    object tClienteAgrupaPedidoNaNota: TBooleanField
      FieldName = 'AgrupaPedidoNaNota'
    end
    object tClienteCodVendedor2: TIntegerField
      FieldName = 'CodVendedor2'
    end
    object tClienteJuntarLarguraEDI: TBooleanField
      FieldName = 'JuntarLarguraEDI'
    end
    object tClienteCodTipoCobranca: TIntegerField
      FieldName = 'CodTipoCobranca'
    end
    object tClienteMDia1: TIntegerField
      FieldName = 'MDia1'
    end
    object tClienteMDia2: TIntegerField
      FieldName = 'MDia2'
    end
    object tClientePercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tClientePercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
  end
  object mFornecedor: TMemoryTable
    Active = True
    Left = 416
    Top = 272
    object mFornecedorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mFornecedorNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
  end
  object dsmFornecedor: TDataSource
    DataSet = mFornecedor
    Left = 432
    Top = 272
  end
  object tPedidoItem: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbPedidoItem.DB'
    Left = 680
    Top = 272
    object tPedidoItemPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoItemItem: TIntegerField
      FieldName = 'Item'
    end
    object tPedidoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tPedidoItemCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tPedidoItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tPedidoItemQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object tPedidoItemQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object tPedidoItemQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object tPedidoItemPreco: TFloatField
      FieldName = 'Preco'
    end
    object tPedidoItemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tPedidoItemCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPedidoItemCopiado: TBooleanField
      FieldName = 'Copiado'
    end
    object tPedidoItemQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object tPedidoItemVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object tPedidoItemSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tPedidoItemQtdFatAut: TFloatField
      FieldName = 'QtdFatAut'
    end
    object tPedidoItemQtdFatMan: TFloatField
      FieldName = 'QtdFatMan'
    end
    object tPedidoItemReposicao: TBooleanField
      FieldName = 'Reposicao'
    end
    object tPedidoItemObsLote: TStringField
      FieldName = 'ObsLote'
      Size = 120
    end
    object tPedidoItemNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tPedidoItemDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
    end
    object tPedidoItemCodCia: TIntegerField
      FieldName = 'CodCia'
    end
    object tPedidoItemDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object tPedidoItemReprogramacao: TBooleanField
      FieldName = 'Reprogramacao'
    end
    object tPedidoItemDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object tPedidoItemHrBaixa: TTimeField
      FieldName = 'HrBaixa'
    end
    object tPedidoItemFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object tPedidoItemQtdLote: TFloatField
      FieldName = 'QtdLote'
    end
    object tPedidoItemCodProdutoCli: TStringField
      FieldName = 'CodProdutoCli'
      Size = 15
    end
    object tPedidoItemProdCliPorTamanho: TBooleanField
      FieldName = 'ProdCliPorTamanho'
    end
    object tPedidoItemProducaoVenda: TStringField
      FieldName = 'ProducaoVenda'
      Size = 1
    end
    object tPedidoItemPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tPedidoItemTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tPedidoItemPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tPedidoItemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tPedidoItemTalaoGerado: TBooleanField
      FieldName = 'TalaoGerado'
    end
    object tPedidoItemPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
    object tPedidoItemObsTalao: TStringField
      FieldName = 'ObsTalao'
      Size = 40
    end
    object tPedidoItemLargura: TStringField
      FieldName = 'Largura'
      Size = 8
    end
    object tPedidoItemMateriaPrima: TBooleanField
      FieldName = 'MateriaPrima'
    end
    object tPedidoItemAmostraEntregue: TBooleanField
      FieldName = 'AmostraEntregue'
    end
    object tPedidoItemDtEntregaAmostra: TDateField
      FieldName = 'DtEntregaAmostra'
    end
    object tPedidoItemHrEntregaAmostra: TTimeField
      FieldName = 'HrEntregaAmostra'
    end
    object tPedidoItemPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
  end
end
