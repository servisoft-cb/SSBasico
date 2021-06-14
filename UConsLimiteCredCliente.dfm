object fConsLimiteCredCliente: TfConsLimiteCredCliente
  Left = 112
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta limite de cr'#233'dito do cliente'
  ClientHeight = 531
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 5
      Top = 32
      Width = 67
      Height = 13
      Caption = 'Grupo Cliente:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 76
      Top = 1
      Width = 325
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 0
      OnEnter = RxDBLookupCombo1Enter
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 76
      Top = 25
      Width = 325
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsGrupoCliente
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object BitBtn1: TBitBtn
      Left = 408
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 51
    Width = 750
    Height = 480
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 748
      Height = 478
      Align = alClient
      DataSource = dsmCliente
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Width = 328
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrPedidos'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Pedidos Pendentes'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTitulos'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. T'#237'tulos'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTransf'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Transf. Icms'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrLimite'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Limite Cr'#233'dido'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrEmAberto'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total Cliente'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo Cliente'
          Width = 115
          Visible = True
        end>
    end
  end
  object mCliente: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'VlrTitulos'
        DataType = ftFloat
      end
      item
        Name = 'VlrPedidos'
        DataType = ftFloat
      end
      item
        Name = 'VlrTransf'
        DataType = ftFloat
      end
      item
        Name = 'VlrLimite'
        DataType = ftFloat
      end
      item
        Name = 'Saldo'
        DataType = ftFloat
      end
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrEmAberto'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Nome'
    Params = <>
    StoreDefs = True
    OnNewRecord = mClienteNewRecord
    Left = 649
    Top = 79
    Data = {
      AE0000009619E0BD010000001800000008000000000003000000AE000A566C72
      546974756C6F7308000400000000000A566C7250656469646F73080004000000
      000009566C725472616E7366080004000000000009566C724C696D6974650800
      0400000000000553616C646F080004000000000006436F6469676F0400010000
      000000044E6F6D6501004900000001000557494454480200020028000B566C72
      456D41626572746F08000400000000000000}
    object mClienteVlrTitulos: TFloatField
      FieldName = 'VlrTitulos'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mClienteVlrPedidos: TFloatField
      FieldName = 'VlrPedidos'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mClienteVlrTransf: TFloatField
      FieldName = 'VlrTransf'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mClienteVlrLimite: TFloatField
      FieldName = 'VlrLimite'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mClienteSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object mClienteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mClienteVlrEmAberto: TFloatField
      FieldName = 'VlrEmAberto'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dsmCliente: TDataSource
    DataSet = mCliente
    Left = 672
    Top = 79
  end
end
