object fClienteRef: TfClienteRef
  Left = 29
  Top = 14
  Width = 759
  Height = 327
  BorderIcons = [biSystemMenu]
  Caption = 'Refer'#234'ncias / Contatos'
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 751
    Height = 262
    ActivePage = TabSheet3
    Align = alTop
    BoldCurrentTab = True
    TabIndex = 2
    TabOrder = 5
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Contatos'
      object Label8: TLabel
        Left = 27
        Top = 98
        Width = 28
        Height = 13
        Caption = 'Setor:'
        FocusControl = DBEdit8
      end
      object Label12: TLabel
        Left = 26
        Top = 76
        Width = 29
        Height = 13
        Caption = 'EMail:'
      end
      object Label5: TLabel
        Left = 28
        Top = 32
        Width = 27
        Height = 13
        Caption = 'Fone:'
      end
      object Label6: TLabel
        Left = 35
        Top = 54
        Width = 20
        Height = 13
        Caption = 'Fax:'
      end
      object Label7: TLabel
        Left = 231
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Ramal:'
      end
      object Label4: TLabel
        Left = 24
        Top = 9
        Width = 31
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit4
      end
      object Label14: TLabel
        Left = 10
        Top = 122
        Width = 45
        Height = 13
        Caption = 'Dt.Nasc.:'
      end
      object DBEdit8: TDBEdit
        Left = 57
        Top = 92
        Width = 361
        Height = 21
        DataField = 'Setor'
        DataSource = DM1.dsClienteRef
        TabOrder = 0
      end
      object DBDateEdit1: TDBDateEdit
        Left = 57
        Top = 114
        Width = 100
        Height = 21
        DataField = 'DtNascimento'
        DataSource = DM1.dsClienteRef
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Refer'#234'ncias Comerciais'
      object Label1: TLabel
        Left = 10
        Top = 9
        Width = 44
        Height = 13
        Caption = 'Empresa:'
        FocusControl = DBEdit4
      end
      object Label2: TLabel
        Left = 26
        Top = 76
        Width = 29
        Height = 13
        Caption = 'EMail:'
      end
      object Label3: TLabel
        Left = 28
        Top = 32
        Width = 27
        Height = 13
        Caption = 'Fone:'
      end
      object Label15: TLabel
        Left = 35
        Top = 54
        Width = 20
        Height = 13
        Caption = 'Fax:'
      end
      object Label16: TLabel
        Left = 231
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Ramal:'
      end
      object Label9: TLabel
        Left = 30
        Top = 106
        Width = 25
        Height = 13
        Caption = 'End.:'
      end
      object Label22: TLabel
        Left = 19
        Top = 128
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label11: TLabel
        Left = 35
        Top = 150
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object DBEdit9: TDBEdit
        Left = 56
        Top = 98
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Endereco'
        DataSource = DM1.dsClienteRef
        TabOrder = 0
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 56
        Top = 120
        Width = 321
        Height = 21
        DropDownCount = 8
        DataField = 'CodCidade'
        DataSource = DM1.dsClienteRef
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsCidade
        TabOrder = 1
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 56
        Top = 142
        Width = 45
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'UF'
        DataSource = DM1.dsClienteRef
        LookupField = 'Sigla'
        LookupDisplay = 'Sigla'
        LookupSource = DM1.dsUF
        ParentCtl3D = False
        TabOrder = 2
      end
    end
    object TabSheet3: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Refer'#234'ncias Banc'#225'rias'
      object Label17: TLabel
        Left = 21
        Top = 10
        Width = 34
        Height = 13
        Caption = 'Banco:'
        FocusControl = DBEdit4
      end
      object Label18: TLabel
        Left = 26
        Top = 76
        Width = 29
        Height = 13
        Caption = 'EMail:'
      end
      object Label19: TLabel
        Left = 28
        Top = 32
        Width = 27
        Height = 13
        Caption = 'Fone:'
      end
      object Label20: TLabel
        Left = 35
        Top = 54
        Width = 20
        Height = 13
        Caption = 'Fax:'
      end
      object Label21: TLabel
        Left = 231
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Ramal:'
      end
      object Label13: TLabel
        Left = 440
        Top = 10
        Width = 42
        Height = 13
        Caption = 'Agencia:'
        FocusControl = DBEdit13
      end
      object DBEdit13: TDBEdit
        Left = 484
        Top = 3
        Width = 61
        Height = 21
        DataField = 'Agencia'
        DataSource = DM1.dsClienteRef
        TabOrder = 0
      end
    end
  end
  object DBEdit4: TDBEdit
    Left = 58
    Top = 23
    Width = 361
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'Nome'
    DataSource = DM1.dsClienteRef
    ParentCtl3D = False
    TabOrder = 0
  end
  object DBEdit12: TDBEdit
    Left = 57
    Top = 90
    Width = 361
    Height = 21
    DataField = 'EMail'
    DataSource = DM1.dsClienteRef
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 57
    Top = 46
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'Fone'
    DataSource = DM1.dsClienteRef
    ParentCtl3D = False
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 57
    Top = 68
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    Ctl3D = True
    DataField = 'Fax'
    DataSource = DM1.dsClienteRef
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 267
    Top = 45
    Width = 69
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Ramal'
    DataSource = DM1.dsClienteRef
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 588
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 664
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object tClienteRef2: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'CodCliente'
    MasterFields = 'Codigo'
    MasterSource = DM1.dsCliente
    TableName = 'dbClienteRef.DB'
    Left = 433
    Top = 148
    object tClienteRef2CodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object tClienteRef2Item: TIntegerField
      FieldName = 'Item'
    end
    object tClienteRef2Tipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object tClienteRef2Nome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object tClienteRef2Fone: TStringField
      FieldName = 'Fone'
    end
    object tClienteRef2Fax: TStringField
      FieldName = 'Fax'
    end
    object tClienteRef2Ramal: TStringField
      FieldName = 'Ramal'
      Size = 5
    end
    object tClienteRef2Setor: TStringField
      FieldName = 'Setor'
      Size = 30
    end
    object tClienteRef2Endereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tClienteRef2CodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
    object tClienteRef2UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tClienteRef2EMail: TStringField
      FieldName = 'EMail'
      Size = 250
    end
    object tClienteRef2Agencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object tClienteRef2DtNascimento: TDateField
      FieldName = 'DtNascimento'
    end
  end
end
