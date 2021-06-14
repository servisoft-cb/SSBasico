object fConsLoteFB: TfConsLoteFB
  Left = 82
  Top = 119
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Lotes'
  ClientHeight = 531
  ClientWidth = 838
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 65
    Width = 838
    Height = 466
    Align = alClient
    Color = clBtnFace
    DataSource = dsTalao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 0
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
    ExOptions = [eoCheckBoxSelect, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 29
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 37
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 29
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TALAO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS/Tal'#227'o'
        Width = 48
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDOCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Cliente'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Width = 43
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkUnidade'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdFaturada'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Faturada'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdRestante'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Restante'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Entrega'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente (Fantasia)'
        Width = 141
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescMaterial'
        Title.Alignment = taCenter
        Title.Caption = 'Desdobramento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 127
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEMPEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Item Ped.'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENTREGA'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Entrega Inicial'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTBAIXA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Baixa'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HRBAIXA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Baixa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumOS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Plano'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fabrica'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTCANCELADO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cancelado'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVOCANCELADO'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo do cancelamento'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CANCELADO'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkObsTalao'
        Title.Alignment = taCenter
        Title.Caption = 'Obs. Tal'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkFabrica'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clTipo'
        Title.Alignment = taCenter
        Title.Caption = 'Desc. Tipo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTIMPRESSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Impress'#227'o'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HRIMPRESSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Impress'#227'o'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Frequencia'
        Title.Alignment = taCenter
        Title.Caption = 'Frequ'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 216
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCOMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Combina'#231#227'o'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 27
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label2: TLabel
      Left = 3
      Top = 30
      Width = 47
      Height = 13
      Caption = 'Dt. Inicial:'
    end
    object Label3: TLabel
      Left = 162
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Dt. Final:'
    end
    object Label4: TLabel
      Left = 304
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label6: TLabel
      Left = 472
      Top = 11
      Width = 59
      Height = 13
      Caption = 'Ordenar por:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 51
      Top = 2
      Width = 249
      Height = 21
      DropDownCount = 8
      DropDownWidth = 600
      LookupField = 'Codigo'
      LookupDisplay = 'NomeInterno;Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 340
      Top = 24
      Width = 124
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 1
      Text = 'Ambos'
      Items.Strings = (
        'Pendentes'
        'Baixados'
        'Ambos')
    end
    object DateEdit1: TDateEdit
      Left = 51
      Top = 24
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 210
      Top = 24
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 468
      Top = 26
      Width = 69
      Height = 24
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 714
      Top = 26
      Width = 92
      Height = 24
      Caption = 'Imp.Detalhada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object ComboBox3: TComboBox
      Left = 532
      Top = 3
      Width = 124
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Lote'
      Items.Strings = (
        'Lote'
        'PedidoCliente (OC)'
        'Referencia'
        'Dt.Entrega')
    end
    object BitBtn3: TBitBtn
      Left = 537
      Top = 26
      Width = 69
      Height = 24
      Caption = 'Imp. Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 606
      Top = 26
      Width = 69
      Height = 24
      Caption = 'Mais Op'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object CheckBox2: TCheckBox
      Left = 663
      Top = 7
      Width = 116
      Height = 17
      Caption = 'Imp. Nome Cliente'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
  end
  object sdsTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.*, P.NOME NOMEPRODUTO, P.REFERENCIA, COR.NOME NOMECOR, ' +
      'CLI.NOME NOMECLIENTE'#13#10'FROM TALAO T'#13#10'INNER JOIN PRODUTO P'#13#10' ON T.' +
      'CODPRODUTO = P.CODIGO'#13#10'INNER JOIN CLIENTE CLI'#13#10'  ON T.CODCLIENTE' +
      ' = CLI.CODIGO'#13#10'FULL JOIN COR'#13#10' ON T.CODCOR = COR.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 352
    object sdsTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
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
    object sdsTalaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 65
    end
    object sdsTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object sdsTalaoNOMECOR: TStringField
      FieldName = 'NOMECOR'
      ProviderFlags = []
      Size = 40
    end
    object sdsTalaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sdsTalaoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object dspTalao: TDataSetProvider
    DataSet = sdsTalao
    Left = 328
    Top = 352
  end
  object cdsTalao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTalao'
    Left = 416
    Top = 352
    object cdsTalaoTALAO: TIntegerField
      FieldName = 'TALAO'
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
    object cdsTalaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      ProviderFlags = []
      Size = 65
    end
    object cdsTalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsTalaoNOMECOR: TStringField
      FieldName = 'NOMECOR'
      ProviderFlags = []
      Size = 40
    end
    object cdsTalaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsTalaoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object dsTalao: TDataSource
    DataSet = cdsTalao
    Left = 504
    Top = 352
  end
end
