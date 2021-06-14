unit UPrevPlanoContas2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RxLookup, StdCtrls, Mask, ToolEdit, Buttons, Db, DBTables,
  Grids, DBGrids, MemTable, RXDBCtrl, ALed, ComCtrls, DBClient;

type
  TfPrevPlanoContas2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    qCReceber: TQuery;
    qCPagar: TQuery;
    qMovimentos: TQuery;
    qCReceberNomePlanoContas: TStringField;
    qCReceberDtVencCReceber: TDateField;
    qCReceberRestParcela: TFloatField;
    qCReceberPlanoContas: TIntegerField;
    qCReceberCodPlanoContasItens: TIntegerField;
    qCPagarNomePlanoContas: TStringField;
    qCPagarPlanoContas: TIntegerField;
    qCPagarCodPlanoContasItens: TIntegerField;
    qCPagarDtVencCPagar: TDateField;
    qCPagarRestParcela: TFloatField;
    qMovimentosPlanoContas: TIntegerField;
    qMovimentosCodPlanoContasItens: TIntegerField;
    qMovimentosDtMovimento: TDateField;
    qAux: TQuery;
    qMovimentosNomePlanoContas: TStringField;
    ALed1: TALed;
    Label7: TLabel;
    ALed2: TALed;
    Label8: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    RxDBGrid1: TRxDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    dsqCReceber: TDataSource;
    dsqCPagar: TDataSource;
    dsqMovimentos: TDataSource;
    RxDBGrid2: TRxDBGrid;
    qCReceberlkNomePlanoItens: TStringField;
    tPlanoContasItens: TTable;
    tPlanoContasItensCodPlano: TIntegerField;
    tPlanoContasItensCodItem: TIntegerField;
    tPlanoContasItensNome: TStringField;
    qCReceberNumNota: TIntegerField;
    RxDBGrid3: TRxDBGrid;
    qCPagarlkNomePlanoItens: TStringField;
    qCPagarNumNotaEnt: TIntegerField;
    qCPagarCodForn: TIntegerField;
    qCPagarlkNomeFornecedor: TStringField;
    qMovimentoslkNomePlanoItens: TStringField;
    qMovimentosVlrMovCredito: TFloatField;
    qMovimentosNumNota: TIntegerField;
    qMovimentosNumNotaEnt: TIntegerField;
    qMovimentosVlrMovDebito: TFloatField;
    RxDBGrid4: TRxDBGrid;
    qCPagarNroDuplicata: TIntegerField;
    qMovimentosHistorico: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    mAuxPlano: TClientDataSet;
    mAuxPlanoNome: TStringField;
    mAuxPlanoSubItem: TStringField;
    mAuxPlanoNomePlanoItens: TStringField;
    mAuxPlanoCodPlanoItens: TIntegerField;
    mAuxPlanoPlanoContas: TIntegerField;
    mAuxPlanoEntradaR: TFloatField;
    mAuxPlanoSaidaR: TFloatField;
    mAuxPlanoEntradaP: TFloatField;
    mAuxPlanoSaidaP: TFloatField;
    dsmAuxPlano: TDataSource;
    Label11: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure mAuxPlanoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Monta_Dados;
    procedure Monta_SQL;
    //procedure Cria_TabelaAuxiliar;
  public
    { Public declarations }
  end;

var
  fPrevPlanoContas2: TfPrevPlanoContas2;
  F : TextFile;
  vTotalCred, vTotalDeb, vTotalSaldo    : Real;
  vTotalCredP, vTotalDebP, vTotalSaldoP : Real;
  Linha, Pagina : Integer;

implementation

uses UDM1, UEscImpressora, URelPlano2;

{$R *.DFM}

procedure TfPrevPlanoContas2.Monta_SQL;
var
  vSeparador : String;
