object fRelCliFornMov: TfRelCliFornMov
  Left = 20
  Top = 145
  Width = 1013
  Height = 480
  HorzScrollBar.Position = 645
  Caption = 'fRelCliFornMov'
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
    Left = -637
    Top = 16
    Width = 794
    Height = 1123
    DataSource = fConsCliFornMov.dsqCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 47
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 104
        Top = 8
        Width = 454
        Height = 16
        Caption = 
          'Relat'#243'rio do Movimento de Clientes Resumido - 01/01/2007 a 21/02' +
          '/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 634
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
        Left = 654
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
        Left = 619
        Top = 15
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
        Left = 654
        Top = 15
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
        Left = 8
        Top = 32
        Width = 32
        Height = 12
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 48
        Top = 32
        Width = 28
        Height = 12
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 464
        Top = 32
        Width = 56
        Height = 12
        Caption = 'CNPJ / CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 576
        Top = 32
        Width = 24
        Height = 12
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 651
        Top = 32
        Width = 63
        Height = 12
        Caption = 'Vlr.Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 45
        Width = 718
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 85
      Width = 718
      Height = 204
      DataSource = fConsCliFornMov.dsqCliente
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 3
          Top = 0
          Width = 40
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodCli'
          DataSource = fConsCliFornMov.dsqCliente
        end
        object RLDBText2: TRLDBText
          Left = 48
          Top = 0
          Width = 361
          Height = 12
          AutoSize = False
          DataField = 'NomeCliente'
          DataSource = fConsCliFornMov.dsqCliente
        end
        object RLDBText3: TRLDBText
          Left = 440
          Top = 0
          Width = 97
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CgcCpf'
          DataSource = fConsCliFornMov.dsqCliente
        end
        object RLDBText4: TRLDBText
          Left = 560
          Top = 0
          Width = 73
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Telefone'
          DataSource = fConsCliFornMov.dsqCliente
        end
        object RLDBText5: TRLDBText
          Left = 664
          Top = 0
          Width = 53
          Height = 12
          Alignment = taRightJustify
          DataField = 'VlrTotalDupl'
          DataSource = fConsCliFornMov.dsqCliente
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 13
          Width = 718
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = 195
    Top = 26
    Width = 794
    Height = 1123
    DataSource = fConsCliFornMov.dsqFornecedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 47
      BandType = btHeader
      BeforePrint = RLBand3BeforePrint
      object RLLabel7: TRLLabel
        Left = 80
        Top = 8
        Width = 490
        Height = 16
        Caption = 
          'Relat'#243'rio do Movimento de Fornecedores Resumido - 01/01/2007 a 2' +
          '1/02/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 634
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
      object RLSystemInfo3: TRLSystemInfo
        Left = 654
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
      object RLLabel9: TRLLabel
        Left = 619
        Top = 15
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
      object RLSystemInfo4: TRLSystemInfo
        Left = 654
        Top = 15
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 8
        Top = 32
        Width = 32
        Height = 12
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 48
        Top = 32
        Width = 28
        Height = 12
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 464
        Top = 32
        Width = 56
        Height = 12
        Caption = 'CNPJ / CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 576
        Top = 32
        Width = 24
        Height = 12
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 651
        Top = 32
        Width = 63
        Height = 12
        Caption = 'Vlr.Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 45
        Width = 718
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 85
      Width = 718
      Height = 204
      DataSource = fConsCliFornMov.dsqFornecedor
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        BeforePrint = RLBand4BeforePrint
        object RLDBText6: TRLDBText
          Left = 3
          Top = 0
          Width = 40
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodForn'
          DataSource = fConsCliFornMov.dsqFornecedor
        end
        object RLDBText7: TRLDBText
          Left = 48
          Top = 0
          Width = 361
          Height = 12
          AutoSize = False
          DataField = 'NomeForn'
          DataSource = fConsCliFornMov.dsqFornecedor
        end
        object RLDBText8: TRLDBText
          Left = 440
          Top = 0
          Width = 98
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CGC'
          DataSource = fConsCliFornMov.dsqFornecedor
        end
        object RLDBText9: TRLDBText
          Left = 560
          Top = 0
          Width = 74
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Tel1Forn'
          DataSource = fConsCliFornMov.dsqFornecedor
        end
        object RLDBText10: TRLDBText
          Left = 644
          Top = 0
          Width = 73
          Height = 12
          Alignment = taRightJustify
          DataField = 'VlrTotalDuplicata'
          DataSource = fConsCliFornMov.dsqFornecedor
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 13
          Width = 718
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
  end
end
