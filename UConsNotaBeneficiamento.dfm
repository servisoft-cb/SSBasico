object fConsNotaBeneficiamento: TfConsNotaBeneficiamento
  Left = 74
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Escolhe a Nota de Compra para ser devolvida'
  ClientHeight = 527
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 64
    Align = alTop
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 3
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
    object Label1: TLabel
      Left = 508
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Dt.Inicial:'
    end
    object Label2: TLabel
      Left = 660
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label3: TLabel
      Left = 331
      Top = 7
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label4: TLabel
      Left = 321
      Top = 27
      Width = 45
      Height = 26
      Alignment = taCenter
      Caption = 'Mostrar'#13#10'Somente:'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 48
      Top = 26
      Width = 271
      Height = 21
      DropDownCount = 8
      LookupField = 'CodForn'
      LookupDisplay = 'NomeForn'
      LookupSource = DM1.dsFornecedores
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object BitBtn1: TBitBtn
      Left = 504
      Top = 34
      Width = 103
      Height = 27
      Caption = 'Filtra as Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 48
      Top = 3
      Width = 271
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 710
      Top = 34
      Width = 76
      Height = 27
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 607
      Top = 34
      Width = 103
      Height = 27
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object DateEdit1: TDateEdit
      Left = 558
      Top = 8
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object DateEdit2: TDateEdit
      Left = 686
      Top = 8
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 368
      Top = 3
      Width = 128
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Pendentes'
      Items.Strings = (
        'Pendentes'
        'Encerradas'
        'Ambas')
    end
    object ComboBox2: TComboBox
      Left = 368
      Top = 26
      Width = 128
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Beneficiamentos'
      Items.Strings = (
        'Beneficiamentos'
        'N'#227'o Beneficiamentos'
        'Ambos')
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 64
    Width = 788
    Height = 463
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Detalhado por Nota'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 784
        Height = 302
        Align = alClient
        DataSource = dsqNotaEntrada
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        ColCount = 22
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 26
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNEntr'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkCodNatOper'
            Title.Alignment = taCenter
            Title.Caption = 'Nat.'
            Width = 38
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumPedCliente'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Width = 95
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Material'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Width = 93
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
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Q.Restante'
            Visible = True
          end
          item
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
            Title.Caption = 'Vlr. Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalItens'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
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
            FieldName = 'DtEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Entrada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissaoNEntr'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodForn'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Forn.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Material'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeForn'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Fornecedor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 302
        Width = 784
        Height = 138
        Align = alBottom
        TabOrder = 1
        object Label20: TLabel
          Left = 666
          Top = 28
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
          Top = 25
          Width = 16
          Height = 16
          FalseColor = clTeal
        end
        object RxDBGrid2: TRxDBGrid
          Left = 3
          Top = 2
          Width = 414
          Height = 130
          Color = clInfoBk
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NumNota'
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
              FieldName = 'lkDtEmissao'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Emiss'#227'o'
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Acumulado'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 784
        Height = 440
        Align = alClient
        DataSource = dsmAcumulado
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Material'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Material'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdDevolvida'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Devolvida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDevolvido'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Devolvido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cor'
            Width = 31
            Visible = True
          end>
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Acumulado Por Pedido'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 33
        Align = alTop
        TabOrder = 0
        object BitBtn4: TBitBtn
          Left = 703
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Consulta '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn4Click
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 33
        Width = 784
        Height = 407
        Align = alClient
        DataSource = dsmAcumuladoPedido
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumPedCliente'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Material'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Material'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdDevolvida'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Devolvida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrRestante'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDevolvido'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Devolvido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cor'
            Width = 31
            Visible = True
          end>
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 505
    Top = 65
    Width = 280
    Height = 16
    TabOrder = 2
  end
  object qNotaEntrada: TQuery
    OnCalcFields = qNotaEntradaCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.N' +
        'umNEntr, Dbnentrada.DtEmissaoNEntr, Dbnentrada.VlrTotalNEntr, Db' +
        'nentrada.DtEntrada, Dbnentradaitens.CodMaterial, Dbnentradaitens' +
        '.Qtd, Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Db' +
        'nentradaitens.CodCor, Dbnentradaitens.Unidade, Dbnentradaitens.Q' +
        'tdRestante, Dbnentradaitens.QtdDevolvida, Dbnentradaitens.Item, ' +
        'Dbnentradaitens.SitTrib, Dbnentrada.Filial, dbProduto.Nome, dbNE' +
        'ntradaItens.NumPedCliente, DbnentradaItens.CodNatOper'
      'FROM "DBNENTRADA.DB" Dbnentrada'
      '   INNER JOIN "dbFornecedores.DB" Dbfornecedores'
      '   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)'
      '   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens'
      '   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)'
      '   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)'
      '   INNER JOIN "dbProduto.DB" dbProduto'
      '   ON  (DbnentradaItens.CodMaterial = dbProduto.Codigo)'
      'WHERE   (Dbnentrada.CodForn = :CodFornecedor) AND'
      '        (dbnentrada.Filial = :Filial)'
      
        '   AND  ( (Dbnentrada.Devolvida = FALSE)  OR  (Dbnentrada.Devolv' +
        'ida IS NULL) )'
      '   AND  (Dbnentradaitens.QtdRestante > 0)  '
      'ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 528
    Top = 288
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
    object qNotaEntradaNome: TStringField
      FieldName = 'Nome'
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
    object qNotaEntradaclVlrTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrTotalRestante'
      Calculated = True
    end
    object qNotaEntradaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qNotaEntradaNumPedCliente: TStringField
      FieldName = 'NumPedCliente'
    end
    object qNotaEntradalkCodNatOper: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodNatOper'
      LookupDataSet = DM1.tNatOperacao2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodNatOper'
      KeyFields = 'CodNatOper'
      Size = 5
      Lookup = True
    end
    object qNotaEntradaCodNatOper: TIntegerField
      FieldName = 'CodNatOper'
    end
  end
  object dsqNotaEntrada: TDataSource
    DataSet = qNotaEntrada
    Left = 544
    Top = 288
  end
  object tNotaFiscalNDevolvida: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexName = 'iFilialFornNotaEntrItemEn'
    MasterFields = 'Filial;CodForn;NumNEntr;Item'
    MasterSource = dsqNotaEntrada
    TableName = 'dbNotaFiscalNDevolvida.DB'
    Left = 104
    Top = 456
    object tNotaFiscalNDevolvidaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalNDevolvidaNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalNDevolvidaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalNDevolvidaItem: TIntegerField
      FieldName = 'Item'
    end
    object tNotaFiscalNDevolvidaCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object tNotaFiscalNDevolvidaNumNotaEntrada: TIntegerField
      FieldName = 'NumNotaEntrada'
    end
    object tNotaFiscalNDevolvidaItemNotaEntrada: TIntegerField
      FieldName = 'ItemNotaEntrada'
    end
    object tNotaFiscalNDevolvidaQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.#####'
    end
    object tNotaFiscalNDevolvidalkDtEmissao: TDateField
      FieldKind = fkLookup
      FieldName = 'lkDtEmissao'
      LookupDataSet = tNotaFiscal2
      LookupKeyFields = 'Filial;NumSeq'
      LookupResultField = 'DtEmissao'
      KeyFields = 'Filial;NumSeq'
      Lookup = True
    end
  end
  object dsNotaFiscalNDevolvida: TDataSource
    DataSet = tNotaFiscalNDevolvida
    Left = 128
    Top = 456
  end
  object mAcumulado: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NomeMaterial;NomeCor'
    Params = <>
    Left = 345
    Top = 220
    Data = {
      E90000009619E0BD01000000180000000A000000000003000000E9000B436F64
      4D6174657269616C04000100000000000C4E6F6D654D6174657269616C010049
      000000010005574944544802000200280006436F64436F720400010000000000
      074E6F6D65436F720100490000000100055749445448020002001E0003517464
      08000400000000000C5174644465766F6C7669646108000400000000000B5174
      6452657374616E7465080004000000000008566C72546F74616C080004000000
      00000B566C7252657374616E746508000400000000000C566C724465766F6C76
      69646F08000400000000000000}
    object mAcumuladoCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mAcumuladoNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mAcumuladoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mAcumuladoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mAcumuladoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mAcumuladoQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
    end
    object mAcumuladoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mAcumuladoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mAcumuladoVlrRestante: TFloatField
      FieldName = 'VlrRestante'
    end
    object mAcumuladoVlrDevolvido: TFloatField
      FieldName = 'VlrDevolvido'
    end
  end
  object dsmAcumulado: TDataSource
    DataSet = mAcumulado
    Left = 361
    Top = 220
  end
  object mAcumuladoPedido: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumPedCliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodMaterial'
        DataType = ftInteger
      end
      item
        Name = 'NomeMaterial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'QtdDevolvida'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrRestante'
        DataType = ftFloat
      end
      item
        Name = 'VlrDevolvido'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NumPedCliente;NomeMaterial'
    Params = <>
    StoreDefs = True
    Left = 361
    Top = 292
    Data = {
      0B0100009619E0BD01000000180000000B0000000000030000000B010D4E756D
      506564436C69656E746501004900000001000557494454480200020014000B43
      6F644D6174657269616C04000100000000000C4E6F6D654D6174657269616C01
      0049000000010005574944544802000200280006436F64436F72040001000000
      0000074E6F6D65436F720100490000000100055749445448020002001E000351
      746408000400000000000C5174644465766F6C7669646108000400000000000B
      51746452657374616E7465080004000000000008566C72546F74616C08000400
      000000000B566C7252657374616E746508000400000000000C566C724465766F
      6C7669646F08000400000000000000}
    object mAcumuladoPedidoNumPedCliente: TStringField
      FieldName = 'NumPedCliente'
    end
    object mAcumuladoPedidoCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object mAcumuladoPedidoNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 40
    end
    object mAcumuladoPedidoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mAcumuladoPedidoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 30
    end
    object mAcumuladoPedidoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mAcumuladoPedidoQtdDevolvida: TFloatField
      FieldName = 'QtdDevolvida'
    end
    object mAcumuladoPedidoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mAcumuladoPedidoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mAcumuladoPedidoVlrRestante: TFloatField
      FieldName = 'VlrRestante'
    end
    object mAcumuladoPedidoVlrDevolvido: TFloatField
      FieldName = 'VlrDevolvido'
    end
  end
  object dsmAcumuladoPedido: TDataSource
    DataSet = mAcumuladoPedido
    Left = 377
    Top = 292
  end
  object tNotaFiscal2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'DBNOTAFISCAL.DB'
    Left = 441
    Top = 434
    object tNotaFiscal2Filial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscal2NumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscal2DtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
  end
end
