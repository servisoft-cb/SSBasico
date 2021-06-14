unit UConsNotaEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, CurrEdit, Mask, ToolEdit, RXLookup, Grids,
  DBGrids, Db, DBTables;

type
  TfConsNotaEnt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qNEntrada: TQuery;
    qsNEntrada: TDataSource;
    qNEntradaFilial: TIntegerField;
    qNEntradaNumNEntr: TIntegerField;
    qNEntradaCodForn: TIntegerField;
    qNEntradaSerie: TStringField;
    qNEntradaNumOC: TIntegerField;
    qNEntradaCondPgto: TStringField;
    qNEntradaDtEmissaoNEntr: TDateField;
    qNEntradaDtEntrada: TDateField;
    qNEntradaVlrTotalNEntr: TFloatField;
    qNEntradaBaseIcms: TFloatField;
    qNEntradaVlrIcms: TFloatField;
    qNEntradaVlrIpi: TFloatField;
    qNEntradaCodNatOper: TSmallintField;
    qNEntradaCodNatOper2: TIntegerField;
    qNEntradaIcmsIpi: TBooleanField;
    qNEntradaPlanoContas: TIntegerField;
    qNEntradaNroDuplicata: TIntegerField;
    qNEntradaOutrasDesp: TFloatField;
    qNEntradaTotalParcelas: TIntegerField;
    qNEntradaObsPagamento: TMemoField;
    qNEntradaNroFatura: TIntegerField;
    qNEntradaDtFatura: TDateField;
    qNEntradaDevolvida: TBooleanField;
    qNEntradaCodAtelier: TIntegerField;
    qNEntradaDevolucao: TBooleanField;
    qNEntradaModelo: TIntegerField;
    qNEntradaCodCondPagto: TIntegerField;
    qNEntradalkNomeForn: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsNotaEnt: TfConsNotaEnt;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsNotaEnt.MOnta_SQL;
begin
  qNEntrada.Close;
  qNEntrada.SQL.Clear;
  qNEntrada.SQL.Add('SELECT *');
  qNEntrada.SQL.Add('FROM "dbNEntrada.DB" Dbnentrada');
  qNEntrada.SQL.Add('WHERE Filial = :Filial');
  qNEntrada.Params[0].AsInteger := RxDBLookupCombo2.KeyValue;
end;

procedure TfConsNotaEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dm1.tNEntrada.IndexFieldNames := 'Filial;NumNEntr;CodForn';
  Dm1.tNEntrada.SetKey;
  Dm1.tNEntradaFilial.AsInteger   := qNEntradaFilial.AsInteger;
  Dm1.tNEntradaNumNEntr.AsInteger := qNEntradaNumNEntr.AsInteger;
  Dm1.tNEntradaCodForn.AsInteger  := qNEntradaCodForn.AsInteger;
  Dm1.tNEntrada.GotoKey;
  Action := CaFree;
end;

procedure TfConsNotaEnt.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaEnt.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
  DateEdit1.Clear;
  CurrencyEdit1.Clear;
  Monta_SQL;
  qNEntrada.SQL.Add('ORDER BY CodForn, DtEntrada');
  qNEntrada.Open;
end;

procedure TfConsNotaEnt.DateEdit1Enter(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
  Monta_SQL;
  qNEntrada.SQL.Add('ORDER BY DtEntrada, CodForn');
  qNEntrada.Open;
end;

procedure TfConsNotaEnt.CurrencyEdit1Enter(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  Monta_SQL;
  qNEntrada.SQL.Add('ORDER BY NumNEntr');
  qNEntrada.Open;
end;

procedure TfConsNotaEnt.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  qNEntrada.Locate('CodForn',DM1.tFornecedoresCodForn.AsInteger,([LocaseInsensitive]))
end;

procedure TfConsNotaEnt.CurrencyEdit1Change(Sender: TObject);
begin
  qNEntrada.Locate('NumNEntr',CurrencyEdit1.Value,([LocaseInsensitive]))
end;

procedure TfConsNotaEnt.DateEdit1Change(Sender: TObject);
begin
  qNEntrada.Locate('DtEntrada',DateEdit1.Date,([LocaseInsensitive]))
end;

procedure TfConsNotaEnt.FormShow(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue := Dm1.tFilialCodigo.AsInteger;
end;

end.
