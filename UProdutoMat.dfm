object fProdutoMat: TfProdutoMat
  Left = 207
  Top = 243
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Materiais / Embalagem'
  ClientHeight = 307
  ClientWidth = 639
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 76
    Top = 104
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cor:'
  end
  object Label4: TLabel
    Left = 52
    Top = 130
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Unidade:'
  end
  object Label5: TLabel
    Left = 24
    Top = 154
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo Consumo:'
  end
  object Label6: TLabel
    Left = 28
    Top = 177
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd.Consumo:'
  end
  object Label7: TLabel
    Left = 5
    Top = 226
    Width = 90
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr.Unit'#225'rio (Custo):'
    Visible = False
  end
  object Label9: TLabel
    Left = 30
    Top = 201
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Imp.no Tal'#227'o:'
  end
  object Label8: TLabel
    Left = 67
    Top = 59
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Setor:'
  end
  object Label10: TLabel
    Left = 54
    Top = 82
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Posi'#231#227'o:'
  end
  object SpeedButton11: TSpeedButton
    Left = 467
    Top = 76
    Width = 22
    Height = 21
    Hint = 'Abre cadastro de Posi'#231#227'o'
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
      000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
      00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
      8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
      8888880BB088888888888800008888888888}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton11Click
  end
  object Label11: TLabel
    Left = 73
    Top = 248
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs:'
  end
  object Label13: TLabel
    Left = 335
    Top = 176
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label14: TLabel
    Left = 307
    Top = 199
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd. Pe'#231'a:'
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 97
    Top = 98
    Width = 224
    Height = 21
    DropDownCount = 8
    DropDownWidth = 350
    Ctl3D = False
    ListStyle = lsDelimited
    LookupField = 'Codigo'
    LookupDisplay = 'Nome;Pantone'
    LookupSource = dsQuery1
    ParentCtl3D = False
    TabOrder = 3
  end
  object RxDBLookupCombo10: TRxDBLookupCombo
    Left = 97
    Top = 122
    Width = 72
    Height = 21
    DropDownCount = 8
    DropDownWidth = 350
    Ctl3D = False
    ListStyle = lsDelimited
    LookupField = 'Unidade'
    LookupDisplay = 'Unidade'
    LookupSource = DM1.dsUnidade
    ParentCtl3D = False
    TabOrder = 4
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 97
    Top = 169
    Width = 104
    Height = 21
    AutoSize = False
    Ctl3D = False
    DecimalPlaces = 7
    DisplayFormat = '0.0000000'
    ParentCtl3D = False
    TabOrder = 6
    OnEnter = CurrencyEdit1Enter
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 97
    Top = 217
    Width = 104
    Height = 21
    AutoSize = False
    Ctl3D = False
    DecimalPlaces = 3
    DisplayFormat = '0.000'
    ParentCtl3D = False
    TabOrder = 8
    Visible = False
  end
  object BitBtn10: TBitBtn
    Left = 143
    Top = 274
    Width = 121
    Height = 29
    Hint = 'Confirma o material'
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnClick = BitBtn10Click
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
  object BitBtn11: TBitBtn
    Left = 264
    Top = 274
    Width = 121
    Height = 29
    Hint = 'Cancela o material selecionado'
    Caption = 'Cancelar/Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = BitBtn11Click
    Glyph.Data = {
      EE020000424DEE02000000000000420000002800000012000000130000000100
      100003000000AC02000000000000000000000000000000000000007C0000E003
      00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E007CF75E007CF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75E007CF75EF75E007C007CF75EF75EEE39EE39EE39EE39
      EE39EE39EE39EE39EE39EE39007CF75EF75EF75E007C007C007C000000000000
      0000000000000000000000000000007C007CF75EF75EF75EF75E007C007C0000
      E07FFF7FFF7FFF7FE07FFF7FFF7FFF7F007C007CF75EF75EF75EF75EF75EF75E
      007C007CFF7F1F001F001F001F001F001F00FF7F007CEE39F75EF75EF75EF75E
      F75EF75E007C007C007CFF7FE07FFF7FFF7FFF7FE07F007C007CEE39F75EF75E
      F75EF75EF75EF75EF75E007C007C007C1F001F001F00007C007C007C0000EE39
      F75EF75EF75EF75EF75EF75EF75E0000007C007C007CFF7FE07F007C007CFF7F
      0000EE39F75EF75EF75EF75EF75EF75EF75E0000FF7F1F00007C007C007C007C
      1F00FF7F0000EE39F75EF75EF75EF75EF75EF75EF75E0000FF7FFF7F007C007C
      007C007CE07FFF7F0000EE39F75EF75EF75EF75EF75EF75EF75E0000FF7F1F00
      007C007C007C007C000000000000EE39F75EF75EF75EF75EF75EF75EF75E0000
      E07F007C007CFF7F0000007C007CFF7F0000EE39F75EF75EF75EF75EF75EF75E
      F75E0000007C007C007CFF7F0000007C007C007C007CF75EF75EF75EF75EF75E
      F75EF75E007C007C007CFF7FE07FFF7F0000FF7F0000F75E007C007CF75EF75E
      F75EF75E007C007C007C007C000000000000000000000000F75EF75EF75E007C
      007CF75EF75EF75E007C007C007CF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75E007CF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E007CF75EF75EF75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75EF75E}
  end
  object ComboBox1: TComboBox
    Left = 97
    Top = 146
    Width = 104
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 0
    ParentCtl3D = False
    TabOrder = 5
    Text = 'Geral'
    Items.Strings = (
      'Geral'
      'Tamanho')
  end
  object ComboBox2: TComboBox
    Left = 97
    Top = 193
    Width = 104
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 0
    ParentCtl3D = False
    TabOrder = 7
    Text = 'Sim'
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 59
      Top = 15
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 55
      Top = 36
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Material:'
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 97
      Top = 6
      Width = 57
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CurrencyEdit4Exit
    end
    object BitBtn1: TBitBtn
      Left = 158
      Top = 4
      Width = 145
      Height = 23
      Caption = '(F2) Pesquisa Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn1Click
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 97
      Top = 31
      Width = 369
      Height = 21
      Ctl3D = True
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dsProdutoM
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = RzDBLookupComboBox1Enter
    end
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 97
    Top = 52
    Width = 368
    Height = 21
    DropDownCount = 8
    DropDownWidth = 300
    Ctl3D = False
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsSetor
    ParentCtl3D = False
    TabOrder = 1
    OnEnter = RxDBLookupCombo2Enter
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 97
    Top = 75
    Width = 368
    Height = 21
    DropDownCount = 8
    DropDownWidth = 300
    Ctl3D = False
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM2.dsqPosicao
    ParentCtl3D = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 97
    Top = 240
    Width = 536
    Height = 19
    Ctl3D = False
    MaxLength = 50
    ParentCtl3D = False
    TabOrder = 11
  end
  object ComboBox4: TComboBox
    Left = 361
    Top = 168
    Width = 104
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 0
    ParentCtl3D = False
    TabOrder = 9
    Text = 'Materia Prima'
    Items.Strings = (
      'Materia Prima'
      'Embalagem')
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 361
    Top = 190
    Width = 104
    Height = 21
    AutoSize = False
    Color = clInfoBk
    Ctl3D = False
    DecimalPlaces = 3
    DisplayFormat = '0.000'
    ParentCtl3D = False
    TabOrder = 10
  end
  object tProdutoM: TTable
    DatabaseName = 'Tabelas'
    Filter = '(ProdMat = '#39'M'#39') and (MaterialOutros = '#39'M'#39') and (Inativo = False)'
    Filtered = True
    TableName = 'dbProduto.DB'
    Left = 394
    Top = 96
    object tProdutoMCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tProdutoMCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object tProdutoMCodSubGrupo: TIntegerField
      FieldName = 'CodSubGrupo'
    end
    object tProdutoMReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tProdutoMNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tProdutoMUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tProdutoMCodClasFiscal: TStringField
      FieldName = 'CodClasFiscal'
      Size = 12
    end
    object tProdutoMCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tProdutoMLancaGrade: TBooleanField
      FieldName = 'LancaGrade'
    end
    object tProdutoMCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoMQParTalao: TFloatField
      FieldName = 'QParTalao'
    end
    object tProdutoMPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tProdutoMPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tProdutoMInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object tProdutoMAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object tProdutoMAliqIPI: TFloatField
      FieldName = 'AliqIPI'
    end
    object tProdutoMNomeExp: TStringField
      FieldName = 'NomeExp'
      Size = 45
    end
    object tProdutoMDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 30
    end
    object tProdutoMReferencia2: TStringField
      FieldName = 'Referencia2'
    end
    object tProdutoMVlrAtelier: TFloatField
      FieldName = 'VlrAtelier'
    end
    object tProdutoMNomeModelo: TStringField
      FieldName = 'NomeModelo'
    end
    object tProdutoMFotoJpeg: TBlobField
      FieldName = 'FotoJpeg'
      BlobType = ftParadoxOle
      Size = 1
    end
    object tProdutoMObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object tProdutoMEndEtiq: TStringField
      FieldName = 'EndEtiq'
      Size = 60
    end
    object tProdutoMLancaCor: TBooleanField
      FieldName = 'LancaCor'
    end
    object tProdutoMPrecoGrade: TBooleanField
      FieldName = 'PrecoGrade'
    end
    object tProdutoMVlrVenda: TFloatField
      FieldName = 'VlrVenda'
    end
    object tProdutoMProdMat: TStringField
      FieldName = 'ProdMat'
      Size = 1
    end
    object tProdutoMPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object tProdutoMPosseMat: TStringField
      FieldName = 'PosseMat'
      Size = 1
    end
    object tProdutoMEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tProdutoMDtAlteracao: TDateField
      FieldName = 'DtAlteracao'
    end
    object tProdutoMMaterialOutros: TStringField
      FieldName = 'MaterialOutros'
      Size = 1
    end
    object tProdutoMPrecoCor: TBooleanField
      FieldName = 'PrecoCor'
    end
    object tProdutoMCodFornecedor: TIntegerField
      FieldName = 'CodFornecedor'
    end
    object tProdutoMEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object tProdutoMFichaTecnicaConsPorTam: TBooleanField
      FieldName = 'FichaTecnicaConsPorTam'
    end
  end
  object dsProdutoM: TDataSource
    DataSet = tProdutoM
    Left = 418
    Top = 96
  end
  object tProdutoTamM: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodProduto'
    MasterFields = 'Codigo'
    MasterSource = dsProdutoM
    TableName = 'dbProdutoTam.DB'
    Left = 394
    Top = 179
    object tProdutoTamMCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tProdutoTamMCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tProdutoTamMPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tProdutoTamMTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tProdutoTamMQtdMinima: TFloatField
      FieldName = 'QtdMinima'
    end
    object tProdutoTamMQtdMaxima: TFloatField
      FieldName = 'QtdMaxima'
    end
    object tProdutoTamMPesoL: TFloatField
      FieldName = 'PesoL'
    end
    object tProdutoTamMPesoB: TFloatField
      FieldName = 'PesoB'
    end
    object tProdutoTamMPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
  end
  object Query1: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Nome, dbCor.Codigo, dbCor.Pantone'
      'FROM dbCor, dbProdutoCor'
      'WHERE dbCor.Codigo = CodCor'
      'ORDER BY Nome')
    Left = 393
    Top = 211
    object Query1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCor.DB".Nome'
      Size = 25
    end
    object Query1Codigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCor.DB".Codigo'
    end
    object Query1Pantone: TStringField
      FieldName = 'Pantone'
      Origin = 'TABELAS."dbCor.DB".Pantone'
      Size = 15
    end
  end
  object dsQuery1: TDataSource
    DataSet = Query1
    Left = 411
    Top = 209
  end
  object qProximoItem: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Max(Item) Item'
      'FROM "dbProdutoMat.DB" Dbprodutomat'
      'WHERE CodProduto = :CodProduto'
      '      AND CodCorProd = :CodCorProd'
      '      AND CodCombinacao = :CodCombinacao'
      '      AND CodSetor = :CodSetor'
      ''
      '')
    Left = 264
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCorProd'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCombinacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodSetor'
        ParamType = ptUnknown
      end>
    object qProximoItemItem: TIntegerField
      FieldName = 'Item'
      Origin = 'TABELAS."dbProdutoMat.DB".Item'
    end
  end
end
