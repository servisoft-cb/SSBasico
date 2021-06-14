object fConsHistCliente2: TfConsHistCliente2
  Left = 111
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Cliente'
  ClientHeight = 538
  ClientWidth = 787
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
    Width = 787
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 12
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Label2: TLabel
      Left = 5
      Top = 33
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 338
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label4: TLabel
      Left = 343
      Top = 33
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 41
      Top = 4
      Width = 289
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 41
      Top = 25
      Width = 289
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Nome'
      LookupSource = DM1.dsCliente
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit1: TDateEdit
      Left = 396
      Top = 4
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 396
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 503
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 49
    Width = 787
    Height = 489
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'T'#237'tulos'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 783
        Height = 30
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object Label5: TLabel
          Left = 5
          Top = 12
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
        end
        object Label6: TLabel
          Left = 181
          Top = 12
          Width = 62
          Height = 13
          Caption = 'Ordernar por:'
        end
        object ComboBox1: TComboBox
          Left = 41
          Top = 4
          Width = 109
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 3
          TabOrder = 0
          Text = 'Todas'
          Items.Strings = (
            'Pendentes'
            'Pagas'
            'Devolvidos'
            'Todas')
        end
        object ComboBox2: TComboBox
          Left = 249
          Top = 4
          Width = 136
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Atraso'
          Items.Strings = (
            'Atraso'
            'Data Vencimento'
            'Data Emiss'#227'o'
            'Valor Parcela')
        end
        object BitBtn2: TBitBtn
          Left = 694
          Top = 6
          Width = 75
          Height = 21
          Caption = 'Recalcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 30
        Width = 783
        Height = 322
        Align = alClient
        DataSource = dsqCReceber
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 24
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 24
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ParcCReceber'
            Title.Alignment = taCenter
            Title.Caption = 'Parc.'
            Width = 31
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtVencCReceber'
            Title.Alignment = taCenter
            Title.Caption = 'Data Vencimento'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clDiasAtraso'
            Title.Alignment = taCenter
            Title.Caption = 'Dias Atraso'
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtPagParcCReceber'
            Title.Alignment = taCenter
            Title.Caption = 'Data Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrParcCReceber'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PgtoParcial'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pagamento'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RestParcela'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pendente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Abatimentos'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Abatim.'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Desconto'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercComissao'
            Title.Alignment = taCenter
            Title.Caption = '% Comiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeConta'
            Title.Alignment = taCenter
            Title.Caption = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JurosPagos'
            Title.Alignment = taCenter
            Title.Caption = 'Juros Pagos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumCReceber'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Lan'#231'.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cancelado'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtGerado'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDevolucao'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Devolu'#231#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Transferencia'
            Title.Alignment = taCenter
            Title.Caption = 'Transf.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumTitBanco'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' T'#237'tulo no Banco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeBancoBoleto'
            Title.Alignment = taCenter
            Title.Caption = 'Banco Boleto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCobranca'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Cobran'#231'a'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 352
        Width = 783
        Height = 114
        Align = alBottom
        Color = clSilver
        TabOrder = 2
        object VDBGrid1: TVDBGrid
          Left = 1
          Top = 1
          Width = 781
          Height = 112
          Align = alClient
          DataSource = dsmTotais
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Vertical = True
          DefaultColWidth = 120
          TitlesWidth = 70
          Columns = <
            item
              Alignment = taCenter
              Color = 10930928
              FieldName = 'Descricao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = ' '
              Title.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
            end
            item
              Alignment = taCenter
              FieldName = 'Qtd'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd. T'#237'tulos'
            end
            item
              Alignment = taCenter
              FieldName = 'Valor'
              Title.Alignment = taCenter
            end
            item
              Alignment = taCenter
              FieldName = 'Percentual'
              Title.Alignment = taCenter
              Title.Caption = '%'
            end>
        end
      end
    end
  end
  object dsqCReceber: TDataSource
    DataSet = qCReceber
    Left = 161
    Top = 122
  end
  object qCReceber: TQuery
    OnCalcFields = qCReceberCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbcreceberparc.Filial, Dbcreceberparc.CodCli, Dbvendedor.' +
        'Nome NomeVendedor, Dbcreceberparc.CodVendedor, Dbcreceberparc.Vl' +
        'rParcCReceber, Dbcreceberparc.ParcCReceber, Dbcreceberparc.NumCR' +
        'eceber, Dbcreceberparc.DtVencCReceber, Dbcreceberparc.DtPagParcC' +
        'Receber, Dbcreceberparc.PgtoParcial, Dbcreceberparc.RestParcela,' +
        ' Dbcreceberparc.PercComissao, Dbcreceberparc.Abatimentos, Dbcont' +
        'as.NomeConta, Dbcreceberparc.JurosPagos, Dbcreceberparc.Cancelad' +
        'o, Dbcreceberparc.DtGerado, Dbcreceberparc.VlrDevolucao, Dbcrece' +
        'berparc.Transferencia, Dbcreceberparc.NumTitBanco, Dbcreceberpar' +
        'c.NumCarteira, Dbcreceberparc.NumNota, Dbcreceberparc.CodBancoBo' +
        'leto, Dbcreceberparc.CodConta, Dbcontas_1.NomeConta NomeBancoBol' +
        'eto, Dbcreceberparc.CodTipoCobranca, DbTipoCobranca.Nome NomeCob' +
        'ranca, Dbcreceberparc.Desconto, Dbcreceberparc.Despesas, DbTipoC' +
        'obranca.Descontado, Dbcreceberparc.DtVencimento2, Dbcreceberparc' +
        '.DiasAtraso'
      'FROM "dbCReceberParc.DB" Dbcreceberparc'
      '   FULL OUTER JOIN "dbVendedor.DB" Dbvendedor'
      '   ON  (Dbcreceberparc.CodVendedor = Dbvendedor.Codigo)'
      '   FULL OUTER JOIN "dbContas.DB" Dbcontas_1'
      '   ON  (Dbcreceberparc.CodBancoBoleto = Dbcontas_1.CodConta)'
      '   FULL OUTER JOIN "dbContas.DB" Dbcontas'
      '   ON  (Dbcreceberparc.CodConta = Dbcontas.CodConta)  '
      '   FULL OUTER JOIN "dbTipoCobranca.DB" DbTipoCobranca'
      
        '   ON  (Dbcreceberparc.CodTipoCobranca = DbTipoCobranca.Codigo) ' +
        ' '
      ' '
      ' ')
    Left = 136
    Top = 122
    object qCReceberFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qCReceberCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qCReceberNomeVendedor: TStringField
      FieldName = 'NomeVendedor'
      Size = 40
    end
    object qCReceberCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object qCReceberVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
    end
    object qCReceberNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
    object qCReceberDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
    end
    object qCReceberDtPagParcCReceber: TDateField
      FieldName = 'DtPagParcCReceber'
    end
    object qCReceberPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberRestParcela: TFloatField
      FieldName = 'RestParcela'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object qCReceberAbatimentos: TFloatField
      FieldName = 'Abatimentos'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberNomeConta: TStringField
      FieldName = 'NomeConta'
      Size = 40
    end
    object qCReceberJurosPagos: TFloatField
      FieldName = 'JurosPagos'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberCancelado: TBooleanField
      FieldName = 'Cancelado'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qCReceberDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object qCReceberVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberTransferencia: TBooleanField
      FieldName = 'Transferencia'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qCReceberNumTitBanco: TStringField
      FieldName = 'NumTitBanco'
    end
    object qCReceberNumCarteira: TStringField
      FieldName = 'NumCarteira'
      Size = 3
    end
    object qCReceberNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qCReceberCodBancoBoleto: TIntegerField
      FieldName = 'CodBancoBoleto'
    end
    object qCReceberCodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object qCReceberNomeBancoBoleto: TStringField
      FieldName = 'NomeBancoBoleto'
      Size = 40
    end
    object qCReceberclTransferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTransferencia'
      Size = 1
      Calculated = True
    end
    object qCReceberCodTipoCobranca: TIntegerField
      FieldName = 'CodTipoCobranca'
    end
    object qCReceberNomeCobranca: TStringField
      FieldName = 'NomeCobranca'
    end
    object qCReceberDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object qCReceberDespesas: TFloatField
      FieldName = 'Despesas'
    end
    object qCReceberclDiasAtraso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clDiasAtraso'
      Calculated = True
    end
    object qCReceberDescontado: TBooleanField
      FieldName = 'Descontado'
    end
    object qCReceberDtVencimento2: TDateField
      FieldName = 'DtVencimento2'
    end
    object qCReceberDiasAtraso: TFloatField
      FieldName = 'DiasAtraso'
    end
  end
  object mTotais: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'Percentual'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Codigo'
    Params = <>
    StoreDefs = True
    OnNewRecord = mTotaisNewRecord
    Left = 569
    Top = 349
    Data = {
      740000009619E0BD010000001800000005000000000003000000740006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      445448020002001E000351746404000100000000000556616C6F720800040000
      0000000A50657263656E7475616C08000400000000000000}
    object mTotaisCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mTotaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object mTotaisQtd: TIntegerField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,##0'
    end
    object mTotaisValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object mTotaisPercentual: TFloatField
      FieldName = 'Percentual'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dsmTotais: TDataSource
    DataSet = mTotais
    Left = 592
    Top = 352
  end
end
