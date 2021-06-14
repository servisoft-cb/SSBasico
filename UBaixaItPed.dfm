object fBaixaItPed: TfBaixaItPed
  Left = 37
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa Itens dos Pedidos'
  ClientHeight = 156
  ClientWidth = 696
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 156
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 694
      Height = 137
      Align = alClient
    end
    object VDBGrid1: TVDBGrid
      Left = 4
      Top = 38
      Width = 686
      Height = 93
      DataSource = fBaixaPedido.dsPedidoGrade
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Vertical = True
      TitlesWidth = 73
      OnCellClick = VDBGrid1CellClick
      OnColEnter = VDBGrid1ColEnter
      OnDblClick = VDBGrid1DblClick
      OnKeyDown = VDBGrid1KeyDown
      Columns = <
        item
          Alignment = taCenter
          Color = clGray
          FieldName = 'lkTamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8454143
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tamanho:'
          Width = 60
        end
        item
          Alignment = taCenter
          FieldName = 'Qtd'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.do Pedido:'
          Width = 60
        end
        item
          Alignment = taCenter
          FieldName = 'QtdParesFat'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Faturados:'
          Width = 60
        end
        item
          Alignment = taCenter
          FieldName = 'QtdParesRest'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.Restante:'
          Width = 60
        end>
    end
    object BitBtn1: TBitBtn
      Left = 599
      Top = 8
      Width = 90
      Height = 25
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = BitBtn1Click
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
    object StaticText1: TStaticText
      Left = 1
      Top = 138
      Width = 694
      Height = 17
      Align = alBottom
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 
        'Duplo Clique ou <ENTER> para chamar o formul'#225'rio para dar baixa ' +
        'ou estornar a quantidade por tamanho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
end
