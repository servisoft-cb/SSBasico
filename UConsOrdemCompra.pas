unit UConsOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, CurrEdit, StdCtrls, Mask, ToolEdit, RXLookup, Buttons,
  ExtCtrls, RXDBCtrl, ALed, db, dbTables, DBCtrls;

type
  TfConsOrdemCompra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxDBGrid1: TRxDBGrid;
    ALed3: TALed;
    Label4: TLabel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsOrdemCompra: TfConsOrdemCompra;

implementation

uses UDM1, UConsPedidoNota;

{$R *.DFM}

procedure TfConsOrdemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsOrdemCompra.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsOrdemCompra.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tOrdemCompra.IndexFieldNames  := 'Filial;CodFornecedor';
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
  DateEdit1.Clear;
  CurrencyEdit1.Clear;
end;

procedure TfConsOrdemCompra.DateEdit1Enter(Sender: TObject);
begin
  DM1.tOrdemCompra.IndexFieldNames := 'Filial;DtEmissao';
  RxDBLookupCombo1.ClearValue;
  CurrencyEdit1.Clear;
end;

procedure TfConsOrdemCompra.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  DM1.tOrdemCompra.FindKey([RxDBLookupCombo2.KeyValue,DM1.tFornecedoresCodForn.AsInteger])
end;

procedure TfConsOrdemCompra.DateEdit1Change(Sender: TObject);
begin
  DM1.tOrdemCompra.FindKey([RxDBLookupCombo2.KeyValue,DateEdit1.Date])
end;

procedure TfConsOrdemCompra.CurrencyEdit1Enter(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  DateEdit1.Clear;
  DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
end;

procedure TfConsOrdemCompra.CurrencyEdit1Change(Sender: TObject);
begin
  try
    DM1.tOrdemCompra.FindKey([RxDBLookupCombo2.KeyValue,CurrencyEdit1.Value]);
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfConsOrdemCompra.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tOrdemCompraEntregue.AsBoolean then
    BackGround := $006FDD00;
end;

procedure TfConsOrdemCompra.FormShow(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue := Dm1.tFilialCodigo.AsInteger;
end;

procedure TfConsOrdemCompra.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text = '' then
    begin
      ShowMessage('Deve haver filial selecionada!');
      RxDBLookupCombo2.SetFocus;
    end;
end;

end.
