object fGeraLote2: TfGeraLote2
  Left = 3
  Top = 23
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lote'
  ClientHeight = 500
  ClientWidth = 781
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
  object Label8: TLabel
    Left = 616
    Top = 120
    Width = 52
    Height = 13
    Caption = 'Qtd. Lotes:'
  end
  object ALed1: TALed
    Left = 243
    Top = 415
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clTeal
  end
  object Label9: TLabel
    Left = 263
    Top = 418
    Width = 42
    Height = 13
    Caption = 'Faturado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed2: TALed
    Left = 318
    Top = 415
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clRed
  end
  object Label10: TLabel
    Left = 338
    Top = 418
    Width = 51
    Height = 13
    Caption = 'Cancelado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed3: TALed
    Left = 401
    Top = 415
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clAqua
  end
  object Label11: TLabel
    Left = 421
    Top = 418
    Width = 70
    Height = 13
    Caption = 'Reprogramado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ALed4: TALed
    Left = 505
    Top = 415
    Width = 16
    Height = 16
    TrueColor = clTeal
    FalseColor = clYellow
  end
  object Label12: TLabel
    Left = 525
    Top = 418
    Width = 38
    Height = 13
    Caption = 'Baixado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SMDBGrid2: TSMDBGrid
    Left = 1
    Top = 104
    Width = 614
    Height = 305
    DataSource = dsmTalao
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
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
    ExOptions = [eoCheckBoxSelect, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoAutoSave, eoBLOBEditor, eoTitleWordWrap]
    OnGetCellParams = SMDBGrid2GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 13
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Lote'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item Ped.'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtEntrega'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtReprogramacao'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Reprograma'#231#227'o'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumOS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' OS'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fabrica'
        Title.Alignment = taCenter
        Title.Caption = 'F'#225'brica'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Plano'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdFaturada'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Faturada'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtBaixa'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data da Baixa'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtCancelado'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data do Cancelamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MotivoCancelado'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Motivo do cancelamento'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 104
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Item:'
    end
    object DBText1: TDBText
      Left = 41
      Top = 8
      Width = 45
      Height = 13
      DataField = 'Item'
      DataSource = DM1.dsPedidoItem
    end
    object Label2: TLabel
      Left = 153
      Top = 8
      Width = 62
      Height = 13
      Caption = 'C'#243'd.Produto:'
    end
    object DBText2: TDBText
      Left = 215
      Top = 8
      Width = 45
      Height = 13
      DataField = 'CodProduto'
      DataSource = DM1.dsPedidoItem
    end
    object DBText3: TDBText
      Left = 347
      Top = 8
      Width = 166
      Height = 13
      DataField = 'lkReferencia'
      DataSource = DM1.dsPedidoItem
    end
    object Label3: TLabel
      Left = 288
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label4: TLabel
      Left = 552
      Top = 8
      Width = 19
      Height = 13
      Caption = 'Cor:'
    end
    object DBText4: TDBText
      Left = 579
      Top = 8
      Width = 166
      Height = 13
      DataField = 'lkCor'
      DataSource = DM1.dsPedidoItem
    end
    object Label5: TLabel
      Left = 6
      Top = 24
      Width = 33
      Height = 13
      Caption = 'N'#186' OS:'
    end
    object DBText5: TDBText
      Left = 41
      Top = 24
      Width = 94
      Height = 13
      DataField = 'NumOS'
      DataSource = DM1.dsPedidoItem
    end
    object Label6: TLabel
      Left = 144
      Top = 24
      Width = 71
      Height = 13
      Caption = 'Nome Produto:'
    end
    object DBText6: TDBText
      Left = 215
      Top = 24
      Width = 338
      Height = 13
      DataField = 'lkNomeProduto'
      DataSource = DM1.dsPedidoItem
    end
    object Label7: TLabel
      Left = 648
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Qtde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 683
      Top = 24
      Width = 94
      Height = 13
      DataField = 'QtdPares'
      DataSource = DM1.dsPedidoItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object VDBGrid1: TVDBGrid
    Left = 2
    Top = 41
    Width = 776
    Height = 61
    TabStop = False
    Color = 10930928
    DataSource = DM1.dsPedidoGrade
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    TitlesWidth = 70
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'lkTamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
      end
      item
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end>
  end
  object BitBtn4: TBitBtn
    Left = 624
    Top = 173
    Width = 152
    Height = 33
    Caption = 'Gerar Auxiliar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn4Click
    Glyph.Data = {
      16020000424D160200000000000076000000280000001A0000001A0000000100
      040000000000A001000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777700000077777777777777777777777777000000777777788777
      77777777777777000000777777008877777777777777770000007777770B0887
      7777777777777700000077777770B0887777777777777700000077777770BB08
      87777777777777000000777777770BB088777777777777000000777777770BBB
      08877777777777000000777777000BBBB08877777777770000007777770BBBBB
      BB08777777777700000077777770BBB00007777777777700000077777770BBBB
      08877777777777000000777777770BBBB0887777777777000000777777770BBB
      BB0887777777770000007777770000BBBBB088777777770000007777770BBBBB
      BBBB087777777700000077777770BBBBB000077777777700000077777770BBBB
      BB088777777777000000777777770BBBBBB08877777777000000777777770BBB
      BBBB08877777770000007777777770BBBBBBB0887777770000007777777770BB
      BBBBBB0877777700000077777777700000000007777777000000777777777777
      7777777777777700000077777777777777777777777777000000}
  end
  object BitBtn1: TBitBtn
    Left = 624
    Top = 231
    Width = 152
    Height = 33
    Caption = 'Confirma Lotes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
      777777770000774448877777777777770000772244887777777777770000A222
      22488777777777770000A22222248877777777770000A2222222488777777777
      0000A22222222488777777770000A22222222248877777770000A22248A22224
      887777770000A222488A2222488777770000A2224887A2224488777700007A22
      48877A222488777700007A22477777A222488777000077777777777A22244877
      0000777777777777A222488700007777777777777A2224870000777777777777
      77A224480000777777777777777A224800007777777777777777A24800007777
      7777777777777A270000}
    Spacing = 0
  end
  object BitBtn2: TBitBtn
    Left = 624
    Top = 402
    Width = 152
    Height = 33
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    Spacing = 0
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 670
    Top = 111
    Width = 100
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 6
    OnEnter = CurrencyEdit1Enter
  end
  object BitBtn3: TBitBtn
    Left = 624
    Top = 333
    Width = 152
    Height = 33
    Caption = 'Excluir Todos Lotes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
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
    Spacing = 0
  end
  object VDBGrid2: TVDBGrid
    Left = 1
    Top = 436
    Width = 776
    Height = 61
    TabStop = False
    DataSource = dsmTalaoGrade
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    TitlesWidth = 70
    OnEnter = VDBGrid2Enter
    OnKeyDown = VDBGrid2KeyDown
    Columns = <
      item
        Alignment = taCenter
        FieldName = 'Tamanho'
        ReadOnly = True
        Title.Alignment = taCenter
      end
      item
        Alignment = taCenter
        FieldName = 'Qtd'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
      end>
  end
  object StaticText1: TStaticText
    Left = 1
    Top = 413
    Width = 224
    Height = 17
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Duplo clique para reprogramar o lote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object BitBtn10: TBitBtn
    Left = 624
    Top = 299
    Width = 152
    Height = 33
    Hint = 'Cancela o pedido selecionado'
    BiDiMode = bdLeftToRight
    Caption = 'Cancelar Lote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitBtn10Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888877777
      8877777700007770888777778887777700007911088877910888777700007911
      0088879100888777000079111008891110087777000079911108911111007777
      0000779111101111110777770000777911111111077777770000777991111111
      8777777700007777991111108877777700007777791111108887777700007777
      7911111088877777000077777911111108887777000077779111991100888777
      0000777911108991100888770000777911187799110088870000777111187779
      1110888700007771110777779111087700007779997777777991777700007777
      77777777779977770000}
    Spacing = 0
  end
  object BitBtn5: TBitBtn
    Left = 624
    Top = 138
    Width = 152
    Height = 33
    Caption = 'Informar a Qtd. por Lote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn5Click
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDD0000000DDDDDDDDDDDDDDDDD0000000DD0000000000000DD0000000D0FF
      FFFFFFFFFFF0D0000000D0F00000000000F0D0000000D0FFFFFFFFFFFFF0D000
      0000D0F00000000000F0D0000000D0FFFFFFFFFFFFF0D0000000D0F000000000
      00F0D0000000D0FFFFFFFFFFFFF0D0000000D0F00000000000F0D0000000D0FF
      FFFFFFFFFFF0D0000000D0F00000000000F0D0000000D0FFFFFFFFFFFFF0D000
      0000DD0000000000000DD0000000DDDDDDDDDDDDDDDDD0000000DDDDDDDDDDDD
      DDDDD0000000}
  end
  object BitBtn14: TBitBtn
    Left = 624
    Top = 266
    Width = 152
    Height = 33
    Caption = 'Incluir mais um lote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn14Click
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
  object BitBtn6: TBitBtn
    Left = 623
    Top = 366
    Width = 152
    Height = 33
    Caption = 'Excluir Lote Selecionado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = BitBtn6Click
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
    Spacing = 0
  end
  object mTalao: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'NumSeq'
        DataType = ftInteger
      end
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'DtReprogramacao'
        DataType = ftDate
      end
      item
        Name = 'Reprogramacao'
        DataType = ftBoolean
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DtBaixa'
        DataType = ftDate
      end
      item
        Name = 'HoraBaixa'
        DataType = ftDate
      end
      item
        Name = 'QtdFaturada'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'Cancelado'
        DataType = ftBoolean
      end
      item
        Name = 'DtCancelado'
        DataType = ftDate
      end
      item
        Name = 'MotivoCancelado'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Plano'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Fabrica'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Pedido;Item'
    Params = <>
    StoreDefs = True
    BeforePost = mTalaoBeforePost
    OnNewRecord = mTalaoNewRecord
    Left = 304
    Top = 328
    Data = {
      820100009619E0BD010000001800000012000000000003000000820106506564
      69646F0400010000000000044974656D0400010000000000064E756D53657104
      00010000000000044C6F74650400010000000000035174640800040000000000
      094474456E747265676104000600000000000F4474526570726F6772616D6163
      616F04000600000000000D526570726F6772616D6163616F0200030000000000
      054E756D4F530100490000000100055749445448020002001E00074474426169
      7861040006000000000009486F7261426169786104000600000000000B517464
      466174757261646108000400000000000B51746452657374616E746508000400
      000000000943616E63656C61646F02000300000000000B447443616E63656C61
      646F04000600000000000F4D6F7469766F43616E63656C61646F010049000000
      010005574944544802000200640005506C616E6F010049000000010005574944
      5448020002001E00074661627269636101004900000001000557494454480200
      020004000000}
    object mTalaoPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mTalaoItem: TIntegerField
      FieldName = 'Item'
    end
    object mTalaoNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object mTalaoLote: TIntegerField
      FieldName = 'Lote'
    end
    object mTalaoQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mTalaoDtEntrega: TDateField
      FieldName = 'DtEntrega'
      EditMask = '99/99/9999'
    end
    object mTalaoDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
      EditMask = '99/99/9999'
    end
    object mTalaoReprogramacao: TBooleanField
      FieldName = 'Reprogramacao'
    end
    object mTalaoNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mTalaoDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object mTalaoHoraBaixa: TDateField
      FieldName = 'HoraBaixa'
    end
    object mTalaoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
    end
    object mTalaoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
    end
    object mTalaoCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object mTalaoDtCancelado: TDateField
      FieldName = 'DtCancelado'
    end
    object mTalaoMotivoCancelado: TStringField
      FieldName = 'MotivoCancelado'
      Size = 100
    end
    object mTalaoPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object mTalaoFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
  end
  object dsmTalao: TDataSource
    DataSet = mTalao
    Left = 320
    Top = 328
  end
  object mTalaoGrade: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'NumSeq'
        DataType = ftInteger
      end
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'CodGrade'
        DataType = ftInteger
      end
      item
        Name = 'Posicao'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Pedido;Item;NumSeq;CodGrade;Posicao'
    MasterFields = 'Pedido;Item;NumSeq'
    MasterSource = dsmTalao
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    BeforePost = mTalaoGradeBeforePost
    AfterPost = mTalaoGradeAfterPost
    OnNewRecord = mTalaoGradeNewRecord
    Left = 464
    Top = 352
    Data = {
      9B0000009619E0BD0100000018000000080000000000030000009B0006506564
      69646F0400010000000000044974656D0400010000000000064E756D53657104
      00010000000000044C6F7465040001000000000008436F644772616465040001
      000000000007506F736963616F04000100000000000351746408000400000000
      000754616D616E686F01004900000001000557494454480200020006000000}
    object mTalaoGradePedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mTalaoGradeItem: TIntegerField
      FieldName = 'Item'
    end
    object mTalaoGradeNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object mTalaoGradeLote: TIntegerField
      FieldName = 'Lote'
    end
    object mTalaoGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mTalaoGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object mTalaoGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mTalaoGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
  end
  object dsmTalaoGrade: TDataSource
    DataSet = mTalaoGrade
    Left = 480
    Top = 352
  end
  object mGrade: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'CodGrade'
        DataType = ftInteger
      end
      item
        Name = 'Posicao'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'QtdOriginal'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mGradeNewRecord
    Left = 528
    Top = 344
    Data = {
      930000009619E0BD010000001800000007000000000003000000930006506564
      69646F0400010000000000044974656D040001000000000008436F6447726164
      65040001000000000007506F736963616F04000100000000000754616D616E68
      6F01004900000001000557494454480200020006000351746408000400000000
      000B5174644F726967696E616C08000400000000000000}
    object mGradePedido: TIntegerField
      FieldName = 'Pedido'
    end
    object mGradeItem: TIntegerField
      FieldName = 'Item'
    end
    object mGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object mGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object mGradeTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object mGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mGradeQtdOriginal: TFloatField
      FieldName = 'QtdOriginal'
    end
  end
  object mInfLote: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforePost = mInfLoteBeforePost
    Left = 376
    Top = 208
    Data = {
      3B0000009619E0BD0100000018000000020000000000030000003B0007517464
      4C6F7465040001000000000008517464506172657308000400000000000000}
    object mInfLoteQtdLote: TIntegerField
      FieldName = 'QtdLote'
    end
    object mInfLoteQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
  end
  object dsmInfLote: TDataSource
    DataSet = mInfLote
    Left = 400
    Top = 208
  end
end
