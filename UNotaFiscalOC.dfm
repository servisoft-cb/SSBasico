object fNotaFiscalOC: TfNotaFiscalOC
  Left = 94
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informa o n'#250'mero da Ordem de Compra e OS'
  ClientHeight = 129
  ClientWidth = 762
  Color = 10930928
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 0
    Top = 28
    Width = 41
    Height = 17
    Alignment = taCenter
    Color = 16776176
    DataField = 'Item'
    DataSource = DM1.dsNotaFiscalItens
    ParentColor = False
  end
  object DBText2: TDBText
    Left = 43
    Top = 28
    Width = 116
    Height = 17
    Alignment = taCenter
    Color = 16776176
    DataField = 'Referencia'
    DataSource = DM1.dsNotaFiscalItens
    ParentColor = False
  end
  object DBText3: TDBText
    Left = 160
    Top = 28
    Width = 197
    Height = 17
    Alignment = taCenter
    Color = 16776176
    DataField = 'lkNomeCor'
    DataSource = DM1.dsNotaFiscalItens
    ParentColor = False
  end
  object DBText4: TDBText
    Left = 43
    Top = 46
    Width = 359
    Height = 17
    Color = 16776176
    DataField = 'lkNomeProduto'
    DataSource = DM1.dsNotaFiscalItens
    ParentColor = False
  end
  object DBText5: TDBText
    Left = 43
    Top = 64
    Width = 182
    Height = 17
    Color = 16776176
    DataField = 'lkDescMaterial'
    DataSource = DM1.dsNotaFiscalItens
    ParentColor = False
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 8
    Width = 41
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Item'
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 43
    Top = 8
    Width = 116
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Refer'#234'ncia'
    TabOrder = 7
  end
  object StaticText3: TStaticText
    Left = 160
    Top = 8
    Width = 197
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Cor'
    TabOrder = 8
  end
  object StaticText4: TStaticText
    Left = 358
    Top = 8
    Width = 148
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'N'#186' da Ordem de Compra'
    TabOrder = 9
  end
  object DBEdit1: TDBEdit
    Left = 358
    Top = 26
    Width = 148
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NumOC'
    DataSource = DM1.dsNotaFiscalItens
    TabOrder = 0
  end
  object StaticText5: TStaticText
    Left = 507
    Top = 8
    Width = 192
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Remessa (N'#186' OS)'
    TabOrder = 10
  end
  object DBEdit2: TDBEdit
    Left = 507
    Top = 26
    Width = 192
    Height = 21
    DataField = 'NumOS'
    DataSource = DM1.dsNotaFiscalItens
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 646
    Top = 100
    Width = 114
    Height = 26
    Hint = 'Confirma'
    Caption = '&Confirmar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BitBtn2Click
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
  object StaticText6: TStaticText
    Left = 699
    Top = 8
    Width = 62
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'F'#225'brica'
    TabOrder = 11
  end
  object DBEdit3: TDBEdit
    Left = 699
    Top = 26
    Width = 62
    Height = 21
    DataField = 'Fabrica'
    DataSource = DM1.dsNotaFiscalItens
    TabOrder = 2
  end
  object StaticText7: TStaticText
    Left = 507
    Top = 48
    Width = 192
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'N'#186' Plano'
    TabOrder = 12
  end
  object DBEdit4: TDBEdit
    Left = 507
    Top = 66
    Width = 192
    Height = 21
    DataField = 'Plano'
    DataSource = DM1.dsNotaFiscalItens
    TabOrder = 4
  end
  object StaticText8: TStaticText
    Left = 412
    Top = 48
    Width = 94
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Item Pedido'
    TabOrder = 13
  end
  object DBEdit5: TDBEdit
    Left = 412
    Top = 66
    Width = 94
    Height = 21
    DataField = 'ItemPedido'
    DataSource = DM1.dsNotaFiscalItens
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 299
    Top = 65
    Width = 113
    Height = 25
    Caption = 'Busca Item Pedido'
    TabOrder = 14
    OnClick = BitBtn1Click
  end
  object qPedidoItem: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Dbpedidoitem.Item'
      'FROM dbPedido Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)  '
      'WHERE   (Dbpedido.PedidoCliente = :PedidoCliente)  '
      '   AND  (Dbpedidoitem.NumOS = :NumOS)  ')
    Left = 256
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'PedidoCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NumOS'
        ParamType = ptUnknown
      end>
    object qPedidoItemItem: TIntegerField
      FieldName = 'Item'
      Origin = 'TABELAS."dbPedidoItem.DB".Item'
    end
  end
end
