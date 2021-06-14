object fClientesAusentes: TfClientesAusentes
  Left = 288
  Top = 106
  Width = 600
  Height = 480
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Clientes sem compras'
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
    Width = 592
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Meses inativo'
    end
    object BitBtn1: TBitBtn
      Left = 438
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object JvSpinEdit1: TJvSpinEdit
      Left = 4
      Top = 5
      Width = 73
      Height = 21
      TabStop = True
      TabOrder = 0
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Min = 1
      Value = 1
      Alignment = taRightJustify
      Text = '1'
      HotTrack = True
    end
    object BitBtn2: TBitBtn
      Left = 513
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 31
    Width = 592
    Height = 422
    Align = alClient
    DataSource = dsmCliAusentes
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGCCPF'
        Title.Caption = 'CNPJ'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULTCOMPRA'
        Title.Caption = #218'LTIMA COMPRA'
        Width = 78
        Visible = True
      end>
  end
  object qCliAusentes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME, FANTASIA, CGCCPF'
      'FROM DBCLIENTE'
      'WHERE CODIGO NOT IN '
      '  (SELECT CODCLIENTE'
      '  FROM DBPEDIDO'
      '  WHERE DTEMISSAO > :D1)')
    Left = 312
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptUnknown
      end>
    object qCliAusentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qCliAusentesNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qCliAusentesFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object qCliAusentesCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
  end
  object qBuscaData: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT MAX(DTEMISSAO) DATA'
      'FROM DBPEDIDO'
      'WHERE CODCLIENTE = :C1')
    Left = 376
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptUnknown
      end>
  end
  object mCliAusentes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 8
    Data = {
      8C0000009619E0BD0100000018000000050000000000030000008C0006434F44
      49474F0400010000000000044E4F4D4501004900000001000557494454480200
      02003C000846414E544153494101004900000001000557494454480200020014
      0006434743435046010049000000010005574944544802000200120009554C54
      434F4D50524104000600000000000000}
    object mCliAusentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object mCliAusentesNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object mCliAusentesFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object mCliAusentesCGCCPF: TStringField
      FieldName = 'CGCCPF'
      Size = 18
    end
    object mCliAusentesULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
    end
  end
  object dsmCliAusentes: TDataSource
    DataSet = mCliAusentes
    Left = 440
    Top = 8
  end
end
