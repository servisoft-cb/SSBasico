unit UConsHistCliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, RzTabs,
  Grids, DBGrids, SMDBGrid, DB, DBTables, CurrEdit, DBClient, DBVGrids;

type
  TfConsHistCliente2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    SMDBGrid1: TSMDBGrid;
    dsqCReceber: TDataSource;
    qCReceber: TQuery;
    qCReceberFilial: TIntegerField;
    qCReceberCodCli: TIntegerField;
    qCReceberNomeVendedor: TStringField;
    qCReceberCodVendedor: TIntegerField;
    qCReceberVlrParcCReceber: TFloatField;
    qCReceberParcCReceber: TIntegerField;
    qCReceberNumCReceber: TIntegerField;
    qCReceberDtVencCReceber: TDateField;
    qCReceberDtPagParcCReceber: TDateField;
    qCReceberPgtoParcial: TFloatField;
    qCReceberRestParcela: TFloatField;
    qCReceberPercComissao: TFloatField;
    qCReceberAbatimentos: TFloatField;
    qCReceberNomeConta: TStringField;
    qCReceberJurosPagos: TFloatField;
    qCReceberCancelado: TBooleanField;
    qCReceberDtGerado: TDateField;
    qCReceberVlrDevolucao: TFloatField;
    qCReceberTransferencia: TBooleanField;
    qCReceberNumTitBanco: TStringField;
    qCReceberNumCarteira: TStringField;
    qCReceberNumNota: TIntegerField;
    qCReceberCodBancoBoleto: TIntegerField;
    qCReceberCodConta: TIntegerField;
    qCReceberNomeBancoBoleto: TStringField;
    qCReceberclTransferencia: TStringField;
    qCReceberCodTipoCobranca: TIntegerField;
    qCReceberNomeCobranca: TStringField;
    qCReceberDesconto: TFloatField;
    qCReceberDespesas: TFloatField;
    qCReceberclDiasAtraso: TFloatField;
    qCReceberDescontado: TBooleanField;
    qCReceberDtVencimento2: TDateField;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Panel3: TPanel;
    qCReceberDiasAtraso: TFloatField;
    mTotais: TClientDataSet;
    mTotaisDescricao: TStringField;
    mTotaisQtd: TIntegerField;
    mTotaisValor: TFloatField;
    mTotaisPercentual: TFloatField;
    VDBGrid1: TVDBGrid;
    dsmTotais: TDataSource;
    mTotaisCodigo: TIntegerField;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qCReceberCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure mTotaisNewRecord(DataSet: TDataSet);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    vSQLqCReceber, vSQLOutras : String;
    procedure Monta_SQLqCReceber;
    procedure Calcula_Totais;
    procedure Monta_qOutrasFinanceiro;
  public
    { Public declarations }
  end;

var
  fConsHistCliente2: TfConsHistCliente2;

implementation

uses UDM1, VarUtils;

{$R *.dfm}

procedure TfConsHistCliente2.Monta_qOutrasFinanceiro;
var
  vTextoSql : String;
