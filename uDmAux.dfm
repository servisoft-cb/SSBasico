object DmAux: TDmAux
  OldCreateOrder = False
  Left = 286
  Top = 191
  Height = 510
  Width = 675
  object qGrupoItemFD1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 33
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemFD1CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemFD1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object qGrupoItemFD2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 33
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemFD2CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemFD2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object qGrupoItemFD3: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 33
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemFD3CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemFD3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object dsqGrupoItemFD3: TDataSource
    DataSet = qGrupoItemFD3
    Left = 89
    Top = 156
  end
  object dsqGrupoItemFD2: TDataSource
    DataSet = qGrupoItemFD2
    Left = 89
    Top = 108
  end
  object dsqGrupoItemFD1: TDataSource
    DataSet = qGrupoItemFD1
    Left = 89
    Top = 60
  end
  object qGrupoItemTP1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 177
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemTP1CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemTP1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object dsqGrupoItemTP1: TDataSource
    DataSet = qGrupoItemTP1
    Left = 217
    Top = 60
  end
  object qGrupoItemTP2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 177
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemTP2CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemTP2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object dsqGrupoItemTP2: TDataSource
    DataSet = qGrupoItemTP2
    Left = 217
    Top = 108
  end
  object dsqGrupoItemTP3: TDataSource
    DataSet = qGrupoItemTP3
    Left = 217
    Top = 156
  end
  object qGrupoItemTP3: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 177
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemTP3CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemTP3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object qGrupoItemSP3: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 313
    Top = 155
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemSP3CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemSP3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object dsqGrupoItemSP3: TDataSource
    DataSet = qGrupoItemSP3
    Left = 345
    Top = 155
  end
  object dsqGrupoItemSP2: TDataSource
    DataSet = qGrupoItemSP2
    Left = 345
    Top = 107
  end
  object qGrupoItemSP2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 313
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemSP2CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemSP2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object qGrupoItemSP1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODSUBGRUPO, NOME'
      'FROM DBGRUPOITEM'
      'WHERE CODGRUPO = :G1'
      'ORDER BY NOME')
    Left = 313
    Top = 59
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end>
    object qGrupoItemSP1CODSUBGRUPO: TIntegerField
      FieldName = 'CODSUBGRUPO'
      Origin = 'TABELAS."DBGRUPOITEM.DB".CodSubGrupo'
    end
    object qGrupoItemSP1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBGRUPOITEM.DB".Nome'
      Size = 30
    end
  end
  object dsqGrupoItemSP1: TDataSource
    DataSet = qGrupoItemSP1
    Left = 345
    Top = 59
  end
  object qGrupo: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBGRUPO'
      'ORDER BY NOME')
    Left = 32
    Top = 13
  end
  object dsqGrupo: TDataSource
    DataSet = qGrupo
    Left = 64
    Top = 13
  end
  object qMaterialFD1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 41
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialFD1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialFD1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object dsqMaterialFD1: TDataSource
    DataSet = qMaterialFD1
    Left = 89
    Top = 252
  end
  object dsqMaterialTP1: TDataSource
    DataSet = qMaterialTP1
    Left = 233
    Top = 252
  end
  object qMaterialTP1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 193
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialTP1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialTP1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object qMaterialSP1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 321
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialSP1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialSP1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object dsqMaterialSP1: TDataSource
    DataSet = qMaterialSP1
    Left = 361
    Top = 252
  end
  object dsqMaterialSP2: TDataSource
    DataSet = qMaterialSP2
    Left = 361
    Top = 300
  end
  object qMaterialSP2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 321
    Top = 300
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialSP2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialSP2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object dsqMaterialSP3: TDataSource
    DataSet = qMaterialSP3
    Left = 361
    Top = 348
  end
  object qMaterialSP3: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 321
    Top = 348
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialSP3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialSP3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object dsqMaterialTP3: TDataSource
    DataSet = qMaterialTP3
    Left = 233
    Top = 348
  end
  object qMaterialTP3: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 193
    Top = 348
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialTP3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialTP3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object qMaterialTP2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 193
    Top = 300
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialTP2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialTP2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object dsqMaterialTP2: TDataSource
    DataSet = qMaterialTP2
    Left = 233
    Top = 300
  end
  object dsqMaterialFD2: TDataSource
    DataSet = qMaterialFD2
    Left = 89
    Top = 300
  end
  object qMaterialFD2: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 41
    Top = 300
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialFD2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialFD2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object qMaterialFD3: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM DBPRODUTO'
      'WHERE INATIVO = FALSE'
      'AND PRODMAT = '#39'M'#39
      'AND CODGRUPO = :G1'
      'AND CODSUBGRUPO = :SG1'
      'ORDER BY NOME')
    Left = 41
    Top = 348
    ParamData = <
      item
        DataType = ftInteger
        Name = 'G1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SG1'
        ParamType = ptUnknown
      end>
    object qMaterialFD3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'TABELAS."DBPRODUTO.DB".Codigo'
    end
    object qMaterialFD3NOME: TStringField
      FieldName = 'NOME'
      Origin = 'TABELAS."DBPRODUTO.DB".Nome'
      Size = 65
    end
  end
  object dsqMaterialFD3: TDataSource
    DataSet = qMaterialFD3
    Left = 89
    Top = 348
  end
end
