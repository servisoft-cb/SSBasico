unit UPrevContrFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, Menus, Buttons, CurrEdit,
  Db, DBTables, MemTable, RxLookup, DBClient;

type
  TfPrevContrFat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RadioGroup1: TRadioGroup;
    qAcumulado: TQuery;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    qAcumuladoDtEmissao: TDateField;
    mAcumulado: TClientDataSet;
    mAcumuladoData: TDateField;
    qAcumuladoMaoObra: TBooleanField;
    qAcumuladoVlrFaturado: TFloatField;
    mAcumuladoVlrVenda: TFloatField;
    mAcumuladoVlrMObra: TFloatField;
    mAcumuladoVlrAcumVenda: TFloatField;
    mAcumuladoVlrAcumMObra: TFloatField;
    mAcumuladoVlrFaturadoTotal: TFloatField;
    mAcumuladoVlrAcumTotal: TFloatField;
    mAcumuladoVlrMediaVenda: TFloatField;
    mAcumuladoVlrMediaMObra: TFloatField;
    mAcumuladoVlrMediaTotal: TFloatField;
    dsmAcumulado: TDataSource;
    qDetalhado: TQuery;
    qDetalhadoNomeCliente: TStringField;
    qDetalhadoDtEmissao: TDateField;
    qDetalhadoNumNota: TIntegerField;
    qDetalhadoVlrTotalNota: TFloatField;
    qDetalhadoVlrTransf: TFloatField;
    qDetalhadoVlrTotalDupl: TFloatField;
    tNotaFiscalParc: TTable;
    dsqDetalhado: TDataSource;
    qDetalhadoFilial: TIntegerField;
    tNotaFiscalParcFilial: TIntegerField;
    tNotaFiscalParcParcela: TSmallintField;
    tNotaFiscalParcDtVenc: TDateField;
    tNotaFiscalParcVlrVenc: TFloatField;
    tNotaFiscalParcCodTipoCobr: TIntegerField;
    tNotaFiscalParcCodConta: TIntegerField;
    qAcumuladopercdesc: TFloatField;
    CheckBox4: TCheckBox;
    mAcumuladoVlrDev: TFloatField;
    mAcumuladoVlrMediaDev: TFloatField;
    qAcumNEDev: TQuery;
    qAcumNEDevCodForn: TIntegerField;
    qAcumNEDevNomeForn: TStringField;
    qAcumNEDevCGC: TStringField;
    qAcumNEDevQtd: TFloatField;
    qAcumNEDevVlrDevolucao: TFloatField;
    qAcumNEDevDtEntrada: TDateField;
    mAcumuladoVlrAcumDev: TFloatField;
    mAcumuladoContador: TIntegerField;
    tNotaFiscalParcNumSeq: TIntegerField;
    qDetalhadoNumSeq: TIntegerField;
    CheckBox1: TCheckBox;
    qAcumuladoVlrIpi: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure mAcumuladoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Gera_mAcumulado;
    procedure Monta_SQLDetalhado;
    procedure Controle_Impressao(Tipo : String);
  public
    { Public declarations }
  end;

var
  fPrevContrFat: TfPrevContrFat;

implementation

uses UDM1, URelContrFat, URelContrFatAcumulado;

{$R *.DFM}

