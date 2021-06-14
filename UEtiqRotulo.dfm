object fEtiqRotulo: TfEtiqRotulo
  Left = 73
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas Corrugados'
  ClientHeight = 450
  ClientWidth = 824
  Color = clBtnFace
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
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 824
    Height = 368
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 822
      Height = 366
      Align = alClient
      DataSource = dsmEtiqueta
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 12
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'CodProduto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PedidoCliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pedido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Material1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Material2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndFoto'
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 409
    Width = 824
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 297
      Top = 8
      Width = 90
      Height = 25
      Hint = 'Imprime a sele'#231#227'o acima'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        0E030000424D0E030000000000003600000028000000110000000E0000000100
        180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBF0000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
        BF00BFBFBF000000000000000000000000000000000000000000000000000000
        000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
        000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
        BF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
        BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000000000000000000000FFFFFF000000000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000BFBFBFBFBFBF00}
    end
    object BitBtn3: TBitBtn
      Left = 387
      Top = 8
      Width = 90
      Height = 25
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 20
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object Label6: TLabel
      Left = 155
      Top = 20
      Width = 23
      Height = 13
      Caption = 'Item:'
    end
    object Label1: TLabel
      Left = 568
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 45
      Top = 12
      Width = 89
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 180
      Top = 12
      Width = 57
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object DateEdit1: TDateEdit
      Left = 597
      Top = 8
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 432
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Fortes'
      Checked = True
      State = cbChecked
      TabOrder = 4
      Visible = False
    end
  end
  object dsmEtiqueta: TDataSource
    DataSet = mEtiqueta
    Left = 584
    Top = 120
  end
  object mEtiqueta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Material1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Material2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'EndFoto'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 552
    Top = 120
    Data = {
      140100009619E0BD01000000180000000B00000000000300000014010A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      0100055749445448020002001400044E6F6D6501004900000001000557494454
      4802000200140004446174610400060000000000035174640400010000000000
      0D50656469646F436C69656E7465010049000000010005574944544802000200
      14000650656469646F0400010000000000044974656D0400010000000000094D
      6174657269616C310100490000000100055749445448020002003C00094D6174
      657269616C320100490000000100055749445448020002003C0007456E64466F
      746F010049000000010005574944544802000200C8000000}
    object mEtiquetaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEtiquetaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEtiquetaNome: TStringField
      FieldName = 'Nome'
    end
    object mEtiquetaData: TDateField
      FieldName = 'Data'
    end
    object mEtiquetaQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mEtiquetaPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object mEtiquetaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mEtiquetaItem: TIntegerField
      FieldName = 'Item'
    end
    object mEtiquetaMaterial1: TStringField
      FieldName = 'Material1'
      Size = 60
    end
    object mEtiquetaMaterial2: TStringField
      FieldName = 'Material2'
      Size = 60
    end
    object mEtiquetaEndFoto: TStringField
      FieldName = 'EndFoto'
      Size = 200
    end
  end
end
