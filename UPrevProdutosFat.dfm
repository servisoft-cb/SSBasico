object fPrevProdutoFat: TfPrevProdutoFat
  Left = 171
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos faturados por per'#237'odo'
  ClientHeight = 124
  ClientWidth = 401
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
  object Label1: TLabel
    Left = 64
    Top = 16
    Width = 23
    Height = 13
    Caption = 'Filial:'
  end
  object Label2: TLabel
    Left = 31
    Top = 40
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label3: TLabel
    Left = 216
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 86
    Width = 402
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 32
    Top = 63
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 88
    Top = 8
    Width = 303
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
  end
  object DateEdit1: TDateEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DateEdit2: TDateEdit
    Left = 269
    Top = 32
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 199
    Top = 93
    Width = 90
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
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
  object BitBtn1: TBitBtn
    Left = 109
    Top = 93
    Width = 90
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      88888800000000000888808888888880808800000000000008080888888BBB88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 88
    Top = 55
    Width = 303
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia;DescMaterial'
    LookupSource = dsqRef
    TabOrder = 3
  end
  object qProdutosFat: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumNota, Dbno' +
        'tafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscal' +
        'itens.Unidade, Sum(Dbnotafiscalitens.Qtd) Qtd, Dbproduto.Referen' +
        'cia, Dbproduto.Nome, Dbnotafiscal.DtEmissao'
      'FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)'
      '   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)'
      'WHERE   (Dbproduto.ProdMat = '#39'P'#39')'
      '   AND  (Dbnotafiscalitens.Estoque = TRUE)'
      '   AND  (Dbnotafiscalitens.GeraDupl = TRUE)'
      '   AND  (Dbnotafiscalitens.Filial = :Filial)'
      '   AND  Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2'
      
        'GROUP BY Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumNota, Db' +
        'notafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafisc' +
        'alitens.Unidade, Dbproduto.Referencia, Dbproduto.Nome, Dbnotafis' +
        'cal.DtEmissao'
      'ORDER BY Dbproduto.Nome, dbnotafiscalitens.numnota'
      ''
      '')
    Left = 328
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Data2'
        ParamType = ptUnknown
      end>
    object qProdutosFatFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qProdutosFatNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qProdutosFatCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qProdutosFatCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qProdutosFatUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qProdutosFatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qProdutosFatReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qProdutosFatNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qProdutosFatDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qProdutosFatlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
  end
  object qRef: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Referencia, Nome, DescMaterial'
      'FROM "dbProduto.DB" Dbproduto'
      'ORDER BY Referencia, DescMaterial')
    Left = 336
    Top = 96
    object qRefCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbProduto.DB".Codigo'
    end
    object qRefReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbProduto.DB".Referencia'
    end
    object qRefNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbProduto.DB".Nome'
      Size = 40
    end
    object qRefDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Origin = 'TABELAS."dbProduto.DB".DescMaterial'
      Size = 50
    end
  end
  object dsqRef: TDataSource
    DataSet = qRef
    Left = 352
    Top = 96
  end
end