begin
  //Contas a Receber Pendentes
  qCReceber.Close;
  qCReceber.SQL.Clear;
  qCReceber.SQL.Add('SELECT Dbplanocontas.Descricao NomePlanoContas, Dbcreceberparc.DtVencCReceber, ');
  qCReceber.SQL.Add(' Dbcreceberparc.RestParcela, Dbcreceberparc.PlanoContas, Dbcreceberparc.CodPlanoContasItens, Dbcreceberparc.NumNota');
  qCReceber.SQL.Add('FROM "dbPlanoContas.DB" Dbplanocontas');
  qCReceber.SQL.Add('   INNER JOIN "dbCReceberParc.DB" Dbcreceberparc');
  qCReceber.SQL.Add('   ON  (Dbcreceberparc.PlanoContas = Dbplanocontas.Codigo)');
  qCReceber.SQL.Add('WHERE ( (Dbcreceberparc.Cancelado = FALSE)  OR  (Dbcreceberparc.Cancelado IS NULL) )');
  qCReceber.SQL.Add('AND ((Dbcreceberparc.QuitParcCReceber = FALSE) OR (Dbcreceberparc.QuitParcCReceber is Null))');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qCReceber.SQL.Add(' AND (Dbcreceberparc.PlanoContas = :CodPlano)');
      qCReceber.ParamByName('CodPlano').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if (DateEdit1.Date > 0) and (DateEdit2.Date > 0) then
    begin
      if ComboBox1.ItemIndex = 0 then
        qCReceber.SQL.Add(' AND (Dbcreceberparc.DtVencCReceber BETWEEN :DataI AND :DataF)')
      else
        qCReceber.SQL.Add(' AND (Dbcreceberparc.DtGerado BETWEEN :DataI AND :DataF)');
      qCReceber.ParamByName('DataI').AsDate := DateEdit1.Date;
      qCReceber.ParamByName('DataF').AsDate := DateEdit2.Date;
    end;
  qCReceber.SQL.Add('ORDER BY Dbplanocontas.Descricao, Dbcreceberparc.CodPlanoContasItens');
  qCReceber.Open;

  //Contas a Pagar Pendentes
  qCPagar.Close;
  qCPagar.SQL.Clear;
  qCPagar.SQL.Add('SELECT Dbplanocontas.Descricao NomePlanoContas, Dbcpagarparc.PlanoContas, Dbcpagarparc.NroDuplicata,');
  qCPagar.SQL.Add(' Dbcpagarparc.CodPlanoContasItens, Dbcpagarparc.DtVencCPagar, Dbcpagarparc.RestParcela, Dbcpagarparc.NumNotaEnt, Dbcpagarparc.CodForn');
  qCPagar.SQL.Add('FROM "dbCPagarParc.DB" Dbcpagarparc');
  qCPagar.SQL.Add('   INNER JOIN "dbPlanoContas.DB" Dbplanocontas');
  qCPagar.SQL.Add('   ON  (Dbcpagarparc.PlanoContas = Dbplanocontas.Codigo)');
  qCPagar.SQL.Add('WHERE ((Dbcpagarparc.QuitParcCPagar = FALSE) OR (Dbcpagarparc.QuitParcCPagar is Null))');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qCPagar.SQL.Add('AND   (Dbcpagarparc.PlanoContas = :CodPlano)');
      qCPagar.ParamByName('CodPlano').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      if ComboBox1.ItemIndex = 0 then
        qCPagar.SQL.Add(' AND (Dbcpagarparc.DtVencCPagar BETWEEN :DataI AND :DataF)')
      else
        qCPagar.SQL.Add(' AND (Dbcpagarparc.DtGerado BETWEEN :DataI AND :DataF)');
      qCPagar.ParamByName('DataI').AsDate := DateEdit1.Date;
      qCPagar.ParamByName('DataF').AsDate := DateEdit2.Date;
    end;
  qCPagar.Open;

  //Movimentos Financeiros Realizado
  qMovimentos.Close;
  qMovimentos.SQL.Clear;
  qMovimentos.SQL.Add('SELECT Dbmovimentos.PlanoContas, Dbmovimentos.CodPlanoContasItens, Dbmovimentos.DtMovimento, Dbmovimentos.Historico,');
  qMovimentos.SQL.Add(' Dbmovimentos.VlrMovDebito, Dbmovimentos.VlrMovCredito, Dbplanocontas.Descricao NomePlanoContas, Dbmovimentos.NumNota, Dbmovimentos.NumNotaEnt');
  qMovimentos.SQL.Add('FROM "dbMovimentos.DB" Dbmovimentos');
  qMovimentos.SQL.Add('   INNER JOIN "dbPlanoContas.DB" Dbplanocontas');
  qMovimentos.SQL.Add('   ON  (Dbmovimentos.PlanoContas = Dbplanocontas.Codigo)');
  vSeparador := 'WHERE';
  if RxDBLookupCombo1.Text <> '' then
    begin
      qMovimentos.SQL.Add(vSeparador + ' (Dbmovimentos.PlanoContas = :CodPlano)');
      qMovimentos.ParamByName('CodPlano').AsInteger := RxDBLookupCombo1.KeyValue;
      vSeparador := 'AND';
    end;
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') then
    begin
      qMovimentos.SQL.Add(vSeparador + ' (Dbmovimentos.DtMovimento BETWEEN :DataI AND :DataF)');
      qMovimentos.ParamByName('DataI').AsDate := DateEdit1.Date;
      qMovimentos.ParamByName('DataF').AsDate := DateEdit2.Date;
    end;
  qMovimentos.Open;
