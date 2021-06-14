unit UConsVale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, CurrEdit, Mask, ToolEdit, RXLookup, Grids,
  DBGrids, Db, DBTables, RXDBCtrl, Variants, SMDBGrid;

type
  TfConsVale = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    qVale: TQuery;
    dsqVale: TDataSource;
    qValeNumVale: TIntegerField;
    qValeDtEmissao: TDateField;
    qValeVlrTotal: TFloatField;
    qValeCodCliente: TIntegerField;
    qValeNome: TStringField;
    qValeFaturado: TBooleanField;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    tValeItens: TTable;
    dsValeItens: TDataSource;
    tValeItensNumVale: TIntegerField;
    tValeItensItem: TIntegerField;
    tValeItensCodProduto: TIntegerField;
    tValeItensCodCor: TIntegerField;
    tValeItensQtd: TFloatField;
    tValeItensUnidade: TStringField;
    tValeItensVlrUnitario: TFloatField;
    tValeItensVlrTotal: TFloatField;
    tValeItensCodSitTrib: TIntegerField;
    tValeItensAliqIcms: TFloatField;
    tValeItensAliqIPI: TFloatField;
    tValeItensNumPedido: TIntegerField;
    tValeItensItemPedido: TIntegerField;
    tValeItensNumMovEst: TIntegerField;
    tValeItenslkReferencia: TStringField;
    tValeItenslkNomeProduto: TStringField;
    tValeItenslkPedidoCliente: TStringField;
    qValeFilial: TIntegerField;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tValeItensFilial: TIntegerField;
    RadioGroup3: TRadioGroup;
    qValeGeraFat: TBooleanField;
    qValeGeraCobranca: TBooleanField;
    BitBtn4: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    Shape1: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsVale: TfConsVale;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsVale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not qVale.IsEmpty then
  begin
    DM1.tVale.IndexFieldNames := 'Filial;NumVale';
    DM1.tVale.SetKey;
    Dm1.tValeFilial.AsInteger  := qValeFilial.AsInteger;
    DM1.tValeNumVale.AsInteger := qValeNumVale.AsInteger;
    DM1.tVale.GotoKey;
  end;
  qVale.Close;
  Action := CaFree;
end;

procedure TfConsVale.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsVale.RadioGroup2Click(Sender: TObject);
begin
  {CurrencyEdit1.Enabled    := False;
  DateEdit1.Enabled        := False;
  RxDBLookupCombo1.Enabled := False;
  case RadioGroup2.ItemIndex of
    0 : CurrencyEdit1.Enabled    := True;
    1 : DateEdit1.Enabled        := True;
    2 : RxDBLookupCombo1.Enabled := True;
  end;}
end;

procedure TfConsVale.BitBtn5Click(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    RadioGroup1.ItemIndex := 2;
  qVale.Close;
  qVale.SQL.Clear;
  qVale.SQL.Add('SELECT Dbvale.Filial, Dbvale.NumVale, Dbvale.DtEmissao, Dbvale.VlrTotal, Dbvale.CodCliente, ');
  qVale.SQL.Add(' Dbcliente.Nome, Dbvale.Faturado, dbVale.GeraFat, dbVale.GeraCobranca ');
  qVale.SQL.Add('FROM "dbVale.db" Dbvale');
  qVale.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qVale.SQL.Add('   ON  (Dbvale.CodCliente = Dbcliente.Codigo)');
  case RadioGroup1.ItemIndex of
    0 : qVale.SQL.Add(' WHERE dbvale.Faturado = False');
    1 : qVale.SQL.Add(' WHERE dbvale.Faturado = True');
    2 : qVale.SQL.Add(' WHERE 0 = 0 ');
  end;
  if CurrencyEdit1.AsInteger > 0 then
  begin
    qVale.SQL.Add(' AND NumVale = :NumVale');
    qVale.ParamByName('NumVale').AsInteger := CurrencyEdit1.AsInteger;
  end;
  if DateEdit1.Date > 10 then
  begin
    qVale.SQL.Add(' AND DtEmissao >= :DtInicial');
    qVale.ParamByName('DtInicial').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 10 then
  begin
    qVale.SQL.Add(' AND DtEmissao >= :DtFinal');
    qVale.ParamByName('DtFinal').AsDate := DateEdit2.Date;
  end;
  if RxDBLookupCombo1.Text <> '' then
  begin
    qVale.SQL.Add('   AND Dbvale.CodCliente = :CodCliente');
    qVale.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if RxDBLookupCombo2.Text <> '' then
  begin
    qVale.SQL.Add('   AND Dbvale.Filial = :C1');
    qVale.ParamByName('C1').AsInteger := RxDBLookupCombo2.KeyValue;
  end;
  if CurrencyEdit1.AsInteger < 1 then
  begin
    case RadioGroup3.ItemIndex of
      0 : qVale.SQL.Add(' AND dbvale.GeraFat = True');
      1 : qVale.SQL.Add(' AND dbvale.GeraCobranca = True');
    end;
  end;
  case RadioGroup2.ItemIndex of
    0 : qVale.SQL.Add('ORDER BY Dbvale.NumVale');
    1 : qVale.SQL.Add('ORDER BY Dbvale.DtEmissao');
    2 : qVale.SQL.Add('ORDER BY Dbcliente.Nome');
  end;
  qVale.Open;
end;

procedure TfConsVale.FormShow(Sender: TObject);
begin
  RxDBLookupCombo2.KeyValue := Dm1.tFilialCodigo.AsInteger;
  BitBtn5Click(Sender);
end;

procedure TfConsVale.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qValeFaturado.AsBoolean then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end
  else
  if qValeGeraCobranca.AsBoolean then
    Background  := clMoneyGreen;
end;

procedure TfConsVale.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) then
    BitBtn5Click(Sender);
end;

procedure TfConsVale.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

end.
