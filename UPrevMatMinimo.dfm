object fPrevMatMinimo: TfPrevMatMinimo
  Left = 234
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Materiais Abaixo do M'#237'nimo'
  ClientHeight = 125
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 125
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object Panel2: TPanel
      Left = 29
      Top = 75
      Width = 244
      Height = 40
      TabOrder = 1
      object RxSpeedButton1: TRxSpeedButton
        Left = 22
        Top = 8
        Width = 100
        Height = 25
        Hint = 'Imprime rela'#231#227'o de materiais c/ saldo abaixo do m'#237'nimo'
        Caption = 'Imprimir'
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
        Layout = blGlyphLeft
        OnClick = RxSpeedButton1Click
      end
      object BitBtn1: TBitBtn
        Left = 123
        Top = 8
        Width = 100
        Height = 25
        Hint = 'Fecha a janela atual'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
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
    object RadioGroup1: TRadioGroup
      Left = 28
      Top = 33
      Width = 246
      Height = 39
      Caption = ' Op'#231#245'es '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Produto'
        'Material'
        'Todos')
      TabOrder = 2
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 37
      Top = 8
      Width = 252
      Height = 21
      DropDownCount = 8
      LookupField = 'Codigo'
      LookupDisplay = 'Empresa'
      LookupSource = DM1.dsFilial
      TabOrder = 0
    end
  end
  object qEstoque: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Dbpr' +
        'oduto.EstMinimo, Dbproduto.Nome NomeMaterial, Dbproduto.Referenc' +
        'ia, Dbcor.Nome NomeCor, SUM( Dbestoquematmov.Qtd2 ) Saldo, Dbest' +
        'oquematmov.Filial'
      'FROM "dbEstoqueMatMov.DB" Dbestoquematmov'
      '   INNER JOIN "Dbproduto.DB" Dbproduto'
      '   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)  '
      '   FULL OUTER JOIN "Dbcor.DB" Dbcor'
      '   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)  '
      
        'GROUP BY Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Db' +
        'produto.EstMinimo, Dbproduto.Nome, Dbproduto.Referencia, Dbcor.N' +
        'ome, Dbestoquematmov.Filial'
      'ORDER BY NomeMaterial, NomeCor'
      ' '
      ' ')
    Left = 32
    Top = 48
    object qEstoqueCodMaterial: TIntegerField
      FieldName = 'CodMaterial'
    end
    object qEstoqueCodCor: TIntegerField
      FieldName = 'CodCor'
    end
    object qEstoqueEstMinimo: TFloatField
      FieldName = 'EstMinimo'
      DisplayFormat = '0.00000'
    end
    object qEstoqueNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 60
    end
    object qEstoqueNomeCor: TStringField
      FieldName = 'NomeCor'
      Size = 15
    end
    object qEstoqueSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '0.00000'
    end
    object qEstoqueReferencia: TStringField
      FieldName = 'Referencia'
    end
    object qEstoqueFilial: TIntegerField
      FieldName = 'Filial'
    end
  end
end
