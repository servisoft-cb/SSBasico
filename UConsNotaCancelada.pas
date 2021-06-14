unit UConsNotaCancelada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, Grids, DBGrids, SMDBGrid, DB,
  DBTables, RxLookup;

type
  TfConsNotaCancelada = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qNota: TQuery;
    qNotaFilial: TIntegerField;
    qNotaNumNota: TIntegerField;
    qNotaCodCli: TIntegerField;
    qNotaNomeCliente: TStringField;
    qNotaDtEmissao: TDateField;
    qNotaCodNatOper: TSmallintField;
    qNotaVlrTotalNota: TFloatField;
    qNotaBaseIcms: TFloatField;
    qNotaVlrTotalItens: TFloatField;
    qNotaVlrIpi: TFloatField;
    qNotaVlrIcms: TFloatField;
    qNotaVlrFrete: TFloatField;
    qNotaVlrSeguro: TFloatField;
    qNotaMotivoCanc: TStringField;
    qNotaVlrTotalDupl: TFloatField;
    dsqNota: TDataSource;
    qNotalkFilial: TStringField;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    ComboBox1: TComboBox;
    qNotaCancelada: TBooleanField;
    qNotaNFeDenegada: TBooleanField;
    qNotaNFeMotivoDenegada: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vSql : String;
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsNotaCancelada: TfConsNotaCancelada;

implementation

uses UDM2, URelNotaCancelada;

{$R *.dfm}

procedure TfConsNotaCancelada.Monta_SQL;
begin
  qNota.Close;
  qNota.SQL.Clear;
  qNota.SQL.Add(vSql);

  case ComboBox1.ItemIndex of
    0 : qNota.SQL.Add(' WHERE (Dbnotafiscal.Cancelada = TRUE ) ');
    1 : qNota.SQL.Add(' WHERE (Dbnotafiscal.NFeDenegada = TRUE ) ');
    2 : qNota.SQL.Add(' WHERE (Dbnotafiscal.Cancelada = TRUE ) OR (Dbnotafiscal.NFeDenegada = TRUE )');
  end;
  if DateEdit1.Date > 0 then
  begin
    qNota.SQL.Add(' AND (dbNotaFiscal.DtEmissao >= :DtInicial) ');
    qNota.ParamByName('DtInicial').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 0 then
  begin
    qNota.SQL.Add(' AND (dbNotaFiscal.DtEmissao <= :DtFinal) ');
    qNota.ParamByName('DtFinal').AsDate := DateEdit2.Date;
  end;
  if RxDBLookupCombo1.Text <> '' then
    qNota.SQL.Add(' AND DBNOTAFISCAL.Filial = ' + RxDBLookupCombo1.KeyValue);

  qNota.SQL.Add('ORDER BY dbNotaFiscal.Filial, dbNotaFiscal.NumNota');
  qNota.Open;
end;

procedure TfConsNotaCancelada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qNota.Close;
  dm2.tFilial2.Close;
  Action := Cafree;
end;

procedure TfConsNotaCancelada.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaCancelada.FormShow(Sender: TObject);
begin
  dm2.tFilial2.Open;
  vSql := qNota.SQL.Text;
end;

procedure TfConsNotaCancelada.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsNotaCancelada.BitBtn2Click(Sender: TObject);
begin
  fRelNotaCancelada := TfRelNotaCancelada.Create(Self);
  fRelNotaCancelada.RLReport1.Preview;
  fRelNotaCancelada.RLReport1.Free;
  FreeAndNil(fRelNotaCancelada);
end;

end.
