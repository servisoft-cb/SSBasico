object fRelContrFatAcumulado: TfRelContrFatAcumulado
  Left = 7
  Top = 130
  Width = 788
  Height = 433
  HorzScrollBar.Position = 21
  Caption = 'fRelContrFatAcumulado'
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
    Left = -21
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fPrevContrFat.dsmAcumulado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 26
      Top = 38
      Width = 742
      Height = 93
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 240
        Top = 18
        Width = 175
        Height = 16
        Caption = 'Controle de Faturamento - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 640
        Top = 2
        Width = 24
        Height = 14
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 666
        Top = 3
        Width = 32
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 618
        Top = 18
        Width = 46
        Height = 14
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 666
        Top = 19
        Width = 64
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 41
        Width = 44
        Height = 14
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 48
        Top = 43
        Width = 38
        Height = 12
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 76
        Width = 65
        Height = 17
      end
      object RLLabel4: TRLLabel
        Left = 19
        Top = 79
        Width = 23
        Height = 12
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 64
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel5: TRLLabel
        Left = 69
        Top = 79
        Width = 40
        Height = 12
        Caption = 'Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 113
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel6: TRLLabel
        Left = 123
        Top = 79
        Width = 30
        Height = 12
        Caption = 'Acum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 162
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel7: TRLLabel
        Left = 175
        Top = 79
        Width = 27
        Height = 12
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 64
        Top = 56
        Width = 148
        Height = 21
      end
      object RLLabel8: TRLLabel
        Left = 96
        Top = 59
        Width = 78
        Height = 16
        Caption = 'V E N D A S'
      end
      object RLDraw6: TRLDraw
        Left = 215
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel9: TRLLabel
        Left = 220
        Top = 79
        Width = 40
        Height = 12
        Caption = 'Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 264
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel10: TRLLabel
        Left = 279
        Top = 79
        Width = 30
        Height = 12
        Caption = 'Acum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw8: TRLDraw
        Left = 313
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel11: TRLLabel
        Left = 331
        Top = 79
        Width = 27
        Height = 12
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw9: TRLDraw
        Left = 215
        Top = 56
        Width = 148
        Height = 21
      end
      object RLLabel12: TRLLabel
        Left = 223
        Top = 59
        Width = 133
        Height = 16
        Caption = 'M '#195' O   DE   O B R A'
      end
      object RLDraw10: TRLDraw
        Left = 534
        Top = 76
        Width = 54
        Height = 17
      end
      object RLLabel13: TRLLabel
        Left = 538
        Top = 79
        Width = 40
        Height = 12
        Caption = 'Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw11: TRLDraw
        Left = 587
        Top = 76
        Width = 54
        Height = 17
      end
      object RLLabel14: TRLLabel
        Left = 594
        Top = 79
        Width = 30
        Height = 12
        Caption = 'Acum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw12: TRLDraw
        Left = 640
        Top = 76
        Width = 54
        Height = 17
      end
      object RLLabel15: TRLLabel
        Left = 653
        Top = 79
        Width = 27
        Height = 12
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw13: TRLDraw
        Left = 534
        Top = 56
        Width = 160
        Height = 21
      end
      object RLLabel16: TRLLabel
        Left = 575
        Top = 59
        Width = 60
        Height = 16
        Caption = 'T O T A L'
      end
      object RLLabel29: TRLLabel
        Left = 408
        Top = 40
        Width = 38
        Height = 10
        Caption = '11/10/2007'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw36: TRLDraw
        Left = 367
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel30: TRLLabel
        Left = 376
        Top = 79
        Width = 31
        Height = 12
        Caption = 'Devol.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw38: TRLDraw
        Left = 416
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel31: TRLLabel
        Left = 431
        Top = 79
        Width = 30
        Height = 12
        Caption = 'Acum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw39: TRLDraw
        Left = 465
        Top = 76
        Width = 50
        Height = 17
      end
      object RLLabel32: TRLLabel
        Left = 483
        Top = 79
        Width = 27
        Height = 12
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw40: TRLDraw
        Left = 367
        Top = 56
        Width = 148
        Height = 21
      end
      object RLLabel33: TRLLabel
        Left = 375
        Top = 59
        Width = 130
        Height = 16
        Caption = 'D E V O L U '#199' '#213' E S'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 131
      Width = 742
      Height = 58
      DataSource = fPrevContrFat.dsmAcumulado
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDraw14: TRLDraw
          Left = 0
          Top = -1
          Width = 65
          Height = 17
        end
        object RLDraw15: TRLDraw
          Left = 64
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw16: TRLDraw
          Left = 113
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw17: TRLDraw
          Left = 162
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw18: TRLDraw
          Left = 215
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw19: TRLDraw
          Left = 264
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw20: TRLDraw
          Left = 313
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw21: TRLDraw
          Left = 534
          Top = -1
          Width = 54
          Height = 17
        end
        object RLDraw22: TRLDraw
          Left = 587
          Top = -1
          Width = 54
          Height = 17
        end
        object RLDraw23: TRLDraw
          Left = 640
          Top = -1
          Width = 54
          Height = 17
        end
        object RLDBText1: TRLDBText
          Left = 2
          Top = 0
          Width = 62
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'Data'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 66
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrVenda'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 115
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrAcumVenda'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 164
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMediaVenda'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 217
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMObra'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 266
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrAcumMObra'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 315
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMediaMObra'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 536
          Top = 2
          Width = 50
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrFaturadoTotal'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 589
          Top = 2
          Width = 50
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrAcumTotal'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 642
          Top = 2
          Width = 50
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMediaTotal'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw41: TRLDraw
          Left = 367
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw42: TRLDraw
          Left = 416
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDraw43: TRLDraw
          Left = 465
          Top = -1
          Width = 50
          Height = 17
        end
        object RLDBText11: TRLDBText
          Left = 369
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrDev'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 418
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrAcumDev'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 467
          Top = 2
          Width = 46
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMediaDev'
          DataSource = fPrevContrFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 16
        Width = 742
        Height = 20
        BeforePrint = RLBand4BeforePrint
        object RLDraw30: TRLDraw
          Left = 0
          Top = -1
          Width = 65
          Height = 21
        end
        object RLDraw31: TRLDraw
          Left = 64
          Top = -1
          Width = 73
          Height = 21
        end
        object RLDraw34: TRLDraw
          Left = 215
          Top = -1
          Width = 73
          Height = 21
        end
        object RLDraw37: TRLDraw
          Left = 534
          Top = -1
          Width = 73
          Height = 21
        end
        object RLLabel25: TRLLabel
          Left = 27
          Top = 2
          Width = 33
          Height = 14
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 66
          Top = 1
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Vendas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 217
          Top = 1
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total MObra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 536
          Top = 1
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw32: TRLDraw
          Left = -1
          Top = 19
          Width = 282
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw33: TRLDraw
          Left = 289
          Top = 19
          Width = 216
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw35: TRLDraw
          Left = 512
          Top = 19
          Width = 216
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw44: TRLDraw
          Left = 367
          Top = -1
          Width = 73
          Height = 21
        end
        object RLLabel34: TRLLabel
          Left = 369
          Top = 2
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Dev.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand3: TRLBand
      Left = 26
      Top = 189
      Width = 742
      Height = 27
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLDraw24: TRLDraw
        Left = 64
        Top = 0
        Width = 73
        Height = 21
      end
      object RLDraw25: TRLDraw
        Left = 136
        Top = 0
        Width = 73
        Height = 21
      end
      object RLLabel18: TRLLabel
        Left = 138
        Top = 5
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Geral Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 67
        Top = 5
        Width = 48
        Height = 14
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw26: TRLDraw
        Left = 215
        Top = 0
        Width = 72
        Height = 21
      end
      object RLDraw27: TRLDraw
        Left = 286
        Top = 0
        Width = 75
        Height = 21
      end
      object RLLabel19: TRLLabel
        Left = 288
        Top = 5
        Width = 71
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Geral MObra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 217
        Top = 5
        Width = 62
        Height = 14
        Caption = 'M.de Obra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw28: TRLDraw
        Left = 532
        Top = 0
        Width = 73
        Height = 21
      end
      object RLDraw29: TRLDraw
        Left = 604
        Top = 0
        Width = 91
        Height = 21
      end
      object RLLabel23: TRLLabel
        Left = 606
        Top = 5
        Width = 87
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 537
        Top = 5
        Width = 65
        Height = 14
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw45: TRLDraw
        Left = 366
        Top = 0
        Width = 72
        Height = 21
      end
      object RLDraw46: TRLDraw
        Left = 437
        Top = 0
        Width = 75
        Height = 21
      end
      object RLLabel35: TRLLabel
        Left = 439
        Top = 5
        Width = 71
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Devolu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 369
        Top = 5
        Width = 62
        Height = 14
        Caption = 'Devolu'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
