unit UConsCliFornMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, RzTabs, DB, DBTables;

type
  TfConsCliFornMov = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    qCliente: TQuery;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    qClienteCodCli: TIntegerField;
    qClienteCgcCpf: TStringField;
    qClienteNomeCliente: TStringField;
    qClienteTelefone: TStringField;
    qClienteVlrTotalDupl: TFloatField;
    qFornecedor: TQuery;
    dsqCliente: TDataSource;
    qFornecedorCodForn: TIntegerField;
    qFornecedorNomeForn: TStringField;
    qFornecedorCGC: TStringField;
    qFornecedorVlrTotalDuplicata: TFloatField;
    qFornecedorTel1Forn: TStringField;
    dsqFornecedor: TDataSource;
    SMDBGrid2: TSMDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLqCliente;
    procedure Monta_SQLqFornecedor;
  public
    { Public declarations }
  end;

var
  fConsCliFornMov: TfConsCliFornMov;

implementation

uses UDM1, URelCliFornMov;

{$R *.dfm}

procedure TfConsCliFornMov.Monta_SQLqFornecedor;
begin
  qFornecedor.Close;
  qFornecedor.SQL.Clear;
  qFornecedor.SQL.Add('SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbfornecedores.CGC, ');
  qFornecedor.SQL.Add(' SUM( Dbnentrada.VlrTotalDuplicata ) VlrTotalDuplicata, Dbfornecedores.Tel1Forn ');
  qFornecedor.SQL.Add('FROM "dbNEntrada.DB" Dbnentrada');
  qFornecedor.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qFornecedor.SQL.Add('   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)');
  qFornecedor.SQL.Add('WHERE  (Dbnentrada.VlrTotalDuplicata > 0)');
  qFornecedor.SQL.Add('  AND  (Dbnentrada.DtEntrada BETWEEN :Data1 AND :Data2)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qFornecedor.SQL.Add(' AND (dbNEntrada.Filial = :Filial)');
      qFornecedor.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  qFornecedor.ParamByName('Data1').AsDate := DateEdit1.Date;
  qFornecedor.ParamByName('Data2').AsDate := DateEdit2.Date;
  qFornecedor.SQL.Add('GROUP BY Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbfornecedores.CGC, Dbfornecedores.Tel1Forn');
  qFornecedor.SQL.Add('ORDER BY Dbfornecedores.NomeForn');
  qFornecedor.Open;
end;

procedure TfConsCliFornMov.Monta_SQLqCliente;
begin
  qCliente.Close;
  qCliente.SQL.Clear;
  qCliente.SQL.Add('SELECT Dbnotafiscal.CodCli, Dbcliente.CgcCpf, Dbcliente.Nome NomeCliente, ');
  qCliente.SQL.Add(' Dbcliente.Telefone, SUM( Dbnotafiscal.VlrTotalDupl ) VlrTotalDupl ');
  qCliente.SQL.Add('FROM "DBNOTAFISCAL.DB" Dbnotafiscal');
  qCliente.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qCliente.SQL.Add('   ON (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qCliente.SQL.Add('WHERE ((Dbnotafiscal.Cancelada = FALSE) OR (Dbnotafiscal.Cancelada IS NULL))');
  qCliente.SQL.Add('  AND ((Dbnotafiscal.NFeDenegada = FALSE)  OR (Dbnotafiscal.NFeDenegada IS NULL))');
  qCliente.SQL.Add('  AND (Dbnotafiscal.VlrTotalDupl > 0)');
  qCliente.SQL.Add('  AND (Dbnotafiscal.SaidaEntrada = ''S'')');
  qCliente.SQL.Add('  AND ((Dbnotafiscal.CondPgto = ''V'') or (Dbnotafiscal.CondPgto = ''P'')) ');
  qCliente.SQL.Add('  AND (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2)');
  if RxDBLookupCombo1.Text <> '' then
  begin
    qCliente.SQL.Add('   AND  (Dbnotafiscal.Filial = :Filial)');
    qCliente.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  qCliente.ParamByName('Data1').AsDate := DateEdit1.Date;
  qCliente.ParamByName('Data2').AsDate := DateEdit2.Date;
  qCliente.SQL.Add('GROUP BY Dbnotafiscal.CodCli, Dbcliente.CgcCpf, Dbcliente.Nome, Dbcliente.Telefone');
  qCliente.SQL.Add('ORDER BY NomeCliente');
  qCliente.Open;
end;

procedure TfConsCliFornMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCliente.Close;
  qFornecedor.Close;
  Action := Cafree;
end;

procedure TfConsCliFornMov.FormShow(Sender: TObject);
begin
  SMDBGrid1.Columns[2].Visible := DM1.tUsuarioMostrarValorMovCli.AsBoolean;
  SMDBGrid2.Columns[2].Visible := DM1.tUsuarioMostrarValorMovCli.AsBoolean;

  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tFilial.Open;
end;

procedure TfConsCliFornMov.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date < 1) or (DateEdit2.Date < 1) then
    begin
      ShowMessage('É obrigatório informar o período!');
      exit;
    end;
  case RzPageControl1.ActivePageIndex of
    0 : Monta_SQLqCliente;
    1 : Monta_SQLqFornecedor;
  end;
end;

procedure TfConsCliFornMov.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsCliFornMov.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  if RzPageControl1.ActivePageIndex = 0 then
    begin
      fRelCliFornMov := TfRelCliFornMov.Create(Self);
      fRelCliFornMov.RLReport1.Preview;
      fRelCliFornMov.RLReport1.Free;
    end
  else
    begin
      fRelCliFornMov := TfRelCliFornMov.Create(Self);
      fRelCliFornMov.RLReport2.Preview;
      fRelCliFornMov.RLReport2.Free;
    end;
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
end;

end.
