object fPedAmostraItem: TfPedAmostraItem
  Left = 151
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fPedAmostraItem'
  ClientHeight = 192
  ClientWidth = 759
  Color = clMoneyGreen
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
  object Label6: TLabel
    Left = 100
    Top = 8
    Width = 16
    Height = 13
    Caption = 'Cor'
  end
  object Label7: TLabel
    Left = 295
    Top = 8
    Width = 59
    Height = 13
    Caption = 'Combina'#231#227'o'
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 8
    Top = 24
    Width = 201
    Height = 21
    DropDownCount = 8
    DataField = 'CODCOR'
    DataSource = DMPedAmostra.dsPedAmostra_Item
    LookupField = 'CodCor'
    LookupDisplay = 'NomeCor'
    LookupSource = dsqCor
    TabOrder = 0
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 208
    Top = 24
    Width = 233
    Height = 21
    DropDownCount = 8
    DataField = 'CODCOMBINACAO'
    DataSource = DMPedAmostra.dsPedAmostra_Item
    LookupField = 'CodCombinacao'
    LookupDisplay = 'NomeCombinacao'
    LookupSource = dsqCombinacao
    TabOrder = 1
    OnEnter = RxDBLookupCombo3Enter
  end
  object VDBGrid1: TVDBGrid
    Left = 1
    Top = 66
    Width = 753
    Height = 87
    DataSource = DMPedAmostra.dsPedAmostra_Grade
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    TitlesWidth = 70
    Columns = <
      item
        Alignment = taCenter
        Color = clGray
        FieldName = 'TAMANHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
      end
      item
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end>
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 160
    Width = 137
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 160
    Width = 137
    Height = 25
    Caption = 'Cancelar/Fechar'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Dbcor.Nome NomeCor, Dbprodutocor.CodCor'
      'FROM "dbProdutoCor.DB" Dbprodutocor'
      '   INNER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbprodutocor.CodCor = Dbcor.Codigo)  '
      'WHERE  Dbprodutocor.CodProduto = :CodProduto '
      'ORDER BY dbCor.Nome')
    Left = 552
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end>
    object qCorNomeCor: TStringField
      FieldName = 'NomeCor'
      Origin = 'TABELAS."Dbcor.DB".Nome'
      Size = 25
    end
    object qCorCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbProdutoCor.DB".CodCor'
    end
  end
  object qCombinacao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbprodutocomb.Nome NomeCombinacao, DbprodutoComb.CodProdu' +
        'to, Dbprodutocomb.CodCor, Dbprodutocomb.CodCombinacao'
      'FROM "DBPRODUTOCOMB.DB" Dbprodutocomb'
      'WHERE   (Dbprodutocomb.CodProduto = :CodProduto)  '
      '   AND  (Dbprodutocomb.CodCor = :CodCor)  '
      ' ')
    Left = 632
    Top = 16
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
    object qCombinacaoNomeCombinacao: TStringField
      FieldName = 'NomeCombinacao'
      Origin = 'TABELAS."DBPRODUTOCOMB.DB".Nome'
      Size = 30
    end
    object qCombinacaoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbProdutoCor.DB".CodProduto'
    end
    object qCombinacaoCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."DBPRODUTOCOMB.DB".CodCor'
    end
    object qCombinacaoCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
      Origin = 'TABELAS."DBPRODUTOCOMB.DB".CodCombinacao'
    end
  end
  object dsqCor: TDataSource
    DataSet = qCor
    Left = 576
    Top = 16
  end
  object dsqCombinacao: TDataSource
    DataSet = qCombinacao
    Left = 656
    Top = 16
  end
end
