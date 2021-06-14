unit UConsUltCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Grids, DBGrids, SMDBGrid, ExtCtrls, Mask,
  ToolEdit, DB, DBTables, DBClient, Buttons;

type
  TfConsUltCompras = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    qNotas: TQuery;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Label5: TLabel;
    qNotasFilial: TIntegerField;
    qNotasNumMov: TIntegerField;
    qNotasCodMaterial: TIntegerField;
    qNotasDtMov: TDateField;
    qNotasNomeMaterial: TStringField;
    qNotasCodCor: TIntegerField;
    qNotasTipoMov: TStringField;
    qNotasNumNota: TIntegerField;
    qNotasVlrUnitario: TFloatField;
    qNotasQtd: TFloatField;
    qNotasVlrDesconto: TFloatField;
    qNotasPercIpi: TFloatField;
    qNotasUnidade: TStringField;
    qNotasTamanho: TStringField;
    qNotasVlrFrete: TFloatField;
    qNotasNomeForn: TStringField;
    qNotasCodForn: TIntegerField;
    dsqNotas: TDataSource;
    qNotaslkNomeCor: TStringField;
    BitBtn2: TBitBtn;
    qNotasclVlrTotal: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure qNotasCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsUltCompras: TfConsUltCompras;

implementation

uses UDM1, URelUltCompras, UNotaEntrada;

{$R *.dfm}

procedure TfConsUltCompras.Monta_SQL;
begin
  qNotas.Close;
  qNotas.SQL.Clear;
  qNotas.SQL.Add('SELECT Dbfornecedores.NomeForn, Dbfornecedores.CodForn, Dbestoquematmov.Filial, Dbestoquematmov.NumMov, ');
  qNotas.SQL.Add(' Dbestoquematmov.CodMaterial, Dbestoquematmov.DtMov, Dbproduto.Nome NomeMaterial, Dbestoquematmov.CodCor, ');
  qNotas.SQL.Add(' Dbestoquematmov.TipoMov, Dbestoquematmov.NumNota, Dbestoquematmov.VlrUnitario, Dbestoquematmov.Qtd, ');
  qNotas.SQL.Add(' Dbestoquematmov.VlrDesconto, Dbestoquematmov.PercIpi, Dbestoquematmov.Unidade, Dbestoquematmov.Tamanho, Dbestoquematmov.VlrFrete ');
  qNotas.SQL.Add('FROM "dbEstoqueMatMov.DB" Dbestoquematmov');
  qNotas.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qNotas.SQL.Add('   ON  (Dbestoquematmov.CodMaterial = Dbproduto.Codigo)');
  qNotas.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qNotas.SQL.Add('   ON  (Dbestoquematmov.CodCliForn = Dbfornecedores.CodForn)');
  qNotas.SQL.Add('WHERE (dbEstoqueMatMov.TipoMov = ''NTE'')');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qNotas.SQL.Add('  AND (dbEstoqueMatMov.Filial = :Filial) ' );
      qNotas.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qNotas.SQL.Add('  AND (dbFornecedores.CodForn = :CodForn) ' );
      qNotas.ParamByName('CodForn').AsInteger := RxDBLookupCombo2.KeyValue;
    end
  else
    begin
      qNotas.SQL.Add(' AND (dbFornecedores.FornecedorOutros = ''F'')');
      qNotas.SQL.Add(' AND (dbProduto.PosseMat = ''E'')');
    end;
  if DateEdit1.Date > 0 then
    begin
      qNotas.SQL.Add(' AND (dbEstoqueMatMov.DtMov >= :DtInicial) ');
      qNotas.ParamByName('DtInicial').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qNotas.SQL.Add(' AND (dbEstoqueMatMov.DtMov <= :DtFinal) ');
      qNotas.ParamByName('DtFinal').AsDate := DateEdit2.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qNotas.SQL.Add('ORDER BY Dbestoquematmov.DtMov, Dbestoquematmov.NumNota, dbFornecedores.NomeForn, dbProduto.Nome');
    1 : qNotas.SQL.Add('ORDER BY Dbestoquematmov.NumNota, dbFornecedores.NomeForn, Dbestoquematmov.DtMov, dbProduto.Nome');
    2 : qNotas.SQL.Add('ORDER BY dbFornecedores.NomeForn, Dbestoquematmov.NumNota, Dbestoquematmov.DtMov, dbProduto.Nome');
    3 : qNotas.SQL.Add('ORDER BY dbProduto.Nome, dbFornecedores.NomeForn, Dbestoquematmov.NumNota, Dbestoquematmov.DtMov');
  end;
  qNotas.Open;
end;

procedure TfConsUltCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qNotas.Close;
  Dm1.tOrdemCompraItemGrade.Close;
  Dm1.tCondPgtoItem.Close;
  Dm1.tCPagar.Close;
  Dm1.tCPagarParc.Close;
  Dm1.tCPagarParcHist.Close;
  Dm1.tMaoDeObra.Close;
  Dm1.tOrdemCompra.Close;
  Dm1.tOrdemCompraItem.Close;
  DM1.tNEntrada.Close;
  DM1.tNEntradaItens.Close;
  DM1.tNEntradaItensGrade.Close;
  DM1.tNEntradaItensMobra.Close;
  DM1.tNEntradaParc.Close;
  DM1.tNEntradaNDevolvida.Close;

  DM1.tFornecedores.Close;
  DM1.tProduto.Close;
  Dm1.tProdutoCor.Close;
  DM1.tProdutoCli.Close;
  DM1.tProdutoConsumo.Close;
  DM1.tProdutoConsumoItem.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoTam.Close;

  DM1.tEstoqueMatMov.Close;
  DM1.tCondPgto.Close;
  DM1.tCondPgto2.Close;

  DM1.tNatOperacao.Close;
  DM1.tPlanoContas.Close;
  DM1.tPlanoContasItens.Close;
  DM1.tTabPreco.Close;

  DM1.tNotaFiscal.Close;
  DM1.tNotaFiscalItens.Close;

  DM1.tUnidade.Close;

  Action := Cafree;
end;

procedure TfConsUltCompras.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsUltCompras.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tFilial.Open;
  DM1.tCor2.Open;
  DM1.tFornecedores.Open;
end;

procedure TfConsUltCompras.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfConsUltCompras.qNotasCalcFields(DataSet: TDataSet);
begin
  qNotasclVlrTotal.AsFloat := StrToFloat(FormatFloat('0.00',(qNotasVlrUnitario.AsFloat - qNotasVlrDesconto.AsFloat + qNotasVlrFrete.AsFloat) * qNotasQtd.AsFloat));
end;

procedure TfConsUltCompras.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelUltCompras := TfRelUltCompras.Create(Self);
  fRelUltCompras.RLReport1.Preview;
  fRelUltCompras.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsUltCompras.SMDBGrid1DblClick(Sender: TObject);
begin
  {if qNotasNumNota.AsInteger > 0 then
    begin
      vNumNotaEntPos := qNotasNumNota.AsInteger;
      vCodFornPos    := qNotasCodForn.AsInteger;
      DM1.tFilial.Locate('Codigo',qNotasFilial.AsInteger,[loCaseInsensitive]);
      fNotaEntrada := TfNotaEntrada.Create(Self);
      fNotaEntrada.ShowModal;
    end;}
end;

end.
