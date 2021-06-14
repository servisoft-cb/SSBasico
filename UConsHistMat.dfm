object fConsHistMat: TfConsHistMat
  Left = 136
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Hist'#243'rico do Material'
  ClientHeight = 523
  ClientWidth = 785
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 523
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 783
      Height = 177
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        783
        177)
      object SpeedButton1: TSpeedButton
        Left = 464
        Top = 67
        Width = 113
        Height = 31
        Hint = 'Desativa a consulta'
        Caption = 'Cancela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object Label3: TLabel
        Left = 542
        Top = 120
        Width = 91
        Height = 16
        Caption = 'Qtd. Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 636
        Top = 120
        Width = 142
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 555
        Top = 139
        Width = 78
        Height = 16
        Caption = 'Qtd. Sa'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 636
        Top = 139
        Width = 142
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 587
        Top = 157
        Width = 46
        Height = 16
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 636
        Top = 157
        Width = 142
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 544
        Top = 153
        Width = 232
        Height = 1
        Brush.Color = clBlack
      end
      object Label1: TLabel
        Left = 414
        Top = 136
        Width = 89
        Height = 16
        Caption = 'Pre'#231'o Custo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 464
        Top = 13
        Width = 145
        Height = 13
        DataField = 'CNPJ'
        DataSource = DM1.dsFilial
        Visible = False
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 75
        Top = 87
        Width = 383
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsProduto
        TabOrder = 4
        OnCloseUp = RxDBLookupCombo1Exit
        OnDropDown = RxDBLookupCombo1Enter
        OnEnter = RxDBLookupCombo1Enter
        OnExit = RxDBLookupCombo1Exit
      end
      object BitBtn1: TBitBtn
        Left = 464
        Top = 36
        Width = 113
        Height = 31
        Hint = 'Executa a consulta p/ material selecionado ao lado'
        Caption = 'Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BitBtn1Click
        Glyph.Data = {
          46050000424D460500000000000036040000280000000D000000110000000100
          08000000000010010000C30E0000C30E00000001000000000000000000008080
          8000000080000080800000800000808000008000000080008000408080004040
          0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
          FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
          80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
          60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
          B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
          1D007666280000450000013E450013286A006A39850085324A00040404000808
          08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
          5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
          840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
          0000000039009B00000000250000000049003B111100002F000000005D004517
          1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
          00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
          2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
          A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
          2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
          89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
          AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
          0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
          0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
          42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
          890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
          C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
          FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
          F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
          FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
          CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
          8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
          7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
          BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
          88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
          A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
          0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
          00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
          001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
          11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
          110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
          11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
          110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
          110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
          0F0F0F0F0F0F0F000000}
      end
      object BitBtn2: TBitBtn
        Left = 680
        Top = 6
        Width = 94
        Height = 57
        Hint = 'Fecha a janela atual'
        Anchors = [akTop, akRight]
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
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
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 75
        Top = 109
        Width = 309
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = qsCor
        TabOrder = 5
        OnEnter = RxDBLookupCombo2Enter
      end
      object RadioGroup1: TRadioGroup
        Left = 76
        Top = 33
        Width = 382
        Height = 29
        Caption = ' Op'#231#245'es... '
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Produto'
          'Material')
        TabOrder = 1
        OnClick = RadioGroup1Click
      end
      object StaticText1: TStaticText
        Left = 14
        Top = 156
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicial:'
        TabOrder = 11
      end
      object DateEdit1: TDateEdit
        Left = 75
        Top = 152
        Width = 90
        Height = 21
        NumGlyphs = 2
        TabOrder = 7
      end
      object DateEdit2: TDateEdit
        Left = 294
        Top = 152
        Width = 90
        Height = 21
        NumGlyphs = 2
        TabOrder = 8
      end
      object StaticText2: TStaticText
        Left = 234
        Top = 156
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Final:'
        TabOrder = 12
      end
      object StaticText3: TStaticText
        Left = 14
        Top = 88
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome:'
        TabOrder = 13
      end
      object StaticText4: TStaticText
        Left = 14
        Top = 112
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Cor:'
        TabOrder = 14
      end
      object StaticText5: TStaticText
        Left = 14
        Top = 134
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tamanho:'
        TabOrder = 15
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 75
        Top = 131
        Width = 70
        Height = 21
        DropDownCount = 8
        LookupField = 'Tamanho'
        LookupDisplay = 'Tamanho'
        LookupSource = dsqTamanho
        TabOrder = 6
        OnEnter = RxDBLookupCombo3Enter
      end
      object StaticText6: TStaticText
        Left = 14
        Top = 69
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo:'
        TabOrder = 16
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 75
        Top = 65
        Width = 62
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 2
        OnExit = CurrencyEdit1Exit
      end
      object StaticText7: TStaticText
        Left = 174
        Top = 69
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Refer'#234'ncia:'
        TabOrder = 17
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 235
        Top = 65
        Width = 142
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Referencia'
        LookupSource = DM1.dsProduto
        TabOrder = 3
        OnEnter = RxDBLookupCombo4Enter
        OnExit = RxDBLookupCombo4Exit
      end
      object StaticText8: TStaticText
        Left = 14
        Top = 13
        Width = 58
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Filial:'
        TabOrder = 18
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 75
        Top = 9
        Width = 383
        Height = 21
        DropDownCount = 8
        DropDownWidth = 600
        ListStyle = lsDelimited
        LookupField = 'Codigo'
        LookupDisplay = 'Empresa;CNPJ'
        LookupSource = DM1.dsFilial
        TabOrder = 0
        OnChange = RxDBLookupCombo5Change
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 408
        Top = 152
        Width = 97
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clInfoBk
        DecimalPlaces = 5
        DisplayFormat = '0.00###'
        ReadOnly = True
        TabOrder = 19
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 1
      Top = 178
      Width = 783
      Height = 344
      Align = alClient
      DataSource = qsMaterial
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtMov'
          Title.Alignment = taCenter
          Title.Caption = 'Dt.Movimento'
          Width = 71
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unidade'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Width = 33
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ES'
          Title.Alignment = taCenter
          Width = 24
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TipoMov'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Mov.'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumNota'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota (Doc)'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnitario'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercIcms'
          Title.Alignment = taCenter
          Title.Caption = '%Icms'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrFrete'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Frete'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCor'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'clNomePessoa'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente / Fornecedor'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tamanho'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumMov'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Movimento'
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Largura'
          Title.Alignment = taCenter
          Title.Caption = 'Larg.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UnidadeOrig'
          Title.Alignment = taCenter
          Title.Caption = 'Unid. da Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnitarioOrig'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Unit'#225'rio da Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdOrig'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. da Nota'
          Visible = True
        end>
    end
  end
  object qMaterial: TQuery
    OnCalcFields = qMaterialCalcFields
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbestoquematmov.CodMaterial, Dbproduto.Nome NomeMaterial,' +
        ' Dbestoquematmov.NumMov, Dbcor.Nome NomeCor, Dbestoquematmov.Lar' +
        'gura, Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbestoquematmov' +
        '.TipoMov, Dbestoquematmov.NumNota, Dbestoquematmov.VlrUnitario, ' +
        'Dbestoquematmov.Qtd, Dbestoquematmov.Unidade, Dbestoquematmov.Co' +
        'dCor, Dbestoquematmov.PercIcms, Dbestoquematmov.Tamanho, Dbestoq' +
        'uematmov.CodCliForn, dbEstoqueMatMov.Filial, dbEstoqueMatMov.Vlr' +
        'Frete, dbEstoqueMatMov.UnidadeOrig, dbEstoqueMatMov.VlrUnitarioO' +
        'rig, dbEstoqueMatMov.QtdOrig, dbEstoqueMatMov.VlrDescontoOrig'
      'FROM "dbProduto.DB" Dbproduto'
      '   INNER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)'
      '   FULL JOIN "Dbcor.db" Dbcor'
      '   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)'
      'WHERE   (Dbestoquematmov.CodMaterial = 5)'
      
        '   AND  (Dbestoquematmov.CodCor = 0) AND (Dbestoquematmov.Filial' +
        ' = :Filial)'
      
        'ORDER BY Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbproduto.No' +
        'me'
      ' '
      ' '
      ' '
      ' ')
    Left = 208
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object qMaterialCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qMaterialNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object qMaterialNumMov: TIntegerField
      FieldName = 'NumMov'
    end
    object qMaterialNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object qMaterialLargura: TStringField
      FieldName = 'Largura'
      Size = 1
    end
    object qMaterialDtMov: TDateField
      FieldName = 'DtMov'
    end
    object qMaterialES: TStringField
      FieldName = 'ES'
      Size = 1
    end
    object qMaterialTipoMov: TStringField
      FieldName = 'TipoMov'
      Size = 3
    end
    object qMaterialNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qMaterialVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object qMaterialQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.00000'
    end
    object qMaterialUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qMaterialCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qMaterialPercIcms: TFloatField
      FieldName = 'PercIcms'
    end
    object qMaterialTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object qMaterialclNomePessoa: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomePessoa'
      Size = 40
      Calculated = True
    end
    object qMaterialCodCliForn: TIntegerField
      FieldName = 'CodCliForn'
    end
    object qMaterialFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qMaterialVlrFrete: TFloatField
      FieldName = 'VlrFrete'
      DisplayFormat = '0.00'
    end
    object qMaterialUnidadeOrig: TStringField
      FieldName = 'UnidadeOrig'
      Size = 6
    end
    object qMaterialVlrUnitarioOrig: TFloatField
      FieldName = 'VlrUnitarioOrig'
    end
    object qMaterialQtdOrig: TFloatField
      FieldName = 'QtdOrig'
    end
    object qMaterialVlrDescontoOrig: TFloatField
      FieldName = 'VlrDescontoOrig'
    end
  end
  object qsMaterial: TDataSource
    DataSet = qMaterial
    Left = 240
    Top = 296
  end
  object qCor: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT Dbcor.Nome, Dbcor.Codigo'
      'FROM "dbProdutoCor.DB" Dbprodutocor'
      '   INNER JOIN "Dbcor.db" Dbcor'
      '   ON  (Dbprodutocor.CodCor = Dbcor.Codigo)  '
      'WHERE  Dbprodutocor.Codproduto = :Cod'
      'ORDER BY DbCor.Nome')
    Left = 312
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Cod'
        ParamType = ptUnknown
        Value = 0
      end>
    object qCorNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbCor.DB".Nome'
      Size = 15
    end
    object qCorCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'TABELAS."dbCor.DB".Codigo'
    end
  end
  object qsCor: TDataSource
    DataSet = qCor
    Left = 344
    Top = 304
  end
  object RxDBFilter1: TRxDBFilter
    DataSource = DM1.dsProduto
    Filter.Strings = (
      'ProdMat = '#39'M'#39)
    Left = 472
    Top = 360
  end
  object qTamanho: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT DISTINCT Tamanho'
      'FROM "dbGradeItem.DB" Dbgradeitem'
      'ORDER BY Tamanho')
    Left = 400
    Top = 208
    object qTamanhoTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbGradeItem.DB".Tamanho'
      Size = 6
    end
  end
  object dsqTamanho: TDataSource
    DataSet = qTamanho
    Left = 424
    Top = 208
  end
end
