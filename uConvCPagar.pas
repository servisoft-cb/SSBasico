unit uConvCPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Mask, ToolEdit, CurrEdit;

type
  TfConvCPagar = class(TForm)
    BitBtn1: TBitBtn;
    tCPagar: TTable;
    tCPagarParc: TTable;
    tCPagarParcHist: TTable;
    tCPagarFilial: TIntegerField;
    tCPagarNumCPagar: TIntegerField;
    tCPagarNumNotaEnt: TIntegerField;
    tCPagarCodForn: TIntegerField;
    tCPagarQuitado: TBooleanField;
    tCPagarTipoDoc: TStringField;
    tCPagarDtGerado: TDateField;
    tCPagarHistorico: TStringField;
    tCPagarNroDuplicata: TIntegerField;
    tCPagarNroFatura: TIntegerField;
    tCPagarCodAtelier: TIntegerField;
    tCPagarCodCentroCusto: TIntegerField;
    tCPagarCodCentroCustoItem: TIntegerField;
    tCPagarParcFilial: TIntegerField;
    tCPagarParcNumCPagar: TIntegerField;
    tCPagarParcParcCPagar: TIntegerField;
    tCPagarParcDtVencCPagar: TDateField;
    tCPagarParcVlrParcCPagar: TFloatField;
    tCPagarParcQuitParcCPagar: TBooleanField;
    tCPagarParcDtPagParcCPagar: TDateField;
    tCPagarParcJurosParcCPagar: TFloatField;
    tCPagarParcCodForn: TIntegerField;
    tCPagarParcNumNotaEnt: TIntegerField;
    tCPagarParcDesconto: TFloatField;
    tCPagarParcPgtoParcial: TFloatField;
    tCPagarParcRestParcela: TFloatField;
    tCPagarParcBanco: TStringField;
    tCPagarParcPlanoContas: TIntegerField;
    tCPagarParcNroDuplicata: TIntegerField;
    tCPagarParcDespesas: TFloatField;
    tCPagarParcAbatimentos: TFloatField;
    tCPagarParcCodConta: TIntegerField;
    tCPagarParcDiasAtraso: TFloatField;
    tCPagarParcJurosPagos: TFloatField;
    tCPagarParcCodTipoCobranca: TIntegerField;
    tCPagarParcNroFatura: TIntegerField;
    tCPagarParcDtRecto: TDateField;
    tCPagarParcCodAtelier: TIntegerField;
    tCPagarParcVlrDevolucao: TFloatField;
    tCPagarParcCodPlanoContasItens: TIntegerField;
    tCPagarParcDtGerado: TDateField;
    tCPagarParcNumSolicitacao: TIntegerField;
    tCPagarParcCodCentroCusto: TIntegerField;
    tCPagarParcCodCentroCustoItem: TIntegerField;
    tCPagarParcHistFilial: TIntegerField;
    tCPagarParcHistNumCPagar: TIntegerField;
    tCPagarParcHistParcCPagar: TIntegerField;
    tCPagarParcHistItem: TIntegerField;
    tCPagarParcHistCodHistorico: TIntegerField;
    tCPagarParcHistDtHistorico: TDateField;
    tCPagarParcHistHistorico: TStringField;
    tCPagarParcHistDtUltPgto: TDateField;
    tCPagarParcHistVlrUltPgto: TFloatField;
    tCPagarParcHistVlrUltJuros: TFloatField;
    tCPagarParcHistVlrUltDescontos: TFloatField;
    tCPagarParcHistVlrUltDespesas: TFloatField;
    tCPagarParcHistVlrUltAbatimentos: TFloatField;
    tCPagarParcHistPgto: TBooleanField;
    tCPagarParcHistJurosPagos: TFloatField;
    tCPagarParcHistNumMov: TIntegerField;
    tCPagarParcHistNumMovJuros: TIntegerField;
    tCPagarParcHistVlrDevolucao: TFloatField;
    tCPagarParcHistDevolucao: TBooleanField;
    tCPagarParcHistNumCheque: TIntegerField;
    tCPagarParcHistDtPrevCheque: TDateField;
    tCPagarParcHistTipo: TStringField;
    tCPagarParcHistCodConta: TIntegerField;
    dsCPagar: TDataSource;
    dscPagarParc: TDataSource;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Gravar_CPagar;
    procedure Excluir_CPagar;
  public
    { Public declarations }
  end;

var
  fConvCPagar: TfConvCPagar;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConvCPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConvCPagar.BitBtn1Click(Sender: TObject);
var
  vFilial : Integer;
