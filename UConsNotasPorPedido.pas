unit UConsNotasPorPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Mask, ToolEdit, CurrEdit, DB, DBTables,
  Buttons, Grids, DBGrids, SMDBGrid, ExtCtrls;

type
  TfConsNotasPorPedido = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label5: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    qNota: TQuery;
    qNotaFilial: TIntegerField;
    qNotaNumNota: TIntegerField;
    qNotaCodCli: TIntegerField;
    qNotaNome: TStringField;
    qNotaCodGrupo: TIntegerField;
    qNotaDtEmissao: TDateField;
    qNotaVlrTotalNota: TFloatField;
    qNotaVlrTotalItens: TFloatField;
    qNotaBaseIcms: TFloatField;
    qNotaVlrIcms: TFloatField;
    qNotaVlrTotalDupl: TFloatField;
    qNotaPercTransf: TFloatField;
    qNotaVlrTransf: TFloatField;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    dsqNota: TDataSource;
    tNotaFiscalPed: TTable;
    tNotaFiscalPedFilial: TIntegerField;
    tNotaFiscalPedItemNota: TIntegerField;
    tNotaFiscalPedPedido: TIntegerField;
    tNotaFiscalPedItemPedido: TIntegerField;
    tNotaFiscalPedQtd: TFloatField;
    tNotaFiscalPedCopia: TBooleanField;
    tNotaFiscalItens: TTable;
    tNotaFiscalItensFilial: TIntegerField;
    tNotaFiscalItensNumNota: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensCodProduto: TIntegerField;
    tNotaFiscalItensCodCor: TIntegerField;
    tNotaFiscalItensClasFiscal: TStringField;
    tNotaFiscalItensUnidade: TStringField;
    tNotaFiscalItensQtd: TFloatField;
    tNotaFiscalItensIcms: TFloatField;
    tNotaFiscalItensIpi: TFloatField;
    tNotaFiscalItensSitTrib: TSmallintField;
    tNotaFiscalItensVlrUnit: TFloatField;
    tNotaFiscalItensVlrTotal: TFloatField;
    tNotaFiscalItensDesconto: TFloatField;
    tNotaFiscalItensVlrDesconto: TFloatField;
    tNotaFiscalItensBaseIcms: TFloatField;
    tNotaFiscalItensVlrIcms: TFloatField;
    tNotaFiscalItensVlrIpi: TFloatField;
    tNotaFiscalItensNatOper: TSmallintField;
    tNotaFiscalItensIcmsIpi: TBooleanField;
    tNotaFiscalItensNumPedido: TIntegerField;
    tNotaFiscalItensItemPedido: TIntegerField;
    tNotaFiscalItensDescricao: TStringField;
    tNotaFiscalItensReferencia: TStringField;
    tNotaFiscalItensComissaoMod: TFloatField;
    tNotaFiscalItensCodComissao: TIntegerField;
    tNotaFiscalItensCodGrade: TIntegerField;
    tNotaFiscalItensNumMovEst: TIntegerField;
    tNotaFiscalItensGeraDupl: TBooleanField;
    tNotaFiscalItensMaterial: TBooleanField;
    tNotaFiscalItensEstoque: TBooleanField;
    tNotaFiscalItensNumNotaDevForn: TIntegerField;
    tNotaFiscalItensCodFornDev: TIntegerField;
    tNotaFiscalItensItemDev: TIntegerField;
    tNotaFiscalItensNumOC: TStringField;
    tNotaFiscalItensNumOS: TStringField;
    tNotaFiscalItensCodBarraRotulo: TStringField;
    tNotaFiscalItensVale: TBooleanField;
    tNotaFiscalItensPosicao: TIntegerField;
    tNotaFiscalItensTamanho: TStringField;
    tNotaFiscalItensPercComissao: TFloatField;
    tNotaFiscalItensPercComissao2: TFloatField;
    tNotaFiscalItensLargura: TStringField;
    tNotaFiscalItensTipoItem: TStringField;
    tNotaFiscalItensQtdRestante: TFloatField;
    tNotaFiscalItensQtdDevolvida: TFloatField;
    dsNotaFiscalPed: TDataSource;
    SMDBGrid2: TSMDBGrid;
    tNotaFiscalPedlkReferencia: TStringField;
    tNotaFiscalPedlkNomeProduto: TStringField;
    tNotaFiscalPedlkPedidoCliente: TStringField;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    StaticText1: TStaticText;
    tNotaFiscalPedGrade: TTable;
    tNotaFiscalPedGradeFilial: TIntegerField;
    tNotaFiscalPedGradeNumNota: TIntegerField;
    tNotaFiscalPedGradeItemNota: TIntegerField;
    tNotaFiscalPedGradePedido: TIntegerField;
    tNotaFiscalPedGradeItemPedido: TIntegerField;
    tNotaFiscalPedGradeCodGrade: TIntegerField;
    tNotaFiscalPedGradePosicao: TIntegerField;
    tNotaFiscalPedGradeQtd: TFloatField;
    dsNotaFiscalPedGrade: TDataSource;
    tNotaFiscalPedGradelkTamanho: TStringField;
    CheckBox1: TCheckBox;
    tNotaFiscalItensNumSeq: TIntegerField;
    tNotaFiscalItensSomaTransfICM: TBooleanField;
    tNotaFiscalItensFabrica: TStringField;
    tNotaFiscalItensNumTalao: TIntegerField;
    tNotaFiscalPedGradeNumSeq: TIntegerField;
    tNotaFiscalPedGradeNumTalao: TIntegerField;
    tNotaFiscalPedNumSeq: TIntegerField;
    tNotaFiscalPedNumTalao: TIntegerField;
    tNotaFiscalPedNumNota: TIntegerField;
    qNotaNumSeq: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsNotasPorPedido: TfConsNotasPorPedido;

