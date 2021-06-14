object fPrevPlanoContas2: TfPrevPlanoContas2
  Left = 132
  Top = 87
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta/Relat'#243'rio de Plano de Contas'
  ClientHeight = 520
  ClientWidth = 780
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
    Width = 780
    Height = 520
    Align = alClient
    TabOrder = 0
    object Label4: TLabel
      Left = 112
      Top = 497
      Width = 63
      Height = 24
      Caption = 'Totais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 344
      Top = 499
      Width = 128
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 200
      Top = 499
      Width = 128
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 490
      Top = 499
      Width = 128
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 629
      Top = 499
      Width = 128
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 4
      Top = 3
      Width = 773
      Height = 494
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 15
        Width = 81
        Height = 13
        Caption = 'Plano de Contas:'
      end
      object Label2: TLabel
        Left = 33
        Top = 40
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
      end
      object Label3: TLabel
        Left = 209
        Top = 40
        Width = 51
        Height = 13
        Caption = 'Data Final:'
      end
      object Bevel1: TBevel
        Left = 1
        Top = 64
        Width = 770
        Height = 4
        Shape = bsTopLine
        Style = bsRaised
      end
      object ALed1: TALed
        Left = 13
        Top = 68
        Width = 16
        Height = 16
        TrueColor = clTeal
        FalseColor = clAqua
      end
      object Label7: TLabel
        Left = 33
        Top = 70
        Width = 87
        Height = 13
        Caption = 'Conta Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ALed2: TALed
        Left = 130
        Top = 68
        Width = 16
        Height = 16
        TrueColor = clRed
        FalseColor = clInfoBk
      end
      object Label8: TLabel
        Left = 148
        Top = 70
        Width = 60
        Height = 13
        Caption = 'Sub-Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 355
        Top = 9
        Width = 74
        Height = 13
        Caption = 'Op'#231#227'o da data:'
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 93
        Top = 7
        Width = 260
        Height = 21
        DropDownCount = 8
        LookupField = 'Codigo'
        LookupDisplay = 'Descricao'
        LookupSource = DM1.dsPlanoContas
        TabOrder = 0
      end
      object DateEdit1: TDateEdit
        Left = 93
        Top = 32
        Width = 89
        Height = 21
        Hint = 'Selecione uma data'
        CalendarHints.Strings = (
          'Ano Anterior'
          'M'#234's Anterior'
          'Pr'#243'ximo M'#234's'
          'Pr'#243'ximo Ano')
        GlyphKind = gkCustom
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
          87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
          FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
          0E070F757770000000E070FFF707777777007700007777777777}
        NumGlyphs = 1
        ParentShowHint = False
        ShowHint = True
        StartOfWeek = Sun
        TabOrder = 2
      end
      object DateEdit2: TDateEdit
        Left = 264
        Top = 32
        Width = 89
        Height = 21
        Hint = 'Selecione uma data'
        CalendarHints.Strings = (
          'Ano Anterior'
          'M'#234's Anterior'
          'Pr'#243'ximo M'#234's'
          'Pr'#243'ximo Ano')
        GlyphKind = gkCustom
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000000000007707778FF7FF7FF077077788F78F78F07708888877877
          87077077780078F78F077077780E0FF78F0770888870E0777707700000FF0E07
          FF077077770F70E0FF07077777707F0E0F070F7555707FF0E0070F7577704444
          0E070F757770000000E070FFF707777777007700007777777777}
        NumGlyphs = 1
        ParentShowHint = False
        ShowHint = True
        StartOfWeek = Sun
        TabOrder = 3
      end
      object BitBtn1: TBitBtn
        Left = 549
        Top = 32
        Width = 111
        Height = 29
        Hint = 'Imprime o relat'#243'rio'
        Caption = '&Imprimir'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
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
      object BitBtn2: TBitBtn
        Left = 660
        Top = 32
        Width = 111
        Height = 29
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
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
        Left = 438
        Top = 32
        Width = 111
        Height = 29
        Caption = '(F5) Consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
        Glyph.Data = {
          36050000424D360500000000000036040000280000000E000000100000000100
          08000000000000010000CA0E0000C30E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ACACACACACAC
          ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
          00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
          02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
          5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
          00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
          ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
          D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
          D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
      end
      object PageControl1: TPageControl
        Left = 3
        Top = 87
        Width = 761
        Height = 398
        ActivePage = TabSheet1
        Style = tsButtons
        TabOrder = 7
        object TabSheet1: TTabSheet
          Caption = 'Consulta Geral'
          object StaticText1: TStaticText
            Left = 390
            Top = 0
            Width = 183
            Height = 26
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Realizado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -23
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 573
            Top = 0
            Width = 161
            Height = 26
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Pendente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -23
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object RxDBGrid1: TRxDBGrid
            Left = -1
            Top = 27
            Width = 755
            Height = 340
            DataSource = dsmAuxPlano
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = RxDBGrid1GetCellParams
            Columns = <
              item
                Expanded = False
                FieldName = 'Nome'
                Title.Alignment = taCenter
                Title.Caption = 'Plano de Conta'
                Width = 219
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NomePlanoItens'
                Title.Alignment = taCenter
                Title.Caption = 'Sub-Conta'
                Width = 157
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EntradaR'
                Title.Alignment = taCenter
                Title.Caption = 'Entrada'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SaidaR'
                Title.Alignment = taCenter
                Title.Caption = 'Saida'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EntradaP'
                Title.Alignment = taCenter
                Title.Caption = 'Entrada'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SaidaP'
                Title.Alignment = taCenter
                Title.Caption = 'Saida'
                Width = 74
                Visible = True
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Entradas Pendentes'
          ImageIndex = 1
          object RxDBGrid2: TRxDBGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 367
            DataSource = dsqCReceber
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = RxDBGrid2GetCellParams
            Columns = <
              item
                Expanded = False
                FieldName = 'NomePlanoContas'
                Title.Alignment = taCenter
                Title.Caption = 'Plano de Conta'
                Width = 251
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomePlanoItens'
                Title.Alignment = taCenter
                Title.Caption = 'Sub-Conta'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtVencCReceber'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RestParcela'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 66
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumNota'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota'
                Width = 69
                Visible = True
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Saidas Pendentes'
          ImageIndex = 2
          object RxDBGrid3: TRxDBGrid
            Left = 0
            Top = 0
            Width = 753
            Height = 364
            DataSource = dsqCPagar
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                Expanded = False
                FieldName = 'NomePlanoContas'
                Title.Alignment = taCenter
                Title.Caption = 'Plano de Contas'
                Width = 222
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomePlanoItens'
                Title.Alignment = taCenter
                Title.Caption = 'Sub-Conta'
                Width = 211
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DtVencCPagar'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RestParcela'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumNotaEnt'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota Ent.'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NroDuplicata'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Duplicata'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomeFornecedor'
                Title.Alignment = taCenter
                Title.Caption = 'Fornecedor'
                Visible = True
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Realizado'
          ImageIndex = 3
          object RxDBGrid4: TRxDBGrid
            Left = 1
            Top = 0
            Width = 752
            Height = 365
            DataSource = dsqMovimentos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = RxDBGrid4GetCellParams
            Columns = <
              item
                Expanded = False
                FieldName = 'NomePlanoContas'
                Title.Alignment = taCenter
                Title.Caption = 'Plano de Contas'
                Width = 197
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lkNomePlanoItens'
                Title.Alignment = taCenter
                Title.Caption = 'Sub-Conta'
                Width = 165
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DtMovimento'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrMovCredito'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr.Entrada'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VlrMovDebito'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Sa'#237'da'
                Width = 61
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumNota'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota Sa'#237'da'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NumNotaEnt'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota Entrada'
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
      end
      object ComboBox1: TComboBox
        Left = 430
        Top = 5
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Data Vencimento'
        Items.Strings = (
          'Data Vencimento'
          'Data Emiss'#227'o')
      end
    end
  end
  object qCReceber: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbplanocontas.Descricao NomePlanoContas, Dbcreceberparc.R' +
        'estParcela, Dbcreceberparc.PlanoContas, Dbcreceberparc.CodPlanoC' +
        'ontasItens, Dbcreceberparc.DtVencCReceber, Dbcreceberparc.NumNot' +
        'a'
      'FROM "dbPlanoContas.DB" Dbplanocontas'
      '   INNER JOIN "dbCReceberParc.DB" Dbcreceberparc'
      '   ON  (Dbcreceberparc.PlanoContas = Dbplanocontas.Codigo)  '
      'WHERE   (Dbcreceberparc.PlanoContas = 1)  '
      
        '   AND  ( (Dbcreceberparc.Cancelado = FALSE)  OR  (Dbcreceberpar' +
        'c.Cancelado IS NULL) )  ')
    Left = 372
    Top = 232
    object qCReceberNomePlanoContas: TStringField
      FieldName = 'NomePlanoContas'
      Size = 50
    end
    object qCReceberlkNomePlanoItens: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomePlanoItens'
      LookupDataSet = tPlanoContasItens
      LookupKeyFields = 'CodPlano;CodItem'
      LookupResultField = 'Nome'
      KeyFields = 'PlanoContas;CodPlanoContasItens'
      Size = 40
      Lookup = True
    end
    object qCReceberDtVencCReceber: TDateField
      FieldName = 'DtVencCReceber'
    end
    object qCReceberRestParcela: TFloatField
      FieldName = 'RestParcela'
      DisplayFormat = '###,###,##0.00'
    end
    object qCReceberPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object qCReceberCodPlanoContasItens: TIntegerField
      FieldName = 'CodPlanoContasItens'
    end
    object qCReceberNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbCReceberParc.DB".NumNota'
    end
  end
  object qCPagar: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbplanocontas.Descricao NomePlanoContas, Dbcpagarparc.Pla' +
        'noContas, Dbcpagarparc.CodPlanoContasItens, Dbcpagarparc.DtVencC' +
        'Pagar, Dbcpagarparc.RestParcela, Dbcpagarparc.NumNotaEnt, Dbcpag' +
        'arparc.CodForn, Dbcpagarparc.NroDuplicata'
      'FROM "dbCPagarParc.DB" Dbcpagarparc'
      '   INNER JOIN "dbPlanoContas.DB" Dbplanocontas'
      '   ON  (Dbcpagarparc.PlanoContas = Dbplanocontas.Codigo)  '
      'WHERE   (Dbcpagarparc.PlanoContas = 2)  '
      '   AND  (Dbcpagarparc.CodPlanoContasItens = 1)  '
      ' ')
    Left = 436
    Top = 232
    object qCPagarNomePlanoContas: TStringField
      FieldName = 'NomePlanoContas'
      Size = 50
    end
    object qCPagarPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object qCPagarCodPlanoContasItens: TIntegerField
      FieldName = 'CodPlanoContasItens'
    end
    object qCPagarDtVencCPagar: TDateField
      FieldName = 'DtVencCPagar'
    end
    object qCPagarRestParcela: TFloatField
      FieldName = 'RestParcela'
      DisplayFormat = '###,###,##0.00'
    end
    object qCPagarlkNomePlanoItens: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomePlanoItens'
      LookupDataSet = tPlanoContasItens
      LookupKeyFields = 'CodPlano;CodItem'
      LookupResultField = 'Nome'
      KeyFields = 'PlanoContas;CodPlanoContasItens'
      Size = 40
      Lookup = True
    end
    object qCPagarNumNotaEnt: TIntegerField
      FieldName = 'NumNotaEnt'
      Origin = 'TABELAS."dbCPagarParc.DB".NumNotaEnt'
    end
    object qCPagarCodForn: TIntegerField
      FieldName = 'CodForn'
      Origin = 'TABELAS."dbCPagarParc.DB".CodForn'
    end
    object qCPagarlkNomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeFornecedor'
      LookupDataSet = DM1.tFornecedores
      LookupKeyFields = 'CodForn'
      LookupResultField = 'NomeForn'
      KeyFields = 'CodForn'
      Size = 40
      Lookup = True
    end
    object qCPagarNroDuplicata: TIntegerField
      FieldName = 'NroDuplicata'
      Origin = 'TABELAS."dbCPagarParc.DB".NroDuplicata'
    end
  end
  object qMovimentos: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbmovimentos.PlanoContas, Dbmovimentos.CodPlanoContasIten' +
        's, Dbmovimentos.DtMovimento, Dbmovimentos.VlrMovCredito, Dbmovim' +
        'entos.VlrMovDebito, Dbplanocontas.Descricao NomePlanoContas, Dbm' +
        'ovimentos.NumNota, Dbmovimentos.NumNotaEnt, Dbmovimentos.Histori' +
        'co'
      'FROM "dbMovimentos.DB" Dbmovimentos'
      '   INNER JOIN "dbPlanoContas.DB" Dbplanocontas'
      '   ON  (Dbmovimentos.PlanoContas = Dbplanocontas.Codigo)  '
      'WHERE  Dbmovimentos.PlanoContas = 1 ')
    Left = 508
    Top = 232
    object qMovimentosPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object qMovimentosCodPlanoContasItens: TIntegerField
      FieldName = 'CodPlanoContasItens'
    end
    object qMovimentosDtMovimento: TDateField
      FieldName = 'DtMovimento'
    end
    object qMovimentosNomePlanoContas: TStringField
      FieldName = 'NomePlanoContas'
      Size = 50
    end
    object qMovimentoslkNomePlanoItens: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomePlanoItens'
      LookupDataSet = tPlanoContasItens
      LookupKeyFields = 'CodPlano;CodItem'
      LookupResultField = 'Nome'
      KeyFields = 'PlanoContas;CodPlanoContasitens'
      Size = 40
      Lookup = True
    end
    object qMovimentosVlrMovCredito: TFloatField
      FieldName = 'VlrMovCredito'
      Origin = 'TABELAS."dbMovimentos.DB".VlrMovCredito'
      DisplayFormat = '###,###,##0.00'
    end
    object qMovimentosNumNota: TIntegerField
      FieldName = 'NumNota'
      Origin = 'TABELAS."dbMovimentos.DB".NumNota'
    end
    object qMovimentosNumNotaEnt: TIntegerField
      FieldName = 'NumNotaEnt'
      Origin = 'TABELAS."dbMovimentos.DB".NumNotaEnt'
    end
    object qMovimentosVlrMovDebito: TFloatField
      FieldName = 'VlrMovDebito'
      Origin = 'TABELAS."dbMovimentos.DB".VlrMovDebito'
      DisplayFormat = '###,###,##0.00'
    end
    object qMovimentosHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'TABELAS."dbMovimentos.DB".Historico'
      Size = 100
    end
  end
  object qAux: TQuery
    DatabaseName = 'C:\'
    Left = 588
    Top = 298
  end
  object dsqCReceber: TDataSource
    DataSet = qCReceber
    Left = 387
    Top = 233
  end
  object dsqCPagar: TDataSource
    DataSet = qCPagar
    Left = 451
    Top = 233
  end
  object dsqMovimentos: TDataSource
    DataSet = qMovimentos
    Left = 523
    Top = 235
  end
  object tPlanoContasItens: TTable
    Active = True
    DatabaseName = 'Tabelas'
    TableName = 'dbPlanoContasItens.db'
    Left = 323
    Top = 259
    object tPlanoContasItensCodPlano: TIntegerField
      FieldName = 'CodPlano'
    end
    object tPlanoContasItensCodItem: TIntegerField
      FieldName = 'CodItem'
    end
    object tPlanoContasItensNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object mAuxPlano: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Nome;SubItem;NomePlanoItens'
    Params = <>
    OnNewRecord = mAuxPlanoNewRecord
    Left = 427
    Top = 327
    Data = {
      DC0000009619E0BD010000001800000009000000000003000000DC00044E6F6D
      650100490000000100055749445448020002002800075375624974656D010049
      00000001000557494454480200020001000E4E6F6D65506C616E6F4974656E73
      01004900000001000557494454480200020028000D436F64506C616E6F497465
      6E7304000100000000000B506C616E6F436F6E74617304000100000000000845
      6E74726164615208000400000000000653616964615208000400000000000845
      6E74726164615008000400000000000653616964615008000400000000000000}
    object mAuxPlanoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mAuxPlanoSubItem: TStringField
      FieldName = 'SubItem'
      Size = 1
    end
    object mAuxPlanoNomePlanoItens: TStringField
      FieldName = 'NomePlanoItens'
      Size = 40
    end
    object mAuxPlanoCodPlanoItens: TIntegerField
      FieldName = 'CodPlanoItens'
    end
    object mAuxPlanoPlanoContas: TIntegerField
      FieldName = 'PlanoContas'
    end
    object mAuxPlanoEntradaR: TFloatField
      FieldName = 'EntradaR'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxPlanoSaidaR: TFloatField
      FieldName = 'SaidaR'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxPlanoEntradaP: TFloatField
      FieldName = 'EntradaP'
      DisplayFormat = '###,###,##0.00'
    end
    object mAuxPlanoSaidaP: TFloatField
      FieldName = 'SaidaP'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmAuxPlano: TDataSource
    DataSet = mAuxPlano
    Left = 443
    Top = 327
  end
end