begin
  {vTextoSql := '';
  if RxDBLookupCombo1.Text <> '' then
    vTextoSql := ' AND (Filial = :Filial) ';
  qOutrasFinanceiro.Close;
  qOutrasFinanceiro.SQL.Clear;
  qOutrasFinanceiro.SQL.Text := vSQLOutras;
  qOutrasFinanceiro.SQL.Add(vTextoSql);
  if RxDBLookupCombo1.Text <> '' then
    qOutrasFinanceiro.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  qOutrasFinanceiro.Open;
  qOutrasFinanceiro.First;
  Label19.Caption := qOutrasFinanceiroQuantidade.AsString;

  qOutrasFinanceiro.Close;
  qOutrasFinanceiro.SQL.Clear;
  qOutrasFinanceiro.SQL.Text := vSQLOutras;
  qOutrasFinanceiro.SQL.Add('  AND (DiasAtraso > 0) AND (PgtoParcial > 0) ');
  qOutrasFinanceiro.SQL.Add(vTextoSql);
  if RxDBLookupCombo1.Text <> '' then
    qOutrasFinanceiro.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  qOutrasFinanceiro.Open;
  qOutrasFinanceiro.First;
  Label21.Caption := qOutrasFinanceiroQuantidade.AsString;

  qOutrasFinanceiro.Close;
  qOutrasFinanceiro.SQL.Clear;
  qOutrasFinanceiro.SQL.Text := vSQLOutras;
  qOutrasFinanceiro.SQL.Add('  AND (DiasAtraso <= 0) AND (PgtoParcial > 0) ');
  qOutrasFinanceiro.SQL.Add(vTextoSql);
  if RxDBLookupCombo1.Text <> '' then
    qOutrasFinanceiro.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  qOutrasFinanceiro.Open;
  qOutrasFinanceiro.First;
  Label32.Caption := qOutrasFinanceiroQuantidade.AsString;

  qOutrasFinanceiro.Close;
  qOutrasFinanceiro.SQL.Clear;
  qOutrasFinanceiro.SQL.Text := vSQLOutras;
  qOutrasFinanceiro.SQL.Add('  AND (RestParcela > 0) AND (DtVencCReceber < :DtVencimento) ');
  qOutrasFinanceiro.SQL.Add(vTextoSql);
  if RxDBLookupCombo1.Text <> '' then
    qOutrasFinanceiro.ParamByName('Filial').AsInteger  := RxDBLookupCombo1.KeyValue;
  qOutrasFinanceiro.ParamByName('DtVencimento').AsDate := Date;
  qOutrasFinanceiro.Open;
  qOutrasFinanceiro.First;
  Label41.Caption := qOutrasFinanceiroQuantidade.AsString;}
end;

procedure TfConsHistCliente2.Calcula_Totais;
var
  vQtdTitulos, vQtdPagoAtraso, vQtdPagoNoPrazo, vQtdPendAtraso, vQtdPendNoPrazo, vQtdDevol, vQtdDesconto : Integer;
  vTotalGeral, vVlrPagoAtraso, vVlrPagoNoPrazo, vVlrPendAtraso, vVlrPendNoPrazo, vVlrDevol, vVlrDesconto : Real;
  vQtdAux : Integer;
