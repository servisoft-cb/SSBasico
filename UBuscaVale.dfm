object fBuscaVale: TfBuscaVale
  Left = 86
  Top = 75
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Busca de Vales'
  ClientHeight = 481
  ClientWidth = 754
  Color = clMoneyGreen
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
    Top = 41
    Width = 754
    Height = 2
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label33: TLabel
    Left = 646
    Top = 51
    Width = 100
    Height = 13
    Caption = 'Vale Selecionado'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 49
    Width = 264
    Height = 16
    Caption = 'Duplo clique para selecionar os vales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 616
    Top = 48
    Width = 27
    Height = 16
    Brush.Color = clLime
  end
  object RxDBGrid2: TRxDBGrid
    Left = 0
    Top = 69
    Width = 754
    Height = 251
    Align = alBottom
    DataSource = DM1.dsVale
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = RxDBGrid2DblClick
    OnGetCellParams = RxDBGrid2GetCellParams
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumVale'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Vale'
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEmissao'
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Emiss'#227'o'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Cliente'
        Width = 369
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Total'
        Width = 113
        Visible = True
      end>
  end
  object RxDBGrid3: TRxDBGrid
    Left = 0
    Top = 320
    Width = 754
    Height = 161
    Align = alBottom
    DataSource = DM1.dsValeItens
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'lkReferencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeProduto'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Produto'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tamanho'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
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
        Expanded = False
        FieldName = 'VlrUnitario'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Unit'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodSitTrib'
        Title.Alignment = taCenter
        Title.Caption = 'Sit.Trib.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AliqIcms'
        Title.Alignment = taCenter
        Title.Caption = 'Icms'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AliqIPI'
        Title.Alignment = taCenter
        Title.Caption = 'IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeCor'
        Title.Alignment = taCenter
        Title.Caption = 'Cor'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 181
    Top = 9
    Width = 198
    Height = 25
    Hint = 'Copia os Vales selecionados para a Nota'
    Caption = 'Copiar os Vales Selecionado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888777777778888888800008800
      00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
      0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
      FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
      44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
      0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
      000A00080000888888880000770A088800008888888888888800088800008888
      88888888888888880000}
  end
  object BitBtn5: TBitBtn
    Left = 380
    Top = 9
    Width = 198
    Height = 25
    Hint = 'Fecha a janela atual'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
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
  object mCopia: TMemoryTable
    Active = True
    Left = 664
    Top = 113
    object mCopiaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mCopiaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mCopiaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mCopiaQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object mCopiaVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object mCopiaCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object mCopialkCodClasFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodClasFiscal'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodClasFiscal'
      KeyFields = 'CodProduto'
      Size = 12
      Lookup = True
    end
    object mCopiaCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mCopiaPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object mCopiaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
  end
  object msCopia: TDataSource
    DataSet = mCopia
    Left = 680
    Top = 113
  end
end
