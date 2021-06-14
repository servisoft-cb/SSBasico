unit UConsSaldos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DB, DBTables, StdCtrls, Buttons,
  DBClient, ExtCtrls;

type
  TfConsSaldos = class(TForm)
    qContas: TQuery;
    qContasCodConta: TIntegerField;
    qContasNomeConta: TStringField;
    qContasNumConta: TStringField;
    qContasFilial: TIntegerField;
    qContasVlrMovDebito: TFloatField;
    qContasVlrMovCredito: TFloatField;
    qContasclVlrMovimento: TFloatField;
    SMDBGrid2: TSMDBGrid;
    mSaldo: TClientDataSet;
    mSaldoCodConta: TIntegerField;
    mSaldoNumConta: TStringField;
    mSaldoNomeConta: TStringField;
    mSaldoSaldo: TFloatField;
    mSaldoVlrDebito: TFloatField;
    mSaldoVlrCredito: TFloatField;
    mSaldoVlrChequesAtrazado: TFloatField;
    mSaldoVlrChequesAVencer: TFloatField;
    mSaldoVlrTitulosPend: TFloatField;
    dsmSaldo: TDataSource;
    qChequesAtrazado: TQuery;
    qCReceber: TQuery;
    qChequesAtrazadoCodConta: TIntegerField;
    qChequesAtrazadoVlrTotal: TFloatField;
    qCReceberCodBancoBoleto: TIntegerField;
    qCReceberRestParcela: TFloatField;
    qChequesAVencer: TQuery;
    qChequesAVencerCodConta: TIntegerField;
    qChequesAVencerVlrTotal: TFloatField;
    mSaldoSaldoPrevisao1: TFloatField;
    mSaldoSaldoPrevisao2: TFloatField;
    mSaldoFilial: TIntegerField;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure qContasCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLs;
    procedure Le_SQLs;
  public
    { Public declarations }
  end;

var
  fConsSaldos: TfConsSaldos;

implementation

{$R *.dfm}

procedure TfConsSaldos.Le_SQLs;
begin
  mSaldo.EmptyDataSet;

  qContas.First;
  while not qContas.Eof do
    begin
      mSaldo.Insert;
      mSaldoCodConta.AsInteger := qContasCodConta.AsInteger;
      mSaldoNomeConta.AsString := qContasNomeConta.AsString;
      mSaldoNumConta.AsString  := qContasNumConta.AsString;
      mSaldoSaldo.AsFloat      := qContasclVlrMovimento.AsFloat;
      mSaldoVlrDebito.AsFloat  := qContasVlrMovDebito.AsFloat;
      mSaldoVlrCredito.AsFloat := qContasVlrMovCredito.AsFloat;
      mSaldoFilial.AsInteger   := qContasFilial.AsInteger;

      mSaldo.Post;
      qContas.Next;
    end;

  qChequesAtrazado.First;
  while not qChequesAtrazado.Eof do
    begin
      if mSaldo.Locate('CodConta',qChequesAtrazadoCodConta.AsInteger,[loCaseInsensitive]) then
        begin
          mSaldo.Edit;
          mSaldoVlrChequesAtrazado.AsFloat := qChequesAtrazadoVlrTotal.AsFloat;
          mSaldo.Post;
        end;
      qChequesAtrazado.Next;
    end;

  qChequesAVencer.First;
  while not qChequesAVencer.Eof do
    begin
      if mSaldo.Locate('CodConta',qChequesAVencerCodConta.AsInteger,[loCaseInsensitive]) then
        begin
          mSaldo.Edit;
          mSaldoVlrChequesAtrazado.AsFloat := qChequesAVencerVlrTotal.AsFloat;
          mSaldo.Post;
        end;
      qChequesAVencer.Next;
    end;

  qCReceber.First;
  while not qCReceber.Eof do
    begin
      if mSaldo.Locate('CodConta',qCReceberCodBancoBoleto.AsInteger,[loCaseInsensitive]) then
        begin
          mSaldo.Edit;
          mSaldoVlrTitulosPend.AsFloat :=  qCReceberRestParcela.AsFloat;
          mSaldo.Post;
        end;
      qCReceber.Next;
    end;

  mSaldo.First;
  while not mSaldo.Eof do
    begin
      mSaldo.Edit;
      mSaldoSaldoPrevisao1.AsFloat := mSaldoSaldo.AsFloat - mSaldoVlrChequesAtrazado.AsFloat;
      mSaldoSaldoPrevisao2.AsFloat := mSaldoSaldo.AsFloat - mSaldoVlrChequesAtrazado.AsFloat - mSaldoVlrChequesAVencer.AsFloat + mSaldoVlrTitulosPend.AsFloat; 
      mSaldo.Post;
      
      mSaldo.Next;
    end;
end;

procedure TfConsSaldos.Monta_SQLs;
begin
  qContas.Close;
  qContas.Open;

  qChequesAtrazado.Close;
  qChequesAtrazado.ParamByName('DtPrevista').AsDate := Date;
  qChequesAtrazado.Open;

  qChequesAVencer.Close;
  qChequesAVencer.ParamByName('DtPrevista').AsDate := Date;
  qChequesAVencer.Open;

  qCReceber.Close;
  qCReceber.Open;
end;

procedure TfConsSaldos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qContas.Close;
  qChequesAtrazado.Close;
  qChequesAVencer.Close;
  qCReceber.Close;
  Action := Cafree;
end;

procedure TfConsSaldos.BitBtn6Click(Sender: TObject);
begin
  Monta_SQLs;
  Le_SQLs;
end;

procedure TfConsSaldos.qContasCalcFields(DataSet: TDataSet);
begin
  qContasclVlrMovimento.AsFloat := qContasVlrMovCredito.AsFloat - qContasVlrMovDebito.AsFloat;
end;

procedure TfConsSaldos.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsSaldos.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
end;

end.
