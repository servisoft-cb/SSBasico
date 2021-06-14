object fCopiaProdCliCor: TfCopiaProdCliCor
  Left = 148
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copia a cor'
  ClientHeight = 79
  ClientWidth = 307
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
    Left = 2
    Top = 34
    Width = 52
    Height = 13
    Caption = 'Para a cor:'
  end
  object Label2: TLabel
    Left = 16
    Top = 4
    Width = 32
    Height = 13
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 56
    Top = 26
    Width = 249
    Height = 21
    DropDownCount = 8
    LookupField = 'CodCor'
    LookupDisplay = 'Nome'
    LookupSource = dsqCor
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 51
    Width = 105
    Height = 25
    Caption = 'Confirma'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 179
    Top = 51
    Width = 105
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT DISTINCT Dbprodutocor.CodCor, Dbprodutocor.CodProduto, Db' +
        'cor.Nome'
      'FROM "dbProdutoCor.DB" Dbprodutocor'
      '   INNER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbprodutocor.CodCor = Dbcor.Codigo)  '
      'WHERE  Dbprodutocor.CodProduto = :CodProduto '
      'ORDER BY Dbcor.Nome')
    Left = 216
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qCorCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbProdutoCor.DB".CodCor'
    end
    object qCorCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbProdutoCor.DB".CodProduto'
    end
    object qCorNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCor.DB".Nome'
      Size = 25
    end
  end
  object dsqCor: TDataSource
    DataSet = qCor
    Left = 232
    Top = 8
  end
end
