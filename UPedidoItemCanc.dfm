object fPedidoItemCanc: TfPedidoItemCanc
  Left = 11
  Top = 79
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancelamento do item do pedido'
  ClientHeight = 463
  ClientWidth = 780
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
  object RxLabel9: TRxLabel
    Left = 73
    Top = 216
    Width = 45
    Height = 13
    Caption = 'Motivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 0
    Top = 267
    Width = 763
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object BitBtn5: TBitBtn
    Left = 119
    Top = 236
    Width = 90
    Height = 26
    Hint = 'Confirma a altera'#231#227'o ou inclus'#227'o de Pedido'
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn5Click
    Glyph.Data = {
      CE070000424DCE07000000000000360000002800000024000000120000000100
      18000000000098070000CE0E0000D80E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080FFFFFF008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8080000080000000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080808080808080FFFFFF
      FFFFFF0080800080800080800080800080800080800080800080800080800080
      8000808000808000808080000000800000800080000000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
      8000808000808000808000808000808000808080000000800000800000800000
      8000800000008080008080008080008080008080008080008080008080008080
      008080008080008080808080808080808080808080808080808080FFFFFFFFFF
      FF00808000808000808000808000808000808000808000808000808080000000
      8000008000008000008000008000008000800000008080008080008080008080
      0080800080800080800080800080800080808080808080808080808080808080
      80808080808080808080808080FFFFFF00808000808000808000808000808000
      808000808080000000800000800000800000FF00008000008000008000008000
      8000000080800080800080800080800080800080800080800080808080808080
      80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
      808000808000808000808000808000808000800000800000800000FF00008080
      00FF000080000080000080008000000080800080800080800080800080800080
      80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
      8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
      00800000FF0000808000808000808000FF000080000080000080008000000080
      80008080008080008080008080008080008080808080808080FFFFFF00808000
      8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
      00808000808000808000808000FF0000808000808000808000808000808000FF
      0000800000800000800080000000808000808000808000808000808000808000
      8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
      808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
      8000808000808000808000808000FF0000800000800000800080000000808000
      8080008080008080008080008080008080008080008080008080008080008080
      008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
      8000808000808000808000808000808000808000808000808000808000FF0000
      8000008000008000800000008080008080008080008080008080008080008080
      008080008080008080008080008080008080FFFFFF8080808080808080808080
      80FFFFFF00808000808000808000808000808000808000808000808000808000
      808000808000808000808000FF00008000008000008000800000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
      808000808000808000808000808000808000808000808000808000FF00008000
      0080000080008000000080800080800080800080800080800080800080800080
      80008080008080008080008080008080FFFFFF808080808080808080808080FF
      FFFF008080008080008080008080008080008080008080008080008080008080
      00808000808000808000FF000080000080008000000080800080800080800080
      80008080008080008080008080008080008080008080008080008080008080FF
      FFFF808080808080808080008080008080008080008080008080008080008080
      00808000808000808000808000808000808000808000808000FF000080000080
      0000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080FFFFFF808080808080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000FF0000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080FFFFFF
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      008080008080008080008080008080008080}
    NumGlyphs = 2
  end
  object BitBtn6: TBitBtn
    Left = 673
    Top = 237
    Width = 90
    Height = 26
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
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 279
    Width = 780
    Height = 167
    TabStop = False
    Align = alBottom
    Color = clInfoBk
    DataSource = DM1.dsPedidoCanc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Cancelamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Motivo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 532
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Usuario'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Usu'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HrUsuario'
        Title.Alignment = taCenter
        Title.Caption = 'Hr. Usu'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumLote'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lote'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 120
    Top = 210
    Width = 641
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 446
    Width = 780
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique na tabela de cancelados para consultar os tamanhos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 208
    Align = alTop
    TabOrder = 5
    object RxLabel1: TRxLabel
      Left = 1
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
      Width = 69
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 401
      Top = 9
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
    object Bevel1: TBevel
      Left = -1
      Top = 26
      Width = 764
      Height = 2
      Shape = bsBottomLine
      Style = bsRaised
    end
    object RxLabel4: TRxLabel
      Left = 1
      Top = 38
      Width = 70
      Height = 13
      Caption = 'Qtd.Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 145
      Top = 38
      Width = 81
      Height = 13
      Caption = 'Qtd.Faturado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 308
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Qtd.Cancelado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 531
      Top = 36
      Width = 97
      Height = 16
      Caption = 'Qtd.Restante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = -1
      Top = 54
      Width = 764
      Height = 2
      Shape = bsBottomLine
      Style = bsRaised
    end
    object RxLabel8: TRxLabel
      Left = 9
      Top = 69
      Width = 111
      Height = 13
      Caption = 'Qtd.Para Cancelar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 33
      Top = 1
      Width = 72
      Height = 21
      Color = clInfoBk
      DataField = 'Item'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 190
      Top = 1
      Width = 200
      Height = 21
      Color = clInfoBk
      DataField = 'lkReferencia'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 459
      Top = 1
      Width = 83
      Height = 21
      Color = clInfoBk
      DataField = 'Tamanho'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 70
      Top = 30
      Width = 72
      Height = 21
      Color = clInfoBk
      DataField = 'QtdPares'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 225
      Top = 30
      Width = 72
      Height = 21
      Color = clInfoBk
      DataField = 'QtdParesFat'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 399
      Top = 30
      Width = 72
      Height = 21
      Color = clInfoBk
      DataField = 'QtdParesCanc'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 631
      Top = 30
      Width = 114
      Height = 24
      Color = clAqua
      DataField = 'QtdParesRest'
      DataSource = DM1.dsPedidoItem
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 120
      Top = 61
      Width = 104
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0'
      TabOrder = 7
    end
    object VDBGrid1: TVDBGrid
      Left = 2
      Top = 84
      Width = 759
      Height = 118
      DataSource = dsmTamanho
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Vertical = True
      TitlesWidth = 85
      Columns = <
        item
          Alignment = taCenter
          Color = clGray
          FieldName = 'Tamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Color = clGray
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end
        item
          Color = clInfoBk
          FieldName = 'Qtd'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
        end
        item
          Color = clInfoBk
          FieldName = 'QtdRestante'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Restante'
        end
        item
          Color = clInfoBk
          FieldName = 'QtdParesCanc'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Cancelada'
        end
        item
          FieldName = 'QtdACancelar'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. A Cancelar'
        end>
    end
  end
  object mTamanho: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodGrade'
        DataType = ftInteger
      end
      item
        Name = 'Posicao'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdACancelar'
        DataType = ftFloat
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'QtdParesCanc'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CodGrade;Posicao'
    Params = <>
    StoreDefs = True
    Left = 440
    Top = 61
    Data = {
      A10000009619E0BD010000001800000007000000000003000000A10008436F64
      4772616465040001000000000007506F736963616F0400010000000000035174
      6408000400000000000B51746452657374616E746508000400000000000C5174
      644143616E63656C617208000400000000000754616D616E686F010049000000
      01000557494454480200020006000C517464506172657343616E630800040000
      0000000000}
    object mTamanhoCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mTamanhoPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object mTamanhoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mTamanhoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mTamanhoQtdACancelar: TFloatField
      FieldName = 'QtdACancelar'
    end
    object mTamanhoTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object mTamanhoQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
  end
  object dsmTamanho: TDataSource
    DataSet = mTamanho
    Left = 464
    Top = 61
  end
end
