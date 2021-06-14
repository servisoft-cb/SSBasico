unit UConsTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, Grids,
  DBGrids, RXDBCtrl, DB, DBTables;

type
  TfConsTabPreco = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    qTabPreco: TQuery;
    RxDBGrid1: TRxDBGrid;
    dsqTabPreco: TDataSource;
    BitBtn2: TBitBtn;
    qTabPrecolkNomeCor: TStringField;
    qTabPrecoNomeCliente: TStringField;
    qTabPrecoCodProduto: TIntegerField;
    qTabPrecoCodCor: TIntegerField;
    qTabPrecoPreco: TFloatField;
    qTabPrecoDtPreco: TDateField;
    qTabPrecoCodCliente: TIntegerField;
    qTabPrecoReferencia: TStringField;
    qTabPrecoNomeProduto: TStringField;
    qTabPrecoDescMaterial: TStringField;
    qTabPrecoPrecoMObra: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid1TitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Monta_SQL(Item : Integer);
  public
    { Public declarations }
  end;

var
  fConsTabPreco: TfConsTabPreco;

implementation

uses UDM1, UTabPreco;

{$R *.dfm}

procedure TfConsTabPreco.Monta_SQL(Item : Integer);
var
  vSeparador : String;
begin
  qTabPreco.Close;
  qTabPreco.SQL.Clear;
  qTabPreco.SQL.Add('SELECT Dbcliente.Nome NomeCliente, Dbtabpreco.CodProduto, Dbtabpreco.CodCor, Dbtabpreco.Preco, Dbtabpreco.DtPreco,');
  qTabPreco.SQL.Add(' Dbtabpreco.CodCliente, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbproduto.DescMaterial, dbTabPreco.PrecoMObra');
  qTabPreco.SQL.Add('FROM "dbTabPreco.DB" Dbtabpreco');
  qTabPreco.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qTabPreco.SQL.Add('   ON  (Dbtabpreco.CodCliente = Dbcliente.Codigo)');
  qTabPreco.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qTabPreco.SQL.Add('   ON  (Dbtabpreco.CodProduto = Dbproduto.Codigo)');
  vSeparador := 'WHERE';
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qTabPreco.SQL.Add(vSeparador + ' Dbtabpreco.CodProduto = :CodProduto');
      qTabPreco.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
      vSeparador := 'AND';
    end;
  if Edit1.Text <> '' then
    begin
      qTabPreco.SQL.Add(vSeparador + ' Dbcliente.Nome LIKE ''%' + Edit1.Text + '%''');
      vSeparador := 'AND';
    end;
  Case Item of
    0 : qTabPreco.SQL.Add('ORDER BY NomeCliente, dbProduto.Referencia, dbProduto.DescMaterial, dbtabpreco.codcor');
    1 : qTabPreco.SQL.Add('ORDER BY dbProduto.Codigo, dbCliente.Nome, dbtabpreco.codcor');
    2 : qTabPreco.SQL.Add('ORDER BY dbProduto.Referencia, dbProduto.DescMaterial, dbtabpreco.codcor, dbCliente.Nome');
    5 : qTabPreco.SQL.Add('ORDER BY dbTabPreco.Preco, dbProduto.Referencia, dbProduto.DescMaterial, dbtabpreco.codcor, dbCliente.Nome');
    6 : qTabPreco.SQL.Add('ORDER BY dbTabPreco.DtPreco, dbProduto.Referencia, dbProduto.DescMaterial, dbtabpreco.codcor, dbCliente.Nome');
  end;
  qTabPreco.SQL.Text;
  qTabPreco.Open;
end;

procedure TfConsTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTabPreco.Close;
  Action := Cafree;
end;

procedure TfConsTabPreco.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsTabPreco.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsTabPreco.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsTabPreco.RxDBLookupCombo3Change(Sender: TObject);
begin
  Edit1.Text := DM1.tClienteNome.AsString;
end;

procedure TfConsTabPreco.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL(0);
end;

procedure TfConsTabPreco.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      CurrencyEdit1.Value       := DM1.tProdutoCodigo.AsInteger;
      RxDBLookupCombo2.KeyValue := DM1.tProdutoCodigo.AsInteger;
    end
  else
    begin
      CurrencyEdit1.Clear;
      RxDBLookupCombo2.ClearValue;
    end;
end;

procedure TfConsTabPreco.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      CurrencyEdit1.Value       := DM1.tProdutoCodigo.AsInteger;
      RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
    end
  else
    begin
      CurrencyEdit1.Clear;
      RxDBLookupCombo1.ClearValue;
    end;
end;

procedure TfConsTabPreco.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.Value > 0 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo2.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        ShowMessage('Código não cadastrado!');
    end;
end;

procedure TfConsTabPreco.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsTabPreco.RxDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  Case Column.Index of
    0 : Monta_SQL(0);
    1 : Monta_SQL(1);
    2 : Monta_SQL(2);
    5 : Monta_SQL(5);
    6 : Monta_SQL(6);
  end;

  Column.Color := clInfoBK;
  for i := 0 to RxDBGrid1.Columns.Count - 1 do
    if not (RxDBGrid1.Columns.Items[I] = Column) then
      RxDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfConsTabPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F5 then
    BitBtn1Click(Sender);
end;

end.
