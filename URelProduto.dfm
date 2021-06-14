object fRelProduto: TfRelProduto
  Left = 72
  Top = 103
  Width = 833
  Height = 776
  Caption = 'fRelProduto'
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
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fPrevProduto.dsqProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 9.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 26
      Top = 34
      Width = 742
      Height = 35
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 264
        Top = 3
        Width = 181
        Height = 19
        Caption = 'Relat'#243'rio dos Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 643
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 666
        Top = 2
        Width = 32
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 623
        Top = 15
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 666
        Top = 15
        Width = 64
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
      object RLLabel14: TRLLabel
        Left = 0
        Top = 23
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
      object RLLabel15: TRLLabel
        Left = 27
        Top = 23
        Width = 38
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 33
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 69
      Width = 742
      Height = 290
      DataSource = fPrevProduto.dsqProduto
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 217
        DataFields = 'NomeGrupo'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 32
          BandType = btHeader
          BeforePrint = RLBand2BeforePrint
          object RLLabel2: TRLLabel
            Left = 8
            Top = 4
            Width = 35
            Height = 11
            Caption = 'Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 45
            Top = 4
            Width = 58
            Height = 11
            DataField = 'NomeGrupo'
            DataSource = fPrevProduto.dsqProduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 1
            Top = 18
            Width = 32
            Height = 12
            Caption = 'C'#243'digo'
          end
          object RLLabel4: TRLLabel
            Left = 132
            Top = 18
            Width = 63
            Height = 12
            Caption = 'Nome Produto'
          end
          object RLLabel5: TRLLabel
            Left = 444
            Top = 18
            Width = 25
            Height = 12
            Caption = 'Unid.'
          end
          object RLLabel6: TRLLabel
            Left = 470
            Top = 18
            Width = 50
            Height = 12
            Caption = 'Fornecedor'
          end
          object RLLabel7: TRLLabel
            Left = 593
            Top = 6
            Width = 31
            Height = 12
            Caption = 'Possui'
          end
          object RLLabel8: TRLLabel
            Left = 599
            Top = 18
            Width = 18
            Height = 12
            Caption = 'Cor'
          end
          object RLLabel9: TRLLabel
            Left = 628
            Top = 6
            Width = 27
            Height = 12
            Caption = 'Pre'#231'o'
          end
          object RLLabel10: TRLLabel
            Left = 624
            Top = 18
            Width = 35
            Height = 12
            Caption = 'Por Cor'
          end
          object RLLabel11: TRLLabel
            Left = 660
            Top = 6
            Width = 31
            Height = 12
            Caption = 'Possui'
          end
          object RLLabel12: TRLLabel
            Left = 661
            Top = 18
            Width = 28
            Height = 12
            Caption = 'Grade'
          end
          object RLLabel13: TRLLabel
            Left = 712
            Top = 18
            Width = 27
            Height = 12
            Caption = 'Pre'#231'o'
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 30
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
          end
          object RLLabel16: TRLLabel
            Left = 37
            Top = 18
            Width = 49
            Height = 12
            Caption = 'Refer'#234'ncia'
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 32
          Width = 742
          Height = 14
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 0
            Top = 1
            Width = 32
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'Codigo'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText3: TRLDBText
            Left = 131
            Top = 1
            Width = 311
            Height = 11
            AutoSize = False
            DataField = 'NomeProduto'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText4: TRLDBText
            Left = 443
            Top = 1
            Width = 24
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText5: TRLDBText
            Left = 470
            Top = 1
            Width = 124
            Height = 11
            AutoSize = False
            DataField = 'NomeForn'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText6: TRLDBText
            Left = 595
            Top = 1
            Width = 26
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'LancaCor'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText7: TRLDBText
            Left = 627
            Top = 1
            Width = 26
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'PrecoCor'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText8: TRLDBText
            Left = 661
            Top = 1
            Width = 26
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'LancaGrade'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDBText9: TRLDBText
            Left = 689
            Top = 1
            Width = 52
            Height = 12
            Alignment = taRightJustify
            DataField = 'PrecoCusto'
            DataSource = fPrevProduto.dsqProduto
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 12
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText10: TRLDBText
            Left = 34
            Top = 1
            Width = 95
            Height = 11
            AutoSize = False
            DataField = 'Referencia'
            DataSource = fPrevProduto.dsqProduto
          end
        end
      end
    end
  end
end
