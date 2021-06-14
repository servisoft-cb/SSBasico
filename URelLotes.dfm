object fRelLotes: TfRelLotes
  Left = 1
  Top = 53
  Width = 793
  Height = 527
  HorzScrollBar.Position = 371
  Caption = 'fRelLotes'
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
    Left = -355
    Top = 16
    Width = 1123
    Height = 794
    DataSource = fConsLote.dsqTalao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 38
      Width = 1047
      Height = 411
      DataSource = fConsLote.dsqTalao
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 45
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 224
          Top = 8
          Width = 179
          Height = 16
          Caption = 'RELAT'#211'RIO DA PRODU'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 956
          Top = 3
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
          Left = 979
          Top = 2
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
        object RLLabel22: TRLLabel
          Left = 936
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
          Left = 979
          Top = 16
          Width = 64
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 236
          Top = 30
          Width = 63
          Height = 12
          Caption = 'Pedido Cliente'
        end
        object RLLabel3: TRLLabel
          Left = 323
          Top = 30
          Width = 51
          Height = 12
          Caption = 'Dt. Entrega'
        end
        object RLLabel5: TRLLabel
          Left = 378
          Top = 31
          Width = 49
          Height = 12
          Caption = 'Refer'#234'ncia'
        end
        object RLLabel4: TRLLabel
          Left = 451
          Top = 30
          Width = 35
          Height = 12
          Caption = 'Produto'
        end
        object RLLabel6: TRLLabel
          Left = 716
          Top = 30
          Width = 18
          Height = 12
          Caption = 'Cor'
        end
        object RLLabel7: TRLLabel
          Left = 844
          Top = 30
          Width = 49
          Height = 12
          Caption = 'Qtd.Pedido'
        end
        object RLLabel8: TRLLabel
          Left = 910
          Top = 30
          Width = 58
          Height = 12
          Caption = 'Qtd.Faturada'
        end
        object RLLabel9: TRLLabel
          Left = 986
          Top = 30
          Width = 60
          Height = 12
          Caption = 'Qtd.Pendente'
        end
        object RLLabel10: TRLLabel
          Left = 49
          Top = 30
          Width = 32
          Height = 12
          Caption = 'Cliente'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 43
          Width = 1047
          Height = 2
          Align = faBottom
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 9
          Top = 30
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 45
        Width = 1047
        Height = 14
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 48
          Top = 0
          Width = 39
          Height = 12
          DataField = 'Fantasia'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText2: TRLDBText
          Left = 233
          Top = 0
          Width = 60
          Height = 12
          DataField = 'PedidoCliente'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText3: TRLDBText
          Left = 324
          Top = 0
          Width = 52
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtReprogramacao'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText4: TRLDBText
          Left = 377
          Top = 0
          Width = 71
          Height = 12
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText5: TRLDBText
          Left = 449
          Top = 0
          Width = 258
          Height = 12
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText6: TRLDBText
          Left = 708
          Top = 0
          Width = 134
          Height = 12
          AutoSize = False
          DataField = 'lkNomeCor'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText7: TRLDBText
          Left = 844
          Top = 0
          Width = 50
          Height = 12
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText8: TRLDBText
          Left = 915
          Top = 0
          Width = 55
          Height = 12
          Alignment = taRightJustify
          DataField = 'QtdFaturada'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText9: TRLDBText
          Left = 989
          Top = 0
          Width = 56
          Height = 12
          Alignment = taRightJustify
          DataField = 'QtdRestante'
          DataSource = fConsLote.dsqTalao
        end
        object RLDBText10: TRLDBText
          Left = 2
          Top = 0
          Width = 46
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodCliente'
          DataSource = fConsLote.dsqTalao
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 12
          Width = 1047
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 59
        Width = 1047
        Height = 15
        BandType = btSummary
        object RLLabel12: TRLLabel
          Left = 757
          Top = 1
          Width = 51
          Height = 12
          Caption = 'Total Geral:'
        end
        object RLDBResult1: TRLDBResult
          Left = 818
          Top = 1
          Width = 78
          Height = 12
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = fConsLote.dsqTalao
          DisplayMask = '###,###,##0'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 888
          Top = 1
          Width = 83
          Height = 12
          Alignment = taRightJustify
          DataField = 'QtdFaturada'
          DataSource = fConsLote.dsqTalao
          DisplayMask = '###,###,##0'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult3: TRLDBResult
          Left = 961
          Top = 1
          Width = 84
          Height = 12
          Alignment = taRightJustify
          DataField = 'QtdRestante'
          DataSource = fConsLote.dsqTalao
          DisplayMask = '###,###,##0'
          Info = riSum
          ResetAfterPrint = True
        end
      end
    end
  end
end
