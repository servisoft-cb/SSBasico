unit UClienteConsHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons,
  RxLookup, ExtCtrls, RzCmboBx, RzDBCmbo, Mask, ToolEdit, DBCtrls;

type
  TfClienteConsHistorico = class(TForm)
    StaticText1: TStaticText;
    qClientes: TQuery;
    dsqClientes: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    RxDBLookupCombo6: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    Label12: TLabel;
    DateEdit2: TDateEdit;
    Label13: TLabel;
    DateEdit3: TDateEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    BitBtn6: TBitBtn;
    qHistCliente: TQuery;
    qHistClienteNomeCliente: TStringField;
    dsqHistCliente: TDataSource;
    qClientesNumMov: TIntegerField;
    qClientesCodCliente: TIntegerField;
    qClientesNomeCliente: TStringField;
    qClientesDtHistorico: TDateField;
    qClientesObs: TMemoField;
    qClientesResponsavel: TStringField;
    qClientesFilial: TIntegerField;
    qClientesCodHistorico: TIntegerField;
    qClientesNomeHistorico: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    vSQLClientes : String;

    procedure Monta_SQLClientes;

  public
    { Public declarations }
  end;

var
  fClienteConsHistorico: TfClienteConsHistorico;

implementation

uses UDM1, UDM2, URelHistCliente2;

{$R *.dfm}

procedure TfClienteConsHistorico.Monta_SQLClientes;
begin
  qClientes.Close;
  qClientes.SQL.Clear;
  qClientes.SQL.Text := vSQLClientes;
  if RxDBLookupCombo6.Text <> '' then
    begin
      qClientes.SQL.Add('   AND  (dbHistCliente.NomeCliente = :NomeCliente)');
      qClientes.ParamByName('NomeCliente').AsString := RxDBLookupCombo6.Text;
    end;
  if DateEdit2.Date > 0 then
    begin
      qClientes.SQL.Add('   AND  (dbHistCliente.DtHistorico >= :Data1) ');
      qClientes.ParamByName('Data1').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qClientes.SQL.Add('   AND  (dbHistCliente.DtHistorico <= :Data2) ');
      qClientes.ParamByName('Data2').AsDate := DateEdit3.Date;       
    end;
  qClientes.SQL.Add('ORDER BY dbHistCliente.NomeCliente, dbHistCliente.DtHistorico ');
  qClientes.Open;
end;

procedure TfClienteConsHistorico.BitBtn1Click(Sender: TObject);
begin
  Monta_SQLClientes;
end;

procedure TfClienteConsHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qHistCliente.Close;
  qClientes.Close;
  Action := Cafree;
end;

procedure TfClienteConsHistorico.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
  RxDBLookupCombo6.SetFocus;

  vSQLClientes := qClientes.SQL.Text;
  if not DM1.tHistCliente.Active then
    DM1.tHistCliente.Open;
end;

procedure TfClienteConsHistorico.SMDBGrid1DblClick(Sender: TObject);
begin
  if Tag <> 1 then
    if qClientesNumMov.AsInteger > 0 then
      DM1.tHistCliente.Locate('NumMov',qClientesNumMov.AsInteger,[loCaseInsensitive]);
  Close;
end;

procedure TfClienteConsHistorico.SMDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if qClientesNumMov.AsInteger > 0 then
        DM1.tHistCliente.Locate('NumMov',qClientesNumMov.AsInteger,[loCaseInsensitive]);
      Key := #0;
      Close;
    end;
end;

procedure TfClienteConsHistorico.BitBtn7Click(Sender: TObject);
begin
  fRelHistCliente2 := TfRelHistCliente2.Create(Self);
  fRelHistCliente2.RLReport1.Preview;
  Screen.Cursor   := crDefault;
  fRelHistCliente2.RLReport1.Free;
  FreeAndNil(fRelHistCliente2);
end;

procedure TfClienteConsHistorico.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfClienteConsHistorico.FormCreate(Sender: TObject);
begin
  qHistCliente.Open;
end;

end.
