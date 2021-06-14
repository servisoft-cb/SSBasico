object fRelPrevComissao: TfRelPrevComissao
  Left = 5
  Top = 116
  Width = 788
  Height = 435
  HorzScrollBar.Position = 47
  BorderIcons = [biSystemMenu]
  Caption = 'fRelPrevComissao'
  Color = clBtnFace
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
  object RLReport1: TRLReport
    Left = -30
    Top = 5
    Width = 794
    Height = 1123
    DataSource = fPrevPrevComissao.dsqVendedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 38
      Width = 742
      Height = 40
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel3: TRLLabel
        Left = 258
        Top = 5
        Width = 247
        Height = 15
        Caption = 'PREVIS'#195'O DE COMISS'#195'O POR VENDEDOR'
      end
      object RLLabel4: TRLLabel
        Left = 259
        Top = 23
        Width = 42
        Height = 14
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 302
        Top = 23
        Width = 143
        Height = 14
        AutoSize = False
        Caption = '01/04/2004 a 05/04/2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 596
        Top = 6
        Width = 38
        Height = 14
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 588
        Top = 23
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 635
        Top = 6
        Width = 31
        Height = 14
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 635
        Top = 23
        Width = 33
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 78
      Width = 742
      Height = 222
      DataSource = fPrevPrevComissao.dsqVendedor
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 36
        BeforePrint = RLBand2BeforePrint
        object RLDraw1: TRLDraw
          Left = 1
          Top = 2
          Width = 741
          Height = 33
        end
        object RLLabel8: TRLLabel
          Left = 8
          Top = 19
          Width = 48
          Height = 14
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 61
          Top = 19
          Width = 40
          Height = 14
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 109
          Top = 19
          Width = 28
          Height = 14
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 140
          Top = 19
          Width = 23
          Height = 14
          Caption = 'Filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 271
          Top = 19
          Width = 35
          Height = 14
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 576
          Top = 19
          Width = 48
          Height = 14
          Caption = 'Vlr. Base'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 627
          Top = 19
          Width = 40
          Height = 14
          Caption = '% Com.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 685
          Top = 19
          Width = 55
          Height = 14
          Caption = 'Vlr. Comis.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 4
          Width = 54
          Height = 14
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 64
          Top = 4
          Width = 305
          Height = 14
          AutoSize = False
          DataField = 'NomeVendedor'
          DataSource = fPrevPrevComissao.dsqVendedor
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
        Top = 97
        Width = 742
        Height = 24
        BandType = btSummary
        BeforePrint = RLBand4BeforePrint
        object RLLabel25: TRLLabel
          Left = 464
          Top = 4
          Width = 67
          Height = 15
          Alignment = taRightJustify
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 408
          Top = 1
          Width = 332
          Height = 1
        end
        object RLLabel30: TRLLabel
          Left = 651
          Top = 5
          Width = 89
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 535
          Top = 5
          Width = 89
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 36
        Width = 742
        Height = 61
        DataSource = fPrevPrevComissao.dsqPrevisao
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 19
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 1
            Top = 2
            Width = 58
            Height = 14
            AutoSize = False
            DataField = 'DtVencCReceber'
            DataSource = fPrevPrevComissao.dsqPrevisao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 61
            Top = 2
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'NumNota'
            DataSource = fPrevPrevComissao.dsqPrevisao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 270
            Top = 2
            Width = 278
            Height = 14
            AutoSize = False
            DataField = 'NomeCliente'
            DataSource = fPrevPrevComissao.dsqPrevisao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 111
            Top = 2
            Width = 28
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'ParcCReceber'
            DataSource = fPrevPrevComissao.dsqPrevisao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 668
            Top = 2
            Width = 72
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 627
            Top = 2
            Width = 40
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PercComissao'
            DataSource = fPrevPrevComissao.dsqPrevisao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 549
            Top = 2
            Width = 77
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 139
            Top = 2
            Width = 122
            Height = 14
            AutoSize = False
            DataField = 'NomeFilial'
            DataSource = fPrevPrevComissao.dsqPrevisao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 4
            Top = 17
            Width = 736
            Height = 1
            Pen.Style = psDot
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 19
          Width = 742
          Height = 21
          BandType = btSummary
          BeforePrint = RLBand5BeforePrint
          object RLLabel16: TRLLabel
            Left = 424
            Top = 4
            Width = 107
            Height = 15
            Alignment = taRightJustify
            Caption = 'Total do vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 408
            Top = 1
            Width = 331
            Height = 1
          end
          object RLLabel19: TRLLabel
            Left = 651
            Top = 5
            Width = 89
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 536
            Top = 5
            Width = 89
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0.00'
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
  end
end
