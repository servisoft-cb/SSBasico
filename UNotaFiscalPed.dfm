object fNotaFiscalPed: TfNotaFiscalPed
  Left = 5
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedidos agrupados no item'
  ClientHeight = 314
  ClientWidth = 787
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
  object RxDBGrid1: TRxDBGrid
    Left = 1
    Top = 2
    Width = 784
    Height = 209
    Color = clInfoBk
    DataSource = DM1.dsNotaFiscalPed
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemNota'
        Title.Alignment = taCenter
        Title.Caption = 'Item da Nota'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkPedidoCliente'
        Title.Alignment = taCenter
        Title.Caption = 'O.Compra'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumTalao'
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ItemPedido'
        Title.Caption = 'Item Pedido'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Ped.Interno'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkNumOS'
        Title.Alignment = taCenter
        Title.Caption = 'Remessa (OS)'
        Width = 171
        Visible = True
      end>
  end
  object VDBGrid1: TVDBGrid
    Left = 1
    Top = 222
    Width = 771
    Height = 58
    Color = clInfoBk
    DataSource = DM1.dsNotaFiscalPedGrade
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    TitlesWidth = 50
    OnCellClick = VDBGrid1CellClick
    OnColEnter = VDBGrid1ColEnter
    OnEnter = VDBGrid1Enter
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'lkTamanho'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
      end
      item
        Alignment = taCenter
        FieldName = 'Qtd'
        Title.Alignment = taCenter
      end>
  end
  object BitBtn5: TBitBtn
    Left = 667
    Top = 283
    Width = 105
    Height = 28
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn5Click
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
