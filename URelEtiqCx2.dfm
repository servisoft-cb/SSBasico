object fRelEtiqCx2: TfRelEtiqCx2
  Left = 192
  Top = 138
  Width = 756
  Height = 518
  BorderIcons = [biSystemMenu]
  Caption = 'fRelEtiqCx2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 64
    Top = 72
    Width = 382
    Height = 149
    DataSource = fEtiqCx.dsmEtiqueta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 4.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 101.000000000000000000
    PageSetup.PaperHeight = 39.420000000000000000
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 8
      Top = 0
      Width = 359
      Height = 138
      BeforePrint = RLBand1BeforePrint
      object RLBarcode1: TRLBarcode
        Left = 8
        Top = 13
        Width = 117
        Height = 70
        Alignment = taRightJustify
        AutoSize = False
        BarcodeType = bcEAN13
        Caption = '789960780161'
        CheckSum = True
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
      end
      object rlReferencia: TRLLabel
        Left = 128
        Top = 16
        Width = 141
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 292
        Top = 14
        Width = 37
        Height = 19
        Caption = 'Tam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 274
        Top = 35
        Width = 76
        Height = 19
        Alignment = taCenter
        AutoSize = False
        DataField = 'Tamanho'
        DataSource = fEtiqCx.dsmEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlNome: TRLLabel
        Left = 128
        Top = 42
        Width = 141
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLImage1: TRLImage
        Left = 240
        Top = 62
        Width = 87
        Height = 63
        Stretch = True
      end
      object rlCodBarra: TRLLabel
        Left = 16
        Top = 83
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlMat1: TRLLabel
        Left = 7
        Top = 101
        Width = 162
        Height = 10
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlMat2: TRLLabel
        Left = 7
        Top = 115
        Width = 162
        Height = 10
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLReport2: TRLReport
    Left = 272
    Top = 248
    Width = 382
    Height = 149
    DataSource = fEtiqCx.dsmEtiqueta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 4.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 101.000000000000000000
    PageSetup.PaperHeight = 39.420000000000000000
    ShowProgress = False
    object RLBand2: TRLBand
      Left = 8
      Top = 0
      Width = 359
      Height = 138
      BeforePrint = RLBand2BeforePrint
      object RLLabel1: TRLLabel
        Left = 207
        Top = 19
        Width = 138
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 310
        Top = 72
        Width = 32
        Height = 16
        Caption = 'Tam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 303
        Top = 91
        Width = 52
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'Tamanho'
        DataSource = fEtiqCx.dsmEtiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 207
        Top = 45
        Width = 138
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 48
        Top = 98
        Width = 103
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLBarcode4: TRLBarcode
        Left = 1
        Top = 17
        Width = 201
        Height = 79
        Alignment = taRightJustify
        AutoSize = False
        BarcodeType = bcEAN13
        Caption = '7899607801614'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        Module = 2
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 7
        Top = 112
        Width = 162
        Height = 10
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 7
        Top = 123
        Width = 162
        Height = 10
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLImage2: TRLImage
        Left = 208
        Top = 70
        Width = 87
        Height = 63
        Stretch = True
      end
    end
  end
end