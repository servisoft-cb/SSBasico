object fRelAcumuladoFat: TfRelAcumuladoFat
  Left = 84
  Top = 169
  Width = 870
  Height = 467
  Caption = 'fRelAcumuladoFat'
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
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fPrevAcumuladoFat.dsmAcumulado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 64
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 577
        Top = 47
        Width = 164
        Height = 16
      end
      object RLDraw2: TRLDraw
        Left = 443
        Top = 47
        Width = 135
        Height = 16
      end
      object RLLabel21: TRLLabel
        Left = 664
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
        Left = 684
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
        Left = 649
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
        Left = 684
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
      object RLLabel1: TRLLabel
        Left = 192
        Top = 4
        Width = 233
        Height = 16
        Caption = 'Relat'#243'rio de Acumulados (Faturado)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 1
        Top = 21
        Width = 30
        Height = 10
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 34
        Top = 21
        Width = 30
        Height = 10
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 8
        Top = 49
        Width = 32
        Height = 12
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 170
        Top = 49
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 255
        Top = 49
        Width = 35
        Height = 12
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 448
        Top = 49
        Width = 50
        Height = 12
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 545
        Top = 49
        Width = 24
        Height = 12
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 593
        Top = 49
        Width = 50
        Height = 12
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 710
        Top = 49
        Width = 24
        Height = 12
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw10: TRLDraw
        Left = 443
        Top = 34
        Width = 135
        Height = 14
      end
      object RLDraw11: TRLDraw
        Left = 577
        Top = 34
        Width = 164
        Height = 14
      end
      object RLLabel11: TRLLabel
        Left = 453
        Top = 35
        Width = 116
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 621
        Top = 35
        Width = 80
        Height = 12
        Alignment = taCenter
        Caption = 'Ac.at'#233' 12/12/2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = -1
        Top = 62
        Width = 445
        Height = 2
        DrawKind = dkLine
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 90
      Width = 742
      Height = 31
      DataSource = fPrevAcumuladoFat.dsmAcumulado
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 12
        Color = clWhite
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand2BeforePrint
        object RLDraw9: TRLDraw
          Left = 654
          Top = -1
          Width = 87
          Height = 12
          Transparent = False
        end
        object RLDraw8: TRLDraw
          Left = 577
          Top = -1
          Width = 78
          Height = 12
          Transparent = False
        end
        object RLDraw7: TRLDraw
          Left = 508
          Top = -1
          Width = 70
          Height = 12
          Transparent = False
        end
        object RLDraw6: TRLDraw
          Left = 443
          Top = -1
          Width = 66
          Height = 12
          Transparent = False
        end
        object RLDraw3: TRLDraw
          Left = -1
          Top = 10
          Width = 444
          Height = 2
          DrawKind = dkLine
          Pen.Style = psDot
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 2
          Top = 0
          Width = 164
          Height = 10
          AutoSize = False
          DataField = 'Fantasia'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 167
          Top = 0
          Width = 85
          Height = 10
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 253
          Top = 0
          Width = 189
          Height = 10
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 446
          Top = 0
          Width = 61
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdDia'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 510
          Top = 0
          Width = 66
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ValorDia'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 579
          Top = 0
          Width = 74
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdAnt'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 656
          Top = 0
          Width = 83
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ValorAnt'
          DataSource = fPrevAcumuladoFat.dsmAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLBand3: TRLBand
      Left = 26
      Top = 121
      Width = 742
      Height = 44
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLDraw14: TRLDraw
        Left = 654
        Top = 0
        Width = 87
        Height = 15
      end
      object RLDraw13: TRLDraw
        Left = 577
        Top = 0
        Width = 78
        Height = 15
      end
      object RLDraw12: TRLDraw
        Left = 508
        Top = 0
        Width = 70
        Height = 15
      end
      object RLDraw5: TRLDraw
        Left = 443
        Top = 0
        Width = 66
        Height = 15
      end
      object RLLabel13: TRLLabel
        Left = 233
        Top = 1
        Width = 21
        Height = 10
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 445
        Top = 2
        Width = 62
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'QtdDia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 510
        Top = 2
        Width = 65
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ValorDia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 579
        Top = 2
        Width = 73
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'QtdAnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 657
        Top = 2
        Width = 81
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ValorAnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 232
        Top = 16
        Width = 42
        Height = 10
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw17: TRLDraw
        Left = 577
        Top = 14
        Width = 78
        Height = 15
      end
      object RLDraw18: TRLDraw
        Left = 654
        Top = 14
        Width = 87
        Height = 15
      end
      object RLLabel23: TRLLabel
        Left = 579
        Top = 16
        Width = 73
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'QtdAnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 660
        Top = 16
        Width = 81
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ValorAnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 232
        Top = 30
        Width = 106
        Height = 10
        Caption = 'Proje'#231#227'o de Pedidos a Faturar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw15: TRLDraw
        Left = 577
        Top = 28
        Width = 164
        Height = 15
      end
      object RLLabel20: TRLLabel
        Left = 605
        Top = 30
        Width = 135
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ValorAnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw16: TRLDraw
        Left = 229
        Top = 14
        Width = 215
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw19: TRLDraw
        Left = 231
        Top = 28
        Width = 347
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw20: TRLDraw
        Left = 231
        Top = 42
        Width = 347
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLLabel25: TRLLabel
        Left = 276
        Top = 1
        Width = 45
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Proje'#231'ao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 324
        Top = 1
        Width = 45
        Height = 11
        AutoSize = False
        Caption = 'Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 324
        Top = 16
        Width = 58
        Height = 11
        AutoSize = False
        Caption = 'Geral'
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