end;


procedure TfPrevPlanoContas2.Monta_Dados;
var
  vEntradaP, vSaidaP, vEntradaR, vSaidaR : Real;
begin
  mAuxPlano.EmptyDataSet;
  vEntradaP := 0;
  vSaidaP   := 0;
  vEntradaR := 0;
  vSaidaR   := 0;
  {*** Lê o contas a receber ***}
  qCReceber.First;
  while not qCReceber.Eof do
    begin
      //Grava o Plano
      mAuxPlano.SetKey;
      mAuxPlanoNome.AsString           := qCReceberNomePlanoContas.AsString;
      mAuxPlanoSubItem.AsString        := 'N';
      mAuxPlanoNomePlanoItens.AsString := '';
      if mAuxPlano.GotoKey then
        mAuxPlano.Edit
      else
        begin
          mAuxPlano.Insert;
          mAuxPlanoNome.AsString           := qCReceberNomePlanoContas.AsString;
          mAuxPlanoSubItem.AsString        := 'N';
          mAuxPlanoNomePlanoItens.AsString := '';
        end;
      mAuxPlanoEntradaP.AsFloat := mAuxPlanoEntradaP.AsFloat + qCReceberRestParcela.AsFloat;
      mAuxPlano.Post;
      vEntradaP := vEntradaP + qCReceberRestParcela.AsFloat;

      //Grava a SubConta (Plano de Contas Itens)
      mAuxPlano.SetKey;
      mAuxPlanoNome.AsString           := qCReceberNomePlanoContas.AsString;
      mAuxPlanoSubItem.AsString        := 'S';
      mAuxPlanoNomePlanoItens.AsString := qCReceberlkNomePlanoItens.AsString;
      if mAuxPlano.GotoKey then
        mAuxPlano.Edit
      else
        begin
          mAuxPlano.Insert;
          mAuxPlanoNome.AsString           := qCReceberNomePlanoContas.AsString;
          mAuxPlanoSubItem.AsString        := 'S';
          mAuxPlanoNomePlanoItens.AsString := qCReceberlkNomePlanoItens.AsString;
        end;
      mAuxPlanoEntradaP.AsFloat := mAuxPlanoEntradaP.AsFloat + qCReceberRestParcela.AsFloat;
      mAuxPlano.Post;
      qCReceber.Next;
    end;

  {*** Lê o contas a pagar ***}
  qCPagar.First;
  while not qCPagar.Eof do
    begin
      //Grava o Plano
      mAuxPlano.SetKey;
      mAuxPlanoNome.AsString           := qCPagarNomePlanoContas.AsString;
      mAuxPlanoSubItem.AsString        := 'N';
      mAuxPlanoNomePlanoItens.AsString := '';
      if mAuxPlano.GotoKey then
        mAuxPlano.Edit
      else
        begin
          mAuxPlano.Insert;
          mAuxPlanoNome.AsString           := qCPagarNomePlanoContas.AsString;
          mAuxPlanoSubItem.AsString        := 'N';
          mAuxPlanoNomePlanoItens.AsString := '';
        end;
      mAuxPlanoSaidaP.AsFloat := mAuxPlanoSaidaP.AsFloat + qCPagarRestParcela.AsFloat;
      mAuxPlano.Post;
      vSaidaP := vSaidaP + qCPagarRestParcela.AsFloat;

      //Grava a SubConta (Plano de Contas Itens)
      mAuxPlano.SetKey;
      mAuxPlanoNome.AsString           := qCPagarNomePlanoContas.AsString;
      mAuxPlanoSubItem.AsString        := 'S';
      mAuxPlanoNomePlanoItens.AsString := qCPagarlkNomePlanoItens.AsString;
      if mAuxPlano.GotoKey then
        mAuxPlano.Edit
      else
        begin
          mAuxPlano.Insert;
          mAuxPlanoNome.AsString           := qCPagarNomePlanoContas.AsString;
          mAuxPlanoSubItem.AsString        := 'S';
          mAuxPlanoNomePlanoItens.AsString := qCPagarlkNomePlanoItens.AsString;
        end;
      mAuxPlanoSaidaP.AsFloat := mAuxPlanoSaidaP.AsFloat + qCPagarRestParcela.AsFloat;
      mAuxPlano.Post;
      qCPagar.Next;
    end;

  {*** Lê o movimento financeiro ***}
  qMovimentos.First;
  while not qMovimentos.Eof do
    begin
      //Grava o Plano
      mAuxPlano.SetKey;
      mAuxPlanoNome.AsString           := qMovimentosNomePlanoContas.AsString;
      mAuxPlanoSubItem.AsString        := 'N';
      mAuxPlanoNomePlanoItens.AsString := '';
      if mAuxPlano.GotoKey then
        mAuxPlano.Edit
      else
        begin
          mAuxPlano.Insert;
          mAuxPlanoNome.AsString           := qMovimentosNomePlanoContas.AsString;
          mAuxPlanoSubItem.AsString        := 'N';
          mAuxPlanoNomePlanoItens.AsString := '';
        end;
      mAuxPlanoEntradaR.AsFloat := mAuxPlanoEntradaR.AsFloat + qMovimentosVlrMovCredito.AsFloat;
      mAuxPlanoSaidaR.AsFloat   := mAuxPlanoSaidaR.AsFloat + qMovimentosVlrMovDebito.AsFloat;
      mAuxPlano.Post;
      vEntradaR := vEntradaR + qMovimentosVlrMovCredito.AsFloat;
      vSaidaR := vSaidaR + qMovimentosVlrMovDebito.AsFloat;

      //Grava a SubConta (Plano de Contas Itens)
      mAuxPlano.SetKey;
      mAuxPlanoNome.AsString           := qMovimentosNomePlanoContas.AsString;
      mAuxPlanoSubItem.AsString        := 'S';
      mAuxPlanoNomePlanoItens.AsString :=  qMovimentoslkNomePlanoItens.AsString;
      if mAuxPlano.GotoKey then
        mAuxPlano.Edit
      else
        begin
          mAuxPlano.Insert;
          mAuxPlanoNome.AsString           := qMovimentosNomePlanoContas.AsString;
          mAuxPlanoSubItem.AsString        := 'S';
          mAuxPlanoNomePlanoItens.AsString :=  qMovimentoslkNomePlanoItens.AsString;
        end;
      mAuxPlanoEntradaR.AsFloat := mAuxPlanoEntradaR.AsFloat + qMovimentosVlrMovCredito.AsFloat;
      mAuxPlanoSaidaR.AsFloat   := mAuxPlanoSaidaR.AsFloat + qMovimentosVlrMovDebito.AsFloat;
      mAuxPlano.Post;

      qMovimentos.Next;
    end;
  Label5.Caption  := FormatFloat('###,##0.00',vSaidaR);
  Label6.Caption  := FormatFloat('###,##0.00',vEntradaR);
  Label9.Caption  := FormatFloat('###,##0.00',vEntradaP);
  Label10.Caption := FormatFloat('###,##0.00',vSaidaP);
  mAuxPlano.First;
