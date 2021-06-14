object fRelFornecedor2: TfRelFornecedor2
  Left = 1
  Top = 125
  Width = 792
  Height = 437
  HorzScrollBar.Position = 364
  Caption = 'fRelFornecedor2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -356
    Top = 8
    Width = 1123
    Height = 794
    DataSource = fConsFornecedores.dsqFornecedores
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
      Height = 307
      DataSource = fConsFornecedores.dsqFornecedores
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 50
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 280
          Top = 8
          Width = 205
          Height = 19
          Caption = 'Rela'#231#227'o dos fornecedores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 952
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
          Left = 972
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
          Left = 937
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
          Left = 972
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
          Top = 36
          Width = 32
          Height = 12
          Caption = 'C'#243'digo'
        end
        object RLLabel3: TRLLabel
          Left = 40
          Top = 36
          Width = 50
          Height = 12
          Caption = 'Fornecedor'
        end
        object RLLabel4: TRLLabel
          Left = 340
          Top = 36
          Width = 42
          Height = 12
          Caption = 'Endere'#231'o'
        end
        object RLLabel5: TRLLabel
          Left = 695
          Top = 36
          Width = 32
          Height = 12
          Caption = 'Cidade'
        end
        object RLLabel6: TRLLabel
          Left = 844
          Top = 36
          Width = 16
          Height = 12
          Caption = 'UF'
        end
        object RLLabel7: TRLLabel
          Left = 864
          Top = 36
          Width = 28
          Height = 12
          Caption = 'CNPJ'
        end
        object RLLabel8: TRLLabel
          Left = 966
          Top = 36
          Width = 41
          Height = 12
          Caption = 'Inscri'#231#227'o'
        end
        object RLLabel10: TRLLabel
          Left = 586
          Top = 36
          Width = 22
          Height = 12
          Caption = 'CEP'
        end
        object RLLabel9: TRLLabel
          Left = 629
          Top = 36
          Width = 27
          Height = 12
          Caption = 'Bairro'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 50
        Width = 1047
        Height = 17
        object RLDBText1: TRLDBText
          Left = 0
          Top = 3
          Width = 39
          Height = 12
          Alignment = taRightJustify
          DataField = 'CodForn'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText2: TRLDBText
          Left = 40
          Top = 3
          Width = 47
          Height = 12
          DataField = 'NomeForn'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText3: TRLDBText
          Left = 338
          Top = 3
          Width = 38
          Height = 12
          DataField = 'EndForn'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText4: TRLDBText
          Left = 584
          Top = 3
          Width = 41
          Height = 12
          DataField = 'CEPForn'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText6: TRLDBText
          Left = 694
          Top = 3
          Width = 28
          Height = 12
          DataField = 'Nome'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText7: TRLDBText
          Left = 838
          Top = 3
          Width = 26
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'EstadoForn'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText8: TRLDBText
          Left = 864
          Top = 3
          Width = 24
          Height = 12
          DataField = 'CGC'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText9: TRLDBText
          Left = 967
          Top = 3
          Width = 21
          Height = 12
          DataField = 'Insc'
          DataSource = fConsFornecedores.dsqFornecedores
        end
        object RLDBText5: TRLDBText
          Left = 629
          Top = 3
          Width = 64
          Height = 12
          AutoSize = False
          DataField = 'BairroForn'
          DataSource = fConsFornecedores.dsqFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 1047
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
  end
end
