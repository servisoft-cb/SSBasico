object fNotaFiscalParcela: TfNotaFiscalParcela
  Left = 198
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parcelas da Nota Fiscal'
  ClientHeight = 165
  ClientWidth = 688
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 124
    Width = 688
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 203
      Top = 8
      Width = 133
      Height = 29
      Hint = 'Executa o c'#225'lculo das parcelas'
      Caption = 'Gera Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn1: TBitBtn
      Left = 336
      Top = 8
      Width = 133
      Height = 29
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 124
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label55: TLabel
      Left = 96
      Top = 58
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Cobr.:'
    end
    object Label38: TLabel
      Left = 108
      Top = 10
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Entrada:'
    end
    object Label43: TLabel
      Left = 118
      Top = 34
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo:'
    end
    object SpeedButton16: TSpeedButton
      Left = 356
      Top = 25
      Width = 23
      Height = 23
      Hint = 'Abre o cadastro de Prazos de Pgto.'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton16Click
    end
    object Label14: TLabel
      Left = 114
      Top = 82
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object SpeedButton24: TSpeedButton
      Left = 356
      Top = 50
      Width = 23
      Height = 22
      Hint = 'Abre o cadastro de tipos de cobran'#231'as'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton24Click
    end
    object Label46: TLabel
      Left = 232
      Top = 11
      Width = 30
      Height = 13
      Caption = 'In'#237'cio:'
    end
    object SpeedButton5: TSpeedButton
      Left = 356
      Top = 74
      Width = 23
      Height = 22
      Hint = 'Abre o cadastro de tipos de cobran'#231'as'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object Label66: TLabel
      Left = 442
      Top = 82
      Width = 128
      Height = 13
      Caption = '% de Transf. de ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 494
      Top = 104
      Width = 78
      Height = 13
      Caption = 'Valor Transf.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 70
      Top = 106
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' da Duplicata:'
    end
    object RxDBLookupCombo16: TRxDBLookupCombo
      Left = 150
      Top = 50
      Width = 204
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsTipoCobranca
      TabOrder = 3
      OnEnter = RxDBLookupCombo16Enter
    end
    object DBEdit7: TDBEdit
      Left = 150
      Top = 2
      Width = 59
      Height = 21
      DataField = 'Entrada'
      DataSource = DM1.dsNotaFiscal
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 150
      Top = 26
      Width = 204
      Height = 21
      DropDownCount = 8
      DataField = 'PrazoPgto'
      DataSource = DM1.dsNotaFiscal
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCondPgto
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 150
      Top = 74
      Width = 204
      Height = 21
      DropDownCount = 8
      LookupField = 'CodConta'
      LookupDisplay = 'NomeConta'
      LookupSource = DM1.dsContas
      TabOrder = 4
      OnEnter = RxDBLookupCombo1Enter
    end
    object DBDateEdit1: TDBDateEdit
      Left = 264
      Top = 3
      Width = 90
      Height = 21
      Hint = 'Selecione uma data'
      CalendarHints.Strings = (
        'Ano Anterior'
        'M'#234's Anterior'
        'Pr'#243'ximo M'#234's'
        'Pr'#243'ximo Ano')
      DataField = 'DtEntr'
      DataSource = DM1.dsNotaFiscal
      DialogTitle = 'Clique no '#237'cone para selecionar uma data'
      GlyphKind = gkCustom
      Glyph.Data = {
        E2020000424DE20200000000000042000000280000001C0000000C0000000100
        100003000000A002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7CEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
        EF3D1F7C1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F1F7C
        1F7C000000000F0000000F000F0000000F00000000000F00EF3D1F7CEF3DEF3D
        EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DFF7F1F7C1F7CFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F0F00EF3D1F7CEF3DFF7F1F7CFF7FFF7FFF7F
        1F7CFF7FFF7FFF7F1F7CEF3DFF7F1F7C1F7CFF7F000000000000FF7F00000000
        0000F75EFF7F0F00EF3D1F7CEF3DFF7FEF3DEF3DEF3D1F7CEF3DEF3DEF3D1F7C
        FF7FEF3DFF7F1F7C1F7CFF7FFF7F0000FF7FFF7FF75EFF7FF75E0000FF7F0F00
        EF3D1F7CEF3DFF7F1F7CEF3DFF7F1F7C1F7C1F7C1F7CEF3DFF7FEF3DFF7F1F7C
        1F7CFF7FFF7F0000FF7FFF7FFF7FFF7FFF7F0000FF7F0F00EF3D1F7CEF3DFF7F
        1F7CEF3DFF7F1F7C1F7CFF7FFF7FEF3D1F7CEF3DFF7F1F7C1F7CFF7FFF7F0000
        FF7FFF7F000000000000F75EFF7F0F00EF3D1F7CEF3DFF7F1F7CEF3DFF7F1F7C
        EF3DEF3DEF3D1F7C1F7CEF3DFF7F1F7C1F7CFF7F00000000FF7FFF7F0000FF7F
        FF7FFF7FFF7F0F00EF3D1F7CEF3DFF7FEF3DEF3DFF7F1F7CEF3DFF7FFF7FFF7F
        FF7FEF3DFF7F1F7C1F7CFF7FFF7F0000FF7FFF7F0000000000000000FF7F0F00
        EF3D1F7CEF3DFF7F1F7CEF3D1F7C1F7CEF3DEF3DEF3DEF3D1F7CEF3DFF7F1F7C
        1F7CFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0F00EF3D1F7CEF3DFF7F
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CEF3DFF7F1F7C1F7CFF7FF75EF75E
        F75EF75EF75EF75EF75EF75EFF7F0F00EF3D1F7CEF3DFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FEF3DFF7F1F7C1F7C0000000000000000000000000000
        0000000000001F7C1F7C1F7CEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D
        EF3DEF3D1F7C}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      StartOfWeek = Sun
      YearDigits = dyFour
    end
    object BitBtn2: TBitBtn
      Left = 654
      Top = 96
      Width = 26
      Height = 23
      Hint = 'C'#225'lculo o valor da tranfer'#234'ncia do Icms'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BitBtn2Click
      Glyph.Data = {
        1E020000424D1E0200000000000042000000280000000D000000110000000100
        100003000000DC01000000000000000000000000000000000000007C0000E003
        00001F000000F75EF75EF75EF75E0000EF3DF75EF75EF75EF75EF75EF75EF75E
        2003F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75EF75E2003F75E
        F75EF75EF75EF75E00000000EF3DF75EF75EF75EF75EF75E6400F75EF75EF75E
        F75EF75E0000E07F0000EF3DF75EF75EF75EF75E2003F75EF75EF75E00000000
        00000000E07F0000EF3DF75EF75EF75E0D02F75EF75EF75E0000E07FE07FFF7F
        E07FE07F0000EF3DF75EF75E6C00F75EF75EF75EF75E0000FF7FE07F00000000
        00000000F75EF75E0A00F75EF75EF75EF75E0000E07FFF7FE07F0000EF3DF75E
        F75EF75E0600F75E00000000000000000000E07FFF7FE07F0000EF3DF75EF75E
        2003F75E0000FF7FE07FFF7FE07FFF7FE07FFF7FE07F0000EF3DF75E0D00F75E
        F75E0000FF7FE07FFF7FE07F0000000000000000F75EF75E2003F75EF75E0000
        E07FFF7FE07FFF7FE07F0000EF3DF75EF75EF75E8D00F75EF75EF75E0000E07F
        FF7FE07FFF7FE07F0000EF3DF75EF75E4E02F75EF75EF75E0000FF7FFF7FFF7F
        E07FFF7FFF7F0000EF3DF75E2003F75EF75EF75EF75E0000FF7FE07FFF7FFF7F
        E07FFF7F0000EF3D2003F75EF75EF75EF75E0000000000000000000000000000
        000000002003F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
        7F01}
    end
    object DBEdit36: TDBEdit
      Left = 573
      Top = 74
      Width = 77
      Height = 21
      Color = clAqua
      DataField = 'PercTransf'
      DataSource = DM1.dsNotaFiscal
      TabOrder = 6
      OnEnter = DBEdit36Enter
      OnExit = DBEdit36Exit
    end
    object DBEdit10: TDBEdit
      Left = 573
      Top = 96
      Width = 79
      Height = 21
      Color = clAqua
      DataField = 'VlrTransf'
      DataSource = DM1.dsNotaFiscal
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 150
      Top = 98
      Width = 59
      Height = 21
      DataSource = DM1.dsNotaFiscal
      TabOrder = 5
    end
  end
end
