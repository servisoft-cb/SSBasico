object fRelHistCliente2: TfRelHistCliente2
  Left = 106
  Top = 164
  Width = 887
  Height = 550
  Caption = 'fRelHistCliente2'
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
    Left = 22
    Top = 26
    Width = 794
    Height = 1123
    DataSource = fClienteConsHistorico.dsqClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    object RLSubDetail3: TRLSubDetail
      Left = 30
      Top = 86
      Width = 734
      Height = 211
      DataSource = fClienteConsHistorico.dsqClientes
      object RLGroup2: TRLGroup
        Left = 0
        Top = 0
        Width = 734
        Height = 104
        DataFields = 'NomeCliente'
        object RLBand5: TRLBand
          Left = 0
          Top = 22
          Width = 734
          Height = 22
          object RLDBText4: TRLDBText
            Left = 3
            Top = 5
            Width = 54
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'DtHistorico'
            DataSource = fClienteConsHistorico.dsqClientes
          end
          object RLDBText5: TRLDBText
            Left = 59
            Top = 5
            Width = 25
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Filial'
            DataSource = fClienteConsHistorico.dsqClientes
          end
          object RLDBMemo2: TRLDBMemo
            Left = 249
            Top = 5
            Width = 480
            Height = 12
            DataField = 'Obs'
            DataSource = fClienteConsHistorico.dsqClientes
            IntegralHeight = True
          end
          object RLDraw1: TRLDraw
            Left = 248
            Top = 20
            Width = 485
            Height = 2
            Align = faBottomOnly
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBText1: TRLDBText
            Left = 87
            Top = 5
            Width = 154
            Height = 12
            AutoSize = False
            DataField = 'NomeHistorico'
            DataSource = fClienteConsHistorico.dsqClientes
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 22
          BandType = btHeader
          object RLLabel16: TRLLabel
            Left = 15
            Top = 5
            Width = 45
            Height = 14
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 63
            Top = 7
            Width = 61
            Height = 11
            DataField = 'NomeCliente'
            DataSource = fClienteConsHistorico.dsqClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 2
            Align = faTop
            DrawKind = dkLine
          end
        end
      end
    end
    object RLBand4: TRLBand
      Left = 30
      Top = 38
      Width = 734
      Height = 48
      BandType = btHeader
      object RLLabel6: TRLLabel
        Left = 282
        Top = 8
        Width = 172
        Height = 19
        Caption = 'Hist'#243'rico dos Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
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
      object RLSystemInfo3: TRLSystemInfo
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
      object RLLabel8: TRLLabel
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
      object RLSystemInfo4: TRLSystemInfo
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
      object RLLabel9: TRLLabel
        Left = 13
        Top = 32
        Width = 25
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 58
        Top = 32
        Width = 23
        Height = 14
        Caption = 'Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 248
        Top = 32
        Width = 45
        Height = 14
        Caption = 'Hist'#243'rico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 88
        Top = 32
        Width = 23
        Height = 14
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
