object fRelClientes3: TfRelClientes3
  Left = 21
  Top = 124
  Width = 979
  Height = 468
  Caption = 'fRelClientes3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 45
    Top = 11
    Width = 794
    Height = 1123
    DataSource = fConsCliente.dsqCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 742
      Height = 347
      DataSource = fConsCliente.dsqCliente
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 40
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 282
          Top = 3
          Width = 155
          Height = 19
          Caption = 'Rela'#231#227'o de Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 641
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
          Left = 661
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
          Left = 626
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
          Left = 661
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
          Left = 0
          Top = 26
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
        object RLLabel3: TRLLabel
          Left = 32
          Top = 26
          Width = 28
          Height = 12
          Caption = 'Nome'
        end
        object RLLabel5: TRLLabel
          Left = 418
          Top = 26
          Width = 32
          Height = 12
          Caption = 'Cidade'
        end
        object RLLabel8: TRLLabel
          Left = 251
          Top = 25
          Width = 39
          Height = 12
          Caption = 'Telefone'
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 38
          Width = 742
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel7: TRLLabel
          Left = 324
          Top = 25
          Width = 19
          Height = 12
          Caption = 'Fax'
        end
        object RLLabel9: TRLLabel
          Left = 398
          Top = 26
          Width = 16
          Height = 12
          Caption = 'UF'
        end
        object RLLabel6: TRLLabel
          Left = 516
          Top = 26
          Width = 42
          Height = 12
          Caption = 'Endere'#231'o'
        end
      end
      object RLGroup1: TRLGroup
        Left = 0
        Top = 40
        Width = 742
        Height = 104
        DataFields = 'NomeVendedor'
        object RLBand2: TRLBand
          Left = 0
          Top = 23
          Width = 742
          Height = 17
          BeforePrint = RLBand2BeforePrint
          object RLDBText1: TRLDBText
            Left = 1
            Top = 2
            Width = 30
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'Codigo'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDBText2: TRLDBText
            Left = 31
            Top = 2
            Width = 221
            Height = 12
            AutoSize = False
            DataField = 'NomeCliente'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDBText6: TRLDBText
            Left = 419
            Top = 2
            Width = 98
            Height = 12
            AutoSize = False
            DataField = 'NomeCidade'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDBText9: TRLDBText
            Left = 252
            Top = 2
            Width = 72
            Height = 12
            AutoSize = False
            DataField = 'Telefone'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDBText4: TRLDBText
            Left = 324
            Top = 2
            Width = 72
            Height = 12
            AutoSize = False
            DataField = 'Fax'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDBText5: TRLDBText
            Left = 396
            Top = 2
            Width = 23
            Height = 12
            AutoSize = False
            DataField = 'Uf'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDBText7: TRLDBText
            Left = 517
            Top = 2
            Width = 202
            Height = 12
            AutoSize = False
            DataField = 'Endereco'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 15
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 23
          BandType = btHeader
          object RLLabel4: TRLLabel
            Left = 29
            Top = 5
            Width = 50
            Height = 11
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 80
            Top = 5
            Width = 73
            Height = 11
            DataField = 'NomeVendedor'
            DataSource = fConsCliente.dsqCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 21
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 40
          Width = 742
          Height = 16
          BeforePrint = RLBand4BeforePrint
          object RLLabel10: TRLLabel
            Left = 31
            Top = 2
            Width = 32
            Height = 12
            Caption = 'E-mail:'
          end
          object RLDBText8: TRLDBText
            Left = 66
            Top = 2
            Width = 436
            Height = 11
            AutoSize = False
            DataField = 'Email'
            DataSource = fConsCliente.dsqCliente
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 14
            Width = 742
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
