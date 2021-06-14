object fRelHistPedido: TfRelHistPedido
  Left = 10
  Top = 109
  Width = 1004
  Height = 606
  Caption = 'fRelHistPedido'
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
    Left = 16
    Top = 32
    Width = 1123
    Height = 794
    DataSource = fHistPedido.dsmPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 1063
      Height = 51
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 440
        Top = 5
        Width = 173
        Height = 19
        Caption = 'Relat'#243'rio dos Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 921
        Top = 2
        Width = 81
        Height = 10
        Alignment = taRightJustify
        Caption = '(fRelHistPedido)   Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 1004
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
        Left = 969
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
        Left = 1004
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
      object RLLabel2: TRLLabel
        Left = 6
        Top = 36
        Width = 51
        Height = 12
        Caption = 'Ped.Cliente'
      end
      object RLLabel3: TRLLabel
        Left = 86
        Top = 38
        Width = 28
        Height = 12
        Caption = 'Marca'
      end
      object RLLabel4: TRLLabel
        Left = 200
        Top = 38
        Width = 64
        Height = 12
        Caption = 'Representante'
      end
      object RLLabel5: TRLLabel
        Left = 335
        Top = 38
        Width = 34
        Height = 12
        Caption = 'F'#225'brica'
      end
      object RLLabel6: TRLLabel
        Left = 610
        Top = 38
        Width = 54
        Height = 12
        AutoSize = False
        Caption = 'Dt.Emiss'#227'o'
      end
      object RLLabel7: TRLLabel
        Left = 665
        Top = 38
        Width = 54
        Height = 12
        AutoSize = False
        Caption = 'Dt.Entregue'
      end
      object RLLabel8: TRLLabel
        Left = 720
        Top = 38
        Width = 54
        Height = 12
        AutoSize = False
        Caption = 'Dt.F'#225'brica'
      end
      object RLLabel9: TRLLabel
        Left = 780
        Top = 38
        Width = 41
        Height = 12
        Caption = 'Q.Pedido'
      end
      object RLLabel10: TRLLabel
        Left = 951
        Top = 38
        Width = 40
        Height = 12
        Caption = 'Vlr. Total'
      end
      object RLLabel11: TRLLabel
        Left = 1010
        Top = 38
        Width = 51
        Height = 12
        Caption = 'Vlr. F'#225'brica'
      end
      object RLLabel12: TRLLabel
        Left = 471
        Top = 38
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel13: TRLLabel
        Left = 828
        Top = 38
        Width = 38
        Height = 12
        Caption = 'Q.Fatur.'
      end
      object RLLabel14: TRLLabel
        Left = 879
        Top = 38
        Width = 37
        Height = 12
        Caption = 'Q.Pend.'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 81
      Width = 1063
      Height = 176
      DataSource = fHistPedido.dsmPedido
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 13
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText1: TRLDBText
          Left = 1
          Top = 0
          Width = 83
          Height = 12
          AutoSize = False
          DataField = 'PedidoCliente'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText2: TRLDBText
          Left = 85
          Top = 0
          Width = 110
          Height = 12
          AutoSize = False
          DataField = 'NomeRepresentada'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText3: TRLDBText
          Left = 196
          Top = 0
          Width = 130
          Height = 12
          AutoSize = False
          DataField = 'NomeVendedor'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText4: TRLDBText
          Left = 327
          Top = 0
          Width = 130
          Height = 12
          AutoSize = False
          DataField = 'NomeFabrica'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText5: TRLDBText
          Left = 458
          Top = 0
          Width = 150
          Height = 12
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText6: TRLDBText
          Left = 993
          Top = 0
          Width = 68
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotalFabrica'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText7: TRLDBText
          Left = 873
          Top = 0
          Width = 46
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdPendente'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText8: TRLDBText
          Left = 923
          Top = 0
          Width = 69
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText9: TRLDBText
          Left = 826
          Top = 0
          Width = 46
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdFaturado'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText10: TRLDBText
          Left = 779
          Top = 0
          Width = 46
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdPedido'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText11: TRLDBText
          Left = 720
          Top = 0
          Width = 54
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtProducao'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText12: TRLDBText
          Left = 664
          Top = 0
          Width = 54
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtEmbarque'
          DataSource = fHistPedido.dsmPedido
        end
        object RLDBText13: TRLDBText
          Left = 608
          Top = 0
          Width = 54
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DtEmissao'
          DataSource = fHistPedido.dsmPedido
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 13
        Width = 1063
        Height = 30
        BandType = btSummary
        object RLLabel15: TRLLabel
          Left = 99
          Top = 3
          Width = 96
          Height = 12
          Caption = 'Quantidade Total ===>'
        end
        object RLLabel16: TRLLabel
          Left = 80
          Top = 16
          Width = 115
          Height = 12
          Caption = 'Quantidade Pendente ===>'
        end
        object RLDBResult1: TRLDBResult
          Left = 197
          Top = 3
          Width = 107
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdPedido'
          DataSource = fHistPedido.dsmPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 197
          Top = 16
          Width = 107
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdPendente'
          DataSource = fHistPedido.dsmPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel17: TRLLabel
          Left = 315
          Top = 3
          Width = 113
          Height = 12
          Caption = 'Quantidade Faturado ===>'
        end
        object RLDBResult3: TRLDBResult
          Left = 430
          Top = 3
          Width = 107
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QtdFaturado'
          DataSource = fHistPedido.dsmPedido
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel18: TRLLabel
          Left = 628
          Top = 3
          Width = 70
          Height = 12
          Caption = 'Valor Total ===>'
        end
        object RLDBResult4: TRLDBResult
          Left = 702
          Top = 3
          Width = 124
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = fHistPedido.dsmPedido
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult5: TRLDBResult
          Left = 702
          Top = 16
          Width = 124
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotalFabrica'
          DataSource = fHistPedido.dsmPedido
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel19: TRLLabel
          Left = 617
          Top = 16
          Width = 81
          Height = 12
          Caption = 'Valor F'#225'brica ===>'
        end
      end
    end
  end
end
