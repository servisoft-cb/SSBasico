object fConsHistCliente: TfConsHistCliente
  Left = 53
  Top = 28
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico do Cliente'
  ClientHeight = 547
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 4
    Top = 31
    Width = 46
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 333
    Top = 31
    Width = 52
    Height = 13
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel3: TRxLabel
    Left = 487
    Top = 31
    Width = 10
    Height = 13
    Caption = 'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel7: TRxLabel
    Left = 17
    Top = 7
    Width = 33
    Height = 13
    Caption = 'Filial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 48
    Top = 23
    Width = 281
    Height = 21
    DropDownCount = 8
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = DM1.dsCliente
    TabOrder = 1
    OnChange = RxDBLookupCombo1Change
    OnEnter = RxDBLookupCombo1Enter
  end
  object DBEdit3: TDBEdit
    Left = 416
    Top = 44
    Width = 195
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 326
    Top = 44
    Width = 60
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'Cep'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 9
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 44
    Width = 279
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'Endereco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 611
    Top = 44
    Width = 168
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'lkCidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 386
    Top = 44
    Width = 26
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'Uf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 68
    Width = 777
    Height = 481
    ActivePage = TabSheet4
    Style = tsButtons
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'Or'#231'amentos'
      object Label2: TLabel
        Left = 6
        Top = -2
        Width = 380
        Height = 13
        Caption = 
          'Or'#231'amentos------------------------------------------------------' +
          '------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 2
        Top = 223
        Width = 407
        Height = 13
        Caption = 
          'Itens (Produtos) -----------------------------------------------' +
          '-------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ALed2: TALed
        Left = 434
        Top = -2
        Width = 16
        Height = 16
        FalseColor = clTeal
      end
      object Label33: TLabel
        Left = 454
        Top = 1
        Width = 46
        Height = 13
        Caption = 'Aprovado'
      end
      object ALed1: TALed
        Left = 632
        Top = -2
        Width = 16
        Height = 16
        FalseColor = clRed
      end
      object Label12: TLabel
        Left = 652
        Top = 1
        Width = 68
        Height = 13
        Caption = 'N'#227'o aprovado'
      end
      object Label15: TLabel
        Left = 0
        Top = 427
        Width = 113
        Height = 13
        Caption = 'Motivo (N'#227'o Aprovado):'
      end
      object ALed10: TALed
        Left = 522
        Top = -2
        Width = 16
        Height = 16
        FalseColor = clAqua
      end
      object Label19: TLabel
        Left = 542
        Top = 1
        Width = 81
        Height = 13
        Caption = 'Aprovado Parcial'
      end
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Top = 16
        Width = 768
        Height = 204
        Color = clInfoBk
        DataSource = dsqOrcamento
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = RxDBGrid1GetCellParams
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumOrcamento'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Or'#231'amento'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeContato'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Contato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone'
            Title.Alignment = taCenter
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMail'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Vendedor'
            Visible = True
          end>
      end
      object RxDBGrid2: TRxDBGrid
        Left = -1
        Top = 237
        Width = 770
        Height = 183
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = RxDBGrid2GetCellParams
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Prod.'
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 292
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrUnitario'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Width = 41
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtAprovado'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Aprovado'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PrazoEntrega'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo Entrega'
            Visible = True
          end>
      end
      object DBEdit6: TDBEdit
        Left = 116
        Top = 422
        Width = 653
        Height = 21
        Color = clInfoBk
        DataField = 'MotivoNaoAprov'
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pedidos'
      ImageIndex = 1
      object Label1: TLabel
        Left = 6
        Top = -2
        Width = 362
        Height = 13
        Caption = 
          'Pedidos --------------------------------------------------------' +
          '----------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 256
        Width = 407
        Height = 13
        Caption = 
          'Itens (Produtos) -----------------------------------------------' +
          '-------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ALed11: TALed
        Left = 7
        Top = 15
        Width = 16
        Height = 16
        FalseColor = clTeal
      end
      object Label20: TLabel
        Left = 27
        Top = 18
        Width = 51
        Height = 13
        Caption = 'Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ALed12: TALed
        Left = 101
        Top = 15
        Width = 16
        Height = 16
        FalseColor = clRed
      end
      object Label21: TLabel
        Left = 121
        Top = 18
        Width = 61
        Height = 13
        Caption = 'Cancelado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel6: TRxLabel
        Left = 400
        Top = 8
        Width = 107
        Height = 13
        Caption = 'N'#186' Pedido Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBGrid3: TRxDBGrid
        Left = -1
        Top = 32
        Width = 770
        Height = 221
        Color = clInfoBk
        DataSource = dsqPedido
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = RxDBGrid3GetCellParams
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PedidoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Ped.Cliente (OC)'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Ped.Interno'
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Vendedor'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercComissao'
            Title.Alignment = taCenter
            Title.Caption = '% Com.'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Faturado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cancelado'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCliente'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cli'
            Width = 61
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtCad'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Cadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrCad'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Cadastro'
            Visible = True
          end>
      end
      object RxDBGrid4: TRxDBGrid
        Left = 1
        Top = 270
        Width = 768
        Height = 180
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = RxDBGrid4GetCellParams
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 26
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Prod.'
            Width = 51
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkReferencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 175
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Title.Caption = 'Tam'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdPares'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdParesFat'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Faturada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdParesRest'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Restante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdParesCanc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.Cancelado'
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
            Title.Caption = 'Vlr.Total'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmbarque'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Entregue'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercComissao'
            Title.Alignment = taCenter
            Title.Caption = '%Com.'
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ProducaoVenda'
            Title.Alignment = taCenter
            Title.Caption = 'Prod./Venda'
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 506
        Top = 0
        Width = 191
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit1Change
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Notas Fiscais'
      ImageIndex = 2
      object Label7: TLabel
        Left = 6
        Top = -2
        Width = 381
        Height = 13
        Caption = 
          'Nota Fiscal ----------------------------------------------------' +
          '--------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 2
        Top = 212
        Width = 407
        Height = 13
        Caption = 
          'Itens (Produtos) -----------------------------------------------' +
          '-------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ALed6: TALed
        Left = 408
        Top = -1
        Width = 16
        Height = 16
        FalseColor = clRed
      end
      object Label10: TLabel
        Left = 428
        Top = 2
        Width = 51
        Height = 13
        Caption = 'Cancelado'
      end
      object RxDBGrid5: TRxDBGrid
        Left = 0
        Top = 16
        Width = 769
        Height = 193
        Color = clInfoBk
        DataSource = dsqNotaFiscal
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = RxDBGrid5GetCellParams
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumNota'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtEmissao'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Vendedor'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalDupl'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Duplicatas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalItens'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Mercadoria'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BaseIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIpi'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotalDesc'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrSeguro'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Seguro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrFrete'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Frete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OutrasDesp'
            Title.Alignment = taCenter
            Title.Caption = 'Outras Desp.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PesoBruto'
            Title.Alignment = taCenter
            Title.Caption = 'P.Bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PesoLiquido'
            Title.Alignment = taCenter
            Title.Caption = 'P.L'#237'quido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodVendedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtCad'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Cadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HrCad'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Cadastro'
            Visible = True
          end>
      end
      object RxDBGrid6: TRxDBGrid
        Left = -1
        Top = 226
        Width = 770
        Height = 193
        Color = clInfoBk
        ReadOnly = True
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
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 24
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkCodNatOper'
            Title.Alignment = taCenter
            Title.Caption = 'Nat.Oper.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodProduto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Prod.'
            Width = 48
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
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Produto'
            Width = 213
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeCor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome da Cor'
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tamanho'
            Title.Alignment = taCenter
            Title.Caption = 'Tam.'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercComissao'
            Title.Alignment = taCenter
            Title.Caption = '%Com.'
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 59
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'VlrUnit'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrTotal'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Total'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ClasFiscal'
            Title.Alignment = taCenter
            Title.Caption = 'Clas.Fiscal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Icms'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ipi'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkCodSit'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Sit.Trib.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumOC'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Title.Alignment = taCenter
            Title.Caption = '%Desc.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrDesconto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BaseIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIcms'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VlrIpi'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodCor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Estoque'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SitTrib'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Int.Sit.Tribut'#225'ria'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Contas a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      OnShow = TabSheet4Show
      object Label9: TLabel
        Left = 8
        Top = 376
        Width = 3
        Height = 13
      end
      object RxLabel4: TRxLabel
        Left = 1
        Top = 12
        Width = 52
        Height = 13
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 155
        Top = 12
        Width = 10
        Height = 13
        Caption = 'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PageControl2: TPageControl
        Left = 5
        Top = 48
        Width = 756
        Height = 397
        ActivePage = TabSheet10
        Style = tsButtons
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = 'Pagas'
          object ALed3: TALed
            Left = 522
            Top = -1
            Width = 16
            Height = 16
            FalseColor = clAqua
          end
          object Label5: TLabel
            Left = 542
            Top = 2
            Width = 52
            Height = 13
            Caption = 'Devolu'#231#227'o'
          end
          object RxDBGrid7: TRxDBGrid
            Left = 2
            Top = 16
            Width = 745
            Height = 345
            Color = clInfoBk
            DataSource = dsqCReceberPagas
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = RxDBGrid7GetCellParams
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumNota'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota'
                Width = 56
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ParcCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Parcela'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrParcCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Parcela'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrUltPgto'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Pagamento'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtUltPgto'
                Title.Alignment = taCenter
                Title.Caption = 'Dt.Pagamento'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtVencCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Dt.Vencimento'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Lan'#231'amento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Historico'
                Title.Alignment = taCenter
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end>
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Parcelas'
          ImageIndex = 1
          object ALed5: TALed
            Left = 186
            Top = -1
            Width = 16
            Height = 16
            FalseColor = clTeal
          end
          object Label11: TLabel
            Left = 206
            Top = 2
            Width = 37
            Height = 13
            Caption = 'Quitado'
          end
          object ALed8: TALed
            Left = 256
            Top = -1
            Width = 16
            Height = 16
            FalseColor = clRed
          end
          object Label14: TLabel
            Left = 276
            Top = 2
            Width = 48
            Height = 13
            Caption = 'Em Atraso'
          end
          object ALed9: TALed
            Left = 331
            Top = -1
            Width = 16
            Height = 16
            FalseColor = 12615935
          end
          object Label16: TLabel
            Left = 351
            Top = 2
            Width = 51
            Height = 13
            Caption = 'Cancelado'
          end
          object RxDBGrid9: TRxDBGrid
            Left = 2
            Top = 16
            Width = 745
            Height = 348
            Color = clInfoBk
            DataSource = dsqCReceber
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = RxDBGrid9GetCellParams
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumNota'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota'
                Width = 54
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtGerado'
                Title.Alignment = taCenter
                Title.Caption = 'Dt.Emiss'#227'o'
                Width = 65
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ParcCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Parcela'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrParcCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Parcela'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtPagParcCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Dt.'#218'ltimo Pagto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PgtoParcial'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Pago'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RestParcela'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.em Aberto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumTitBanco'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' T'#237'tulo Banco'
                Width = 114
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtVencCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Dt.Vencimento'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Lan'#231'amento'
                Visible = True
              end>
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Outras Informa'#231#245'es'
          ImageIndex = 2
          object Label24: TLabel
            Left = 8
            Top = 34
            Width = 76
            Height = 13
            Caption = 'Dt.Maior Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 184
            Top = 34
            Width = 106
            Height = 13
            Caption = 'Qtd.Dias Maior Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 368
            Top = 34
            Width = 92
            Height = 13
            Caption = 'Vlr.do Maior Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 569
            Top = 34
            Width = 129
            Height = 13
            Caption = 'Qtd.Parc.Pagas Em Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 8
            Top = 58
            Width = 118
            Height = 13
            Caption = 'N'#186' da Nota Maior Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 280
            Top = 58
            Width = 121
            Height = 13
            Caption = 'M'#233'dia de Dias em Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel2: TBevel
            Left = -23
            Top = 73
            Width = 771
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object Label30: TLabel
            Left = 28
            Top = 90
            Width = 42
            Height = 13
            Caption = 'Vlr.Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 185
            Top = 90
            Width = 71
            Height = 13
            Caption = 'Vlr.Abatimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 364
            Top = 90
            Width = 66
            Height = 13
            Caption = 'Vlr.em Aberto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 548
            Top = 90
            Width = 99
            Height = 13
            Caption = 'Vlr.Aberto em Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 4
            Top = 113
            Width = 66
            Height = 13
            Caption = 'Vlr.Devolvido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 187
            Top = 113
            Width = 69
            Height = 13
            Caption = 'Vlr.Cancelado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 387
            Top = 113
            Width = 43
            Height = 13
            Caption = 'Vlr.Pago:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 554
            Top = 113
            Width = 93
            Height = 13
            Caption = 'Vlr.Pago em Atraso:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel3: TBevel
            Left = 1
            Top = 134
            Width = 748
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object Label37: TLabel
            Left = 4
            Top = 151
            Width = 77
            Height = 13
            Caption = 'Vlr.Maior Fatura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 217
            Top = 151
            Width = 76
            Height = 13
            Caption = 'Dt.Maior Fatura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 412
            Top = 151
            Width = 103
            Height = 13
            Caption = 'N'#186' Nota Maior Fatura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DateEdit5: TDateEdit
            Left = 87
            Top = 26
            Width = 94
            Height = 21
            NumGlyphs = 2
            ReadOnly = True
            TabOrder = 0
          end
          object CurrencyEdit9: TCurrencyEdit
            Left = 293
            Top = 26
            Width = 57
            Height = 21
            AutoSize = False
            DisplayFormat = '0'
            ReadOnly = True
            TabOrder = 1
          end
          object CurrencyEdit12: TCurrencyEdit
            Left = 464
            Top = 26
            Width = 97
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 2
          end
          object CurrencyEdit11: TCurrencyEdit
            Left = 700
            Top = 26
            Width = 46
            Height = 21
            AutoSize = False
            DisplayFormat = '0'
            ReadOnly = True
            TabOrder = 3
          end
          object CurrencyEdit15: TCurrencyEdit
            Left = 128
            Top = 50
            Width = 73
            Height = 21
            AutoSize = False
            DisplayFormat = '0'
            ReadOnly = True
            TabOrder = 4
          end
          object CurrencyEdit16: TCurrencyEdit
            Left = 202
            Top = 50
            Width = 29
            Height = 21
            AutoSize = False
            DisplayFormat = '0'
            ReadOnly = True
            TabOrder = 5
          end
          object CurrencyEdit17: TCurrencyEdit
            Left = 403
            Top = 50
            Width = 62
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00'
            ReadOnly = True
            TabOrder = 6
          end
          object CurrencyEdit14: TCurrencyEdit
            Left = 72
            Top = 82
            Width = 109
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 7
          end
          object CurrencyEdit21: TCurrencyEdit
            Left = 257
            Top = 82
            Width = 104
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 8
          end
          object CurrencyEdit10: TCurrencyEdit
            Left = 430
            Top = 82
            Width = 117
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 9
          end
          object CurrencyEdit13: TCurrencyEdit
            Left = 648
            Top = 82
            Width = 99
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 10
          end
          object CurrencyEdit20: TCurrencyEdit
            Left = 72
            Top = 105
            Width = 109
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 11
          end
          object CurrencyEdit24: TCurrencyEdit
            Left = 257
            Top = 105
            Width = 104
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 12
          end
          object CurrencyEdit18: TCurrencyEdit
            Left = 430
            Top = 105
            Width = 117
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 13
          end
          object CurrencyEdit19: TCurrencyEdit
            Left = 648
            Top = 105
            Width = 99
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 14
          end
          object CurrencyEdit22: TCurrencyEdit
            Left = 82
            Top = 143
            Width = 114
            Height = 21
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            ReadOnly = True
            TabOrder = 15
          end
          object DateEdit6: TDateEdit
            Left = 296
            Top = 143
            Width = 94
            Height = 21
            NumGlyphs = 2
            ReadOnly = True
            TabOrder = 16
          end
          object CurrencyEdit23: TCurrencyEdit
            Left = 517
            Top = 143
            Width = 91
            Height = 21
            AutoSize = False
            DisplayFormat = '0'
            ReadOnly = True
            TabOrder = 17
          end
        end
      end
      object DateEdit3: TDateEdit
        Left = 53
        Top = 4
        Width = 96
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object DateEdit4: TDateEdit
        Left = 173
        Top = 4
        Width = 96
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 272
        Top = 2
        Width = 119
        Height = 23
        Hint = 'Abre a consulta'
        Caption = '&Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000070000000007777777000000070FFFFFFF07777700000000070F7
          7777F07777000000000070F77777F07770007000000070F77780008700077000
          000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
          08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
          EFEFFF0770777000000077780000000708777000000077770077777807777000
          0000777770077700777770000000777777800087777770000000777777777777
          777770000000}
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 4
      object PageControl3: TPageControl
        Left = 0
        Top = 31
        Width = 769
        Height = 419
        ActivePage = TabSheet11
        Align = alBottom
        Style = tsButtons
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = 'Cancelado'
          object Label18: TLabel
            Left = 6
            Top = 6
            Width = 379
            Height = 13
            Caption = 
              'Acumulado ------------------------------------------------------' +
              '------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxDBGrid10: TRxDBGrid
            Left = 1
            Top = 18
            Width = 758
            Height = 350
            Color = clInfoBk
            DataSource = dsqProdutoCancelado
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = RxDBGrid10DblClick
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CodProduto'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Prod.'
                Width = 51
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'lkReferencia'
                Title.Alignment = taCenter
                Title.Caption = 'Refer'#234'ncia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomeProduto'
                Title.Alignment = taCenter
                Title.Caption = 'Nome do Produto'
                Width = 272
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
                FieldName = 'CodCor'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Cor'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomeCor'
                Title.Alignment = taCenter
                Title.Caption = 'Nome da Cor'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Qtd'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Width = 79
                Visible = True
              end>
          end
          object StaticText1: TStaticText
            Left = 0
            Top = 371
            Width = 275
            Height = 17
            Align = alBottom
            BorderStyle = sbsSunken
            Caption = 'Duplo clique para detalhar o produto cancelado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Faturado'
          ImageIndex = 1
          object Label17: TLabel
            Left = 6
            Top = 6
            Width = 379
            Height = 13
            Caption = 
              'Acumulado ------------------------------------------------------' +
              '------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RxDBGrid8: TRxDBGrid
            Left = 1
            Top = 18
            Width = 759
            Height = 350
            Color = clInfoBk
            DataSource = dsqProdutoFaturado
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = RxDBGrid8DblClick
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CodProduto'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Prod.'
                Width = 47
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'lkReferencia'
                Title.Alignment = taCenter
                Title.Caption = 'Refer'#234'ncia'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomeProduto'
                Title.Alignment = taCenter
                Title.Caption = 'Nome do Produto'
                Width = 231
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
                FieldName = 'Unidade'
                Title.Alignment = taCenter
                Title.Caption = 'Unid.'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Qtd'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomeCor'
                Title.Alignment = taCenter
                Title.Caption = 'Nome da Cor'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrTotal'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrIcms'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.ICMS'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrIpi'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.IPI'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CodCor'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd.Cor'
                Visible = True
              end>
          end
          object StaticText2: TStaticText
            Left = 0
            Top = 371
            Width = 263
            Height = 17
            Align = alBottom
            BorderStyle = sbsSunken
            Caption = 'Duplo clique para detalhar o produto faturado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Pendentes'
          ImageIndex = 2
          object PageControl4: TPageControl
            Left = 0
            Top = 0
            Width = 761
            Height = 384
            ActivePage = TabSheet12
            Style = tsButtons
            TabOrder = 0
            object TabSheet12: TTabSheet
              Caption = 'Acumulado'
              object RxDBGrid11: TRxDBGrid
                Left = 1
                Top = 1
                Width = 752
                Height = 348
                Color = clInfoBk
                DataSource = dsqProdutoPendente
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = RxDBGrid8DblClick
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'CodProduto'
                    Title.Alignment = taCenter
                    Title.Caption = 'C'#243'd.Prod.'
                    Width = 52
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Referencia'
                    Title.Alignment = taCenter
                    Title.Caption = 'Refer'#234'ncia'
                    Width = 168
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Tamanho'
                    Title.Alignment = taCenter
                    Title.Caption = 'Tam.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Nome'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome do Produto'
                    Width = 257
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
                    Expanded = False
                    FieldName = 'QtdParesRest'
                    Title.Alignment = taCenter
                    Title.Caption = 'Quantidade'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Unidade'
                    Title.Alignment = taCenter
                    Visible = True
                  end>
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'Detalhado'
              ImageIndex = 1
              object RxDBGrid12: TRxDBGrid
                Left = 1
                Top = 1
                Width = 752
                Height = 348
                Color = clInfoBk
                DataSource = dsqProdutoPendDet
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = RxDBGrid8DblClick
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'DtEmbarque'
                    Title.Alignment = taCenter
                    Title.Caption = 'Dt.Entrega'
                    Width = 61
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'PedidoCliente'
                    Title.Alignment = taCenter
                    Title.Caption = 'Ped.Cliente'
                    Width = 78
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Pedido'
                    Title.Alignment = taCenter
                    Title.Caption = 'Ped.Interno'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'CodProduto'
                    Title.Alignment = taCenter
                    Title.Caption = 'C'#243'd.Prod.'
                    Width = 48
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Referencia'
                    Title.Alignment = taCenter
                    Title.Caption = 'Refer'#234'ncia'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Nome'
                    Title.Caption = 'Nome do Produto'
                    Width = 153
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Tamanho'
                    Title.Alignment = taCenter
                    Title.Caption = 'Tam.'
                    Width = 35
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'lkNomeCor'
                    Title.Alignment = taCenter
                    Title.Caption = 'Cor'
                    Width = 72
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
                    FieldName = 'QtdParesRest'
                    Title.Alignment = taCenter
                    Title.Caption = 'Quantidade'
                    Visible = True
                  end>
              end
            end
          end
        end
      end
      object BitBtn2: TBitBtn
        Left = 8
        Top = 2
        Width = 119
        Height = 23
        Hint = 'Abre a consulta'
        Caption = '&Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000070000000007777777000000070FFFFFFF07777700000000070F7
          7777F07777000000000070F77777F07770007000000070F77780008700077000
          000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
          08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
          EFEFFF0770777000000077780000000708777000000077770077777807777000
          0000777770077700777770000000777777800087777770000000777777777777
          777770000000}
      end
      object BitBtn6: TBitBtn
        Left = 135
        Top = 2
        Width = 119
        Height = 23
        Hint = 'Imprime o relat'#243'rio cfe. sele'#231#227'o acima'
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
    end
  end
  object DateEdit1: TDateEdit
    Left = 385
    Top = 23
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 8
  end
  object DateEdit2: TDateEdit
    Left = 505
    Top = 23
    Width = 96
    Height = 21
    NumGlyphs = 2
    TabOrder = 9
  end
  object BitBtn3: TBitBtn
    Left = 659
    Top = 12
    Width = 119
    Height = 30
    Hint = 'Abre a consulta'
    Caption = '&Consultar  [F5]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitBtn3Click
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000070000000007777777000000070FFFFFFF07777700000000070F7
      7777F07777000000000070F77777F07770007000000070F77780008700077000
      000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
      08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
      EFEFFF0770777000000077780000000708777000000077770077777807777000
      0000777770077700777770000000777777800087777770000000777777777777
      777770000000}
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 48
    Top = 1
    Width = 281
    Height = 21
    DropDownCount = 8
    DropDownWidth = 600
    LookupField = 'Codigo'
    LookupDisplay = 'NomeInterno;Empresa'
    LookupSource = DM1.dsFilial
    TabOrder = 0
  end
  object qOrcamento: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Filial, NumOrcamento, Data, CodCliente, NomeCliente, Nome' +
        'Contato, CodVendedor, EMail, Aprovado'
      'FROM "dbOrcamento.DB" Dborcamento')
    Left = 76
    Top = 355
    object qOrcamentoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbOrcamento.DB".Filial'
    end
    object qOrcamentoNumOrcamento: TIntegerField
      FieldName = 'NumOrcamento'
      Origin = 'TABELAS."dbOrcamento.DB".NumOrcamento'
    end
    object qOrcamentoData: TDateField
      FieldName = 'Data'
      Origin = 'TABELAS."dbOrcamento.DB".Data'
    end
    object qOrcamentoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbOrcamento.DB".CodCliente'
    end
    object qOrcamentoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Origin = 'TABELAS."dbOrcamento.DB".NomeCliente'
      Size = 40
    end
    object qOrcamentoNomeContato: TStringField
      FieldName = 'NomeContato'
      Origin = 'TABELAS."dbOrcamento.DB".NomeContato'
      Size = 30
    end
    object qOrcamentoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbOrcamento.DB".CodVendedor'
    end
    object qOrcamentoEMail: TStringField
      FieldName = 'EMail'
      Origin = 'TABELAS."dbOrcamento.DB".EMail'
      Size = 50
    end
    object qOrcamentoAprovado: TStringField
      FieldName = 'Aprovado'
      Origin = 'TABELAS."dbOrcamento.DB".Aprovado'
      Size = 1
    end
    object qOrcamentolkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
  end
  object dsqOrcamento: TDataSource
    DataSet = qOrcamento
    Left = 92
    Top = 355
  end
  object tOrcamentoItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumOrcamento'
    MasterFields = 'Filial;NumOrcamento'
    MasterSource = dsqOrcamento
    TableName = 'dbOrcamentoItens.DB'
    Left = 76
    Top = 379
    object tOrcamentoItensFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tOrcamentoItensNumOrcamento: TIntegerField
      FieldName = 'NumOrcamento'
    end
    object tOrcamentoItensItem: TIntegerField
      FieldName = 'Item'
    end
    object tOrcamentoItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tOrcamentoItensNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 80
    end
    object tOrcamentoItensVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      DisplayFormat = '###,###,##0.000'
    end
    object tOrcamentoItensComMatriz: TBooleanField
      FieldName = 'ComMatriz'
    end
    object tOrcamentoItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tOrcamentoItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object tOrcamentoItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tOrcamentoItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tOrcamentoItensCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tOrcamentoItensAprovado: TStringField
      FieldName = 'Aprovado'
      Size = 1
    end
    object tOrcamentoItensMotivoNaoAprov: TStringField
      FieldName = 'MotivoNaoAprov'
      Size = 70
    end
    object tOrcamentoItensDtAprovado: TDateField
      FieldName = 'DtAprovado'
    end
    object tOrcamentoItensProdutoNCad: TBooleanField
      FieldName = 'ProdutoNCad'
    end
  end
  object dsOrcamentoItens: TDataSource
    DataSet = tOrcamentoItens
    Left = 92
    Top = 379
  end
  object qPedido: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Filial, Pedido, DtEmissao, CodCliente, CodVendedor, PercC' +
        'omissao, CodNatOper, QtdPares, QtdParesCanc, QtdParesFat, QtdPar' +
        'esRest, PedidoCliente, Usuario, DtCad, HrCad, Cancelado'
      'FROM "dbPedido.DB" Dbpedido')
    Left = 156
    Top = 355
    object qPedidoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbPedido.DB".Filial'
    end
    object qPedidoPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbPedido.DB".Pedido'
    end
    object qPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbPedido.DB".DtEmissao'
    end
    object qPedidoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbPedido.DB".CodVendedor'
    end
    object qPedidoPercComissao: TFloatField
      FieldName = 'PercComissao'
      Origin = 'TABELAS."dbPedido.DB".PercComissao'
    end
    object qPedidoCodNatOper: TIntegerField
      FieldName = 'CodNatOper'
      Origin = 'TABELAS."dbPedido.DB".CodNatOper'
    end
    object qPedidoQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedido.DB".QtdPares'
    end
    object qPedidoQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
      Origin = 'TABELAS."dbPedido.DB".QtdParesCanc'
    end
    object qPedidoQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
      Origin = 'TABELAS."dbPedido.DB".QtdParesFat'
    end
    object qPedidoQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedido.DB".QtdParesRest'
    end
    object qPedidoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
      Origin = 'TABELAS."dbPedido.DB".PedidoCliente'
    end
    object qPedidoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'TABELAS."dbPedido.DB".Usuario'
      Size = 15
    end
    object qPedidoDtCad: TDateField
      FieldName = 'DtCad'
      Origin = 'TABELAS."dbPedido.DB".DtCad'
    end
    object qPedidoHrCad: TTimeField
      FieldName = 'HrCad'
      Origin = 'TABELAS."dbPedido.DB".HrCad'
    end
    object qPedidolkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
    object qPedidoCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'TABELAS."dbPedido.DB".Cancelado'
    end
  end
  object dsqPedido: TDataSource
    DataSet = qPedido
    Left = 172
    Top = 355
  end
  object tPedidoItem: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Pedido'
    MasterFields = 'Pedido'
    MasterSource = dsqPedido
    TableName = 'dbPedidoItem.DB'
    Left = 156
    Top = 379
    object tPedidoItemPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object tPedidoItemItem: TIntegerField
      FieldName = 'Item'
    end
    object tPedidoItemCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tPedidoItemCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tPedidoItemCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tPedidoItemQtdPares: TFloatField
      FieldName = 'QtdPares'
    end
    object tPedidoItemQtdParesFat: TFloatField
      FieldName = 'QtdParesFat'
    end
    object tPedidoItemQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object tPedidoItemPreco: TFloatField
      FieldName = 'Preco'
    end
    object tPedidoItemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object tPedidoItemCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tPedidoItemCopiado: TBooleanField
      FieldName = 'Copiado'
    end
    object tPedidoItemQtdParesCanc: TFloatField
      FieldName = 'QtdParesCanc'
    end
    object tPedidoItemVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
    end
    object tPedidoItemSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tPedidoItemQtdFatAut: TFloatField
      FieldName = 'QtdFatAut'
    end
    object tPedidoItemQtdFatMan: TFloatField
      FieldName = 'QtdFatMan'
    end
    object tPedidoItemReposicao: TBooleanField
      FieldName = 'Reposicao'
    end
    object tPedidoItemObsLote: TStringField
      FieldName = 'ObsLote'
      Size = 120
    end
    object tPedidoItemNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tPedidoItemDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
    end
    object tPedidoItemCodCia: TIntegerField
      FieldName = 'CodCia'
    end
    object tPedidoItemDtReprogramacao: TDateField
      FieldName = 'DtReprogramacao'
    end
    object tPedidoItemReprogramacao: TBooleanField
      FieldName = 'Reprogramacao'
    end
    object tPedidoItemDtBaixa: TDateField
      FieldName = 'DtBaixa'
    end
    object tPedidoItemHrBaixa: TTimeField
      FieldName = 'HrBaixa'
    end
    object tPedidoItemFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object tPedidoItemQtdLote: TFloatField
      FieldName = 'QtdLote'
    end
    object tPedidoItemCodProdutoCli: TStringField
      FieldName = 'CodProdutoCli'
      Size = 15
    end
    object tPedidoItemProdCliPorTamanho: TBooleanField
      FieldName = 'ProdCliPorTamanho'
    end
    object tPedidoItemProducaoVenda: TStringField
      FieldName = 'ProducaoVenda'
      Size = 1
    end
    object tPedidoItemPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tPedidoItemTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 6
    end
    object tPedidoItemPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tPedidoItemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tPedidoItemTalaoGerado: TBooleanField
      FieldName = 'TalaoGerado'
    end
    object tPedidoItemPercComissao2: TFloatField
      FieldName = 'PercComissao2'
    end
    object tPedidoItemObsTalao: TStringField
      FieldName = 'ObsTalao'
      Size = 40
    end
    object tPedidoItemLargura: TStringField
      FieldName = 'Largura'
      Size = 8
    end
    object tPedidoItemMateriaPrima: TBooleanField
      FieldName = 'MateriaPrima'
    end
    object tPedidoItemAmostraEntregue: TBooleanField
      FieldName = 'AmostraEntregue'
    end
    object tPedidoItemDtEntregaAmostra: TDateField
      FieldName = 'DtEntregaAmostra'
    end
    object tPedidoItemHrEntregaAmostra: TTimeField
      FieldName = 'HrEntregaAmostra'
    end
    object tPedidoItemPlano: TStringField
      FieldName = 'Plano'
      Size = 30
    end
    object tPedidoItemlkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodProduto'
      Size = 40
      Lookup = True
    end
    object tPedidoItemlkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Lookup = True
    end
    object tPedidoItemlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
  end
  object dsPedidoItem: TDataSource
    DataSet = tPedidoItem
    Left = 172
    Top = 379
  end
  object qNotaFiscal: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Filial, NumNota, DtEmissao, CodNatOper, CodCli, CodVended' +
        'or, BaseIcms, VlrIcms, VlrTotalNota, VlrTotalItens, VlrIpi, VlrT' +
        'otalDesc, VlrSeguro, VlrFrete, OutrasDesp, PesoBruto, PesoLiquid' +
        'o, Cancelada, Usuario, DtCad, HrCad, VlrTotalDupl, NumSeq'
      'FROM "dbNotaFiscal.DB" Dbnotafiscal')
    Left = 236
    Top = 355
    object qNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNotaFiscal.DB".Filial'
    end
    object qNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumNota'
    end
    object qNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
    object qNotaFiscalCodNatOper: TSmallintField
      FieldName = 'CodNatOper'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodNatOper'
    end
    object qNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qNotaFiscalCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodVendedor'
    end
    object qNotaFiscalBaseIcms: TFloatField
      FieldName = 'BaseIcms'
      Origin = 'TABELAS."dbNotaFiscal.DB".BaseIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrIcms: TFloatField
      FieldName = 'VlrIcms'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrTotalNota: TFloatField
      FieldName = 'VlrTotalNota'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalNota'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrTotalItens: TFloatField
      FieldName = 'VlrTotalItens'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalItens'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrIpi: TFloatField
      FieldName = 'VlrIpi'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrIpi'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrTotalDesc: TFloatField
      FieldName = 'VlrTotalDesc'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalDesc'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrSeguro: TFloatField
      FieldName = 'VlrSeguro'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrSeguro'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalVlrFrete: TFloatField
      FieldName = 'VlrFrete'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrFrete'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalOutrasDesp: TFloatField
      FieldName = 'OutrasDesp'
      Origin = 'TABELAS."dbNotaFiscal.DB".OutrasDesp'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscalPesoBruto: TFloatField
      FieldName = 'PesoBruto'
      Origin = 'TABELAS."dbNotaFiscal.DB".PesoBruto'
    end
    object qNotaFiscalPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
      Origin = 'TABELAS."dbNotaFiscal.DB".PesoLiquido'
    end
    object qNotaFiscalCancelada: TBooleanField
      FieldName = 'Cancelada'
      Origin = 'TABELAS."dbNotaFiscal.DB".Cancelada'
    end
    object qNotaFiscalUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'TABELAS."dbNotaFiscal.DB".Usuario'
      Size = 15
    end
    object qNotaFiscalDtCad: TDateField
      FieldName = 'DtCad'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtCad'
    end
    object qNotaFiscalHrCad: TTimeField
      FieldName = 'HrCad'
      Origin = 'TABELAS."dbNotaFiscal.DB".HrCad'
    end
    object qNotaFiscalVlrTotalDupl: TFloatField
      FieldName = 'VlrTotalDupl'
      Origin = 'TABELAS."dbNotaFiscal.DB".VlrTotalDupl'
      DisplayFormat = '###,###,##0.00'
    end
    object qNotaFiscallkNomeVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeVendedor'
      LookupDataSet = DM1.tVendedor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodVendedor'
      Size = 40
      Lookup = True
    end
    object qNotaFiscalNumSeq: TIntegerField
      FieldName = 'NumSeq'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumSeq'
    end
  end
  object dsqNotaFiscal: TDataSource
    DataSet = qNotaFiscal
    Left = 252
    Top = 355
  end
  object tNotaFiscalItens: TTable
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial;NumSeq'
    MasterFields = 'Filial;NumSeq'
    MasterSource = dsqNotaFiscal
    TableName = 'dbNotaFiscalItens.DB'
    Left = 236
    Top = 379
    object tNotaFiscalItensFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalItensNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object tNotaFiscalItensItem: TSmallintField
      FieldName = 'Item'
    end
    object tNotaFiscalItensCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object tNotaFiscalItensCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object tNotaFiscalItensClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Size = 3
    end
    object tNotaFiscalItensNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tNotaFiscalItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object tNotaFiscalItensIcms: TFloatField
      FieldName = 'Icms'
    end
    object tNotaFiscalItensIpi: TFloatField
      FieldName = 'Ipi'
    end
    object tNotaFiscalItensSitTrib: TSmallintField
      FieldName = 'SitTrib'
    end
    object tNotaFiscalItensVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      DisplayFormat = '###,###,##0.000'
    end
    object tNotaFiscalItensVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object tNotaFiscalItensDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tNotaFiscalItensVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      DisplayFormat = '###,###,##0.00'
    end
    object tNotaFiscalItensBaseIcms: TFloatField
      FieldName = 'BaseIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object tNotaFiscalItensVlrIcms: TFloatField
      FieldName = 'VlrIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object tNotaFiscalItensVlrIpi: TFloatField
      FieldName = 'VlrIpi'
      DisplayFormat = '###,###,##0.00'
    end
    object tNotaFiscalItensNatOper: TSmallintField
      FieldName = 'NatOper'
    end
    object tNotaFiscalItensIcmsIpi: TBooleanField
      FieldName = 'IcmsIpi'
    end
    object tNotaFiscalItensNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object tNotaFiscalItensItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object tNotaFiscalItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object tNotaFiscalItensReferencia: TStringField
      FieldName = 'Referencia'
    end
    object tNotaFiscalItensComissaoMod: TFloatField
      FieldName = 'ComissaoMod'
    end
    object tNotaFiscalItensCodComissao: TIntegerField
      FieldName = 'CodComissao'
    end
    object tNotaFiscalItensCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object tNotaFiscalItensNumMovEst: TIntegerField
      FieldName = 'NumMovEst'
    end
    object tNotaFiscalItensGeraDupl: TBooleanField
      FieldName = 'GeraDupl'
    end
    object tNotaFiscalItensMaterial: TBooleanField
      FieldName = 'Material'
    end
    object tNotaFiscalItensEstoque: TBooleanField
      FieldName = 'Estoque'
    end
    object tNotaFiscalItensNumNotaDevForn: TIntegerField
      FieldName = 'NumNotaDevForn'
    end
    object tNotaFiscalItensCodFornDev: TIntegerField
      FieldName = 'CodFornDev'
    end
    object tNotaFiscalItensItemDev: TIntegerField
      FieldName = 'ItemDev'
    end
    object tNotaFiscalItensNumOC: TStringField
      FieldName = 'NumOC'
    end
    object tNotaFiscalItensNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object tNotaFiscalItensCodBarraRotulo: TStringField
      FieldName = 'CodBarraRotulo'
      Size = 50
    end
    object tNotaFiscalItensVale: TBooleanField
      FieldName = 'Vale'
    end
    object tNotaFiscalItensPosicao: TIntegerField
      FieldName = 'Posicao'
    end
    object tNotaFiscalItensTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object tNotaFiscalItensPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tNotaFiscalItenslkCodSit: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodSit'
      LookupDataSet = DM1.tSitTributaria
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodSit'
      KeyFields = 'SitTrib'
      Size = 3
      Lookup = True
    end
    object tNotaFiscalItenslkCodNatOper: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCodNatOper'
      LookupDataSet = DM1.tNatOperacao
      LookupKeyFields = 'Codigo'
      LookupResultField = 'CodNatOper'
      KeyFields = 'NatOper'
      Size = 4
      Lookup = True
    end
    object tNotaFiscalItenslkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
  end
  object dsNotaFiscalItens: TDataSource
    DataSet = tNotaFiscalItens
    Left = 252
    Top = 379
  end
  object qCReceberPagas: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbCReceberParcHist.Filial, Dbcreceberparchist.NumCReceber' +
        ', Dbcreceberparchist.ParcCReceber, Dbcreceberparchist.VlrUltPgto' +
        ', Dbcreceberparchist.Pgto, Dbcreceberparchist.Devolucao, Dbcrece' +
        'berparchist.DtUltPgto, Dbcreceberparchist.Historico, Dbcreceberp' +
        'arc.DtVencCReceber, Dbcreceberparc.VlrParcCReceber, Dbcreceberpa' +
        'rc.CodCli, Dbcreceberparc.NumNota'
      'FROM "dbCReceberParcHist.DB" Dbcreceberparchist'
      '   INNER JOIN "dbCReceberParc.DB" Dbcreceberparc'
      
        '   ON  (Dbcreceberparchist.NumCReceber = Dbcreceberparc.NumCRece' +
        'ber)  '
      
        '   AND  (Dbcreceberparchist.ParcCReceber = Dbcreceberparc.ParcCR' +
        'eceber)  ')
    Left = 304
    Top = 358
    object qCReceberPagasFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbCReceberParcHist.DB".Filial'
    end
    object qCReceberPagasNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
      Origin = 'TABELAS."dbCReceberParcHist.DB".NumCReceber'
    end
    object qCReceberPagasParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
      Origin = 'TABELAS."dbCReceberParcHist.DB".ParcCReceber'
    end
    object qCReceberPagasVlrUltPgto: TFloatField
      FieldName = 'VlrUltPgto'
      Origin = 'TABELAS."dbCReceberParcHist.DB".VlrUltPgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberPagasPgto: TBooleanField
      FieldName = 'Pgto'
      Origin = 'TABELAS."dbCReceberParcHist.DB".Pgto'
    end
    object qCReceberPagasDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'TABELAS."dbCReceberParcHist.DB".Devolucao'
    end
    object qCReceberPagasDtUltPgto: TDateField
      FieldName = 'DtUltPgto'
      Origin = 'TABELAS."dbCReceberParcHist.DB".DtUltPgto'
    end
    object qCReceberPagasHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'TABELAS."dbCReceberParcHist.DB".Historico'
      Size = 70
    end
    object qCReceberPagasDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtVencCReceber'
    end
    object qCReceberPagasVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrParcCReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberPagasCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbCReceberParc.DB".CodCli'
    end
    object qCReceberPagasNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbCReceberParc.DB".NumNota'
    end
  end
  object dsqCReceberPagas: TDataSource
    DataSet = qCReceberPagas
    Left = 316
    Top = 358
  end
  object qCReceber: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Filial, NumCReceber, ParcCReceber, VlrParcCReceber, DtPag' +
        'ParcCReceber, CodCli, NumNota, PgtoParcial, RestParcela, DtGerad' +
        'o, NumTitBanco, DtVencCReceber, QuitParcCReceber, Cancelado'
      'FROM "dbCReceberParc.DB" Dbcreceberparc')
    Left = 360
    Top = 355
    object qCReceberFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbCReceberParc.DB".Filial'
    end
    object qCReceberNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".NumCReceber'
    end
    object qCReceberParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".ParcCReceber'
    end
    object qCReceberVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".VlrParcCReceber'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberDtPagParcCReceber: TDateField
      FieldName = 'DtPagParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtPagParcCReceber'
    end
    object qCReceberCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbCReceberParc.DB".CodCli'
    end
    object qCReceberNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbCReceberParc.DB".NumNota'
    end
    object qCReceberPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
      Origin = 'TABELAS."dbCReceberParc.DB".PgtoParcial'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberRestParcela: TFloatField
      FieldName = 'RestParcela'
      Origin = 'TABELAS."dbCReceberParc.DB".RestParcela'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberDtGerado: TDateField
      FieldName = 'DtGerado'
      Origin = 'TABELAS."dbCReceberParc.DB".DtGerado'
    end
    object qCReceberNumTitBanco: TStringField
      FieldName = 'NumTitBanco'
      Origin = 'TABELAS."dbCReceberParc.DB".NumTitBanco'
    end
    object qCReceberDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".DtVencCReceber'
    end
    object qCReceberQuitParcCReceber: TBooleanField
      FieldName = 'QuitParcCReceber'
      Origin = 'TABELAS."dbCReceberParc.DB".QuitParcCReceber'
    end
    object qCReceberCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'TABELAS."dbCReceberParc.DB".Cancelado'
    end
  end
  object dsqCReceber: TDataSource
    DataSet = qCReceber
    Left = 376
    Top = 355
  end
  object qProdutoCancelado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.Co' +
        'dCor, Dbpedidoitem.Tamanho, Sum(Dbpedidoitem.QtdPares) Qtd, Dbpe' +
        'dido.CodCliente'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      '   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)  '
      
        'GROUP BY dbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.' +
        'CodCor, Dbpedidoitem.Tamanho, Dbpedido.CodCliente')
    Left = 244
    Top = 416
    object qProdutoCanceladoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbPedido.DB".Filial'
    end
    object qProdutoCanceladoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qProdutoCanceladoCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbPedidoItem.DB".CodCor'
    end
    object qProdutoCanceladoTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbPedidoItem.DB".Tamanho'
      Size = 3
    end
    object qProdutoCanceladoCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qProdutoCanceladolkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Lookup = True
    end
    object qProdutoCanceladolkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodProduto'
      Size = 40
      Lookup = True
    end
    object qProdutoCanceladolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
    object qProdutoCanceladoQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
  end
  object qCanceladoDet: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbpedido.Filial, Dbpedidoitem.Pedido, Dbpedidoitem.Item, ' +
        'Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Taman' +
        'ho, Dbpedidoitem.DtEmbarque, Dbpedido.PedidoCliente, Dbpedidoite' +
        'm.QtdPares, Dbpedido.DtEmissao'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      '   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)  '
      'WHERE   (Dbpedido.CodCliente = 1)  '
      '   AND  (Dbpedidoitem.CodProduto = 1)  '
      '   AND  (Dbpedidoitem.CodCor = 1)  '
      '   AND  (Dbpedidoitem.Tamanho = '#39'30'#39')  '
      '   AND  (Dbpedidoitem.Cancelado = TRUE)  '
      '   AND  (Dbpedido.Filial = :Filial)')
    Left = 244
    Top = 445
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbPedidoItem.DB".Pedido'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Item'
      Origin = 'TABELAS."dbPedidoItem.DB".Item'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbPedidoItem.DB".CodCor'
    end
    object StringField1: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbPedidoItem.DB".Tamanho'
      Size = 3
    end
    object DateField1: TDateField
      FieldName = 'DtEmbarque'
      Origin = 'TABELAS."dbPedidoItem.DB".DtEmbarque'
    end
    object StringField2: TStringField
      FieldName = 'PedidoCliente'
      Origin = 'TABELAS."dbPedido.DB".PedidoCliente'
    end
    object qCanceladoDetQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qCanceladoDetDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbPedido.DB".DtEmissao'
    end
  end
  object dsqProdutoCancelado: TDataSource
    DataSet = qProdutoCancelado
    Left = 260
    Top = 417
  end
  object dsqCanceladoDet: TDataSource
    DataSet = qCanceladoDet
    Left = 260
    Top = 444
  end
  object qProdutoFaturado: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.CodProduto, D' +
        'bnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, SUM( Dbnotaf' +
        'iscalitens.Qtd ) Qtd, SUM( Dbnotafiscalitens.VlrTotal ) VlrTotal' +
        ', SUM( Dbnotafiscalitens.VlrIcms ) VlrIcms, SUM( Dbnotafiscalite' +
        'ns.VlrIpi ) VlrIpi, Dbnotafiscalitens.Tamanho'
      'FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal'
      '   ON  (Dbnotafiscalitens.NumNota = Dbnotafiscal.NumNota)  '
      
        'GROUP BY Dbnotafiscalitens.Filial, Dbnotafiscalitens.CodProduto,' +
        ' Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbnotafisc' +
        'alitens.Tamanho'
      '')
    Left = 344
    Top = 397
    object qProdutoFaturadoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Filial'
    end
    object qProdutoFaturadoCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qProdutoFaturadoCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodCor'
    end
    object qProdutoFaturadoUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Unidade'
      Size = 3
    end
    object qProdutoFaturadoQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qProdutoFaturadoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object qProdutoFaturadoVlrIcms: TFloatField
      FieldName = 'VlrIcms'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object qProdutoFaturadoVlrIpi: TFloatField
      FieldName = 'VlrIpi'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrIpi'
      DisplayFormat = '###,###,##0.00'
    end
    object qProdutoFaturadoTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Tamanho'
      Size = 3
    end
    object qProdutoFaturadolkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodProduto'
      Size = 40
      Lookup = True
    end
    object qProdutoFaturadolkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = DM1.tProduto
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Referencia'
      KeyFields = 'CodProduto'
      Size = 40
      Lookup = True
    end
    object qProdutoFaturadolkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
  end
  object dsqProdutoFaturado: TDataSource
    DataSet = qProdutoFaturado
    Left = 368
    Top = 397
  end
  object qFaturadoDet: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumNota, Dbno' +
        'tafiscalitens.Item, Dbnotafiscalitens.CodProduto, Dbnotafiscalit' +
        'ens.CodCor, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd, Db' +
        'notafiscalitens.VlrUnit, Dbnotafiscalitens.VlrTotal, Dbnotafisca' +
        'litens.BaseIcms, Dbnotafiscalitens.VlrIcms, Dbnotafiscalitens.Vl' +
        'rIpi, Dbnotafiscalitens.NatOper, Dbnotafiscalitens.NumOC, Dbnota' +
        'fiscalitens.NumOS, Dbnotafiscalitens.Tamanho, Dbnotafiscal.DtEmi' +
        'ssao'
      'FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens'
      '   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal'
      '   ON  (Dbnotafiscalitens.NumNota = Dbnotafiscal.NumNota)  ')
    Left = 344
    Top = 445
    object qFaturadoDetFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Filial'
    end
    object qFaturadoDetNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".NumNota'
    end
    object qFaturadoDetItem: TSmallintField
      FieldName = 'Item'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Item'
    end
    object qFaturadoDetCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodProduto'
    end
    object qFaturadoDetCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".CodCor'
    end
    object qFaturadoDetUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Unidade'
      Size = 3
    end
    object qFaturadoDetQtd: TFloatField
      FieldName = 'Qtd'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Qtd'
    end
    object qFaturadoDetVlrUnit: TFloatField
      FieldName = 'VlrUnit'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrUnit'
      DisplayFormat = '###,###,##0.000'
    end
    object qFaturadoDetVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object qFaturadoDetBaseIcms: TFloatField
      FieldName = 'BaseIcms'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".BaseIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object qFaturadoDetVlrIcms: TFloatField
      FieldName = 'VlrIcms'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object qFaturadoDetVlrIpi: TFloatField
      FieldName = 'VlrIpi'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".VlrIpi'
      DisplayFormat = '###,###,##0.00'
    end
    object qFaturadoDetNatOper: TSmallintField
      FieldName = 'NatOper'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".NatOper'
    end
    object qFaturadoDetNumOC: TStringField
      FieldName = 'NumOC'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".NumOC'
    end
    object qFaturadoDetNumOS: TStringField
      FieldName = 'NumOS'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".NumOS'
      Size = 30
    end
    object qFaturadoDetTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbNotaFiscalItens.DB".Tamanho'
      Size = 3
    end
    object qFaturadoDetDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
  end
  object dsqFaturadoDet: TDataSource
    DataSet = qFaturadoDet
    Left = 368
    Top = 445
  end
  object qPedidoCanc: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbPedido.Filial, Dbproduto.Referencia, Dbpedidoitem.Pedid' +
        'o, Dbproduto.Codigo CodProduto, Dbpedido.PedidoCliente, Dbprodut' +
        'o.Nome NomeProduto, Dbpedidoitem.CodCor, Dbpedidoitem.QtdPares, ' +
        'Dbpedidoitem.Preco, Dbpedidoitem.VlrTotal, Dbpedidoitem.DtEmbarq' +
        'ue, Dbpedido.DtEmissao, Dbpedido.CodCliente, Dbpedidoitem.Tamanh' +
        'o, Dbpedidoitem.Cancelado'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      
        '   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)  , "dbProduto.DB"' +
        ' Dbproduto'
      'WHERE  Dbpedidoitem.Cancelado = TRUE '
      
        'ORDER BY Dbproduto.Referencia, Dbpedidoitem.Tamanho, Dbpedidoite' +
        'm.CodCor')
    Left = 492
    Top = 511
    object qPedidoCancFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'TABELAS."dbPedido.DB".Filial'
    end
    object qPedidoCancQtdPares: TFloatField
      FieldName = 'QtdPares'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdPares'
    end
    object qPedidoCancReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbProduto.DB".Referencia'
    end
    object qPedidoCancPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'TABELAS."dbPedidoItem.DB".Pedido'
    end
    object qPedidoCancCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbProduto.DB".Codigo'
    end
    object qPedidoCancPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
      Origin = 'TABELAS."dbPedido.DB".PedidoCliente'
    end
    object qPedidoCancNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Origin = 'TABELAS."dbProduto.DB".Nome'
      Size = 40
    end
    object qPedidoCancCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbPedidoItem.DB".CodCor'
    end
    object qPedidoCancPreco: TFloatField
      FieldName = 'Preco'
      Origin = 'TABELAS."dbPedidoItem.DB".Preco'
    end
    object qPedidoCancVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbPedidoItem.DB".VlrTotal'
    end
    object qPedidoCancDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
      Origin = 'TABELAS."dbPedidoItem.DB".DtEmbarque'
    end
    object qPedidoCancDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbPedido.DB".DtEmissao'
    end
    object qPedidoCancCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Origin = 'TABELAS."dbPedido.DB".CodCliente'
    end
    object qPedidoCancTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbPedidoItem.DB".Tamanho'
      Size = 3
    end
    object qPedidoCancCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'TABELAS."dbPedidoItem.DB".Cancelado'
    end
  end
  object dsqPedidoCanc: TDataSource
    DataSet = qPedidoCanc
    Left = 508
    Top = 511
  end
  object qMaiorFatura: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      'SELECT NumNota, DtGerado, VlrTotal'
      'FROM "dbCReceber.DB" Dbcreceber'
      'WHERE  (CodCli = :CodCliente) and (Filial = :Filial)'
      'ORDER BY VlrTotal')
    Left = 585
    Top = 393
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Filial'
        ParamType = ptUnknown
      end>
    object qMaiorFaturaNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbCReceber.DB".NumNota'
    end
    object qMaiorFaturaDtGerado: TDateField
      FieldName = 'DtGerado'
      Origin = 'TABELAS."dbCReceber.DB".DtGerado'
    end
    object qMaiorFaturaVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      Origin = 'TABELAS."dbCReceber.DB".VlrTotal'
    end
  end
  object tCReceberParc: TTable
    Active = True
    OnCalcFields = tCReceberParcCalcFields
    DatabaseName = 'Tabelas'
    IndexFieldNames = 'Filial'
    MasterFields = 'Codigo'
    MasterSource = DM1.dsFilial
    TableName = 'dbCReceberParc.DB'
    Left = 437
    Top = 370
    object tCReceberParcFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tCReceberParcNumCReceber: TIntegerField
      FieldName = 'NumCReceber'
    end
    object tCReceberParcParcCReceber: TIntegerField
      FieldName = 'ParcCReceber'
    end
    object tCReceberParcVlrParcCReceber: TFloatField
      FieldName = 'VlrParcCReceber'
    end
    object tCReceberParcDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
    end
    object tCReceberParcQuitParcCReceber: TBooleanField
      FieldName = 'QuitParcCReceber'
    end
    object tCReceberParcJurosParcCReceber: TFloatField
      FieldName = 'JurosParcCReceber'
    end
    object tCReceberParcDtPagParcCReceber: TDateField
      FieldName = 'DtPagParcCReceber'
    end
    object tCReceberParcCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object tCReceberParcNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tCReceberParcDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object tCReceberParcPgtoParcial: TFloatField
      FieldName = 'PgtoParcial'
    end
    object tCReceberParcRestParcela: TFloatField
      FieldName = 'RestParcela'
    end
    object tCReceberParcContaDupl: TSmallintField
      FieldName = 'ContaDupl'
    end
    object tCReceberParcSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tCReceberParcCodVendedor: TIntegerField
      FieldName = 'CodVendedor'
    end
    object tCReceberParcBaixada: TBooleanField
      FieldName = 'Baixada'
    end
    object tCReceberParcPercComissao: TFloatField
      FieldName = 'PercComissao'
    end
    object tCReceberParcVlrComissao: TFloatField
      FieldName = 'VlrComissao'
    end
    object tCReceberParcPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object tCReceberParcAgencia: TStringField
      FieldName = 'Agencia'
      Size = 6
    end
    object tCReceberParcTitPortador: TStringField
      FieldName = 'TitPortador'
    end
    object tCReceberParcCodTipoCobranca: TIntegerField
      FieldName = 'CodTipoCobranca'
    end
    object tCReceberParcDespesas: TFloatField
      FieldName = 'Despesas'
    end
    object tCReceberParcAbatimentos: TFloatField
      FieldName = 'Abatimentos'
    end
    object tCReceberParcCodConta: TIntegerField
      FieldName = 'CodConta'
    end
    object tCReceberParcPgCartorio: TBooleanField
      FieldName = 'PgCartorio'
    end
    object tCReceberParcDiasAtraso: TFloatField
      FieldName = 'DiasAtraso'
    end
    object tCReceberParcLetraCambio: TBooleanField
      FieldName = 'LetraCambio'
    end
    object tCReceberParcNroLancExtComissao: TIntegerField
      FieldName = 'NroLancExtComissao'
    end
    object tCReceberParcJurosPagos: TFloatField
      FieldName = 'JurosPagos'
    end
    object tCReceberParcCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object tCReceberParcTitProtestado: TBooleanField
      FieldName = 'TitProtestado'
    end
    object tCReceberParcDtGerado: TDateField
      FieldName = 'DtGerado'
    end
    object tCReceberParcTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object tCReceberParcVlrDevolucao: TFloatField
      FieldName = 'VlrDevolucao'
    end
    object tCReceberParcArqGerado: TBooleanField
      FieldName = 'ArqGerado'
    end
    object tCReceberParcTransferencia: TBooleanField
      FieldName = 'Transferencia'
    end
    object tCReceberParcNumTitBanco: TStringField
      FieldName = 'NumTitBanco'
    end
    object tCReceberParcVlrComissaoRestante: TFloatField
      FieldName = 'VlrComissaoRestante'
    end
    object tCReceberParcComissaoItem: TBooleanField
      FieldName = 'ComissaoItem'
    end
    object tCReceberParcclDiasAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clDiasAtraso'
      Calculated = True
    end
  end
  object qProdutoPendente: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.Co' +
        'dCor, Dbpedidoitem.Tamanho, Dbproduto.Referencia, Dbproduto.Nome' +
        ', SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, Dbproduto.Unida' +
        'de, Dbpedido.CodCliente'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      '   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)  '
      'WHERE  Dbpedidoitem.QtdParesRest > 0 '
      
        'GROUP BY dbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.' +
        'CodCor, Dbpedidoitem.Tamanho, Dbproduto.Referencia, Dbproduto.No' +
        'me, Dbproduto.Unidade, Dbpedido.CodCliente'
      
        'ORDER BY Dbproduto.Referencia, Dbpedidoitem.Tamanho, Dbpedidoite' +
        'm.CodCor')
    Left = 584
    Top = 325
    object qProdutoPendenteFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qProdutoPendenteCodProduto: TIntegerField
      FieldName = 'CodProduto'
      Origin = 'TABELAS."dbPedidoItem.DB".CodProduto'
    end
    object qProdutoPendenteCodCor: TIntegerField
      FieldName = 'CodCor'
      Origin = 'TABELAS."dbPedidoItem.DB".CodCor'
    end
    object qProdutoPendenteTamanho: TStringField
      FieldName = 'Tamanho'
      Origin = 'TABELAS."dbPedidoItem.DB".Tamanho'
      Size = 3
    end
    object qProdutoPendenteReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'TABELAS."dbProduto.DB".Referencia'
    end
    object qProdutoPendenteNome: TStringField
      FieldName = 'Nome'
      Origin = 'TABELAS."dbProduto.DB".Nome'
      Size = 40
    end
    object qProdutoPendenteQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
      Origin = 'TABELAS."dbPedidoItem.DB".QtdParesRest'
    end
    object qProdutoPendenteUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qProdutoPendenteCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qProdutoPendentelkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
  end
  object dsqProdutoPendente: TDataSource
    DataSet = qProdutoPendente
    Left = 608
    Top = 325
  end
  object qProdutoPendDet: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT dbPedido.Filial, Dbpedidoitem.CodProduto, Dbpedidoitem.Co' +
        'dCor, Dbpedidoitem.Tamanho, Dbproduto.Referencia, Dbproduto.Nome' +
        ', Dbproduto.Unidade, Dbpedido.CodCliente, Dbpedidoitem.QtdParesR' +
        'est, Dbpedidoitem.DtEmbarque, Dbpedido.Pedido, Dbpedido.PedidoCl' +
        'iente'
      'FROM "dbPedidoItem.DB" Dbpedidoitem'
      '   INNER JOIN "dbProduto.DB" Dbproduto'
      '   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)  '
      '   INNER JOIN "dbPedido.DB" Dbpedido'
      '   ON  (Dbpedidoitem.Pedido = Dbpedido.Pedido)  '
      'WHERE  Dbpedidoitem.QtdParesRest > 0 '
      
        'ORDER BY  Dbpedidoitem.DtEmbarque,  Dbproduto.Referencia, Dbpedi' +
        'doitem.Tamanho'
      '')
    Left = 584
    Top = 357
    object qProdutoPendDetFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qProdutoPendDetCodProduto: TIntegerField
      FieldName = 'CodProduto'
    end
    object qProdutoPendDetCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qProdutoPendDetTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object qProdutoPendDetReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qProdutoPendDetNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object qProdutoPendDetUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object qProdutoPendDetCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object qProdutoPendDetQtdParesRest: TFloatField
      FieldName = 'QtdParesRest'
    end
    object qProdutoPendDetDtEmbarque: TDateField
      FieldName = 'DtEmbarque'
    end
    object qProdutoPendDetPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qProdutoPendDetPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
    object qProdutoPendDetlkNomeCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeCor'
      LookupDataSet = DM1.tCor
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodCor'
      Size = 25
      Lookup = True
    end
  end
  object dsqProdutoPendDet: TDataSource
    DataSet = qProdutoPendDet
    Left = 608
    Top = 357
  end
end
