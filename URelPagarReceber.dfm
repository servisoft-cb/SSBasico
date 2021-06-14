object fRelPagarReceber: TfRelPagarReceber
  Left = 122
  Top = 45
  Width = 843
  Height = 689
  Caption = 'fRelPagarReceber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsPagarReceber.dsmImprimir
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 9.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 89
      Width = 734
      Height = 283
      DataSource = fConsPagarReceber.dsqPagar
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 734
        Height = 217
        DataFields = 'Filial'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 19
          BandType = btHeader
          object RLLabel11: TRLLabel
            Left = 64
            Top = 4
            Width = 29
            Height = 11
            Caption = 'Filial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 123
            Top = 4
            Width = 60
            Height = 11
            DataField = 'lkNomeFilial'
            DataSource = fConsPagarReceber.dsqPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 95
            Top = 4
            Width = 26
            Height = 11
            Alignment = taCenter
            DataField = 'Filial'
            DataSource = fConsPagarReceber.dsqPagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 88
          Width = 734
          Height = 21
          BandType = btSummary
          object RLLabel9: TRLLabel
            Left = 130
            Top = 2
            Width = 85
            Height = 11
            Caption = 'Vlr.Total Parcelas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 216
            Top = 2
            Width = 98
            Height = 11
            DataField = 'VlrParcCPagar'
            DataSource = fConsPagarReceber.dsqPagar
            DisplayMask = '###,###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLLabel15: TRLLabel
            Left = 346
            Top = 2
            Width = 70
            Height = 11
            Caption = 'Vlr.Total Pago:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult2: TRLDBResult
            Left = 418
            Top = 2
            Width = 84
            Height = 11
            DataField = 'PgtoParcial'
            DataSource = fConsPagarReceber.dsqPagar
            DisplayMask = '###,###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLDBResult3: TRLDBResult
            Left = 609
            Top = 2
            Width = 85
            Height = 11
            DataField = 'RestParcela'
            DataSource = fConsPagarReceber.dsqPagar
            DisplayMask = '###,###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLLabel16: TRLLabel
            Left = 550
            Top = 2
            Width = 57
            Height = 11
            Caption = 'Saldo Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 64
            Top = 0
            Width = 636
            Height = 2
            Align = faTopOnly
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLLabel41: TRLLabel
            Left = 64
            Top = 1
            Width = 48
            Height = 12
            Caption = 'Total Filial:'
          end
        end
        object RLGroup3: TRLGroup
          Left = 0
          Top = 19
          Width = 734
          Height = 69
          DataFields = 'NomeForn;CodForn'
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 734
            Height = 15
            BeforePrint = RLBand4BeforePrint
            object RLDBText2: TRLDBText
              Left = 0
              Top = 1
              Width = 58
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'DtVencCPagar'
              DataSource = fConsPagarReceber.dsqPagar
            end
            object RLDBText3: TRLDBText
              Left = 60
              Top = 1
              Width = 213
              Height = 12
              AutoSize = False
              DataField = 'NomeForn'
              DataSource = fConsPagarReceber.dsqPagar
            end
            object RLDBText5: TRLDBText
              Left = 371
              Top = 1
              Width = 50
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'DtGerado'
              DataSource = fConsPagarReceber.dsqPagar
            end
            object RLDBText6: TRLDBText
              Left = 460
              Top = 1
              Width = 67
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VlrParcCPagar'
              DataSource = fConsPagarReceber.dsqPagar
            end
            object RLDBText7: TRLDBText
              Left = 528
              Top = 1
              Width = 67
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PgtoParcial'
              DataSource = fConsPagarReceber.dsqPagar
            end
            object RLDBText8: TRLDBText
              Left = 650
              Top = 1
              Width = 67
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'RestParcela'
              DataSource = fConsPagarReceber.dsqPagar
            end
            object RLLabel12: TRLLabel
              Left = 274
              Top = 1
              Width = 94
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'N'#186' Documento'
            end
            object RLLabel14: TRLLabel
              Left = 429
              Top = 1
              Width = 30
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'N'#186' Documento'
            end
            object RLDBText9: TRLDBText
              Left = 597
              Top = 1
              Width = 50
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'DtPagParcCPagar'
              DataSource = fConsPagarReceber.dsqPagar
            end
          end
          object RLBand11: TRLBand
            Left = 0
            Top = 15
            Width = 734
            Height = 16
            BandType = btSummary
            object RLLabel29: TRLLabel
              Left = 130
              Top = 2
              Width = 85
              Height = 11
              Caption = 'Vlr.Total Parcelas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult4: TRLDBResult
              Left = 216
              Top = 2
              Width = 98
              Height = 11
              DataField = 'VlrParcCPagar'
              DataSource = fConsPagarReceber.dsqPagar
              DisplayMask = '###,###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLLabel30: TRLLabel
              Left = 343
              Top = 2
              Width = 70
              Height = 11
              Caption = 'Vlr.Total Pago:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult5: TRLDBResult
              Left = 415
              Top = 2
              Width = 84
              Height = 11
              DataField = 'PgtoParcial'
              DataSource = fConsPagarReceber.dsqPagar
              DisplayMask = '###,###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLDBResult6: TRLDBResult
              Left = 609
              Top = 2
              Width = 85
              Height = 11
              DataField = 'RestParcela'
              DataSource = fConsPagarReceber.dsqPagar
              DisplayMask = '###,###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLLabel39: TRLLabel
              Left = 550
              Top = 2
              Width = 57
              Height = 11
              Caption = 'Saldo Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel40: TRLLabel
              Left = 40
              Top = 1
              Width = 76
              Height = 12
              Caption = 'Total Fornecedor:'
            end
            object RLDraw8: TRLDraw
              Left = 39
              Top = 0
              Width = 659
              Height = 2
              Align = faTopOnly
              DrawKind = dkLine
              Pen.Style = psDot
            end
          end
        end
      end
    end
    object RLBand1: TRLBand
      Left = 30
      Top = 34
      Width = 734
      Height = 37
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 296
        Top = 8
        Width = 158
        Height = 19
        Caption = 'Relat'#243'rio Financeiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 656
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
        Left = 675
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
        Left = 641
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
        Left = 675
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
    end
    object RLBand2: TRLBand
      Left = 30
      Top = 71
      Width = 734
      Height = 18
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 3
        Width = 40
        Height = 12
        Caption = 'Dt.Vecto'
      end
      object RLLabel3: TRLLabel
        Left = 64
        Top = 3
        Width = 50
        Height = 12
        Caption = 'Fornecedor'
      end
      object RLLabel4: TRLLabel
        Left = 478
        Top = 3
        Width = 48
        Height = 12
        Caption = 'Vlr.Parcela'
      end
      object RLLabel5: TRLLabel
        Left = 557
        Top = 3
        Width = 38
        Height = 12
        Caption = 'Vlr.Pago'
      end
      object RLLabel6: TRLLabel
        Left = 688
        Top = 3
        Width = 26
        Height = 12
        Caption = 'Saldo'
      end
      object RLLabel7: TRLLabel
        Left = 304
        Top = 3
        Width = 64
        Height = 12
        Caption = 'N'#186' Documento'
      end
      object RLLabel8: TRLLabel
        Left = 376
        Top = 3
        Width = 39
        Height = 12
        Caption = 'Emiss'#227'o'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 16
        Width = 734
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel10: TRLLabel
        Left = 427
        Top = 3
        Width = 30
        Height = 12
        Caption = 'Atraso'
      end
      object RLLabel13: TRLLabel
        Left = 603
        Top = 3
        Width = 40
        Height = 12
        Caption = 'Dt.Pagto'
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 30
      Top = 372
      Width = 734
      Height = 152
      DataSource = fConsPagarReceber.dsqFornecedor
      object RLGroup2: TRLGroup
        Left = 0
        Top = 38
        Width = 734
        Height = 75
        DataFields = 'Filial'
        object RLBand7: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 18
          BandType = btHeader
          object RLLabel25: TRLLabel
            Left = 64
            Top = 4
            Width = 29
            Height = 11
            Caption = 'Filial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 95
            Top = 4
            Width = 26
            Height = 11
            Alignment = taCenter
            DataField = 'Filial'
            DataSource = fConsPagarReceber.dsqFornecedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 123
            Top = 4
            Width = 60
            Height = 11
            DataField = 'lkNomeFilial'
            DataSource = fConsPagarReceber.dsqFornecedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 18
          Width = 734
          Height = 15
          object RLDBText10: TRLDBText
            Left = 0
            Top = 1
            Width = 40
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodForn'
            DataSource = fConsPagarReceber.dsqFornecedor
          end
          object RLDBText11: TRLDBText
            Left = 44
            Top = 1
            Width = 381
            Height = 12
            AutoSize = False
            DataField = 'NomeForn'
            DataSource = fConsPagarReceber.dsqFornecedor
          end
          object RLDBText13: TRLDBText
            Left = 440
            Top = 1
            Width = 90
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrParcela'
            DataSource = fConsPagarReceber.dsqFornecedor
          end
          object RLDBText14: TRLDBText
            Left = 544
            Top = 1
            Width = 90
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrPago'
            DataSource = fConsPagarReceber.dsqFornecedor
          end
          object RLDBText15: TRLDBText
            Left = 640
            Top = 1
            Width = 90
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrRestante'
            DataSource = fConsPagarReceber.dsqFornecedor
          end
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 38
        BandType = btHeader
        object RLLabel18: TRLLabel
          Left = 2
          Top = 24
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
        object RLLabel19: TRLLabel
          Left = 45
          Top = 24
          Width = 78
          Height = 12
          Caption = 'Nome Fornecedor'
        end
        object RLLabel20: TRLLabel
          Left = 488
          Top = 24
          Width = 40
          Height = 12
          Caption = 'Vlr. Total'
        end
        object RLLabel23: TRLLabel
          Left = 592
          Top = 24
          Width = 41
          Height = 12
          Caption = 'Vlr. Pago'
        end
        object RLLabel24: TRLLabel
          Left = 700
          Top = 24
          Width = 26
          Height = 12
          Caption = 'Saldo'
        end
        object RLLabel17: TRLLabel
          Left = 272
          Top = 8
          Width = 157
          Height = 16
          Caption = 'Resumo por Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 36
          Width = 734
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 30
      Top = 524
      Width = 734
      Height = 264
      DataSource = fConsPagarReceber.dsmFilialGeral
      object RLBand9: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 30
        BandType = btHeader
        object RLLabel31: TRLLabel
          Left = 272
          Top = 8
          Width = 116
          Height = 16
          Caption = 'Resumo por Filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 30
        Width = 734
        Height = 62
        BeforePrint = RLBand10BeforePrint
        object RLDBText17: TRLDBText
          Left = 63
          Top = 19
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrReceber'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
        object RLLabel28: TRLLabel
          Left = 3
          Top = 19
          Width = 58
          Height = 12
          Caption = 'Vlr. Receber:'
        end
        object RLLabel26: TRLLabel
          Left = 14
          Top = 31
          Width = 47
          Height = 12
          Caption = 'Vlr. Pagar:'
        end
        object RLDBText20: TRLDBText
          Left = 63
          Top = 31
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrPagar'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDBText21: TRLDBText
          Left = 63
          Top = 45
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrReal'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDraw5: TRLDraw
          Left = 63
          Top = 43
          Width = 90
          Height = 2
          DrawKind = dkLine
        end
        object RLDBText22: TRLDBText
          Left = 259
          Top = 19
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrPedidoAtrazo'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLLabel32: TRLLabel
          Left = 161
          Top = 19
          Width = 97
          Height = 12
          Caption = 'Vlr. Pedido em Atraso:'
        end
        object RLLabel33: TRLLabel
          Left = 168
          Top = 31
          Width = 90
          Height = 12
          Caption = 'Vlr. Pedido no Prazo:'
        end
        object RLDBText23: TRLDBText
          Left = 259
          Top = 31
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrPedido'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDBText24: TRLDBText
          Left = 259
          Top = 45
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrPedidoGeral'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDraw6: TRLDraw
          Left = 259
          Top = 43
          Width = 90
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel34: TRLLabel
          Left = 352
          Top = 43
          Width = 16
          Height = 16
          Caption = ' ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 371
          Top = 44
          Width = 84
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrRealPedido'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDBText19: TRLDBText
          Left = 533
          Top = 19
          Width = 80
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrOC'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLLabel35: TRLLabel
          Left = 495
          Top = 19
          Width = 37
          Height = 12
          Caption = 'Vlr. OC:'
        end
        object RLLabel36: TRLLabel
          Left = 470
          Top = 31
          Width = 62
          Height = 12
          Caption = 'Vlr.Comiss'#227'o:'
        end
        object RLDBText25: TRLDBText
          Left = 533
          Top = 31
          Width = 80
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrComissao'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
        object RLDraw7: TRLDraw
          Left = 533
          Top = 43
          Width = 80
          Height = 2
          DrawKind = dkLine
        end
        object RLDBText12: TRLDBText
          Left = 247
          Top = 1
          Width = 22
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Filial'
          DataSource = fConsPagarReceber.dsmFilialGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 274
          Top = 1
          Width = 179
          Height = 12
          AutoSize = False
          DataField = 'Nome'
          DataSource = fConsPagarReceber.dsmFilialGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 217
          Top = 1
          Width = 29
          Height = 11
          Caption = 'Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 551
          Top = 45
          Width = 62
          Height = 12
          Alignment = taRightJustify
          Caption = 'Vlr.Comiss'#227'o:'
        end
        object RLLabel38: TRLLabel
          Left = 617
          Top = 43
          Width = 16
          Height = 16
          Caption = ' ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 636
          Top = 44
          Width = 89
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrRealOC'
          DataSource = fConsPagarReceber.dsmFilialGeral
        end
      end
    end
  end
end
