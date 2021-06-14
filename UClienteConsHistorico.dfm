object fClienteConsHistorico: TfClienteConsHistorico
  Left = 65
  Top = 66
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Hist'#243'rico Clientes'
  ClientHeight = 563
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    782
    563)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 465
    Width = 55
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Hist'#243'rico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 546
    Width = 782
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 
      'Duplo clique ou Enter no registro para fazer a consulta do cadas' +
      'tro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 54
    Width = 782
    Height = 347
    Align = alTop
    DataSource = dsqClientes
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyPress = SMDBGrid1KeyPress
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
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NumMov'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtHistorico'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Mov.'
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Filial'
        Title.Alignment = taCenter
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Width = 288
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeHistorico'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Hist'#243'rico'
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Width = 45
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 54
    Align = alTop
    TabOrder = 2
    object Label10: TLabel
      Left = 20
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 2
      Top = 38
      Width = 60
      Height = 13
      Caption = 'Dt. Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 178
      Top = 38
      Width = 53
      Height = 13
      Caption = 'Dt. Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 20
      Width = 78
      Height = 31
      Hint = 'Pesquisa s'#243' o cliente informado'
      Caption = 'Consulta'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        BA040000424DBA04000000000000360000002800000011000000110000000100
        2000000000008404000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000000000000000000000000000000000000000000000000000000000000000
        000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
        000000000000C0C0C00000000000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0C0000000
        00000000000000000000C0C0C00000000000FFFFFF00C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000FFFFFF0000000000C0C0C000C0C0C000C0C0C0000000
        00000000000000000000C0C0C000C0C0C00000000000FFFFFF00C0C0C000C0C0
        C000C0C0C0008080800000000000000000000000000080808000C0C0C0000000
        00000000000000000000C0C0C000C0C0C000C0C0C00000000000FFFFFF00C0C0
        C000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
        00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
        FF00C0C0C0000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00008080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
        0000FFFFFF008080800000000000FFFF0000000000000000000000000000FFFF
        FF0000000000C0C0C0000000000080808000C0C0C000C0C0C000C0C0C000C0C0
        C00000000000FFFFFF0000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
        0000FFFFFF0000000000C0C0C000C0C0C00000000000C0C0C000C0C0C000C0C0
        C000C0C0C00000000000FFFFFF0000000000FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000C0C0C000C0C0C00000000000C0C0C000C0C0
        C000C0C0C000C0C0C000000000000000000000000000FFFF0000FFFFFF00FFFF
        0000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C00000000000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
        00000000000000000000000000000000000000000000C0C0C000000000008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
        000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
        0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0C000000000000000
        0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080000000000000000000000000008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
    end
    object RxDBLookupCombo6: TRxDBLookupCombo
      Left = 66
      Top = 6
      Width = 268
      Height = 21
      DropDownCount = 8
      LookupField = 'NomeCliente'
      LookupDisplay = 'NomeCliente'
      LookupSource = dsqHistCliente
      TabOrder = 0
    end
    object BitBtn7: TBitBtn
      Left = 414
      Top = 20
      Width = 75
      Height = 31
      Hint = 'Imprime o documento selecionado'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn7Click
      Glyph.Data = {
        1E010000424D1E010000000000007600000028000000110000000E0000000100
        040000000000A800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888000000000
        0088800000008808888888880808800000008000000000000080800000008088
        8888BBB880008000000080888888777880808000000080000000000000880000
        00008088888888880808000000008800000000008080000000008880FFFFFFFF
        08080000000088880F00000F00008000000088880FFFFFFFF088800000008888
        80F00000F08880000000888880FFFFFFFF088000000088888800000000088000
        0000}
    end
    object DateEdit2: TDateEdit
      Left = 65
      Top = 30
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 3
    end
    object DateEdit3: TDateEdit
      Left = 235
      Top = 30
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 489
      Top = 20
      Width = 75
      Height = 31
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn6Click
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
  end
  object DBMemo1: TDBMemo
    Left = 80
    Top = 401
    Width = 702
    Height = 145
    Align = alRight
    Color = clInfoBk
    DataField = 'Obs'
    DataSource = dsqClientes
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object qClientes: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbhistcliente.NumMov, Dbhistcliente.CodCliente, Dbhistcli' +
        'ente.NomeCliente, Dbhistcliente.DtHistorico, Dbhistcliente.Obs, ' +
        'Dbhistcliente.Responsavel, Dbhistcliente.Filial, Dbhistcliente.C' +
        'odHistorico, Dbhistorico.Nome NomeHistorico'
      'FROM "dbHistCliente.DB" Dbhistcliente'
      '   LEFT JOIN "dbHistorico.DB" Dbhistorico'
      '   ON  (Dbhistcliente.CodHistorico = Dbhistorico.Codigo)  '
      'WHERE (0 = 0) ')
    Left = 680
    object qClientesNumMov: TIntegerField
      FieldName = 'NumMov'
      Origin = 'TABELAS."dbHistCliente.DB".NumMov'
    end
    object qClientesCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbHistCliente.DB".CodCliente'
    end
    object qClientesNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbHistCliente.DB".NomeCliente'
      Size = 40
    end
    object qClientesDtHistorico: TDateField
      FieldName = 'DtHistorico'
      Origin = 'TABELAS."dbHistCliente.DB".DtHistorico'
    end
    object qClientesObs: TMemoField
      FieldName = 'Obs'
      Origin = 'TABELAS."dbHistCliente.DB".Obs'
      BlobType = ftMemo
      Size = 1
    end
    object qClientesResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'TABELAS."dbHistCliente.DB".Responsavel'
      Size = 40
    end
    object qClientesFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbHistCliente.DB".Filial'
    end
    object qClientesCodHistorico: TIntegerField
      FieldName = 'CodHistorico'
      Origin = 'TABELAS."dbHistCliente.DB".CodHistorico'
    end
    object qClientesNomeHistorico: TStringField
      FieldName = 'NomeHistorico'
      Origin = 'TABELAS."dbHistorico.DB".Nome'
      Size = 50
    end
  end
  object dsqClientes: TDataSource
    DataSet = qClientes
    Left = 704
  end
  object qHistCliente: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Distinct NomeCliente'
      'FROM "dbHistCliente.db" Dbhistcliente'
      'ORDER BY NomeCliente')
    Left = 700
    Top = 104
    object qHistClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbHistCliente.DB".NomeCliente'
      Size = 40
    end
  end
  object dsqHistCliente: TDataSource
    DataSet = qHistCliente
    Left = 720
    Top = 104
  end
end
