object DM2: TDM2
  OldCreateOrder = False
  Left = 157
  Top = 148
  Height = 583
  Width = 797
  object tEstoqueMatMov2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumMov'
    MasterFields = 'Codigo'
    MasterSource = DM1.dsFilial
    TableName = 'dbEstoqueMatMov.DB'
    Left = 152
    Top = 216
    object tEstoqueMatMov2Filial: TIntegerField
      FieldName = 'Filial'
    end
    object tEstoqueMatMov2NumMov: TIntegerField
      FieldName = 'NumMov'
    end
  end
  object tFilial2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbFilial.DB'
    Left = 40
    Top = 392
    object tFilial2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tFilial2Empresa: TStringField
      FieldName = 'Empresa'
      Size = 60
    end
    object tFilial2Endereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object tFilial2Bairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object tFilial2Cep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tFilial2Cidade: TStringField
      FieldName = 'Cidade'
      Size = 26
    end
    object tFilial2Estado: TStringField
      FieldName = 'Estado'
      Size = 3
    end
    object tFilial2Tel: TStringField
      FieldName = 'Tel'
      Size = 13
    end
    object tFilial2Tel2: TStringField
      FieldName = 'Tel2'
      Size = 13
    end
    object tFilial2Fax: TStringField
      FieldName = 'Fax'
      Size = 13
    end
    object tFilial2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object tFilial2Inscr: TStringField
      FieldName = 'Inscr'
      Size = 18
    end
  end
  object tProdutoTam2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbProdutoTam.DB'
    Left = 376
    Top = 392
    object tProdutoTam2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoTam2CodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoTam2Posicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoTam2Tamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tProdutoTam2QtdMinima: TFloatField
      FieldName = 'QtdMinima'
    end
    object tProdutoTam2QtdMaxima: TFloatField
      FieldName = 'QtdMaxima'
    end
    object tProdutoTam2PesoL: TFloatField
      FieldName = 'PesoL'
    end
    object tProdutoTam2PesoB: TFloatField
      FieldName = 'PesoB'
    end
    object tProdutoTam2PrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object tProdutoTam2QtdMatriz: TIntegerField
      FieldName = 'QtdMatriz'
    end
  end
  object qProximaNota: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'select max(NumNota) NumNota'
      'from dbnotafiscal.db'
      'where filial = :Filial'
      '   and Serie = :Serie')
    Left = 560
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptUnknown
      end>
    object qProximaNotaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
  end
  object tCadastroSimples: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbCadastroSimples.DB'
    Left = 568
    Top = 240
    object tCadastroSimplesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCadastroSimplesTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object tCadastroSimplesNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object tCadastroSimplesAbreviatura: TStringField
      FieldName = 'Abreviatura'
      Size = 7
    end
  end
  object qTipoProduto: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, Tipo'
      'FROM "dbCadastroSimples.DB" Dbcadastrosimples'
      'WHERE  Tipo = '#39'PRO'#39' '
      'ORDER BY Nome')
    Left = 472
    Top = 432
    object qTipoProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Codigo'
    end
    object qTipoProdutoNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCadastroSimples.DB".Nome'
      Size = 15
    end
    object qTipoProdutoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Tipo'
      Size = 3
    end
  end
  object qTipoMaterial: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, Tipo'
      'FROM "dbCadastroSimples.DB" Dbcadastrosimples'
      'WHERE  Tipo = '#39'MAT'#39' '
      'ORDER BY Nome')
    Left = 528
    Top = 472
    object qTipoMaterialCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Codigo'
    end
    object qTipoMaterialNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCadastroSimples.DB".Nome'
      Size = 15
    end
    object qTipoMaterialTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Tipo'
      Size = 3
    end
  end
  object dsqTipoProduto: TDataSource
    DataSet = qTipoProduto
    Left = 488
    Top = 432
  end
  object dsqTipoMaterial: TDataSource
    DataSet = qTipoMaterial
    Left = 552
    Top = 472
  end
  object qClasFisical: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT ClasFiscal, Nome'
      'FROM "dbClasFiscal.DB" Dbclasfiscal'
      'ORDER BY Nome, ClasFiscal')
    Left = 624
    Top = 152
    object qClasFisicalClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Origin = 'TABELAS."dbClasFiscal.DB".ClasFiscal'
      Size = 12
    end
    object qClasFisicalNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbClasFiscal.DB".Nome'
      Size = 30
    end
  end
  object dsClasFical: TDataSource
    DataSet = qClasFisical
    Left = 640
    Top = 152
  end
  object qGrupoItem: TQuery
    DatabaseName = 'Tabelas'
    SessionName = 'Default'
    SQL.Strings = (
      'SELECT CodGrupo, CodSubGrupo, Nome, Estoque'
      'FROM "dbGrupoItem.db" Dbgrupoitem'
      'WHERE CodGrupo = :CodGrupo')
    Left = 672
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodGrupo'
        ParamType = ptUnknown
      end>
    object qGrupoItemCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
      Origin = 'TABELAS."dbGrupoItem.DB".CodGrupo'
    end
    object qGrupoItemCodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
      Origin = 'TABELAS."dbGrupoItem.DB".CodSubGrupo'
    end
    object qGrupoItemNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbGrupoItem.DB".Nome'
      Size = 30
    end
    object qGrupoItemEstoque: TBooleanField
      FieldName = 'Estoque'
      Origin = 'TABELAS."dbGrupoItem.DB".Estoque'
    end
  end
  object dsqGrupoItem: TDataSource
    DataSet = qGrupoItem
    Left = 688
    Top = 336
  end
  object qTipoProcesso: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, Tipo'
      'FROM "dbCadastroSimples.DB" Dbcadastrosimples'
      'WHERE  Tipo = '#39'PPR'#39
      'ORDER BY Nome')
    Left = 656
    Top = 416
    object IntegerField1: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Codigo'
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCadastroSimples.DB".Nome'
      Size = 70
    end
    object StringField2: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Tipo'
      Size = 3
    end
  end
  object dsqTipoProcesso: TDataSource
    DataSet = qTipoProcesso
    Left = 672
    Top = 416
  end
  object qPedidoCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.CodCliente, SUM( Dbpedidoitem.QtdPares ) QtdPare' +
        's, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoite' +
        'm.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.VlrTotal ) VlrT' +
        'otal, Dbpedidoitem.Preco, Dbpedidoitem.VlrDesconto, Dbcliente.No' +
        'me, Dbcliente.Fantasia, Dbcliente.VlrLimiteCredito, Dbcliente.Co' +
        'dGrupo'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)  '
      'WHERE   (Dbpedido.QtdParesRest > 0)  '
      '   AND  (Dbpedido.Cancelado = FALSE)  '
      
        'GROUP BY Dbpedido.CodCliente, Dbpedidoitem.Preco, Dbpedidoitem.V' +
        'lrDesconto, Dbcliente.Nome, Dbcliente.Fantasia, Dbcliente.VlrLim' +
        'iteCredito, Dbcliente.CodGrupo')
    Left = 696
    Top = 16
    object qPedidoClienteCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoClienteQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoClienteQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesFat'
    end
    object qPedidoClienteQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qPedidoClienteVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbPedidoItem.DB".VlrTotal'
    end
    object qPedidoClientePreco: TFloatField
      FieldName = 'Preco'
      Origin = 'TABELAS."dbPedidoItem.DB".Preco'
    end
    object qPedidoClienteVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      Origin = 'TABELAS."dbPedidoItem.DB".VlrDesconto'
    end
    object qPedidoClienteNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object qPedidoClienteFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qPedidoClienteVlrLimiteCredito: TFloatField
      FieldName = 'VlrLimiteCredito'
    end
    object qPedidoClienteCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
  end
  object qCReceberCliente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcreceberparc.CodCli, Dbcreceberparc.Transferencia, SUM(' +
        ' Dbcreceberparc.RestParcela ) RestParcela, Dbcliente.Nome, Dbcli' +
        'ente.Fantasia, Dbcliente.VlrLimiteCredito, Dbcliente.CodGrupo'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbcreceberparc.CodCli = Dbcliente.Codigo)  '
      'WHERE  Dbcreceberparc.RestParcela > 0 '
      
        'GROUP BY Dbcreceberparc.CodCli, Dbcreceberparc.Transferencia, Db' +
        'cliente.Nome, Dbcliente.Fantasia, Dbcliente.VlrLimiteCredito, Db' +
        'cliente.CodGrupo')
    Left = 696
    Top = 64
    object qCReceberClienteCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbCReceberParc.DB".CodCli'
    end
    object qCReceberClienteTransferencia: TBooleanField
      FieldName = 'Transferencia'
      Origin = 'TABELAS."dbCReceberParc.DB".Transferencia'
    end
    object qCReceberClienteRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCReceberParc.DB".RestParcela'
    end
    object qCReceberClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 60
    end
    object qCReceberClienteFantasia: TStringField
      FieldName = 'Fantasia'
      Origin = 'TABELAS."dbCliente.DB".Fantasia'
    end
    object qCReceberClienteVlrLimiteCredito: TFloatField
      FieldName = 'VlrLimiteCredito'
      Origin = 'TABELAS."dbCliente.DB".VlrLimiteCredito'
    end
    object qCReceberClienteCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
      Origin = 'TABELAS."dbCliente.DB".CodGrupo'
    end
  end
  object qPosicao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome'
      'FROM "dbPosicao.db" Dbposicao'
      'ORDER BY Nome')
    Left = 696
    Top = 248
  end
  object dsqPosicao: TDataSource
    DataSet = qPosicao
    Left = 720
    Top = 248
  end
  object qTipoIndicacao: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, Tipo'
      'FROM "dbCadastroSimples.DB" Dbcadastrosimples'
      'WHERE  Tipo = '#39'IND'#39
      'ORDER BY Nome')
    Left = 656
    Top = 480
    object IntegerField2: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Codigo'
    end
    object StringField3: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCadastroSimples.DB".Nome'
      Size = 70
    end
    object StringField4: TStringField
      FieldName = 'Tipo'
      Origin = 'TABELAS."dbCadastroSimples.DB".Tipo'
      Size = 3
    end
  end
  object dsqTipoIndicacao: TDataSource
    DataSet = qTipoIndicacao
    Left = 672
    Top = 480
  end
  object dsFilial2: TDataSource
    DataSet = tFilial2
    Left = 64
    Top = 392
  end
  object qPais: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT ID, Pais, CodPais'
      'FROM "dbPais.DB" Dbpais'
      'ORDER BY Pais')
    Left = 400
    Top = 128
    object qPaisID: TIntegerField
      FieldName = 'ID'
      Origin = 'TABELAS."dbPais.DB".ID'
    end
    object qPaisPais: TStringField
      FieldName = 'Pais'
      Origin = 'TABELAS."dbPais.DB".Pais'
      Size = 40
    end
    object qPaisCodPais: TStringField
      FieldName = 'CodPais'
      Origin = 'TABELAS."dbPais.DB".CodPais'
      Size = 5
    end
  end
  object dsqPais: TDataSource
    DataSet = qPais
    Left = 440
    Top = 128
  end
  object tCReceberParcHist2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumCReceber;ParcCReceber;Item'
    MasterFields = 'Filial;NumCReceber;ParcCReceber'
    MasterSource = DM1.dsCReceberParc
    TableName = 'DBCRECEBERPARCHIST.DB'
    Left = 296
    Top = 200
    object tCReceberParcHist2Filial: TIntegerField
      FieldName = 'Filial'
    end
    object tCReceberParcHist2NumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
    object tCReceberParcHist2ParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
    end
    object tCReceberParcHist2Item: TIntegerField
      FieldName = 'Item'
    end
  end
  object dsCReceberParcHist2: TDataSource
    DataSet = tCReceberParcHist2
    Left = 328
    Top = 200
  end
  object tMovimentos2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbMovimentos.DB'
    Left = 472
    Top = 248
    object tMovimentos2CodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object tMovimentos2NumMovimento: TAutoIncField
      FieldName = 'NumMovimento'
      ReadOnly = True
    end
    object tMovimentos2Filial: TIntegerField
      FieldName = 'Filial'
    end
  end
  object qVale: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT SUM( VlrTotal ) VlrTotal'
      'FROM "dbVale.DB" Dbvale'
      'WHERE   (Faturado = FALSE)  '
      '   AND  (GeraCobranca = FALSE)  ')
    Left = 304
    Top = 48
    object qValeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbVale.DB".VlrTotal'
    end
  end
  object qFabrica: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, EndLogo'
      'FROM "dbCliente.DB" Dbcliente'
      'WHERE  Fabrica = TRUE '
      'ORDER BY Nome')
    Left = 528
    Top = 32
    object qFabricaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCliente.DB".Codigo'
    end
    object qFabricaNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 60
    end
    object qFabricaEndLogo: TStringField
      FieldName = 'EndLogo'
      Origin = 'TABELAS."dbCliente.DB".EndLogo'
      Size = 200
    end
  end
  object qRepresentada: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome, EndLogo'
      'FROM "dbCliente.DB" Dbcliente'
      'WHERE  Representada = TRUE '
      'ORDER BY Nome')
    Left = 528
    Top = 104
    object qRepresentadaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCliente.DB".Codigo'
    end
    object qRepresentadaNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 60
    end
    object qRepresentadaEndLogo: TStringField
      FieldName = 'EndLogo'
      Origin = 'TABELAS."dbCliente.DB".EndLogo'
      Size = 200
    end
  end
  object dsqFabrica: TDataSource
    DataSet = qFabrica
    Left = 560
    Top = 32
  end
  object dsqRepresentada: TDataSource
    DataSet = qRepresentada
    Left = 568
    Top = 104
  end
  object qIncBarra: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT MAX(CODSEQ) CodSeq'
      'FROM dbCBarra'
      'WHERE CodPrincipal = :CodPrincipal')
    Left = 178
    Top = 51
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodPrincipal'
        ParamType = ptUnknown
      end>
    object qIncBarraCodSeq: TIntegerField
      FieldName = 'CodSeq'
      Origin = 'TABELAS."dbCBarra.DB".CodSeq'
    end
  end
end
