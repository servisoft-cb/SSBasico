unit UConsFaturamentoGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, CurrEdit,
  Db, DBTables, MemTable, RxLookup, DBClient, ComCtrls, Grids, DBGrids,
  SMDBGrid, Variants, RzTabs;

type
  TfConsFaturamentoGrupo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox4: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    qConsulta: TQuery;
    qConsultaDtEmissao: TDateField;
    qConsultaMaoObra: TBooleanField;
    qConsultapercdesc: TFloatField;
    qConsultaVlrIpi: TFloatField;
    ProgressBar1: TProgressBar;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    mDetalhado: TClientDataSet;
    dsmDetalhado: TDataSource;
    qConsultaNumNota: TIntegerField;
    qConsultaNumSeq: TIntegerField;
    qConsultaFilial: TIntegerField;
    qConsultaUnidade: TStringField;
    qConsultaQtd: TFloatField;
    qConsultaVlrTotal: TFloatField;
    qConsultaVlrTransf: TFloatField;
    qConsultaPercTransf: TFloatField;
    qConsultaCodCli: TIntegerField;
    qConsultalkNomeCliente: TStringField;
    qConsultaIcmsIpi: TBooleanField;
    qConsultaBaseIcms: TFloatField;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    qConsultalkFantasia: TStringField;
    qConsultaCodGrupo: TIntegerField;
    mDetalhadoCodGrupo: TIntegerField;
    mDetalhadoNomeGrupo: TStringField;
    mDetalhadoVlrTotalDuplicata: TFloatField;
    mDetalhadoVlrTotalNota: TFloatField;
    mDetalhadoVlrTransf: TFloatField;
    mDetalhadoQuantidade: TFloatField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    qConsultaCodProduto: TIntegerField;
    qConsultaReferencia: TStringField;
    dsqConsulta: TDataSource;
    SMDBGrid2: TSMDBGrid;
    GroupBox1: TGroupBox;
    ckNotaFiscal: TCheckBox;
    ckCupomFiscal: TCheckBox;
    ckVale: TCheckBox;
    qConsultaSerie: TStringField;
    qConsultaCodCor: TIntegerField;
    qConsultalkNomeCor: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mDetalhadoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Monta_SQLqConsulta;
    procedure Le_qConsulta;
  public
    { Public declarations }
  end;

var
  fConsFaturamentoGrupo: TfConsFaturamentoGrupo;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsFaturamentoGrupo.Le_qConsulta;
var
  vVlrDesc : Real;
  vVlrNota : Real;
  vVlrTransf : Real;
