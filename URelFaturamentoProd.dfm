object fRelFaturamentoProd: TfRelFaturamentoProd
  Left = 51
  Top = 115
  Width = 870
  Height = 476
  Caption = 'fRelFaturamentoProd'
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
    Left = 24
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsFaturamento.dsmDetalhado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 85
      Width = 742
      Height = 304
      DataSource = fConsFaturamento.dsmDetalhado
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 129
        DataFields = 'TipoDoc'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 24
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLLabel10: TRLLabel
            Left = 80
            Top = 4
            Width = 71
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 24
          Width = 742
          Height = 15
          object RLDBText1: TRLDBText
            Left = 2
            Top = 0
            Width = 42
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodProduto'
            DataSource = fConsFaturamento.dsmDetalhado
          end
          object RLDBText2: TRLDBText
            Left = 46
            Top = 0
            Width = 253
            Height = 12
            AutoSize = False
            DataField = 'NomeProduto'
            DataSource = fConsFaturamento.dsmDetalhado
          end
          object RLDBText3: TRLDBText
            Left = 300
            Top = 0
            Width = 87
            Height = 12
            AutoSize = False
            DataField = 'Referencia'
            DataSource = fConsFaturamento.dsmDetalhado
          end
          object RLDBText4: TRLDBText
            Left = 388
            Top = 0
            Width = 122
            Height = 12
            AutoSize = False
            DataField = 'NomeCor'
            DataSource = fConsFaturamento.dsmDetalhado
          end
          object RLDBText5: TRLDBText
            Left = 546
            Top = 0
            Width = 34
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrTotal'
            DataSource = fConsFaturamento.dsmDetalhado
          end
          object RLDBText6: TRLDBText
            Left = 611
            Top = 0
            Width = 58
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrDuplicatas'
            DataSource = fConsFaturamento.dsmDetalhado
          end
          object RLDBText7: TRLDBText
            Left = 700
            Top = 0
            Width = 41
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrTransf'
            DataSource = fConsFaturamento.dsmDetalhado
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 39
          Width = 742
          Height = 15
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object RLLabel16: TRLLabel
            Left = 448
            Top = 1
            Width = 26
            Height = 12
            Alignment = taRightJustify
            Caption = 'Total:'
          end
          object RLDBResult1: TRLDBResult
            Left = 519
            Top = 1
            Width = 62
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrTotal'
            DataSource = fConsFaturamento.dsmDetalhado
            DisplayMask = '###,###,##0.00'
            Info = riSum
          end
          object RLDBResult2: TRLDBResult
            Left = 584
            Top = 1
            Width = 86
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrDuplicatas'
            DataSource = fConsFaturamento.dsmDetalhado
            DisplayMask = '###,###,##0.00'
            Info = riSum
          end
          object RLDBResult3: TRLDBResult
            Left = 672
            Top = 1
            Width = 69
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrTransf'
            DataSource = fConsFaturamento.dsmDetalhado
            DisplayMask = '###,###,##0.00'
            Info = riSum
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 0
            Width = 742
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 129
        Width = 742
        Height = 15
        BandType = btSummary
        object RLLabel11: TRLLabel
          Left = 423
          Top = 1
          Width = 51
          Height = 12
          Alignment = taRightJustify
          Caption = 'Total Geral:'
        end
        object RLDBResult4: TRLDBResult
          Left = 517
          Top = 1
          Width = 62
          Height = 12
          Alignment = taRightJustify
          DataField = 'VlrTotal'
          DataSource = fConsFaturamento.dsmDetalhado
          DisplayMask = '###,###,##0.00'
          Info = riSum
        end
        object RLDBResult5: TRLDBResult
          Left = 584
          Top = 1
          Width = 86
          Height = 12
          Alignment = taRightJustify
          DataField = 'VlrDuplicatas'
          DataSource = fConsFaturamento.dsmDetalhado
          DisplayMask = '###,###,##0.00'
          Info = riSum
        end
        object RLDBResult6: TRLDBResult
          Left = 672
          Top = 1
          Width = 69
          Height = 12
          Alignment = taRightJustify
          DataField = 'VlrTransf'
          DataSource = fConsFaturamento.dsmDetalhado
          DisplayMask = '###,###,##0.00'
          Info = riSum
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 742
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
    end
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 59
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 96
        Top = 5
        Width = 457
        Height = 16
        Caption = 'RELAT'#211'RIO FATURAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 641
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
        Left = 661
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
        Left = 626
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
        Left = 661
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
        Top = 45
        Width = 35
        Height = 12
        Caption = 'Produto'
      end
      object RLLabel3: TRLLabel
        Left = 300
        Top = 45
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel4: TRLLabel
        Left = 392
        Top = 45
        Width = 18
        Height = 12
        Caption = 'Cor'
      end
      object RLLabel5: TRLLabel
        Left = 540
        Top = 45
        Width = 37
        Height = 12
        Caption = 'Vlr.Total'
      end
      object RLLabel6: TRLLabel
        Left = 614
        Top = 45
        Width = 56
        Height = 12
        Caption = 'Vlr.Duplicata'
      end
      object RLLabel7: TRLLabel
        Left = 694
        Top = 45
        Width = 47
        Height = 12
        Caption = 'Vlr.Transf.'
      end
      object RLLabel8: TRLLabel
        Left = 1
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
      object RLLabel9: TRLLabel
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
      object RLDraw1: TRLDraw
        Left = 0
        Top = 57
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
end
