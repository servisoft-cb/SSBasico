unit UConsFaturamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, CurrEdit,
  Db, DBTables, MemTable, RxLookup, DBClient, ComCtrls, Grids, DBGrids,
  SMDBGrid, Variants, FMTBcd, SqlExpr, Provider, RzTabs;

type
  TfConsFaturamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    qConsulta: TQuery;
    qConsultaDtEmissao: TDateField;
    qConsultaMaoObra: TBooleanField;
    qConsultapercdesc: TFloatField;
    qConsultaVlrIpi: TFloatField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    mDetalhado: TClientDataSet;
    mDetalhadoFilial: TIntegerField;
    mDetalhadoNumNota: TIntegerField;
    mDetalhadoDtEmissao: TDateField;
    mDetalhadoCodCliente: TIntegerField;
    mDetalhadoNomeCliente: TStringField;
    mDetalhadoVlrTotal: TFloatField;
    mDetalhadoVlrDuplicatas: TFloatField;
    mDetalhadoVlrTransf: TFloatField;
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
    mDetalhadoFantasia: TStringField;
    qConsultalkFantasia: TStringField;
    mDetalhadoTipoDoc: TStringField;
    sdsCupomFiscal: TSQLDataSet;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    qVale: TQuery;
    qValeFilial: TIntegerField;
    qValeNumVale: TIntegerField;
    qValeDtEmissao: TDateField;
    qValeCodCliente: TIntegerField;
    qValeVlrTotal: TFloatField;
    qValelkNomeCliente: TStringField;
    qValelkFantasia: TStringField;
    mDetalhadoSerie: TStringField;
    qConsultaSerie: TStringField;
    qValeCodProduto: TIntegerField;
    qValeCodCor: TIntegerField;
    sdsCupomFiscalNUMCUPOM: TIntegerField;
    sdsCupomFiscalDTEMISSAO: TDateField;
    sdsCupomFiscalCODCLIENTE: TIntegerField;
    sdsCupomFiscalFILIAL: TIntegerField;
    sdsCupomFiscalNOMECLIENTE: TStringField;
    sdsCupomFiscalFANTASIA: TStringField;
    sdsCupomFiscalCODPRODUTO: TIntegerField;
    sdsCupomFiscalCODCOR: TIntegerField;
    sdsCupomFiscalVLRTOTAL: TFloatField;
    cdsCupomFiscalNUMCUPOM: TIntegerField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalCODCLIENTE: TIntegerField;
    cdsCupomFiscalFILIAL: TIntegerField;
    cdsCupomFiscalNOMECLIENTE: TStringField;
    cdsCupomFiscalFANTASIA: TStringField;
    cdsCupomFiscalCODPRODUTO: TIntegerField;
    cdsCupomFiscalCODCOR: TIntegerField;
    cdsCupomFiscalVLRTOTAL: TFloatField;
    mAcumulado: TClientDataSet;
    mAcumuladoCodProduto: TIntegerField;
    mAcumuladoCodCor: TIntegerField;
    mAcumuladoNomeProduto: TStringField;
    mAcumuladoNomeCor: TStringField;
    mAcumuladoTipoDoc: TStringField;
    mAcumuladoNumNota: TIntegerField;
    mAcumuladoSerie: TStringField;
    mAcumuladoCodCliente: TIntegerField;
    mAcumuladoNomeCliente: TStringField;
    mAcumuladoVlrTotal: TFloatField;
    mAcumuladoVlrDuplicata: TFloatField;
    mAcumuladoVlrTransf: TFloatField;
    mAcumuladoFantasia: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    mDetalhadoCodProduto: TIntegerField;
    mDetalhadoNomeProduto: TStringField;
    mDetalhadoReferencia: TStringField;
    mDetalhadoCodCor: TIntegerField;
    mDetalhadoNomeCor: TStringField;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    CheckBox4: TCheckBox;
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    ckNotaFiscal: TCheckBox;
    ckCupomFiscal: TCheckBox;
    ckVale: TCheckBox;
    qConsultaCodProduto: TIntegerField;
    qConsultaCodCor: TIntegerField;
    qConsultalkNomeProduto: TStringField;
    qConsultalkReferencia: TStringField;
    qConsultalkNomeCor: TStringField;
    qValelkNomeProduto: TStringField;
    qValelkReferencia: TStringField;
    qValelkNomeCor: TStringField;
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mDetalhadoNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    ctCupomFiscal : String;
    ctVale : String;

    procedure Monta_SQLqConsulta;
    procedure Monta_SQLCupomFiscal;
    procedure Monta_SQLVale;

    procedure Le_qConsulta;

  public
    { Public declarations }
  end;