implementation

uses UDM1, UDM2, UConsNotasPorPedidoGrade, URelNotasPorPedido;

{$R *.dfm}

procedure TfConsNotasPorPedido.Monta_SQL;
begin
  qNota.Close;
  qNota.SQL.Clear;
  qNota.SQL.Add('SELECT Dbnotafiscal.Filial, Dbnotafiscal.NumNota, Dbnotafiscal.CodCli, Dbcliente.Nome, Dbcliente.CodGrupo, Dbnotafiscal.DtEmissao, Dbnotafiscal.VlrTotalNota, ');
  qNota.SQL.Add(' Dbnotafiscal.VlrTotalItens, Dbnotafiscal.BaseIcms, Dbnotafiscal.VlrIcms, Dbnotafiscal.VlrTotalDupl, Dbnotafiscal.PercTransf, Dbnotafiscal.VlrTransf, dbNotaFiscal.NumSeq ');
  qNota.SQL.Add(' FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qNota.SQL.Add('    INNER JOIN "dbCliente.DB" Dbcliente');
  qNota.SQL.Add('    ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qNota.SQL.Add(' WHERE  (0 = 0)');
  if RxDBLookupCombo3.Text <> '' then
    begin
      qNota.SQL.Add(' AND  (dbNotaFiscal.Filial = :Filial)');
      qNota.ParamByName('Filial').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qNota.SQL.Add(' AND  (dbNotaFiscal.CodCli = :CodCli)');
      qNota.ParamByName('CodCli').AsInteger := RxDBLookupCombo1.KeyValue;
    end
  else
  if RxDBLookupCombo2.Text <> '' then
    begin
      qNota.SQL.Add(' AND  (dbCliente.CodGrupo = :CodGrupo)');
      qNota.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qNota.SQL.Add(' AND  (dbNotaFiscal.DtEmissao >= :DtInicial)');
      qNota.ParamByName('DtInicial').AsDate := DateEdit1.date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qNota.SQL.Add(' AND  (dbNotaFiscal.DtEmissao <= :DtFinal)');
      qNota.ParamByName('DtFinal').AsDate := DateEdit2.date;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qNota.SQL.Add(' AND  (dbNotaFiscal.NumNota <= :NumNota)');
      qNota.ParamByName('NumNota').AsInteger := CurrencyEdit1.AsInteger;
    end;
  qNota.SQL.Add(' ORDER BY Dbnotafiscal.Filial, Dbnotafiscal.NumNota');
  qNota.Open;
end;

procedure TfConsNotasPorPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCliente.Close;
  DM1.tGrupoCliente.Close;
  qNota.Close;
  Action := Cafree;
end;

procedure TfConsNotasPorPedido.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsNotasPorPedido.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tGrupoCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsNotasPorPedido.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid2.DataSource := nil;
  if RxDBLookupCombo1.Text <> '' then
    RxDBLookupCombo2.ClearValue;
  Monta_SQL;
  if qNota.RecordCount > 0 then
    SMDBGrid2.DataSource := dsNotaFiscalPed;
end;

procedure TfConsNotasPorPedido.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tGrupoCliente.Open;
end;

procedure TfConsNotasPorPedido.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotasPorPedido.SMDBGrid2DblClick(Sender: TObject);
begin
  fConsNotasPorPedidoGrade := TfConsNotasPorPedidoGrade.Create(Self);
  fConsNotasPorPedidoGrade.ShowModal;
end;

procedure TfConsNotasPorPedido.BitBtn3Click(Sender: TObject);
begin
  if (qNota.Active) and (qNota.RecordCount > 0) then
    begin
      fRelNotasPorPedido := TfRelNotasPorPedido.Create(Self);
      fRelNotasPorPedido.RLReport1.Preview;
      fRelNotasPorPedido.RLReport1.Free;
    end
  else
    ShowMessage('Não existe registro para a impressão!');
end;

end.
