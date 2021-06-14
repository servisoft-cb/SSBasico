unit UPrevInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Buttons, RxLookup, Grids, DBGrids, Db,
  DBTables, Mask, ToolEdit, ComCtrls, DBClient, SMDBGrid, Variants,
  CurrEdit;

type
  TfPrevInventario = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    qEstoqueCusto: TQuery;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    SMDBGrid1: TSMDBGrid;
    mInventario: TClientDataSet;
    mInventarioCodigo: TIntegerField;
    mInventarioReferencia: TStringField;
    mInventarioNomeProduto: TStringField;
    mInventarioPrecoCusto: TFloatField;
    mInventarioPrecoMedio: TFloatField;
    mInventarioPercImposto: TFloatField;
    mInventarioQtd: TFloatField;
    mInventarioVlrTotal: TFloatField;
    mInventarioCodCor: TIntegerField;
    mInventarioNomeCor: TStringField;
    mInventarioTamanho: TStringField;
    dsmInventario: TDataSource;
    qEstoqueCustoCodMaterial: TIntegerField;
    qEstoqueCustoCodCor: TIntegerField;
    qEstoqueCustoVlrUnitario: TFloatField;
    qEstoqueCustoPercIcms: TFloatField;
    qEstoqueCustoPercIpi: TFloatField;
    qEstoqueCustoVlrDesconto: TFloatField;
    qEstoqueCustoES: TStringField;
    qEstoqueCustoQtd: TFloatField;
    qEstoqueCustoReferencia: TStringField;
    qEstoqueCustoNome: TStringField;
    qEstoqueCustoUnidade: TStringField;
    qEstoqueCustoTamanho: TStringField;
    qEstoqueCustoLargura: TStringField;
    mInventarioQtdEntrada: TFloatField;
    mInventarioQtdSaida: TFloatField;
    qEstoqueCustoPercTributacao: TFloatField;
    mInventarioVlrEntrada: TFloatField;
    mInventarioUnidade: TStringField;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    qEstoqueCustoCodGrupo: TIntegerField;
    qEstoqueCustoCodSubGrupo: TIntegerField;
    mInventarioCodGrupo: TIntegerField;
    mInventarioCodSubGrupo: TIntegerField;
    mInventarioNomeGrupo: TStringField;
    mInventarioNomeSubGrupo: TStringField;
    qEstoqueCustoVlrFrete: TFloatField;
    Label3: TLabel;
    CurrencyPagina: TCurrencyEdit;
    Label6: TLabel;
    CurrencyPaginaFinal: TCurrencyEdit;
    BitBtn4: TBitBtn;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    vPercImpostos : Real;
    procedure Monta_SQLqEstoqueCusto;
    procedure Le_qEstoqueCusto;
    procedure Le_tImpostos;
    procedure Le_mInventario;
  public
    { Public declarations }
  end;

var
  fPrevInventario: TfPrevInventario;

implementation

uses UDM1, UEscImpressora, Math, URelInventario, UConsHistMat, URelatorio;

{$R *.DFM}

procedure TfPrevInventario.Le_mInventario;
begin
  ProgressBar2.Max      := mInventario.RecordCount;
  ProgressBar2.Position := 0;

  mInventario.First;
  while not mInventario.Eof do
    begin
      ProgressBar2.Position := ProgressBar2.Position + 1;
      if StrToFloat(FormatFloat('0.00000',mInventarioQtd.AsFloat)) = 0 then
        mInventario.Delete
      else
        begin
          if mInventarioPrecoMedio.AsFloat > 0 then
            begin
              mInventario.Edit;
              mInventarioVlrTotal.AsFloat := StrToFloat(FormatFloat('0.00',mInventarioPrecoMedio.AsFloat * mInventarioQtd.AsFloat));
              mInventario.Post;

              CurrencyEdit1.Value := CurrencyEdit1.Value + mInventarioVlrTotal.AsFloat;
            end;
          mInventario.Next;
        end;
    end;
end;

procedure TfPrevInventario.Le_tImpostos;
begin
  vPercImpostos := 0;
  DM1.tImpostos.First;
  while not DM1.tImpostos.Eof do
    begin
      vPercImpostos := vPercImpostos + DM1.tImpostosPercentual.AsFloat;
      DM1.tImpostos.Next;
    end;
end;

