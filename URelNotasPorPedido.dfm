object fRelNotasPorPedido: TfRelNotasPorPedido
  Left = 4
  Top = 88
  Width = 786
  Height = 470
  HorzScrollBar.Position = 40
  Caption = 'fRelNotasPorPedido'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -32
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsNotasPorPedido.dsqNota
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 718
      Height = 379
      DataSource = fConsNotasPorPedido.dsqNota
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        BandType = btHeader
        object RLLabel21: TRLLabel
          Left = 632
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
          Left = 652
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
          Left = 617
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
          Left = 652
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
        object RLLabel1: TRLLabel
          Left = 256
          Top = 9
          Width = 190
          Height = 16
          Caption = 'Relat'#243'rio das Notas (Pedidos)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 40
        object RLDraw7: TRLDraw
          Left = 652
          Top = 0
          Width = 66
          Height = 20
        end
        object RLDraw2: TRLDraw
          Left = 49
          Top = 0
          Width = 68
          Height = 20
        end
        object RLDraw3: TRLDraw
          Left = 116
          Top = 0
          Width = 317
          Height = 20
        end
        object RLDraw4: TRLDraw
          Left = 432
          Top = 0
          Width = 78
          Height = 20
        end
        object RLDraw5: TRLDraw
          Left = 509
          Top = 0
          Width = 80
          Height = 20
        end
        object RLDraw6: TRLDraw
          Left = 588
          Top = 0
          Width = 65
          Height = 20
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 50
          Height = 20
        end
        object RLLabel2: TRLLabel
          Left = 7
          Top = 4
          Width = 40
          Height = 14
          Caption = 'N'#186' Nota'
        end
        object RLLabel3: TRLLabel
          Left = 53
          Top = 4
          Width = 59
          Height = 14
          Caption = 'Dt. Emiss'#227'o'
        end
        object RLLabel4: TRLLabel
          Left = 256
          Top = 4
          Width = 35
          Height = 14
          Caption = 'Cliente'
        end
        object RLLabel5: TRLLabel
          Left = 448
          Top = 4
          Width = 45
          Height = 14
          Caption = 'Vlr. Nota'
        end
        object RLLabel6: TRLLabel
          Left = 512
          Top = 4
          Width = 73
          Height = 14
          Caption = 'Vlr. Duplicatas'
        end
        object RLLabel7: TRLLabel
          Left = 600
          Top = 4
          Width = 51
          Height = 14
          Caption = '% Transf.'
        end
        object RLLabel8: TRLLabel
          Left = 656
          Top = 4
          Width = 58
          Height = 14
          Caption = 'Vlr. Transf.'
        end
        object RLDBText1: TRLDBText
          Left = 2
          Top = 21
          Width = 46
          Height = 14
          Alignment = taCenter
          DataField = 'NumNota'
          DataSource = fConsNotasPorPedido.dsqNota
        end
        object RLDBText2: TRLDBText
          Left = 56
          Top = 21
          Width = 54
          Height = 14
          Alignment = taCenter
          DataField = 'DtEmissao'
          DataSource = fConsNotasPorPedido.dsqNota
        end
        object RLDBText3: TRLDBText
          Left = 120
          Top = 21
          Width = 30
          Height = 14
          DataField = 'Nome'
          DataSource = fConsNotasPorPedido.dsqNota
        end
        object RLDBText4: TRLDBText
          Left = 447
          Top = 21
          Width = 62
          Height = 14
          Alignment = taRightJustify
          DataField = 'VlrTotalNota'
          DataSource = fConsNotasPorPedido.dsqNota
        end
        object RLDBText5: TRLDBText
          Left = 528
          Top = 21
          Width = 61
          Height = 14
          Alignment = taRightJustify
          DataField = 'VlrTotalDupl'
          DataSource = fConsNotasPorPedido.dsqNota
        end
        object RLDBText6: TRLDBText
          Left = 592
          Top = 21
          Width = 58
          Height = 14
          Alignment = taCenter
          DataField = 'PercTransf'
          DataSource = fConsNotasPorPedido.dsqNota
        end
        object RLDBText7: TRLDBText
          Left = 653
          Top = 21
          Width = 64
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTransf'
          DataSource = fConsNotasPorPedido.dsqNota
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 73
        Width = 718
        Height = 104
        DataSource = fConsNotasPorPedido.dsNotaFiscalPed
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 19
          BandType = btHeader
          object RLLabel9: TRLLabel
            Left = 56
            Top = 3
            Width = 32
            Height = 14
            Caption = 'It.Ped.'
          end
          object RLLabel10: TRLLabel
            Left = 92
            Top = 3
            Width = 85
            Height = 14
            Caption = 'Ped. Cliente (OC)'
          end
          object RLLabel11: TRLLabel
            Left = 216
            Top = 3
            Width = 23
            Height = 14
            Caption = 'Qtd.'
          end
          object RLLabel12: TRLLabel
            Left = 261
            Top = 3
            Width = 56
            Height = 14
            Caption = 'Refer'#234'ncia'
          end
          object RLLabel13: TRLLabel
            Left = 360
            Top = 3
            Width = 40
            Height = 14
            Caption = 'Produto'
          end
          object RLLabel14: TRLLabel
            Left = 659
            Top = 3
            Width = 57
            Height = 14
            Caption = 'Ped.Interno'
          end
          object RLDraw8: TRLDraw
            Left = 60
            Top = 17
            Width = 658
            Height = 1
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 19
          Width = 718
          Height = 17
          object RLDBText8: TRLDBText
            Left = 666
            Top = 1
            Width = 48
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'Pedido'
            DataSource = fConsNotasPorPedido.dsNotaFiscalPed
          end
          object RLDBText9: TRLDBText
            Left = 356
            Top = 1
            Width = 301
            Height = 14
            AutoSize = False
            DataField = 'lkNomeProduto'
            DataSource = fConsNotasPorPedido.dsNotaFiscalPed
          end
          object RLDBText10: TRLDBText
            Left = 260
            Top = 1
            Width = 93
            Height = 14
            AutoSize = False
            DataField = 'lkReferencia'
            DataSource = fConsNotasPorPedido.dsNotaFiscalPed
          end
          object RLDBText11: TRLDBText
            Left = 200
            Top = 1
            Width = 58
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'Qtd'
            DataSource = fConsNotasPorPedido.dsNotaFiscalPed
          end
          object RLDBText12: TRLDBText
            Left = 92
            Top = 1
            Width = 105
            Height = 14
            AutoSize = False
            DataField = 'lkPedidoCliente'
            DataSource = fConsNotasPorPedido.dsNotaFiscalPed
          end
          object RLDBText13: TRLDBText
            Left = 57
            Top = 1
            Width = 31
            Height = 14
            AutoSize = False
            DataField = 'ItemPedido'
            DataSource = fConsNotasPorPedido.dsNotaFiscalPed
          end
          object RLDraw11: TRLDraw
            Left = 60
            Top = 15
            Width = 658
            Height = 1
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 36
          Width = 718
          Height = 53
          DataSource = fConsNotasPorPedido.dsNotaFiscalPedGrade
          BeforePrint = RLSubDetail3BeforePrint
          object RLDetailGrid1: TRLDetailGrid
            Left = 0
            Top = 0
            Width = 718
            Height = 31
            ColCount = 9
            BeforePrint = RLDetailGrid1BeforePrint
            object RLLabel15: TRLLabel
              Left = -1
              Top = 0
              Width = 26
              Height = 14
              Caption = 'Tam:'
            end
            object RLLabel16: TRLLabel
              Left = 2
              Top = 14
              Width = 23
              Height = 14
              Caption = 'Qtd:'
            end
            object RLDBText14: TRLDBText
              Left = 26
              Top = 0
              Width = 52
              Height = 14
              Alignment = taCenter
              AutoSize = False
              DataField = 'lkTamanho'
              DataSource = fConsNotasPorPedido.dsNotaFiscalPedGrade
            end
            object RLDBText15: TRLDBText
              Left = 26
              Top = 15
              Width = 52
              Height = 13
              Alignment = taCenter
              AutoSize = False
              DataField = 'Qtd'
              DataSource = fConsNotasPorPedido.dsNotaFiscalPedGrade
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 31
            Width = 718
            Height = 5
            BandType = btFooter
            object RLDraw10: TRLDraw
              Left = 2
              Top = 1
              Width = 711
              Height = 1
              DrawKind = dkLine
              Pen.Style = psDot
            end
          end
        end
      end
    end
  end
end
