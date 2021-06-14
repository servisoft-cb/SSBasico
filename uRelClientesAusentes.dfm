object fRelClientesAusentes: TfRelClientesAusentes
  Left = 288
  Top = 103
  Width = 928
  Height = 480
  Caption = 'fRelClientesAusentes'
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
    Top = 8
    Width = 794
    Height = 1123
    DataSource = fClientesAusentes.dsmCliAusentes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 114
      Width = 756
      Height = 64
      DataSource = fClientesAusentes.dsmCliAusentes
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 15
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 300
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = fClientesAusentes.dsmCliAusentes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 299
          Top = 0
          Width = 208
          Height = 14
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = fClientesAusentes.dsmCliAusentes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 506
          Top = 0
          Width = 150
          Height = 14
          AutoSize = False
          DataField = 'CGCCPF'
          DataSource = fClientesAusentes.dsmCliAusentes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 655
          Top = 0
          Width = 100
          Height = 14
          AutoSize = False
          DataField = 'ULTCOMPRA'
          DataSource = fClientesAusentes.dsmCliAusentes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 76
      BandType = btHeader
      BeforePrint = RLBand2BeforePrint
      object RLLabel1: TRLLabel
        Left = 0
        Top = 1
        Width = 756
        Height = 16
        Align = faWidth
        Alignment = taCenter
        Caption = 'CLIENTES SEM PEDIDOS NOS '#218'LTIMOS XX MESES'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 712
        Top = 24
        Width = 39
        Height = 16
        Alignment = taRightJustify
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 56
        Width = 300
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'NOME'
      end
      object RLLabel3: TRLLabel
        Left = 299
        Top = 56
        Width = 208
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'FANTASIA'
      end
      object RLLabel5: TRLLabel
        Left = 506
        Top = 56
        Width = 150
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'CNPJ'
      end
      object RLLabel4: TRLLabel
        Left = 655
        Top = 56
        Width = 100
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'ULT. COMPRA'
      end
    end
  end
end