procedure TfPrevInventario.Le_qEstoqueCusto;
var
  vTamAux : String;
  vVlrAux, vBaseAux, vVlrTotal : Real;
  vVlrIcms, vVlrIpi, vVlrImposto : Real;
begin
  DM1.tCor.IndexFieldNames       := 'Codigo';
  DM1.tGrupo.IndexFieldNames     := 'Codigo';
  DM1.tGrupoItem.IndexFieldNames := 'CodGrupo;CodSubGrupo';
  mInventario.EmptyDataSet;

  ProgressBar1.Max      := qEstoqueCusto.RecordCount;
  ProgressBar1.Position := 0;

  qEstoqueCusto.First;
  while not qEstoqueCusto.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      vTamAux := '';
      if qEstoqueCustoTamanho.AsString <> '' then
        vTamAux := qEstoqueCustoTamanho.AsString;
      if mInventario.Locate('Codigo;CodCor;Tamanho;Unidade',VarArrayOf([qEstoqueCustoCodMaterial.AsInteger,qEstoqueCustoCodCor.AsInteger,vTamAux,qEstoqueCustoUnidade.AsString]),[locaseinsensitive]) then
        mInventario.Edit
      else
        begin
          mInventario.Insert;
          mInventarioCodigo.AsInteger     := qEstoqueCustoCodMaterial.AsInteger;
          mInventarioCodCor.AsInteger     := qEstoqueCustoCodCor.AsInteger;
          mInventarioTamanho.AsString     := qEstoqueCustoTamanho.AsString;
          mInventarioNomeProduto.AsString := qEstoqueCustoNome.AsString;
          mInventarioReferencia.AsString  := qEstoqueCustoReferencia.AsString;
          mInventarioUnidade.AsString     := qEstoqueCustoUnidade.AsString;
          if qEstoqueCustoCodCor.AsInteger > 0 then
            if DM1.tCor.Locate('Codigo',qEstoqueCustoCodCor.AsInteger,[loCaseInsensitive]) then
              mInventarioNomeCor.AsString := DM1.tCorNome.AsString;
          if (qEstoqueCustoCodGrupo.AsInteger > 0) and (DM1.tGrupo.FindKey([qEstoqueCustoCodGrupo.AsInteger])) then
            begin
              mInventarioCodGrupo.AsInteger := DM1.tGrupoCodigo.AsInteger;
              mInventarioNomeGrupo.AsString := DM1.tGrupoNome.AsString;
              if DM1.tGrupoItem.FindKey([qEstoqueCustoCodGrupo.AsInteger,qEstoqueCustoCodSubGrupo.AsInteger]) then
                begin
                  mInventarioCodSubGrupo.AsInteger := DM1.tGrupoItemCodSubGrupo.AsInteger;
                  mInventarioNomeSubGrupo.AsString := DM1.tGrupoItemNome.AsString;
                end;
            end;
        end;
      mInventarioPrecoCusto.AsFloat := qEstoqueCustoVlrUnitario.AsFloat;

      if qEstoqueCustoES.AsString = 'E' then
        begin
          vVlrIcms    := 0;
          vVlrIpi     := 0;
          vVlrImposto := 0;

          mInventarioQtdEntrada.AsFloat := mInventarioQtdEntrada.AsFloat + qEstoqueCustoQtd.AsFloat;
          vVlrTotal  := StrToFloat(FormatFloat('0.00',qEstoqueCustoQtd.AsFloat * qEstoqueCustoVlrUnitario.AsFloat));
          vVlrTotal  := vVlrTotal - qEstoqueCustoVlrDesconto.AsFloat;
          vVlrAux    := vVlrTotal; 

          //ICMS
          if qEstoqueCustoPercIcms.AsFloat > 0 then
            begin
              vBaseAux := vVlrTotal;
              if qEstoqueCustoPercTributacao.AsFloat > 0 then
                vBaseAux := StrToFloat(FormatFloat('0.00',vVlrTotal * qEstoqueCustoPercTributacao.AsFloat / 100));
              vVlrIcms := StrToFloat(FormatFloat('0.00',vBaseAux * qEstoqueCustoPercIcms.AsFloat / 100));
            end;
          //Impostos
          if vPercImpostos > 0 then
            vVlrImposto := StrToFloat(FormatFloat('0.00',vVlrTotal * vPercImpostos / 100));
          //IPI
          if  qEstoqueCustoPercIpi.AsFloat > 0 then
            vVlrIpi := StrToFloat(FormatFloat('0.00',vVlrTotal * vPercImpostos / 100));
          vVlrAux := (vVlrAux - vVlrIcms - vVlrImposto - vVlrIpi) + StrToFloat(FormatFloat('0.00',qEstoqueCustoVlrFrete.AsFloat));

          mInventarioVlrEntrada.AsFloat := mInventarioVlrEntrada.AsFloat + vVlrAux;
          mInventarioQtd.AsFloat        := StrToFloat(FormatFloat('0.00000',mInventarioQtd.AsFloat + qEstoqueCustoQtd.AsFloat));
        end;
      if qEstoqueCustoES.AsString = 'S' then
        begin
          mInventarioQtd.AsFloat        := StrToFloat(FormatFloat('0.00000',mInventarioQtd.AsFloat - qEstoqueCustoQtd.AsFloat));
          mInventarioQtdSaida.AsFloat   := StrToFloat(FormatFloat('0.00000',mInventarioQtdSaida.AsFloat + qEstoqueCustoQtd.AsFloat));
        end;
      if (mInventarioVlrEntrada.AsFloat > 0) and (mInventarioQtdEntrada.AsFloat > 0) then
        mInventarioPrecoMedio.AsFloat := StrToFloat(FormatFloat('0.00',mInventarioVlrEntrada.AsFloat / mInventarioQtdEntrada.AsFloat))
      else
        mInventarioPrecoMedio.AsFloat := 0;
      mInventario.Post;

      qEstoqueCusto.Next;
    end;