end;

{procedure TfPrevPlanoContas2.Cria_TabelaAuxiliar;
begin
  mAuxPlano.Close;
  if FileExists('C:\dbAuxPlano.DB') then
    begin
      qAux.Active := False;
      qAux.SQL.Clear;
      qAux.SQL.Add('DROP TABLE dbAuxPlano');
      qAux.ExecSQL;
    end;
  qAux.Active := False;
  qAux.SQL.Clear;
  qAux.SQL.Add('CREATE TABLE dbAuxPlano(');
  qAux.SQL.Add('Nome Character (40), Codigo INTEGER, EntradaR NUMERIC(10), SaidaR NUMERIC(10), EntradaP NUMERIC(10), SaidaP NUMERIC(10), ');
  qAux.SQL.Add('PRIMARY KEY Nome)');
  qAux.ExecSQL;
  mAuxPlano.Open;
end;}

procedure TfPrevPlanoContas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCPagar.Close;
  qCReceber.Close;
  qMovimentos.Close;
  DM1.tPlanoContas.Close;
  DM1.tPlanoContasItens.Close;
  mAuxPlano.EmptyDataSet;
  Action := caFree;
end;

procedure TfPrevPlanoContas2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPlanoContas2.FormShow(Sender: TObject);
begin
  DM1.tPlanoContas.Open;
  DM1.tPlanoContasItens.Open;
