object fRelOrcamentoMail: TfRelOrcamentoMail
  Left = 13
  Top = 104
  Width = 781
  Height = 463
  HorzScrollBar.Position = 26
  BorderIcons = [biSystemMenu]
  Caption = 'fRelOrcamentoMail'
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
    Left = -25
    Top = 10
    Width = 794
    Height = 1123
    DataSource = DM1.dsOrcamento
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
      Height = 1045
      DataSource = DM1.dsOrcamento
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 262
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLDraw4: TRLDraw
          Left = 1
          Top = 0
          Width = 194
          Height = 122
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 240
          Width = 718
          Height = 21
        end
        object RLDBText7: TRLDBText
          Left = 372
          Top = 124
          Width = 192
          Height = 18
          AutoSize = False
          DataField = 'Data'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 40
          Top = 153
          Width = 21
          Height = 19
          Caption = 'A:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 24
          Top = 213
          Width = 37
          Height = 19
          Caption = 'A/C:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 64
          Top = 154
          Width = 625
          Height = 18
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 64
          Top = 214
          Width = 625
          Height = 18
          AutoSize = False
          DataField = 'NomeContato'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 5
          Top = 243
          Width = 73
          Height = 16
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 96
          Top = 243
          Width = 115
          Height = 16
          Caption = 'Nome do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 565
          Top = 243
          Width = 67
          Height = 16
          Caption = 'V.Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 466
          Top = 243
          Width = 37
          Height = 16
          Caption = 'Unid.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 529
          Top = 243
          Width = 30
          Height = 16
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 110
          Top = 124
          Width = 252
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'Cidade'
          DataSource = DM1.dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 656
          Top = 243
          Width = 58
          Height = 16
          Caption = 'Vlr.Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 72
          Top = 177
          Width = 37
          Height = 16
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 64
          Top = 196
          Width = 45
          Height = 16
          Caption = 'E-Mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 112
          Top = 177
          Width = 393
          Height = 15
          AutoSize = False
          DataField = 'Fone'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 112
          Top = 196
          Width = 578
          Height = 15
          AutoSize = False
          DataField = 'EMail'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 305
          Top = 243
          Width = 53
          Height = 16
          Caption = 'Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 589
          Top = 124
          Width = 46
          Height = 18
          Caption = 'Frete:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 393
          Top = 243
          Width = 64
          Height = 16
          Caption = 'Tamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw12: TRLDraw
          Left = 200
          Top = 0
          Width = 518
          Height = 121
        end
        object RLLabel3: TRLLabel
          Left = 224
          Top = 5
          Width = 131
          Height = 19
          Caption = 'OR'#199'AMENTO N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 526
          Top = 6
          Width = 90
          Height = 16
          Caption = 'Data Emiss'#227'o:'
        end
        object RLDBText10: TRLDBText
          Left = 361
          Top = 5
          Width = 124
          Height = 19
          DataField = 'NumOrcamento'
          DataSource = DM1.dsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 630
          Top = 6
          Width = 31
          Height = 16
          DataField = 'Data'
          DataSource = DM1.dsOrcamento
        end
        object RLDraw5: TRLDraw
          Left = 201
          Top = 25
          Width = 516
          Height = 1
          Pen.Style = psDot
        end
        object RLLabel37: TRLLabel
          Left = 205
          Top = 30
          Width = 508
          Height = 16
          AutoSize = False
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 205
          Top = 63
          Width = 404
          Height = 13
          AutoSize = False
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 205
          Top = 49
          Width = 410
          Height = 13
          AutoSize = False
          Caption = 'Endereco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 205
          Top = 90
          Width = 30
          Height = 14
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 515
          Top = 91
          Width = 24
          Height = 14
          Caption = 'Fax:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 618
          Top = 49
          Width = 25
          Height = 14
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 466
          Top = 77
          Width = 73
          Height = 14
          Caption = 'Insc. Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel47: TRLLabel
          Left = 204
          Top = 77
          Width = 31
          Height = 14
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel48: TRLLabel
          Left = 238
          Top = 91
          Width = 139
          Height = 13
          AutoSize = False
          Caption = 'Tel.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 540
          Top = 91
          Width = 117
          Height = 13
          AutoSize = False
          Caption = 'Fax:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel51: TRLLabel
          Left = 645
          Top = 49
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel52: TRLLabel
          Left = 237
          Top = 77
          Width = 211
          Height = 13
          AutoSize = False
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel53: TRLLabel
          Left = 540
          Top = 77
          Width = 171
          Height = 13
          AutoSize = False
          Caption = 'Insc. Estadual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLImage1: TRLImage
          Left = 7
          Top = 2
          Width = 180
          Height = 110
          Stretch = True
        end
        object RLLabel4: TRLLabel
          Left = 637
          Top = 125
          Width = 37
          Height = 16
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 262
        Width = 718
        Height = 96
        DataSource = DM1.dsOrcamentoItens
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 71
          BeforePrint = RLBand2BeforePrint
          object RLDBText11: TRLDBText
            Left = 3
            Top = 2
            Width = 90
            Height = 16
            AutoSize = False
            DataField = 'Referencia'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 94
            Top = 2
            Width = 620
            Height = 16
            AutoSize = False
            DataField = 'NomeProduto'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 563
            Top = 21
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrUnitario'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 469
            Top = 21
            Width = 30
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 500
            Top = 21
            Width = 61
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 635
            Top = 21
            Width = 79
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrTotal'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 55
            Top = 38
            Width = 33
            Height = 16
            Caption = 'Tam:'
          end
          object Tam1: TRLLabel
            Left = 95
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam2: TRLLabel
            Left = 133
            Top = 39
            Width = 44
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam3: TRLLabel
            Left = 180
            Top = 39
            Width = 43
            Height = 13
            Alignment = taCenter
          end
          object Tam4: TRLLabel
            Left = 227
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam5: TRLLabel
            Left = 272
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam6: TRLLabel
            Left = 317
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam7: TRLLabel
            Left = 362
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam8: TRLLabel
            Left = 407
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam9: TRLLabel
            Left = 452
            Top = 39
            Width = 30
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam10: TRLLabel
            Left = 494
            Top = 39
            Width = 36
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam11: TRLLabel
            Left = 539
            Top = 39
            Width = 36
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam12: TRLLabel
            Left = 584
            Top = 39
            Width = 36
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam13: TRLLabel
            Left = 629
            Top = 39
            Width = 36
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam14: TRLLabel
            Left = 674
            Top = 39
            Width = 36
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 59
            Top = 55
            Width = 29
            Height = 16
            Caption = 'Qtd:'
          end
          object Qtd1: TRLLabel
            Left = 89
            Top = 55
            Width = 42
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd2: TRLLabel
            Left = 133
            Top = 55
            Width = 44
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd3: TRLLabel
            Left = 189
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd4: TRLLabel
            Left = 229
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd5: TRLLabel
            Left = 274
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd6: TRLLabel
            Left = 319
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd7: TRLLabel
            Left = 364
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd8: TRLLabel
            Left = 409
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd9: TRLLabel
            Left = 454
            Top = 55
            Width = 26
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd10: TRLLabel
            Left = 496
            Top = 55
            Width = 32
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd11: TRLLabel
            Left = 541
            Top = 55
            Width = 32
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd12: TRLLabel
            Left = 586
            Top = 55
            Width = 32
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd13: TRLLabel
            Left = 631
            Top = 55
            Width = 32
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd14: TRLLabel
            Left = 676
            Top = 55
            Width = 32
            Height = 14
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw3: TRLDraw
            Left = 3
            Top = 90
            Width = 712
            Height = 2
            Pen.Style = psDot
            SecondHoldStyle = hsHorizontally
          end
          object RLDBText25: TRLDBText
            Left = 245
            Top = 21
            Width = 140
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'PrazoEntrega'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 395
            Top = 21
            Width = 62
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'Tamanho'
            DataSource = DM1.dsOrcamentoItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 358
        Width = 718
        Height = 250
        DataSource = DM1.dsOrcamento
        Positioning = btSummary
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 104
          BeforePrint = RLBand3BeforePrint
          object RLLabel15: TRLLabel
            Left = 4
            Top = 31
            Width = 61
            Height = 14
            Caption = 'Prazo Pgto.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 67
            Top = 31
            Width = 428
            Height = 14
            AutoSize = False
            DataField = 'PrazoPagto'
            DataSource = DM1.dsOrcamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 66
            Width = 717
            Height = 1
          end
          object RLLabel16: TRLLabel
            Left = 8
            Top = 68
            Width = 89
            Height = 16
            Caption = 'Observa'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 2
            Top = 2
            Width = 146
            Height = 16
            Caption = 'Or'#231'amento v'#225'lido por:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 151
            Top = 3
            Width = 28
            Height = 16
            AutoSize = False
            DataField = 'QtdDiasValidade'
            DataSource = DM1.dsOrcamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 182
            Top = 2
            Width = 34
            Height = 16
            Caption = 'dias.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 11
            Top = 86
            Width = 686
            Height = 15
            DataField = 'Obs'
            DataSource = DM1.dsOrcamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 11
            Top = 46
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
          object RLLabel24: TRLLabel
            Left = 67
            Top = 46
            Width = 470
            Height = 14
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 516
            Top = 3
            Width = 65
            Height = 14
            Caption = 'Valor Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw6: TRLDraw
            Left = 515
            Top = 0
            Width = 200
            Height = 2
            DrawKind = dkLine
          end
          object RLDBText2: TRLDBText
            Left = 584
            Top = 2
            Width = 129
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VlrTotal'
            DataSource = DM1.dsOrcamento
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