end;

procedure TfPrevInventario.Monta_SQLqEstoqueCusto;
begin
  qEstoqueCusto.Close;
  qEstoqueCusto.SQL.Clear;
  qEstoqueCusto.SQL.Add('SELECT Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Dbestoquematmov.Largura, Dbestoquematmov.VlrUnitario, Dbestoquematmov.PercIcms, Dbestoquematmov.PercIpi, ');
  qEstoqueCusto.SQL.Add(' Dbestoquematmov.VlrDesconto, Dbestoquematmov.ES, SUM( Dbestoquematmov.Qtd ) Qtd, Dbproduto.Referencia, Dbproduto.Nome, Dbproduto.Unidade, Dbestoquematmov.Tamanho,  ');
  qEstoqueCusto.SQL.Add(' Dbestoquematmov.PercTributacao, Dbproduto.CodGrupo, Dbproduto.CodSubGrupo, dbEstoqueMatMov.VlrFrete ');
  qEstoqueCusto.SQL.Add('FROM "dbEstoqueMatMov.DB" Dbestoquematmov');
  qEstoqueCusto.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qEstoqueCusto.SQL.Add('   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)');
  //qEstoqueCusto.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  //qEstoqueCusto.SQL.Add('   ON  (Dbestoquematmov.CodNatOper = Dbnatoperacao.Codigo)');
  qEstoqueCusto.SQL.Add('WHERE (dbEstoqueMatMov.DtMov <= :DtMov)');
  qEstoqueCusto.SQL.Add('  AND (dbProduto.PosseMat = ''E'')');
  qEstoqueCusto.SQL.Add('  AND (dbProduto.Estoque = True)');
  //qEstoqueCusto.SQL.Add('  AND (dbEstoqueMatMov.TipoMov = ''NTE'')');
  //qEstoqueCusto.SQL.Add('  AND (Dbnatoperacao.GeraDuplicata = TRUE)');
  qEstoqueCusto.ParamByName('DtMov').AsDate := DateEdit1.Date;
  if RxDBLookupCombo1.Text <> '' then
    begin
     qEstoqueCusto.SQL.Add(' AND (dbEstoqueMatMov.Filial = :Filial)');
     qEstoqueCusto.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if not CheckBox1.Checked then
    qEstoqueCusto.SQL.Add(' AND (dbProduto.Inativo = False)');
  case ComboBox1.ItemIndex of
    0 : qEstoqueCusto.SQL.Add(' AND (dbProduto.ProdMat = ''P'')');
    1 : qEstoqueCusto.SQL.Add(' AND (dbProduto.ProdMat = ''M'') AND (dbProduto.MaterialOutros = ''M'') ');
    2 : qEstoqueCusto.SQL.Add(' AND (dbProduto.ProdMat = ''M'') AND (dbProduto.MaterialOutros = ''O'') ');
  end;
  qEstoqueCusto.SQL.Add('GROUP BY Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Dbestoquematmov.Largura, Dbestoquematmov.VlrUnitario, Dbestoquematmov.PercIcms, Dbestoquematmov.PercIpi, ');
  qEstoqueCusto.SQL.Add(' Dbestoquematmov.VlrDesconto, Dbestoquematmov.ES, Dbproduto.Referencia, Dbproduto.Nome, Dbproduto.Unidade, Dbestoquematmov.Tamanho, Dbestoquematmov.PercTributacao, ');
  qEstoqueCusto.SQL.Add(' Dbproduto.CodGrupo, Dbproduto.CodSubGrupo, dbEstoqueMatMov.VlrFrete');
  qEstoqueCusto.SQL.Add('ORDER BY Dbestoquematmov.CodMaterial, Dbestoquematmov.CodCor, Dbestoquematmov.Largura, Dbestoquematmov.ES');
  qEstoqueCusto.Open;
