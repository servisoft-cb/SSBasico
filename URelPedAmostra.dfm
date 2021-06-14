object fRelPedAmostra: TfRelPedAmostra
  Left = 8
  Top = 16
  Width = 995
  Height = 702
  Caption = 'fRelPedAmostra'
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
    Left = 32
    Top = 24
    Width = 1123
    Height = 794
    DataSource = DMPedAmostra.dsPedAmostra
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    RecordRange = rrCurrentOnly
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 1071
      Height = 335
      DataSource = DMPedAmostra.dsPedAmostra
      RecordRange = rrCurrentOnly
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 266
        BeforePrint = RLBand1BeforePrint
        object RLLabel1: TRLLabel
          Left = 0
          Top = 0
          Width = 1071
          Height = 20
          Align = faTop
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = 'FICHA DE PEDIDO AMOSTRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 18
          Width = 352
          Height = 247
        end
        object RLDraw2: TRLDraw
          Left = 781
          Top = 18
          Width = 290
          Height = 247
        end
        object RLDraw4: TRLDraw
          Left = 351
          Top = 19
          Width = 431
          Height = 20
        end
        object RLLabel3: TRLLabel
          Left = 412
          Top = 22
          Width = 42
          Height = 14
          Caption = 'F'#225'brica:'
        end
        object RLDBText2: TRLDBText
          Left = 455
          Top = 22
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'NOMEFABRICA'
          DataSource = DMPedAmostra.dsPedAmostra
        end
        object RLDraw5: TRLDraw
          Left = 351
          Top = 38
          Width = 431
          Height = 20
        end
        object RLLabel4: TRLLabel
          Left = 416
          Top = 41
          Width = 38
          Height = 14
          Caption = 'Cliente:'
        end
        object RLDraw6: TRLDraw
          Left = 351
          Top = 57
          Width = 431
          Height = 20
        end
        object RLLabel6: TRLLabel
          Left = 395
          Top = 60
          Width = 59
          Height = 14
          Caption = 'Refer'#234'ncia:'
        end
        object RLDraw7: TRLDraw
          Left = 351
          Top = 76
          Width = 431
          Height = 20
        end
        object RLLabel8: TRLLabel
          Left = 393
          Top = 79
          Width = 61
          Height = 14
          Caption = 'Ref. Cliente:'
        end
        object RLDraw8: TRLDraw
          Left = 351
          Top = 95
          Width = 431
          Height = 20
        end
        object RLLabel10: TRLLabel
          Left = 392
          Top = 98
          Width = 62
          Height = 14
          Caption = 'Constru'#231#227'o:'
        end
        object RLDraw9: TRLDraw
          Left = 351
          Top = 114
          Width = 431
          Height = 20
        end
        object RLLabel12: TRLLabel
          Left = 418
          Top = 117
          Width = 36
          Height = 14
          Caption = 'Forma:'
        end
        object RLDraw10: TRLDraw
          Left = 351
          Top = 133
          Width = 431
          Height = 20
        end
        object RLLabel14: TRLLabel
          Left = 368
          Top = 136
          Width = 86
          Height = 14
          Caption = 'Carimbo Palmilha:'
        end
        object RLDBText3: TRLDBText
          Left = 455
          Top = 136
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'CARIMBOPALMILHA'
          DataSource = DMPedAmostra.dsPedAmostra
        end
        object RLDraw11: TRLDraw
          Left = 351
          Top = 152
          Width = 431
          Height = 20
        end
        object RLLabel15: TRLLabel
          Left = 385
          Top = 155
          Width = 69
          Height = 14
          Caption = 'Carimbo Sola:'
        end
        object RLDBText4: TRLDBText
          Left = 455
          Top = 155
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'CARIMBOSOLA'
          DataSource = DMPedAmostra.dsPedAmostra
        end
        object RLDraw12: TRLDraw
          Left = 351
          Top = 190
          Width = 431
          Height = 20
        end
        object RLLabel16: TRLLabel
          Left = 359
          Top = 193
          Width = 95
          Height = 14
          Caption = 'Data Encaminhada:'
        end
        object RLDBText5: TRLDBText
          Left = 455
          Top = 193
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'DTENCAMINHADA'
          DataSource = DMPedAmostra.dsPedAmostra
        end
        object RLDraw13: TRLDraw
          Left = 351
          Top = 209
          Width = 431
          Height = 20
        end
        object RLLabel17: TRLLabel
          Left = 371
          Top = 212
          Width = 83
          Height = 14
          Caption = 'Data de Entrega:'
        end
        object RLDBText6: TRLDBText
          Left = 455
          Top = 212
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'DTENTREGA'
          DataSource = DMPedAmostra.dsPedAmostra
        end
        object RLDBText9: TRLDBText
          Left = 455
          Top = 60
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'Referencia'
          DataSource = DM1.dsProduto
        end
        object RLDBText10: TRLDBText
          Left = 455
          Top = 80
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'RefCliente'
          DataSource = DM1.dsProduto
        end
        object RLDBText11: TRLDBText
          Left = 455
          Top = 98
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'Construcao'
          DataSource = DM1.dsProduto
        end
        object RLDBText12: TRLDBText
          Left = 455
          Top = 117
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'Forma'
          DataSource = DM1.dsProduto
        end
        object RLDBText13: TRLDBText
          Left = 455
          Top = 41
          Width = 316
          Height = 14
          AutoSize = False
          DataField = 'Nome'
          DataSource = DM1.dsCliente
        end
        object RLImage1: TRLImage
          Left = 2
          Top = 25
          Width = 346
          Height = 228
          Stretch = True
        end
        object RLImage2: TRLImage
          Left = 785
          Top = 20
          Width = 284
          Height = 120
          Stretch = True
        end
        object RLImage3: TRLImage
          Left = 785
          Top = 143
          Width = 284
          Height = 120
          Stretch = True
        end
        object RLDraw16: TRLDraw
          Left = 351
          Top = 171
          Width = 431
          Height = 20
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 266
        Width = 1071
        Height = 26
        object RLDraw14: TRLDraw
          Left = 0
          Top = 0
          Width = 1071
          Height = 26
          Align = faClient
        end
        object RLLabel18: TRLLabel
          Left = 5
          Top = 4
          Width = 26
          Height = 14
          Caption = 'Obs:'
        end
        object RLDBMemo1: TRLDBMemo
          Left = 34
          Top = 4
          Width = 1015
          Height = 14
          AutoSize = False
          DataField = 'OBS'
          DataSource = DMPedAmostra.dsPedAmostra
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 26
      Top = 361
      Width = 1071
      Height = 72
      DataSource = dsmMaterial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      AfterPrint = RLSubDetail2AfterPrint
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 16
        object RLDraw18: TRLDraw
          Left = 0
          Top = 0
          Width = 536
          Height = 16
        end
        object RLDBText7: TRLDBText
          Left = 2
          Top = 2
          Width = 109
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NomePosicao1'
          DataSource = dsmMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 112
          Top = 2
          Width = 419
          Height = 12
          AutoSize = False
          DataField = 'NomeMaterial1'
          DataSource = dsmMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw19: TRLDraw
          Left = 534
          Top = 0
          Width = 536
          Height = 16
        end
        object RLDBText15: TRLDBText
          Left = 647
          Top = 2
          Width = 418
          Height = 12
          AutoSize = False
          DataField = 'NomeMaterial2'
          DataSource = dsmMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 537
          Top = 2
          Width = 109
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NomePosicao2'
          DataSource = dsmMaterial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 26
      Top = 433
      Width = 1071
      Height = 304
      DataSource = DMPedAmostra.dsPedAmostra_Item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 25
        BandType = btHeader
        BeforePrint = RLBand3BeforePrint
        object RLLabel5: TRLLabel
          Left = 72
          Top = 8
          Width = 92
          Height = 14
          Caption = 'ITENS DO PEDIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 25
        Width = 1071
        Height = 29
        BeforePrint = RLBand4BeforePrint
        object RLDraw17: TRLDraw
          Left = 0
          Top = 0
          Width = 1071
          Height = 29
          Align = faClient
        end
        object rlmPosicao1: TRLMemo
          Left = 3
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao1: TRLLabel
          Left = 3
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao2: TRLLabel
          Left = 101
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao2: TRLMemo
          Left = 101
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao3: TRLLabel
          Left = 199
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao3: TRLMemo
          Left = 199
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao4: TRLLabel
          Left = 297
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao4: TRLMemo
          Left = 297
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao5: TRLMemo
          Left = 395
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao5: TRLLabel
          Left = 395
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao6: TRLLabel
          Left = 493
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao6: TRLMemo
          Left = 493
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao7: TRLLabel
          Left = 591
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao7: TRLMemo
          Left = 591
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao8: TRLLabel
          Left = 689
          Top = 2
          Width = 97
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao8: TRLMemo
          Left = 689
          Top = 15
          Width = 97
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao11: TRLLabel
          Left = 976
          Top = 2
          Width = 92
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao11: TRLMemo
          Left = 976
          Top = 15
          Width = 92
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao10: TRLLabel
          Left = 882
          Top = 2
          Width = 92
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao10: TRLMemo
          Left = 882
          Top = 15
          Width = 92
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlPosicao9: TRLLabel
          Left = 789
          Top = 2
          Width = 92
          Height = 12
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlmPosicao9: TRLMemo
          Left = 789
          Top = 15
          Width = 92
          Height = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail5: TRLSubDetail
        Left = 0
        Top = 54
        Width = 1071
        Height = 80
        DataSource = DMPedAmostra.dsPedAmostra_Grade
        object RLDetailGrid4: TRLDetailGrid
          Left = 0
          Top = 0
          Width = 1071
          Height = 34
          ColCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLDetailGrid4BeforePrint
          object RLLabel11: TRLLabel
            Left = 5
            Top = 5
            Width = 24
            Height = 12
            Caption = 'Tam:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 8
            Top = 19
            Width = 21
            Height = 12
            Caption = 'Qtd:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 31
            Top = 5
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'TAMANHO'
            DataSource = DMPedAmostra.dsPedAmostra_Grade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 31
            Top = 19
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMPedAmostra.dsPedAmostra_Grade
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
  object mMaterial: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Item'
    Params = <>
    Left = 594
    Top = 351
    Data = {
      AD0000009619E0BD010000001800000005000000000003000000AD0004497465
      6D04000100000000000C4E6F6D65506F736963616F3101004900000001000557
      494454480200020014000C4E6F6D65506F736963616F32010049000000010005
      57494454480200020014000D4E6F6D654D6174657269616C3101004900000001
      000557494454480200020064000D4E6F6D654D6174657269616C320100490000
      0001000557494454480200020064000000}
    object mMaterialItem: TIntegerField
      FieldName = 'Item'
    end
    object mMaterialNomePosicao1: TStringField
      FieldName = 'NomePosicao1'
    end
    object mMaterialNomePosicao2: TStringField
      FieldName = 'NomePosicao2'
    end
    object mMaterialNomeMaterial1: TStringField
      FieldName = 'NomeMaterial1'
      Size = 100
    end
    object mMaterialNomeMaterial2: TStringField
      FieldName = 'NomeMaterial2'
      Size = 100
    end
  end
  object dsmMaterial: TDataSource
    DataSet = mMaterial
    Left = 634
    Top = 351
  end
end
