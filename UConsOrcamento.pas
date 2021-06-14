unit UConsOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, Db, DBTables, Grids, DBGrids, RXDBCtrl,
  ExtCtrls, Buttons, ALed, RxLookup, DBCtrls;

type
  TfConsOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    qOrcamento: TQuery;
    qsOrcamento: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ALed1: TALed;
    ALed2: TALed;
    Label4: TLabel;
    Label5: TLabel;
    ALed3: TALed;
    Label12: TLabel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qOrcamentoNumOrcamento: TIntegerField;
    qOrcamentoData: TDateField;
    qOrcamentoCodCliente: TIntegerField;
    qOrcamentoNomeCliente: TStringField;
    qOrcamentoNomeContato: TStringField;
    qOrcamentoNomeCia: TStringField;
    qOrcamentoQtdDiasValidade: TIntegerField;
    qOrcamentoPrazoPagto: TStringField;
    qOrcamentoVlrTotal: TFloatField;
    qOrcamentoCodVendedor: TIntegerField;
    qOrcamentolkNomeVendedor: TStringField;
    RxDBGrid2: TRxDBGrid;
    tOrcamentoItens: TTable;
    dsOrcamentoItens: TDataSource;
    tOrcamentoItensNumOrcamento: TIntegerField;
    tOrcamentoItensItem: TIntegerField;
    tOrcamentoItensReferencia: TStringField;
    tOrcamentoItensNomeProduto: TStringField;
    tOrcamentoItensVlrUnitario: TFloatField;
    tOrcamentoItensComMatriz: TBooleanField;
    tOrcamentoItensQtd: TFloatField;
    tOrcamentoItensVlrTotal: TFloatField;
    tOrcamentoItensUnidade: TStringField;
    tOrcamentoItensCodCor: TIntegerField;
    tOrcamentoItensCodProduto: TIntegerField;
    tOrcamentoItenslkNomeCor: TStringField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    tOrcamentoItensMotivoNaoAprov: TStringField;
    qOrcamentoAprovado: TStringField;
    tOrcamentoItensAprovado: TStringField;
    tOrcamentoItensDtAprovado: TDateField;
    ALed4: TALed;
    Label7: TLabel;
    qOrcamentoFilial: TIntegerField;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tOrcamentoItensFilial: TIntegerField;
    tOrcamentoItensProdutoNCad: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fConsOrcamento: TfConsOrcamento;

implementation

uses UDM1, UOrcamento;

{$R *.DFM}

procedure TfConsOrcamento.Consulta;
var
  vSeparador : String;
begin
  qOrcamento.Close;
  qOrcamento.SQL.Clear;
  qOrcamento.SQL.Add('SELECT NumOrcamento, Data, CodCliente, NomeCliente, NomeContato, NomeCia, QtdDiasValidade, PrazoPagto, Aprovado, VlrTotal, CodVendedor, Filial');
  qOrcamento.SQL.Add('FROM "dbOrcamento.DB" Dborcamento');
  qOrcamento.SQL.Add('WHERE Filial = :F1');
  qOrcamento.ParamByName('F1').AsInteger := RxDBLookupCombo2.KeyValue;
  vSeparador := ' AND ';
  if Edit1.Text <> '' then
    begin
      qOrcamento.SQL.Add(vSeparador + ' Dborcamento.NomeCliente LIKE ''%' + Edit1.Text + '%''');
      vSeparador := ' AND ';
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qOrcamento.SQL.Add(vSeparador + ' Dborcamento.CodVendedor = ' + IntToStr(RxDBLookupCombo1.KeyValue));
      vSeparador := ' AND ';
    end;
  if DateEdit1.Text <> '  /  /    ' then
    begin
      qOrcamento.SQL.Add(vSeparador + ' Dborcamento.Data = :Data');
      qOrcamento.ParamByName('Data').AsDate := DateEdit1.Date;
    end;
  qOrcamento.SQL.Add('ORDER BY Dborcamento.Data');
  qOrcamento.Open;
end;

procedure TfConsOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (qOrcamento.Active) and (qOrcamentoNumOrcamento.AsInteger > 0) then
    begin
      DM1.tOrcamento.IndexFieldNames := 'Filial;NumOrcamento';
      DM1.tOrcamento.SetKey;
      Dm1.tOrcamentoFilial.AsInteger       := qOrcamentoFilial.AsInteger;                   
      DM1.tOrcamentoNumOrcamento.AsInteger := qOrcamentoNumOrcamento.AsInteger;
      DM1.tOrcamento.GotoKey;
    end;
  qOrcamento.Close;
  fOrcamento.Caption := 'Orçamento ' + Dm1.tFilialEmpresa.AsString;
  Action := Cafree;
end;

procedure TfConsOrcamento.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      Consulta;
      tOrcamentoItens.Open;
    end
  else
    ShowMessage('Deve haver uma filial selecionada!');
end;

procedure TfConsOrcamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsOrcamento.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qOrcamentoAprovado.AsString = 'A' then
    begin
      Background  := clAqua;
      AFont.Color := clWindowText;
    end
  else
  if qOrcamentoAprovado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end
  else
  if qOrcamentoAprovado.AsString = 'L' then
    begin
      Background  := clYellow;
      AFont.Color := clWindowText;
    end;
end;

procedure TfConsOrcamento.RxDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsOrcamento.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tOrcamentoItensAprovado.AsString = 'A' then
    begin
      Background  := clAqua;
      AFont.Color := clWindowText;
    end
  else
  if tOrcamentoItensAprovado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end;
end;

end.