end;

procedure TfPrevInventario.BitBtn6Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelInventario := TfRelInventario.Create(Self);
  fRelInventario.RLReport1.Preview;
  fRelInventario.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfPrevInventario.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qEstoqueCusto.Close;
  DM1.tProduto.Close;
  DM1.tProdutoCor.Close;
  DM1.tCor.Close;
  DM1.tImpostos.Close;
  DM1.tRelatorio.Close;

  Action := Cafree;
end;

procedure TfPrevInventario.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tCor.Open;
  DM1.tImpostos.Open;
  DM1.tGrupo.Open;
  DM1.tGrupoItem.Open;
  DM1.tRelatorio.Open;
end;

procedure TfPrevInventario.BitBtn2Click(Sender: TObject);
begin
  if DateEdit1.Date < 1 then
    begin
      ShowMessage('Falta informar a data de referência!');
      exit;
    end;
  SMDBGrid1.DisableScroll;
  CurrencyEdit1.Clear;
  Le_tImpostos;
  Monta_SQLqEstoqueCusto;
  Le_qEstoqueCusto;
  Le_mInventario;

  DM1.tProduto.IndexFieldNames := 'Nome';
  BitBtn1.SetFocus;
  SMDBGrid1.EnableScroll;
end;

procedure TfPrevInventario.SMDBGrid1DblClick(Sender: TObject);
begin
  fConsHistMat     := TfConsHistMat.Create(Self);
  //fConsHistMat.Tag := 1;
  if mInventarioCodigo.AsInteger > 0 then
    begin
      fConsHistMat.CurrencyEdit1.AsInteger   := mInventarioCodigo.AsInteger;
      fConsHistMat.RxDBLookupCombo4.KeyValue := mInventarioCodigo.AsInteger;
      fConsHistMat.RxDBLookupCombo1.KeyValue := mInventarioCodigo.AsInteger;
      if mInventarioCodCor.AsInteger > 0 then
        begin
          fConsHistMat.RxDBLookupCombo2Enter(Sender);
          fConsHistMat.RxDBLookupCombo2.KeyValue := mInventarioCodCor.AsInteger;
        end;
      if mInventarioTamanho.AsString <> '' then
        fConsHistMat.RxDBLookupCombo3.KeyValue := mInventarioTamanho.AsString;
    end;
  fConsHistMat.ShowModal;
end;

procedure TfPrevInventario.RxDBLookupCombo1Exit(Sender: TObject);
begin
  CurrencyPaginaFinal.AsInteger := 0;
  if (RxDBLookupCombo1.Text <> '') and
     (DM1.tRelatorio.Locate('Filial;NomeRel',VarArrayOf([RxDBLookupCombo1.KeyValue, Name ]),[locaseinsensitive])) then
    CurrencyPagina.AsInteger := DM1.tRelatorioNumUltPagina.AsInteger + 1
  else
    CurrencyPagina.AsInteger := 0;
end;

procedure TfPrevInventario.BitBtn4Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      fRelatorio := TfRelatorio.Create(Self);
      fRelatorio.Le_tRelatorio(RxDBLookupCombo1.KeyValue,CurrencyPagina.AsInteger,CurrencyPaginaFinal.AsInteger,Name);
      fRelatorio.ShowModal;
    end
  else
    ShowMessage('É obrigatório informar a Filial!');
end;

end.
