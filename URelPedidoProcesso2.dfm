object fRelPedidoProcesso2: TfRelPedidoProcesso2
  Left = 12
  Top = 149
  Width = 1227
  Height = 476
  Caption = 'fRelPedidoProcesso2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 16
    Width = 1123
    Height = 794
    DataSource = fConsPedido2.dsmPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 9.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 81
      Width = 1055
      Height = 344
      DataSource = fConsPedido2.dsmPedido
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1055
        Height = 233
        DataFields = 'NomeGrupo'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 1055
          Height = 38
          BandType = btHeader
          object RLDraw12: TRLDraw
            Left = 1001
            Top = 22
            Width = 54
            Height = 16
          end
          object RLDraw11: TRLDraw
            Left = 887
            Top = 22
            Width = 54
            Height = 16
          end
          object RLDraw10: TRLDraw
            Left = 835
            Top = 22
            Width = 53
            Height = 16
          end
          object RLDraw9: TRLDraw
            Left = 749
            Top = 22
            Width = 37
            Height = 16
          end
          object RLDraw7: TRLDraw
            Left = 679
            Top = 22
            Width = 71
            Height = 16
          end
          object RLDraw6: TRLDraw
            Left = 477
            Top = 22
            Width = 203
            Height = 16
          end
          object RLDraw4: TRLDraw
            Left = 221
            Top = 22
            Width = 27
            Height = 16
          end
          object RLDraw3: TRLDraw
            Left = 171
            Top = 22
            Width = 51
            Height = 16
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 22
            Width = 150
            Height = 16
          end
          object RLLabel15: TRLLabel
            Left = 1006
            Top = 24
            Width = 40
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Situa'#231#227'o'
          end
          object RLLabel14: TRLLabel
            Left = 888
            Top = 24
            Width = 52
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Dt. Entrega'
          end
          object RLLabel13: TRLLabel
            Left = 838
            Top = 24
            Width = 48
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Dt. Pedido'
          end
          object RLLabel12: TRLLabel
            Left = 752
            Top = 24
            Width = 30
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'V.Unit'
          end
          object RLLabel10: TRLLabel
            Left = 689
            Top = 24
            Width = 58
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Ord. Compra'
          end
          object RLLabel9: TRLLabel
            Left = 543
            Top = 24
            Width = 64
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Nome Produto'
          end
          object RLLabel7: TRLLabel
            Left = 228
            Top = 24
            Width = 18
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Un.'
          end
          object RLLabel6: TRLLabel
            Left = 174
            Top = 24
            Width = 42
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Qtde.'
          end
          object RLLabel5: TRLLabel
            Left = 47
            Top = 24
            Width = 80
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Nome Cliente'
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 0
            Width = 1055
            Height = 23
            Align = faTop
          end
          object RLDBText1: TRLDBText
            Left = 389
            Top = 2
            Width = 97
            Height = 19
            DataField = 'NomeGrupo'
            DataSource = fConsPedido2.dsmPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 272
            Top = 2
            Width = 113
            Height = 19
            Caption = 'Programa'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw24: TRLDraw
            Left = 420
            Top = 22
            Width = 58
            Height = 16
          end
          object RLLabel16: TRLLabel
            Left = 425
            Top = 24
            Width = 50
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Refer'#234'ncia'
          end
          object RLDraw26: TRLDraw
            Left = 149
            Top = 22
            Width = 23
            Height = 16
          end
          object RLLabel18: TRLLabel
            Left = 153
            Top = 25
            Width = 16
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'UF'
          end
          object RLDraw28: TRLDraw
            Left = 247
            Top = 22
            Width = 53
            Height = 16
          end
          object RLLabel19: TRLLabel
            Left = 250
            Top = 25
            Width = 46
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Q.Pend.'
          end
          object RLDraw30: TRLDraw
            Left = 785
            Top = 22
            Width = 51
            Height = 16
          end
          object RLLabel20: TRLLabel
            Left = 795
            Top = 24
            Width = 32
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'V.Total'
          end
          object RLDraw8: TRLDraw
            Left = 299
            Top = 22
            Width = 122
            Height = 16
          end
          object RLLabel8: TRLLabel
            Left = 333
            Top = 23
            Width = 42
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Vendedor'
          end
          object RLDraw16: TRLDraw
            Left = 940
            Top = 22
            Width = 62
            Height = 16
          end
          object RLLabel11: TRLLabel
            Left = 942
            Top = 24
            Width = 58
            Height = 12
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Dt. Produ'#231#227'o'
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 38
          Width = 1055
          Height = 15
          BeforePrint = RLBand3BeforePrint
          object RLDraw23: TRLDraw
            Left = 1001
            Top = -1
            Width = 54
            Height = 16
          end
          object RLDraw22: TRLDraw
            Left = 887
            Top = -1
            Width = 54
            Height = 16
          end
          object RLDraw21: TRLDraw
            Left = 835
            Top = -1
            Width = 53
            Height = 16
          end
          object RLDraw19: TRLDraw
            Left = 749
            Top = -1
            Width = 37
            Height = 16
          end
          object RLDraw18: TRLDraw
            Left = 477
            Top = -1
            Width = 203
            Height = 16
          end
          object RLDraw17: TRLDraw
            Left = 679
            Top = -1
            Width = 71
            Height = 16
          end
          object RLDraw15: TRLDraw
            Left = 221
            Top = -1
            Width = 27
            Height = 16
          end
          object RLDraw14: TRLDraw
            Left = 171
            Top = -1
            Width = 51
            Height = 16
          end
          object RLDraw13: TRLDraw
            Left = 0
            Top = -1
            Width = 150
            Height = 16
          end
          object RLDBText3: TRLDBText
            Left = 173
            Top = 2
            Width = 48
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'QtdPedido'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText4: TRLDBText
            Left = 223
            Top = 2
            Width = 24
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'Unidade'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText6: TRLDBText
            Left = 479
            Top = 2
            Width = 199
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'NomeProduto'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText7: TRLDBText
            Left = 681
            Top = 2
            Width = 68
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'PedidoCliente'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText9: TRLDBText
            Left = 751
            Top = 2
            Width = 33
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'Preco'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText10: TRLDBText
            Left = 837
            Top = 2
            Width = 50
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'DtEmissao'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText11: TRLDBText
            Left = 889
            Top = 2
            Width = 52
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'DtReprogramado'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDBText12: TRLDBText
            Left = 1004
            Top = 2
            Width = 49
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'Situacao'
            DataSource = fConsPedido2.dsmPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw25: TRLDraw
            Left = 420
            Top = -1
            Width = 58
            Height = 16
          end
          object RLDBText13: TRLDBText
            Left = 422
            Top = 2
            Width = 56
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'Referencia'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDraw27: TRLDraw
            Left = 149
            Top = -1
            Width = 23
            Height = 16
          end
          object RLDBText14: TRLDBText
            Left = 151
            Top = 2
            Width = 20
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'UF'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDraw29: TRLDraw
            Left = 247
            Top = -1
            Width = 53
            Height = 16
          end
          object RLDBText15: TRLDBText
            Left = 249
            Top = 2
            Width = 50
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'QtdRestante'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDraw31: TRLDraw
            Left = 785
            Top = -1
            Width = 51
            Height = 16
          end
          object RLDBText16: TRLDBText
            Left = 786
            Top = 2
            Width = 48
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'VlrTotal'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLLabel26: TRLLabel
            Left = 2
            Top = 1
            Width = 146
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Nome Cliente'
          end
          object RLDraw5: TRLDraw
            Left = 299
            Top = -1
            Width = 122
            Height = 16
          end
          object RLDBText2: TRLDBText
            Left = 301
            Top = 2
            Width = 118
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'NomeVendedor'
            DataSource = fConsPedido2.dsmPedido
          end
          object RLDraw20: TRLDraw
            Left = 940
            Top = -1
            Width = 62
            Height = 16
          end
          object RLDBText5: TRLDBText
            Left = 942
            Top = 1
            Width = 58
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'DtProducao'
            DataSource = fConsPedido2.dsmPedido
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 53
          Width = 1055
          Height = 20
          BandType = btSummary
          BeforePrint = RLBand4BeforePrint
          object RLLabel17: TRLLabel
            Left = 68
            Top = 1
            Width = 43
            Height = 11
            Caption = 'Total ==>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 140
            Top = 1
            Width = 80
            Height = 11
            Alignment = taRightJustify
            DataField = 'QtdPedido'
            DataSource = fConsPedido2.dsmPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLDBResult2: TRLDBResult
            Left = 654
            Top = 1
            Width = 67
            Height = 11
            DataField = 'VlrTotal'
            DataSource = fConsPedido2.dsmPedido
            DisplayMask = '###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLDBResult3: TRLDBResult
            Left = 213
            Top = 1
            Width = 87
            Height = 11
            Alignment = taRightJustify
            DataField = 'QtdRestante'
            DataSource = fConsPedido2.dsmPedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 572
            Top = 1
            Width = 79
            Height = 11
            Caption = 'Vlr.Total Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 873
            Top = 1
            Width = 89
            Height = 11
            Alignment = taRightJustify
            Caption = 'Vlr.Total Pendente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 964
            Top = 1
            Width = 89
            Height = 11
            Caption = 'Vlr.Total Pendente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object RLBand1: TRLBand
      Left = 34
      Top = 38
      Width = 1055
      Height = 43
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 176
        Top = 6
        Width = 570
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'RELA'#199#195'O DE PEDIDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 968
        Top = 2
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 987
        Top = 2
        Width = 54
        Height = 10
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 953
        Top = 12
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 987
        Top = 12
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 2
        Top = 28
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 29
        Top = 28
        Width = 26
        Height = 10
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
