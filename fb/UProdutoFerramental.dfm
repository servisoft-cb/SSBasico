object fProdutoFerramental: TfProdutoFerramental
  Left = 184
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fProdutoFerramental'
  ClientHeight = 466
  ClientWidth = 688
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 40
    Top = 77
    Width = 40
    Height = 13
    Caption = 'Material:'
  end
  object Label5: TLabel
    Left = 64
    Top = 100
    Width = 16
    Height = 13
    Caption = 'Vc:'
  end
  object Label6: TLabel
    Left = 64
    Top = 124
    Width = 16
    Height = 13
    Caption = 'Ap:'
  end
  object Label7: TLabel
    Left = 71
    Top = 149
    Width = 9
    Height = 13
    Caption = 'a:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 57
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object DBText1: TDBText
      Left = 62
      Top = 8
      Width = 66
      Height = 13
      DataField = 'Codigo'
      DataSource = DM1.dsProduto
    end
    object Label2: TLabel
      Left = 5
      Top = 24
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object DBText2: TDBText
      Left = 62
      Top = 24
      Width = 145
      Height = 13
      DataField = 'Referencia'
      DataSource = DM1.dsProduto
    end
    object Label3: TLabel
      Left = 29
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object DBText3: TDBText
      Left = 62
      Top = 40
      Width = 523
      Height = 13
      DataField = 'Nome'
      DataSource = DM1.dsProduto
    end
    object BitBtn4: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 83
    Top = 69
    Width = 286
    Height = 21
    DropDownCount = 8
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = dsMaterial
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 83
    Top = 93
    Width = 121
    Height = 21
    MaxLength = 7
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 83
    Top = 117
    Width = 121
    Height = 21
    MaxLength = 7
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 83
    Top = 141
    Width = 121
    Height = 21
    MaxLength = 7
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 83
    Top = 168
    Width = 81
    Height = 26
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 163
    Top = 168
    Width = 81
    Height = 26
    Caption = 'Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 243
    Top = 168
    Width = 81
    Height = 26
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 200
    Width = 688
    Height = 266
    Align = alBottom
    DataSource = dmCadProduto.dsProduto_Ferramental
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 8
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODMATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Material'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEMATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Material'
        Width = 291
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPOVC'
        Title.Alignment = taCenter
        Title.Caption = 'Vc'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPOAP'
        Title.Alignment = taCenter
        Title.Caption = 'Ap'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPOA'
        Title.Alignment = taCenter
        Title.Caption = 'a'
        Width = 66
        Visible = True
      end>
  end
  object sdsMaterial: TSQLDataSet
    CommandText = 
      'SELECT M.CODIGO, M.REFERENCIA, M.NOME'#13#10'FROM PRODUTO M'#13#10'INNER JOI' +
      'N GRUPO G'#13#10'ON M.CODGRUPO = G.CODIGO'#13#10'WHERE M.PRODMAT = '#39'M'#39#13#10'  AN' +
      'D M.INATIVO = '#39'N'#39#13#10'  AND G.TIPOPRODUTO = '#39'F'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 80
    object sdsMaterialCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 456
    Top = 80
  end
  object cdsMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 496
    Top = 80
    object cdsMaterialCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 552
    Top = 80
  end
end
