unit UPrevPrevComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Menus, DBTables, StdCtrls, Buttons, RxLookup, Mask, ToolEdit,
  RXCtrls, ExtCtrls, DBFilter, Grids, DBGrids, RXDBCtrl;

type
  TfPrevPrevComissao = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxSpeedButton2: TRxSpeedButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qPrevisao: TQuery;
    qPrevisaoFilial: TIntegerField;
    qPrevisaoNomeFilial: TStringField;
    qPrevisaoNumCReceber: TIntegerField;
    qPrevisaoParcCReceber: TIntegerField;
    qPrevisaoVlrParcCReceber: TFloatField;
    qPrevisaoDtVencCReceber: TDateField;
    qPrevisaoCodCli: TIntegerField;
    qPrevisaoNumNota: TIntegerField;
    qPrevisaoNomeCliente: TStringField;
    qPrevisaoPgtoParcial: TFloatField;
    qPrevisaoRestParcela: TFloatField;
    qPrevisaoCodVendedor: TIntegerField;
    qPrevisaoPercComissao: TFloatField;
    qPrevisaoNomeVendedor: TStringField;
    qPrevisaoVlrComissao: TFloatField;
    qPrevisaoCodVendedor2: TIntegerField;
    qPrevisaoPercComissao2: TFloatField;
    dsqPrevisao: TDataSource;
    qVendedor: TQuery;
    dsqVendedor: TDataSource;
    RxDBFilter1: TRxDBFilter;
    qVendedorCodVendedor: TIntegerField;
    qVendedorNomeVendedor: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    procedure Monta_SQL;
   { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevPrevComissao: TfPrevPrevComissao;

implementation

uses UDM1, URelPrevComissao;

{$R *.DFM}

procedure TfPrevPrevComissao.Monta_SQL;
begin
  //Monta o sql da previsão
  qPrevisao.Close;
  qPrevisao.SQL.Clear;
  qPrevisao.SQL.Add('SELECT Dbcreceberparc.Filial, Dbfilial.Empresa NomeFilial, Dbcreceberparc.NumCReceber, ');
  qPrevisao.SQL.Add(' Dbcreceberparc.ParcCReceber, Dbcreceberparc.VlrParcCReceber, Dbcreceberparc.DtVencCReceber, ');
  qPrevisao.SQL.Add(' Dbcreceberparc.CodCli, Dbcreceberparc.NumNota, Dbcliente.Nome NomeCliente, ');
  qPrevisao.SQL.Add(' Dbcreceberparc.PgtoParcial, Dbcreceberparc.RestParcela, Dbcreceberparc.CodVendedor, ');
  qPrevisao.SQL.Add(' Dbcreceberparc.PercComissao, Dbvendedor.Nome NomeVendedor, Dbcreceberparc.VlrComissao, Dbcreceberparc.CodVendedor2, Dbcreceberparc.PercComissao2 ');
  qPrevisao.SQL.Add('FROM "dbCReceberParc.DB" Dbcreceberparc');
  qPrevisao.SQL.Add('   INNER JOIN "dbFilial.DB" Dbfilial');
  qPrevisao.SQL.Add('   ON  (Dbcreceberparc.Filial = Dbfilial.Codigo)');
  qPrevisao.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qPrevisao.SQL.Add('   ON  (Dbcreceberparc.CodCli = Dbcliente.Codigo)');
  qPrevisao.SQL.Add('   INNER JOIN "dbVendedor.DB" Dbvendedor');
  qPrevisao.SQL.Add('   ON  (Dbcreceberparc.CodVendedor = Dbvendedor.Codigo)');
  qPrevisao.SQL.Add('WHERE   (Dbcreceberparc.RestParcela > 0)');
  qPrevisao.SQL.Add('   AND  (Dbcreceberparc.Cancelado = FALSE) and (dbVendedor.TipoComissao = ''D'')');
  qPrevisao.SQL.Add('   AND  (Dbcreceberparc.DtVencCReceber BETWEEN :Data1 AND :Data2)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPrevisao.SQL.Add('   AND  (Dbcreceberparc.CodVendedor = :CodVendedor)');
      qPrevisao.ParamByName('CodVendedor').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPrevisao.SQL.Add('   AND  (Dbcreceberparc.Filial = :Filial)');
      qPrevisao.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qPrevisao.ParamByName('Data1').AsDate := DateEdit1.Date;
  qPrevisao.ParamByName('Data2').AsDate := DateEdit2.Date;
  qPrevisao.SQL.Add('ORDER BY Dbcreceberparc.DtVencCReceber, dbVendedor.Nome, dbcreceberparc.numnota, dbcreceberparc.ParcCReceber');
  qPrevisao.Open;

  //Monta o sql dos vendedores
  //Monta o sql da previsão
  qVendedor.Close;
  qVendedor.SQL.Clear;
  qVendedor.SQL.Add('SELECT DISTINCT Dbcreceberparc.CodVendedor, Dbvendedor.Nome NomeVendedor');
  qVendedor.SQL.Add('FROM "dbCReceberParc.DB" Dbcreceberparc');
  qVendedor.SQL.Add('   INNER JOIN "dbVendedor.DB" Dbvendedor');
  qVendedor.SQL.Add('   ON  (Dbcreceberparc.CodVendedor = Dbvendedor.Codigo)');
  qVendedor.SQL.Add('WHERE   (Dbcreceberparc.RestParcela > 0)');
  qVendedor.SQL.Add('   AND  (Dbcreceberparc.Cancelado = FALSE) and (dbVendedor.TipoComissao = ''D'')');
  qVendedor.SQL.Add('   AND  (Dbcreceberparc.DtVencCReceber BETWEEN :Data1 AND :Data2)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qVendedor.SQL.Add('   AND  (Dbcreceberparc.CodVendedor = :CodVendedor)');
      qVendedor.ParamByName('CodVendedor').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qVendedor.SQL.Add('   AND  (Dbcreceberparc.Filial = :Filial)');
      qVendedor.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qVendedor.ParamByName('Data1').AsDate := DateEdit1.Date;
  qVendedor.ParamByName('Data2').AsDate := DateEdit2.Date;
  qVendedor.SQL.Add('ORDER BY dbVendedor.Nome');
  qVendedor.Open;
end;

procedure TfPrevPrevComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  DM1.tVendedor.Close;
  DM1.tCReceber.Close;
  DM1.tCReceberParc.Close;
  DM1.tNotaFiscal.Close;
  Action := Cafree;
end;

procedure TfPrevPrevComissao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPrevComissao.RxSpeedButton2Click(Sender: TObject);
begin
  if (DateEdit1.Date > 0) and (DateEdit2.Date > 0) then
    begin
      Monta_SQL;
      qPrevisao.First;
      qVendedor.First;

      fRelPrevComissao := TfRelPrevComissao.Create(self);
      fRelPrevComissao.RLReport1.Preview;
      fRelPrevComissao.RLReport1.Free;
    end
  else
    ShowMessage('Falta informar a data!');
end;

procedure TfPrevPrevComissao.FormShow(Sender: TObject);
begin
  DM1.tVendedor.Open;
  DM1.tCReceber.Open;
  DM1.tCReceberParc.Open;
  DM1.tNotaFiscal.Open;
  RxDBFilter1.Active := True;
end;

procedure TfPrevPrevComissao.RxDBLookupCombo1Enter(Sender: TObject);
begin
  Dm1.tVendedor.IndexFieldNames := 'Nome';
end;

end.