var
  fConsFaturamento: TfConsFaturamento;

implementation

uses UDM1, URelFaturamento, DmdDatabase, URelFaturamentoProd;

{$R *.DFM}

procedure TfConsFaturamento.Le_qConsulta;
var
  vVlrDesc : Real;
  vVlrNota : Real;
  vVlrTransf : Real;
  vUnidade : String;
  vExiste : Boolean;
  vCodCor : Integer;
  vCodProduto : Integer;
  vNumNota : Integer;
  vSerie : String;
begin
  SMDBGrid1.DisableScroll;

  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tCor.IndexFieldNames     := 'Codigo';

  mDetalhado.EmptyDataSet;
  ProgressBar1.Max      := 0;
  if ckNotaFiscal.Checked then
    ProgressBar1.Max      := ProgressBar1.Max + qConsulta.RecordCount;
  if (DM1.tParametrosUsaCupomFiscal.AsBoolean) and (ckCupomFiscal.Checked) then
    ProgressBar1.Max    := ProgressBar1.Max + cdsCupomFiscal.RecordCount;
  if ckVale.Checked then
    ProgressBar1.Max    := ProgressBar1.Max + qVale.RecordCount;
  ProgressBar1.Position := 0;

  if ckNotaFiscal.Checked then
  begin
    qConsulta.First;
    while not qConsulta.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      vCodCor     := 0;
      vCodProduto := 0;
      vNumNota    := 0;
      vSerie      := '';
      if RzPageControl1.ActivePage = TabSheet2 then
      begin
        if qConsultaCodCor.AsInteger > 0 then
          vCodCor := qConsultaCodCor.AsInteger;
        vCodProduto := qConsultaCodProduto.AsInteger;
      end
      else
      if RzPageControl1.ActivePage = TabSheet1 then
      begin
        vNumNota := qConsultaNumNota.AsInteger;
        vSerie   := qConsultaSerie.AsString;
      end;

      if mDetalhado.Locate('TipoDoc;Filial;NumNota;Serie;CodProduto;CodCor',VarArrayOf(['NF',qConsultaFilial.AsInteger,vNumNota,vSerie,vCodProduto,vCodCor]),[locaseinsensitive]) then
      //if mDetalhado.Locate('TipoDoc;Filial;NumNota;Serie',VarArrayOf(['NF',qConsultaFilial.AsInteger,qConsultaNumNota.AsInteger,qConsultaSerie.AsString]),[locaseinsensitive]) then
        mDetalhado.Edit
      else
      begin
        mDetalhado.Insert;
        mDetalhadoTipoDoc.AsString     := 'NF';
        mDetalhadoFilial.AsInteger     := qConsultaFilial.AsInteger;
        mDetalhadoNumNota.AsInteger    := vNumNota;
        mDetalhadoSerie.AsString       := vSerie;
        mDetalhadoCodCliente.AsInteger := qConsultaCodCli.AsInteger;
        mDetalhadoNomeCliente.AsString := qConsultalkNomeCliente.AsString;
        mDetalhadoDtEmissao.AsDateTime := qConsultaDtEmissao.AsDateTime;
        mDetalhadoFantasia.AsString    := qConsultalkFantasia.AsString;
        mDetalhadoCodProduto.AsInteger := vCodProduto;
        mDetalhadoCodCor.AsInteger     := vCodCor;
        mDetalhadoNomeProduto.AsString := qConsultalkNomeProduto.AsString;
        mDetalhadoReferencia.AsString  := qConsultalkReferencia.AsString;
        mDetalhadoNomeCor.AsString     := qConsultalkNomeCor.AsString;
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
      mDetalhadoVlrTotal.AsFloat      := mDetalhadoVlrTotal.AsFloat + vVlrNota;
      mDetalhadoVlrDuplicatas.AsFloat := mDetalhadoVlrDuplicatas.AsFloat + (vVlrNota - vVlrTransf);
      mDetalhadoVlrTransf.AsFloat     := mDetalhadoVlrTransf.AsFloat + vVlrTransf;
      mDetalhado.Post;

      CurrencyEdit1.Value := CurrencyEdit1.Value + vVlrNota;
      CurrencyEdit2.Value := CurrencyEdit2.Value + (vVlrNota - vVlrTransf);
      CurrencyEdit3.Value := CurrencyEdit3.Value + vVlrTransf;

      qConsulta.Next;
    end;
  end;

  //Cupom Fiscal
  //*************
  if (DM1.tParametrosUsaCupomFiscal.AsBoolean) and (ckCupomFiscal.Checked) then
  begin
    cdsCupomFiscal.First;
    while not cdsCupomFiscal.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;

      vCodCor     := 0;
      vCodProduto := 0;
      vNumNota    := 0;
      if RzPageControl1.ActivePage = TabSheet2 then
      begin
        if cdsCupomFiscalCODCOR.AsInteger > 0 then
          vCodCor := cdsCupomFiscalCODCOR.AsInteger;
        vCodProduto := cdsCupomFiscalCODPRODUTO.AsInteger;
      end
      else
      if RzPageControl1.ActivePage = TabSheet1 then
        vNumNota := cdsCupomFiscalNUMCUPOM.AsInteger;

      if mDetalhado.Locate('TipoDoc;Filial;NumNota;CodProduto;CodCor',VarArrayOf(['CF',cdsCupomFiscalFILIAL.AsInteger,vNumNota,vCodProduto,vCodCor]),[locaseinsensitive]) then
      //if mDetalhado.Locate('TipoDoc;Filial;NumNota',VarArrayOf(['CF',cdsCupomFiscalFILIAL.AsInteger,cdsCupomFiscalNUMCUPOM.AsInteger]),[locaseinsensitive]) then
        mDetalhado.Edit
      else
      begin
        mDetalhado.Insert;
        mDetalhadoTipoDoc.AsString     := 'CF';
        mDetalhadoFilial.AsInteger     := cdsCupomFiscalFILIAL.AsInteger;
        mDetalhadoNumNota.AsInteger    := vNumNota;
        mDetalhadoCodCliente.AsInteger := cdsCupomFiscalCODCLIENTE.AsInteger;
        mDetalhadoNomeCliente.AsString := cdsCupomFiscalNOMECLIENTE.AsString;
        mDetalhadoDtEmissao.AsDateTime := cdsCupomFiscalDTEMISSAO.AsDateTime;
        mDetalhadoFantasia.AsString    := cdsCupomFiscalFANTASIA.AsString;
        mDetalhadoCodProduto.AsInteger := vCodProduto;
        mDetalhadoCodCor.AsInteger     := vCodCor;
        if RzPageControl1.ActivePage = TabSheet2 then
        begin
          if DM1.tProduto.FindKey([vCodProduto]) then
          begin
            mDetalhadoNomeProduto.AsString := DM1.tProdutoNome.AsString;
            mDetalhadoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
          end;
          if DM1.tCor.FindKey([vCodCor]) then
            mDetalhadoNomeCor.AsString := DM1.tCorNome.AsString;
        end;

      end;
      vVlrNota   := cdsCupomFiscalVLRTOTAL.AsFloat;
      vVlrDesc   := 0;
      vVlrTransf := 0;
      //if qConsultapercdesc.AsFloat > 0 then
      //  vVlrDesc := (qConsultaVlrTotal.AsFloat * qConsultapercdesc.AsFloat) / 100;
      //vVlrNota := vVlrNota - vVlrDesc;
      ///vVlrNota := vVlrNota + qConsultaVlrIpi.AsFloat;
      ///if qConsultaVlrTransf.AsFloat > 0 then
      //  vVlrTransf := StrToFloat(FormatFloat('0.00',(qConsultaBaseIcms.AsFloat * qConsultaPercTransf.AsFloat / 100)));
      mDetalhadoVlrTotal.AsFloat      := mDetalhadoVlrTotal.AsFloat + vVlrNota;
      mDetalhadoVlrDuplicatas.AsFloat := mDetalhadoVlrDuplicatas.AsFloat + cdsCupomFiscalVLRTOTAL.AsFloat;
      mDetalhadoVlrTransf.AsFloat     := mDetalhadoVlrTransf.AsFloat + vVlrTransf;
      mDetalhado.Post;

      CurrencyEdit1.Value := CurrencyEdit1.Value + vVlrNota;
      CurrencyEdit2.Value := CurrencyEdit2.Value + (vVlrNota - vVlrTransf);
      CurrencyEdit3.Value := CurrencyEdit3.Value + vVlrTransf;

      cdsCupomFiscal.Next;
    end;
  end;


  //Vale
  //*************
  if ckVale.Checked then
  begin
    qVale.First;
    while not qVale.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;

      vCodCor     := 0;
      vCodProduto := 0;
      vNumNota    := 0;
      if RzPageControl1.ActivePage = TabSheet2 then
      begin
        if qValeCodCor.AsInteger > 0 then
          vCodCor := qValeCodCor.AsInteger;
        vCodProduto := qValeCodProduto.AsInteger;
      end
      else
      if RzPageControl1.ActivePage = TabSheet1 then
        vNumNota := qValeNumVale.AsInteger;

      if mDetalhado.Locate('TipoDoc;Filial;NumNota;CodProduto;CodCor',VarArrayOf(['VL',qValeFilial.AsInteger,vNumNota,vCodProduto,vCodCor]),[locaseinsensitive]) then
        mDetalhado.Edit
      else
      begin
        mDetalhado.Insert;
        mDetalhadoTipoDoc.AsString     := 'VL';
        mDetalhadoFilial.AsInteger     := qValeFilial.AsInteger;
        mDetalhadoNumNota.AsInteger    := vNumNota;
        mDetalhadoCodCliente.AsInteger := qValeCodCliente.AsInteger;
        mDetalhadoNomeCliente.AsString := qValelkNomeCliente.AsString;
        mDetalhadoDtEmissao.AsDateTime := qValeDtEmissao.AsDateTime;
        mDetalhadoFantasia.AsString    := qValelkFantasia.AsString;
        mDetalhadoCodProduto.AsInteger := vCodProduto;
        mDetalhadoCodCor.AsInteger     := vCodCor;
        mDetalhadoNomeProduto.AsString := qValelkNomeProduto.AsString;
        mDetalhadoReferencia.AsString  := qValelkReferencia.AsString;
        mDetalhadoNomeCor.AsString     := qValelkNomeCor.AsString;
      end;
      vVlrNota   := qValeVlrTotal.AsFloat;
      vVlrDesc   := 0;
      vVlrTransf := 0;
      //if qConsultapercdesc.AsFloat > 0 then
      //  vVlrDesc := (qConsultaVlrTotal.AsFloat * qConsultapercdesc.AsFloat) / 100;
      //vVlrNota := vVlrNota - vVlrDesc;
      ///vVlrNota := vVlrNota + qConsultaVlrIpi.AsFloat;
      ///if qConsultaVlrTransf.AsFloat > 0 then
      //  vVlrTransf := StrToFloat(FormatFloat('0.00',(qConsultaBaseIcms.AsFloat * qConsultaPercTransf.AsFloat / 100)));
      mDetalhadoVlrTotal.AsFloat      := mDetalhadoVlrTotal.AsFloat + vVlrNota;
      mDetalhadoVlrDuplicatas.AsFloat := mDetalhadoVlrDuplicatas.AsFloat + vVlrNota;
      mDetalhadoVlrTransf.AsFloat     := mDetalhadoVlrTransf.AsFloat + vVlrTransf;
      mDetalhado.Post;

      CurrencyEdit1.Value := CurrencyEdit1.Value + vVlrNota;
      CurrencyEdit2.Value := CurrencyEdit2.Value + (vVlrNota - vVlrTransf);
      CurrencyEdit3.Value := CurrencyEdit3.Value + vVlrTransf;

      qVale.Next;
    end;
  end;

  SMDBGrid1.EnableScroll;
