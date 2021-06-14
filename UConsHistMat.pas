unit UConsHistMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxLookup, Buttons, Grids, DBGrids, RXDBCtrl, Db,
  DBTables, DBFilter, Mask, ToolEdit, CurrEdit, DBCtrls;

type
  TfConsHistMat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    qMaterial: TQuery;
    qsMaterial: TDataSource;
    qMaterialCodMaterial: TIntegerField;
    qMaterialNomeMaterial: TStringField;
    qMaterialNumMov: TIntegerField;
    qMaterialNomeCor: TStringField;
    qMaterialLargura: TStringField;
    qMaterialDtMov: TDateField;
    qMaterialES: TStringField;
    qMaterialTipoMov: TStringField;
    qMaterialNumNota: TIntegerField;
    qMaterialVlrUnitario: TFloatField;
    qMaterialQtd: TFloatField;
    qMaterialUnidade: TStringField;
    qMaterialCodCor: TIntegerField;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qCor: TQuery;
    qsCor: TDataSource;
    qCorNome: TStringField;
    qCorCodigo: TIntegerField;
    qMaterialPercIcms: TFloatField;
    RxDBFilter1: TRxDBFilter;
    RadioGroup1: TRadioGroup;
    StaticText1: TStaticText;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    qTamanho: TQuery;
    dsqTamanho: TDataSource;
    StaticText6: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    StaticText7: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText8: TStaticText;
    RxDBLookupCombo5: TRxDBLookupCombo;
    qTamanhoTamanho: TStringField;
    qMaterialTamanho: TStringField;
    qMaterialclNomePessoa: TStringField;
    qMaterialCodCliForn: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    qMaterialFilial: TIntegerField;
    qMaterialVlrFrete: TFloatField;
    Label1: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    DBText1: TDBText;
    qMaterialUnidadeOrig: TStringField;
    qMaterialVlrUnitarioOrig: TFloatField;
    qMaterialQtdOrig: TFloatField;
    qMaterialVlrDescontoOrig: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure qMaterialCalcFields(DataSet: TDataSet);
    procedure RxDBLookupCombo5Change(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_Sql;
    procedure Gera_Totais;
  public
    { Public declarations }
  end;

var
  fConsHistMat: TfConsHistMat;
  vEntrada, vSaida, vSaldo : Real;

implementation

uses UDM1, UAgendaTelef;

{$R *.DFM}

procedure TfConsHistMat.Monta_Sql;
begin
  qMaterial.Close;
  qMaterial.SQL.Clear;
  qMaterial.SQL.Add('SELECT Dbestoquematmov.CodMaterial, Dbproduto.Nome NomeMaterial, Dbestoquematmov.NumMov, Dbcor.Nome NomeCor, Dbestoquematmov.Largura,');
  qMaterial.SQL.Add(' Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbestoquematmov.TipoMov, Dbestoquematmov.NumNota, Dbestoquematmov.VlrUnitario, Dbestoquematmov.Qtd,');
  qMaterial.SQL.Add(' Dbestoquematmov.Unidade, Dbestoquematmov.CodCor, Dbestoquematmov.PercIcms, Dbestoquematmov.Tamanho,  ');
  qMaterial.SQL.Add(' Dbestoquematmov.CodCliForn, dbEstoqueMatMov.Filial, dbEstoqueMatMov.VlrFrete,  ');
  qMaterial.SQL.Add(' dbEstoqueMatMov.UnidadeOrig, dbEstoqueMatMov.VlrUnitarioOrig, dbEstoqueMatMov.QtdOrig, dbEstoqueMatMov.VlrDescontoOrig  ');
  qMaterial.SQL.Add('FROM "dbProduto.DB" Dbproduto');
  qMaterial.SQL.Add('   INNER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov');
  qMaterial.SQL.Add('   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)');
  if Tag = 1 then
    begin
      qMaterial.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
      qMaterial.SQL.Add('   ON  (Dbestoquematmov.CodNatOper = Dbnatoperacao.Codigo)');
    end;
  qMaterial.SQL.Add('   FULL JOIN "Dbcor.db" Dbcor');
  qMaterial.SQL.Add('   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)');
  qMaterial.SQL.Add('WHERE   (Dbestoquematmov.CodMaterial = :CodMaterial)');
  qMaterial.SQL.Add('    AND  (Dbestoquematmov.CodCor = :CodCor) ');
  if Tag = 1 then
  begin
    qMaterial.SQL.Add('  AND  (Dbestoquematmov.TipoMov = ''NTE'') ');
    qMaterial.SQL.Add('  AND (Dbnatoperacao.GeraDuplicata = TRUE)');
  end;
  if RxDBLookupCombo5.Text <> '' then
  begin
    qMaterial.SQL.Add('  AND  (Dbestoquematmov.Filial = :Filial)');
    qMaterial.ParamByName('Filial').AsInteger := RxDBLookupCombo5.KeyValue;
  end;
  if RxDBLookupCombo3.Text <> '' then
  begin
   qMaterial.SQL.Add('    AND  (Dbestoquematmov.Tamanho = :Tamanho)');
   qMaterial.ParamByName('Tamanho').AsString := RxDBLookupCombo3.Text
  end;
  qMaterial.ParamByName('CodMaterial').AsInteger := RxDBLookupCombo1.KeyValue;
  if RxDBLookupCombo2.KeyValue > 0 then
    qMaterial.ParamByName('CodCor').AsInteger := RxDBLookupCombo2.KeyValue
  else
    qMaterial.ParamByName('CodCor').AsInteger := 0;
  if (DateEdit1.Text <> '  /  /    ') or (DateEdit2.Text <> '  /  /    ') then
    begin
      if DateEdit1.Text <> '  /  /    ' then
        begin
          qMaterial.SQL.Add(' AND (Dbestoquematmov.DtMov >= :DtInicial)');
          qMaterial.ParamByName('DtInicial').AsDate := DateEdit1.Date;
        end;
      if DateEdit2.Text <> '  /  /    ' then
        begin
          qMaterial.SQL.Add(' AND (Dbestoquematmov.DtMov <= :DtFinal)');
          qMaterial.ParamByName('DtFinal').AsDate := DateEdit2.Date;
        end;
    end;
  qMaterial.SQL.Add('ORDER BY Dbestoquematmov.DtMov, Dbestoquematmov.ES, Dbproduto.Nome, Dbestoquematmov.Tamanho');
  qMaterial.Open;
end;

procedure TfConsHistMat.Gera_Totais;
begin
  vSaldo   := 0;
  vEntrada := 0;
  vSaida   := 0;
  qMaterial.First;
  while not qMaterial.Eof do
    begin
      if qMaterialES.AsString = 'E' then
        vEntrada := vEntrada + qMaterialQtd.AsFloat
      else
      if qMaterialES.AsString = 'S' then
        vSaida := vSaida + qMaterialQtd.AsFloat;
      qMaterial.Next;
    end;
  vSaldo := vEntrada - vSaida;
  Label4.Caption := FormatFloat('#,###,###,###,##0.00000',vEntrada);
  Label6.Caption := FormatFloat('#,###,###,###,##0.00000',vSaida);
  Label8.Caption := FormatFloat('#,###,###,###,##0.00000',vSaldo);
end;

procedure TfConsHistMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Tag := 0;
  RxDBFilter1.Active := False;
  qMaterial.Close;
  qCor.Close;
  qTamanho.Close;
  if Screen.FormCount < 3 then
    begin
      DM1.tProduto.Close;
      DM1.tProdutoGrade.Close;
      DM1.tProdutoTam.Close;
      DM1.tGrade.Close;
      DM1.tGradeItem.Close;
      DM1.tFornecedores.Close;
      DM1.tCor.Close;
    end;
  Action := Cafree;
end;

procedure TfConsHistMat.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsHistMat.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      CurrencyEdit1.AsInteger   := DM1.tProdutoCodigo.AsInteger;
      RxDBLookupCombo4.KeyValue := DM1.tProdutoCodigo.AsInteger;
      qCor.Active := False;
      qCor.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qCor.Active := True;
    end;
end;

procedure TfConsHistMat.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsHistMat.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      Screen.Cursor                 := crHourGlass;
      Monta_Sql;
      CurrencyEdit2.Value := 0;
      if DM1.tProduto.Locate('Codigo',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
        CurrencyEdit2.Value := DM1.tProdutoPrecoCusto.AsFloat;
      qMaterial.Active   := False;
      qMaterial.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      if RxDBLookupCombo2.KeyValue > 0 then
        qMaterial.Params[1].AsInteger := RxDBLookupCombo2.KeyValue
      else
        qMaterial.Params[1].AsInteger := 0;
      qMaterial.Active   := True;
      Gera_Totais;
      Screen.Cursor                 := crDefault;
      Tag := 0;
    end
  else
    begin
      ShowMessage('Deve ser selecionado um material p/ executar esta consulta!');
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfConsHistMat.SpeedButton1Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  qMaterial.Close;
  qCor.Close;
  RxDBLookupCombo1.SetFocus;
  Label4.Caption := '0.00000';
  Label6.Caption := '0.00000';
  Label8.Caption := '0.00000';
  CurrencyEdit2.Clear;
end;

procedure TfConsHistMat.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tEstoqueMatMov.Open;
  DM1.tProduto.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tGrade.Open;
  DM1.tGradeItem.Open;
  DM1.tFornecedores.Open;
  DM1.tCor.Open;
  DM1.tCliente.Open;
  if RxDBLookupCombo1.Text = '' then
    RxDBFilter1.Active := True;
  qMaterial.Close;
  if RxDBLookupCombo1.Text <> '' then
    BitBtn1Click(Sender);
end;

procedure TfConsHistMat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      qCor.Close;
      qCor.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qCor.Open;
    end;
end;

procedure TfConsHistMat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = ([ssAlt])) and (Key = 65) then
    begin
      fAgendaTelef := TfAgendaTelef.Create(Self);
      fAgendaTelef.ShowModal;
    end;
end;

procedure TfConsHistMat.RadioGroup1Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  RxDBLookupCombo1.ClearValue;
  case RadioGroup1.ItemIndex of
    0 : begin
          RxDBFilter1.Filter.Clear;
          RxDBFilter1.Filter.Add('ProdMat = ''P''');
        end;
    1 : begin
          RxDBFilter1.Filter.Clear;
          RxDBFilter1.Filter.Add('ProdMat = ''M''');
        end;
  end;
  RxDBFilter1.Active := True;
end;

procedure TfConsHistMat.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfConsHistMat.FormCreate(Sender: TObject);
begin
  qTamanho.Open;
end;

procedure TfConsHistMat.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    begin
      Dm1.tProduto.IndexFieldNames := 'Codigo';
      Dm1.tProduto.SetKey;
      Dm1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if Dm1.tProduto.GotoKey then
        begin
          RxDBLookupCombo1.KeyValue := Dm1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo4.KeyValue := Dm1.tProdutoCodigo.AsInteger;
        end;
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfConsHistMat.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsHistMat.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    begin
      RxDBLookupCombo1.KeyValue := RxDBLookupCombo4.KeyValue;
      RxDBLookupCombo1.SetFocus;
      CurrencyEdit1.AsInteger := RxDBLookupCombo4.KeyValue;
    end;
end;

procedure TfConsHistMat.qMaterialCalcFields(DataSet: TDataSet);
begin
  qMaterialclNomePessoa.AsString := '';
  if qMaterialCodCliForn.AsInteger > 0 then
    begin
      if (qMaterialTipoMov.AsString = 'NTS') or (qMaterialTipoMov.AsString = 'VAL') then
        begin
          DM1.tCliente.IndexFieldNames := 'Codigo';
          DM1.tCliente.SetKey;
          DM1.tClienteCodigo.AsInteger := qMaterialCodCliForn.AsInteger;
          if DM1.tCliente.GotoKey then
        end
      else
        begin
          DM1.tFornecedores.IndexFieldNames := 'CodForn';
          DM1.tFornecedores.SetKey;
          DM1.tFornecedoresCodForn.AsInteger := qMaterialCodCliForn.AsInteger;
          if DM1.tFornecedores.GotoKey then
            qMaterialclNomePessoa.AsString := DM1.tFornecedoresNomeForn.AsString;
        end;
    end;
end;

procedure TfConsHistMat.RxDBLookupCombo5Change(Sender: TObject);
begin
  DBText1.Visible := (RxDBLookupCombo5.Text <> '');
end;

end.