begin
  SMDBGrid1.DisableScroll;
  mTotais.EmptyDataSet;

  vQtdTitulos      := 0;
  vQtdPagoAtraso   := 0;
  vQtdPagoNoPrazo  := 0;
  vQtdPendAtraso   := 0;
  vQtdPendNoPrazo  := 0;
  vQtdDevol        := 0;
  vQtdDesconto     := 0;
  vTotalGeral      := 0;
  vVlrPagoAtraso   := 0;
  vVlrPagoNoPrazo  := 0;
  vVlrPendAtraso   := 0;
  vVlrPendNoPrazo  := 0;
  vVlrDevol        := 0;
  vVlrDesconto     := 0;
  qCReceber.First;
  while not qCReceber.Eof do
    begin
      if not qCReceberCancelado.AsBoolean then
        begin
          //Geral
          inc(vQtdTitulos);
          vTotalGeral    := vTotalGeral + qCReceberVlrParcCReceber.AsFloat;

          //Pagamento
          if StrToFloat(FormatFloat('0.00',qCReceberPgtoParcial.AsFloat)) > 0 then
            begin
              if qCReceberDtPagParcCReceber.AsDateTime > qCReceberDtVencCReceber.AsDateTime then
                begin
                  inc(vQtdPagoAtraso);
                  vVlrPagoAtraso := vVlrPagoAtraso + qCReceberPgtoParcial.AsFloat;
                end
              else
                begin
                  inc(vQtdPagoNoPrazo);
                  vVlrPagoNoPrazo := vVlrPagoNoPrazo + qCReceberPgtoParcial.AsFloat;
                end;
            end;

          //Pendentes
          if StrToFloat(FormatFloat('0.00',qCReceberRestParcela.AsFloat)) > 0 then
            begin
              if qCReceberDtVencCReceber.AsDateTime < Date  then
                begin
                  inc(vQtdPendAtraso);
                  vVlrPendAtraso := vVlrPendAtraso + qCReceberRestParcela.AsFloat;
                end
              else
                begin
                  inc(vQtdPendNoPrazo);
                  vVlrPendNoPrazo := vVlrPendNoPrazo + qCReceberRestParcela.AsFloat;
                end;
            end;

          //Devolução
          if StrToFloat(FormatFloat('0.00',qCReceberVlrDevolucao.AsFloat)) > 0 then
            begin
              inc(vQtdDevol);
              vVlrDevol := vVlrDevol + qCReceberVlrDevolucao.AsFloat;
            end;

          //Desconto
          if (StrToFloat(FormatFloat('0.00',qCReceberDesconto.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',qCReceberAbatimentos.AsFloat)) > 0) then
            begin
              inc(vQtdDesconto);
              vVlrDesconto := vVlrDesconto + qCReceberDesconto.AsFloat + qCReceberAbatimentos.AsFloat;
            end;
        end;
      qCReceber.Next;
    end;

  mTotais.EmptyDataSet;
  //Geral
  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 1;
  mTotaisDescricao.AsString := 'Geral';
  mTotaisQtd.AsInteger      := vQtdTitulos;
  mTotaisValor.AsFloat      := vTotalGeral;
  mTotais.Post;

  //Pagamento
  vQtdAux := vQtdPagoAtraso + vQtdPagoNoPrazo;
  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 2;
  mTotaisDescricao.AsString := 'Pago Em Atraso';
  mTotaisQtd.AsInteger      := vQtdPagoAtraso;
  mTotaisValor.AsFloat      := vVlrPagoAtraso;
  if vQtdPagoAtraso > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdPagoAtraso / vQtdAux) * 100));
  mTotais.Post;

  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 3;
  mTotaisDescricao.AsString := 'Pago No Prazo';
  mTotaisQtd.AsInteger      := vQtdPagoNoPrazo;
  mTotaisValor.AsFloat      := vVlrPagoNoPrazo;
  if vQtdPagoNoPrazo > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdPagoNoPrazo / vQtdAux) * 100));
  mTotais.Post;

  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 4;
  mTotaisDescricao.AsString := 'Total Pago';
  mTotaisQtd.AsInteger      := vQtdPagoAtraso + vQtdPagoNoPrazo;
  mTotaisValor.AsFloat      := vVlrPagoAtraso + vVlrPagoNoPrazo;
  if vQtdAux > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdAux / vQtdTitulos) * 100));
  mTotais.Post;

  //Pendentes
  vQtdAux := vQtdPendAtraso + vQtdPendNoPrazo;
  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 5;
  mTotaisDescricao.AsString := 'Pend. Em Atraso';
  mTotaisQtd.AsInteger      := vQtdPendAtraso;
  mTotaisValor.AsFloat      := vVlrPendAtraso;
  if vQtdPendAtraso > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdPendAtraso / vQtdAux) * 100));
  mTotais.Post;

  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 6;
  mTotaisDescricao.AsString := 'Pend. No Prazo';
  mTotaisQtd.AsInteger      := vQtdPendNoPrazo;
  mTotaisValor.AsFloat      := vVlrPendNoPrazo;
  if vQtdPendNoPrazo > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdPendNoPrazo / vQtdAux) * 100));
  mTotais.Post;

  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 7;
  mTotaisDescricao.AsString := 'Total Pendente';
  mTotaisQtd.AsInteger      := vQtdPendAtraso + vQtdPendNoPrazo;
  mTotaisValor.AsFloat      := vVlrPendAtraso + vVlrPendNoPrazo;
  if vQtdAux > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdAux / vQtdTitulos) * 100));
  mTotais.Post;

  //Devolução
  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 8;
  mTotaisDescricao.AsString := 'Devolução';
  mTotaisQtd.AsInteger      := vQtdDevol;
  mTotaisValor.AsFloat      := vVlrDevol;
  if vQtdDevol > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdDevol / vQtdTitulos) * 100));
  mTotais.Post;

  //Desconto
  mTotais.Insert;
  mTotaisCodigo.AsInteger   := 9;
  mTotaisDescricao.AsString := 'Desconto';
  mTotaisQtd.AsInteger      := vQtdDesconto;
  mTotaisValor.AsFloat      := vVlrDesconto;
  if vQtdDesconto > 0 then
    mTotaisPercentual.AsFloat := StrToFloat(FormatFloat('0.00',(vQtdDesconto / vQtdTitulos) * 100));
  mTotais.Post;
  mTotais.First;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsHistCliente2.Monta_SQLqCReceber;