begin
  if MessageDlg('Gerar o conversor?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;
  DM1.tFilial.Open;
  DM1.tCPagar.Open;
  DM1.tCPagarParc.Open;
  DM1.tCPagarParcHist.Open;
  CurrencyEdit1.AsInteger := 0;

  tCPagar.First;
  while not tCPagar.Eof do
  begin
    vFilial := 0;
    CurrencyEdit1.AsInteger := CurrencyEdit1.AsInteger + 1;
    CurrencyEdit1.Refresh;

    if (tCPagarFilial.AsInteger = 3) or (tCPagarFilial.AsInteger = 4) or (tCPagarFilial.AsInteger = 6)  then
      vFilial := 1
    else
    if (tCPagarFilial.AsInteger = 7) then
      vFilial := 2;

    if vFilial > 0 then
      if DM1.tFilial.Locate('Codigo',vFilial,[loCaseInsensitive]) then
        Gravar_CPagar;

    tCPagar.Next;
  end;

  ShowMessage('Processo Convertido!');
end;

procedure TfConvCPagar.Gravar_CPagar;
var
  vNum, vParcAux, vItem : Integer;
  x: Integer;
begin
  DM1.tCPagar.Last;
  vNum := DM1.tCPagarNumCPagar.AsInteger + 1;

  if (CurrencyEdit2.AsInteger < 1) and (DM1.tFilialCodigo.AsInteger = 1) then
    CurrencyEdit2.AsInteger := vNum
  else
  if (CurrencyEdit3.AsInteger < 1) and (DM1.tFilialCodigo.AsInteger = 2) then
    CurrencyEdit3.AsInteger := vNum;

  DM1.tCPagar.Insert;
  for x := 0 to (tCPagar.FieldCount - 1) do
  begin
    if not (tCPagar.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
    begin
      if tCPagar.Fields[x].FieldName = 'Filial' then
        DM1.tCPagarFilial.AsInteger := DM1.tFilialCodigo.AsInteger
      else
      if tCPagar.Fields[x].FieldName = 'NumCPagar' then
        DM1.tCPagarNumCPagar.AsInteger := vNum
      else
        DM1.tCPagar.FieldByName(tCPagar.Fields[x].FieldName).AsVariant := tCPagar.Fields[x].Value;
    end;
  end;
  DM1.tCPagar.Post;


  //Parcelas
  DM1.tCPagarParc.Refresh;
  DM1.tCPagarParc.Last;
  //vParc := DM1.tCPagarParcParcCPagar.AsInteger;

  tCPagarParc.First;
  while not tCPagarParc.Eof do
  begin
    //vParcAux := vParcAux + 1;

    DM1.tCPagarParc.Insert;
    for x := 0 to (tCPagarParc.FieldCount - 1) do
    begin
      if not (tCPagarParc.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
      begin
        if tCPagarParc.Fields[x].FieldName = 'Filial' then
          DM1.tCPagarParcFilial.AsInteger := DM1.tFilialCodigo.AsInteger
        else
        if tCPagarParc.Fields[x].FieldName = 'NumCPagar' then
          DM1.tCPagarParcNumCPagar.AsInteger := vNum
        else
          DM1.tCPagarParc.FieldByName(tCPagarParc.Fields[x].FieldName).AsVariant := tCPagarParc.Fields[x].Value;
      end;
    end;
    DM1.tCPagarParc.Post;

    //Histórico
    DM1.tCPagarParcHist.Refresh;
    DM1.tCPagarParcHist.Last;
    vItem := DM1.tCPagarParcHistItem.AsInteger;
    tCPagarParcHist.First;
    while not tCPagarParcHist.Eof do
    begin

      vItem := vItem + 1;

      DM1.tCPagarParcHist.Insert;
      for x := 0 to (tCPagarParcHist.FieldCount - 1) do
      begin
        if not (tCPagarParcHist.Fields[x].FieldKind in [fkLookup, fkCalculated]) then
        begin
          if tCPagarParcHist.Fields[x].FieldName = 'Filial' then
            DM1.tCPagarParcHistFilial.AsInteger := DM1.tFilialCodigo.AsInteger
          else
          if tCPagarParcHist.Fields[x].FieldName = 'NumCPagar' then
            DM1.tCPagarParcHistNumCPagar.AsInteger := vNum
          else
            DM1.tCPagarParcHist.FieldByName(tCPagarParcHist.Fields[x].FieldName).AsVariant := tCPagarParcHist.Fields[x].Value;
        end;
      end;
      DM1.tCPagarParcHist.Post;


      tCPagarParcHist.Next;
    end;


    tCPagarParc.Next;
  end;

end;

procedure TfConvCPagar.BitBtn2Click(Sender: TObject);
begin
  DM1.tCPagarParcHist.Close;
  DM1.tCPagarParc.Close;
  DM1.tCPagar.Close;
  DM1.tFilial.Close;

  DM1.tFilial.Open;
  DM1.tCPagar.Open;
  DM1.tCPagarParc.Open;
  DM1.tCPagarParcHist.Open;

  DM1.tFilial.First;
  while not DM1.tFilial.Eof do
  begin
    if (DM1.tFilialCodigo.AsInteger = 3) or (DM1.tFilialCodigo.AsInteger = 4) or (DM1.tFilialCodigo.AsInteger = 5) or
       (DM1.tFilialCodigo.AsInteger = 6) or (DM1.tFilialCodigo.AsInteger = 7) then
      Excluir_CPagar;

    DM1.tFilial.Next;
  end;

end;

procedure TfConvCPagar.Excluir_CPagar;
begin
  DM1.tCPagar.First;
  while not DM1.tCPagar.Eof do
  begin
    DM1.tCPagarParc.First;
    while not DM1.tCPagarParc.Eof do
    begin
      DM1.tCPagarParcHist.First;
      while not DM1.tCPagarParcHist.Eof do
        DM1.tCPagarParcHist.Delete;
      DM1.tCPagarParc.Delete;
    end;
    DM1.tCPagar.Delete;
  end;
end;

end.
