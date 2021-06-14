object fRelUltCompras: TfRelUltCompras
  Left = 13
  Top = 38
  Width = 778
  Height = 512
  HorzScrollBar.Position = 57
  Caption = 'fRelUltCompras'
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
    Left = -41
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsUltCompras.dsqNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 38
      Width = 734
      Height = 387
      DataSource = fConsUltCompras.dsqNotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 48
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLLabel1: TRLLabel
          Left = 120
          Top = 8
          Width = 473
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Relat'#243'rio das Compras'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 654
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
          Left = 673
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
          Left = 639
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
          Left = 673
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
          Left = 0
          Top = 33
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
        object RLLabel3: TRLLabel
          Left = 33
          Top = 33
          Width = 50
          Height = 12
          Caption = 'Fornecedor'
        end
        object RLLabel4: TRLLabel
          Left = 377
          Top = 33
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
        object RLLabel5: TRLLabel
          Left = 413
          Top = 33
          Width = 35
          Height = 12
          Caption = 'Material'
        end
        object RLLabel6: TRLLabel
          Left = 656
          Top = 33
          Width = 21
          Height = 12
          Caption = 'Qtd.'
        end
        object RLLabel7: TRLLabel
          Left = 578
          Top = 33
          Width = 49
          Height = 12
          Caption = 'Vlr.Unit'#225'rio'
        end
        object RLLabel8: TRLLabel
          Left = 327
          Top = 33
          Width = 48
          Height = 12
          Caption = 'Dt.Entrada'
        end
        object RLLabel9: TRLLabel
          Left = 279
          Top = 33
          Width = 36
          Height = 12
          Caption = 'N'#186' Nota'
        end
        object RLLabel10: TRLLabel
          Left = 696
          Top = 33
          Width = 37
          Height = 12
          Caption = 'Vlr.Total'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 46
          Width = 734
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 48
        Width = 734
        Height = 15
        object RLDBText1: TRLDBText
          Left = 0
          Top = 1
          Width = 33
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodForn'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText2: TRLDBText
          Left = 34
          Top = 1
          Width = 227
          Height = 12
          AutoSize = False
          DataField = 'NomeForn'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText3: TRLDBText
          Left = 262
          Top = 1
          Width = 51
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumNota'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText4: TRLDBText
          Left = 314
          Top = 1
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtMov'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText5: TRLDBText
          Left = 363
          Top = 1
          Width = 34
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodMaterial'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText6: TRLDBText
          Left = 398
          Top = 1
          Width = 181
          Height = 12
          AutoSize = False
          DataField = 'NomeMaterial'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText7: TRLDBText
          Left = 580
          Top = 1
          Width = 48
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrUnitario'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText8: TRLDBText
          Left = 629
          Top = 1
          Width = 48
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qtd'
          DataSource = fConsUltCompras.dsqNotas
        end
        object RLDBText9: TRLDBText
          Left = 678
          Top = 1
          Width = 55
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'clVlrTotal'
          DataSource = fConsUltCompras.dsqNotas
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 63
        Width = 734
        Height = 15
        BandType = btSummary
        object RLLabel11: TRLLabel
          Left = 544
          Top = 2
          Width = 75
          Height = 11
          Caption = 'Total Geral ===>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 658
          Top = 2
          Width = 75
          Height = 11
          Alignment = taRightJustify
          DataField = 'clVlrTotal'
          DataSource = fConsUltCompras.dsqNotas
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
    end
  end
end
