object fAprovaOrc: TfAprovaOrc
  Left = 11
  Top = 143
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aprova'#231#227'o do item do or'#231'amento'
  ClientHeight = 332
  ClientWidth = 763
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
  object Bevel1: TBevel
    Left = 0
    Top = 293
    Width = 761
    Height = 4
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 42
    Top = 252
    Width = 81
    Height = 13
    Caption = 'Data Aprova'#231#227'o:'
  end
  object Label6: TLabel
    Left = 16
    Top = 276
    Width = 107
    Height = 13
    Caption = 'Motivo N'#227'o Aprovado:'
  end
  object ALed2: TALed
    Left = 546
    Top = 180
    Width = 16
    Height = 16
    FalseColor = clAqua
  end
  object Label33: TLabel
    Left = 566
    Top = 183
    Width = 69
    Height = 13
    Caption = 'Item Aprovado'
  end
  object Label12: TLabel
    Left = 668
    Top = 183
    Width = 89
    Height = 13
    Caption = 'Item n'#227'o aprovado'
  end
  object ALed1: TALed
    Left = 648
    Top = 180
    Width = 16
    Height = 16
    FalseColor = clRed
  end
  object Panel1: TPanel
    Left = 0
    Top = 295
    Width = 763
    Height = 37
    Align = alBottom
    TabOrder = 3
    object BitBtn6: TBitBtn
      Left = 218
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Confirma a Aprova'#231#227'o ou n'#227'o do Produto'
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
    object BitBtn1: TBitBtn
      Left = 336
      Top = 5
      Width = 117
      Height = 28
      Hint = 'Cancela'
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        560A0000424D560A000000000000360000002800000024000000120000000100
        200000000000200A000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080008080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000FFFFFF0000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000000FF0000008000000080008080800000808000008080000080
        800000808000008080000000FF00808080000080800000808000008080000080
        8000008080000080800000808000008080008080800080808000FFFFFF000080
        80000080800000808000008080000080800000808000FFFFFF00008080000080
        800000808000008080000080800000808000008080000000FF00000080000000
        800000008000808080000080800000808000008080000000FF00000080000000
        8000808080000080800000808000008080000080800000808000008080008080
        8000FFFFFF000080800080808000FFFFFF00008080000080800000808000FFFF
        FF008080800080808000FFFFFF00008080000080800000808000008080000080
        8000008080000000FF0000008000000080000000800000008000808080000080
        80000000FF000000800000008000000080000000800080808000008080000080
        800000808000008080000080800080808000FFFFFF0000808000008080008080
        8000FFFFFF0000808000FFFFFF0080808000008080000080800080808000FFFF
        FF000080800000808000008080000080800000808000008080000000FF000000
        8000000080000000800000008000808080000000800000008000000080000000
        8000000080008080800000808000008080000080800000808000008080008080
        8000FFFFFF0000808000008080000080800080808000FFFFFF00808080000080
        800000808000008080000080800080808000FFFFFF0000808000008080000080
        80000080800000808000008080000000FF000000800000008000000080000000
        8000000080000000800000008000000080008080800000808000008080000080
        80000080800000808000008080000080800080808000FFFFFF00008080000080
        8000008080008080800000808000008080000080800000808000FFFFFF008080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FF000000800000008000000080000000800000008000000080008080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800080808000FFFFFF00008080000080800000808000008080000080
        800000808000FFFFFF0080808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000008000000080000000
        8000000080000000800080808000008080000080800000808000008080000080
        800000808000008080000080800000808000008080000080800080808000FFFF
        FF00008080000080800000808000008080000080800080808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000000FF0000008000000080000000800000008000808080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800080808000FFFFFF0000808000008080000080
        8000808080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000000FF0000008000000080000000
        8000000080000000800080808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80000080800000808000008080000080800080808000FFFFFF00008080000080
        8000008080000080800000808000008080000080800000808000008080000000
        FF00000080000000800000008000808080000000800000008000000080008080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800080808000008080000080800000808000008080000080
        800080808000FFFFFF0000808000008080000080800000808000008080000080
        800000808000008080000000FF00000080000000800000008000808080000080
        80000000FF000000800000008000000080008080800000808000008080000080
        8000008080000080800000808000008080000080800080808000008080000080
        80000080800080808000FFFFFF00008080000080800080808000FFFFFF000080
        80000080800000808000008080000080800000808000008080000000FF000000
        800000008000808080000080800000808000008080000000FF00000080000000
        8000000080008080800000808000008080000080800000808000008080000080
        800080808000FFFFFF000080800000808000808080000080800080808000FFFF
        FF00008080000080800080808000FFFFFF000080800000808000008080000080
        80000080800000808000008080000000FF000000800000808000008080000080
        800000808000008080000000FF00000080000000800000008000008080000080
        80000080800000808000008080000080800080808000FFFFFF00FFFFFF008080
        800000808000008080000080800080808000FFFFFF0000808000008080008080
        8000FFFFFF000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000000
        FF00000080000000FF0000808000008080000080800000808000008080000080
        8000008080008080800080808000008080000080800000808000008080000080
        800080808000FFFFFF00FFFFFF00FFFFFF008080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800080808000808080008080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 453
      Top = 5
      Width = 117
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
      OnClick = BitBtn2Click
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
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 176
    Width = 321
    Height = 57
    Caption = 'Tipo'
    Columns = 3
    DataField = 'Aprovado'
    DataSource = DM1.dsOrcamentoItens
    Items.Strings = (
      'Aprovado'
      'N'#227'o Aprovado'
      'Pendente')
    TabOrder = 0
    Values.Strings = (
      'A'
      'N'
      'P')
    OnClick = DBRadioGroup1Click
    OnExit = DBRadioGroup1Exit
  end
  object DBDateEdit1: TDBDateEdit
    Left = 124
    Top = 244
    Width = 121
    Height = 21
    DataField = 'DtAprovado'
    DataSource = DM1.dsOrcamentoItens
    Color = clScrollBar
    NumGlyphs = 2
    TabOrder = 1
  end
  object DBEdit5: TDBEdit
    Left = 124
    Top = 268
    Width = 634
    Height = 21
    Color = clScrollBar
    DataField = 'MotivoNaoAprov'
    DataSource = DM1.dsOrcamentoItens
    TabOrder = 2
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 0
    Width = 763
    Height = 177
    DataSource = DM1.dsOrcamentoItens
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = RxDBGrid1GetCellParams
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 24
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 94
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Largura'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Width = 317
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrUnitario'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Unit'#225'rio'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Total'
        Visible = True
      end>
  end
end