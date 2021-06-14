unit UDMNotaFiscal;

interface

uses
  SysUtils, Classes, DB, DBTables, Variants, Dialogs, DBIProcs;

type
  TDMNotaFiscal = class(TDataModule)
    tNotaFiscalIns: TTable;
    tNotaFiscalInsFilial: TIntegerField;
    tNotaFiscalInsNumSeq: TIntegerField;
    tNotaFiscalInsDtEmissao: TDateField;
    tNotaFiscalInsImpressa: TBooleanField;
    tNotaFiscalInsNFeRecibo: TStringField;
    tNotaFiscalInsNFeProtocolo: TStringField;
    tNotaFiscalInsNFeChaveAcesso: TStringField;
    tNotaFiscalInsNFeProtocoloCancelada: TStringField;
    tNotaFiscalInsSerie: TStringField;
    tNotaFiscalInsTipoEnvioNF: TStringField;
    dsNotaFiscalIns: TDataSource;
    tNotaFiscalItensIns: TTable;
    dsNotaFiscalItensIns: TDataSource;
    tNotaFiscalItensInsFilial: TIntegerField;
    tNotaFiscalItensInsNumSeq: TIntegerField;
    tNotaFiscalItensInsItem: TSmallintField;
    tNotaFiscalItensInsCodProduto: TIntegerField;
    tNotaFiscalItensInsCodCor: TIntegerField;
    tNotaFiscalItensInsClasFiscal: TStringField;
    tNotaFiscalItensInsUnidade: TStringField;
    tNotaFiscalItensInsQtd: TFloatField;
    tNotaFiscalItensInsIcms: TFloatField;
    tNotaFiscalItensInsIpi: TFloatField;
    tNotaFiscalItensInsSitTrib: TSmallintField;
    tNotaFiscalItensInsVlrUnit: TFloatField;
    tNotaFiscalItensInsVlrTotal: TFloatField;
    tNotaFiscalItensInsDesconto: TFloatField;
    tNotaFiscalItensInsVlrDesconto: TFloatField;
    tNotaFiscalItensInsBaseIcms: TFloatField;
    tNotaFiscalItensInsVlrIcms: TFloatField;
    tNotaFiscalItensInsVlrIpi: TFloatField;
    tNotaFiscalItensInsNatOper: TSmallintField;
    tNotaFiscalItensInsIcmsIpi: TBooleanField;
    tNotaFiscalItensInsNumOC: TStringField;
    tNotaFiscalItensInsNumOS: TStringField;
    tNotaFiscalItensInsPercComissao: TFloatField;
    tNotaFiscalItensInsNumNota: TIntegerField;
    tNotaFiscalItensInsCodCSTIPI: TStringField;
    qNatOper: TQuery;
    qNatOperNatOper: TSmallintField;
    tNotaFiscalInsNumNota: TIntegerField;
    tNotaFiscalInsCodNatOper: TSmallintField;
    tNotaFiscalInsCodCli: TIntegerField;
    tNotaFiscalInsCondPgto: TStringField;
    tNotaFiscalInsCodVendedor: TIntegerField;
    tNotaFiscalInsBaseIcms: TFloatField;
    tNotaFiscalInsVlrIcms: TFloatField;
    tNotaFiscalInsVlrIpi: TFloatField;
    tNotaFiscalInsVlrTotalNota: TFloatField;
    tNotaFiscalInsVlrTotalItens: TFloatField;
    tNotaFiscalInsPercDesc: TFloatField;
    tNotaFiscalInsVlrTotalDesc: TFloatField;
    tNotaFiscalInsVlrFrete: TFloatField;
    tNotaFiscalInsVlrSeguro: TFloatField;
    tNotaFiscalInsOutrasDesp: TFloatField;
    tNotaFiscalInsQtd: TIntegerField;
    tNotaFiscalInsEspecie: TStringField;
    tNotaFiscalInsMarca: TStringField;
    tNotaFiscalInsNumero: TStringField;
    tNotaFiscalInsPesoBruto: TFloatField;
    tNotaFiscalInsPesoLiquido: TFloatField;
    tNotaFiscalInsPlaca: TStringField;
    tNotaFiscalInsUFPlaca: TStringField;
    tNotaFiscalInsEmitDest: TStringField;
    tNotaFiscalInsCodTransp: TIntegerField;
    tNotaFiscalInsObs: TMemoField;
    tNotaFiscalInsSaidaEntrada: TStringField;
    tNotaFiscalInsCancelada: TBooleanField;
    tNotaFiscalInsDtSaidaEnt: TDateField;
    tNotaFiscalInsHoraSaida: TTimeField;
    tNotaFiscalInsLocalEntrega: TBooleanField;
    tNotaFiscalInsInss: TBooleanField;
    tNotaFiscalInsIrf: TBooleanField;
    tNotaFiscalInsVlrInss: TFloatField;
    tNotaFiscalInsVlrIrf: TFloatField;
    tNotaFiscalInsPrazoPgto: TIntegerField;
    tNotaFiscalInsEntrada: TFloatField;
    tNotaFiscalInsPercComissao: TFloatField;
    tNotaFiscalInsDtEntr: TDateField;
    tNotaFiscalInsIcmsIpi: TBooleanField;
    tNotaFiscalInsPlanoContas: TIntegerField;
    tNotaFiscalInsSituacao: TIntegerField;
    tNotaFiscalInsNroLancExtComissao: TIntegerField;
    tNotaFiscalInsTipoNota: TStringField;
    tNotaFiscalInsDescricaoDesc: TStringField;
    tNotaFiscalInsExportacao: TBooleanField;
    tNotaFiscalInsPercIssqn: TFloatField;
    tNotaFiscalInsVlrMObra: TFloatField;
    tNotaFiscalInsVlrIssqn: TFloatField;
    tNotaFiscalInsPercTransf: TFloatField;
    tNotaFiscalInsUsuario: TStringField;
    tNotaFiscalInsDtCad: TDateField;
    tNotaFiscalInsHrCad: TTimeField;
    tNotaFiscalItensInsNumMovEst: TIntegerField;
    tNotaFiscalItensInsGeraDupl: TBooleanField;
    tNotaFiscalImp: TTable;
    tNotaFiscalImpAdicao: TTable;
    dsNotaFiscalImp: TDataSource;
    dsNotaFiscalImpAdicao: TDataSource;
    tNotaFiscalImpFilial: TIntegerField;
    tNotaFiscalImpNumSeq: TIntegerField;
    tNotaFiscalImpItem: TIntegerField;
    tNotaFiscalImpNumDI: TStringField;
    tNotaFiscalImpDataRegistro: TDateField;
    tNotaFiscalImpDataDesembaraco: TDateField;
    tNotaFiscalImpCodExportador: TStringField;
    tNotaFiscalImpCodCidade: TIntegerField;
    tNotaFiscalImpNroFatura: TStringField;
    tNotaFiscalImpAdicaoFilial: TIntegerField;
    tNotaFiscalImpAdicaoNumSeq: TIntegerField;
    tNotaFiscalImpAdicaoItemImp: TIntegerField;
    tNotaFiscalImpAdicaoItemAdicao: TIntegerField;
    tNotaFiscalImpAdicaoNumAdicao: TIntegerField;
    tNotaFiscalImpAdicaoCodFabricante: TStringField;
    tNotaFiscalImpAdicaoValorDescontoDI: TFloatField;
    tNEntradaItens: TTable;
    tNEntradaItensFilial: TIntegerField;
    tNEntradaItensCodForn: TIntegerField;
    tNEntradaItensNumNEntr: TIntegerField;
    tNEntradaItensItem: TSmallintField;
    tNEntradaItensCodMaterial: TIntegerField;
    tNEntradaItensQtd: TFloatField;
    tNEntradaItensVlrUnit: TFloatField;
    tNEntradaItensVlrTotalItens: TFloatField;
    tNEntradaItensIcms: TFloatField;
    tNEntradaItensIpi: TFloatField;
    tNEntradaItensDesc: TFloatField;
    tNEntradaItensVlrDesc: TFloatField;
    tNEntradaItensVlrIpi: TFloatField;
    tNEntradaItensVlrIcms: TFloatField;
    tNEntradaItensBaseIcms: TFloatField;
    tNEntradaItensSitTrib: TSmallintField;
    tNEntradaItensIcmsIpi: TBooleanField;
    tNEntradaItensCodCor: TIntegerField;
    tNEntradaItensUnidade: TStringField;
    tNEntradaItensCodGrade: TIntegerField;
    tNEntradaItensNumOC: TIntegerField;
    tNEntradaItensItemOC: TIntegerField;
    tNEntradaItensQtdPacote: TFloatField;
    tNEntradaItensNumMovEst: TIntegerField;
    tNEntradaItensMatProd: TStringField;
    tNEntradaItensSomaEstoque: TBooleanField;
    tNEntradaItensNomeMaterial: TStringField;
    tNEntradaItensReferencia: TStringField;
    tNEntradaItensCodNatOper: TIntegerField;
    tNEntradaItensDtBaixa: TDateField;
    tNEntradaItensHrBaixa: TTimeField;
    tNEntradaItensNumMovEstBaixa: TIntegerField;
    tNEntradaItensGeraDupl: TBooleanField;
    tNEntradaItensPosicao: TIntegerField;
    tNEntradaItensTamanho: TStringField;
    tNEntradaItensQtdDevolvida: TFloatField;
    tNEntradaItensQtdRestante: TFloatField;
    tUF2: TTable;
    tUF2Sigla: TStringField;
    tUF2IDPais: TIntegerField;
    tUF2CodUF: TStringField;
    tNotaFiscalReboque: TTable;
    dsNotaFiscalReboque: TDataSource;
    tNotaFiscalReboqueFilial: TIntegerField;
    tNotaFiscalReboqueNumSeq: TIntegerField;
    tNotaFiscalReboquePlaca: TStringField;
    tNotaFiscalReboqueUF: TStringField;
    tNotaFiscalReboqueRNTC: TStringField;
    tNotaFiscalReboqueItem: TIntegerField;
    tNotaFiscalLacre: TTable;
    dsNotaFiscalLacre: TDataSource;
    tNotaFiscalLacreFilial: TIntegerField;
    tNotaFiscalLacreNumSeq: TIntegerField;
    tNotaFiscalLacreItem: TIntegerField;
    tNotaFiscalLacreNumLacre: TStringField;
    tNotaFiscalTBDesconto: TTable;
    tNotaFiscalTBDescontoFilial: TIntegerField;
    tNotaFiscalTBDescontoNumSeq: TIntegerField;
    tNotaFiscalTBDescontoItem: TIntegerField;
    tNotaFiscalTBDescontoPercDesconto: TFloatField;
    dsNotaFiscalTBDesconto: TDataSource;
    procedure tNotaFiscalImpAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalImpAdicaoAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalReboqueAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalLacreAfterPost(DataSet: TDataSet);
    procedure tNotaFiscalTBDescontoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vNumSeqNFe : Integer; //Criado dia 21/09/2010
    procedure Grava_NumSeq;

  end;

