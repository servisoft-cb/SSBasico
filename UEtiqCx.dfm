object fEtiqCx: TfEtiqCx
  Left = 285
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas para caixas individuais'
  ClientHeight = 108
  ClientWidth = 407
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 67
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object Label6: TLabel
      Left = 155
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Item:'
    end
    object Label7: TLabel
      Left = 253
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Tamanho:'
    end
    object Edit1: TEdit
      Left = 304
      Top = 8
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 45
      Top = 7
      Width = 89
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 180
      Top = 7
      Width = 57
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 48
      Top = 40
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Normal = 13 digitos'
      Items.Strings = (
        'Normal = 13 digitos'
        '12 digitos com check'
        'Module 2')
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 67
    Width = 407
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 113
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
      Left = 203
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
  object dsmEtiqueta: TDataSource
    DataSet = mEtiqueta
    Left = 224
    Top = 32
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
        Name = 'Material1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Material2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tamanho2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'EndFoto'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 192
    Top = 32
    Data = {
      130100009619E0BD01000000180000000900000000000300000013010A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      0100055749445448020002001400044E6F6D6501004900000001000557494454
      48020002001400094D6174657269616C31010049000000010005574944544802
      0002001E00094D6174657269616C320100490000000100055749445448020002
      001E000754616D616E686F0100490000000100055749445448020002000A0008
      54616D616E686F320100490000000100055749445448020002000A0008436F64
      42617272610100490000000100055749445448020002000E0007456E64466F74
      6F010049000000010005574944544802000200FA000000}
    object mEtiquetaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEtiquetaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEtiquetaNome: TStringField
      FieldName = 'Nome'
    end
    object mEtiquetaMaterial1: TStringField
      FieldName = 'Material1'
      Size = 30
    end
    object mEtiquetaMaterial2: TStringField
      FieldName = 'Material2'
      Size = 30
    end
    object mEtiquetaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mEtiquetaTamanho2: TStringField
      FieldName = 'Tamanho2'
      Size = 10
    end
    object mEtiquetaCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 14
    end
    object mEtiquetaEndFoto: TStringField
      FieldName = 'EndFoto'
      Size = 250
    end
  end
end
