object fConsPedidoEsp: TfConsPedidoEsp
  Left = 22
  Top = 130
  Width = 743
  Height = 328
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta do Pedido Especial'
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
    Top = 1
    Width = 735
    Height = 298
    TabOrder = 0
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 729
      Height = 67
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 29
        Top = 16
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Label2: TLabel
        Left = 5
        Top = 48
        Width = 59
        Height = 13
        Caption = 'Dt. Emissão:'
      end
      object Label3: TLabel
        Left = 219
        Top = 48
        Width = 66
        Height = 13
        Caption = 'Nº do Pedido:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 66
        Top = 8
        Width = 306
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsCliente
        TabOrder = 0
        OnChange = RxDBLookupCombo1Change
        OnEnter = RxDBLookupCombo1Enter
      end
      object DateEdit1: TDateEdit
        Left = 66
        Top = 40
        Width = 90
        Height = 21
        Hint = 'Selecione uma data'
        CalendarHints.Strings = (
          'Ano Anterior'
          'Mês Anterior'
          'Próximo Mês'
          'Próximo Ano')
        GlyphKind = gkCustom
        Glyph.Data = {
          D6020000424DD60200000000000036000000280000001C0000000C0000000100
          100000000000A0020000000000000000000000000000000000001F7C1F7C1F7C
          EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D1F7C1F7CFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1F7C1F7C000000000F0000000F00
          0F0000000F00000000000F00EF3D1F7CEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
          EF3DEF3DEF3DEF3DFF7F1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7F0F00EF3D1F7CEF3DFF7F1F7CFF7FFF7FFF7F1F7CFF7FFF7FFF7F1F7CEF3D
          FF7F1F7C1F7CFF7F000000000000FF7F000000000000F75EFF7F0F00EF3D1F7C
          EF3DFF7FEF3DEF3DEF3D1F7CEF3DEF3DEF3D1F7CFF7FEF3DFF7F1F7C1F7CFF7F
          FF7F0000FF7FFF7FF75EFF7FF75E0000FF7F0F00EF3D1F7CEF3DFF7F1F7CEF3D
          FF7F1F7C1F7C1F7C1F7CEF3DFF7FEF3DFF7F1F7C1F7CFF7FFF7F0000FF7FFF7F
          FF7FFF7FFF7F0000FF7F0F00EF3D1F7CEF3DFF7F1F7CEF3DFF7F1F7C1F7CFF7F
          FF7FEF3D1F7CEF3DFF7F1F7C1F7CFF7FFF7F0000FF7FFF7F000000000000F75E
          FF7F0F00EF3D1F7CEF3DFF7F1F7CEF3DFF7F1F7CEF3DEF3DEF3D1F7C1F7CEF3D
          FF7F1F7C1F7CFF7F00000000FF7FFF7F0000FF7FFF7FFF7FFF7F0F00EF3D1F7C
          EF3DFF7FEF3DEF3DFF7F1F7CEF3DFF7FFF7FFF7FFF7FEF3DFF7F1F7C1F7CFF7F
          FF7F0000FF7FFF7F0000000000000000FF7F0F00EF3D1F7CEF3DFF7F1F7CEF3D
          1F7C1F7CEF3DEF3DEF3DEF3D1F7CEF3DFF7F1F7C1F7CFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7F0F00EF3D1F7CEF3DFF7F1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7CEF3DFF7F1F7C1F7CFF7FF75EF75EF75EF75EF75EF75EF75EF75E
          FF7F0F00EF3D1F7CEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D
          FF7F1F7C1F7C00000000000000000000000000000000000000001F7C1F7C1F7C
          EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D1F7C}
        NumGlyphs = 2
        StartOfWeek = Sun
        TabOrder = 1
        OnChange = DateEdit1Change
        OnEnter = DateEdit1Enter
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 288
        Top = 40
        Width = 81
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#'
        MaxLength = 9
        TabOrder = 2
        OnChange = CurrencyEdit1Change
        OnEnter = CurrencyEdit1Enter
      end
      object BitBtn4: TBitBtn
        Left = 620
        Top = 29
        Width = 101
        Height = 30
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn4Click
        OnExit = BitBtn4Exit
        Glyph.Data = {
          B6010000424DB601000000000000760000002800000022000000100000000100
          04000000000040010000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          03833333333333387F333300000083838383830E603833FFFFFFFF387F33FF00
          000000000000380E6600388888888F387F388300000033333330830E66033333
          33338F387F38F300000033333330000E6603333333FF88887F38F30000003333
          0030330E66033333388F8F387F38F300000033330E00330E660333FFF8F88F38
          7F38F300000000000EE0330E0603388888338F387F38F30000000EEEEEE6030E
          660338FFFFF378387F38F300000000000E60330E6603388888F78F387F38F300
          000033330600330E6603333338788F387F38F300000033330030330E66033333
          38838F387F38F3000000333333303330E603333333338F3387F8F30000003333
          333033330E03333333338FFFF878F30000003333333000000003333333338888
          8888330000003333333333333333333333333333333333000000}
        NumGlyphs = 2
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 4
      Top = 75
      Width = 726
      Height = 219
      DataSource = dsPedidoEsp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumPed'
          Title.Alignment = taCenter
          Title.Caption = 'Nº do Pedido'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtEmissao'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Emissão'
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NotaPedido'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'GeraContas'
          Title.Alignment = taCenter
          Title.Caption = 'Gera Contas'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Visible = True
        end>
    end
  end
  object qPedidoEsp: TQuery
    Active = True
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedidoesp.NumPed, Dbpedidoesp.DtEmissao, Dbpedidoesp.No' +
        'taPedido, Dbpedidoesp.VlrTotal, Dbpedidoesp.GeraContas, Dbclient' +
        'e.Nome'
      'FROM "dbPedidoEsp.DB" Dbpedidoesp'
      '   INNER JOIN "DBCLIENTE.DB" Dbcliente'
      '   ON  (Dbpedidoesp.CodCliente = Dbcliente.Codigo)  '
      'ORDER BY Dbcliente.Nome')
    Left = 376
    Top = 28
    object qPedidoEspNumPed: TIntegerField
      DisplayWidth = 12
      FieldName = 'NumPed'
      Origin = 'TABELAS."dbPedidoEsp.DB".NumPed'
    end
    object qPedidoEspDtEmissao: TDateField
      DisplayWidth = 12
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbPedidoEsp.DB".DtEmissao'
    end
    object qPedidoEspNotaPedido: TStringField
      DisplayWidth = 11
      FieldName = 'NotaPedido'
      Origin = 'TABELAS."dbPedidoEsp.DB".NotaPedido'
      Size = 1
    end
    object qPedidoEspVlrTotal: TFloatField
      DisplayWidth = 12
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbPedidoEsp.DB".VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object qPedidoEspGeraContas: TBooleanField
      DisplayWidth = 11
      FieldName = 'GeraContas'
      Origin = 'TABELAS."dbPedidoEsp.DB".GeraContas'
      DisplayValues = 'Sim'
    end
    object qPedidoEspNome: TStringField
      DisplayWidth = 57
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
  end
  object dsPedidoEsp: TDataSource
    DataSet = qPedidoEsp
    Left = 411
    Top = 28
  end
end
