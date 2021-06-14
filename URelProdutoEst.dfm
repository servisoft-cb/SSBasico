object fRelProdutoEst: TfRelProdutoEst
  Left = 108
  Top = 126
  Width = 783
  Height = 444
  Caption = 'fRelProdutoEst'
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
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    DataSource = fPrevProduto.dsmEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 9.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 26
      Top = 34
      Width = 1071
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
        Left = 923
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
        Left = 946
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
        Left = 903
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
        Left = 946
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
        Width = 1071
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 69
      Width = 1071
      Height = 290
      DataSource = fPrevProduto.dsmEstoque
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 1071
        Height = 217
        DataFields = 'NomeGrupo'
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 1071
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
            DataSource = fPrevProduto.dsmEstoque
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
            Left = 124
            Top = 18
            Width = 63
            Height = 12
            Caption = 'Nome Produto'
          end
          object RLLabel5: TRLLabel
            Left = 442
            Top = 18
            Width = 25
            Height = 12
            Caption = 'Unid.'
          end
          object RLLabel6: TRLLabel
            Left = 468
            Top = 18
            Width = 50
            Height = 12
            Caption = 'Fornecedor'
          end
          object RLLabel8: TRLLabel
            Left = 661
            Top = 18
            Width = 18
            Height = 12
            Caption = 'Cor'
          end
          object RLLabel10: TRLLabel
            Left = 872
            Top = 18
            Width = 41
            Height = 12
            Caption = 'Tamanho'
          end
          object RLLabel12: TRLLabel
            Left = 1012
            Top = 18
            Width = 58
            Height = 12
            Caption = 'Qtd. Estoque'
          end
          object RLLabel13: TRLLabel
            Left = 948
            Top = 18
            Width = 27
            Height = 12
            Caption = 'Pre'#231'o'
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 30
            Width = 1071
            Height = 2
            Align = faBottom
            DrawKind = dkLine
          end
          object RLLabel11: TRLLabel
            Left = 34
            Top = 18
            Width = 49
            Height = 12
            Caption = 'Refer'#234'ncia'
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 32
          Width = 1071
          Height = 14
          BeforePrint = RLBand3BeforePrint
          object RLDBText2: TRLDBText
            Left = 0
            Top = 1
            Width = 32
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'CodProduto'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText3: TRLDBText
            Left = 123
            Top = 1
            Width = 319
            Height = 11
            AutoSize = False
            DataField = 'NomeProduto'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText4: TRLDBText
            Left = 443
            Top = 1
            Width = 24
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'Unidade'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText5: TRLDBText
            Left = 468
            Top = 1
            Width = 190
            Height = 11
            AutoSize = False
            DataField = 'NomeFornecedor'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText6: TRLDBText
            Left = 659
            Top = 1
            Width = 190
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'NomeCor'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText7: TRLDBText
            Left = 851
            Top = 1
            Width = 78
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'Tamanho'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText8: TRLDBText
            Left = 979
            Top = 1
            Width = 90
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QtdEstoque'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText9: TRLDBText
            Left = 931
            Top = 1
            Width = 46
            Height = 12
            Alignment = taRightJustify
            DataField = 'VlrUnitario'
            DataSource = fPrevProduto.dsmEstoque
          end
          object RLDBText12: TRLDBText
            Left = 35
            Top = 0
            Width = 87
            Height = 12
            AutoSize = False
            DataField = 'Referencia'
            DataSource = fPrevProduto.dsmEstoque
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 0
          Top = 46
          Width = 1071
          Height = 64
          DataSource = fPrevProduto.dsmEstoqueGrade
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 0
            Width = 1071
            Height = 30
            ColCount = 10
            object RLLabel7: TRLLabel
              Left = 4
              Top = 3
              Width = 24
              Height = 12
              Caption = 'Tam:'
            end
            object RLLabel9: TRLLabel
              Left = 7
              Top = 16
              Width = 21
              Height = 12
              Caption = 'Qtd:'
            end
            object RLDBText10: TRLDBText
              Left = 29
              Top = 3
              Width = 76
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'Tamanho'
              DataSource = fPrevProduto.dsmEstoqueGrade
            end
            object RLDBText11: TRLDBText
              Left = 29
              Top = 16
              Width = 76
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'Qtd'
              DataSource = fPrevProduto.dsmEstoqueGrade
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 30
            Width = 1071
            Height = 4
            BandType = btFooter
            object RLDraw2: TRLDraw
              Left = 0
              Top = 2
              Width = 1071
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
end
