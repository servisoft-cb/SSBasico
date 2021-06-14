object fConsPedidoBR: TfConsPedidoBR
  Left = 13
  Top = 25
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Pedidos'
  ClientHeight = 681
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 989
    Height = 681
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Op'#231#227'o de Consulta'
      DesignSize = (
        985
        658)
      object Label1: TLabel
        Left = 41
        Top = 31
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object Label2: TLabel
        Left = 2
        Top = 54
        Width = 74
        Height = 13
        Caption = 'Parte do Nome:'
      end
      object Label3: TLabel
        Left = 7
        Top = 143
        Width = 69
        Height = 13
        Caption = 'P.Cliente (OC):'
      end
      object Label4: TLabel
        Left = 252
        Top = 7
        Width = 33
        Height = 13
        Caption = 'N'#186' OS:'
      end
      object Label5: TLabel
        Left = 44
        Top = 168
        Width = 32
        Height = 13
        Caption = 'Refer.:'
      end
      object Label6: TLabel
        Left = 36
        Top = 192
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label8: TLabel
        Left = 53
        Top = 7
        Width = 23
        Height = 13
        Caption = 'Filial:'
      end
      object Label14: TLabel
        Left = 38
        Top = 76
        Width = 38
        Height = 13
        Caption = 'F'#225'brica:'
      end
      object Label15: TLabel
        Left = 43
        Top = 98
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object RxLabel7: TRxLabel
        Left = 464
        Top = 10
        Width = 88
        Height = 13
        Caption = 'Dt.Emiss'#227'o Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel8: TRxLabel
        Left = 654
        Top = 10
        Width = 27
        Height = 13
        Caption = 'Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TRxLabel
        Left = 466
        Top = 31
        Width = 86
        Height = 13
        Caption = 'Dt.Entrega Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel2: TRxLabel
        Left = 654
        Top = 31
        Width = 27
        Height = 13
        Caption = 'Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel3: TRxLabel
        Left = 468
        Top = 54
        Width = 84
        Height = 13
        Caption = 'Dt.F'#225'brica Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 654
        Top = 54
        Width = 27
        Height = 13
        Caption = 'Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 3
        Top = 122
        Width = 73
        Height = 13
        Caption = 'Representante:'
      end
      object RxLabel9: TRxLabel
        Left = 593
        Top = 78
        Width = 93
        Height = 13
        Caption = 'Op'#231#227'o Lote/Tal'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 55
        Top = 215
        Width = 21
        Height = 13
        Caption = 'Cor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 235
        Top = 143
        Width = 72
        Height = 13
        Caption = 'Pedido Interno:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 78
        Top = 23
        Width = 334
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        LookupField = 'Codigo'
        LookupDisplay = 'Nome;CgcCpf'
        LookupSource = DM1.dsCliente
        TabOrder = 2
        OnEnter = RxDBLookupCombo1Enter
      end
      object Edit1: TEdit
        Left = 78
        Top = 46
        Width = 334
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object Edit2: TEdit
        Left = 78
        Top = 136
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object Edit3: TEdit
        Left = 287
        Top = 1
        Width = 125
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 78
        Top = 184
        Width = 334
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsProduto
        TabOrder = 10
        OnChange = RxDBLookupCombo2Change
        OnEnter = RxDBLookupCombo2Enter
      end
      object Panel1: TPanel
        Left = 10
        Top = 272
        Width = 199
        Height = 46
        Anchors = [akLeft, akBottom]
        Color = clSilver
        TabOrder = 20
        object BitBtn1: TBitBtn
          Left = 9
          Top = 10
          Width = 93
          Height = 29
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn3: TBitBtn
          Left = 101
          Top = 10
          Width = 93
          Height = 29
          Caption = '&Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn3Click
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 793
        Top = 47
        Width = 191
        Height = 46
        Caption = ' Op'#231#227'o '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Pendentes'
          'Faturados'
          'Ambos')
        TabOrder = 19
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 78
        Top = 0
        Width = 164
        Height = 21
        DropDownCount = 8
        DropDownWidth = 600
        LookupField = 'Codigo'
        LookupDisplay = 'NomeInterno;Empresa'
        LookupSource = DM1.dsFilial
        TabOrder = 0
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 78
        Top = 160
        Width = 334
        Height = 21
        DropDownCount = 8
        DropDownWidth = 300
        LookupField = 'Codigo'
        LookupDisplay = 'Referencia;DescMaterial'
        LookupSource = DM1.dsProduto
        TabOrder = 9
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo4Enter
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 78
        Top = 68
        Width = 334
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM2.dsqFabrica
        TabOrder = 4
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 78
        Top = 90
        Width = 334
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM2.dsqRepresentada
        TabOrder = 5
      end
      object DateEdit3: TDateEdit
        Left = 552
        Top = 2
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 12
      end
      object DateEdit4: TDateEdit
        Left = 682
        Top = 2
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 13
      end
      object DateEdit1: TDateEdit
        Left = 552
        Top = 23
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 14
      end
      object DateEdit2: TDateEdit
        Left = 682
        Top = 23
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 15
      end
      object DateEdit5: TDateEdit
        Left = 552
        Top = 46
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 16
      end
      object DateEdit6: TDateEdit
        Left = 682
        Top = 46
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 17
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 78
        Top = 114
        Width = 334
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = DM1.dsVendedor
        TabOrder = 6
        OnEnter = RxDBLookupCombo7Enter
      end
      object ComboBox1: TComboBox
        Left = 683
        Top = 70
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 18
        Items.Strings = (
          'N'#227'o Lote'
          'Possui Lote'
          'Ambos')
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 78
        Top = 207
        Width = 334
        Height = 21
        DropDownCount = 8
        LookupField = 'CodCor'
        LookupDisplay = 'lkNomeCor'
        LookupSource = DM1.dsProdutoCor
        TabOrder = 11
        OnEnter = RxDBLookupCombo8Enter
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 311
        Top = 136
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 8
      end
      object RadioGroup2: TRadioGroup
        Left = 462
        Top = 177
        Width = 397
        Height = 51
        Caption = ' Ordenar a consulta por '
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Dt.Entrega'
          'OC (Ped.Cliente)'
          'N'#186' OS (Remessa)'
          'Produto')
        TabOrder = 21
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Consulta'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 41
        Width = 985
        Height = 426
        Align = alClient
        DataSource = dsqConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Groupings = <
          item
            Expression = 'aaa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Color = 10930928
          end>
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
        ColCount = 28
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtReprogramacao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entregue'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtProducao'
            Title.Alignment = taCenter
            Title.Caption = 'Data F'#225'brica'
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Ped. Interno'
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PedidoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente'
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 102
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 53
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Q. Entregue'
            Width = 51
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Q. Pendente'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Q. Cancelada'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCliente'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumOS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 37
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
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCombinacao'
            Title.Alignment = taCenter
            Title.Caption = 'Combina'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'Nome F'#225'brica'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMarca'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Marca'
            Width = 199
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Desc. Material'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Preco'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecoFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Unit. F'#225'brica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalFabrica'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total F'#225'brica'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 467
        Width = 985
        Height = 191
        Align = alBottom
        TabOrder = 1
        object Label7: TLabel
          Left = 264
          Top = 145
          Width = 305
          Height = 13
          Caption = 'Notas que foram baixadas por Item do Pedido ===>>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 4
          Top = 99
          Width = 21
          Height = 15
          Brush.Color = clTeal
        end
        object Label9: TLabel
          Left = 27
          Top = 101
          Width = 42
          Height = 13
          Caption = 'Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape2: TShape
          Left = 84
          Top = 99
          Width = 21
          Height = 15
          Brush.Color = clAqua
        end
        object Label10: TLabel
          Left = 107
          Top = 101
          Width = 59
          Height = 13
          Caption = 'Lote Gerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape3: TShape
          Left = 180
          Top = 99
          Width = 21
          Height = 15
        end
        object Label11: TLabel
          Left = 203
          Top = 101
          Width = 45
          Height = 13
          Caption = 'Sem Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape4: TShape
          Left = 260
          Top = 99
          Width = 21
          Height = 15
          Brush.Color = clRed
        end
        object Label12: TLabel
          Left = 283
          Top = 101
          Width = 51
          Height = 13
          Caption = 'Cancelado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxDBGrid2: TRxDBGrid
          Left = 577
          Top = 96
          Width = 392
          Height = 95
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NumNota'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Nota'
              Width = 66
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ItemNota'
              Title.Alignment = taCenter
              Title.Caption = 'Item da Nota'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Tipo'
              Title.Alignment = taCenter
              Width = 28
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtNota'
              Title.Alignment = taCenter
              Title.Caption = 'Dt.Nota'
              Width = 68
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QtdPares'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade Faturada'
              Width = 111
              Visible = True
            end>
        end
        object VDBGrid1: TVDBGrid
          Left = 1
          Top = 1
          Width = 983
          Height = 94
          Align = alTop
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Vertical = True
          DefaultColWidth = 50
          TitlesWidth = 60
          OnCellClick = VDBGrid1CellClick
          OnColEnter = VDBGrid1ColEnter
          OnEnter = VDBGrid1ColEnter
          Columns = <
            item
              Alignment = taCenter
              Color = clGray
              FieldName = 'lkTamanho'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Tamanho'
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
              Title.Caption = 'Qtd.'
            end
            item
              Alignment = taCenter
              FieldName = 'QtdParesFat'
              Title.Alignment = taCenter
              Title.Caption = 'Entregue'
            end
            item
              Alignment = taCenter
              FieldName = 'QtdParesRest'
              Title.Alignment = taCenter
              Title.Caption = 'Pendente'
            end>
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 41
        Align = alTop
        Color = clSilver
        TabOrder = 2
        object BitBtn2: TBitBtn
          Left = 6
          Top = 10
          Width = 93
          Height = 29
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object BitBtn5: TBitBtn
          Left = 100
          Top = 10
          Width = 93
          Height = 29
          Caption = 'Materia-Prima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn5Click
        end
        object CheckBox1: TCheckBox
          Left = 415
          Top = 16
          Width = 82
          Height = 17
          Caption = 'Imp. grades'
          TabOrder = 2
        end
        object CheckBox2: TCheckBox
          Left = 519
          Top = 16
          Width = 82
          Height = 17
          Caption = 'Imp. notas'
          TabOrder = 3
        end
        object BitBtn4: TBitBtn
          Left = 193
          Top = 10
          Width = 93
          Height = 29
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn4Click
        end
        object BitBtn6: TBitBtn
          Left = 286
          Top = 10
          Width = 93
          Height = 29
          Caption = 'Cons. Tamanhos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn6Click
        end
      end
    end
  end
  object qConsulta: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Pedido, Dbpedido.PedidoCliente, Dbpedido.CodClie' +
        'nte, Dbcliente.Nome NomeCliente, Dbpedidoitem.Item, Dbpedidoitem' +
        '.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.QtdPares, Dbpedid' +
        'oitem.QtdParesFat, Dbpedidoitem.QtdParesRest, Dbpedidoitem.QtdPa' +
        'resCanc, Dbpedidoitem.NumOS, Dbpedidoitem.DtReprogramacao, Dbped' +
        'idoitem.Tamanho, Dbpedidoitem.Unidade, Dbpedido.Filial, Dbpedido' +
        'item.Largura, Dbpedidoitem.Plano, Dbpedidoitem.TalaoGerado, Dbpe' +
        'didoitem.CodGrade, Dbpedidoitem.Posicao, Dbpedido.DtEmissao, Dbc' +
        'liente.Fantasia,'
      
        '  Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbproduto.De' +
        'scMaterial, Dbpedidoitem.CodCombinacao, dbPedido.CodFabrica, Fab' +
        'rica.Nome NomeFabrica, Marca.Nome NomeMarca, dbPedidoItem.Preco,' +
        ' dbPedidoItem.VlrTotal, dbPedidoItem.PrecoFabrica, dbPedidoItem.' +
        'VlrTotalFabrica, dbPedidoItem.DtProducao, dbPedido.DtEmbarque Dt' +
        'EmbarquePed, dbPedido.DtProducao DtProducaoPed'
      'FROM "dbPedido.DB" Dbpedido'
      '   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem'
      '   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)'
      '   INNER JOIN "dbCliente.DB" Dbcliente'
      '   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)'
      '   LEFT JOIN "dbCliente.DB" Fabrica'
      '   ON  (Dbpedido.CodFabrica = Fabrica.Codigo)'
      '   LEFT JOIN "dbCliente.DB" Marca'
      '   ON  (Dbpedido.CodRepresentada = Marca.Codigo)'
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 336
    Top = 208
    object qConsultaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qConsultaPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qConsultaCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qConsultaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object qConsultaItem: TIntegerField
      FieldName = 'Item'
    end
    object qConsultaCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qConsultaCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qConsultaQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object qConsultaQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object qConsultaQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qConsultaQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object qConsultaNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object qConsultaDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object qConsultaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object qConsultaUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qConsultalkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object qConsultaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qConsultalkNomeFilial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeFilial'
      LookupDataSet = DM1.tFilial2
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Empresa'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object qConsultaLargura: TStringField
      FieldName = 'Largura'
      Size = 2
    end
    object qConsultaPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object qConsultaTalaoGerado: TBooleanField
      FieldName = 'TalaoGerado'
    end
    object qConsultaCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object qConsultaPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object qConsultaDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qConsultaFantasia: TStringField
      FieldName = 'Fantasia'
    end
    object qConsultaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qConsultaDescMaterial: TStringField
      FieldName = 'DescMaterial'
      Size = 50
    end
    object qConsultaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object qConsultaCodCombinacao: TIntegerField
      FieldName = 'CodCombinacao'
    end
    object qConsultaCodFabrica: TIntegerField
      FieldName = 'CodFabrica'
    end
    object qConsultaNomeFabrica: TStringField
      FieldName = 'NomeFabrica'
      Size = 60
    end
    object qConsultaNomeMarca: TStringField
      FieldName = 'NomeMarca'
      Size = 60
    end
    object qConsultaPreco: TFloatField
      FieldName = 'Preco'
    end
    object qConsultaVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object qConsultaPrecoFabrica: TFloatField
      FieldName = 'PrecoFabrica'
    end
    object qConsultaVlrTotalFabrica: TFloatField
      FieldName = 'VlrTotalFabrica'
    end
    object qConsultaDtProducao: TDateField
      FieldName = 'DtProducao'
    end
    object qConsultaDtEmbarquePed: TDateField
      FieldName = 'DtEmbarquePed'
    end
    object qConsultaDtProducaoPed: TDateField
      FieldName = 'DtProducaoPed'
    end
  end
  object dsqConsulta: TDataSource
    DataSet = qConsulta
    Left = 352
    Top = 208
  end
  object tPedidoNota: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido;Item'
    MasterFields = 'Pedido;Item'
    MasterSource = dsqConsulta
    TableName = 'dbPedidoNota.DB'
    Left = 448
    Top = 472
    object tPedidoNotaPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoNotaItem: TIntegerField
      FieldName = 'Item'
    end
    object tPedidoNotaNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tPedidoNotaItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object tPedidoNotaTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object tPedidoNotaDtNota: TDateField
      FieldName = 'DtNota'
    end
    object tPedidoNotaQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object tPedidoNotaNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
    end
    object tPedidoNotaNroLancExtComissaoMod: TIntegerField
      FieldName = 'NroLancExtComissaoMod'
    end
  end
  object dsPedidoNota: TDataSource
    DataSet = tPedidoNota
    Left = 472
    Top = 472
  end
  object tPedidoGrade: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido;ItemPed'
    MasterFields = 'Pedido;Item'
    MasterSource = dsqConsulta
    TableName = 'DBPEDIDOGRADE.DB'
    Left = 368
    Top = 392
    object tPedidoGradePedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoGradeItemPed: TIntegerField
      FieldName = 'ItemPed'
    end
    object tPedidoGradeCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tPedidoGradePosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tPedidoGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tPedidoGradeVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object tPedidoGradeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tPedidoGradeQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object tPedidoGradeQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object tPedidoGradeQtdParesAut: TFloatField
      FieldName = 'QtdParesAut'
    end
    object tPedidoGradeQtdParesMan: TFloatField
      FieldName = 'QtdParesMan'
    end
    object tPedidoGradeCodProdutoCli: TStringField
      FieldName = 'CodProdutoCli'
      Size = 15
    end
    object tPedidoGradelkTamanho: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTamanho'
      LookupDataSet = DM1.tGradeItemlk
      LookupKeyFields = 'CodGrade;Posicao'
      LookupResultField = 'Tamanho'
      KeyFields = 'CodGrade;Posicao'
      Size = 6
      Lookup = True
    end
  end
  object dsPedidoGrade: TDataSource
    DataSet = tPedidoGrade
    Left = 384
    Top = 392
  end
  object mResumo: TClientDataSet
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
        Name = 'NomeProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QtdTotal'
        DataType = ftFloat
      end
      item
        Name = 'QtdFaturada'
        DataType = ftFloat
      end
      item
        Name = 'PercRestante'
        DataType = ftFloat
      end
      item
        Name = 'QtdRestante'
        DataType = ftFloat
      end
      item
        Name = 'NomeCor'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CodCor'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NumOS'
    Params = <>
    StoreDefs = True
    Left = 552
    Top = 352
    Data = {
      150100009619E0BD01000000180000000A00000000000300000015010A436F64
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000B4E6F6D6550726F6475746F010049000000
      0100055749445448020002002800054E756D4F53010049000000010005574944
      5448020002001E0008517464546F74616C08000400000000000B517464466174
      757261646108000400000000000C5065726352657374616E7465080004000000
      00000B51746452657374616E74650800040000000000074E6F6D65436F720100
      49000000010005574944544802000200190006436F64436F7204000100000000
      0001000D44454641554C545F4F524445520200820000000000}
    object mResumoCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object mResumoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mResumoNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 40
    end
    object mResumoNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mResumoQtdTotal: TFloatField
      FieldName = 'QtdTotal'
      DisplayFormat = '0.###'
    end
    object mResumoQtdFaturada: TFloatField
      FieldName = 'QtdFaturada'
      DisplayFormat = '0.###'
    end
    object mResumoPercRestante: TFloatField
      FieldName = 'PercRestante'
      DisplayFormat = '0.##'
    end
    object mResumoQtdRestante: TFloatField
      FieldName = 'QtdRestante'
      DisplayFormat = '0.###'
    end
    object mResumoNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 25
    end
    object mResumoCodCor: TIntegerField
      FieldName = 'CodCor'
    end
  end
  object dsmResumo: TDataSource
    DataSet = mResumo
    Left = 568
    Top = 352
  end
end
