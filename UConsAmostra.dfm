object fConsAmostra: TfConsAmostra
  Left = 61
  Top = 153
  Width = 906
  Height = 532
  Caption = 'fConsAmostra'
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
    Width = 898
    Height = 139
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 35
      Top = 11
      Width = 38
      Height = 13
      Caption = 'F'#225'brica:'
    end
    object Label2: TLabel
      Left = 3
      Top = 33
      Width = 70
      Height = 13
      Caption = 'Representada:'
    end
    object Label3: TLabel
      Left = 38
      Top = 56
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 414
      Top = 79
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label5: TLabel
      Left = 352
      Top = 11
      Width = 96
      Height = 13
      Caption = 'Dt.Encaminhada Ini:'
    end
    object Label6: TLabel
      Left = 551
      Top = 11
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label7: TLabel
      Left = 374
      Top = 33
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entregue Ini:'
    end
    object Label8: TLabel
      Left = 551
      Top = 33
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label9: TLabel
      Left = 375
      Top = 56
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Cadastro Ini:'
    end
    object Label10: TLabel
      Left = 551
      Top = 56
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label11: TLabel
      Left = 18
      Top = 78
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label12: TLabel
      Left = 15
      Top = 98
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ref. Cliente:'
    end
    object Label13: TLabel
      Left = 16
      Top = 123
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Constru'#231#227'o:'
    end
    object Label14: TLabel
      Left = 407
      Top = 123
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Mov.:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 75
      Top = 3
      Width = 273
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqFabrica
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 75
      Top = 25
      Width = 273
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM2.dsqRepresentada
      TabOrder = 1
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 75
      Top = 48
      Width = 273
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo3Enter
    end
    object ComboBox1: TComboBox
      Left = 451
      Top = 71
      Width = 209
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 12
      Text = 'Ambas'
      Items.Strings = (
        'N'#227'o Encaminhadas'
        'N'#227'o Entregues'
        'Ambas')
    end
    object DateEdit1: TDateEdit
      Left = 449
      Top = 3
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
    object DateEdit2: TDateEdit
      Left = 560
      Top = 3
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object DateEdit3: TDateEdit
      Left = 449
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object DateEdit4: TDateEdit
      Left = 560
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object DateEdit5: TDateEdit
      Left = 449
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
    end
    object DateEdit6: TDateEdit
      Left = 560
      Top = 48
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 11
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 50
      Width = 87
      Height = 30
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 696
      Top = 79
      Width = 87
      Height = 30
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object BitBtn3: TBitBtn
      Left = 696
      Top = 108
      Width = 87
      Height = 30
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = BitBtn3Click
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 75
      Top = 70
      Width = 273
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Referencia'
      LookupSource = DM1.dsProduto
      TabOrder = 3
      OnEnter = RxDBLookupCombo3Enter
    end
    object Edit1: TEdit
      Left = 75
      Top = 92
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 75
      Top = 115
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 451
      Top = 115
      Width = 97
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 13
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 139
    Width = 898
    Height = 342
    Align = alClient
    DataSource = dsConsulta
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 20
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia Cliente'
        Width = 118
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENCAMINHADA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Encaminhada'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENTREGA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTDTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Total'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FICHA'
        Title.Alignment = taCenter
        Title.Caption = 'Ficha'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFABRICA'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEREPRESENTADA'
        Title.Alignment = taCenter
        Title.Caption = 'Representada'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTCADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cadastro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HRCADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARIMBOPALMILHA'
        Title.Alignment = taCenter
        Title.Caption = 'Carimbo Palmilha'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARIMBOSOLA'
        Title.Alignment = taCenter
        Title.Caption = 'Carimbo Sola'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 200
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODFABRICA'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. F'#225'brica'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 481
    Width = 898
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo Clique Para Informar Data do Encaminhamento a F'#225'brica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsCliente
    Filter.Strings = (
      'Cliente = True')
    Left = 248
    Top = 16
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, FAB.NOME NOMEFABRICA, CLI.NOME NOMECLIENTE, REP.NOME' +
      ' NOMEREPRESENTADA, PRO.NOME NOMEPRODUTO, PRO.REFERENCIA, PRO.REF' +
      'CLIENTE'#13#10'FROM PEDAMOSTRA P'#13#10'INNER JOIN CLIENTE FAB'#13#10'ON P.CODFABR' +
      'ICA = FAB.CODIGO'#13#10'INNER JOIN CLIENTE CLI'#13#10'ON P.CODCLIENTE = CLI.' +
      'CODIGO'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON P.CODPRODUTO = PRO.CODIGO'#13#10'IN' +
      'NER JOIN CLIENTE REP'#13#10'ON PRO.CODREPRESENTADA = REP.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 320
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object sdsConsultaDTENCAMINHADA: TDateField
      FieldName = 'DTENCAMINHADA'
    end
    object sdsConsultaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsConsultaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsConsultaCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object sdsConsultaQTDTOTAL: TIntegerField
      FieldName = 'QTDTOTAL'
    end
    object sdsConsultaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsConsultaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsConsultaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsConsultaFICHA: TStringField
      FieldName = 'FICHA'
      Size = 30
    end
    object sdsConsultaCARIMBOPALMILHA: TStringField
      FieldName = 'CARIMBOPALMILHA'
      Size = 50
    end
    object sdsConsultaCARIMBOSOLA: TStringField
      FieldName = 'CARIMBOSOLA'
      Size = 50
    end
    object sdsConsultaNOMEFABRICA: TStringField
      FieldName = 'NOMEFABRICA'
      Size = 60
    end
    object sdsConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object sdsConsultaNOMEREPRESENTADA: TStringField
      FieldName = 'NOMEREPRESENTADA'
      Size = 60
    end
    object sdsConsultaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 65
    end
    object sdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsConsultaREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      Size = 25
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 592
    Top = 320
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 624
    Top = 320
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
    end
    object cdsConsultaDTENCAMINHADA: TDateField
      FieldName = 'DTENCAMINHADA'
    end
    object cdsConsultaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsultaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsConsultaCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
    end
    object cdsConsultaQTDTOTAL: TIntegerField
      FieldName = 'QTDTOTAL'
    end
    object cdsConsultaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConsultaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsConsultaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsConsultaFICHA: TStringField
      FieldName = 'FICHA'
      Size = 30
    end
    object cdsConsultaCARIMBOPALMILHA: TStringField
      FieldName = 'CARIMBOPALMILHA'
      Size = 50
    end
    object cdsConsultaCARIMBOSOLA: TStringField
      FieldName = 'CARIMBOSOLA'
      Size = 50
    end
    object cdsConsultaNOMEFABRICA: TStringField
      FieldName = 'NOMEFABRICA'
      Size = 60
    end
    object cdsConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsConsultaNOMEREPRESENTADA: TStringField
      FieldName = 'NOMEREPRESENTADA'
      Size = 60
    end
    object cdsConsultaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 65
    end
    object cdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsultaREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      Size = 25
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 656
    Top = 320
  end
end
