object fUsuarios: TfUsuarios
  Left = 94
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 523
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 490
    Align = alClient
    Enabled = False
    TabOrder = 0
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 787
      Height = 63
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 66
        Height = 19
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 35
        Top = 36
        Width = 55
        Height = 19
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 380
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Funcion'#225'rio:'
      end
      object DBEdit1: TDBEdit
        Left = 97
        Top = 6
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Usuario'
        DataSource = DM1.dsUsuario
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 98
        Top = 34
        Width = 55
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Senha'
        DataSource = DM1.dsUsuario
        PasswordChar = '*'
        TabOrder = 1
        OnKeyDown = DBEdit2KeyDown
      end
      object Panel3: TPanel
        Left = 440
        Top = 35
        Width = 121
        Height = 24
        TabOrder = 2
        object DBCheckBox1: TDBCheckBox
          Left = 13
          Top = 3
          Width = 97
          Height = 17
          Caption = 'Administrador'
          DataField = 'Administrador'
          DataSource = DM1.dsUsuario
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 440
        Top = 8
        Width = 321
        Height = 21
        DropDownCount = 8
        DataField = 'CodFuncionario'
        DataSource = DM1.dsUsuario
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsFuncionario
        TabOrder = 3
        OnEnter = RxDBLookupCombo1Enter
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 64
      Width = 787
      Height = 425
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Manuten'#231#227'o'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel1: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 397
            Shape = bsLeftLine
          end
          object Bevel2: TBevel
            Left = 251
            Top = 2
            Width = 25
            Height = 391
          end
          object Bevel3: TBevel
            Left = 528
            Top = 2
            Width = 25
            Height = 388
          end
          object Bevel26: TBevel
            Left = 752
            Top = 1
            Width = 25
            Height = 388
          end
          object DBCheckBox2: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 
              'Clientes........................................................' +
              '.......'
            DataField = 'Clientes'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox2Click
          end
          object DBCheckBox3: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 
              'Estados e Al'#237'q'#252'otas.............................................' +
              '........'
            DataField = 'Uf'
            DataSource = DM1.dsUsuario
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox3Click
          end
          object DBCheckBox4: TDBCheckBox
            Left = 13
            Top = 108
            Width = 236
            Height = 17
            Caption = 
              'Grades..........................................................' +
              '.......'
            DataField = 'Grade'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox4Click
          end
          object DBCheckBox5: TDBCheckBox
            Left = 13
            Top = 148
            Width = 236
            Height = 17
            Caption = 
              'Hist'#243'ricos......................................................' +
              '.......'
            DataField = 'Historicos'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox5Click
          end
          object DBCheckBox6: TDBCheckBox
            Left = 13
            Top = 228
            Width = 236
            Height = 17
            Caption = 
              'Par'#226'metros......................................................' +
              '......'
            DataField = 'Parametro'
            DataSource = DM1.dsUsuario
            TabOrder = 22
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 290
            Top = 28
            Width = 236
            Height = 17
            Caption = 
              'Situa'#231#227'o Tribut'#225'ria.............................................' +
              '...........'
            DataField = 'SitTrib'
            DataSource = DM1.dsUsuario
            TabOrder = 27
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox8Click
          end
          object DBCheckBox24: TDBCheckBox
            Left = 13
            Top = 48
            Width = 236
            Height = 17
            Caption = 
              'Cor.............................................................' +
              '........'
            DataField = 'Cor'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox24Click
          end
          object DBCheckBox25: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 'Condi'#231#245'es de Pagamentos...............................'
            DataField = 'CondPgto'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox25Click
          end
          object DBCheckBox26: TDBCheckBox
            Left = 13
            Top = 188
            Width = 236
            Height = 17
            Caption = 
              'Natureza de Opera'#231#227'o............................................' +
              '.................'
            DataField = 'NatOper'
            DataSource = DM1.dsUsuario
            TabOrder = 18
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox26Click
          end
          object DBCheckBox27: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 'Classifica'#231#227'o Fiscal...........................................'
            DataField = 'ClasFiscal'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox27Click
          end
          object DBCheckBox22: TDBCheckBox
            Left = 13
            Top = 245
            Width = 236
            Height = 17
            Caption = 
              'Regi'#245'es de Vendas...............................................' +
              '...........'
            DataField = 'RegioesVendas'
            DataSource = DM1.dsUsuario
            TabOrder = 23
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox22Click
          end
          object DBCheckBox14: TDBCheckBox
            Left = 290
            Top = 48
            Width = 236
            Height = 17
            Caption = 
              'Transportadoras.................................................' +
              '.'
            DataField = 'Transp'
            DataSource = DM1.dsUsuario
            TabOrder = 29
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox14Click
          end
          object DBCheckBox33: TDBCheckBox
            Left = 13
            Top = 128
            Width = 236
            Height = 17
            Caption = 
              'Grupos..........................................................' +
              '......'
            DataField = 'Grupos'
            DataSource = DM1.dsUsuario
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox33Click
          end
          object DBCheckBox39: TDBCheckBox
            Left = 13
            Top = 208
            Width = 236
            Height = 17
            Caption = 'Observa'#231#245'es Auxiliares.........................................'
            DataField = 'ObsAux'
            DataSource = DM1.dsUsuario
            TabOrder = 20
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox39Click
          end
          object DBCheckBox41: TDBCheckBox
            Left = 13
            Top = 168
            Width = 236
            Height = 17
            Caption = 
              'Impressoras.....................................................' +
              '..'
            DataField = 'Impressoras'
            DataSource = DM1.dsUsuario
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox41Click
          end
          object BitBtn7: TBitBtn
            Left = 255
            Top = 8
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn7Click
          end
          object BitBtn8: TBitBtn
            Left = 255
            Top = 28
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BitBtn8Click
          end
          object BitBtn9: TBitBtn
            Left = 255
            Top = 48
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = BitBtn9Click
          end
          object BitBtn10: TBitBtn
            Left = 255
            Top = 68
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BitBtn10Click
          end
          object BitBtn11: TBitBtn
            Left = 255
            Top = 88
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = BitBtn11Click
          end
          object BitBtn12: TBitBtn
            Left = 255
            Top = 108
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnClick = BitBtn12Click
          end
          object BitBtn13: TBitBtn
            Left = 255
            Top = 128
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnClick = BitBtn13Click
          end
          object BitBtn14: TBitBtn
            Left = 255
            Top = 148
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnClick = BitBtn14Click
          end
          object BitBtn15: TBitBtn
            Left = 255
            Top = 168
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnClick = BitBtn15Click
          end
          object BitBtn16: TBitBtn
            Left = 255
            Top = 188
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnClick = BitBtn16Click
          end
          object BitBtn17: TBitBtn
            Left = 255
            Top = 208
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 21
            OnClick = BitBtn17Click
          end
          object BitBtn20: TBitBtn
            Left = 255
            Top = 245
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 24
            OnClick = BitBtn20Click
          end
          object BitBtn22: TBitBtn
            Left = 532
            Top = 28
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 28
            OnClick = BitBtn22Click
          end
          object DBCheckBox48: TDBCheckBox
            Left = 290
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Clientes...........................................' +
              '.'
            DataField = 'RelCli'
            DataSource = DM1.dsUsuario
            TabOrder = 31
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BitBtn18: TBitBtn
            Left = 532
            Top = 48
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 30
            OnClick = BitBtn18Click
          end
          object DBCheckBox51: TDBCheckBox
            Left = 290
            Top = 88
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Vendedores.........................................' +
              '...'
            DataField = 'RelVendedores'
            DataSource = DM1.dsUsuario
            TabOrder = 32
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox52: TDBCheckBox
            Left = 290
            Top = 128
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Etiquetas Clientes.................................' +
              '.................'
            DataField = 'RelEtiqCli'
            DataSource = DM1.dsUsuario
            TabOrder = 34
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox53: TDBCheckBox
            Left = 290
            Top = 148
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Etiquetas Vendedores......................'
            DataField = 'RelEtiqVend'
            DataSource = DM1.dsUsuario
            TabOrder = 35
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox54: TDBCheckBox
            Left = 290
            Top = 168
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Etiquetas Fornecedores.....................'
            DataField = 'RelEtiqForn'
            DataSource = DM1.dsUsuario
            TabOrder = 36
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox106: TDBCheckBox
            Left = 290
            Top = 208
            Width = 236
            Height = 17
            Caption = 
              'M'#227'o de Obra.....................................................' +
              '....'
            DataField = 'MaoDeObra'
            DataSource = DM1.dsUsuario
            TabOrder = 37
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BitBtn41: TBitBtn
            Left = 532
            Top = 208
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 38
          end
          object DBCheckBox57: TDBCheckBox
            Left = 13
            Top = 285
            Width = 236
            Height = 17
            Caption = 
              'Cidades.........................................................' +
              '........'
            DataField = 'Cidade'
            DataSource = DM1.dsUsuario
            TabOrder = 25
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox57Click
          end
          object BitBtn46: TBitBtn
            Left = 255
            Top = 285
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 26
            OnClick = BitBtn46Click
          end
          object DBCheckBox121: TDBCheckBox
            Left = 290
            Top = 108
            Width = 236
            Height = 17
            Caption = 'Agenda Telef'#244'nica...........................................'
            DataField = 'Agenda'
            DataSource = DM1.dsUsuario
            TabOrder = 33
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox15: TDBCheckBox
            Left = 290
            Top = 228
            Width = 236
            Height = 17
            Caption = 
              'Funcion'#225'rios....................................................' +
              '......'
            DataField = 'Funcionario'
            DataSource = DM1.dsUsuario
            TabOrder = 39
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox15Click
          end
          object BitBtn24: TBitBtn
            Left = 532
            Top = 228
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 40
            OnClick = BitBtn24Click
          end
          object DBCheckBox23: TDBCheckBox
            Left = 290
            Top = 248
            Width = 236
            Height = 17
            Caption = 'Tabela de Pre'#231'o...............................................'
            DataField = 'TabPreco'
            DataSource = DM1.dsUsuario
            TabOrder = 41
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BitBtn43: TBitBtn
            Left = 532
            Top = 248
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 42
            OnClick = BitBtn43Click
          end
          object DBCheckBox37: TDBCheckBox
            Left = 291
            Top = 268
            Width = 236
            Height = 17
            Caption = 'Agenda de Contatos........................................'
            DataField = 'AgeContato'
            DataSource = DM1.dsUsuario
            TabOrder = 43
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox37Click
          end
          object BitBtn49: TBitBtn
            Left = 531
            Top = 269
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 44
            OnClick = BitBtn49Click
          end
          object DBCheckBox30: TDBCheckBox
            Left = 291
            Top = 289
            Width = 236
            Height = 17
            Caption = 'Hist'#243'rico do Cliente..........................................'
            DataField = 'HistCliente'
            DataSource = DM1.dsUsuario
            TabOrder = 45
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox30Click
          end
          object BitBtn21: TBitBtn
            Left = 531
            Top = 290
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 46
            OnClick = BitBtn21Click
          end
          object DBCheckBox60: TDBCheckBox
            Left = 13
            Top = 304
            Width = 236
            Height = 17
            Caption = 
              'Filial..........................................................' +
              '.........'
            DataField = 'Filial'
            DataSource = DM1.dsUsuario
            TabOrder = 47
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox60Click
          end
          object BitBtn45: TBitBtn
            Left = 255
            Top = 304
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 48
            OnClick = BitBtn45Click
          end
          object DBCheckBox101: TDBCheckBox
            Left = 13
            Top = 265
            Width = 236
            Height = 17
            Caption = 'Grupo de clientes.............................................'
            DataField = 'GrupoCliente'
            DataSource = DM1.dsUsuario
            TabOrder = 49
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox101Click
          end
          object BitBtn39: TBitBtn
            Left = 255
            Top = 265
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 50
            OnClick = BitBtn39Click
          end
          object DBCheckBox110: TDBCheckBox
            Left = 13
            Top = 322
            Width = 236
            Height = 17
            Caption = 
              'Feriados........................................................' +
              '...'
            DataField = 'Feriado'
            DataSource = DM1.dsUsuario
            TabOrder = 51
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox110Click
          end
          object BitBtn44: TBitBtn
            Left = 255
            Top = 322
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 52
            OnClick = BitBtn44Click
          end
          object DBCheckBox132: TDBCheckBox
            Left = 291
            Top = 310
            Width = 236
            Height = 17
            Caption = 
              'Unidade.........................................................' +
              '..'
            DataField = 'Unidade'
            DataSource = DM1.dsUsuario
            TabOrder = 53
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox132Click
          end
          object BitBtn47: TBitBtn
            Left = 531
            Top = 311
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 54
            OnClick = BitBtn47Click
          end
          object DBCheckBox133: TDBCheckBox
            Left = 290
            Top = 7
            Width = 236
            Height = 17
            Caption = 'Cadastro Geral.................................................'
            DataField = 'CadastroSimples'
            DataSource = DM1.dsUsuario
            TabOrder = 55
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox133Click
          end
          object BitBtn52: TBitBtn
            Left = 531
            Top = 7
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 56
            OnClick = BitBtn52Click
          end
          object DBCheckBox138: TDBCheckBox
            Left = 291
            Top = 331
            Width = 236
            Height = 17
            Caption = 
              'Impostos........................................................' +
              '...'
            DataField = 'Imposto'
            DataSource = DM1.dsUsuario
            TabOrder = 57
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox138Click
          end
          object BitBtn53: TBitBtn
            Left = 531
            Top = 332
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 58
            OnClick = BitBtn53Click
          end
          object DBCheckBox63: TDBCheckBox
            Left = 13
            Top = 342
            Width = 236
            Height = 17
            Caption = 'Cadastro do Tipo de Indica'#231#227'o de Cliente.......'
            DataField = 'TipoIndicacao'
            DataSource = DM1.dsUsuario
            TabOrder = 59
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox63Click
          end
          object BitBtn56: TBitBtn
            Left = 255
            Top = 342
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 60
            OnClick = BitBtn56Click
          end
          object BitBtn37: TBitBtn
            Left = 255
            Top = 361
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 61
            OnClick = BitBtn37Click
          end
          object DBCheckBox45: TDBCheckBox
            Left = 13
            Top = 362
            Width = 236
            Height = 17
            Caption = 
              'Pais............................................................' +
              '......'
            DataField = 'Pais'
            DataSource = DM1.dsUsuario
            TabOrder = 62
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox63Click
          end
          object DBCheckBox9: TDBCheckBox
            Left = 291
            Top = 350
            Width = 236
            Height = 17
            Caption = 
              'Fornecedores....................................................' +
              '......'
            DataField = 'Fornecedores'
            DataSource = DM1.dsUsuario
            TabOrder = 63
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox9Click
          end
          object DBCheckBox10: TDBCheckBox
            Left = 291
            Top = 370
            Width = 236
            Height = 17
            Caption = 
              'Materiais.......................................................' +
              '..........'
            DataField = 'Material'
            DataSource = DM1.dsUsuario
            TabOrder = 64
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox10Click
          end
          object BitBtn23: TBitBtn
            Left = 531
            Top = 369
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 65
            OnClick = BitBtn23Click
          end
          object BitBtn27: TBitBtn
            Left = 531
            Top = 350
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 66
            OnClick = BitBtn27Click
          end
          object DBCheckBox156: TDBCheckBox
            Left = 556
            Top = 7
            Width = 193
            Height = 17
            Caption = 'Cliente (Terceiro)................................'
            DataField = 'ClienteTerceiro'
            DataSource = DM1.dsUsuario
            TabOrder = 67
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox156Click
          end
          object BitBtn65: TBitBtn
            Left = 756
            Top = 7
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 68
            OnClick = BitBtn65Click
          end
          object DBCheckBox159: TDBCheckBox
            Left = 556
            Top = 23
            Width = 193
            Height = 17
            Caption = 'Faca (Cartonagem)'
            DataField = 'Faca'
            DataSource = DM1.dsUsuario
            TabOrder = 69
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox161: TDBCheckBox
            Left = 556
            Top = 41
            Width = 193
            Height = 17
            Caption = 'Refer'#234'ncia Estruturada (Tipos)..........'
            DataField = 'RefEstruturada_Tipos'
            DataSource = DM1.dsUsuario
            TabOrder = 70
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox161Click
          end
          object BitBtn68: TBitBtn
            Left = 754
            Top = 41
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 71
            OnClick = BitBtn68Click
          end
          object DBCheckBox163: TDBCheckBox
            Left = 556
            Top = 60
            Width = 193
            Height = 17
            Caption = 'Processo Metal'#250'rgica........................'
            DataField = 'Processo'
            DataSource = DM1.dsUsuario
            TabOrder = 72
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox163Click
          end
          object BitBtn70: TBitBtn
            Left = 754
            Top = 60
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 73
            OnClick = BitBtn70Click
          end
          object DBCheckBox166: TDBCheckBox
            Left = 556
            Top = 80
            Width = 193
            Height = 17
            Caption = 'Gerar C'#243'digo de Barras......................'
            DataField = 'GerarCodBarra'
            DataSource = DM1.dsUsuario
            TabOrder = 74
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox166Click
          end
          object BitBtn73: TBitBtn
            Left = 754
            Top = 80
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 75
            OnClick = BitBtn73Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Compras'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel4: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 362
          end
          object Bevel8: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 397
            Shape = bsLeftLine
          end
          object Bevel12: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 362
          end
          object DBCheckBox11: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 'Nota de Compra.................................................'
            DataField = 'NotaEnt'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox12: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 'Ordem de Compra...............................................'
            DataField = 'OrdemCompra'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
            OnClick = DBCheckBox12Click
          end
          object BitBtn26: TBitBtn
            Left = 255
            Top = 28
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitBtn26Click
          end
          object DBCheckBox47: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Fornecedores......................................'
            DataField = 'RelForn'
            DataSource = DM1.dsUsuario
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox49: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Materiais........................................'
            DataField = 'RelProdutos'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox50: TDBCheckBox
            Left = 13
            Top = 108
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Estoque de Materiais...............................' +
              '.....'
            DataField = 'RelEstMat'
            DataSource = DM1.dsUsuario
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox102: TDBCheckBox
            Left = 13
            Top = 188
            Width = 236
            Height = 17
            Caption = 
              'Atividade.......................................................' +
              '......'
            DataField = 'Atividade'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox102Click
          end
          object BitBtn40: TBitBtn
            Left = 255
            Top = 188
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BitBtn40Click
          end
          object DBCheckBox105: TDBCheckBox
            Left = 13
            Top = 208
            Width = 236
            Height = 17
            Caption = 
              'Consulta de Fornecedores p/ Atividade...........................' +
              '.........'
            DataField = 'ConsFornecAtiv'
            DataSource = DM1.dsUsuario
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox107: TDBCheckBox
            Left = 13
            Top = 228
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Materiais Abaixo do M'#237'nimo.........................' +
              '....'
            DataField = 'RelMatMinimo'
            DataSource = DM1.dsUsuario
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox108: TDBCheckBox
            Left = 13
            Top = 248
            Width = 236
            Height = 17
            Caption = 'Consulta de Estoque de Materiais.........................'
            DataField = 'ConsEstoqueMat'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox112: TDBCheckBox
            Left = 13
            Top = 268
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Hist'#243'rico do Material.....................'
            DataField = 'RelHistMaterial'
            DataSource = DM1.dsUsuario
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox120: TDBCheckBox
            Left = 285
            Top = 88
            Width = 241
            Height = 17
            Caption = 
              'Dcto. de Entrada e Sa'#237'da do Estoque.............................' +
              '............................'
            DataField = 'DctoEst'
            DataSource = DM1.dsUsuario
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
            OnClick = DBCheckBox120Click
          end
          object BitBtn48: TBitBtn
            Left = 531
            Top = 88
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnClick = BitBtn48Click
          end
          object DBCheckBox126: TDBCheckBox
            Left = 285
            Top = 108
            Width = 241
            Height = 18
            Caption = 'Relat'#243'rio de Balan'#231'o do Estoque.................................'
            DataField = 'RelBalancoEst'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox127: TDBCheckBox
            Left = 13
            Top = 288
            Width = 237
            Height = 17
            Caption = 'Relat'#243'rio de Notas de Entrada.................................'
            DataField = 'RelNEntrada'
            DataSource = DM1.dsUsuario
            TabOrder = 15
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox128: TDBCheckBox
            Left = 13
            Top = 308
            Width = 237
            Height = 17
            Caption = 'Relat'#243'rio de Ordens de Compras.................................'
            DataField = 'RelOC'
            DataSource = DM1.dsUsuario
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox113: TDBCheckBox
            Left = 286
            Top = 127
            Width = 241
            Height = 18
            Caption = 'Consulta Hist'#243'rico de Material.................................'
            DataField = 'ConsHistMat'
            DataSource = DM1.dsUsuario
            TabOrder = 17
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox97: TDBCheckBox
            Left = 286
            Top = 146
            Width = 241
            Height = 18
            Caption = 
              'Baixa Estoque...................................................' +
              '.'
            DataField = 'BaixaEstoque'
            DataSource = DM1.dsUsuario
            TabOrder = 18
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object BitBtn51: TBitBtn
            Left = 255
            Top = 8
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnClick = BitBtn51Click
          end
          object DBCheckBox59: TDBCheckBox
            Left = 13
            Top = 47
            Width = 236
            Height = 17
            Caption = 'Consulta Notas de Beneficiamento..................'
            DataField = 'ConsNotasBeneficiamento'
            DataSource = DM1.dsUsuario
            TabOrder = 20
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox139: TDBCheckBox
            Left = 13
            Top = 329
            Width = 237
            Height = 17
            Caption = 'Relat'#243'rio Invent'#225'rio..........................................'
            DataField = 'RelInventario'
            DataSource = DM1.dsUsuario
            TabOrder = 21
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox144: TDBCheckBox
            Left = 286
            Top = 164
            Width = 241
            Height = 18
            Caption = 'Mostra Pre'#231'o do Material....................................'
            DataField = 'MostraPrecoMat'
            DataSource = DM1.dsUsuario
            TabOrder = 22
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox151: TDBCheckBox
            Left = 286
            Top = 180
            Width = 241
            Height = 18
            Caption = 'Recebe NFe (XML)............................................'
            DataField = 'NFeRecebe'
            DataSource = DM1.dsUsuario
            TabOrder = 23
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox152: TDBCheckBox
            Left = 286
            Top = 196
            Width = 241
            Height = 18
            Caption = 'Grava NFe de Entrada (XML)............................'
            DataField = 'NFeRecebeGrava'
            DataSource = DM1.dsUsuario
            TabOrder = 24
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox80: TDBCheckBox
            Left = 13
            Top = 127
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Notas de Entr. p/ Nat. Opera'#231#227'o....................' +
              '..................'
            DataField = 'RelNEntrNatOper'
            DataSource = DM1.dsUsuario
            TabOrder = 25
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'PCP'
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel5: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 392
          end
          object Bevel13: TBevel
            Left = 528
            Top = 3
            Width = 25
            Height = 393
          end
          object DBCheckBox31: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 'Baixa de Pedidos................................................'
            DataField = 'BaixaPedidos'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox17: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 
              'Produtos(Ficha T'#233'cnica).........................................' +
              '......'
            DataField = 'Produto'
            DataSource = DM1.dsUsuario
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox17Click
          end
          object DBCheckBox16: TDBCheckBox
            Left = 13
            Top = 108
            Width = 236
            Height = 17
            Caption = 
              'Setor...........................................................' +
              '...........'
            DataField = 'Setor'
            DataSource = DM1.dsUsuario
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
            OnClick = DBCheckBox16Click
          end
          object DBCheckBox44: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Pedido..........................................................' +
              '.......'
            DataField = 'Pedido'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox44Click
          end
          object BitBtn25: TBitBtn
            Left = 255
            Top = 108
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            Visible = False
            OnClick = BitBtn25Click
          end
          object BitBtn28: TBitBtn
            Left = 255
            Top = 68
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitBtn28Click
          end
          object BitBtn29: TBitBtn
            Left = 255
            Top = 88
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = BitBtn29Click
          end
          object DBCheckBox55: TDBCheckBox
            Left = 13
            Top = 128
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de C'#225'lculo de Material p/ Lote........................' +
              '...............'
            DataField = 'RelCalcMatLote'
            DataSource = DM1.dsUsuario
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox58: TDBCheckBox
            Left = 13
            Top = 148
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Pedidos n'#227'o Faturados..............................' +
              '........................................'
            DataField = 'RelPedNFat'
            DataSource = DM1.dsUsuario
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox111: TDBCheckBox
            Left = 290
            Top = 123
            Width = 236
            Height = 17
            Caption = 
              'Exclui tal'#245'es...................................................' +
              '..'
            DataField = 'ExcluirTalao'
            DataSource = DM1.dsUsuario
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox115: TDBCheckBox
            Left = 290
            Top = 103
            Width = 236
            Height = 17
            Caption = 'Pedido Especial................................................'
            DataField = 'PedidoEsp'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
            OnClick = DBCheckBox115Click
          end
          object BitBtn42: TBitBtn
            Left = 531
            Top = 103
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnClick = BitBtn42Click
          end
          object DBCheckBox18: TDBCheckBox
            Left = 13
            Top = 288
            Width = 236
            Height = 17
            Caption = 
              'Programa'#231#227'o.....................................................' +
              '...'
            DataField = 'Programacao'
            DataSource = DM1.dsUsuario
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox18Click
          end
          object BitBtn36: TBitBtn
            Left = 255
            Top = 288
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            Visible = False
            OnClick = BitBtn36Click
          end
          object DBCheckBox34: TDBCheckBox
            Left = 13
            Top = 308
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Embarque Di'#225'rio.............................'
            DataField = 'RelEmbDiario'
            DataSource = DM1.dsUsuario
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox42: TDBCheckBox
            Left = 290
            Top = 144
            Width = 236
            Height = 17
            Caption = 'Hist'#243'rico de Pedidos.........................................'
            DataField = 'HistPedido'
            DataSource = DM1.dsUsuario
            TabOrder = 17
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox70: TDBCheckBox
            Left = 291
            Top = 200
            Width = 236
            Height = 17
            Caption = 
              'Baixa Produ'#231#227'o..................................................' +
              '.'
            DataField = 'BaixaProducao'
            DataSource = DM1.dsUsuario
            TabOrder = 18
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox71: TDBCheckBox
            Left = 291
            Top = 220
            Width = 236
            Height = 17
            Caption = 'Or'#231'amentos......................................................'
            DataField = 'Orcamento'
            DataSource = DM1.dsUsuario
            TabOrder = 19
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BitBtn38: TBitBtn
            Left = 531
            Top = 215
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 20
            OnClick = BitBtn38Click
          end
          object DBCheckBox56: TDBCheckBox
            Left = 291
            Top = 240
            Width = 236
            Height = 17
            Caption = 'Consulta Pedidos.............................................'
            DataField = 'ConsPedidos'
            DataSource = DM1.dsUsuario
            TabOrder = 21
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox66: TDBCheckBox
            Left = 291
            Top = 259
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Pedido em Carteira (Quantidade);;'
            DataField = 'RelPedCarteira'
            DataSource = DM1.dsUsuario
            TabOrder = 22
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox68: TDBCheckBox
            Left = 291
            Top = 278
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Pedido em Carteira (Valor)............'
            DataField = 'RelPedCarteiraVlr'
            DataSource = DM1.dsUsuario
            TabOrder = 23
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox99: TDBCheckBox
            Left = 13
            Top = 169
            Width = 236
            Height = 17
            Caption = 'Consulta Amostra/Reposi'#231#227'o (Entr./Pend.).....'
            DataField = 'ConsAmostra'
            DataSource = DM1.dsUsuario
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox32: TDBCheckBox
            Left = 13
            Top = 266
            Width = 236
            Height = 17
            Caption = 'Hist'#243'rico do Produto'
            DataField = 'HistProduto'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox109: TDBCheckBox
            Left = 291
            Top = 297
            Width = 236
            Height = 17
            Caption = 'Impress'#227'o dos Lotes (Tal'#245'es) de produ'#231#227'o......'
            DataField = 'RelTalao'
            DataSource = DM1.dsUsuario
            TabOrder = 24
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox114: TDBCheckBox
            Left = 13
            Top = 26
            Width = 236
            Height = 17
            Caption = 'Consulta Clientes Pendentes por Produto........'
            DataField = 'ConsClienteProdPend'
            DataSource = DM1.dsUsuario
            TabOrder = 25
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox116: TDBCheckBox
            Left = 290
            Top = 12
            Width = 236
            Height = 17
            Caption = 'Consulta Lotes.................................................'
            DataField = 'ConsLote'
            DataSource = DM1.dsUsuario
            TabOrder = 26
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox124: TDBCheckBox
            Left = 290
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Gera Lotes......................................................' +
              '.'
            DataField = 'GeraLote'
            DataSource = DM1.dsUsuario
            TabOrder = 29
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox131: TDBCheckBox
            Left = 13
            Top = 44
            Width = 236
            Height = 17
            Caption = 'Consulta Material na Ficha T'#233'cnica.................'
            DataField = 'ConsMaterialFicha'
            DataSource = DM1.dsUsuario
            TabOrder = 30
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox140: TDBCheckBox
            Left = 291
            Top = 315
            Width = 236
            Height = 17
            Caption = 'Tipo de Processo.............................................'
            DataField = 'TipoProcesso'
            DataSource = DM1.dsUsuario
            TabOrder = 31
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
            OnClick = DBCheckBox140Click
          end
          object BitBtn54: TBitBtn
            Left = 531
            Top = 312
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 32
            Visible = False
            OnClick = BitBtn54Click
          end
          object DBCheckBox141: TDBCheckBox
            Left = 13
            Top = 326
            Width = 236
            Height = 17
            Caption = 'Consulta Pedido Por Processo.........................'
            DataField = 'ConsPedidoProcesso'
            DataSource = DM1.dsUsuario
            TabOrder = 33
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox62: TDBCheckBox
            Left = 291
            Top = 334
            Width = 236
            Height = 17
            Caption = 'Posi'#231#227'o do Material.........................................'
            DataField = 'Posicao'
            DataSource = DM1.dsUsuario
            TabOrder = 34
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
            OnClick = DBCheckBox62Click
          end
          object BitBtn55: TBitBtn
            Left = 531
            Top = 331
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 35
            Visible = False
            OnClick = BitBtn55Click
          end
          object DBCheckBox147: TDBCheckBox
            Left = 290
            Top = 30
            Width = 236
            Height = 17
            Caption = 'Imprime tal'#245'es faturados...................................'
            DataField = 'TalaoImprFaturado'
            DataSource = DM1.dsUsuario
            TabOrder = 27
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox148: TDBCheckBox
            Left = 290
            Top = 49
            Width = 236
            Height = 17
            Caption = 'Baixa Tal'#245'es / Pedidos....................................'
            DataField = 'TalaoBaixaManual'
            DataSource = DM1.dsUsuario
            TabOrder = 28
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox157: TDBCheckBox
            Left = 13
            Top = 187
            Width = 236
            Height = 17
            Caption = 'Pedido de Amostra...........................................'
            DataField = 'PedAmostra'
            DataSource = DM1.dsUsuario
            TabOrder = 36
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox157Click
          end
          object BitBtn66: TBitBtn
            Left = 255
            Top = 187
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 37
            OnClick = BitBtn66Click
          end
          object DBCheckBox158: TDBCheckBox
            Left = 291
            Top = 85
            Width = 236
            Height = 17
            Caption = 'Consulta Movimento Pedido.............................'
            DataField = 'ConsMovPedido'
            DataSource = DM1.dsUsuario
            TabOrder = 38
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox162: TDBCheckBox
            Left = 291
            Top = 355
            Width = 236
            Height = 17
            Caption = 'Matriz (Localiza'#231#227'o).........................................'
            DataField = 'Matriz_Loc'
            DataSource = DM1.dsUsuario
            TabOrder = 39
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox162Click
          end
          object BitBtn69: TBitBtn
            Left = 531
            Top = 352
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 40
            OnClick = BitBtn69Click
          end
          object DBCheckBox167: TDBCheckBox
            Left = 13
            Top = 343
            Width = 236
            Height = 17
            Caption = 'Impress'#227'o da Etiqueta Individual......................'
            DataField = 'EtiquetaIndividual'
            DataSource = DM1.dsUsuario
            TabOrder = 41
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Faturamento'
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel6: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 358
          end
          object Bevel10: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 364
            Shape = bsLeftLine
          end
          object Bevel14: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 358
          end
          object Bevel25: TBevel
            Left = 748
            Top = 4
            Width = 25
            Height = 389
          end
          object DBCheckBox29: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 
              'Notas Fiscais(Sa'#237'das)...........................................' +
              '............'
            DataField = 'NotaFiscal'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox35: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Notas Emit. p/ Nat. de Opera'#231#227'o....................' +
              '....................................'
            DataField = 'RelVendasNatOper'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox40: TDBCheckBox
            Left = 13
            Top = 48
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Notas Emitidas p/ Vendedor.........................' +
              '...........'
            DataField = 'RelNEmitVend'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox36: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Controle de Faturamento............................' +
              '............................'
            DataField = 'ContrFaturamento'
            DataSource = DM1.dsUsuario
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox100: TDBCheckBox
            Left = 13
            Top = 109
            Width = 236
            Height = 17
            Caption = 
              'Gera Sintegra...................................................' +
              '.....'
            DataField = 'GeraSintegra'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox118: TDBCheckBox
            Left = 13
            Top = 129
            Width = 236
            Height = 17
            Caption = 'Consulta Valores do ICMS.................................'
            DataField = 'VlrIcms'
            DataSource = DM1.dsUsuario
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox7: TDBCheckBox
            Left = 13
            Top = 169
            Width = 236
            Height = 17
            Caption = 
              'Vale............................................................' +
              '......'
            DataField = 'Vale'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox7Click
          end
          object DBCheckBox20: TDBCheckBox
            Left = 13
            Top = 189
            Width = 236
            Height = 17
            Caption = 'Rela'#231#227'o de Vale..............................................'
            DataField = 'RelVale'
            DataSource = DM1.dsUsuario
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BitBtn19: TBitBtn
            Left = 255
            Top = 167
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnClick = BitBtn19Click
          end
          object DBCheckBox77: TDBCheckBox
            Left = 13
            Top = 208
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Acumulados.................................'
            DataField = 'RelAcumuladoFat'
            DataSource = DM1.dsUsuario
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox98: TDBCheckBox
            Left = 13
            Top = 228
            Width = 236
            Height = 17
            Caption = 'Consulta Nota Fiscal (Embalagem)...................'
            DataField = 'ConsNotaFiscalBenef'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox28: TDBCheckBox
            Left = 13
            Top = 247
            Width = 236
            Height = 17
            Caption = 'Hist'#243'rico do Faturamento'
            DataField = 'HistFaturamento'
            DataSource = DM1.dsUsuario
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox104: TDBCheckBox
            Left = 13
            Top = 268
            Width = 236
            Height = 17
            Caption = 'Consulta Notas (Pedidos).................................'
            DataField = 'ConsNotasPorPedido'
            DataSource = DM1.dsUsuario
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox130: TDBCheckBox
            Left = 13
            Top = 287
            Width = 236
            Height = 17
            Caption = 'Consulta Pedidos Pend. Para Faturamento......'
            DataField = 'ConsPedidoPendFat'
            DataSource = DM1.dsUsuario
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox145: TDBCheckBox
            Left = 13
            Top = 305
            Width = 236
            Height = 17
            Caption = 'Consulta Movimento de Cliente/Fornecedor....'
            DataField = 'ConsCliFornMov'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox146: TDBCheckBox
            Left = 13
            Top = 325
            Width = 236
            Height = 17
            Caption = 'Mostrar valor na consulta do mov. de cliente...'
            DataField = 'MostrarValorMovCli'
            DataSource = DM1.dsUsuario
            TabOrder = 15
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox149: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 'Percentual do Simples......................................'
            DataField = 'PercSimples'
            DataSource = DM1.dsUsuario
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox149Click
          end
          object BitBtn57: TBitBtn
            Left = 255
            Top = 7
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnClick = BitBtn57Click
          end
          object DBCheckBox96: TDBCheckBox
            Left = 554
            Top = 7
            Width = 190
            Height = 17
            Caption = 'Regime Tribut'#225'rio..............................'
            DataField = 'RegimeTrib'
            DataSource = DM1.dsUsuario
            TabOrder = 18
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox96Click
          end
          object BitBtn58: TBitBtn
            Left = 752
            Top = 9
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnClick = BitBtn58Click
          end
          object DBCheckBox123: TDBCheckBox
            Left = 554
            Top = 27
            Width = 190
            Height = 17
            Caption = 'CSOSN (Tab. Simples Nacional).......'
            DataField = 'CSOSN'
            DataSource = DM1.dsUsuario
            TabOrder = 20
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox123Click
          end
          object BitBtn59: TBitBtn
            Left = 752
            Top = 29
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 21
            OnClick = BitBtn59Click
          end
          object DBCheckBox129: TDBCheckBox
            Left = 554
            Top = 50
            Width = 190
            Height = 17
            Caption = 'Tabela Cofins....................................'
            DataField = 'TabCofins'
            DataSource = DM1.dsUsuario
            TabOrder = 22
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox129Click
          end
          object BitBtn60: TBitBtn
            Left = 752
            Top = 52
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnClick = BitBtn60Click
          end
          object DBCheckBox142: TDBCheckBox
            Left = 554
            Top = 72
            Width = 190
            Height = 17
            Caption = 'Tabela Pis.........................................'
            DataField = 'TabPis'
            DataSource = DM1.dsUsuario
            TabOrder = 24
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox142Click
          end
          object BitBtn61: TBitBtn
            Left = 752
            Top = 74
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 25
            OnClick = BitBtn61Click
          end
          object DBCheckBox143: TDBCheckBox
            Left = 554
            Top = 94
            Width = 190
            Height = 17
            Caption = 'NFe Inutilizar Numera'#231#227'o..................'
            DataField = 'NFeInutilizar'
            DataSource = DM1.dsUsuario
            TabOrder = 26
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox143Click
          end
          object BitBtn62: TBitBtn
            Left = 752
            Top = 96
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
            OnClick = BitBtn62Click
          end
          object BitBtn63: TBitBtn
            Left = 255
            Top = 27
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 28
            OnClick = BitBtn63Click
          end
          object DBCheckBox154: TDBCheckBox
            Left = 289
            Top = 11
            Width = 236
            Height = 17
            Caption = 'Cupom Fiscal....................................................'
            DataField = 'CupomFiscal'
            DataSource = DM1.dsUsuario
            TabOrder = 29
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox154Click
          end
          object BitBtn64: TBitBtn
            Left = 531
            Top = 9
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 30
            OnClick = BitBtn64Click
          end
          object DBCheckBox155: TDBCheckBox
            Left = 290
            Top = 30
            Width = 236
            Height = 17
            Caption = 'Cupom Fiscal (Leitura X / Redu'#231#227'o Z).............'
            DataField = 'CupomFiscalLeitRed'
            DataSource = DM1.dsUsuario
            TabOrder = 31
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox164: TDBCheckBox
            Left = 554
            Top = 115
            Width = 190
            Height = 17
            Caption = 'NFe Emails Adicionais.......................'
            DataField = 'NFeEmail'
            DataSource = DM1.dsUsuario
            TabOrder = 32
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox164Click
          end
          object BitBtn71: TBitBtn
            Left = 752
            Top = 117
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 33
            OnClick = BitBtn71Click
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Comiss'#227'o'
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel7: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 336
          end
          object Bevel11: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 340
            Shape = bsLeftLine
          end
          object Bevel15: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 336
          end
          object DBCheckBox21: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 
              'Comiss'#227'o Vendedor...............................................' +
              '.............'
            DataField = 'Comissao'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox19: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Vendedores......................................................' +
              '....'
            DataField = 'Vendedor'
            DataSource = DM1.dsUsuario
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox19Click
          end
          object DBCheckBox13: TDBCheckBox
            Left = 13
            Top = 48
            Width = 236
            Height = 17
            Caption = 
              'Lan'#231'amento de Comiss'#227'o Vendedor.................................' +
              '......'
            DataField = 'LancComisVend'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox38: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio Extrato de Comiss'#227'o (Vendedor).................'
            DataField = 'RelExtrComisVend'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox43: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 'Extrato de Comiss'#245'es...........................................'
            DataField = 'ExtratoCom'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BitBtn30: TBitBtn
            Left = 255
            Top = 68
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = BitBtn30Click
          end
          object DBCheckBox165: TDBCheckBox
            Left = 13
            Top = 108
            Width = 236
            Height = 17
            Caption = 'Vendedores Metas...........................................'
            DataField = 'VendedorMeta'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox165Click
          end
          object BitBtn72: TBitBtn
            Left = 255
            Top = 108
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BitBtn72Click
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Ctas. a Receber'
        ImageIndex = 5
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel16: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 389
          end
          object Bevel17: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 391
            Shape = bsLeftLine
          end
          object Bevel18: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 389
          end
          object DBCheckBox64: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 
              'Contas a Receber................................................' +
              '........'
            DataField = 'CReceber'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox65: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 
              'Lan'#231'a Contas a Receber..........................................' +
              '...............'
            DataField = 'LancCReceber'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox67: TDBCheckBox
            Left = 13
            Top = 49
            Width = 236
            Height = 17
            Caption = 'Tipos de Cobran'#231'a.............................................'
            DataField = 'TiposCobr'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox67Click
          end
          object BitBtn32: TBitBtn
            Left = 255
            Top = 49
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BitBtn32Click
          end
          object DBCheckBox69: TDBCheckBox
            Left = 13
            Top = 69
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Duplicatas......................................'
            DataField = 'RelBoleto'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox73: TDBCheckBox
            Left = 13
            Top = 113
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Contas a Receber..........................'
            DataField = 'RelCReceber'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox74: TDBCheckBox
            Left = 13
            Top = 133
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio Contas a Receber p/ Cliente...........................' +
              '.'
            DataField = 'RelCRecCli'
            DataSource = DM1.dsUsuario
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox90: TDBCheckBox
            Left = 13
            Top = 153
            Width = 236
            Height = 17
            Caption = 
              'Altera Contas a Receber.........................................' +
              '...................'
            DataField = 'CReceberAltera'
            DataSource = DM1.dsUsuario
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox91: TDBCheckBox
            Left = 13
            Top = 173
            Width = 236
            Height = 17
            Caption = 
              'Paga Contas a Receber...........................................' +
              '............'
            DataField = 'CReceberPag'
            DataSource = DM1.dsUsuario
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox92: TDBCheckBox
            Left = 13
            Top = 193
            Width = 236
            Height = 17
            Caption = 
              'Estorno de Contas a Receber.....................................' +
              '.....................'
            DataField = 'EstPgtoRec'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox122: TDBCheckBox
            Left = 13
            Top = 213
            Width = 236
            Height = 17
            Caption = 
              'C'#243'pias de Duplicatas............................................' +
              '............'
            DataField = 'CopiaDuplicata'
            DataSource = DM1.dsUsuario
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox72: TDBCheckBox
            Left = 13
            Top = 93
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Contas a Receber por Semana....'
            DataField = 'RelCReceberSem'
            DataSource = DM1.dsUsuario
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox136: TDBCheckBox
            Left = 13
            Top = 231
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Di'#225'rio de Clientes.........................'
            DataField = 'RelDiarioCli'
            DataSource = DM1.dsUsuario
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox137: TDBCheckBox
            Left = 13
            Top = 250
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Raz'#227'o de Clientes........................'
            DataField = 'RelRazaoCli'
            DataSource = DM1.dsUsuario
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox117: TDBCheckBox
            Left = 13
            Top = 267
            Width = 236
            Height = 17
            Caption = 'Consulta Contas a Receber.............................'
            DataField = 'ConsCReceber'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox61: TDBCheckBox
            Left = 13
            Top = 285
            Width = 236
            Height = 17
            Caption = 'Consulta Limite de Cr'#233'dito................................'
            DataField = 'ConsLimiteCli'
            DataSource = DM1.dsUsuario
            TabOrder = 15
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox153: TDBCheckBox
            Left = 13
            Top = 304
            Width = 236
            Height = 17
            Caption = 'Cobran'#231'a Eletr'#244'nica (Nova).............................'
            DataField = 'CobEletronica'
            DataSource = DM1.dsUsuario
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox160: TDBCheckBox
            Left = 13
            Top = 321
            Width = 236
            Height = 17
            Caption = 'Tipo de Carteira................................................'
            DataField = 'Carteira'
            DataSource = DM1.dsUsuario
            TabOrder = 17
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox160Click
          end
          object BitBtn67: TBitBtn
            Left = 255
            Top = 321
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 18
            OnClick = BitBtn67Click
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Ctas. a Pagar'
        ImageIndex = 6
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel19: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 387
          end
          object Bevel20: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 340
            Shape = bsLeftLine
          end
          object Bevel21: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 387
          end
          object DBCheckBox75: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 
              'Contas a Pagar..................................................' +
              '........'
            DataField = 'CPagar'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox76: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 
              'Lan'#231'a Contas a Pagar............................................' +
              '...............'
            DataField = 'LctoPagar'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox78: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Faturas.........................................................' +
              '..........'
            DataField = 'Faturas'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox79: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Contas a Pagar.....................................' +
              '...'
            DataField = 'RelCPagar'
            DataSource = DM1.dsUsuario
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox81: TDBCheckBox
            Left = 13
            Top = 128
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Ctas. a Pagar p/ Fornecedores.........'
            DataField = 'RelCPagForn'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox82: TDBCheckBox
            Left = 13
            Top = 148
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de Pagamento de Juros..........................'
            DataField = 'RelPgtoJuros'
            DataSource = DM1.dsUsuario
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox93: TDBCheckBox
            Left = 13
            Top = 168
            Width = 236
            Height = 17
            Caption = 
              'Altera Contas a Pagar...........................................' +
              '.................'
            DataField = 'CPagarAltera'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox94: TDBCheckBox
            Left = 13
            Top = 188
            Width = 236
            Height = 17
            Caption = 
              'Paga Contas a Pagar.............................................' +
              '..........'
            DataField = 'CPagarPag'
            DataSource = DM1.dsUsuario
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox95: TDBCheckBox
            Left = 13
            Top = 208
            Width = 236
            Height = 17
            Caption = 
              'Estorno de Contas a Pagar.......................................' +
              '...................'
            DataField = 'EstPgtoPagar'
            DataSource = DM1.dsUsuario
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox119: TDBCheckBox
            Left = 13
            Top = 227
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio de controle de fornecedores.............'
            DataField = 'RelContFornecedores'
            DataSource = DM1.dsUsuario
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox125: TDBCheckBox
            Left = 13
            Top = 246
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Contas a Pagar por Semana........'
            DataField = 'RelCPagarSem'
            DataSource = DM1.dsUsuario
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox134: TDBCheckBox
            Left = 13
            Top = 266
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Di'#225'rio de Fornecedores................'
            DataField = 'RelDiarioForn'
            DataSource = DM1.dsUsuario
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
          object DBCheckBox135: TDBCheckBox
            Left = 14
            Top = 286
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Raz'#227'o de Fornecedores...............'
            DataField = 'RelRazaoForn'
            DataSource = DM1.dsUsuario
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Financeiro'
        ImageIndex = 7
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 397
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel22: TBevel
            Left = 251
            Top = 4
            Width = 25
            Height = 336
          end
          object Bevel23: TBevel
            Left = 278
            Top = 1
            Width = 2
            Height = 340
            Shape = bsLeftLine
          end
          object Bevel24: TBevel
            Left = 528
            Top = 4
            Width = 25
            Height = 336
          end
          object DBCheckBox83: TDBCheckBox
            Left = 13
            Top = 8
            Width = 236
            Height = 17
            Caption = 
              'Contas..........................................................' +
              '.........'
            DataField = 'Contas'
            DataSource = DM1.dsUsuario
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox83Click
          end
          object DBCheckBox84: TDBCheckBox
            Left = 13
            Top = 28
            Width = 236
            Height = 17
            Caption = 
              'Entrada de Movimentos...........................................' +
              '...............'
            DataField = 'EntrMov'
            DataSource = DM1.dsUsuario
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox85: TDBCheckBox
            Left = 13
            Top = 48
            Width = 236
            Height = 17
            Caption = 
              'juros...........................................................' +
              '...........'
            DataField = 'Juros'
            DataSource = DM1.dsUsuario
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox85Click
          end
          object DBCheckBox86: TDBCheckBox
            Left = 13
            Top = 68
            Width = 236
            Height = 17
            Caption = 
              'Movimentos......................................................' +
              '............'
            DataField = 'Movto'
            DataSource = DM1.dsUsuario
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox87: TDBCheckBox
            Left = 13
            Top = 88
            Width = 236
            Height = 17
            Caption = 
              'Plano de Contas.................................................' +
              '..'
            DataField = 'PlanoCtas'
            DataSource = DM1.dsUsuario
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox87Click
          end
          object DBCheckBox88: TDBCheckBox
            Left = 13
            Top = 108
            Width = 236
            Height = 17
            Caption = 
              'Relat'#243'rio de Contas.............................................' +
              '.'
            DataField = 'RelCtas'
            DataSource = DM1.dsUsuario
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox89: TDBCheckBox
            Left = 13
            Top = 128
            Width = 236
            Height = 17
            Caption = 
              'Indexador.......................................................' +
              '.....'
            DataField = 'Indexador'
            DataSource = DM1.dsUsuario
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox89Click
          end
          object BitBtn31: TBitBtn
            Left = 255
            Top = 8
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BitBtn31Click
          end
          object BitBtn33: TBitBtn
            Left = 255
            Top = 48
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnClick = BitBtn33Click
          end
          object BitBtn34: TBitBtn
            Left = 255
            Top = 88
            Width = 17
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = BitBtn34Click
          end
          object BitBtn35: TBitBtn
            Left = 255
            Top = 128
            Width = 16
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnClick = BitBtn35Click
          end
          object DBCheckBox103: TDBCheckBox
            Left = 13
            Top = 147
            Width = 236
            Height = 17
            Caption = 
              'Cheques.........................................................' +
              '...'
            DataField = 'Cheque'
            DataSource = DM1.dsUsuario
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            OnClick = DBCheckBox89Click
          end
          object BitBtn50: TBitBtn
            Left = 255
            Top = 147
            Width = 16
            Height = 17
            Hint = 'Abre o formul'#225'rio de permiss'#245'es'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = BitBtn50Click
          end
          object DBCheckBox46: TDBCheckBox
            Left = 13
            Top = 167
            Width = 236
            Height = 17
            Caption = 'Relat'#243'rio do Plano de Contas...........................'
            DataField = 'RelPlanoContas'
            DataSource = DM1.dsUsuario
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox150: TDBCheckBox
            Left = 13
            Top = 188
            Width = 236
            Height = 17
            Caption = 'Encerrar per'#237'odo da conta...............................'
            DataField = 'EncerrarContaPeriodo'
            DataSource = DM1.dsUsuario
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 490
    Width = 789
    Height = 33
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 4
      Top = 4
      Width = 128
      Height = 25
      DataSource = DM1.dsUsuario
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Hints.Strings = (
        'Vai para o primeiro usu'#225'rio'
        'Volta para o usu'#225'rio anterior'
        'Vai para o pr'#243'ximo usu'#225'rio'
        'Vai para o '#250'ltimo usu'#225'rio')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 132
      Top = 4
      Width = 72
      Height = 25
      Hint = 'Insere um novo usu'#225'rio'
      Caption = '&Inserir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 204
      Top = 4
      Width = 72
      Height = 25
      Hint = 'Altera o usu'#225'rio especificado'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 276
      Top = 4
      Width = 72
      Height = 25
      Hint = 'Exclui o usu'#225'rio selecionado'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 348
      Top = 4
      Width = 74
      Height = 25
      Hint = 'Cancela a altera'#231#227'o ou inclus'#227'o do usu'#225'rio'
      Caption = 'Ca&ncelar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080808080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080FFFFFF008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        800000808080800080800080800080800080800080800000FF80808000808000
        8080008080008080008080008080008080008080808080808080FFFFFF008080
        008080008080008080008080008080FFFFFF0080800080800080800080800080
        800080800080800000FF00008000008000008080808000808000808000808000
        00FF000080000080808080008080008080008080008080008080008080808080
        FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
        FF0080800080800080800080800080800080800000FF00008000008000008000
        00808080800080800000FF000080000080000080000080808080008080008080
        008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
        FF808080008080008080808080FFFFFF00808000808000808000808000808000
        80800000FF000080000080000080000080808080000080000080000080000080
        000080808080008080008080008080008080008080808080FFFFFF0080800080
        80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
        80800080800080800080800080800080800000FF000080000080000080000080
        0000800000800000800000808080800080800080800080800080800080800080
        80008080808080FFFFFF00808000808000808080808000808000808000808000
        8080FFFFFF808080008080008080008080008080008080008080008080008080
        0000FF0000800000800000800000800000800000808080800080800080800080
        80008080008080008080008080008080008080808080FFFFFF00808000808000
        8080008080008080008080FFFFFF808080008080008080008080008080008080
        0080800080800080800080800080800000800000800000800000800000808080
        8000808000808000808000808000808000808000808000808000808000808000
        8080808080FFFFFF008080008080008080008080008080808080008080008080
        0080800080800080800080800080800080800080800080800080800000FF0000
        8000008000008000008080808000808000808000808000808000808000808000
        8080008080008080008080008080008080808080FFFFFF008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        800080800000FF00008000008000008000008000008080808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        008080008080008080008080808080FFFFFF0080800080800080800080800080
        800080800080800080800080800000FF00008000008000008080808000008000
        0080000080808080008080008080008080008080008080008080008080008080
        008080008080808080008080008080008080008080008080808080FFFFFF0080
        800080800080800080800080800080800080800080800000FF00008000008000
        00808080800080800000FF000080000080000080808080008080008080008080
        008080008080008080008080008080808080008080008080008080808080FFFF
        FF008080008080808080FFFFFF00808000808000808000808000808000808000
        80800000FF0000800000808080800080800080800080800000FF000080000080
        000080808080008080008080008080008080008080008080808080FFFFFF0080
        80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
        80800080800080800080800080800080800000FF000080008080008080008080
        0080800080800000FF0000800000800000800080800080800080800080800080
        80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
        8080008080808080FFFFFF008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800000FF0000800000FF0080
        8000808000808000808000808000808000808080808080808000808000808000
        8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 422
      Top = 4
      Width = 74
      Height = 25
      Hint = 'Confirma a altera'#231#227'o ou inclus'#227'o'
      Caption = '&Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        CE070000424DCE07000000000000360000002800000024000000120000000100
        18000000000098070000CE0E0000C40E00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080000080000000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080808080808080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808080000000800000800080000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        8080800080800080808080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800000800000
        8000800000008080008080008080008080008080008080008080008080008080
        0080800080800080808080800080800080800080800080808080800080800080
        8000808000808000808000808000808000808000808000808000808080000000
        8000008000008000008000008000008000800000008080008080008080008080
        0080800080800080800080800080800080808080800080800080800080800080
        8000808000808080808080808000808000808000808000808000808000808000
        808000808080000000800000800000800000FF00008000008000008000008000
        8000000080800080800080800080800080800080800080800080808080800080
        8000808000808080808000808000808000808000808080808000808000808000
        808000808000808000808000808000808000800000800000800000FF00008080
        00FF000080000080000080008000000080800080800080800080800080800080
        8000808000808080808000808000808080808000808080808000808000808000
        808080808000808000808000808000808000808000808000808000808000FF00
        00800000FF0000808000808000808000FF000080000080000080008000000080
        8000808000808000808000808000808000808080808000808080808000808000
        8080008080808080008080008080008080808080008080008080008080008080
        00808000808000808000808000FF0000808000808000808000808000808000FF
        0000800000800000800080000000808000808000808000808000808000808000
        8080808080008080008080008080008080008080808080008080008080008080
        8080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000FF0000800000800000800080000000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080808080800080800080800080808080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000FF0000
        8000008000008000800000008080008080008080008080008080008080008080
        0080800080800080800080800080800080808080800080800080800080808080
        8000808000808000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8080808000808000808000808080808000808000808000808000808000808000
        808000808000808000808000808000808000808000808000808000FF00008000
        0080000080008000000080800080800080800080800080800080800080800080
        8000808000808000808000808000808080808000808000808000808080808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000FF000080000080008000000080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808080
        8080008080008080808080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080808080FFFFFF808080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080808080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        008080008080008080008080008080008080}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 496
      Top = 4
      Width = 73
      Height = 25
      Hint = 'Fecha a janela atual'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn6Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
        038383838383830E603800000000380E660033333330830E660333333330000E
        660333330030330E660333330E00330E660300000EE0330E06030EEEEEE6030E
        660300000E60330E660333330600330E660333330030330E6603333333303330
        E6033333333033330E0333333330000000033333333333333333}
    end
  end
end