end;

procedure TfPrevPlanoContas2.BitBtn3Click(Sender: TObject);
begin
  RxDBGrid1.DataSource := nil;
  Monta_SQL;
  //Cria_TabelaAuxiliar;
  Monta_Dados;
  mAuxPlano.First;
  BitBtn1.Enabled := True;
  RxDBGrid1.DataSource := dsmAuxPlano;
end;

procedure TfPrevPlanoContas2.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mAuxPlanoSubItem.AsString = 'N' then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end
  else
    begin
      Background  := clInfoBk;
      AFont.Color := clBlack;
    end;
end;

procedure TfPrevPlanoContas2.BitBtn1Click(Sender: TObject);
begin
  if mAuxPlano.RecordCount > 0 then
    begin
      fRelPlano2 := TfRelPlano2.Create(Self);
      fRelPlano2.QuickRep1.Preview;
      fRelPlano2.QuickRep1.Free;
    end
  else
    ShowMessage('Primeiro executar a consulta!');
end;

procedure TfPrevPlanoContas2.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qCReceberCodPlanoContasItens.AsInteger > 0 then
    begin
      Background  := clInfoBk;
      AFont.Color := clBlack;
    end
  else
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
end;

procedure TfPrevPlanoContas2.RxDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qCPagarCodPlanoContasItens.AsInteger > 0 then
    begin
      Background  := clInfoBk;
      AFont.Color := clBlack;
    end
  else
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
end;

procedure TfPrevPlanoContas2.RxDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qMovimentosCodPlanoContasItens.AsInteger > 0 then
    begin
      Background  := clInfoBk;
      AFont.Color := clBlack;
    end
  else
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
end;

procedure TfPrevPlanoContas2.mAuxPlanoNewRecord(DataSet: TDataSet);
begin
  mAuxPlanoEntradaR.AsFloat := 0;
  mAuxPlanoSaidaR.AsFloat   := 0;
  mAuxPlanoEntradaP.AsFloat := 0;
  mAuxPlanoSaidaP.AsFloat   := 0;
end;

end.
