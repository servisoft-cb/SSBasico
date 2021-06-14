object fRelClientesRef: TfRelClientesRef
  Left = 2
  Top = 107
  Width = 791
  Height = 433
  Caption = 'fRelClientesRef'
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
    DataSource = fConsClientesRef.dsmCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 742
      Height = 559
      DataSource = fConsClientesRef.dsmCliente
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 33
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 240
          Top = 3
          Width = 262
          Height = 16
          Caption = 'Rela'#231#227'o de Clientes/Produtos Pendentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 648
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
          Left = 673
          Top = 3
          Width = 32
          Height = 13
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
        object RLSystemInfo2: TRLSystemInfo
          Left = 673
          Top = 16
          Width = 66
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 626
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
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 33
        Width = 742
        Height = 43
        BeforePrint = RLBand2BeforePrint
        object RLLabel2: TRLLabel
          Left = 16
          Top = 8
          Width = 45
          Height = 14
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 64
          Top = 8
          Width = 321
          Height = 14
          AutoSize = False
          DataField = 'Nome'
          DataSource = fConsClientesRef.dsmCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 392
          Top = 8
          Width = 94
          Height = 14
          Caption = 'Condi'#231#227'o Pagto.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 489
          Top = 8
          Width = 244
          Height = 14
          AutoSize = False
          DataField = 'NomeCondPgto'
          DataSource = fConsClientesRef.dsmCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 3
          Top = 28
          Width = 59
          Height = 14
          Caption = 'Refer'#234'ncia:'
        end
        object RLLabel5: TRLLabel
          Left = 103
          Top = 28
          Width = 40
          Height = 14
          Caption = 'Produto'
        end
        object RLLabel6: TRLLabel
          Left = 417
          Top = 28
          Width = 56
          Height = 14
          Caption = 'Peso Geral'
        end
        object RLLabel7: TRLLabel
          Left = 486
          Top = 28
          Width = 66
          Height = 14
          Caption = 'Pre'#231'o Venda'
        end
        object RLLabel8: TRLLabel
          Left = 560
          Top = 28
          Width = 81
          Height = 14
          Caption = 'Pre'#231'o M'#227'o Obra'
        end
        object RLLabel9: TRLLabel
          Left = 658
          Top = 28
          Width = 75
          Height = 14
          Caption = 'Pre'#231'o Amostra'
        end
        object RLDraw1: TRLDraw
          Left = 1
          Top = 42
          Width = 741
          Height = 1
          DrawKind = dkLine
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 76
        Width = 742
        Height = 77
        DataSource = fConsClientesRef.dsmProduto
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand3BeforePrint
          object RLDBText3: TRLDBText
            Left = 1
            Top = 0
            Width = 96
            Height = 12
            AutoSize = False
            DataField = 'Referencia'
            DataSource = fConsClientesRef.dsmProduto
          end
          object RLDBText4: TRLDBText
            Left = 101
            Top = 0
            Width = 276
            Height = 12
            AutoSize = False
            DataField = 'NomeProduto'
            DataSource = fConsClientesRef.dsmProduto
          end
          object RLDBText6: TRLDBText
            Left = 383
            Top = 0
            Width = 90
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Peso'
            DataSource = fConsClientesRef.dsmProduto
          end
          object RLDBText7: TRLDBText
            Left = 477
            Top = 0
            Width = 75
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PrecoVenda'
            DataSource = fConsClientesRef.dsmProduto
          end
          object RLDBText8: TRLDBText
            Left = 556
            Top = 0
            Width = 86
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PrecoMaoObra'
            DataSource = fConsClientesRef.dsmProduto
          end
          object RLDBText9: TRLDBText
            Left = 648
            Top = 0
            Width = 85
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PrecoMaoObra'
            DataSource = fConsClientesRef.dsmProduto
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 742
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 14
          Width = 742
          Height = 35
          DataSource = DM1.dsProdutoGrade
          object RLBand4: TRLBand
            Left = 0
            Top = 0
            Width = 742
            Height = 15
            BeforePrint = RLBand4BeforePrint
            object RLMemo1: TRLMemo
              Left = 24
              Top = 0
              Width = 713
              Height = 12
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
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 153
        Width = 742
        Height = 88
        DataSource = fConsClientesRef.dsqNotaEntrada
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 36
          BandType = btHeader
          object RLLabel11: TRLLabel
            Left = 256
            Top = 7
            Width = 213
            Height = 14
            Caption = 'Notas em aberto de mat'#233'ria prima do cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 10
            Top = 22
            Width = 36
            Height = 12
            Caption = 'N'#186' Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 111
            Top = 22
            Width = 32
            Height = 12
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 176
            Top = 22
            Width = 63
            Height = 12
            Caption = 'Nome Material'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 368
            Top = 22
            Width = 18
            Height = 12
            Caption = 'Cor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 55
            Top = 22
            Width = 52
            Height = 12
            Caption = 'Dt.Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 504
            Top = 22
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
          object RLLabel18: TRLLabel
            Left = 568
            Top = 22
            Width = 64
            Height = 12
            Caption = 'Qtd.Devolvida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 640
            Top = 22
            Width = 60
            Height = 12
            Caption = 'Qtd.Pendente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 704
            Top = 22
            Width = 37
            Height = 12
            Caption = 'Vlr.Unit.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 34
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 36
          Width = 742
          Height = 14
          object RLDBText10: TRLDBText
            Left = 1
            Top = 0
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'NumNEntr'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 55
            Top = 0
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DtEmissaoNEntr'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 110
            Top = 0
            Width = 32
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodMaterial'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 143
            Top = 0
            Width = 218
            Height = 12
            AutoSize = False
            DataField = 'lkNomeMaterial'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 362
            Top = 0
            Width = 124
            Height = 12
            AutoSize = False
            DataField = 'lkNomeCor'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 487
            Top = 0
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 556
            Top = 0
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QtdDevolvida'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 625
            Top = 0
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QtdRestante'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 694
            Top = 0
            Width = 47
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrUnit'
            DataSource = fConsClientesRef.dsqNotaEntrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw5: TRLDraw
            Left = 0
            Top = 12
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
      end
    end
  end
end
