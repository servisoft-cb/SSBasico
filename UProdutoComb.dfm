object fProdutoComb: TfProdutoComb
  Left = 9
  Top = 5
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Combina'#231#227'o (Material / Embalagem)'
  ClientHeight = 726
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 36
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Cor:'
    end
    object DBText2: TDBText
      Left = 32
      Top = 11
      Width = 433
      Height = 17
      BiDiMode = bdLeftToRight
      Color = 10930928
      DataField = 'lkNomeCor'
      DataSource = DM1.dsProdutoCor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 225
    Width = 1007
    Height = 501
    Align = alClient
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 1005
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Materiais da Combina'#231#227'o / Modelo / Formato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object SMDBGrid2: TSMDBGrid
      Left = 1
      Top = 50
      Width = 1005
      Height = 450
      Align = alClient
      DataSource = DM1.dsProdutoMat
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid2DblClick
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid2GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 17
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeSetor'
          Title.Alignment = taCenter
          Title.Caption = 'Setor'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomePosicao'
          Title.Alignment = taCenter
          Title.Caption = 'Posi'#231#227'o'
          Width = 156
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Material'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeMaterial'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Material'
          Width = 326
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unidade'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Consumo'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'clQtdPr'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Por Unidade'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Consumo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Consumo'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdPecaProd'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Pe'#231'as na Embalagem'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCor'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Cor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodGrade'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Grade'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ImpTalao'
          Title.Alignment = taCenter
          Title.Caption = 'Imprimir no Tal'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Obs'
          Width = 250
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 18
      Width = 1005
      Height = 32
      Align = alTop
      TabOrder = 2
      object Shape1: TShape
        Left = 672
        Top = 8
        Width = 32
        Height = 19
        Brush.Color = clRed
      end
      object Label4: TLabel
        Left = 708
        Top = 12
        Width = 71
        Height = 13
        Caption = 'Material inativo'
      end
      object BitBtn12: TBitBtn
        Left = 227
        Top = 5
        Width = 112
        Height = 24
        Hint = 'Exclui o item selecionado'
        Caption = 'Excluir Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn12Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
          0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
          703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
          700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
          0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
          03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
          033333777777777773333333307770333333333337FFF7F33333333330000033
          3333333337777733333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn15: TBitBtn
        Left = 115
        Top = 5
        Width = 112
        Height = 24
        Caption = 'Alterar Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn15Click
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
      object BitBtn10: TBitBtn
        Left = 3
        Top = 5
        Width = 112
        Height = 24
        Caption = 'Digitar Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn10Click
        Glyph.Data = {
          36080000424D3608000000000000360000002800000020000000100000000100
          2000000000000008000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000FFFFFF00FFFFFF000080800000808000008080000080
          800000808000008080000080800000808000FFFFFF00FFFFFF00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080007F7F7F007F7F7F00FFFFFF000080800000808000008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000000
          FF000000FF000000FF000000FF000000FF000000FF0000808000008080000080
          8000008080000080800000808000008080000080800000808000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00008080000080
          80000080800000808000008080000080800000808000FFFFFF00008080000000
          FF000000FF000000FF000000FF000000FF000000FF0000808000008080000080
          8000008080000080800000808000008080000000000000000000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000808000008080000080
          8000008080000080800000808000008080007F7F7F007F7F7F00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000008080000000000000000000008080000080
          8000008080007F7F7F007F7F7F00FFFFFF000080800000808000008080000080
          8000008080000080800000808000008080007F7F7F007F7F7F00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080007F7F7F007F7F7F00008080000080800000808000008080000080
          80000080800000808000008080000080800000808000FFFFFF00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000FFFFFF000080
          8000008080000080800000808000008080007F7F7F007F7F7F00008080000080
          80000080800000808000008080000080800000808000FF000000008080000080
          8000008080000080800000808000008080000000000000000000008080000080
          800000808000008080000080800000808000008080007F7F7F00FFFFFF00FFFF
          FF00008080000080800000808000008080007F7F7F007F7F7F00008080000080
          80000080800000808000008080000080800000808000FF000000FF0000000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00FFFFFF0000808000FFFFFF00FFFFFF000080800000808000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000008080000000FF000000FF000080800000808000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF000080800000808000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000008080000000FF000000FF000080800000808000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F00008080007F7F7F007F7F7F000080800000808000008080000080
          80000080800000808000008080000080800000808000FF000000FF0000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000008080007F7F7F007F7F7F000080
          800000808000008080000080800000808000FFFFFF00FFFFFF00008080000080
          80000080800000808000008080000080800000808000FF000000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          800000808000008080000080800000808000008080007F7F7F00008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000}
        NumGlyphs = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 36
    Width = 1007
    Height = 189
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 86
      Top = 2
      Width = 200
      Height = 13
      Caption = 'Nome da combina'#231#227'o (modelo ou formato)'
    end
    object Label3: TLabel
      Left = 376
      Top = 56
      Width = 322
      Height = 65
      Caption = 
        'O item 1 '#233' a combina'#231#227'o principal (b'#225'sica);'#13#10'Esta combina'#231#227'o n'#227'o' +
        ' pode ser exclu'#237'da, mas pode ser deixada sem'#13#10'descri'#231#227'o.'#13#10'Na dig' +
        'ita'#231#227'o do pedido, se n'#227'o informada, o sistema ir'#225' colocar'#13#10'autom' +
        'aticamente como sendo a combina'#231#227'o 1'
    end
    object Edit1: TEdit
      Left = 2
      Top = 17
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 372
      Top = 10
      Width = 75
      Height = 28
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 447
      Top = 10
      Width = 75
      Height = 28
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object SMDBGrid1: TSMDBGrid
      Left = 2
      Top = 40
      Width = 369
      Height = 139
      DataSource = DM1.dsProdutoComb
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 3
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCombinacao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome / Modelo / Formato'
          Width = 289
          Visible = True
        end>
    end
    object BitBtn3: TBitBtn
      Left = 522
      Top = 10
      Width = 75
      Height = 28
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 576
      Top = 157
      Width = 216
      Height = 29
      Caption = 'Copiar materiais para nova combina'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 384
      Top = 157
      Width = 192
      Height = 29
      Caption = 'Copiar materiais para a combina'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn6Click
    end
  end
end