end;

procedure TfConsFaturamento.Monta_SQLqConsulta;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra, Dbnotafiscal.percdesc, Dbnotafiscal.NumNota, Dbnotafiscal.NumSeq, Dbnotafiscal.Filial, Dbnotafiscalitens.Unidade, ');
  qConsulta.SQL.Add(' Dbnotafiscalitens.Qtd, Dbnotafiscalitens.VlrTotal, Dbnotafiscalitens.VlrIpi, Dbnotafiscal.VlrTransf, Dbnotafiscal.PercTransf, ');
  qConsulta.SQL.Add(' Dbnotafiscal.CodCli, Dbnotafiscal.IcmsIpi, Dbnotafiscalitens.BaseIcms, dbNotaFiscal.Serie, dbNotaFiscalItens.CodProduto, dbNotaFiscalItens.CodCor ');
  qConsulta.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qConsulta.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qConsulta.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qConsulta.SQL.Add('   AND  (Dbnotafiscal.NumSeq = Dbnotafiscalitens.NumSeq)');
  qConsulta.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qConsulta.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');
  qConsulta.SQL.Add('WHERE   ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  qConsulta.SQL.Add('  AND   ( (Dbnotafiscal.NFeDenegada = FALSE)  OR  (Dbnotafiscal.NFeDenegada IS NULL) )');
  qConsulta.SQL.Add('   AND  Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2');
  qConsulta.SQL.Add('   AND  (Dbnotafiscalitens.GeraDupl = TRUE)');
  qConsulta.SQL.Add('  AND  ((Dbnotafiscal.CondPgto = ''V'') or (Dbnotafiscal.CondPgto = ''P'') or (Dbnotafiscal.CondPgto = ''A'')) ');
  qConsulta.SQL.Add('  AND  (Dbnotafiscal.SaidaEntrada = ''S'')');
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
  qConsulta.Open;
end;

procedure TfConsFaturamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qConsulta.Close;
  DM1.tNotaFiscal.Filtered := False;
  DM1.tCliente.Close;
  DM1.tNotaFiscal.Close;
  DM1.tNotaFiscalParc.Close;

  Action := Cafree;
end;

procedure TfConsFaturamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsFaturamento.FormShow(Sender: TObject);
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
  DM1.tProduto.Open;
  DM1.tProduto2.Open;
  DM1.tCor.Open;
  DM1.tCor2.Open;

  ctCupomFiscal := sdsCupomFiscal.CommandText;
  ctVale        := qVale.SQL.Text;

  ckCupomFiscal.Checked := DM1.tParametrosUsaCupomFiscal.AsBoolean;
  ckCupomFiscal.Visible := DM1.tParametrosUsaCupomFiscal.AsBoolean;
end;

procedure TfConsFaturamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsFaturamento.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date < 1) or (DateEdit2.Date < 1) then
  begin
    ShowMessage('Falta informar a data inicial e final!');
    exit;
  end;

  if RzPageControl1.ActivePage = TabSheet1 then
    TabSheet2.TabEnabled := False
  else
    TabSheet1.TabEnabled := False;
  Panel3.Enabled  := False;
  BitBtn1.Enabled := False;
  BitBtn4.Enabled := True;

  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  if ckNotaFiscal.Checked then
    Monta_SQLqConsulta;
  if (DM1.tParametrosUsaCupomFiscal.AsBoolean) and (ckCupomFiscal.Checked) then
    Monta_SQLCupomFiscal;
  if ckVale.Checked then
    Monta_SQLVale;
  Le_qConsulta;
  if RzPageControl1.ActivePage = TabSheet1 then
    mDetalhado.IndexFieldNames := 'TipoDoc;Filial;NumNota;Serie'
  else
    mDetalhado.IndexFieldNames := 'TipoDoc;Filial;NomeProduto;NomeCor';
