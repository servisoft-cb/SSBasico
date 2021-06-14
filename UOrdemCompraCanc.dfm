object fOrdemCompraCanc: TfOrdemCompraCanc
  Left = 4
  Top = 19
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancelamento da Ordem de Compra'
  ClientHeight = 536
  ClientWidth = 783
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
  object RxLabel1: TRxLabel
    Left = 9
    Top = 9
    Width = 31
    Height = 13
    Caption = 'Item:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 121
    Top = 9
    Width = 72
    Height = 13
    Caption = 'Quantidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel3: TRxLabel
    Left = 275
    Top = 9
    Width = 82
    Height = 13
    Caption = 'Qtd.Entregue:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel4: TRxLabel
    Left = 432
    Top = 9
    Width = 85
    Height = 13
    Caption = 'Qtd.Pendente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel5: TRxLabel
    Left = 610
    Top = 9
    Width = 91
    Height = 13
    Caption = 'Qtd.Cancelada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 2
    Top = 24
    Width = 860
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object RxLabel6: TRxLabel
    Left = 9
    Top = 36
    Width = 52
    Height = 13
    Caption = 'Material:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel7: TRxLabel
    Left = 35
    Top = 57
    Width = 26
    Height = 13
    Caption = 'Cor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel8: TRxLabel
    Left = 27
    Top = 218
    Width = 111
    Height = 13
    Caption = 'Qtd.Para Cancelar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel9: TRxLabel
    Left = 93
    Top = 239
    Width = 45
    Height = 13
    Caption = 'Motivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel10: TRxLabel
    Left = 280
    Top = 218
    Width = 34
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 2
    Top = 256
    Width = 860
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = -76
    Top = 203
    Width = 860
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object RxLabel11: TRxLabel
    Left = 448
    Top = 218
    Width = 59
    Height = 13
    Caption = 'Tamanho:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 39
    Top = 1
    Width = 73
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'Item'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 1
    Width = 75
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'Qtd'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 356
    Top = 1
    Width = 75
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'QtdEntregue'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 516
    Top = 1
    Width = 90
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'QtdRestante'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit5: TDBEdit
    Left = 699
    Top = 1
    Width = 83
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'QtdCancelada'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit6: TDBEdit
    Left = 60
    Top = 28
    Width = 73
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'CodMaterial'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 12
  end
  object DBEdit7: TDBEdit
    Left = 136
    Top = 28
    Width = 495
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'lkNomeMaterial'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 13
  end
  object DBEdit8: TDBEdit
    Left = 60
    Top = 49
    Width = 268
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'lkNomeCor'
    DataSource = DM1.dsOrdemCompraItem
    ReadOnly = True
    TabOrder = 14
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 138
    Top = 210
    Width = 111
    Height = 21
    AutoSize = False
    Color = clAqua
    DecimalPlaces = 5
    DisplayFormat = '0.00000'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 138
    Top = 231
    Width = 653
    Height = 21
    CharCase = ecUpperCase
    Color = clAqua
    MaxLength = 70
    TabOrder = 3
  end
  object DateEdit1: TDateEdit
    Left = 314
    Top = 210
    Width = 113
    Height = 21
    Color = clAqua
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 271
    Width = 89
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 345
    Top = 271
    Width = 89
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 434
    Top = 271
    Width = 89
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 303
    Width = 783
    Height = 233
    TabStop = False
    Align = alBottom
    Color = clInfoBk
    DataSource = DM1.dsOrdemCompraCanc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemCanc'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Cancelada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkTamanho'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Motivo'
        Title.Alignment = taCenter
        Width = 532
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Usuario'
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Usu'#225'rio'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Hr.Usu'#225'rio'
        Visible = True
      end>
  end
  object BitBtn4: TBitBtn
    Left = 8
    Top = 271
    Width = 129
    Height = 25
    Caption = 'Excluir Cancelamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    TabStop = False
    OnClick = BitBtn4Click
  end
  object VDBGrid1: TVDBGrid
    Left = 3
    Top = 75
    Width = 776
    Height = 118
    Color = clInfoBk
    DataSource = fOrdemCompra.dsAuxOrdemCompra
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 17
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
        FieldName = 'lkTamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        Alignment = taCenter
        Color = clAqua
        FieldName = 'Qtd'
        Title.Alignment = taCenter
      end
      item
        FieldName = 'QtdEntregue'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Entr.'
      end
      item
        FieldName = 'QtdRestante'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Pend.'
      end
      item
        FieldName = 'QtdCancelada'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Canc.'
      end>
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 506
    Top = 211
    Width = 143
    Height = 21
    DropDownCount = 8
    Color = clAqua
    LookupField = 'Tamanho'
    LookupDisplay = 'Tamanho'
    LookupSource = dsqTamanho
    TabOrder = 2
  end
  object qTamanho: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbordemcompraitemgrade.Filial, Dbordemcompraitemgrade.Cod' +
        'Grade, Dbordemcompraitemgrade.Posicao, Dbordemcompraitemgrade.Co' +
        'digo, Dbordemcompraitemgrade.Item, Dbordemcompraitemgrade.Qtd, D' +
        'bordemcompraitemgrade.QtdRestante, Dbordemcompraitemgrade.QtdEnt' +
        'regue, Dbordemcompraitemgrade.QtdCancelada, Dbgradeitem.Tamanho'
      'FROM "dbOrdemCompraItemGrade.DB" Dbordemcompraitemgrade'
      '   INNER JOIN "dbGradeItem.DB" Dbgradeitem'
      
        '   ON  (Dbordemcompraitemgrade.CodGrade = Dbgradeitem.CodGrade) ' +
        ' '
      '   AND  (Dbordemcompraitemgrade.Posicao = Dbgradeitem.Posicao)  '
      'WHERE   (Dbordemcompraitemgrade.Filial = :Filial)  '
      '   AND  (Dbordemcompraitemgrade.Codigo = :Codigo)  '
      '   AND  (Dbordemcompraitemgrade.Item = :Item)  '
      'ORDER BY Dbgradeitem.Tamanho')
    Left = 672
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Item'
        ParamType = ptUnknown
      end>
    object qTamanhoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".Filial'
    end
    object qTamanhoCodGrade: TIntegerField
      FieldName = 'CodGrade'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".CodGrade'
    end
    object qTamanhoPosicao: TIntegerField
      FieldName = 'Posicao'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".Posicao'
    end
    object qTamanhoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".Codigo'
    end
    object qTamanhoItem: TIntegerField
      FieldName = 'Item'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".Item'
    end
    object qTamanhoQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".Qtd'
    end
    object qTamanhoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".QtdRestante'
    end
    object qTamanhoQtdEntregue: TFloatField
      FieldName = 'QtdEntregue'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".QtdEntregue'
    end
    object qTamanhoQtdCancelada: TFloatField
      FieldName = 'QtdCancelada'
      Origin = 'TABELAS."dbOrdemCompraItemGrade.DB".QtdCancelada'
    end
    object qTamanhoTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbGradeItem.DB".Tamanho'
      Size = 6
    end
  end
  object dsqTamanho: TDataSource
    DataSet = qTamanho
    Left = 696
    Top = 160
  end
end
