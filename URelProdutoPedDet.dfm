object fRelProdutosPedDet: TfRelProdutosPedDet
  Left = 9
  Top = 140
  Width = 772
  Height = 425
  Caption = 'fRelProdutosPedDet'
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
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsProduto.dsqPedDetalhado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 23
      Top = 30
      Width = 748
      Height = 99
      DataSource = fConsProduto.dsqPedDetalhado
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 748
        Height = 54
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 280
          Top = 8
          Width = 287
          Height = 16
          Caption = 'Relat'#243'rio dos produtos (Pedidos) - Detalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 665
          Top = 38
          Width = 42
          Height = 16
        end
        object RLDraw2: TRLDraw
          Left = 51
          Top = 38
          Width = 142
          Height = 16
        end
        object RLDraw3: TRLDraw
          Left = 192
          Top = 38
          Width = 161
          Height = 16
        end
        object RLDraw4: TRLDraw
          Left = 624
          Top = 38
          Width = 42
          Height = 16
        end
        object RLDraw5: TRLDraw
          Left = 706
          Top = 38
          Width = 42
          Height = 16
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 38
          Width = 52
          Height = 16
        end
        object RLLabel2: TRLLabel
          Left = 2
          Top = 40
          Width = 48
          Height = 12
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 56
          Top = 40
          Width = 35
          Height = 12
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 238
          Top = 40
          Width = 18
          Height = 12
          Caption = 'Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 638
          Top = 40
          Width = 26
          Height = 12
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 668
          Top = 40
          Width = 37
          Height = 12
          Caption = 'Q.Pend.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 711
          Top = 40
          Width = 30
          Height = 12
          Caption = 'Q.Fat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 352
          Top = 38
          Width = 79
          Height = 16
        end
        object RLLabel9: TRLLabel
          Left = 366
          Top = 40
          Width = 54
          Height = 12
          Caption = 'Pedido O.C.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 430
          Top = 38
          Width = 83
          Height = 16
        end
        object RLLabel8: TRLLabel
          Left = 460
          Top = 40
          Width = 29
          Height = 12
          Caption = 'N'#186' OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 512
          Top = 38
          Width = 113
          Height = 16
        end
        object RLLabel10: TRLLabel
          Left = 550
          Top = 40
          Width = 32
          Height = 12
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 54
        Width = 748
        Height = 14
        object RLDraw10: TRLDraw
          Left = 0
          Top = 12
          Width = 746
          Height = 2
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText1: TRLDBText
          Left = 2
          Top = 1
          Width = 47
          Height = 10
          AutoSize = False
          DataField = 'Referencia'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 53
          Top = 1
          Width = 137
          Height = 10
          AutoSize = False
          DataField = 'NomeProduto'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 194
          Top = 1
          Width = 155
          Height = 10
          AutoSize = False
          DataField = 'lkNomeCor'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 354
          Top = 1
          Width = 76
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'PedidoCliente'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 434
          Top = 1
          Width = 76
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'NumOS'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 513
          Top = 1
          Width = 113
          Height = 10
          AutoSize = False
          DataField = 'Fantasia'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 628
          Top = 1
          Width = 36
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdPares'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 667
          Top = 1
          Width = 36
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdParesRest'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 708
          Top = 1
          Width = 36
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'QtdParesFat'
          DataSource = fConsProduto.dsqPedDetalhado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
