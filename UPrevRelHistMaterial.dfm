object fPrevRelHistMaterial: TfPrevRelHistMaterial
  Left = 214
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio do Hist'#243'rico do Material'
  ClientHeight = 279
  ClientWidth = 382
  Color = clBtnFace
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
    Top = 0
    Width = 382
    Height = 279
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object DateEdit1: TDateEdit
      Left = 66
      Top = 149
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 224
      Top = 153
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data Final:'
      TabOrder = 7
    end
    object DateEdit2: TDateEdit
      Left = 285
      Top = 149
      Width = 90
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 177
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Material:'
      TabOrder = 8
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 66
      Top = 173
      Width = 309
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsProduto
      TabOrder = 4
      OnEnter = RxDBLookupCombo1Enter
      OnExit = RxDBLookupCombo1Exit
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 153
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Data Inicial:'
      TabOrder = 9
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 201
      Width = 58
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Cor:'
      TabOrder = 10
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 66
      Top = 197
      Width = 309
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = dsCor
      TabOrder = 5
      OnEnter = RxDBLookupCombo2Enter
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 34
      Width = 165
      Height = 41
      Caption = 'Op'#231#227'o do Relat'#243'rio'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Material'
        'Geral')
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 83
      Top = 231
      Width = 223
      Height = 41
      BevelInner = bvRaised
      TabOrder = 6
      object BitBtn6: TBitBtn
        Left = 5
        Top = 8
        Width = 106
        Height = 25
        Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn6Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777700000000000777707777777770707700000000000007070777777BBB77
          0007077777788877070700000000000007700777777777707070700000000007
          0700770FFFFFFFF070707770F00000F000077770FFFFFFFF077777770F00000F
          077777770FFFFFFFF07777777000000000777777777777777777}
      end
      object BitBtn4: TBitBtn
        Left = 113
        Top = 8
        Width = 106
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn4Click
        Glyph.Data = {
          B6010000424DB601000000000000760000002800000022000000100000000100
          04000000000040010000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0038383838380E
          03833333333333387F333300000083838383830E603833FFFFFFFF387F33FF00
          000000000000380E6600388888888F387F388300000033333330830E66033333
          33338F387F38F300000033333330000E6603333333FF88887F38F30000003333
          0030330E66033333388F8F387F38F300000033330E00330E660333FFF8F88F38
          7F38F300000000000EE0330E0603388888338F387F38F30000000EEEEEE6030E
          660338FFFFF378387F38F300000000000E60330E6603388888F78F387F38F300
          000033330600330E6603333338788F387F38F300000033330030330E66033333
          38838F387F38F3000000333333303330E603333333338F3387F8F30000003333
          333033330E03333333338FFFF878F30000003333333000000003333333338888
          8888330000003333333333333333333333333333333333000000}
        NumGlyphs = 2
      end
    end
    object RadioGroup2: TRadioGroup
      Left = 175
      Top = 34
      Width = 202
      Height = 41
      Caption = 'Tipo'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Entradas'
        'Sa'#237'das'
        'Ambos')
      TabOrder = 11
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 77
      Width = 370
      Height = 62
      TabOrder = 12
      object CheckBox1: TCheckBox
        Left = 8
        Top = 16
        Width = 105
        Height = 17
        Caption = 'Nota de Entrada'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 128
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Nota Fiscal'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 238
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Documentos'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBox4: TCheckBox
        Left = 8
        Top = 40
        Width = 81
        Height = 17
        Caption = 'Requisi'#231#227'o'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBox5: TCheckBox
        Left = 126
        Top = 40
        Width = 81
        Height = 17
        Caption = 'Acertos'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 49
      Top = 8
      Width = 321
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Codigo, Nome'
      'FROM dbCor, dbProdutoCor'
      'WHERE CodProduto = :x0 AND Codigo = CodCor'
      'ORDER BY Nome'
      '')
    Left = 312
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'x0'
        ParamType = ptUnknown
      end>
    object qCorCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qCorNome: TStringField
      FieldName = 'Nome'
      Size = 25
    end
  end
  object dsCor: TDataSource
    DataSet = qCor
    Left = 344
    Top = 208
  end
  object tAuxHistMaterial: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbAuxHistMaterial.DB'
    Left = 133
    Top = 55
    object tAuxHistMaterialControle: TIntegerField
      FieldName = 'Controle'
    end
    object tAuxHistMaterialCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tAuxHistMaterialData: TDateField
      FieldName = 'Data'
    end
    object tAuxHistMaterialNroDoc: TIntegerField
      FieldName = 'NroDoc'
    end
    object tAuxHistMaterialTipo: TStringField
      FieldName = 'Tipo'
      Size = 4
    end
    object tAuxHistMaterialES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object tAuxHistMaterialQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tAuxHistMaterialNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 50
    end
    object tAuxHistMaterialNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object tAuxHistMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tAuxHistMaterialNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object tAuxHistMaterialVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object tAuxHistMaterialVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tAuxHistMaterialPercICMS: TFloatField
      FieldName = 'PercICMS'
    end
  end
  object dsAuxHistMaterial: TDataSource
    DataSet = tAuxHistMaterial
    Left = 149
    Top = 55
  end
end
