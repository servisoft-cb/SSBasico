unit UPrevCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Db, DBTables, RxLookup;

type
  TfPrevCheque = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qCheque: TQuery;
    qsCheque: TDataSource;
    qChequeNomeConta: TStringField;
    qChequeNumCheque: TIntegerField;
    qChequeDtEmissao: TDateField;
    qChequeVlrTotal: TFloatField;
    qChequeDtEntrada: TDateField;
    qChequeDtPrevista: TDateField;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qChequeNominal: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevCheque: TfPrevCheque;

implementation

uses URelCheque, UDM1;

{$R *.DFM}

procedure TfPrevCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevCheque.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevCheque.BitBtn2Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
end;

procedure TfPrevCheque.BitBtn1Click(Sender: TObject);
begin
  if ((RadioGroup1.ItemIndex = 0)) or ((RadioGroup1.ItemIndex = 1) and (DateEdit1.Date > 1) and (DateEdit2.Date > 1)) then
    begin
      qCheque.Close;
      qCheque.SQL.Clear;
      qCheque.SQL.Add('SELECT Dbcontas.NomeConta, Dbcheque.NumCheque, Dbcheque.DtEmissao, Dbcheque.VlrTotal, Dbcheque.DtEntrada, Dbcheque.DtPrevista, Dbcheque.Nominal');
      qCheque.SQL.Add('FROM "dbCheque.db" Dbcheque');
      qCheque.SQL.Add('   INNER JOIN "dbContas.DB" Dbcontas');
      qCheque.SQL.Add('   ON  (Dbcheque.CodConta = Dbcontas.CodConta)');
      if RadioGroup1.ItemIndex = 0 then
        qCheque.SQL.Add('WHERE (Dbcheque.DtEntrada Is Null)')
      else
        begin
          qCheque.SQL.Add('WHERE (Dbcheque.DtEntrada Between :D1 and :D2)');
          qCheque.ParamByName('D1').AsDate := DateEdit1.Date;
          qCheque.ParamByName('D2').AsDate := DateEdit2.Date;
        end;
      if RxDBLookupCombo1.Text <> '' then
        begin
          qCheque.SQL.Add(' AND (dbCheque.CodConta = :CodConta)');
          qCheque.ParamByName('CodConta').AsInteger := RxDBLookupCombo1.KeyValue;
        end;
      qCheque.SQL.Add('ORDER BY dbContas.NomeConta, dbcheque.DtPrevista');
      qCheque.Open;
      fRelCheque := TfRelCheque.Create(Self);
//      fRelCheque.QuickRep1.Preview;
//      fRelCheque.QuickRep1.Free;
      fRelCheque.RLReport1.Preview();
    end
  else
    ShowMessage('Data Inicial e data final não podem ser vazias!');    
end;

procedure TfPrevCheque.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          DateEdit1.Enabled := False;
          DateEdit2.Enabled := False;
          DateEdit1.Clear;
          DateEdit2.Clear;
        end;
    1 : begin
          DateEdit1.Enabled := True;
          DateEdit2.Enabled := True;
        end;
  end;
end;

procedure TfPrevCheque.FormShow(Sender: TObject);
begin
  dm1.tContas.Open;
  dm1.tContas.IndexFieldNames := 'NOMECONTA';
  RadioGroup1Click(Sender);
end;

end.
