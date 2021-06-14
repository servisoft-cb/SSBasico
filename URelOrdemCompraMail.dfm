object fRelOrdemCompraMail: TfRelOrdemCompraMail
  Left = 5
  Top = 91
  Width = 867
  Height = 569
  VertScrollBar.Position = 264
  BorderIcons = [biSystemMenu]
  Caption = 'fRelOrdemCompraMail'
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
    Left = 4
    Top = -261
    Width = 794
    Height = 1123
    DataSource = DM1.dsOrdemCompra
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
      Height = 891
      DataSource = DM1.dsOrdemCompra
      BeforePrint = RLSubDetail1BeforePrint
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 118
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLDraw13: TRLDraw
          Left = 0
          Top = 0
          Width = 189
          Height = 115
        end
        object RLDraw12: TRLDraw
          Left = 200
          Top = 0
          Width = 518
          Height = 115
        end
        object RLLabel3: TRLLabel
          Left = 224
          Top = 5
          Width = 175
          Height = 19
          Caption = 'Ordem de Compra  N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 526
          Top = 6
          Width = 90
          Height = 16
          Caption = 'Data Emiss'#227'o:'
        end
        object RLDBText10: TRLDBText
          Left = 401
          Top = 5
          Width = 60
          Height = 19
          DataField = 'Codigo'
          DataSource = DM1.dsOrdemCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 630
          Top = 6
          Width = 68
          Height = 16
          DataField = 'DtEmissao'
          DataSource = DM1.dsOrdemCompra
        end
        object RLDraw2: TRLDraw
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
          Left = 5
          Top = 2
          Width = 180
          Height = 110
          Stretch = True
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 118
        Width = 718
        Height = 79
        DataSource = DM1.dsFornecedores
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 72
          object RLLabel9: TRLLabel
            Left = 7
            Top = 3
            Width = 73
            Height = 16
            Caption = 'Fornecedor:'
          end
          object RLLabel10: TRLLabel
            Left = 17
            Top = 20
            Width = 63
            Height = 16
            Caption = 'Endere'#231'o:'
          end
          object RLLabel11: TRLLabel
            Left = 38
            Top = 37
            Width = 42
            Height = 16
            Caption = 'Bairro:'
          end
          object RLLabel12: TRLLabel
            Left = 32
            Top = 54
            Width = 48
            Height = 16
            Caption = 'Cidade:'
          end
          object RLLabel13: TRLLabel
            Left = 458
            Top = 3
            Width = 29
            Height = 16
            Caption = 'Tel.:'
          end
          object RLLabel14: TRLLabel
            Left = 452
            Top = 20
            Width = 35
            Height = 16
            Caption = 'CEP:'
          end
          object RLLabel15: TRLLabel
            Left = 438
            Top = 37
            Width = 49
            Height = 16
            Caption = 'Estado:'
          end
          object RLDBText12: TRLDBText
            Left = 84
            Top = 3
            Width = 70
            Height = 16
            DataField = 'NomeForn'
            DataSource = DM1.dsFornecedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 84
            Top = 20
            Width = 53
            Height = 16
            DataField = 'EndForn'
            DataSource = DM1.dsFornecedores
          end
          object RLDBText14: TRLDBText
            Left = 84
            Top = 37
            Width = 64
            Height = 16
            DataField = 'BairroForn'
            DataSource = DM1.dsFornecedores
          end
          object RLDBText15: TRLDBText
            Left = 84
            Top = 54
            Width = 54
            Height = 16
            DataField = 'lkCidade'
            DataSource = DM1.dsFornecedores
          end
          object RLDBText16: TRLDBText
            Left = 494
            Top = 3
            Width = 54
            Height = 16
            DataField = 'Tel1Forn'
            DataSource = DM1.dsFornecedores
          end
          object RLDBText17: TRLDBText
            Left = 494
            Top = 20
            Width = 57
            Height = 16
            DataField = 'CEPForn'
            DataSource = DM1.dsFornecedores
          end
          object RLDBText18: TRLDBText
            Left = 494
            Top = 37
            Width = 71
            Height = 16
            DataField = 'EstadoForn'
            DataSource = DM1.dsFornecedores
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 71
            Width = 718
            Height = 1
            Align = faBottom
            DrawKind = dkLine
          end
          object RLDraw10: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 1
            Align = faTop
            Pen.Style = psDot
          end
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 197
        Width = 718
        Height = 101
        DataSource = DM1.dsOrdemCompra
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 100
          object RLLabel16: TRLLabel
            Left = 6
            Top = 3
            Width = 94
            Height = 16
            Caption = 'Transportadora:'
          end
          object RLLabel17: TRLLabel
            Left = 37
            Top = 21
            Width = 63
            Height = 16
            Caption = 'Endere'#231'o:'
          end
          object RLLabel18: TRLLabel
            Left = 52
            Top = 39
            Width = 48
            Height = 16
            Caption = 'Cidade:'
          end
          object RLLabel19: TRLLabel
            Left = 430
            Top = 3
            Width = 56
            Height = 16
            Caption = 'Telefone:'
          end
          object RLLabel20: TRLLabel
            Left = 451
            Top = 21
            Width = 35
            Height = 16
            Caption = 'CEP:'
          end
          object RLLabel21: TRLLabel
            Left = 437
            Top = 39
            Width = 49
            Height = 16
            Caption = 'Estado:'
          end
          object RLDBText19: TRLDBText
            Left = 102
            Top = 3
            Width = 87
            Height = 16
            DataField = 'lkNomeTransp'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDBText20: TRLDBText
            Left = 102
            Top = 21
            Width = 76
            Height = 16
            DataField = 'lkEndTransp'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDBText21: TRLDBText
            Left = 102
            Top = 39
            Width = 72
            Height = 16
            DataField = 'lkCidTransp'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDBText22: TRLDBText
            Left = 488
            Top = 3
            Width = 82
            Height = 16
            DataField = 'lkFoneTransp'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDBText23: TRLDBText
            Left = 488
            Top = 21
            Width = 76
            Height = 16
            DataField = 'lkCepTransp'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDBText24: TRLDBText
            Left = 488
            Top = 39
            Width = 65
            Height = 16
            DataField = 'lkUfTransp'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDraw4: TRLDraw
            Left = 1
            Top = 57
            Width = 716
            Height = 1
            DrawKind = dkLine
          end
          object RLLabel22: TRLLabel
            Left = 6
            Top = 62
            Width = 171
            Height = 16
            Caption = 'Condi'#231#245'es de Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 11
            Top = 80
            Width = 13
            Height = 14
            Caption = 'It.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 36
            Top = 80
            Width = 99
            Height = 14
            Caption = 'Nome do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 473
            Top = 80
            Width = 28
            Height = 14
            Caption = '% IPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 289
            Top = 80
            Width = 96
            Height = 14
            Caption = 'Prazo de Entrega'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 408
            Top = 80
            Width = 25
            Height = 14
            Caption = 'Qtd.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 446
            Top = 80
            Width = 20
            Height = 14
            Caption = 'Un.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 562
            Top = 80
            Width = 49
            Height = 14
            Caption = 'Vlr. Unit.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 621
            Top = 80
            Width = 52
            Height = 14
            Caption = 'Vlr. Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 179
            Top = 62
            Width = 78
            Height = 16
            DataField = 'lkCondsPgto'
            DataSource = DM1.dsOrdemCompra
          end
          object RLDraw5: TRLDraw
            Left = 1
            Top = 97
            Width = 716
            Height = 1
          end
          object RLLabel25: TRLLabel
            Left = 511
            Top = 80
            Width = 35
            Height = 14
            Caption = 'Vlr.IPI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 687
            Top = 80
            Width = 27
            Height = 14
            Caption = 'Nota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLSubDetail5: TRLSubDetail
        Left = 0
        Top = 298
        Width = 718
        Height = 153
        DataSource = DM1.dsOrdemCompraItem
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 44
          BeforePrint = RLBand5BeforePrint
          object RLDBText26: TRLDBText
            Left = 4
            Top = 2
            Width = 22
            Height = 14
            DataField = 'Item'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 119
            Top = 18
            Width = 203
            Height = 12
            AutoSize = False
            DataField = 'lkNomeCor'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 326
            Top = 18
            Width = 54
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'DtEntrega'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 386
            Top = 18
            Width = 51
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 440
            Top = 18
            Width = 28
            Height = 12
            AutoSize = False
            DataField = 'Unidade'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 564
            Top = 18
            Width = 46
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrUnitario'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 637
            Top = 18
            Width = 34
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrTotal'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 34
            Top = 2
            Width = 48
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodMaterial'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText37: TRLDBText
            Left = 473
            Top = 18
            Width = 30
            Height = 12
            Alignment = taCenter
            DataField = 'AliqIPI'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText38: TRLDBText
            Left = 524
            Top = 18
            Width = 26
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrIPI'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel54: TRLLabel
            Left = 19
            Top = 18
            Width = 47
            Height = 11
            Caption = 'Tamanho:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText39: TRLDBText
            Left = 69
            Top = 18
            Width = 44
            Height = 11
            DataField = 'Tamanho'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 83
            Top = 2
            Width = 622
            Height = 14
            AutoSize = False
            Caption = 'Tamanho:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 45
            Top = 31
            Width = 68
            Height = 11
            Caption = 'Nome Interno:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 119
            Top = 31
            Width = 68
            Height = 11
            Caption = 'Nome Interno:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 44
          Width = 718
          Height = 36
          BeforePrint = RLBand8BeforePrint
          object RLDBText28: TRLDBText
            Left = 15
            Top = 10
            Width = 48
            Height = 14
            DataField = 'lkLargura'
            DataSource = DM1.dsOrdemCompraItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 69
            Top = 3
            Width = 26
            Height = 14
            Caption = 'Tam:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam1: TRLLabel
            Left = 104
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam2: TRLLabel
            Left = 143
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam3: TRLLabel
            Left = 182
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam4: TRLLabel
            Left = 221
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam5: TRLLabel
            Left = 260
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam6: TRLLabel
            Left = 299
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam7: TRLLabel
            Left = 338
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam8: TRLLabel
            Left = 377
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam9: TRLLabel
            Left = 416
            Top = 3
            Width = 29
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam10: TRLLabel
            Left = 455
            Top = 3
            Width = 35
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam11: TRLLabel
            Left = 494
            Top = 3
            Width = 35
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam12: TRLLabel
            Left = 533
            Top = 3
            Width = 35
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam13: TRLLabel
            Left = 572
            Top = 3
            Width = 35
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam14: TRLLabel
            Left = 611
            Top = 3
            Width = 35
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Tam15: TRLLabel
            Left = 650
            Top = 3
            Width = 35
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 73
            Top = 19
            Width = 23
            Height = 14
            Caption = 'Qtd:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd1: TRLLabel
            Left = 104
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd2: TRLLabel
            Left = 143
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd3: TRLLabel
            Left = 182
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd4: TRLLabel
            Left = 221
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd5: TRLLabel
            Left = 260
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd6: TRLLabel
            Left = 299
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd7: TRLLabel
            Left = 338
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd8: TRLLabel
            Left = 377
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd9: TRLLabel
            Left = 416
            Top = 19
            Width = 26
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd10: TRLLabel
            Left = 455
            Top = 19
            Width = 32
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd11: TRLLabel
            Left = 494
            Top = 19
            Width = 32
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd12: TRLLabel
            Left = 533
            Top = 19
            Width = 32
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd13: TRLLabel
            Left = 572
            Top = 19
            Width = 32
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd14: TRLLabel
            Left = 611
            Top = 19
            Width = 32
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Qtd15: TRLLabel
            Left = 650
            Top = 19
            Width = 32
            Height = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand10: TRLBand
          Left = 0
          Top = 80
          Width = 718
          Height = 5
          object RLDraw16: TRLDraw
            Left = 0
            Top = 4
            Width = 718
            Height = 1
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 451
        Width = 718
        Height = 55
        BandType = btSummary
        BeforePrint = RLBand6BeforePrint
        object RLLabel34: TRLLabel
          Left = 4
          Top = 6
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
        object RLDraw6: TRLDraw
          Left = 554
          Top = 2
          Width = 161
          Height = 25
        end
        object RLLabel35: TRLLabel
          Left = 558
          Top = 5
          Width = 73
          Height = 19
          Caption = 'Total R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 677
          Top = 5
          Width = 35
          Height = 19
          Alignment = taRightJustify
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 1
          Top = 1
          Width = 716
          Height = 1
        end
        object RLMemo1: TRLMemo
          Left = 3
          Top = 36
          Width = 698
          Height = 16
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 506
        Width = 718
        Height = 131
        BandType = btFooter
        BeforePrint = RLBand2BeforePrint
        object RLDraw8: TRLDraw
          Left = 30
          Top = 109
          Width = 217
          Height = 1
        end
        object RLLabel40: TRLLabel
          Left = 62
          Top = 113
          Width = 159
          Height = 14
          Caption = 'Setor Admininstrativo/Financeiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo2: TRLMemo
          Left = 8
          Top = 13
          Width = 702
          Height = 36
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            
              '*** SOMENTE SER'#195'O ACEITAS NOTAS FISCAIS ONDE CONSTE A CLASSIFICA' +
              #199#195'O FISCAL DO PRODUTO E O CORRESPONDENTE N'#218'MERO DA ORDEM DE COMP' +
              'RA ***'
            ' ')
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 470
          Top = 109
          Width = 217
          Height = 1
        end
        object RLLabel2: TRLLabel
          Left = 550
          Top = 113
          Width = 70
          Height = 14
          Caption = 'Recebido por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw14: TRLDraw
          Left = 1
          Top = 6
          Width = 716
          Height = 1
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDraw15: TRLDraw
          Left = -6
          Top = 52
          Width = 716
          Height = 1
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel1: TRLLabel
          Left = 8
          Top = 56
          Width = 49
          Height = 12
          Caption = 'Solicitante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 60
          Top = 56
          Width = 49
          Height = 12
          Caption = 'Solicitante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 929
      Width = 718
      Height = 23
      AlignToBottom = True
      BandType = btFooter
      BeforePrint = RLBand7BeforePrint
      object RLRodape: TRLLabel
        Left = 4
        Top = 4
        Width = 734
        Height = 14
        AutoSize = False
        Caption = 'Teste do rodap'#233
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
