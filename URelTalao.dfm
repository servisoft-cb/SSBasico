object fRelTalao: TfRelTalao
  Left = 5
  Top = 69
  Width = 789
  Height = 482
  BorderIcons = [biSystemMenu]
  Caption = 'fRelTalao'
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
    Left = 0
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsLote.dsqTalao
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
      Height = 339
      DataSource = fConsLote.dsqTalao
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 138
        BeforePrint = RLBand1BeforePrint
        object RLDraw3: TRLDraw
          Left = 0
          Top = 29
          Width = 623
          Height = 20
        end
        object RLLabel10: TRLLabel
          Left = 4
          Top = 31
          Width = 48
          Height = 16
          Caption = 'Cliente:'
        end
        object RLDBText11: TRLDBText
          Left = 118
          Top = 31
          Width = 371
          Height = 16
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = fConsLote.dsqTalao
        end
        object RLLabel1: TRLLabel
          Left = 5
          Top = 5
          Width = 63
          Height = 16
          Caption = 'Remessa:'
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 48
          Width = 623
          Height = 20
        end
        object RLLabel2: TRLLabel
          Left = 4
          Top = 50
          Width = 114
          Height = 16
          Caption = 'Ordem de Compra:'
        end
        object RLDBText1: TRLDBText
          Left = 120
          Top = 50
          Width = 147
          Height = 16
          AutoSize = False
          DataField = 'PedidoCliente'
          DataSource = fConsLote.dsqTalao
        end
        object RLLabel5: TRLLabel
          Left = 396
          Top = 50
          Width = 45
          Height = 16
          Caption = 'N'#186' OS:'
        end
        object RLDBText2: TRLDBText
          Left = 444
          Top = 50
          Width = 173
          Height = 16
          AutoSize = False
          DataField = 'NumOS'
          DataSource = fConsLote.dsqTalao
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 67
          Width = 623
          Height = 20
        end
        object RLLabel6: TRLLabel
          Left = 400
          Top = 68
          Width = 41
          Height = 16
          Caption = 'Plano:'
        end
        object RLDBText3: TRLDBText
          Left = 444
          Top = 68
          Width = 173
          Height = 21
          AutoSize = False
          DataField = 'Plano'
          DataSource = fConsLote.dsqTalao
        end
        object RLBarcode1: TRLBarcode
          Left = 628
          Top = 16
          Width = 104
          Height = 39
          BarcodeType = bcEAN13
          Caption = '123456789012'
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
        end
        object RLLabel7: TRLLabel
          Left = 637
          Top = 69
          Width = 93
          Height = 16
          Alignment = taCenter
          AutoSize = False
        end
        object RLLabel8: TRLLabel
          Left = 4
          Top = 69
          Width = 102
          Height = 16
          Caption = 'Data de Entrega:'
        end
        object RLDBText4: TRLDBText
          Left = 108
          Top = 69
          Width = 85
          Height = 16
          AutoSize = False
          DataField = 'DtReprogramacao'
          DataSource = fConsLote.dsqTalao
        end
        object RLLabel9: TRLLabel
          Left = 228
          Top = 69
          Width = 86
          Height = 16
          Caption = 'F'#225'brica/Setor:'
        end
        object RLDBText5: TRLDBText
          Left = 316
          Top = 69
          Width = 61
          Height = 16
          AutoSize = False
          DataField = 'Fabrica'
          DataSource = fConsLote.dsqTalao
        end
        object RLLabel11: TRLLabel
          Left = 4
          Top = 95
          Width = 93
          Height = 16
          Caption = 'Refer'#234'ncia/Cor:'
        end
        object RLDBText6: TRLDBText
          Left = 100
          Top = 95
          Width = 109
          Height = 16
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsLote.dsqTalao
        end
        object RLLabel12: TRLLabel
          Left = 212
          Top = 95
          Width = 8
          Height = 16
          Caption = '/'
        end
        object RLDBText7: TRLDBText
          Left = 494
          Top = 95
          Width = 67
          Height = 16
          AutoSize = False
          DataField = 'lkNomeCor'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText8: TRLDBText
          Left = 222
          Top = 95
          Width = 259
          Height = 16
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fConsLote.dsqTalao
        end
        object RLLabel13: TRLLabel
          Left = 483
          Top = 95
          Width = 8
          Height = 16
          Caption = '/'
        end
        object RLDraw1: TRLDraw
          Left = 1
          Top = 111
          Width = 746
          Height = 3
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 604
          Top = 112
          Width = 143
          Height = 21
        end
        object RLLabel3: TRLLabel
          Left = 608
          Top = 116
          Width = 58
          Height = 14
          Caption = 'Qtd. Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 669
          Top = 116
          Width = 71
          Height = 14
          DataField = 'QtdRestante'
          DataSource = fConsLote.dsqTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 4
          Top = 119
          Width = 26
          Height = 14
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 33
          Top = 119
          Width = 564
          Height = 14
          DataField = 'lkObsTalao'
          DataSource = fConsLote.dsqTalao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 0
          Top = 135
          Width = 748
          Height = 3
          Align = faBottom
          DrawKind = dkLine
        end
        object RLDBText15: TRLDBText
          Left = 54
          Top = 31
          Width = 59
          Height = 16
          AutoSize = False
          DataField = 'CodCliente'
          DataSource = fConsLote.dsqTalao
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 138
        Width = 748
        Height = 46
        DataSource = fConsLote.dsTalaoGrade
        BeforePrint = RLSubDetail1BeforePrint
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 0
          Width = 748
          Height = 39
          ColCount = 19
          object RLDBText9: TRLDBText
            Left = 3
            Top = 4
            Width = 34
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'Tamanho'
            DataSource = fConsLote.dsTalaoGrade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw5: TRLDraw
            Left = 2
            Top = 19
            Width = 34
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText10: TRLDBText
            Left = 2
            Top = 22
            Width = 34
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'QtdRestante'
            DataSource = fConsLote.dsTalaoGrade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 184
        Width = 748
        Height = 54
        DataSource = DM1.dsProdutoMat
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 748
          Height = 26
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLLabel14: TRLLabel
            Left = 4
            Top = 8
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
            Top = 8
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
          object RLDraw7: TRLDraw
            Left = 0
            Top = 24
            Width = 748
            Height = 2
            Align = faBottom
            DrawKind = dkLine
          end
          object RLLabel16: TRLLabel
            Left = 697
            Top = 9
            Width = 48
            Height = 14
            Caption = 'Consumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 636
            Top = 9
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
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 26
          Width = 748
          Height = 18
          BeforePrint = RLBand4BeforePrint
          object RLDBText13: TRLDBText
            Left = 1
            Top = 0
            Width = 48
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodMaterial'
            DataSource = DM1.dsProdutoMat
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 50
            Top = 1
            Width = 573
            Height = 14
            AutoSize = False
            Caption = 'Nome Material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 697
            Top = 1
            Width = 48
            Height = 14
            Alignment = taRightJustify
            Caption = 'Consumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw8: TRLDraw
            Left = 0
            Top = 16
            Width = 748
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText14: TRLDBText
            Left = 633
            Top = 0
            Width = 36
            Height = 15
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = DM1.dsProdutoMat
          end
        end
      end
    end
  end
  object Barcode1: TBarcode
    Height = 49
    Top = 8
    Left = 32
    Modul = 1
    Ratio = 2.000000000000000000
    Typ = bcCodeEAN13
    Checksum = True
  end
end
