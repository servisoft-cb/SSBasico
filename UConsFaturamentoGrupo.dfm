object fConsFaturamentoGrupo: TfConsFaturamentoGrupo
  Left = 87
  Top = 69
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Faturamento'
  ClientHeight = 530
  ClientWidth = 776
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
    Width = 776
    Height = 98
    Align = alTop
    TabOrder = 0
    DesignSize = (
      776
      98)
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
    object Panel2: TPanel
      Left = 472
      Top = 3
      Width = 105
      Height = 81
      TabOrder = 5
      object BitBtn2: TBitBtn
        Left = 7
        Top = 53
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
        Top = 28
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
        Visible = False
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
      Top = 2
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
    object CurrencyEdit1: TCurrencyEdit
      Left = 682
      Top = 8
      Width = 89
      Height = 21
      AutoSize = False
      Color = clAqua
      DisplayFormat = '###,###,##0.00'
      Anchors = [akTop, akRight]
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
    end
    object GroupBox1: TGroupBox
      Left = 336
      Top = 20
      Width = 129
      Height = 68
      Caption = 'Op'#231#227'o'
      TabOrder = 10
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 98
    Width = 776
    Height = 432
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Acumulado'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 772
        Height = 409
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
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Grupo'
            Width = 290
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalDuplicata'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Duplicata'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTransf'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Transfer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Width = 78
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Detalhado'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 772
        Height = 409
        Align = alClient
        DataSource = dsqConsulta
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
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Grupo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Width = 84
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
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
        'afiscal.IcmsIpi, Dbnotafiscalitens.BaseIcms, Dbproduto.CodGrupo,' +
        ' Dbproduto.Codigo CodProduto, Dbproduto.Referencia, dbNotaFiscal' +
        '.Serie, dbNotaFiscalItens.CodCor'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal'
      '   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)'
      '   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)  '
      '   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao'
      '   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)  '
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)  '
      
        'WHERE  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Can' +
        'celada IS NULL) )  '
      
        '      AND  ( (Dbnotafiscal.NFeDenegada = FALSE)  OR  (Dbnotafisc' +
        'al.NFeDenegada IS NULL) )  '
      
        '      AND  Dbnotafiscal.DtEmissao BETWEEN '#39'09/01/2008'#39' AND '#39'11/1' +
        '0/2008'#39'  '
      'ORDER BY Dbproduto.CodGrupo, Dbnotafiscal.DtEmissao'
      ' '
      ' '
      ' ')
    Left = 512
    Top = 240
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
    object qConsultaCodGrupo: TIntegerField
      FieldName = 'CodGrupo'
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qConsultaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qConsultaSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object qConsultaCodCor: TIntegerField
      FieldName = 'CodCor'
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
        Name = 'CodGrupo'
        DataType = ftInteger
      end
      item
        Name = 'NomeGrupo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrTotalDuplicata'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotalNota'
        DataType = ftFloat
      end
      item
        Name = 'VlrTransf'
        DataType = ftFloat
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'NomeGrupo'
    Params = <>
    StoreDefs = True
    OnNewRecord = mDetalhadoNewRecord
    Left = 440
    Top = 128
    Data = {
      9D0000009619E0BD0100000018000000060000000000030000009D0008436F64
      477275706F0400010000000000094E6F6D65477275706F010049000000010005
      574944544802000200280011566C72546F74616C4475706C6963617461080004
      00000000000C566C72546F74616C4E6F7461080004000000000009566C725472
      616E736608000400000000000A5175616E746964616465080004000000000000
      00}
    object mDetalhadoCodGrupo: TIntegerField
      DisplayWidth = 12
      FieldName = 'CodGrupo'
    end
    object mDetalhadoNomeGrupo: TStringField
      DisplayWidth = 48
      FieldName = 'NomeGrupo'
      Size = 40
    end
    object mDetalhadoVlrTotalDuplicata: TFloatField
      DisplayWidth = 20
      FieldName = 'VlrTotalDuplicata'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoVlrTotalNota: TFloatField
      DisplayWidth = 17
      FieldName = 'VlrTotalNota'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoVlrTransf: TFloatField
      DisplayWidth = 15
      FieldName = 'VlrTransf'
      DisplayFormat = '###,###,##0.00'
    end
    object mDetalhadoQuantidade: TFloatField
      DisplayWidth = 14
      FieldName = 'Quantidade'
      DisplayFormat = '###,###,##0.#####'
    end
  end
  object dsmDetalhado: TDataSource
    DataSet = mDetalhado
    Left = 456
    Top = 128
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 528
    Top = 240
  end
end
