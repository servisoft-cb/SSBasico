object fRelInventario: TfRelInventario
  Left = 14
  Top = 103
  Width = 779
  Height = 465
  HorzScrollBar.Position = 29
  Caption = 'fRelInventario'
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
    Left = -21
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fPrevInventario.dsmInventario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 9.000000000000000000
    Margins.RightMargin = 9.000000000000000000
    ShowProgress = False
    AfterPrint = RLReport1AfterPrint
    object RLSubDetail1: TRLSubDetail
      Left = 34
      Top = 38
      Width = 726
      Height = 379
      DataSource = fPrevInventario.dsmInventario
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 726
        Height = 56
        BandType = btHeader
        BeforePrint = RLBand1BeforePrint
        object RLLabel1: TRLLabel
          Left = 208
          Top = 8
          Width = 185
          Height = 16
          Caption = 'RELAT'#211'RIO DO INVENT'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 2
          Top = 27
          Width = 30
          Height = 10
          Caption = 'Op'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 640
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
          Left = 660
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
        object RLSystemInfo2: TRLSystemInfo
          Left = 660
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
        object RLLabel22: TRLLabel
          Left = 625
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
        object RLLabel3: TRLLabel
          Left = 33
          Top = 27
          Width = 30
          Height = 10
          Caption = 'Op'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 1
          Top = 41
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
        object RLLabel5: TRLLabel
          Left = 35
          Top = 41
          Width = 28
          Height = 12
          Caption = 'Nome'
        end
        object RLLabel6: TRLLabel
          Left = 349
          Top = 41
          Width = 18
          Height = 12
          Caption = 'Cor'
        end
        object RLLabel7: TRLLabel
          Left = 296
          Top = 41
          Width = 41
          Height = 12
          Caption = 'Tamanho'
        end
        object RLLabel8: TRLLabel
          Left = 493
          Top = 41
          Width = 25
          Height = 12
          Caption = 'Unid.'
        end
        object RLLabel9: TRLLabel
          Left = 520
          Top = 41
          Width = 55
          Height = 12
          Caption = 'Custo M'#233'dio'
        end
        object RLLabel10: TRLLabel
          Left = 592
          Top = 41
          Width = 63
          Height = 12
          Caption = 'Saldo Estoque'
        end
        object RLLabel11: TRLLabel
          Left = 688
          Top = 41
          Width = 37
          Height = 12
          Caption = 'Vlr.Total'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 54
          Width = 726
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 169
        Width = 726
        Height = 16
        BandType = btSummary
        object RLLabel12: TRLLabel
          Left = 560
          Top = 2
          Width = 71
          Height = 11
          Caption = 'Vlr.Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 657
          Top = 2
          Width = 67
          Height = 11
          Alignment = taRightJustify
          DataField = 'VlrTotal'
          DataSource = fPrevInventario.dsmInventario
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 494
          Top = 0
          Width = 231
          Height = 2
          Align = faTopOnly
          DrawKind = dkLine
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 56
        Width = 726
        Height = 113
        DataFields = 'NomeGrupo'
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 726
          Height = 19
          BandType = btHeader
          BeforePrint = RLBand4BeforePrint
          object RLLabel13: TRLLabel
            Left = 32
            Top = 2
            Width = 40
            Height = 14
            Caption = 'Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 75
            Top = 2
            Width = 40
            Height = 14
            Caption = 'Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLGroup2: TRLGroup
          Left = 0
          Top = 19
          Width = 726
          Height = 57
          DataFields = 'NomeSubGrupo'
          object RLBand5: TRLBand
            Left = 0
            Top = 0
            Width = 726
            Height = 19
            BandType = btHeader
            BeforePrint = RLBand5BeforePrint
            object RLLabel15: TRLLabel
              Left = 80
              Top = 2
              Width = 61
              Height = 14
              Caption = 'SubGrupo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object RLLabel16: TRLLabel
              Left = 144
              Top = 2
              Width = 40
              Height = 14
              Caption = 'Grupo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 19
            Width = 726
            Height = 13
            object RLDBText1: TRLDBText
              Left = 1
              Top = 0
              Width = 32
              Height = 12
              Alignment = taRightJustify
              DataField = 'Codigo'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText2: TRLDBText
              Left = 34
              Top = 0
              Width = 60
              Height = 12
              DataField = 'NomeProduto'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText3: TRLDBText
              Left = 300
              Top = 0
              Width = 42
              Height = 12
              Alignment = taCenter
              DataField = 'Tamanho'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText4: TRLDBText
              Left = 349
              Top = 0
              Width = 142
              Height = 12
              AutoSize = False
              DataField = 'NomeCor'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText5: TRLDBText
              Left = 492
              Top = 0
              Width = 28
              Height = 12
              Alignment = taCenter
              AutoSize = False
              DataField = 'Unidade'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText6: TRLDBText
              Left = 522
              Top = 0
              Width = 52
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PrecoMedio'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText7: TRLDBText
              Left = 575
              Top = 0
              Width = 81
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'Qtd'
              DataSource = fPrevInventario.dsmInventario
            end
            object RLDBText8: TRLDBText
              Left = 657
              Top = 0
              Width = 67
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VlrTotal'
              DataSource = fPrevInventario.dsmInventario
            end
          end
          object RLBand7: TRLBand
            Left = 0
            Top = 32
            Width = 726
            Height = 16
            BandType = btSummary
            object RLLabel18: TRLLabel
              Left = 495
              Top = 2
              Width = 109
              Height = 11
              Alignment = taRightJustify
              Caption = 'Vlr.Total do SubGrupo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBResult3: TRLDBResult
              Left = 657
              Top = 2
              Width = 67
              Height = 11
              Alignment = taRightJustify
              DataField = 'VlrTotal'
              DataSource = fPrevInventario.dsmInventario
              DisplayMask = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Info = riSum
              ParentFont = False
              ResetAfterPrint = True
            end
            object RLDraw4: TRLDraw
              Left = 494
              Top = 0
              Width = 231
              Height = 2
              Align = faTopOnly
              DrawKind = dkLine
            end
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 76
          Width = 726
          Height = 16
          BandType = btSummary
          object RLLabel17: TRLLabel
            Left = 513
            Top = 2
            Width = 91
            Height = 11
            Alignment = taRightJustify
            Caption = 'Vlr.Total do Grupo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult2: TRLDBResult
            Left = 657
            Top = 2
            Width = 67
            Height = 11
            Alignment = taRightJustify
            DataField = 'VlrTotal'
            DataSource = fPrevInventario.dsmInventario
            DisplayMask = '###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            ResetAfterPrint = True
          end
          object RLDraw3: TRLDraw
            Left = 494
            Top = 0
            Width = 231
            Height = 2
            Align = faTopOnly
            DrawKind = dkLine
          end
        end
      end
    end
  end
end