procedure TfPrevContrFat.Controle_Impressao(Tipo : String);
begin
  DM1.tNotaFiscal.Refresh;
  DM1.tNotaFiscalItens.Refresh;
  DM1.tNotaFiscalParc.Refresh;
  if (DateEdit1.date > 0) and (DateEdit2.Date > 0) then
    begin
      Screen.Cursor := crHourGlass;
      if RadioGroup1.ItemIndex = 0 then
        begin
          Monta_SQLDetalhado;
          qDetalhado.First;
          Screen.Cursor := crDefault;
          fRelContrFat  := TfRelContrFat.Create(Self);
          if Tipo = 'P' then
            fRelContrFat.QuickRep1.Print
          else
            fRelContrFat.QuickRep1.Preview;
          fRelContrFat.QuickRep1.Free;
        end
      else
        begin
          Monta_SQL;
          Gera_mAcumulado;
          Screen.Cursor := crDefault;
          mAcumulado.First;
          fRelContrFatAcumulado := TfRelContrFatAcumulado.Create(Self);
          if Tipo = 'P' then
            fRelContrFatAcumulado.RLReport1.Print
          else
            fRelContrFatAcumulado.RLReport1.Preview;
          fRelContrFatAcumulado.RLReport1.Free;
        end;
    end
  else
    begin
      ShowMessage('Deve ser informada as datas "Inicial" e "Final" p/ gerar o relatório!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevContrFat.Monta_SQLDetalhado;
begin
  qDetalhado.Close;
  qDetalhado.SQL.Clear;
  qDetalhado.SQL.Add('SELECT Dbcliente.Nome NomeCliente, Dbnotafiscal.DtEmissao, Dbnotafiscal.NumNota, Dbnotafiscal.VlrTotalNota, Dbnotafiscal.VlrTransf, Dbnotafiscal.VlrTotalDupl, Dbnotafiscal.Filial, dbNotaFiscal.NumSeq');
  qDetalhado.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qDetalhado.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qDetalhado.SQL.Add('   ON  (Dbnotafiscal.CodCli = Dbcliente.Codigo)');
  qDetalhado.SQL.Add('WHERE   Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2');
  qDetalhado.SQL.Add('   AND  ( (Dbnotafiscal.Cancelada = FALSE) OR  (Dbnotafiscal.Cancelada IS NULL) )');
  qDetalhado.SQL.Add('   AND  ( (Dbnotafiscal.NFeDenegada = FALSE)  OR  (Dbnotafiscal.NFeDenegada IS NULL) )');
  qDetalhado.SQL.Add('   AND  (Dbnotafiscal.SaidaEntrada = ''S'' )');
  if CheckBox1.Checked then
  begin
    qDetalhado.SQL.Add('   AND  (Dbnotafiscal.VlrTotalDupl > 0)');
    qDetalhado.SQL.Add('  AND  ((Dbnotafiscal.CondPgto = ''V'') or (Dbnotafiscal.CondPgto = ''P'') or (Dbnotafiscal.CondPgto = ''A'')) ');
  end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qDetalhado.SQL.Add(' AND Dbnotafiscal.Filial = :Filial');
      qDetalhado.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qDetalhado.SQL.Add(' AND Dbnotafiscal.CodCli = :CodCli');
      qDetalhado.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qDetalhado.ParamByName('Data1').AsDate := DateEdit1.Date;
  qDetalhado.ParamByName('Data2').AsDate := DateEdit2.Date;
  qDetalhado.SQL.Add('ORDER BY Dbnotafiscal.Filial, Dbnotafiscal.NumNota');
  qDetalhado.Open;
end;

procedure TfPrevContrFat.Monta_SQL;
begin
  //Faturamento
  qAcumulado.Close;
  qAcumulado.SQL.Clear;
  qAcumulado.SQL.Add('SELECT Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra,  SUM( Dbnotafiscalitens.VlrTotal ) VlrFaturado,  SUM( Dbnotafiscalitens.VlrIPI )  VlrIpi, dbnotafiscal.percdesc');
  qAcumulado.SQL.Add('FROM "dbNotaFiscal.DB" Dbnotafiscal');
  qAcumulado.SQL.Add('   INNER JOIN "dbNotaFiscalItens.DB" Dbnotafiscalitens');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscal.Filial = Dbnotafiscalitens.Filial)');
  qAcumulado.SQL.Add('   AND  (Dbnotafiscal.NumNota = Dbnotafiscalitens.NumNota)');
  qAcumulado.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qAcumulado.SQL.Add('   ON  (Dbnotafiscalitens.NatOper = Dbnatoperacao.Codigo)');
  qAcumulado.SQL.Add('WHERE  ( (Dbnotafiscal.Cancelada = FALSE)  OR  (Dbnotafiscal.Cancelada IS NULL) )');
  qAcumulado.SQL.Add('   AND ( (Dbnotafiscal.NFeDenegada = FALSE)  OR  (Dbnotafiscal.NFeDenegada IS NULL) )');
  qAcumulado.SQL.Add('   AND (Dbnotafiscal.DtEmissao BETWEEN :Data1 AND :Data2)');
  qAcumulado.SQL.Add('   AND (Dbnotafiscalitens.GeraDupl = True)');
  qAcumulado.SQL.Add('   AND (Dbnotafiscal.SaidaEntrada = ''S'') ');
  qAcumulado.SQL.Add('   AND ((Dbnotafiscal.CondPgto = ''V'') or (Dbnotafiscal.CondPgto = ''P'') or (Dbnotafiscal.CondPgto = ''A'')) ');
  if not CheckBox4.Checked then
    qAcumulado.SQL.Add('  AND  (DbNotafiscalItens.Material = False)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qAcumulado.SQL.Add(' AND Dbnotafiscal.Filial = :Filial');
      qAcumulado.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qAcumulado.SQL.Add(' AND Dbnotafiscal.CodCli = :CodCli');
      qAcumulado.ParamByName('CodCli').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qAcumulado.ParamByName('Data1').AsDate := DateEdit1.Date;
  qAcumulado.ParamByName('Data2').AsDate := DateEdit2.Date;
  qAcumulado.SQL.Add('GROUP BY Dbnotafiscal.DtEmissao, Dbnatoperacao.MaoObra, dbnotafiscal.percdesc');
  qAcumulado.SQL.Add('ORDER BY Dbnotafiscal.DtEmissao');
  qAcumulado.Open;

  //Devoluções
  qAcumNEDev.Close;
  qAcumNEDev.SQL.Clear;
  qAcumNEDev.SQL.Add('SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbfornecedores.CGC, SUM( Dbnentradaitens.Qtd ) Qtd, SUM( Dbnentradaitens.VlrTotalItens ) VlrDevolucao, dbNEntrada.DtEntrada');
  qAcumNEDev.SQL.Add('FROM "dbNEntrada.DB" Dbnentrada');
  qAcumNEDev.SQL.Add('   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens');
  qAcumNEDev.SQL.Add('   ON  (Dbnentrada.Filial = Dbnentradaitens.Filial)');
  qAcumNEDev.SQL.Add('   AND  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)');
  qAcumNEDev.SQL.Add('   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)');
  qAcumNEDev.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qAcumNEDev.SQL.Add('   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)');
  qAcumNEDev.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qAcumNEDev.SQL.Add('   ON  (Dbnentradaitens.CodNatOper = Dbnatoperacao.Codigo)');
  qAcumNEDev.SQL.Add('WHERE   (Dbnatoperacao.DeduzirFat = TRUE)');
  qAcumNEDev.SQL.Add('   AND  (Dbnentrada.DtEntrada BETWEEN :DataIni AND :DataFin)');
  qAcumNEDev.ParamByName('DataIni').AsDate := DateEdit1.Date;
  qAcumNEDev.ParamByName('DataFin').AsDate := DateEdit2.Date;
  if not CheckBox4.Checked then
    qAcumNEDev.SQL.Add('  AND  (dbNEntradaItens.MatProd = ''P'')');
  if RxDBLookupCombo1.Text <> '' then
  begin
    qAcumNEDev.SQL.Add(' AND (dbNEntrada.Filial = :Filial)');
    qAcumNEDev.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if RxDBLookupCombo2.Text <> '' then
  begin
    if DM1.tCliente.Locate('Codigo',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
    begin
      qAcumNEDev.SQL.Add(' AND (dbFornecedores.CGC = :CGC)');
      qAcumNEDev.ParamByName('CGC').AsString := DM1.tClienteCgcCpf.AsString;
    end;
  end;
  qAcumNEDev.SQL.Add('GROUP BY Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbfornecedores.CGC, dbNEntrada.DtEntrada');
  qAcumNEDev.SQL.Add('ORDER BY Dbnentrada.DtEntrada');
  qAcumNEDev.Open;
end;

procedure TfPrevContrFat.Gera_mAcumulado;
var
  vContador, vContadorAux : Integer;
  vAcumVenda, vAcumMObra, vAcumTotal, vVlrDesc, vAcumDev : Real;
begin
  vAcumVenda := 0;
  vAcumMObra := 0;
  vAcumTotal := 0;
  vAcumDev   := 0;
  vContador  := 0;
  mAcumulado.EmptyDataSet;
  //Faturamento
  qAcumulado.First;
  while not qAcumulado.Eof do
    begin
      if mAcumulado.Locate('Data',qAcumuladoDtEmissao.AsDateTime,[loCaseInsensitive]) then
        mAcumulado.Edit
      else
        begin
          inc(vContador);
          mAcumulado.Insert;
          mAcumuladoData.AsDateTime := qAcumuladoDtEmissao.AsDateTime;
        end;
      vVlrDesc                   := 0;
      if qAcumuladoPercDesc.AsFloat > 0 then
        vVlrDesc := (qAcumuladoVlrFaturado.AsFloat * qAcumuladoPercDesc.AsFloat) / 100;

      if qAcumuladoMaoObra.AsBoolean then
        begin
          mAcumuladoVlrMObra.AsFloat := mAcumuladoVlrMObra.AsFloat + qAcumuladoVlrFaturado.AsFloat + qAcumuladoVlrIpi.AsFloat - vVlrDesc;
          vAcumMObra                 := vAcumMObra + qAcumuladoVlrFaturado.AsFloat + qAcumuladoVlrIpi.AsFloat - vVlrDesc;
        end
      else
        begin
          mAcumuladoVlrVenda.AsFloat := mAcumuladoVlrVenda.AsFloat + qAcumuladoVlrFaturado.AsFloat + qAcumuladoVlrIpi.AsFloat  - vVlrDesc;
          vAcumVenda                 := vAcumVenda + qAcumuladoVlrFaturado.AsFloat + qAcumuladoVlrIpi.AsFloat - vVlrDesc;
        end;
      mAcumuladoVlrAcumMObra.AsFloat  := vAcumMObra;
      if mAcumuladoVlrAcumMObra.AsFloat > 0 then
        mAcumuladoVlrMediaMObra.AsFloat := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumMObra.AsFloat / vContador));

      mAcumuladoVlrAcumVenda.AsFloat  := vAcumVenda;
      if mAcumuladoVlrAcumVenda.AsFloat > 0 then
        mAcumuladoVlrMediaVenda.AsFloat := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumVenda.AsFloat / vContador));

      //*************

      mAcumuladoVlrFaturadoTotal.AsFloat := mAcumuladoVlrFaturadoTotal.AsFloat + qAcumuladoVlrFaturado.AsFloat + qAcumuladoVlrIpi.AsFloat - vVlrDesc;
      vAcumTotal                         := vAcumTotal + qAcumuladoVlrFaturado.AsFloat + qAcumuladoVlrIpi.AsFloat - vVlrDesc;
      mAcumuladoVlrAcumTotal.AsFloat     := vAcumTotal;
      if mAcumuladoVlrAcumTotal.AsFloat > 0 then
        mAcumuladoVlrMediaTotal.AsFloat    := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumTotal.AsFloat / vContador));
      mAcumuladoContador.AsInteger       := vContador;
      mAcumulado.Post;
      qAcumulado.Next;
    end;

  //Devoluções
  vContadorAux := 0;
  qAcumNEDev.First;
  while not qAcumNEDev.Eof do
    begin
      if qAcumNEDevDtEntrada.AsDateTime > 0 then
        begin
          if mAcumulado.Locate('Data',qAcumNEDevDtEntrada.AsDateTime,[loCaseInsensitive]) then
            mAcumulado.Edit
          else
            begin
              inc(vContadorAux);
              inc(vContador);
              mAcumulado.Insert;
              mAcumuladoData.AsDateTime    := qAcumNEDevDtEntrada.AsDateTime;
              mAcumuladoContador.AsInteger := vContador;
            end;
          if vContadorAux = 0 then
            vContadorAux := 1;

          mAcumuladoVlrDev.AsFloat := mAcumuladoVlrDev.AsFloat + qAcumNEDevVlrDevolucao.AsFloat;
          vAcumDev                 := vAcumDev + qAcumNEDevVlrDevolucao.AsFloat;

          mAcumuladoVlrAcumDev.AsFloat  := vAcumDev;
          if mAcumuladoVlrAcumDev.AsFloat > 0 then
            mAcumuladoVlrMediaDev.AsFloat := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumDev.AsFloat / vContadorAux));

          //*************

          mAcumuladoVlrFaturadoTotal.AsFloat := mAcumuladoVlrFaturadoTotal.AsFloat - qAcumNEDevVlrDevolucao.AsFloat;
          vAcumTotal                         := vAcumTotal - qAcumNEDevVlrDevolucao.AsFloat;
          mAcumuladoVlrAcumTotal.AsFloat     := vAcumTotal;
          if mAcumuladoVlrAcumTotal.AsFloat > 0 then
            mAcumuladoVlrMediaTotal.AsFloat    := StrToFloat(FormatFloat('0.00',mAcumuladoVlrAcumTotal.AsFloat / mAcumuladoContador.AsInteger));
          mAcumulado.Post;
        end;
      qAcumNEDev.Next;
    end;
