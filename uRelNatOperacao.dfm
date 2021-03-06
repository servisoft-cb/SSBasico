object fRelNatOperacao: TfRelNatOperacao
  Left = 10
  Top = 65
  Width = 812
  Height = 500
  Caption = 'fRelNatOperacao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 48
    Width = 794
    Height = 1123
    DataSource = fPrevNatOperacao.dsmTotal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 315
      DataSource = fPrevNatOperacao.dsmTotal
      object RLBand1: TRLBand
        Left = 0
        Top = 61
        Width = 718
        Height = 21
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 8
          Top = 2
          Width = 56
          Height = 14
          AutoSize = False
          DataField = 'CodFiscal'
          DataSource = fPrevNatOperacao.dsmTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 225
          Top = 2
          Width = 95
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdTotal'
          DataSource = fPrevNatOperacao.dsmTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = -1
          Top = 17
          Width = 719
          Height = 3
          DrawKind = dkLine
        end
        object RLDBText11: TRLDBText
          Left = 427
          Top = 3
          Width = 56
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CodNatOper'
          DataSource = fPrevNatOperacao.dsmTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 82
        Width = 718
        Height = 111
        DataSource = fPrevNatOperacao.dsqNotaFiscal
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          object RLDBText2: TRLDBText
            Left = 32
            Top = 0
            Width = 23
            Height = 12
            AutoSize = False
            DataField = 'Filial'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 61
            Top = 0
            Width = 51
            Height = 12
            AutoSize = False
            DataField = 'NumNota'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 116
            Top = 0
            Width = 60
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DtEmissao'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 177
            Top = 0
            Width = 40
            Height = 12
            AutoSize = False
            DataField = 'CodProduto'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 218
            Top = 0
            Width = 26
            Height = 12
            AutoSize = False
            DataField = 'Unidade'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 246
            Top = 0
            Width = 73
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 321
            Top = 0
            Width = 223
            Height = 12
            AutoSize = False
            DataField = 'Descricao'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 32
            Top = 12
            Width = 686
            Height = 3
            DrawKind = dkLine
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Pen.Style = psDot
          end
          object RLDBText10: TRLDBText
            Left = 548
            Top = 0
            Width = 166
            Height = 12
            AutoSize = False
            DataField = 'Nome'
            DataSource = fPrevNatOperacao.dsqNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 61
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 8
          Top = 23
          Width = 70
          Height = 14
          Caption = 'Nat.Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 32
          Top = 42
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
        object RLLabel3: TRLLabel
          Left = 60
          Top = 43
          Width = 52
          Height = 14
          Caption = 'N'#250'm. Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 117
          Top = 43
          Width = 59
          Height = 14
          Caption = 'Dt. Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 179
          Top = 43
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
        object RLLabel6: TRLLabel
          Left = 217
          Top = 43
          Width = 27
          Height = 14
          Caption = 'Unid.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 282
          Top = 43
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Quant.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 326
          Top = 43
          Width = 40
          Height = 14
          Caption = 'Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 287
          Top = 22
          Width = 29
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 39
          Width = 717
          Height = 3
          DrawKind = dkLine
        end
        object RLDraw2: TRLDraw
          Left = 29
          Top = 58
          Width = 689
          Height = 3
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 547
          Top = 43
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
        object RLLabel11: TRLLabel
          Left = 224
          Top = 5
          Width = 259
          Height = 15
          Caption = 'Relat'#243'rio de Notas por Natureza de Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 448
          Top = 22
          Width = 36
          Height = 14
          Alignment = taRightJustify
          Caption = 'Interno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
