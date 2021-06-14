object fEtiquetaCaixaInd: TfEtiquetaCaixaInd
  Left = 149
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas para caixas individuais'
  ClientHeight = 479
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 479
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Impress'#227'o'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 456
        Align = alClient
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Pedido:'
        end
        object Label6: TLabel
          Left = 155
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Item:'
        end
        object Label7: TLabel
          Left = 253
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Tamanho:'
        end
        object Edit1: TEdit
          Left = 304
          Top = 8
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 45
          Top = 7
          Width = 89
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 0
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 180
          Top = 7
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 1
        end
        object Panel5: TPanel
          Left = 1
          Top = 421
          Width = 727
          Height = 34
          Align = alBottom
          TabOrder = 4
          object BitBtn1: TBitBtn
            Left = 273
            Top = 3
            Width = 90
            Height = 25
            Hint = 'Imprime a sele'#231#227'o acima'
            Caption = '&Imprimir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn1Click
            Glyph.Data = {
              0E030000424D0E030000000000003600000028000000110000000E0000000100
              180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
              BFBFBF0000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
              BF00BFBFBF000000000000000000000000000000000000000000000000000000
              000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
              000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
              BF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
              BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
              00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
              BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
              000000000000000000000000000000FFFFFF000000000000000000000000BFBF
              BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
              BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000BFBFBFBFBFBF00}
          end
          object BitBtn3: TBitBtn
            Left = 363
            Top = 3
            Width = 90
            Height = 25
            Hint = 'Fecha a janela atual'
            Caption = '&Fechar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn3Click
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
        object BitBtn6: TBitBtn
          Left = 393
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          TabOrder = 3
          OnClick = BitBtn6Click
        end
        object SMDBGrid1: TSMDBGrid
          Left = 1
          Top = 33
          Width = 727
          Height = 388
          Align = alBottom
          DataSource = dsmEtiqueta
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 11
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'QtdCopias'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Referencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Material1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Material2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tamanho'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tamanho2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodBarra'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EndFoto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodProduto'
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Configura'#231#227'o'
      object Panel1: TPanel
        Left = 0
        Top = 41
        Width = 729
        Height = 415
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'OffSet de Borda:'
        end
        object Label2: TLabel
          Left = 232
          Top = 16
          Width = 140
          Height = 13
          Caption = 'Valores v'#225'lidos: de 090 a 260'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 54
          Top = 40
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Backfeed:'
        end
        object Label4: TLabel
          Left = 232
          Top = 40
          Width = 140
          Height = 13
          Caption = 'Valores v'#225'lidos: de 000 a 300'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 40
          Top = 64
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Temperatura:'
        end
        object Label9: TLabel
          Left = 232
          Top = 64
          Width = 122
          Height = 13
          Caption = 'Valores v'#225'lidos: de 0 a 15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 47
          Top = 88
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = 'Velocidade:'
        end
        object Label11: TLabel
          Left = 232
          Top = 88
          Width = 118
          Height = 13
          Caption = 'Valores v'#225'lidos: de A a K'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 104
          Top = 8
          Width = 121
          Height = 21
          DataField = 'Argox_OffSetBorda'
          DataSource = DM1.dsParametros
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 32
          Width = 121
          Height = 21
          DataField = 'Argox_Backfeed'
          DataSource = DM1.dsParametros
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 56
          Width = 121
          Height = 21
          DataField = 'Argox_Temperatura'
          DataSource = DM1.dsParametros
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 104
          Top = 80
          Width = 121
          Height = 21
          DataField = 'Argox_Temperatura'
          DataSource = DM1.dsParametros
          TabOrder = 3
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 41
        Align = alTop
        TabOrder = 1
        object BitBtn2: TBitBtn
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 91
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          Enabled = False
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 355
          Top = 8
          Width = 94
          Height = 25
          Caption = 'Valores Padr'#227'o'
          TabOrder = 2
          OnClick = BitBtn5Click
        end
      end
    end
  end
  object dsmEtiqueta: TDataSource
    DataSet = mEtiqueta
    Left = 232
    Top = 168
  end
  object mEtiqueta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Material1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Material2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tamanho2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'EndFoto'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'QtdCopias'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 200
    Top = 168
    Data = {
      250100009619E0BD01000000180000000A00000000000300000025010A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      0100055749445448020002001400044E6F6D6501004900000001000557494454
      48020002001400094D6174657269616C31010049000000010005574944544802
      0002001E00094D6174657269616C320100490000000100055749445448020002
      001E000754616D616E686F0100490000000100055749445448020002000A0008
      54616D616E686F320100490000000100055749445448020002000A0008436F64
      42617272610100490000000100055749445448020002000E0007456E64466F74
      6F010049000000010005574944544802000200FA0009517464436F7069617304
      000100000000000000}
    object mEtiquetaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mEtiquetaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEtiquetaNome: TStringField
      FieldName = 'Nome'
    end
    object mEtiquetaMaterial1: TStringField
      FieldName = 'Material1'
      Size = 30
    end
    object mEtiquetaMaterial2: TStringField
      FieldName = 'Material2'
      Size = 30
    end
    object mEtiquetaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mEtiquetaTamanho2: TStringField
      FieldName = 'Tamanho2'
      Size = 10
    end
    object mEtiquetaCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 14
    end
    object mEtiquetaEndFoto: TStringField
      FieldName = 'EndFoto'
      Size = 250
    end
    object mEtiquetaQtdCopias: TIntegerField
      FieldName = 'QtdCopias'
    end
  end
end
