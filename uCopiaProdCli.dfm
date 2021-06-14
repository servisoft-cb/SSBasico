object fCopiaProdCli: TfCopiaProdCli
  Left = 115
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copia Cliente'
  ClientHeight = 96
  ClientWidth = 360
  Color = 10930928
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
  object Label1: TLabel
    Left = 36
    Top = 12
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 7
    Top = 36
    Width = 64
    Height = 13
    Caption = 'Novo Cliente:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 73
    Top = 3
    Width = 269
    Height = 21
    DropDownCount = 8
    LookupField = 'CodCliente'
    LookupDisplay = 'lkNomeCliente'
    LookupSource = dsqCliente
    TabOrder = 0
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 73
    Top = 27
    Width = 269
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 1
    OnEnter = RxDBLookupCombo2Enter
  end
  object BitBtn17: TBitBtn
    Left = 77
    Top = 60
    Width = 130
    Height = 28
    Hint = 'Confirma o cliente'
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn17Click
    Glyph.Data = {
      A6020000424DA602000000000000420000002800000011000000110000000100
      1000030000006402000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EC202F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EC202F75EF75EF75EF75EF75EF75EF75EF75EF75E
      1700FF7FF75EF75EF75EF75EF75EF75EDD01F75EF75EF75EF75EF75EF75EF75E
      F75E170017001700FF7FF75EF75EF75EF75EF75EC202F75EF75EF75EF75EF75E
      F75EF75E1700170017001700FF7FF75EF75EF75EF75EF75E4301F75E00000000
      000000000000170017001700FF7F17001700FF7FF75EF75EF75EF75E9901F75E
      0000FF7FFF7FFF7F170017001700FF7F0000F75E17001700FF7FF75EF75EF75E
      C202F75E0000FF7FEF3DEF3DEF3D1700FF7FFF7F0000F75EF75E1700FF7FF75E
      F75EF75E1D03F75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75EF75EF75E
      1700FF7FF75EF75E0200F75E0000FF7FEF3DEF3DEF3DEF3DEF3DFF7F0000F75E
      F75EF75EF75E1700FF7FF75E1903F75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000F75EF75EF75EF75EF75E1700FF7FDA00F75E0000FF7FEF3DEF3DF75EF75E
      F75EFF7F0000F75EF75EF75EF75EF75EF75E1700D300F75E0000FF7FFF7FFF7F
      FF7F0000000000000000F75EF75EF75EF75EF75EF75EF75E1901F75E0000FF7F
      EF3DEF3DF75E0000F75E0000F75EF75EF75EF75EF75EF75EF75EF75E9000F75E
      0000FF7FFF7FFF7FFF7F00000000F75EF75EF75EF75EF75EF75EF75EF75EF75E
      5802F75E000000000000000000000000F75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75E3501F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EB781}
  end
  object BitBtn3: TBitBtn
    Left = 208
    Top = 60
    Width = 130
    Height = 28
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn3Click
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
  object qCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT DISTINCT CodCliente, CodProduto'
      'FROM "dbProdutoCli.DB" Dbprodutocli'
      'WHERE   (CodProduto = :CodProduto)  '
      '   AND  (CodCor = :CodCor)  ')
    Left = 216
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCor'
        ParamType = ptUnknown
      end>
    object qClienteCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbProdutoCli.DB".CodCliente'
    end
    object qClienteCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbProdutoCli.DB".CodProduto'
    end
    object qClientelkNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCliente'
      LookupDataSet = DM1.tCliente
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCliente'
      Size = 40
      Lookup = True
    end
  end
  object dsqCliente: TDataSource
    DataSet = qCliente
    Left = 232
    Top = 8
  end
end
