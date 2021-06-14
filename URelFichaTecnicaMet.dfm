object fRelFichaTecnicaMet: TfRelFichaTecnicaMet
  Left = 24
  Top = 94
  Width = 984
  Height = 603
  Caption = 'fRelFichaTecnicaMet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 64
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DM1.dsProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 75
      Width = 734
      Height = 795
      DataSource = DM1.dsProduto
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 228
        BeforePrint = RLBand2BeforePrint
        object RLDraw10: TRLDraw
          Left = 0
          Top = 1
          Width = 438
          Height = 225
        end
        object RLLabel3: TRLLabel
          Left = 4
          Top = 8
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'Refer'#234'ncia:'
        end
        object RLLabel4: TRLLabel
          Left = 20
          Top = 24
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Produto:'
        end
        object RLLabel5: TRLLabel
          Left = 27
          Top = 64
          Width = 36
          Height = 14
          Alignment = taRightJustify
          Caption = 'Grupo:'
        end
        object RLLabel6: TRLLabel
          Left = 4
          Top = 88
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'Sub-Grupo:'
        end
        object RLLabel7: TRLLabel
          Left = 4
          Top = 114
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'Peso Bruto:'
        end
        object RLLabel8: TRLLabel
          Left = 172
          Top = 114
          Width = 67
          Height = 14
          Alignment = taRightJustify
          Caption = 'Peso L'#237'quido:'
        end
        object RLLabel9: TRLLabel
          Left = 362
          Top = 114
          Width = 21
          Height = 14
          Alignment = taRightJustify
          Caption = 'UM:'
        end
        object RLImage1: TRLImage
          Left = 449
          Top = 1
          Width = 283
          Height = 224
          Stretch = True
        end
        object RLDBText1: TRLDBText
          Left = 64
          Top = 8
          Width = 201
          Height = 14
          AutoSize = False
          DataField = 'Referencia'
          DataSource = DM1.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 298
          Top = 8
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'd.Interno:'
        end
        object RLDBText3: TRLDBText
          Left = 360
          Top = 8
          Width = 42
          Height = 14
          DataField = 'Codigo'
          DataSource = DM1.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 64
          Top = 24
          Width = 369
          Height = 32
          AutoSize = False
          DataField = 'Nome'
          DataSource = DM1.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 64
          Top = 64
          Width = 366
          Height = 14
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 64
          Top = 88
          Width = 366
          Height = 14
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 64
          Top = 114
          Width = 61
          Height = 14
          DataField = 'PesoBruto'
          DataSource = DM1.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 241
          Top = 114
          Width = 72
          Height = 14
          DataField = 'PesoLiquido'
          DataSource = DM1.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 386
          Top = 114
          Width = 47
          Height = 14
          DataField = 'Unidade'
          DataSource = DM1.dsProduto
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
        Top = 228
        Width = 734
        Height = 79
        DataSource = DM1.dsProdutoMat
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 19
          BandType = btHeader
          object RLPanel1: TRLPanel
            Left = 0
            Top = 0
            Width = 734
            Height = 19
            Align = faClient
            Color = clSilver
            ParentColor = False
            Transparent = False
            object RLLabel11: TRLLabel
              Left = 306
              Top = 3
              Width = 90
              Height = 14
              Caption = 'MAT'#201'RIA PRIMA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 19
          Width = 734
          Height = 20
          BandType = btHeader
          object RLDraw1: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 20
            Align = faClient
          end
          object RLLabel12: TRLLabel
            Left = 4
            Top = 3
            Width = 36
            Height = 14
            Caption = 'C'#243'digo'
          end
          object RLLabel13: TRLLabel
            Left = 51
            Top = 3
            Width = 30
            Height = 14
            Caption = 'Nome'
          end
          object RLLabel14: TRLLabel
            Left = 646
            Top = 3
            Width = 26
            Height = 14
            Caption = 'Qtde'
          end
          object RLLabel15: TRLLabel
            Left = 703
            Top = 3
            Width = 18
            Height = 14
            Caption = 'UM'
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 39
          Width = 734
          Height = 18
          BeforePrint = RLBand5BeforePrint
          object RLDraw2: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 18
            Align = faClient
          end
          object RLDBText2: TRLDBText
            Left = 2
            Top = 2
            Width = 46
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodMaterial'
            DataSource = DM1.dsProdutoMat
          end
          object RLDBText5: TRLDBText
            Left = 610
            Top = 2
            Width = 79
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qtd'
            DataSource = DM1.dsProdutoMat
          end
          object RLDBText6: TRLDBText
            Left = 692
            Top = 2
            Width = 40
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = DM1.dsProdutoMat
          end
          object rlNomeMaterial: TRLLabel
            Left = 50
            Top = 2
            Width = 559
            Height = 14
            AutoSize = False
            Caption = 'Nome'
          end
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 307
        Width = 734
        Height = 92
        DataSource = dmCadProduto.dsProduto_Tempo
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 27
          BandType = btHeader
          object RLPanel2: TRLPanel
            Left = 0
            Top = 9
            Width = 734
            Height = 18
            Align = faBottom
            Color = clSilver
            ParentColor = False
            Transparent = False
            object RLLabel16: TRLLabel
              Left = 322
              Top = 3
              Width = 63
              Height = 14
              Caption = 'PRODU'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 27
          Width = 734
          Height = 17
          BandType = btHeader
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 17
            Align = faClient
          end
          object RLLabel18: TRLLabel
            Left = 4
            Top = 3
            Width = 49
            Height = 14
            Caption = 'Processo'
          end
          object RLLabel19: TRLLabel
            Left = 654
            Top = 3
            Width = 78
            Height = 14
            Caption = 'Pe'#231'as Por Hora'
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 44
          Width = 734
          Height = 15
          object RLDraw4: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 15
            Align = faClient
          end
          object RLDBText7: TRLDBText
            Left = 2
            Top = 2
            Width = 46
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'ID_PROCESSO'
            DataSource = dmCadProduto.dsProduto_Tempo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 50
            Top = 2
            Width = 191
            Height = 11
            AutoSize = False
            DataField = 'NOMEPROCESSO'
            DataSource = dmCadProduto.dsProduto_Tempo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 687
            Top = 2
            Width = 46
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTDPECAHORA'
            DataSource = dmCadProduto.dsProduto_Tempo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo2: TRLDBMemo
            Left = 250
            Top = 2
            Width = 407
            Height = 12
            DataField = 'OBS'
            DataSource = dmCadProduto.dsProduto_Tempo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 399
        Width = 734
        Height = 107
        DataSource = dsqEmbalagem
        object RLBand9: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 30
          BandType = btHeader
          object RLPanel3: TRLPanel
            Left = 0
            Top = 11
            Width = 734
            Height = 19
            Align = faBottom
            Color = clSilver
            ParentColor = False
            Transparent = False
            object RLLabel17: TRLLabel
              Left = 314
              Top = 3
              Width = 73
              Height = 14
              Caption = 'EMBALAGEM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
        end
        object RLBand10: TRLBand
          Left = 0
          Top = 30
          Width = 734
          Height = 18
          BandType = btHeader
          object RLDraw5: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 18
            Align = faClient
          end
          object RLLabel20: TRLLabel
            Left = 4
            Top = 3
            Width = 36
            Height = 14
            Caption = 'C'#243'digo'
          end
          object RLLabel23: TRLLabel
            Left = 52
            Top = 3
            Width = 30
            Height = 14
            Caption = 'Nome'
          end
          object RLLabel24: TRLLabel
            Left = 646
            Top = 3
            Width = 26
            Height = 14
            Caption = 'Qtde'
          end
          object RLLabel25: TRLLabel
            Left = 703
            Top = 3
            Width = 18
            Height = 14
            Caption = 'UM'
          end
        end
        object RLBand11: TRLBand
          Left = 0
          Top = 48
          Width = 734
          Height = 17
          BeforePrint = RLBand11BeforePrint
          object RLDraw6: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 17
            Align = faClient
          end
          object RLDBText10: TRLDBText
            Left = 2
            Top = 2
            Width = 46
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodMaterial'
            DataSource = dsqEmbalagem
          end
          object RLDBText12: TRLDBText
            Left = 610
            Top = 2
            Width = 79
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QtdPecaProd'
            DataSource = dsqEmbalagem
          end
          object RLDBText13: TRLDBText
            Left = 692
            Top = 2
            Width = 40
            Height = 13
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = dsqEmbalagem
          end
          object rlNomeEmbalagem: TRLLabel
            Left = 50
            Top = 2
            Width = 559
            Height = 13
            AutoSize = False
            Caption = 'Nome'
          end
        end
      end
      object RLSubDetail5: TRLSubDetail
        Left = 0
        Top = 506
        Width = 734
        Height = 87
        DataSource = dmCadProduto.dsProduto_Ferramental
        object RLBand12: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 29
          BandType = btHeader
          object RLPanel4: TRLPanel
            Left = 0
            Top = 11
            Width = 734
            Height = 18
            Align = faBottom
            Color = clSilver
            ParentColor = False
            Transparent = False
            object RLLabel26: TRLLabel
              Left = 322
              Top = 3
              Width = 82
              Height = 14
              Caption = 'FERRAMENTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
        end
        object RLBand13: TRLBand
          Left = 0
          Top = 29
          Width = 734
          Height = 18
          BandType = btHeader
          object RLDraw7: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 18
            Align = faClient
          end
          object RLLabel27: TRLLabel
            Left = 4
            Top = 2
            Width = 49
            Height = 14
            Caption = 'Processo'
          end
          object RLLabel28: TRLLabel
            Left = 494
            Top = 2
            Width = 17
            Height = 14
            Caption = 'Vc'
          end
          object RLLabel29: TRLLabel
            Left = 574
            Top = 2
            Width = 17
            Height = 14
            Caption = 'Ap'
          end
          object RLLabel30: TRLLabel
            Left = 654
            Top = 2
            Width = 9
            Height = 14
            Caption = 'a'
          end
        end
        object RLBand14: TRLBand
          Left = 0
          Top = 47
          Width = 734
          Height = 15
          object RLDraw8: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 15
            Align = faClient
          end
          object RLDBText4: TRLDBText
            Left = 2
            Top = 2
            Width = 46
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'CODMATERIAL'
            DataSource = dmCadProduto.dsProduto_Ferramental
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 50
            Top = 2
            Width = 431
            Height = 11
            AutoSize = False
            DataField = 'NOMEMATERIAL'
            DataSource = dmCadProduto.dsProduto_Ferramental
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 654
            Top = 2
            Width = 79
            Height = 11
            AutoSize = False
            DataField = 'TIPOA'
            DataSource = dmCadProduto.dsProduto_Ferramental
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 574
            Top = 2
            Width = 79
            Height = 11
            AutoSize = False
            DataField = 'TIPOAP'
            DataSource = dmCadProduto.dsProduto_Ferramental
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 494
            Top = 2
            Width = 79
            Height = 11
            AutoSize = False
            DataField = 'TIPOVC'
            DataSource = dmCadProduto.dsProduto_Ferramental
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand15: TRLBand
        Left = 0
        Top = 593
        Width = 734
        Height = 20
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand15BeforePrint
        object RLLabel31: TRLLabel
          Left = 6
          Top = 5
          Width = 24
          Height = 11
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 31
          Top = 5
          Width = 673
          Height = 12
        end
        object RLDraw9: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 2
          Align = faTop
          DrawKind = dkLine
        end
      end
    end
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 45
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 320
        Top = 22
        Width = 129
        Height = 19
        Caption = 'FICHA T'#201'CNICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 640
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
        Left = 664
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
        Left = 636
        Top = 15
        Width = 26
        Height = 12
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 664
        Top = 15
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
        Left = 2
        Top = 3
        Width = 48
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qEmbalagem: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbprodutomat.CodCor, Dbprodutomat.CodProduto, Dbprodutoma' +
        't.CodCorProd, Dbprodutomat.CodCombinacao, Dbprodutomat.CodSetor,' +
        ' Dbprodutomat.Item, Dbprodutomat.CodMaterial, Dbprodutomat.CodGr' +
        'ade, Dbprodutomat.Qtd, Dbprodutomat.VlrUnitario, Dbprodutomat.Vl' +
        'rTotal, Dbprodutomat.ImpTalao, Dbprodutomat.Unidade, Dbprodutoma' +
        't.Consumo, Dbprodutomat.CodPosicao, Dbprodutomat.Obs, Dbprodutom' +
        'at.Tipo, Dbprodutomat.QtdPecaProd, Dbproduto.Nome NomeMaterial, ' +
        'Dbcor.Nome NomeCor'
      'FROM "dbProdutoMat.DB" Dbprodutomat'
      'LEFT join "Dbcor.DB" Dbcor   '
      ' ON  (Dbprodutomat.CodCor = Dbcor.Codigo)  '
      'INNER JOIN "dbProduto.DB" Dbproduto'
      ' ON  (Dbprodutomat.CodMaterial = Dbproduto.Codigo) '
      'WHERE   (Dbprodutomat.CodProduto = :CodProduto)  '
      '   AND  (Dbprodutomat.CodCorProd = :CodCorProd)  '
      '   AND  (Dbprodutomat.CodCombinacao = :CodCombinacao)  '
      '   AND  (dbProdutoMat.Tipo = '#39'EMB'#39')')
    Left = 454
    Top = 253
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCorProd'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodCombinacao'
        ParamType = ptUnknown
      end>
    object qEmbalagemCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qEmbalagemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qEmbalagemCodCorProd: TIntegerField
      FieldName = 'CodCorProd'
    end
    object qEmbalagemCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object qEmbalagemCodSetor: TIntegerField
      FieldName = 'CodSetor'
    end
    object qEmbalagemItem: TIntegerField
      FieldName = 'Item'
    end
    object qEmbalagemCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qEmbalagemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qEmbalagemQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qEmbalagemVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object qEmbalagemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qEmbalagemImpTalao: TStringField
      FieldName = 'ImpTalao'
      Size = 1
    end
    object qEmbalagemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qEmbalagemConsumo: TStringField
      FieldName = 'Consumo'
      Size = 1
    end
    object qEmbalagemCodPosicao: TIntegerField
      FieldName = 'CodPosicao'
    end
    object qEmbalagemObs: TStringField
      FieldName = 'Obs'
      Size = 30
    end
    object qEmbalagemTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object qEmbalagemQtdPecaProd: TFloatField
      FieldName = 'QtdPecaProd'
    end
    object qEmbalagemNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 65
    end
    object qEmbalagemNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
  end
  object dsqEmbalagem: TDataSource
    DataSet = qEmbalagem
    Left = 486
    Top = 251
  end
end