var
  DMNotaFiscal: TDMNotaFiscal;

implementation

uses UDM1;

{$R *.dfm}

procedure TDMNotaFiscal.Grava_NumSeq;
var
  vNumAux : Integer;
  vflag : Boolean;
begin
  DM1.tNotaFiscal.Refresh;
  DMNotaFiscal.tNotaFiscalIns.Refresh;
  DMNotaFiscal.tNotaFiscalIns.Last;
  vflag := False;
  vNumAux := DMNotaFiscal.tNotaFiscalInsNumSeq.AsInteger;
  DMNotaFiscal.tNotaFiscalIns.Refresh;
  DM1.tNotaFiscal.Insert;
  while vflag = False do
    begin
      vNumAux := vNumAux + 1;
      try
        DM1.tNotaFiscalNumSeq.AsInteger        := vNumAux;
        DM1.tNotaFiscal.Post;
        DM1.tNotaFiscal.Refresh;
        DMNotaFiscal.tNotaFiscalIns.Refresh;
        DM1.tNotaFiscal.Locate('Filial;NumSeq',VarArrayOf([DM1.tNotaFiscalFilial.AsInteger,vNumAux]),[locaseinsensitive]);
        DM1.tNotaFiscal.Edit;
        vflag := True;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível gravar, ' + E.Message + ' clique para continuar! ');
          vFlag := False;
        end;
      end;
    end;
end;

procedure TDMNotaFiscal.tNotaFiscalImpAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalImp.Handle);
end;

procedure TDMNotaFiscal.tNotaFiscalImpAdicaoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalImpAdicao.Handle);
end;

procedure TDMNotaFiscal.tNotaFiscalReboqueAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalReboque.Handle);
end;

procedure TDMNotaFiscal.tNotaFiscalLacreAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalLacre.Handle);
end;

procedure TDMNotaFiscal.tNotaFiscalTBDescontoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tNotaFiscalTBDesconto.Handle);
end;

end.
