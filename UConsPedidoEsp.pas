unit UConsPedidoEsp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, CurrEdit, Mask, ToolEdit, RxLookup, Grids, DBGrids,
  RXDBCtrl, Db, DBTables, Buttons;

type
  TfConsPedidoEsp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBGrid1: TRxDBGrid;
    qPedidoEsp: TQuery;
    dsPedidoEsp: TDataSource;
    qPedidoEspNumPed: TIntegerField;
    qPedidoEspDtEmissao: TDateField;
    qPedidoEspNotaPedido: TStringField;
    qPedidoEspVlrTotal: TFloatField;
    qPedidoEspGeraContas: TBooleanField;
    qPedidoEspNome: TStringField;
    BitBtn4: TBitBtn;
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure BitBtn4Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedidoEsp: TfConsPedidoEsp;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsPedidoEsp.RxDBLookupCombo1Enter(Sender: TObject);
begin
  qPedidoEsp.Active := False;
  qPedidoEsp.SQL.Clear;
  qPedidoEsp.SQL.Add('SELECT Dbpedidoesp.NumPed, Dbpedidoesp.DtEmissao, Dbpedidoesp.NotaPedido, Dbpedidoesp.VlrTotal, Dbpedidoesp.GeraContas, Dbcliente.Nome');
  qPedidoEsp.SQL.Add('FROM "dbPedidoEsp.DB" Dbpedidoesp');
  qPedidoEsp.SQL.Add('   INNER JOIN "DBCLIENTE.DB" Dbcliente');
  qPedidoEsp.SQL.Add('   ON  (Dbpedidoesp.CodCliente = Dbcliente.Codigo)');
  qPedidoEsp.SQL.Add('ORDER BY Dbcliente.Nome');
  qPedidoEsp.Active := True;
end;

procedure TfConsPedidoEsp.DateEdit1Enter(Sender: TObject);
begin
  qPedidoEsp.Active := False;
  qPedidoEsp.SQL.Clear;
  qPedidoEsp.SQL.Add('SELECT Dbpedidoesp.NumPed, Dbpedidoesp.DtEmissao, Dbpedidoesp.NotaPedido, Dbpedidoesp.VlrTotal, Dbpedidoesp.GeraContas, Dbcliente.Nome');
  qPedidoEsp.SQL.Add('FROM "dbPedidoEsp.DB" Dbpedidoesp');
  qPedidoEsp.SQL.Add('   INNER JOIN "DBCLIENTE.DB" Dbcliente');
  qPedidoEsp.SQL.Add('   ON  (Dbpedidoesp.CodCliente = Dbcliente.Codigo)');
  qPedidoEsp.SQL.Add('ORDER BY Dbpedidoesp.DtEmissao');
  qPedidoEsp.Active := True;
end;

procedure TfConsPedidoEsp.CurrencyEdit1Enter(Sender: TObject);
begin
  qPedidoEsp.Active := False;
  qPedidoEsp.SQL.Clear;
  qPedidoEsp.SQL.Add('SELECT Dbpedidoesp.NumPed, Dbpedidoesp.DtEmissao, Dbpedidoesp.NotaPedido, Dbpedidoesp.VlrTotal, Dbpedidoesp.GeraContas, Dbcliente.Nome');
  qPedidoEsp.SQL.Add('FROM "dbPedidoEsp.DB" Dbpedidoesp');
  qPedidoEsp.SQL.Add('   INNER JOIN "DBCLIENTE.DB" Dbcliente');
  qPedidoEsp.SQL.Add('   ON  (Dbpedidoesp.CodCliente = Dbcliente.Codigo)');
  qPedidoEsp.SQL.Add('ORDER BY Dbpedidoesp.NumPed');
  qPedidoEsp.Active := True;
end;

procedure TfConsPedidoEsp.BitBtn4Exit(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoEsp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tPedidoEsp.IndexFieldNames := 'NumPed';
  DM1.tPedidoEsp.FindKey([qPedidoEspNumPed.AsInteger]);
  Action := Cafree;
end;

procedure TfConsPedidoEsp.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoEsp.CurrencyEdit1Change(Sender: TObject);
begin
  qPedidoEsp.Locate('NumPed',CurrencyEdit1.AsInteger,[loCaseInsensitive])
end;

procedure TfConsPedidoEsp.RxDBLookupCombo1Change(Sender: TObject);
begin
  qPedidoEsp.Locate('Nome',RxDBLookupCombo1.Text,[loCaseInsensitive])
end;

procedure TfConsPedidoEsp.DateEdit1Change(Sender: TObject);
begin
  qPedidoEsp.Locate('DtEmissao',DateEdit1.Date,[loCaseInsensitive])
end;

end.
