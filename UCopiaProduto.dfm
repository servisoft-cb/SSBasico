object fCopiaProduto: TfCopiaProduto
  Left = 187
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copia produto'
  ClientHeight = 187
  ClientWidth = 495
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
  object Label27: TLabel
    Left = 55
    Top = 21
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object RxDBLookupCombo10: TRxDBLookupCombo
    Left = 112
    Top = 13
    Width = 361
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Referencia;DescMaterial;Codigo'
    LookupSource = dsProduto2
    TabOrder = 0
    OnEnter = RxDBLookupCombo10Enter
  end
  object BitBtn16: TBitBtn
    Left = 164
    Top = 67
    Width = 101
    Height = 25
    Hint = 'Executa a c'#243'pia cfe. sele'#231#227'o ao lado'
    Caption = 'Copia'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn16Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
      007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
      7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
      99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object BitBtn6: TBitBtn
    Left = 265
    Top = 67
    Width = 101
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
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
  object tProduto2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Codigo'
    TableName = 'dbProduto.DB'
    Left = 16
    Top = 136
    object tProduto2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProduto2CodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tProduto2CodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tProduto2Nome: TStringField
      FieldName = 'Nome'
      Size = 65
    end
    object tProduto2Unidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProduto2CodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tProduto2CodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tProduto2LancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tProduto2CodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProduto2QParTalao: TFloatField
      FieldName = 'QParTalao'
    end
    object tProduto2PesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tProduto2PesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProduto2Inativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProduto2AliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tProduto2AliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tProduto2NomeExp: TStringField
      FieldName = 'NomeExp'
      Size = 45
    end
    object tProduto2VlrAtelier: TFloatField
      FieldName = 'VlrAtelier'
    end
    object tProduto2NomeModelo: TStringField
      FieldName = 'NomeModelo'
    end
    object tProduto2FotoJpeg: TBlobField
      FieldName = 'FotoJpeg'
      BlobType = ftParadoxOle
      Size = 1
    end
    object tProduto2Obs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tProduto2Referencia: TStringField
      FieldName = 'Referencia'
    end
    object tProduto2EndEtiq: TStringField
      FieldName = 'EndEtiq'
      Size = 150
    end
    object tProduto2Referencia2: TStringField
      FieldName = 'Referencia2'
    end
    object tProduto2LancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
    object tProduto2PrecoGrade: TBooleanField
      FieldName = 'PrecoGrade'
    end
    object tProduto2VlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tProduto2ProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object tProduto2PrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object tProduto2PosseMat: TStringField
      FieldName = 'PosseMat'
      Size = 1
    end
    object tProduto2Estoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tProduto2DtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object tProduto2MaterialOutros: TStringField
      FieldName = 'MaterialOutros'
      Size = 1
    end
    object tProduto2PrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object tProduto2CodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object tProduto2EstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tProduto2EstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object tProduto2PercComissaoVend: TFloatField
      FieldName = 'PercComissaoVend'
    end
    object tProduto2ImpTabPreco: TBooleanField
      FieldName = 'ImpTabPreco'
    end
    object tProduto2Usuario: TStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tProduto2DtCad: TDateField
      FieldName = 'DtCad'
    end
    object tProduto2HrCad: TTimeField
      FieldName = 'HrCad'
    end
    object tProduto2CA: TStringField
      FieldName = 'CA'
    end
    object tProduto2VincularProduto: TBooleanField
      FieldName = 'VincularProduto'
    end
    object tProduto2CodProdutoEst: TIntegerField
      FieldName = 'CodProdutoEst'
    end
    object tProduto2PercQuebraTaloes: TFloatField
      FieldName = 'PercQuebraTaloes'
    end
    object tProduto2PercComissaoVend2: TFloatField
      FieldName = 'PercComissaoVend2'
    end
    object tProduto2FichaTecnicaConsPorTam: TBooleanField
      FieldName = 'FichaTecnicaConsPorTam'
    end
    object tProduto2JuntarLarguraEDI: TBooleanField
      FieldName = 'JuntarLarguraEDI'
    end
    object tProduto2ImpMatTalao: TBooleanField
      FieldName = 'ImpMatTalao'
    end
    object tProduto2Complemento: TStringField
      FieldName = 'Complemento'
      Size = 200
    end
    object tProduto2CodTipoProduto: TIntegerField
      FieldName = 'CodTipoProduto'
    end
    object tProduto2CodTipoMaterial: TIntegerField
      FieldName = 'CodTipoMaterial'
    end
    object tProduto2DescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 50
    end
    object tProduto2OrigemProd: TStringField
      FieldName = 'OrigemProd'
      Size = 1
    end
    object tProduto2QtdVolume: TIntegerField
      FieldName = 'QtdVolume'
    end
    object tProduto2CodProcesso: TIntegerField
      FieldName = 'CodProcesso'
    end
    object tProduto2CodCSTIPI: TStringField
      FieldName = 'CodCSTIPI'
      Size = 2
    end
    object tProduto2TamCalculo: TFloatField
      FieldName = 'TamCalculo'
    end
    object tProduto2LocalCorredor: TStringField
      FieldName = 'LocalCorredor'
      Size = 10
    end
    object tProduto2LocalPosicao: TStringField
      FieldName = 'LocalPosicao'
      Size = 25
    end
    object tProduto2CodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tProduto2CodSitCF: TStringField
      FieldName = 'CodSitCF'
      Size = 5
    end
    object tProduto2CodRepresentada: TIntegerField
      FieldName = 'CodRepresentada'
    end
    object tProduto2CodFabrica: TIntegerField
      FieldName = 'CodFabrica'
    end
    object tProduto2RefCliente: TStringField
      FieldName = 'RefCliente'
      Size = 25
    end
    object tProduto2CarimboSola: TStringField
      FieldName = 'CarimboSola'
      Size = 50
    end
    object tProduto2CarimboPalmilha: TStringField
      FieldName = 'CarimboPalmilha'
      Size = 50
    end
    object tProduto2Ficha: TStringField
      FieldName = 'Ficha'
      Size = 30
    end
    object tProduto2Construcao: TStringField
      FieldName = 'Construcao'
      Size = 30
    end
    object tProduto2Forma: TStringField
      FieldName = 'Forma'
      Size = 30
    end
    object tProduto2TipoCodColecao: TIntegerField
      FieldName = 'TipoCodColecao'
    end
    object tProduto2TipoCodProdutoForn: TIntegerField
      FieldName = 'TipoCodProdutoForn'
    end
    object tProduto2TipoCodProduto: TIntegerField
      FieldName = 'TipoCodProduto'
    end
    object tProduto2TipoCodMaterial: TIntegerField
      FieldName = 'TipoCodMaterial'
    end
    object tProduto2TipoCodCor: TIntegerField
      FieldName = 'TipoCodCor'
    end
    object tProduto2EndArquivoCNC: TStringField
      FieldName = 'EndArquivoCNC'
      Size = 250
    end
  end
  object dsProduto2: TDataSource
    DataSet = tProduto2
    Left = 32
    Top = 136
  end
  object tProdutoCor2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCor'
    MasterFields = 'Codigo'
    MasterSource = dsProduto2
    TableName = 'dbProdutoCor.DB'
    Left = 80
    Top = 136
    object tProdutoCor2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoCor2CodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoCor2PrCusto: TFloatField
      FieldName = 'PrCusto'
    end
    object tProdutoCor2CodPigmento: TStringField
      FieldName = 'CodPigmento'
      Size = 10
    end
    object tProdutoCor2VlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tProdutoCor2Inativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProdutoCor2EstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tProdutoCor2EstMaximo: TFloatField
      FieldName = 'EstMaximo'
    end
    object tProdutoCor2DtAlteracaoPrCusto: TDateField
      FieldName = 'DtAlteracaoPrCusto'
    end
  end
  object tProdutoMat2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProd;CodCombinacao;CodSetor;Item'
    MasterFields = 'CodProduto;CodCor;CodCombinacao'
    MasterSource = dsProdutoComb2
    TableName = 'dbProdutoMat.DB'
    Left = 239
    Top = 136
    object tProdutoMat2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoMat2CodCorProd: TIntegerField
      FieldName = 'CodCorProd'
    end
    object tProdutoMat2Item: TIntegerField
      FieldName = 'Item'
    end
    object tProdutoMat2CodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object tProdutoMat2CodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoMat2CodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoMat2Qtd: TFloatField
      FieldName = 'Qtd'
    end
    object tProdutoMat2VlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tProdutoMat2VlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tProdutoMat2ImpTalao: TStringField
      FieldName = 'ImpTalao'
      Size = 1
    end
    object tProdutoMat2Unidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoMat2Consumo: TStringField
      FieldName = 'Consumo'
      Size = 1
    end
    object tProdutoMat2CodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object tProdutoMat2CodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object tProdutoMat2CodPosicao: TIntegerField
      FieldName = 'CodPosicao'
    end
    object tProdutoMat2Obs: TStringField
      FieldName = 'Obs'
      Size = 50
    end
    object tProdutoMat2Tipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object tProdutoMat2QtdPecaProd: TFloatField
      FieldName = 'QtdPecaProd'
    end
  end
  object dsProdutoCor2: TDataSource
    DataSet = tProdutoCor2
    Left = 103
    Top = 136
  end
  object dsProdutoMat2: TDataSource
    DataSet = tProdutoMat2
    Left = 262
    Top = 136
  end
  object tProdutoComb2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCor;CodCombinacao'
    MasterFields = 'Codigo'
    MasterSource = dsProduto2
    TableName = 'DBPRODUTOCOMB.DB'
    Left = 160
    Top = 136
    object tProdutoComb2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoComb2CodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tProdutoComb2CodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object tProdutoComb2Nome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dsProdutoComb2: TDataSource
    DataSet = tProdutoComb2
    Left = 176
    Top = 136
  end
  object tProdutoConsumo2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade'
    MasterFields = 'CodProduto;CodCorProd;Item'
    MasterSource = dsProdutoMat2
    TableName = 'dbProdutoConsumo.db'
    Left = 320
    Top = 128
    object tProdutoConsumo2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumo2CodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumo2ItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumo2CodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumo2Consumo: TFloatField
      FieldName = 'Consumo'
    end
  end
  object tProdutoConsumoItem2: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade;Posicao'
    MasterFields = 'CodProduto;CodCorProduto;ItemMaterial;CodGrade'
    MasterSource = dsProdutoConsumo2
    TableName = 'dbProdutoConsumoItem.db'
    Left = 384
    Top = 128
    object tProdutoConsumoItem2CodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoConsumoItem2CodCorProduto: TIntegerField
      FieldName = 'CodCorProduto'
    end
    object tProdutoConsumoItem2ItemMaterial: TIntegerField
      FieldName = 'ItemMaterial'
    end
    object tProdutoConsumoItem2CodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoConsumoItem2Posicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoConsumoItem2Consumo: TFloatField
      FieldName = 'Consumo'
    end
    object tProdutoConsumoItem2TamanhoMat: TStringField
      FieldName = 'TamanhoMat'
      Size = 6
    end
  end
  object dsProdutoConsumo2: TDataSource
    DataSet = tProdutoConsumo2
    Left = 336
    Top = 128
  end
end
