object fTipo_Produto: TfTipo_Produto
  Left = 91
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tipo'
  ClientHeight = 186
  ClientWidth = 563
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 39
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 6
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 80
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 563
    Height = 147
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 51
      Top = 18
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 54
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 10
      Width = 102
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODIGO'
      DataSource = DMTipo_Produto.dsTipo_Produto
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 32
      Width = 323
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMTipo_Produto.dsTipo_Produto
      TabOrder = 1
    end
  end
end
