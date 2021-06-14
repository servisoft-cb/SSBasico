object fConsNotasPorPedidoGrade: TfConsNotasPorPedidoGrade
  Left = 6
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tamanhos'
  ClientHeight = 144
  ClientWidth = 779
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
  object Label1: TLabel
    Left = 6
    Top = 5
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object DBText1: TDBText
    Left = 64
    Top = 5
    Width = 65
    Height = 13
    DataField = 'lkReferencia'
    DataSource = fConsNotasPorPedido.dsNotaFiscalPed
  end
  object Label2: TLabel
    Left = 190
    Top = 5
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object DBText2: TDBText
    Left = 240
    Top = 5
    Width = 527
    Height = 13
    DataField = 'lkNomeProduto'
    DataSource = fConsNotasPorPedido.dsNotaFiscalPed
  end
  object Label3: TLabel
    Left = 35
    Top = 21
    Width = 26
    Height = 13
    Caption = 'Nota:'
  end
  object DBText3: TDBText
    Left = 64
    Top = 21
    Width = 63
    Height = 13
    DataField = 'NumNota'
    DataSource = fConsNotasPorPedido.dsNotaFiscalPed
  end
  object DBText4: TDBText
    Left = 240
    Top = 21
    Width = 63
    Height = 13
    DataField = 'ItemNota'
    DataSource = fConsNotasPorPedido.dsNotaFiscalPed
  end
  object Label4: TLabel
    Left = 181
    Top = 21
    Width = 49
    Height = 13
    Caption = 'Item Nota:'
  end
  object VDBGrid1: TVDBGrid
    Left = 0
    Top = 38
    Width = 778
    Height = 65
    DataSource = fConsNotasPorPedido.dsNotaFiscalPedGrade
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    DefaultColWidth = 50
    TitlesWidth = 60
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
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end>
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
