unit UPrevProdutosFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, DB,
  DBTables;

type
  TfPrevProdutoFat = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    qProdutosFat: TQuery;
    qProdutosFatFilial: TIntegerField;
    qProdutosFatNumNota: TIntegerField;
    qProdutosFatCodProduto: TIntegerField;
    qProdutosFatCodCor: TIntegerField;
    qProdutosFatUnidade: TStringField;
    qProdutosFatQtd: TFloatField;
    qProdutosFatReferencia: TStringField;
    qProdutosFatNome: TStringField;
    qProdutosFatDtEmissao: TDateField;
    qProdutosFatlkNomeCor: TStringField;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qRef: TQuery;
    qRefCodigo: TIntegerField;
    qRefReferencia: TStringField;
    qRefNome: TStringField;
    qRefDescMaterial: TStringField;
    dsqRef: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fPrevProdutoFat: TfPrevProdutoFat;

implementation

uses UDM1, Math, URelProdutosFat;

{$R *.dfm}

procedure TfPrevProdutoFat.Monta_SQL;
begin
  qProdutosFat.Close;
  qProdutosFat.SQL.Clear;
  qProdutosFat.SQL.Add('SELECT Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumNota, Dbnotafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Sum(Dbnotafiscalitens.Qtd) Qtd, Dbproduto.Referencia, Dbproduto.Nome, Dbnotafiscal.DtEmissao');
  qProdutosFat.SQL.Add('FROM "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qProdutosFat.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qProdutosFat.SQL.Add('   ON  (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');
  qProdutosFat.SQL.Add('   INNER JOIN "dbNotaFiscal.DB" Dbnotafiscal');
  qProdutosFat.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qProdutosFat.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qProdutosFat.SQL.Add('WHERE   (Dbproduto.ProdMat = ''P'')');
  qProdutosFat.SQL.Add('   AND  ((Dbnotafiscal.Cancelada = False) OR (Dbnotafiscal.Cancelada is Null))');
  qProdutosFat.SQL.Add('   AND  ((Dbnotafiscal.NFeDenegada = False) OR (Dbnotafiscal.NFeDenegada is Null))');
  qProdutosFat.SQL.Add('   AND  (Dbnotafiscal.SaidaEntrada = ''S'')');
  qProdutosFat.SQL.Add('   AND  (Dbnotafiscalitens.Estoque = TRUE)');
  qProdutosFat.SQL.Add('   AND  (Dbnotafiscalitens.GeraDupl = TRUE)');
  qProdutosFat.SQL.Add('   AND  (Dbnotafiscalitens.Filial = :Filial)');
  qProdutosFat.SQL.Add('  AND  ((Dbnotafiscal.CondPgto = ''V'') or (Dbnotafiscal.CondPgto = ''P'') or (Dbnotafiscal.CondPgto = ''A'')) ');
  qProdutosFat.SQL.Add('   AND  (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2)');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qProdutosFat.SQL.Add('   AND  (Dbnotafiscalitens.CodProduto = :CodProduto)');
      qProdutosFat.ParamByName('CodProduto').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qProdutosFat.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  qProdutosFat.ParamByName('Data1').AsDate     := DateEdit1.Date;
  qProdutosFat.ParamByName('Data2').AsDate     := DateEdit2.Date;
  qProdutosFat.SQL.Add('GROUP BY Dbnotafiscalitens.Filial, Dbnotafiscalitens.NumNota, Dbnotafiscalitens.CodProduto, Dbnotafiscalitens.CodCor, Dbnotafiscalitens.Unidade, Dbproduto.Referencia, Dbproduto.Nome, Dbnotafiscal.DtEmissao');
  qProdutosFat.SQL.Add('ORDER BY Dbproduto.Nome, dbnotafiscalitens.numnota');
  qProdutosFat.Open;
  qProdutosFat.First;
end;

procedure TfPrevProdutoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qRef.Close;
  Action := Cafree;
end;

procedure TfPrevProdutoFat.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevProdutoFat.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    ShowMessage('Falta informar a filial!')
  else
  if (DateEdit1.Text = '  /  /    ') or (DateEdit2.Text = '  /  /    ') then
    ShowMessage('Falta informar as data!')
  else
    begin
      Monta_SQL;
      fRelProdutosFat := TfRelProdutosFat.Create(Self);
      fRelProdutosFat.QuickRep1.Preview;
      fRelProdutosFat.QuickRep1.Free;
    end;
end;

procedure TfPrevProdutoFat.FormShow(Sender: TObject);
begin
  qRef.Open;
end;

end.