end;

procedure TfConsFaturamento.mDetalhadoNewRecord(DataSet: TDataSet);
begin
  mDetalhadoVlrDuplicatas.AsFloat := 0;
  mDetalhadoVlrTotal.AsFloat      := 0;
  mDetalhadoVlrTransf.AsFloat     := 0;
end;

procedure TfConsFaturamento.BitBtn3Click(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TabSheet1 then
  begin
    SMDBGrid1.DisableScroll;
    fRelFaturamento := TfRelFaturamento.Create(Self);
    fRelFaturamento.RLReport1.Preview;
    fRelFaturamento.RLReport1.Free;
    SMDBGrid1.EnableScroll;
  end
  else
  if RzPageControl1.ActivePage = TabSheet2 then
  begin
    SMDBGrid2.DisableScroll;
    fRelFaturamentoProd := TfRelFaturamentoProd.Create(Self);
    fRelFaturamentoProd.RLReport1.Preview;
    fRelFaturamentoProd.RLReport1.Free;
    SMDBGrid2.EnableScroll;
  end;
end;

procedure TfConsFaturamento.Monta_SQLCupomFiscal;
begin
  cdsCupomFiscal.Close;
  sdsCupomFiscal.CommandText := ctCupomFiscal
       + ' AND DTEMISSAO BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date)) + ' AND ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

  if RxDBLookupCombo1.Text <> '' then
    sdsCupomFiscal.CommandText := sdsCupomFiscal.CommandText + ' AND FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo2.Text <> '' then
    sdsCupomFiscal.CommandText := sdsCupomFiscal.CommandText + ' AND CODCLIENTE = ' + IntToStr(RxDBLookupCombo2.KeyValue);
  cdsCupomFiscal.Open;
end;

procedure TfConsFaturamento.Monta_SQLVale;
begin
  qVale.Close;
  qVale.SQL.Clear;
  qVale.SQL.Text := ctVale;
  if RxDBLookupCombo1.Text <> '' then
  begin
    qVale.SQL.Add(' AND Filial = :Filial ');
    qVale.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if RxDBLookupCombo2.Text <> '' then
  begin
    qVale.SQL.Add(' AND CodCliente = :CodCliente ');
    qVale.ParamByName('CodCliente').AsInteger := RxDBLookupCombo2.KeyValue;
  end;
  qVale.ParamByName('DataIni').AsDate := DateEdit1.Date;
  qVale.ParamByName('DataFin').AsDate := DateEdit2.Date;
  qVale.Open;
end;

procedure TfConsFaturamento.BitBtn4Click(Sender: TObject);
begin
  TabSheet1.TabEnabled := True;
  TabSheet2.TabEnabled := True;
  Panel3.Enabled       := True;
  BitBtn1.Enabled      := True;
  BitBtn4.Enabled      := False;
  mDetalhado.EmptyDataSet;
end;

end.
