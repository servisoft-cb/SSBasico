object fConsFaturamento: TfConsFaturamento
  Left = 122
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Faturamento'
  ClientHeight = 550
  ClientWidth = 776
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
    Width = 776
    Height = 116
    Align = alTop
    TabOrder = 0
    DesignSize = (
      776
      116)
    object Label5: TLabel
      Left = 619
      Top = 16
      Width = 62
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Faturamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 618
      Top = 64
      Width = 63
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total Transf.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 601
      Top = 40
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total Duplicatas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 473
      Top = 2
      Width = 105
      Height = 106
      TabOrder = 1
      object BitBtn2: TBitBtn
        Left = 7
        Top = 78
        Width = 95
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn2Click
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
      object BitBtn3: TBitBtn
        Left = 7
        Top = 53
        Width = 95
        Height = 25
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn3Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFF202020
          404040404040404040404040404040404040404040202020FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000060606060606060606060606060606060606050
          5050202020404040404040404040404040808080202020FFFFFF000000BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF606060606060B0B0B0C0C0C0C0C0
          C04040408080802020205F5F5F505050B0B0B0909090A0A0A0B0B0B0808080C0
          C0C0CFCFCF4040405050506060606060604040404040408080807F7F7FC0C0C0
          606060606060606060606060606060606060606060606060C0C0C0DFDFDFCFCF
          CF808080202020FFFFFF7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C09090907F7F7FCFCFCF8080808080800000007F7F7FC0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09090CF60609FC0C0
          C08080808080800000003F3F3FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
          DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F808080000000FFFFFF303030
          B0B0B02020203F3F3F7F7F7F3F3F3F5F5F5F2020203F3F3F6F6F6F0000003030
          30CFCFCF9F9F9F000000FFFFFFFFFFFF303030505050202020FFFFFFDFDFDF5F
          5F5F000000DFDFDFFFFFFF404040606060606060505050000000FFFFFFFFFFFF
          FFFFFFFFFFFF0000009F9F9FFFFFFF4040405F5F5FFFFFFFFFFFFF9F9F9F0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020EFEFEFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn1: TBitBtn
        Left = 7
        Top = 3
        Width = 95
        Height = 25
        Caption = 'Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn1Click
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000D000000000000DD00D000000D0FF
          FFFFFFFF0D000D000000D0FFFFFFF0000800DD000000D0FFFFFF0877808DDD00
          0000D0FFFFF0877E880DDD000000D0FFFFF07777870DDD000000D0FFFFF07E77
          870DDD000000D0FFFFF08EE7880DDD000000D0FFFFFF087780DDDD000000D0FF
          FFFFF0000DDDDD000000D0FFFFFFFFFF0DDDDD000000D0FFFFFFF0000DDDDD00
          0000D0FFFFFFF070DDDDDD000000D0FFFFFFF00DDDDDDD000000DD00000000DD
          DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
      end
      object BitBtn4: TBitBtn
        Left = 7
        Top = 28
        Width = 95
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn4Click
      end
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 682
      Top = 8
      Width = 89
      Height = 21
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,##0.00'
      Anchors = [akTop, akRight]
      TabOrder = 2
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 682
      Top = 31
      Width = 89
      Height = 21
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,##0.00'
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 682
      Top = 55
      Width = 89
      Height = 21
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,##0.00'
      Anchors = [akTop, akRight]
      TabOrder = 4
    end
    object Panel3: TPanel
      Left = 0
      Top = 1
      Width = 473
      Height = 110
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 54
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 180
        Top = 54
        Width = 51
        Height = 13
        Caption = 'Data Final:'
      end
      object Label4: TLabel
        Left = 49
        Top = 10
        Width = 23
        Height = 13
        Caption = 'Filial:'
      end
      object Label3: TLabel
        Left = 37
        Top = 32
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object DateEdit1: TDateEdit
        Left = 75
        Top = 46
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object DateEdit2: TDateEdit
        Left = 236
        Top = 46
        Width = 95
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 75
        Top = 2
        Width = 257
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'NomeInterno'
        LookupSource = DM1.dsFilial
        TabOrder = 0
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 75
        Top = 24
        Width = 257
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsCliente
        TabOrder = 1
        OnEnter = RxDBLookupCombo2Enter
      end
      object CheckBox4: TCheckBox
        Left = 333
        Top = 7
        Width = 126
        Height = 17
        Caption = 'Mostrar Mat'#233'ria Prima'
        TabOrder = 4
      end
      object ProgressBar1: TProgressBar
        Left = 76
        Top = 68
        Width = 253
        Height = 17
        TabOrder = 6
      end
      object GroupBox1: TGroupBox
        Left = 336
        Top = 24
        Width = 129
        Height = 68
        Caption = 'Op'#231#227'o'
        TabOrder = 5
        object ckNotaFiscal: TCheckBox
          Left = 8
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Nota Fiscal'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object ckCupomFiscal: TCheckBox
          Left = 8
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Cupom Fiscal'
          TabOrder = 1
        end
        object ckVale: TCheckBox
          Left = 8
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Vale'
          TabOrder = 2
        end
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 116
    Width = 776
    Height = 434
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Detalhado'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 772
        Height = 411
        Align = alClient
        DataSource = dsmDetalhado
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TipoDoc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Doc'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 25
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Serie'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 37
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCliente'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cliente'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente (Fantasia)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total Nota'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDuplicatas'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Duplicatas'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTransf'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Transf.'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 262
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Acumulado Por Produto'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 772
        Height = 411
        Align = alClient
        DataSource = dsmDetalhado
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TipoDoc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Doc'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 29
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total Nota'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDuplicatas'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Duplicatas'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTransf'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Transf.'
            Width = 85
            Visible = True
          end>
      end
    end
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra, Dbnotafisc' +
        'al.percdesc, Dbnotafiscal.NumNota, Dbnotafiscal.NumSeq, Dbnotafi' +
        'scal.Filial, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd, D' +
        'bnotafiscalitens.VlrTotal, Dbnotafiscalitens.VlrIpi, Dbnotafisca' +
        'l.VlrTransf, Dbnotafiscal.PercTransf, Dbnotafiscal.CodCli, Dbnot' +
        'afiscal.IcmsIpi, Dbnotafiscalitens.BaseIcms, dbNotaFiscal.Serie,' +
        ' dbNotaFiscalItens.CodProduto, dbNotaFiscalItens.CodCor'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)'
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)  '
      
        'WHERE   ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Ca' +
        'ncelada IS NULL) )  '
      
        '   AND  Dbnotafiscal.DtEmissao BETWEEN '#39'09/01/2008'#39' AND '#39'11/10/2' +
        '008'#39'  '
      'ORDER BY Dbnotafiscal.DtEmissao'
      ' '
      ' '
      ' '
      ' ')
    Left = 496
    Top = 216
    object qConsultaDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qConsultaMaoObra: TBooleanField
      FieldName = 'MaoObra'
    end
    object qConsultapercdesc: TFloatField
      FieldName = 'percdesc'
    end
    object qConsultaVlrIpi: TFloatField
      FieldName = 'VlrIpi'
    end
    object qConsultaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qConsultaNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object qConsultaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qConsultaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qConsultaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qConsultaVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qConsultaVlrTransf: TFloatField
      FieldName = 'VlrTransf'
    end
    object qConsultaPercTransf: TFloatField
      FieldName = 'PercTransf'
    end
    object qConsultaCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qConsultalkNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCliente'
      LookupDataSet = DM1.tCliente2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCli'
      Size = 40
      Lookup = True
    end
    object qConsultaIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object qConsultaBaseIcms: TFloatField
      FieldName = 'BaseIcms'
    end
    object qConsultalkFantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFantasia'
      LookupDataSet = DM1.tCliente2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Fantasia'
      KeyFields = 'CodCli'
      Size = 30
      Lookup = True
    end
    object qConsultaSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qConsultaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qConsultalkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodProduto'
      Size = 60
      Lookup = True
    end
    object qConsultalkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Lookup = True
    end
    object qConsultalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 40
      Lookup = True
    end
  end
  object mDetalhado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrDuplicatas'
        DataType = ftFloat
      end
      item
        Name = 'VlrTransf'
        DataType = ftFloat
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TipoDoc'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodProduto'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'TipoDoc;Filial;NumNota;Serie'
    Params = <>
    StoreDefs = True
    OnNewRecord = mDetalhadoNewRecord
    Left = 440
    Top = 128
    Data = {
      9D0100009619E0BD0100000018000000100000000000030000009D010646696C
      69616C0400010000000000074E756D4E6F74610400010000000000094474456D
      697373616F04000600000000000A436F64436C69656E74650400010000000000
      0B4E6F6D65436C69656E74650100490000000100055749445448020002002800
      08566C72546F74616C08000400000000000D566C724475706C69636174617308
      0004000000000009566C725472616E736608000400000000000846616E746173
      69610100490000000100055749445448020002001E00075469706F446F630100
      4900000001000557494454480200020003000553657269650100490000000100
      0557494454480200020003000A436F6450726F6475746F04000100000000000B
      4E6F6D6550726F6475746F0100490000000100055749445448020002003C000A
      5265666572656E63696101004900000001000557494454480200020014000643
      6F64436F720400010000000000074E6F6D65436F720100490000000100055749
      44544802000200280001000D44454641554C545F4F5244455202008200000000
      00}
    object mDetalhadoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mDetalhadoNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mDetalhadoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mDetalhadoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mDetalhadoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mDetalhadoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoVlrDuplicatas: TFloatField
      FieldName = 'VlrDuplicatas'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoVlrTransf: TFloatField
      FieldName = 'VlrTransf'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 30
    end
    object mDetalhadoTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 3
    end
    object mDetalhadoSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mDetalhadoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mDetalhadoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 60
    end
    object mDetalhadoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mDetalhadoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mDetalhadoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 40
    end
  end
  object dsmDetalhado: TDataSource
    DataSet = mDetalhado
    Left = 464
    Top = 128
  end
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.NUMCUPOM, CF.DTEMISSAO, CF.CODCLIENTE, CF.FILIAL, CL.N' +
      'OME NOMECLIENTE, CL.FANTASIA, IT.CODPRODUTO, IT.CODCOR, IT.VLRTO' +
      'TAL'#13#10'FROM CUPOMFISCAL CF'#13#10'INNER JOIN CUPOMFISCALIT IT'#13#10'ON CF.ID_' +
      'CUPOM = IT.ID_CUPOM'#13#10'INNER JOIN CLIENTE CL'#13#10'ON CF.CODCLIENTE = C' +
      'L.CODIGO'#13#10'WHERE (CF.CANCELADO = '#39'N'#39')'#13#10'  AND (IT.CANCELADO = '#39'N'#39')' +
      #13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 312
    object sdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object sdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsCupomFiscalCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsCupomFiscalNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object sdsCupomFiscalFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object sdsCupomFiscalCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsCupomFiscalCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object sdsCupomFiscalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    Left = 552
    Top = 312
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomFiscal'
    Left = 592
    Top = 312
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsCupomFiscalFANTASIA: TStringField
      FieldName = 'FANTASIA'
    end
    object cdsCupomFiscalCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsCupomFiscalCODCOR: TIntegerField
      FieldName = 'CODCOR'
    end
    object cdsCupomFiscalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
  end
  object qVale: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbvale.Filial, Dbvale.NumVale, Dbvale.DtEmissao, Dbvale.C' +
        'odCliente, DbvaleItens.VlrTotal, DbvaleItens.CodProduto, DbvaleI' +
        'tens.CodCor'
      'FROM "dbVale.DB" Dbvale'
      'INNER JOIN "dbValeItens.db" dbValeItens'
      '  ON dbVale.Filial = DbvaleItens.Filial'
      ' AND Dbvale.NumVale = DbvaleItens.NumVale'
      'WHERE  DtEmissao BETWEEN :DataIni AND :DataFin'
      ' ')
    Left = 544
    Top = 216
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataFin'
        ParamType = ptUnknown
      end>
    object qValeFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbVale.DB".Filial'
    end
    object qValeNumVale: TIntegerField
      FieldName = 'NumVale'
      Origin = 'TABELAS."dbVale.DB".NumVale'
    end
    object qValeDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbVale.DB".DtEmissao'
    end
    object qValeCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbVale.DB".CodCliente'
    end
    object qValeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbVale.DB".VlrTotal'
    end
    object qValelkNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCliente'
      LookupDataSet = DM1.tCliente2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCliente'
      Size = 60
      Lookup = True
    end
    object qValelkFantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFantasia'
      LookupDataSet = DM1.tCliente2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Fantasia'
      KeyFields = 'CodCliente'
      Size = 40
      Lookup = True
    end
    object qValeCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbValeItens.DB".CodProduto'
    end
    object qValeCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbValeItens.DB".CodCor'
    end
    object qValelkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodProduto'
      Size = 60
      Lookup = True
    end
    object qValelkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Lookup = True
    end
    object qValelkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 40
      Lookup = True
    end
  end
  object mAcumulado: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 280
    Data = {
      460100009619E0BD01000000180000000D00000000000300000046010A436F64
      50726F6475746F040001000000000006436F64436F7204000100000000000B4E
      6F6D6550726F6475746F0100490000000100055749445448020002003C00074E
      6F6D65436F720100490000000100055749445448020002002800075469706F44
      6F630100490000000100055749445448020002000300074E756D4E6F74610400
      0100000000000553657269650100490000000100055749445448020002000300
      0A436F64436C69656E746504000100000000000B4E6F6D65436C69656E746501
      00490000000100055749445448020002003C0008566C72546F74616C08000400
      000000000C566C724475706C6963617461080004000000000009566C72547261
      6E736608000400000000000846616E7461736961010049000000010005574944
      54480200020028000000}
    object mAcumuladoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mAcumuladoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object mAcumuladoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 60
    end
    object mAcumuladoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 40
    end
    object mAcumuladoTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 3
    end
    object mAcumuladoNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mAcumuladoSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mAcumuladoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mAcumuladoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
    object mAcumuladoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mAcumuladoVlrDuplicata: TFloatField
      FieldName = 'VlrDuplicata'
    end
    object mAcumuladoVlrTransf: TFloatField
      FieldName = 'VlrTransf'
    end
    object mAcumuladoFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 40
    end
  end
end
