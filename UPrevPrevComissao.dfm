object fPrevPrevComissao: TfPrevPrevComissao
  Left = 265
  Top = 72
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previs'#227'o de Comiss'#227'o'
  ClientHeight = 190
  ClientWidth = 337
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
  object Bevel1: TBevel
    Left = 9
    Top = 140
    Width = 321
    Height = 45
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 43
    Top = 85
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 244
    Top = 85
    Width = 51
    Height = 13
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 131
    Top = 44
    Width = 77
    Height = 13
    Caption = 'Nome Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object RxSpeedButton2: TRxSpeedButton
    Left = 74
    Top = 151
    Width = 95
    Height = 25
    Caption = '&Imprimir'
    Glyph.Data = {
      42020000424D4202000000000000420000002800000010000000100000000100
      1000030000000002000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75E00000000000000000000000000000000000000000000
      F75EF75EF75EF75E0000F75EF75EF75EF75EF75EF75EF75EF75EF75E0000F75E
      0000F75EF75E0000000000000000000000000000000000000000000000000000
      F75E0000F75E0000F75EF75EF75EF75EF75EF75EE07FE07FE07FF75EF75E0000
      00000000F75E0000F75EF75EF75EF75EF75EF75EEF3DEF3DEF3DF75EF75E0000
      F75E0000F75E0000000000000000000000000000000000000000000000000000
      F75EF75E00000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75E0000F75E
      0000F75E0000F75E0000000000000000000000000000000000000000F75E0000
      F75E00000000F75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75E
      0000F75E0000F75EF75EF75E0000FF7F00000000000000000000FF7F00000000
      00000000F75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      F75EF75EF75EF75EF75EF75EF75E0000FF7F00000000000000000000FF7F0000
      F75EF75EF75EF75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000F75EF75EF75EF75EF75EF75EF75E00000000000000000000000000000000
      0000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75E}
    Layout = blGlyphLeft
    OnClick = RxSpeedButton2Click
  end
  object Label4: TLabel
    Left = 155
    Top = 4
    Width = 20
    Height = 13
    Caption = 'Filial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object DateEdit1: TDateEdit
    Left = 9
    Top = 101
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object DateEdit2: TDateEdit
    Left = 209
    Top = 101
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 9
    Top = 59
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsVendedor
    TabOrder = 1
    OnEnter = RxDBLookupCombo1Enter
  end
  object BitBtn2: TBitBtn
    Left = 169
    Top = 151
    Width = 95
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn2Click
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
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 9
    Top = 19
    Width = 321
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
    OnEnter = RxDBLookupCombo1Enter
  end
  object qPrevisao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcreceberparc.Filial, Dbfilial.Empresa NomeFilial, Dbcre' +
        'ceberparc.NumCReceber, Dbcreceberparc.ParcCReceber, Dbcreceberpa' +
        'rc.VlrParcCReceber, Dbcreceberparc.DtVencCReceber, Dbcreceberpar' +
        'c.CodCli, Dbcreceberparc.NumNota, Dbcliente.Nome NomeCliente, Db' +
        'creceberparc.PgtoParcial, Dbcreceberparc.RestParcela, Dbcreceber' +
        'parc.CodVendedor CodVendedor, Dbcreceberparc.PercComissao, Dbven' +
        'dedor.Nome NomeVendedor, Dbcreceberparc.VlrComissao, Dbcreceberp' +
        'arc.CodVendedor2, Dbcreceberparc.PercComissao2'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      '   INNER JOIN "dbFilial.DB" Dbfilial'
      '   ON  (Dbcreceberparc.Filial = Dbfilial.Codigo)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbcreceberparc.CodCli = Dbcliente.Codigo)  '
      '   INNER JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbcreceberparc.CodVendedor = Dbvendedor.Codigo)  '
      'WHERE   (Dbcreceberparc.RestParcela > 0)  '
      '   AND  (Dbcreceberparc.Cancelado = FALSE)  '
      '   AND  (Dbcreceberparc.CodVendedor = 1)  '
      '   AND  (Dbcreceberparc.Filial = 1)  '
      
        '   AND  Dbcreceberparc.DtVencCReceber BETWEEN '#39'01/01/2006'#39' AND '#39 +
        '01/01/2007'#39'  '
      '')
    Left = 88
    Top = 8
    object qPrevisaoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qPrevisaoNomeFilial: TStringField
      FieldName = 'NomeFilial'
      Size = 60
    end
    object qPrevisaoNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
    object qPrevisaoParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
    end
    object qPrevisaoVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
    end
    object qPrevisaoDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
    end
    object qPrevisaoCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qPrevisaoNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qPrevisaoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qPrevisaoPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
    end
    object qPrevisaoRestParcela: TFloatField
      FieldName = 'RestParcela'
    end
    object qPrevisaoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object qPrevisaoPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object qPrevisaoNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object qPrevisaoVlrComissao: TFloatField
      FieldName = 'VlrComissao'
    end
    object qPrevisaoCodVendedor2: TIntegerField
      FieldName = 'CodVendedor2'
    end
    object qPrevisaoPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
  end
  object dsqPrevisao: TDataSource
    DataSet = qPrevisao
    Left = 104
    Top = 8
  end
  object qVendedor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT DISTINCT Dbcreceberparc.CodVendedor, Dbvendedor.Nome Nome' +
        'Vendedor'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      '   INNER JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbcreceberparc.CodVendedor = Dbvendedor.Codigo)  '
      'WHERE   (Dbcreceberparc.Cancelado = FALSE)  '
      '   AND  (Dbcreceberparc.CodVendedor = 1)  '
      '   AND  (Dbcreceberparc.Filial = 1)  '
      
        '   AND  Dbcreceberparc.DtVencCReceber BETWEEN '#39'01/01/2006'#39' AND '#39 +
        '01/01/2007'#39'  '
      '   AND  (Dbvendedor.TipoComissao = '#39'D'#39')  ')
    Left = 168
    object qVendedorCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbCReceberParc.DB".CodVendedor'
    end
    object qVendedorNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Origin = 'TABELAS."dbVendedor.DB".Nome'
      Size = 40
    end
  end
  object dsqVendedor: TDataSource
    DataSet = qVendedor
    Left = 184
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsVendedor
    Filter.Strings = (
      'TipoComissao = '#39'D'#39)
    Left = 184
    Top = 80
  end
end
