object fRelPedidoPend: TfRelPedidoPend
  Left = 79
  Top = 109
  Width = 890
  Height = 550
  Caption = 'fRelPedidoPend'
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
    Left = 64
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fConsPedidoPend.dsmPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    object RLBand1: TRLBand
      Left = 26
      Top = 30
      Width = 742
      Height = 55
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 240
        Top = 8
        Width = 208
        Height = 16
        Caption = 'Relat'#243'rio de Pedidos Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 654
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
        Left = 673
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
        Left = 639
        Top = 13
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
        Left = 673
        Top = 13
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
        Left = 0
        Top = 26
        Width = 33
        Height = 11
        Caption = 'Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 35
        Top = 26
        Width = 694
        Height = 12
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 1
        Top = 40
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
      end
      object RLLabel5: TRLLabel
        Left = 313
        Top = 40
        Width = 32
        Height = 12
        Caption = 'Cliente'
      end
      object RLLabel6: TRLLabel
        Left = 517
        Top = 40
        Width = 41
        Height = 12
        Caption = 'Tamanho'
      end
      object RLLabel7: TRLLabel
        Left = 613
        Top = 40
        Width = 49
        Height = 12
        Caption = 'Qtd.Pedido'
      end
      object RLLabel8: TRLLabel
        Left = 680
        Top = 40
        Width = 60
        Height = 12
        Caption = 'Qtd.Produ'#231#227'o'
      end
      object RLLabel9: TRLLabel
        Left = 573
        Top = 40
        Width = 25
        Height = 12
        Caption = 'Unid.'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 53
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel11: TRLLabel
        Left = 67
        Top = 39
        Width = 35
        Height = 12
        Caption = 'Produto'
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 85
      Width = 742
      Height = 276
      DataSource = fConsPedidoPend.dsmPedido
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 16
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 1
          Width = 65
          Height = 12
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsPedidoPend.dsmPedido
        end
        object RLDBText3: TRLDBText
          Left = 311
          Top = 1
          Width = 198
          Height = 12
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = fConsPedidoPend.dsmPedido
        end
        object RLDBText4: TRLDBText
          Left = 512
          Top = 1
          Width = 52
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'TamCalculo'
          DataSource = fConsPedidoPend.dsmPedido
        end
        object RLDBText5: TRLDBText
          Left = 568
          Top = 1
          Width = 37
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Unidade'
          DataSource = fConsPedidoPend.dsmPedido
        end
        object RLDBText6: TRLDBText
          Left = 616
          Top = 1
          Width = 46
          Height = 12
          Alignment = taRightJustify
          DataField = 'QtdPedido'
          DataSource = fConsPedidoPend.dsmPedido
        end
        object RLDBText7: TRLDBText
          Left = 680
          Top = 1
          Width = 57
          Height = 12
          Alignment = taRightJustify
          DataField = 'QtdProducao'
          DataSource = fConsPedidoPend.dsmPedido
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 14
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLLabel10: TRLLabel
          Left = 66
          Top = 1
          Width = 243
          Height = 12
          Caption = 'Cor'
        end
      end
    end
  end
end
