unit UPrevNatOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Mask, ToolEdit, Grids, DBGrids, SMDBGrid,
  Buttons, DB, DBTables, DBClient, ExtCtrls, ComCtrls;

type
  TfPrevNatOperacao = class(TForm)
    SMDBGrid1: TSMDBGrid;
    qNotaFiscal: TQuery;
    qNotaFiscalFilial: TIntegerField;
    qNotaFiscalNumSeq: TIntegerField;
    qNotaFiscalCodProduto: TIntegerField;
    qNotaFiscalCodCor: TIntegerField;
    qNotaFiscalUnidade: TStringField;
    qNotaFiscalQtd: TFloatField;
    qNotaFiscalNumNota: TIntegerField;
    qNotaFiscalDtEmissao: TDateField;
    qNotaFiscalNatOper: TSmallintField;
    qNotaFiscalDescricao: TStringField;
    qNotaFiscalReferencia: TStringField;
    qNotaFiscalCodNatOper: TStringField;
    mTotal: TClientDataSet;
    mTotalCodNatOper: TIntegerField;
    mTotalCodFiscal: TStringField;
    mTotalQtdTotal: TFloatField;
    dsmTotal: TDataSource;
    dsqNotaFiscal: TDataSource;
    qNotaFiscalCodCli: TIntegerField;
    qNotaFiscalNome: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    SMDBGrid2: TSMDBGrid;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mTotalNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1FilterChanged(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLNotaFiscal;
    procedure Le_qNotaFiscal;
  public
    { Public declarations }
  end;

var
  fPrevNatOperacao: TfPrevNatOperacao;

implementation

uses UDM1, uRelNatOperacao;

{$R *.dfm}

procedure TfPrevNatOperacao.Le_qNotaFiscal;
begin
  ProgressBar1.Max      := qNotaFiscal.RecordCount;
  ProgressBar1.Position := 0;
  SMDBGrid1.DisableScroll;
  mTotal.EmptyDataSet;
  qNotaFiscal.First;
  while not qNotaFiscal.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if mTotal.Locate('CodNatOper',qNotaFiscalNatOper.AsInteger,([LocaseInsensitive])) then
        mTotal.Edit
      else
        begin
          mTotal.Insert;
          mTotalCodNatOper.AsInteger := qNotaFiscalNatOper.AsInteger;
          mTotalCodFiscal.AsString   := qNotaFiscalCodNatOper.AsString;
        end;
      mTotalQtdTotal.AsFloat := mTotalQtdTotal.AsFloat + qNotaFiscalQtd.AsFloat;
      mTotal.Post;
      qNotaFiscal.Next;
    end;
  SMDBGrid1.EnableScroll;
end;

procedure TfPrevNatOperacao.Monta_SQLNotaFiscal;
begin
  qNotaFiscal.Close;
  qNotaFiscal.SQL.Clear;
  qNotaFiscal.SQL.Add('SELECT Dbnotafiscal.Filial, Dbnotafiscalitens.NumSeq, Dbnotafiscalitens.CodProduto, ');
  qNotaFiscal.SQL.Add(' Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbnotafiscalitens.Qtd, Dbnotafiscal.NumNota, Dbnotafiscal.DtEmissao, ');
  qNotaFiscal.SQL.Add(' Dbnotafiscalitens.NatOper, Dbnotafiscalitens.Descricao, Dbnotafiscalitens.Referencia, Dbnatoperacao.CodNatOper, Dbnotafiscal.CodCli, Dbcliente.Nome ');
  qNotaFiscal.SQL.Add('FROM "DBNOTAFISCAL.DB" Dbnotafiscal ');
  qNotaFiscal.SQL.Add('   INNER JOIN "DBNOTAFISCALITENS.DB" Dbnotafiscalitens ');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial) ');
  qNotaFiscal.SQL.Add('   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq) ');
  qNotaFiscal.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qNotaFiscal.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao ');
  qNotaFiscal.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo) ');
  qNotaFiscal.SQL.Add('WHERE  ((Dbnotafiscal.Cancelada = FALSE) OR (Dbnotafiscal.Cancelada is Null)) ');
  qNotaFiscal.SQL.Add('   AND ((Dbnotafiscal.NFeDenegada = FALSE) OR (Dbnotafiscal.NFeDenegada is Null)) ');
  qNotaFiscal.SQL.Add('   AND (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2) ');
  qNotaFiscal.ParamByName('Data1').AsDate := DateEdit1.Date;
  qNotaFiscal.ParamByName('Data2').AsDate := DateEdit2.Date;
  if RxDBLookupCombo3.Text <> '' then
    begin
      qNotaFiscal.SQL.Add(' AND (dbNotaFiscal.Filial = :Filial)');
      qNotaFiscal.ParamByName('Filial').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qNotaFiscal.SQL.Add(' AND (dbNotaFiscal.CodCli = :CodCli)');
      qNotaFiscal.ParamByName('CodCli').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      //qNotaFiscal.SQL.Add(' AND (Dbnatoperacao.CodNatOper = :CodNatOper)');
      qNotaFiscal.SQL.Add(' AND (Dbnatoperacao.Codigo = :CodNatOper)');
      qNotaFiscal.ParamByName('CodNatOper').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qNotaFiscal.SQL.Add('ORDER BY dbNatOperacao.CodNatOper, dbNotaFiscal.Filial, dbNotaFiscal.NumNota');
  qNotaFiscal.Open;
end;

procedure TfPrevNatOperacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevNatOperacao.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tCliente.Open;
  DM1.tNatOperacao.Open;
end;

procedure TfPrevNatOperacao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevNatOperacao.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tNatOperacao2.IndexFieldNames := 'CodNatOper';
end;

procedure TfPrevNatOperacao.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date < 1) or (DateEdit2.Date < 1) then
    ShowMessage('Falta informar a data!')
  else
    begin
      Monta_SQLNotaFiscal;
      Le_qNotaFiscal;
    end;
end;

procedure TfPrevNatOperacao.mTotalNewRecord(DataSet: TDataSet);
begin
  mTotalQtdTotal.AsFloat := 0;
end;

procedure TfPrevNatOperacao.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevNatOperacao.BitBtn2Click(Sender: TObject);
begin
   SMDBGrid1.DisableScroll;
   try
     fRelNatOperacao := TfRelNatOperacao.Create(Self);
     fRelNatOperacao.RLReport1.Preview;

   finally
     fRelNatOperacao.Free;
     qNotaFiscal.Filter := '';
     qNotaFiscal.Filtered := False;
     qNotaFiscal.First;
   end;
   SMDBGrid1.EnableScroll;
end;

procedure TfPrevNatOperacao.SMDBGrid1FilterChanged(Sender: TObject);
begin
  Le_qNotaFiscal;
end;

end.