begin
  qCReceber.Close;
  qCReceber.SQL.Clear;
  qCReceber.SQL.Text := vSQLqCReceber;
  qCReceber.SQL.Add('WHERE (dbCReceberParc.CodCli = :CodCli) ');
  qCReceber.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qCReceber.SQL.Add('  AND (dbCReceberParc.Filial = :Filial) ');
      qCReceber.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  case ComboBox1.ItemIndex of
    0 : qCReceber.SQL.Add(' AND (dbCReceberParc.RestParcela > 0)');
    1 : qCReceber.SQL.Add(' AND (dbCReceberParc.PgtoParcial > 0)');
    2 : qCReceber.SQL.Add(' AND (dbCReceberParc.VlrDevolucao > 0)');
  end;
  case ComboBox2.ItemIndex of
    0 : qCReceber.SQL.Add('ORDER BY dbCReceberParc.DiasAtraso, dbCReceberParc.DtVencCReceber');
    1 : qCReceber.SQL.Add('ORDER BY dbCReceberParc.DtVencCReceber, dbCReceberParc.DtGerado');
    2 : qCReceber.SQL.Add('ORDER BY dbCReceberParc.DtGerado, dbCReceberParc.DtVencCReceber');
    3 : qCReceber.SQL.Add('ORDER BY dbCReceberParc.VlrParcCReceber, dbCReceberParc.DtVencCReceber');
  end;
  qCReceber.Open;
end;

procedure TfConsHistCliente2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsHistCliente2.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  vSQLqCReceber := qCReceber.SQL.Text;
  if RxDBLookupCombo2.Text <> '' then
    begin
      BitBtn1Click(Sender);
      BitBtn2Click(Sender);
    end;
    
  //vSQLOutras    := qOutrasFinanceiro.SQL.Text;
end;

procedure TfConsHistCliente2.BitBtn1Click(Sender: TObject);
begin
  Monta_SQLqCReceber;
end;

procedure TfConsHistCliente2.qCReceberCalcFields(DataSet: TDataSet);
begin
  if qCReceberRestParcela.AsFloat > 0 then
    qCReceberclDiasAtraso.AsFloat := Date - qCReceberDtVencCReceber.AsDateTime
  else
    qCReceberclDiasAtraso.AsFloat :=  qCReceberDtPagParcCReceber.AsDateTime - qCReceberDtVencCReceber.AsDateTime;
  if qCReceberclDiasAtraso.AsFloat <= 0 then
    qCReceberclDiasAtraso.AsFloat := 0;
end;

procedure TfConsHistCliente2.BitBtn2Click(Sender: TObject);
begin
  if qCReceber.Active then
    Calcula_Totais;
end;

procedure TfConsHistCliente2.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsHistCliente2.mTotaisNewRecord(DataSet: TDataSet);
begin
  mTotaisPercentual.AsFloat := 0;
  mTotaisValor.AsFloat      := 0;
  mTotaisQtd.AsInteger      := 0;
end;

procedure TfConsHistCliente2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',qCReceberRestParcela.AsFloat)) <= 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if qCReceberclDiasAtraso.AsInteger > 0 then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end;
end;

end.