end;

procedure TfPrevContrFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tNotaFiscal.Filtered := False;
  DM1.tCliente.Close;
  DM1.tNotaFiscal.Close;
  DM1.tNotaFiscalParc.Close;
  qAcumulado.Close;
  qDetalhado.Close;
  qAcumNEDev.Close;

  Action := Cafree;
end;

procedure TfPrevContrFat.BitBtn1Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
  DateEdit1.SetFocus;
end;

procedure TfPrevContrFat.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevContrFat.Imprimir1Click(Sender: TObject);
begin
  Controle_Impressao('P');
end;

procedure TfPrevContrFat.Visualizar1Click(Sender: TObject);
begin
  Controle_Impressao('V');
end;

procedure TfPrevContrFat.FormShow(Sender: TObject);
begin
  DM1.tNotaFiscal.Close;
  DM1.tNotaFiscalItens.Close;
  DM1.tNotaFiscalParc.Close;
  DM1.tCliente.Open;
  DM1.tNotaFiscal.Open;
  DM1.tNotaFiscalItens.Open;
  DM1.tNotaFiscalParc.Open;
end;

procedure TfPrevContrFat.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevContrFat.mAcumuladoNewRecord(DataSet: TDataSet);
begin
  mAcumuladoVlrVenda.AsFloat         := 0;
  mAcumuladoVlrMObra.AsFloat         := 0;
  mAcumuladoVlrAcumMObra.AsFloat     := 0;
  mAcumuladoVlrAcumTotal.AsFloat     := 0;
  mAcumuladoVlrAcumVenda.AsFloat     := 0;
  mAcumuladoVlrFaturadoTotal.AsFloat := 0;
  mAcumuladoVlrDev.AsFloat           := 0;
  mAcumuladoVlrAcumDev.AsFloat       := 0;
  mAcumuladoVlrMediaDev.AsFloat      := 0;
end;

end.
