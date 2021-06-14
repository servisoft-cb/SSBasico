object fRelConsProduto: TfRelConsProduto
  Left = 39
  Top = 95
  Width = 943
  Height = 570
  VertScrollBar.Position = 8
  Caption = 'fRelConsProduto'
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
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsProduto2.dsqProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 23
      Top = 38
      Width = 748
      Height = 243
      DataSource = fConsProduto2.dsqProduto
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 41
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLLabel1: TRLLabel
          Left = 212
          Top = 1
          Width = 342
          Height = 19
          Caption = 'RELAT'#211'RIO DE CONSULTA DE PRODUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 633
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
          Left = 647
          Top = 2
          Width = 64
          Height = 12
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 618
          Top = 13
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
          Left = 663
          Top = 13
          Width = 29
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 1
          Top = 27
          Width = 35
          Height = 12
          Caption = 'C'#243'digo '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 138
          Top = 27
          Width = 75
          Height = 12
          Caption = 'Nome do produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 424
          Top = 27
          Width = 25
          Height = 12
          Caption = 'Unid.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 453
          Top = 27
          Width = 91
          Height = 12
          Caption = 'Nome do Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 38
          Top = 27
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
        object RLLabel9: TRLLabel
          Left = 599
          Top = 27
          Width = 67
          Height = 12
          Caption = 'Nome do grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 39
          Width = 748
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 696
          Top = 27
          Width = 49
          Height = 12
          Caption = 'Possui Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 41
        Width = 748
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 2
          Top = 2
          Width = 34
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Codigo'
          DataSource = fConsProduto2.dsqProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 119
          Top = 2
          Width = 306
          Height = 12
          AutoSize = False
          DataField = 'Nome'
          DataSource = fConsProduto2.dsqProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 426
          Top = 2
          Width = 26
          Height = 12
          AutoSize = False
          DataField = 'Unidade'
          DataSource = fConsProduto2.dsqProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 453
          Top = 2
          Width = 145
          Height = 12
          AutoSize = False
          DataField = 'NomeForn'
          DataSource = fConsProduto2.dsqProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 38
          Top = 2
          Width = 80
          Height = 12
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsProduto2.dsqProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 599
          Top = 2
          Width = 109
          Height = 12
          AutoSize = False
          DataField = 'NomeGrupo'
          DataSource = fConsProduto2.dsqProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 711
          Top = 2
          Width = 35
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'LancaCor'
          DataSource = fConsProduto2.dsqProduto
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
end
