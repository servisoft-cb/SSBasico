object fClienteTerceiro: TfClienteTerceiro
  Left = 91
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cliente (Terceiro)'
  ClientHeight = 278
  ClientWidth = 735
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
    Width = 735
    Height = 39
    Align = alTop
    TabOrder = 0
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
    Width = 735
    Height = 239
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 587
      Top = 10
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 60
      Top = 11
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 561
      Top = 30
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro:'
    end
    object Label4: TLabel
      Left = 597
      Top = 50
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label5: TLabel
      Left = 584
      Top = 70
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label11: TLabel
      Left = 55
      Top = 126
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object Label13: TLabel
      Left = 48
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Fantasia:'
    end
    object Label6: TLabel
      Left = 42
      Top = 54
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label7: TLabel
      Left = 61
      Top = 76
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object Label8: TLabel
      Left = 69
      Top = 98
      Width = 22
      Height = 13
      Caption = 'Cep:'
    end
    object Label9: TLabel
      Left = 369
      Top = 126
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label12: TLabel
      Left = 36
      Top = 173
      Width = 55
      Height = 13
      Caption = 'CNPJ/CPF:'
      FocusControl = DBEdit11
    end
    object Label10: TLabel
      Left = 53
      Top = 152
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
    end
    object Label14: TLabel
      Left = 316
      Top = 173
      Width = 70
      Height = 13
      Caption = 'Inscr.Estadual:'
      FocusControl = DBEdit12
    end
    object Label15: TLabel
      Left = 64
      Top = 192
      Width = 27
      Height = 13
      Caption = 'Fone:'
      FocusControl = DBEdit13
    end
    object Label16: TLabel
      Left = 71
      Top = 218
      Width = 20
      Height = 13
      Caption = 'Fax:'
      FocusControl = DBEdit15
    end
    object DBEdit1: TDBEdit
      Left = 624
      Top = 2
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'CODIGO'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit3: TDBEdit
      Left = 624
      Top = 22
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'DTCAD'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit4: TDBEdit
      Left = 624
      Top = 42
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'HRCAD'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ReadOnly = True
      TabOrder = 16
    end
    object DBEdit5: TDBEdit
      Left = 624
      Top = 62
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ReadOnly = True
      TabOrder = 17
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 94
      Top = 118
      Width = 233
      Height = 21
      DropDownCount = 8
      DataField = 'CODCIDADE'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCidade
      TabOrder = 5
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo3Exit
    end
    object DBEdit7: TDBEdit
      Left = 94
      Top = 8
      Width = 323
      Height = 21
      DataField = 'NOME'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 94
      Top = 29
      Width = 323
      Height = 21
      DataField = 'NOME'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 94
      Top = 51
      Width = 323
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 94
      Top = 73
      Width = 233
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 94
      Top = 95
      Width = 233
      Height = 21
      DataField = 'CEP'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 389
      Top = 118
      Width = 33
      Height = 21
      DataField = 'UF'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      TabOrder = 6
    end
    object DBEdit11: TDBEdit
      Left = 94
      Top = 165
      Width = 144
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'CGCCPF'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ParentCtl3D = False
      TabOrder = 8
      OnExit = DBEdit11Exit
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 94
      Top = 141
      Width = 113
      Height = 21
      Style = csDropDownList
      DataField = 'PESSOA'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Jur'#237'dica'
        'F'#237'sica')
      TabOrder = 7
      Values.Strings = (
        'J'
        'F')
    end
    object DBEdit12: TDBEdit
      Left = 389
      Top = 165
      Width = 144
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'INSCREST'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ParentCtl3D = False
      TabOrder = 9
      OnExit = DBEdit11Exit
    end
    object DBEdit13: TDBEdit
      Left = 94
      Top = 188
      Width = 56
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'DDDFONE1'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ParentCtl3D = False
      TabOrder = 10
      OnExit = DBEdit11Exit
    end
    object DBEdit14: TDBEdit
      Left = 150
      Top = 188
      Width = 152
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'TELEFONE'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ParentCtl3D = False
      TabOrder = 11
      OnExit = DBEdit11Exit
    end
    object DBEdit15: TDBEdit
      Left = 94
      Top = 212
      Width = 56
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'DDDFAX'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ParentCtl3D = False
      TabOrder = 12
      OnExit = DBEdit11Exit
    end
    object DBEdit16: TDBEdit
      Left = 150
      Top = 212
      Width = 152
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      DataField = 'FAX'
      DataSource = DMClienteTerceiro.dsClienteTerceiro
      ParentCtl3D = False
      TabOrder = 13
      OnExit = DBEdit11Exit
    end
  end
  object VerificaCGC1: TVerificaCGC
    Resultado = False
    Left = 461
    Top = 185
  end
  object VerificaCPF1: TVerificaCPF
    Resultado = False
    Left = 496
    Top = 184
  end
end