begin
  SMDBGrid1.DisableScroll;

  mDetalhado.EmptyDataSet;
  ProgressBar1.Max      := qConsulta.RecordCount;
  ProgressBar1.Position := 0;

  qConsulta.First;
  while not qConsulta.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    if mDetalhado.Locate('CodGrupo',qConsultaCodGrupo.AsInteger,[loCaseInsensitive]) then
      mDetalhado.Edit
    else
    begin
      mDetalhado.Insert;
      mDetalhadoCodGrupo.AsInteger := qConsultaCodGrupo.AsInteger;
      if DM1.tGrupo.Locate('Codigo',qConsultaCodGrupo.AsInteger,[loCaseInsensitive]) then
        mDetalhadoNomeGrupo.AsString := DM1.tGrupoNome.AsString;
    end;
    vVlrNota   := qConsultaVlrTotal.AsFloat;
    vVlrDesc   := 0;
    vVlrTransf := 0;
    if qConsultapercdesc.AsFloat > 0 then
      vVlrDesc := (qConsultaVlrTotal.AsFloat * qConsultapercdesc.AsFloat) / 100;
    vVlrNota := vVlrNota - vVlrDesc;
    vVlrNota := vVlrNota + qConsultaVlrIpi.AsFloat;
    if qConsultaVlrTransf.AsFloat > 0 then
      vVlrTransf := StrToFloat(FormatFloat('0.00',(qConsultaBaseIcms.AsFloat * qConsultaPercTransf.AsFloat / 100)));
    mDetalhadoVlrTotalNota.AsFloat      := mDetalhadoVlrTotalNota.AsFloat + vVlrNota;
    mDetalhadoVlrTotalDuplicata.AsFloat := mDetalhadoVlrTotalDuplicata.AsFloat + (vVlrNota - vVlrTransf);
    mDetalhadoVlrTransf.AsFloat         := mDetalhadoVlrTransf.AsFloat + vVlrTransf;
    mDetalhadoQuantidade.AsFloat        := mDetalhadoQuantidade.AsFloat + qConsultaQtd.AsFloat;
    mDetalhado.Post;

    CurrencyEdit1.Value := CurrencyEdit1.Value + vVlrNota;
    CurrencyEdit2.Value := CurrencyEdit2.Value + (vVlrNota - vVlrTransf);
    CurrencyEdit3.Value := CurrencyEdit3.Value + vVlrTransf;

    qConsulta.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsFaturamentoGrupo.Monta_SQLqConsulta;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra, Dbnotafiscal.percdesc, Dbnotafiscal.NumNota, Dbnotafiscal.NumSeq, Dbnotafiscal.Filial, Dbnotafiscalitens.Unidade, ');
  qConsulta.SQL.Add(' Dbnotafiscalitens.Qtd, Dbnotafiscalitens.VlrTotal, Dbnotafiscalitens.VlrIpi, Dbnotafiscal.VlrTransf, Dbnotafiscal.PercTransf, ');
  qConsulta.SQL.Add(' Dbnotafiscal.CodCli, Dbnotafiscal.IcmsIpi, Dbnotafiscalitens.BaseIcms, dbProduto.CodGrupo, Dbproduto.Codigo CodProduto, Dbproduto.Referencia, ');
  qConsulta.SQL.Add(' dbNotaFiscal.Serie, dbNotaFiscalItens.CodCor ');
  qConsulta.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qConsulta.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qConsulta.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qConsulta.SQL.Add('   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)');
  qConsulta.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qConsulta.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');
  qConsulta.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qConsulta.SQL.Add('   ON (Dbnotafiscalitens.CodProduto = Dbproduto.Codigo)');
  qConsulta.SQL.Add('WHERE ((Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL))');
  qConsulta.SQL.Add('  AND ((Dbnotafiscal.NFeDenegada = FALSE)  OR  (Dbnotafiscal.NFeDenegada IS NULL))');
  qConsulta.SQL.Add('  AND (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2)');
  qConsulta.SQL.Add('  AND (Dbnotafiscalitens.GeraDupl = TRUE)');
  qConsulta.SQL.Add('  AND ((Dbnotafiscal.CondPgto = ''V'') or (Dbnotafiscal.CondPgto = ''P'') or (Dbnotafiscal.CondPgto = ''A'')) ');
  qConsulta.SQL.Add('  AND (Dbnotafiscal.SaidaEntrada = ''S'') ');
  if not CheckBox4.Checked then
    qConsulta.SQL.Add('  AND  (DbNotafiscalItens.Material = False)');
  if RxDBLookupCombo1.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND Dbnotafiscal.Filial = :Filial');
    qConsulta.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if RxDBLookupCombo2.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND Dbnotafiscal.CodCli = :CodCli');
    qConsulta.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
  end;
  qConsulta.ParamByName('Data1').AsDate := DateEdit1.Date;
  qConsulta.ParamByName('Data2').AsDate := DateEdit2.Date;
  qConsulta.SQL.Add('ORDER BY dbProduto.CodGrupo, dbProduto.Codigo');
  qConsulta.Open;
end;

procedure TfConsFaturamentoGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qConsulta.Close;
  DM1.tNotaFiscal.Filtered := False;
  DM1.tCliente.Close;
  DM1.tNotaFiscal.Close;
  DM1.tNotaFiscalParc.Close;
  DM1.tGrupo.Close;
  Action := Cafree;
end;

procedure TfConsFaturamentoGrupo.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsFaturamentoGrupo.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;
  
  DM1.tNotaFiscal.Close;
  DM1.tNotaFiscalItens.Close;
  DM1.tNotaFiscalParc.Close;
  DM1.tCliente.Open;
  DM1.tNotaFiscal.Open;
  DM1.tNotaFiscalItens.Open;
  DM1.tNotaFiscalParc.Open;
  DM1.tGrupo.Open;
end;

procedure TfConsFaturamentoGrupo.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsFaturamentoGrupo.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date < 1) or (DateEdit2.Date < 1) then
    begin
      ShowMessage('Falta informar a data inicial e final!');
      exit;
    end;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  Monta_SQLqConsulta;
  Le_qConsulta;
end;

procedure TfConsFaturamentoGrupo.mDetalhadoNewRecord(DataSet: TDataSet);
begin
  mDetalhadoVlrTotalDuplicata.AsFloat := 0;
  mDetalhadoVlrTotalNota.AsFloat      := 0;
  mDetalhadoVlrTransf.AsFloat         := 0;
end;

end.
