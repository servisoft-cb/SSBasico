object fRelTalaoFB: TfRelTalaoFB
  Left = 21
  Top = 73
  Width = 949
  Height = 599
  BorderIcons = [biSystemMenu]
  Caption = 'fRelTalaoFB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsLoteFB.dsTalao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    ShowProgress = False
    object RLSubDetail2: TRLSubDetail
      Left = 23
      Top = 38
      Width = 748
      Height = 659
      DataSource = fConsLoteFB.dsTalao
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 114
        BeforePrint = RLBand1BeforePrint
        object RLDraw8: TRLDraw
          Left = 423
          Top = 31
          Width = 199
          Height = 27
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 57
          Width = 622
          Height = 37
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 31
          Width = 425
          Height = 27
          Brush.Color = clBtnFace
        end
        object RLLabel1: TRLLabel
          Left = 4
          Top = 16
          Width = 51
          Height = 14
          Caption = 'Remessa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 93
          Width = 622
          Height = 19
        end
        object RLLabel2: TRLLabel
          Left = 16
          Top = 96
          Width = 56
          Height = 14
          Caption = 'Pedido OC:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 77
          Top = 96
          Width = 165
          Height = 14
          AutoSize = False
          DataField = 'PEDIDOCLIENTE'
          DataSource = fConsLoteFB.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLBarcode1: TRLBarcode
          Left = 628
          Top = 29
          Width = 104
          Height = 39
          BarcodeType = bcEAN13
          Caption = '123456789012'
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
        end
        object RLLabel7: TRLLabel
          Left = 645
          Top = 82
          Width = 93
          Height = 16
          Alignment = taCenter
          AutoSize = False
        end
        object RLDBText6: TRLDBText
          Left = 76
          Top = 59
          Width = 141
          Height = 16
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = fConsLoteFB.dsTalao
        end
        object RLDBText7: TRLDBText
          Left = 415
          Top = 76
          Width = 199
          Height = 16
          AutoSize = False
          DataField = 'NOMECOR'
          DataSource = fConsLoteFB.dsTalao
        end
        object RLDBText8: TRLDBText
          Left = 76
          Top = 76
          Width = 333
          Height = 16
          AutoSize = False
          DataField = 'NOMEPRODUTO'
          DataSource = fConsLoteFB.dsTalao
        end
        object RLLabel3: TRLLabel
          Left = 440
          Top = 37
          Width = 42
          Height = 16
          Caption = 'Qtde.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 493
          Top = 37
          Width = 31
          Height = 16
          DataField = 'QTD'
          DataSource = fConsLoteFB.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 0
          Top = 111
          Width = 748
          Height = 3
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 36
          Top = 37
          Width = 180
          Height = 16
          Caption = 'ORDEM DE PRODU'#199#195'O   N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 223
          Top = 37
          Width = 148
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'TALAO'
          DataSource = fConsLoteFB.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 4
          Top = 59
          Width = 69
          Height = 16
          Caption = 'Refer'#234'ncia:'
        end
        object RLLabel11: TRLLabel
          Left = 20
          Top = 76
          Width = 53
          Height = 16
          Caption = 'Produto:'
        end
        object RLLabel22: TRLLabel
          Left = 253
          Top = 96
          Width = 59
          Height = 14
          Caption = 'Dt. Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 317
          Top = 96
          Width = 102
          Height = 14
          AutoSize = False
          DataField = 'DTGERADO'
          DataSource = fConsLoteFB.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 428
          Top = 96
          Width = 59
          Height = 14
          Caption = 'Dt. Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 498
          Top = 96
          Width = 116
          Height = 13
          AutoSize = False
          DataField = 'DTENTREGA'
          DataSource = fConsLoteFB.dsTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw88: TRLDraw
          Left = 8
          Top = 5
          Width = 737
          Height = 6
          Pen.Style = psDot
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 441
        Width = 748
        Height = 54
        DataSource = DM1.dsProdutoMat
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 748
          Height = 20
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLLabel4: TRLLabel
            Left = 4
            Top = 3
            Width = 36
            Height = 14
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 50
            Top = 3
            Width = 70
            Height = 14
            Caption = 'Nome Material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 18
            Width = 748
            Height = 2
            Align = faBottom
            DrawKind = dkLine
          end
          object RLLabel16: TRLLabel
            Left = 633
            Top = 4
            Width = 113
            Height = 14
            Caption = 'Qtd. de MP Necess'#225'ria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 20
          Width = 748
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object RLDBText13: TRLDBText
            Left = 1
            Top = 0
            Width = 48
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodMaterial'
            DataSource = DM1.dsProdutoMat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlNomeMaterial: TRLLabel
            Left = 50
            Top = 1
            Width = 573
            Height = 12
            AutoSize = False
            Caption = 'Nome Material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlConsumo: TRLLabel
            Left = 702
            Top = 1
            Width = 43
            Height = 10
            Alignment = taRightJustify
            Caption = 'Consumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 14
            Width = 748
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 114
        Width = 748
        Height = 327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand2BeforePrint
        object RLDraw87: TRLDraw
          Left = 0
          Top = 307
          Width = 748
          Height = 20
          Align = faBottom
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 0
          Width = 748
          Height = 20
          Align = faTop
        end
        object RLLabel6: TRLLabel
          Left = 328
          Top = 2
          Width = 66
          Height = 16
          Caption = 'Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 0
          Top = 19
          Width = 128
          Height = 20
        end
        object RLLabel8: TRLLabel
          Left = 24
          Top = 22
          Width = 51
          Height = 14
          Caption = 'Opera'#231#227'o'
        end
        object RLDraw10: TRLDraw
          Left = 127
          Top = 19
          Width = 212
          Height = 20
        end
        object RLLabel9: TRLLabel
          Left = 194
          Top = 22
          Width = 59
          Height = 14
          Caption = 'Funcion'#225'rio'
        end
        object RLDraw11: TRLDraw
          Left = 338
          Top = 19
          Width = 99
          Height = 20
        end
        object RLLabel12: TRLLabel
          Left = 344
          Top = 22
          Width = 89
          Height = 14
          Caption = 'Dt.In'#237'cio Produ'#231#227'o'
        end
        object RLDraw12: TRLDraw
          Left = 436
          Top = 19
          Width = 97
          Height = 20
        end
        object RLLabel13: TRLLabel
          Left = 468
          Top = 22
          Width = 41
          Height = 14
          Caption = 'Hr.In'#237'cio'
        end
        object RLDraw13: TRLDraw
          Left = 532
          Top = 19
          Width = 97
          Height = 20
        end
        object RLLabel19: TRLLabel
          Left = 548
          Top = 22
          Width = 39
          Height = 14
          Caption = 'Hr.Final'
        end
        object RLDraw14: TRLDraw
          Left = 628
          Top = 19
          Width = 120
          Height = 20
        end
        object RLLabel20: TRLLabel
          Left = 652
          Top = 22
          Width = 74
          Height = 14
          Caption = 'Qtd. Produzida'
        end
        object RLDraw15: TRLDraw
          Left = 127
          Top = 38
          Width = 212
          Height = 23
        end
        object RLDraw16: TRLDraw
          Left = 0
          Top = 38
          Width = 128
          Height = 23
        end
        object RLDraw17: TRLDraw
          Left = 338
          Top = 38
          Width = 99
          Height = 23
        end
        object RLDraw18: TRLDraw
          Left = 436
          Top = 38
          Width = 97
          Height = 23
        end
        object RLDraw19: TRLDraw
          Left = 532
          Top = 38
          Width = 97
          Height = 23
        end
        object RLDraw20: TRLDraw
          Left = 628
          Top = 38
          Width = 120
          Height = 23
        end
        object RLDraw21: TRLDraw
          Left = 127
          Top = 60
          Width = 212
          Height = 23
        end
        object RLDraw22: TRLDraw
          Left = 0
          Top = 60
          Width = 128
          Height = 23
        end
        object RLDraw23: TRLDraw
          Left = 338
          Top = 60
          Width = 99
          Height = 23
        end
        object RLDraw24: TRLDraw
          Left = 436
          Top = 60
          Width = 97
          Height = 23
        end
        object RLDraw25: TRLDraw
          Left = 532
          Top = 60
          Width = 97
          Height = 23
        end
        object RLDraw26: TRLDraw
          Left = 628
          Top = 60
          Width = 120
          Height = 23
        end
        object RLDraw27: TRLDraw
          Left = 127
          Top = 82
          Width = 212
          Height = 23
        end
        object RLDraw28: TRLDraw
          Left = 0
          Top = 82
          Width = 128
          Height = 23
        end
        object RLDraw29: TRLDraw
          Left = 338
          Top = 82
          Width = 99
          Height = 23
        end
        object RLDraw30: TRLDraw
          Left = 436
          Top = 82
          Width = 97
          Height = 23
        end
        object RLDraw31: TRLDraw
          Left = 532
          Top = 82
          Width = 97
          Height = 23
        end
        object RLDraw32: TRLDraw
          Left = 628
          Top = 82
          Width = 120
          Height = 23
        end
        object RLDraw33: TRLDraw
          Left = 127
          Top = 104
          Width = 212
          Height = 23
        end
        object RLDraw34: TRLDraw
          Left = 0
          Top = 104
          Width = 128
          Height = 23
        end
        object RLDraw35: TRLDraw
          Left = 338
          Top = 104
          Width = 99
          Height = 23
        end
        object RLDraw36: TRLDraw
          Left = 436
          Top = 104
          Width = 97
          Height = 23
        end
        object RLDraw37: TRLDraw
          Left = 532
          Top = 104
          Width = 97
          Height = 23
        end
        object RLDraw38: TRLDraw
          Left = 628
          Top = 104
          Width = 120
          Height = 23
        end
        object RLDraw39: TRLDraw
          Left = 127
          Top = 126
          Width = 212
          Height = 23
        end
        object RLDraw40: TRLDraw
          Left = 0
          Top = 126
          Width = 128
          Height = 23
        end
        object RLDraw41: TRLDraw
          Left = 338
          Top = 126
          Width = 99
          Height = 23
        end
        object RLDraw42: TRLDraw
          Left = 436
          Top = 126
          Width = 97
          Height = 23
        end
        object RLDraw43: TRLDraw
          Left = 532
          Top = 126
          Width = 97
          Height = 23
        end
        object RLDraw44: TRLDraw
          Left = 628
          Top = 126
          Width = 120
          Height = 23
        end
        object RLDraw45: TRLDraw
          Left = 127
          Top = 148
          Width = 212
          Height = 23
        end
        object RLDraw46: TRLDraw
          Left = 0
          Top = 148
          Width = 128
          Height = 23
        end
        object RLDraw47: TRLDraw
          Left = 338
          Top = 148
          Width = 99
          Height = 23
        end
        object RLDraw48: TRLDraw
          Left = 436
          Top = 148
          Width = 97
          Height = 23
        end
        object RLDraw49: TRLDraw
          Left = 532
          Top = 148
          Width = 97
          Height = 23
        end
        object RLDraw50: TRLDraw
          Left = 628
          Top = 148
          Width = 120
          Height = 23
        end
        object RLDraw51: TRLDraw
          Left = 127
          Top = 170
          Width = 212
          Height = 23
        end
        object RLDraw52: TRLDraw
          Left = 0
          Top = 170
          Width = 128
          Height = 23
        end
        object RLDraw53: TRLDraw
          Left = 338
          Top = 170
          Width = 99
          Height = 23
        end
        object RLDraw54: TRLDraw
          Left = 436
          Top = 170
          Width = 97
          Height = 23
        end
        object RLDraw55: TRLDraw
          Left = 532
          Top = 170
          Width = 97
          Height = 23
        end
        object RLDraw56: TRLDraw
          Left = 628
          Top = 170
          Width = 120
          Height = 23
        end
        object RLDraw57: TRLDraw
          Left = 127
          Top = 192
          Width = 212
          Height = 23
        end
        object RLDraw58: TRLDraw
          Left = 0
          Top = 192
          Width = 128
          Height = 23
        end
        object RLDraw59: TRLDraw
          Left = 338
          Top = 192
          Width = 99
          Height = 23
        end
        object RLDraw60: TRLDraw
          Left = 436
          Top = 192
          Width = 97
          Height = 23
        end
        object RLDraw61: TRLDraw
          Left = 532
          Top = 192
          Width = 97
          Height = 23
        end
        object RLDraw62: TRLDraw
          Left = 628
          Top = 192
          Width = 120
          Height = 23
        end
        object RLDraw63: TRLDraw
          Left = 127
          Top = 214
          Width = 212
          Height = 23
        end
        object RLDraw64: TRLDraw
          Left = 0
          Top = 214
          Width = 128
          Height = 23
        end
        object RLDraw65: TRLDraw
          Left = 338
          Top = 214
          Width = 99
          Height = 23
        end
        object RLDraw66: TRLDraw
          Left = 436
          Top = 214
          Width = 97
          Height = 23
        end
        object RLDraw67: TRLDraw
          Left = 532
          Top = 214
          Width = 97
          Height = 23
        end
        object RLDraw68: TRLDraw
          Left = 628
          Top = 214
          Width = 120
          Height = 23
        end
        object RLDraw69: TRLDraw
          Left = 127
          Top = 236
          Width = 212
          Height = 23
        end
        object RLDraw70: TRLDraw
          Left = 0
          Top = 236
          Width = 128
          Height = 23
        end
        object RLDraw71: TRLDraw
          Left = 338
          Top = 236
          Width = 99
          Height = 23
        end
        object RLDraw72: TRLDraw
          Left = 436
          Top = 236
          Width = 97
          Height = 23
        end
        object RLDraw73: TRLDraw
          Left = 532
          Top = 236
          Width = 97
          Height = 23
        end
        object RLDraw74: TRLDraw
          Left = 628
          Top = 236
          Width = 120
          Height = 23
        end
        object RLDraw75: TRLDraw
          Left = 127
          Top = 258
          Width = 212
          Height = 23
        end
        object RLDraw76: TRLDraw
          Left = 0
          Top = 258
          Width = 128
          Height = 23
        end
        object RLDraw77: TRLDraw
          Left = 338
          Top = 258
          Width = 99
          Height = 23
        end
        object RLDraw78: TRLDraw
          Left = 436
          Top = 258
          Width = 97
          Height = 23
        end
        object RLDraw79: TRLDraw
          Left = 532
          Top = 258
          Width = 97
          Height = 23
        end
        object RLDraw80: TRLDraw
          Left = 628
          Top = 258
          Width = 120
          Height = 23
        end
        object RLDraw81: TRLDraw
          Left = 127
          Top = 280
          Width = 212
          Height = 23
        end
        object RLDraw82: TRLDraw
          Left = 0
          Top = 280
          Width = 128
          Height = 23
        end
        object RLDraw83: TRLDraw
          Left = 338
          Top = 280
          Width = 99
          Height = 23
        end
        object RLDraw84: TRLDraw
          Left = 436
          Top = 280
          Width = 97
          Height = 23
        end
        object RLDraw85: TRLDraw
          Left = 532
          Top = 280
          Width = 97
          Height = 23
        end
        object RLDraw86: TRLDraw
          Left = 628
          Top = 280
          Width = 120
          Height = 23
        end
        object RLLabel21: TRLLabel
          Left = 8
          Top = 310
          Width = 26
          Height = 14
          Caption = 'Obs:'
        end
        object RLMemo1: TRLMemo
          Left = 37
          Top = 312
          Width = 705
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object Barcode1: TBarcode
    Height = 49
    Top = 8
    Left = 128
    Modul = 1
    Ratio = 2.000000000000000000
    Typ = bcCodeEAN13
    Checksum = True
  end
end
