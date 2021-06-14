unit UConsMaterialFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons, DBFilter,
  DB, DBTables, Grids, DBGrids, SMDBGrid;

type
  TfConsMaterialFicha = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBFilter1: TRxDBFilter;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qCor: TQuery;
    qCorNome: TStringField;
    qCorCodCor: TIntegerField;
    dsqCor: TDataSource;
    SMDBGrid1: TSMDBGrid;
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaReferencia: TStringField;
    qConsultaCodProduto: TIntegerField;
    qConsultaCodCorProd: TIntegerField;
    qConsultaNomeProduto: TStringField;
    qConsultaNomeCorProduto: TStringField;
    qConsultaCodMaterial: TIntegerField;
    qConsultaCodCorMaterial: TIntegerField;
    qConsultaInativo: TBooleanField;
    tProduto2: TTable;
    tProduto2Codigo: TIntegerField;
    tProduto2CodGrupo: TIntegerField;
    tProduto2CodSubGrupo: TIntegerField;
    tProduto2Referencia: TStringField;
    tProduto2Nome: TStringField;
    tProduto2ProdMat: TStringField;
    tProduto2Inativo: TBooleanField;
    dsProduto2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsMaterialFicha: TfConsMaterialFicha;

implementation

uses UDM1, UProduto, UDM2;

{$R *.dfm}

procedure TfConsMaterialFicha.Monta_SQL;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbproduto.Referencia, Dbproduto.Codigo CodProduto, Dbprodutomat.CodCorProd, Dbproduto.Nome NomeProduto, ');
  qConsulta.SQL.Add(' Dbcor.Nome NomeCorProduto, Dbprodutomat.CodMaterial, Dbprodutomat.CodCor CodCorMaterial, dbProduto.Inativo');
  qConsulta.SQL.Add('FROM "dbProduto.DB" Dbproduto');
  qConsulta.SQL.Add('   INNER JOIN "dbProdutoMat.DB" Dbprodutomat');
  qConsulta.SQL.Add('   ON  (Dbproduto.Codigo = Dbprodutomat.CodProduto)');
  qConsulta.SQL.Add('   FULL JOIN "Dbcor.DB" Dbcor');
  qConsulta.SQL.Add('   ON  (Dbprodutomat.CodCorProd = Dbcor.Codigo)');
  qConsulta.SQL.Add('WHERE  (DbprodutoMat.CodMaterial = :CodMaterial)');
  qConsulta.ParamByName('CodMaterial').AsInteger := CurrencyEdit1.AsInteger;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qConsulta.SQL.Add('  AND  (dbProdutoMat.CodCor = :CodCorMaterial)');
      qConsulta.ParamByName('CodCorMaterial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qConsulta.SQL.Add('ORDER BY dbProduto.Nome, dbProduto.Codigo');
  qConsulta.Open;
end;

procedure TfConsMaterialFicha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qCor.Close;
  qConsulta.Close;
  if Screen.FormCount < 3 then
    begin
      DM1.tProduto.Close;
      DM1.tProdutoMat.Close;
      DM1.tProdutoComb.Close;
      DM1.tProdutoCor.Close;
      DM1.tCor.Close;
    end;
  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfConsMaterialFicha.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMaterialFicha.RxDBLookupCombo1Enter(Sender: TObject);
begin
  tProduto2.IndexFieldNames := 'Nome';
end;

procedure TfConsMaterialFicha.FormShow(Sender: TObject);
begin
  DM1.tProduto.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoCor.Open;
  DM1.tCor.Open;
  tProduto2.Open;
  RxDBFilter1.Active := True;
end;

procedure TfConsMaterialFicha.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := CurrencyEdit1.AsInteger;
end;

procedure TfConsMaterialFicha.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    CurrencyEdit1.AsInteger := RxDBLookupCombo1.KeyValue;
end;

procedure TfConsMaterialFicha.RxDBLookupCombo2Enter(Sender: TObject);
begin
  qCor.Close;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qCor.Params[0].AsInteger := CurrencyEdit1.AsInteger;
      qCor.Open;
    end;
end;

procedure TfConsMaterialFicha.BitBtn1Click(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    Monta_SQL
  else
    ShowMessage('Não foi informado o material!');
  CurrencyEdit1.SetFocus;
end;

procedure TfConsMaterialFicha.SMDBGrid1DblClick(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  vCodProdutoPos := qConsultaCodProduto.AsInteger;
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  RxDBFilter1.Active := True;
  tProduto2.IndexFieldNames := 'Nome';
end;

procedure TfConsMaterialFicha.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qConsultaInativo.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

end.
