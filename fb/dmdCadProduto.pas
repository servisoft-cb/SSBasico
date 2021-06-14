unit dmdCadProduto;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider, arTypes;

type
  TdmCadProduto = class(TDataModule)
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    dsProdutoMaster: TDataSource;
    sdsProduto_Posicao: TSQLDataSet;
    dspProduto_Posicao: TDataSetProvider;
    cdsProduto_Posicao: TClientDataSet;
    dsProduto_Posicao: TDataSource;
    sdsProduto_PosicaoCODIGO: TIntegerField;
    sdsProduto_PosicaoITEM: TIntegerField;
    sdsProduto_PosicaoCODPOSICAO: TIntegerField;
    sdsProduto_PosicaoIMPMATERIAL: TStringField;
    sdsProduto_PosicaoIMPCOR: TStringField;
    cdsProduto_PosicaoCODIGO: TIntegerField;
    cdsProduto_PosicaoITEM: TIntegerField;
    cdsProduto_PosicaoCODPOSICAO: TIntegerField;
    cdsProduto_PosicaoIMPMATERIAL: TStringField;
    cdsProduto_PosicaoIMPCOR: TStringField;
    sdsProduto_PosicaoNOMEPOSICAO: TStringField;
    cdsProduto_PosicaoNOMEPOSICAO: TStringField;
    sdsProduto_Ferramental: TSQLDataSet;
    dspProduto_Ferramental: TDataSetProvider;
    cdsProduto_Ferramental: TClientDataSet;
    dsProduto_Ferramental: TDataSource;
    sdsProduto_FerramentalCODPRODUTO: TIntegerField;
    sdsProduto_FerramentalITEM: TIntegerField;
    sdsProduto_FerramentalCODMATERIAL: TIntegerField;
    sdsProduto_FerramentalTIPOVC: TStringField;
    sdsProduto_FerramentalTIPOAP: TStringField;
    sdsProduto_FerramentalTIPOA: TStringField;
    sdsProduto_FerramentalNOMEMATERIAL: TStringField;
    cdsProduto_FerramentalCODPRODUTO: TIntegerField;
    cdsProduto_FerramentalITEM: TIntegerField;
    cdsProduto_FerramentalCODMATERIAL: TIntegerField;
    cdsProduto_FerramentalTIPOVC: TStringField;
    cdsProduto_FerramentalTIPOAP: TStringField;
    cdsProduto_FerramentalTIPOA: TStringField;
    cdsProduto_FerramentalNOMEMATERIAL: TStringField;
    sdsProduto_Tempo: TSQLDataSet;
    dspProduto_Tempo: TDataSetProvider;
    cdsProduto_Tempo: TClientDataSet;
    dsProduto_Tempo: TDataSource;
    sdsProduto_TempoCODPRODUTO: TIntegerField;
    sdsProduto_TempoITEM: TIntegerField;
    sdsProduto_TempoID_PROCESSO: TIntegerField;
    sdsProduto_TempoTEMPO: TFloatField;
    sdsProduto_TempoTEMPOREG: TFloatField;
    sdsProduto_TempoNOMEPROCESSO: TStringField;
    cdsProduto_TempoCODPRODUTO: TIntegerField;
    cdsProduto_TempoITEM: TIntegerField;
    cdsProduto_TempoID_PROCESSO: TIntegerField;
    cdsProduto_TempoTEMPO: TFloatField;
    cdsProduto_TempoTEMPOREG: TFloatField;
    cdsProduto_TempoNOMEPROCESSO: TStringField;
    sdsProduto_TempoOBS: TMemoField;
    cdsProduto_TempoOBS: TMemoField;
    sdsProduto_TempoQTDPECAHORA: TIntegerField;
    cdsProduto_TempoQTDPECAHORA: TIntegerField;
    sdsProdutoCODIGO: TIntegerField;
    sdsProdutoCODGRUPO: TIntegerField;
    sdsProdutoCODSUBGRUPO: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoCODCLASFISCAL: TStringField;
    sdsProdutoCODSITTRIB: TIntegerField;
    sdsProdutoLANCAGRADE: TStringField;
    sdsProdutoCODGRADE: TIntegerField;
    sdsProdutoQPARTALAO: TFloatField;
    sdsProdutoPESOLIQUIDO: TFloatField;
    sdsProdutoPESOBRUTO: TFloatField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoALIQICMS: TFloatField;
    sdsProdutoALIQIPI: TFloatField;
    sdsProdutoNOMEEXP: TStringField;
    sdsProdutoDESCMATERIAL: TStringField;
    sdsProdutoREFERENCIA2: TStringField;
    sdsProdutoVLRATELIER: TFloatField;
    sdsProdutoNOMEMODELO: TStringField;
    sdsProdutoFOTOJPEG: TBlobField;
    sdsProdutoENDETIQ: TStringField;
    sdsProdutoLANCACOR: TStringField;
    sdsProdutoPRECOGRADE: TStringField;
    sdsProdutoVLRVENDA: TFloatField;
    sdsProdutoPRODMAT: TStringField;
    sdsProdutoPRECOCUSTO: TFloatField;
    sdsProdutoPOSSEMAT: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoDTALTERACAO: TDateField;
    sdsProdutoMATERIALOUTROS: TStringField;
    sdsProdutoPRECOCOR: TStringField;
    sdsProdutoCODFORNECEDOR: TIntegerField;
    sdsProdutoESTMINIMO: TFloatField;
    sdsProdutoESTMAXIMO: TFloatField;
    sdsProdutoPERCCOMISSAOVEND: TFloatField;
    sdsProdutoIMPTABPRECO: TStringField;
    sdsProdutoUSUARIO: TStringField;
    sdsProdutoDTCAD: TDateField;
    sdsProdutoHRCAD: TTimeField;
    sdsProdutoCA: TStringField;
    sdsProdutoVINCULARPRODUTO: TStringField;
    sdsProdutoCODPRODUTOEST: TIntegerField;
    sdsProdutoPERCQUEBRATALOES: TFloatField;
    sdsProdutoPERCCOMISSAOVEND2: TFloatField;
    sdsProdutoFICHATECNICACONSPORTAM: TStringField;
    sdsProdutoJUNTARLARGURAEDI: TStringField;
    sdsProdutoIMPMATTALAO: TStringField;
    sdsProdutoCOMPLEMENTO: TStringField;
    sdsProdutoCODTIPOPRODUTO: TIntegerField;
    sdsProdutoCODTIPOMATERIAL: TIntegerField;
    sdsProdutoQTDVOLUME: TIntegerField;
    sdsProdutoCODPROCESSO: TIntegerField;
    sdsProdutoCODCSTIPI: TStringField;
    sdsProdutoTAMCALCULO: TFloatField;
    sdsProdutoORIGEMPROD: TStringField;
    sdsProdutoLOCALCORREDOR: TStringField;
    sdsProdutoLOCALPOSICAO: TStringField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoCODCLIENTE: TIntegerField;
    sdsProdutoCODSITCF: TStringField;
    sdsProdutoCODREPRESENTADA: TIntegerField;
    sdsProdutoCODFABRICA: TIntegerField;
    sdsProdutoREFCLIENTE: TStringField;
    sdsProdutoCARIMBOSOLA: TStringField;
    sdsProdutoCARIMBOPALMILHA: TStringField;
    sdsProdutoFICHA: TStringField;
    sdsProdutoCONSTRUCAO: TStringField;
    sdsProdutoFORMA: TStringField;
    sdsProdutoTIPOCODCOLECAO: TIntegerField;
    sdsProdutoTIPOCODPRODUTOFORN: TIntegerField;
    sdsProdutoTIPOCODPRODUTO: TIntegerField;
    sdsProdutoTIPOCODMATERIAL: TIntegerField;
    sdsProdutoTIPOCODCOR: TIntegerField;
    sdsProdutoENDARQUIVOCNC: TStringField;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoCODGRUPO: TIntegerField;
    cdsProdutoCODSUBGRUPO: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoCODCLASFISCAL: TStringField;
    cdsProdutoCODSITTRIB: TIntegerField;
    cdsProdutoLANCAGRADE: TStringField;
    cdsProdutoCODGRADE: TIntegerField;
    cdsProdutoQPARTALAO: TFloatField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoALIQICMS: TFloatField;
    cdsProdutoALIQIPI: TFloatField;
    cdsProdutoNOMEEXP: TStringField;
    cdsProdutoDESCMATERIAL: TStringField;
    cdsProdutoREFERENCIA2: TStringField;
    cdsProdutoVLRATELIER: TFloatField;
    cdsProdutoNOMEMODELO: TStringField;
    cdsProdutoFOTOJPEG: TBlobField;
    cdsProdutoENDETIQ: TStringField;
    cdsProdutoLANCACOR: TStringField;
    cdsProdutoPRECOGRADE: TStringField;
    cdsProdutoVLRVENDA: TFloatField;
    cdsProdutoPRODMAT: TStringField;
    cdsProdutoPRECOCUSTO: TFloatField;
    cdsProdutoPOSSEMAT: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoDTALTERACAO: TDateField;
    cdsProdutoMATERIALOUTROS: TStringField;
    cdsProdutoPRECOCOR: TStringField;
    cdsProdutoCODFORNECEDOR: TIntegerField;
    cdsProdutoESTMINIMO: TFloatField;
    cdsProdutoESTMAXIMO: TFloatField;
    cdsProdutoPERCCOMISSAOVEND: TFloatField;
    cdsProdutoIMPTABPRECO: TStringField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutoDTCAD: TDateField;
    cdsProdutoHRCAD: TTimeField;
    cdsProdutoCA: TStringField;
    cdsProdutoVINCULARPRODUTO: TStringField;
    cdsProdutoCODPRODUTOEST: TIntegerField;
    cdsProdutoPERCQUEBRATALOES: TFloatField;
    cdsProdutoPERCCOMISSAOVEND2: TFloatField;
    cdsProdutoFICHATECNICACONSPORTAM: TStringField;
    cdsProdutoJUNTARLARGURAEDI: TStringField;
    cdsProdutoIMPMATTALAO: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoCODTIPOPRODUTO: TIntegerField;
    cdsProdutoCODTIPOMATERIAL: TIntegerField;
    cdsProdutoQTDVOLUME: TIntegerField;
    cdsProdutoCODPROCESSO: TIntegerField;
    cdsProdutoCODCSTIPI: TStringField;
    cdsProdutoTAMCALCULO: TFloatField;
    cdsProdutoORIGEMPROD: TStringField;
    cdsProdutoLOCALCORREDOR: TStringField;
    cdsProdutoLOCALPOSICAO: TStringField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODCLIENTE: TIntegerField;
    cdsProdutoCODSITCF: TStringField;
    cdsProdutoCODREPRESENTADA: TIntegerField;
    cdsProdutoCODFABRICA: TIntegerField;
    cdsProdutoREFCLIENTE: TStringField;
    cdsProdutoCARIMBOSOLA: TStringField;
    cdsProdutoCARIMBOPALMILHA: TStringField;
    cdsProdutoFICHA: TStringField;
    cdsProdutoCONSTRUCAO: TStringField;
    cdsProdutoFORMA: TStringField;
    cdsProdutoTIPOCODCOLECAO: TIntegerField;
    cdsProdutoTIPOCODPRODUTOFORN: TIntegerField;
    cdsProdutoTIPOCODPRODUTO: TIntegerField;
    cdsProdutoTIPOCODMATERIAL: TIntegerField;
    cdsProdutoTIPOCODCOR: TIntegerField;
    cdsProdutoENDARQUIVOCNC: TStringField;
    sdsProdutoTIPOCODMARCA: TIntegerField;
    cdsProdutoTIPOCODMARCA: TIntegerField;
    sdsProdutoGERARCODBARRA: TStringField;
    cdsProdutoGERARCODBARRA: TStringField;
    sdsProdutoNCM_EX: TStringField;
    cdsProdutoNCM_EX: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspProdutoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspProduto_PosicaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    sCommandText: string;
    FEstado: TarCadState;
    procedure AtualizaConsulta;
  public

    procedure AutoEditar(Ativar: Boolean);
    procedure IncluirRegistro;
    procedure GravarRegistro;
    procedure EditarRegistro;
    procedure ExcluirRegistro;
    procedure CancelarRegistro;
    function LocalizarRegistro(bLocalizar: Boolean; Codigo: Integer = 0): Boolean;
    procedure ExecutaConsulta(SQL: string);
    property Estado: TarCadState read FEstado write FEstado;

  end;

var
  DMCadProduto: TDMCadProduto;


implementation

{$R *.dfm}

{ TdmCadFuncionario }

procedure TdmCadProduto.AtualizaConsulta;
begin
  if cdsProduto.Active then
  begin
    if not cdsProduto.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadProduto.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadProduto.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsProdutoCODIGO.AsInteger;

  if cdsProduto.Active then
    cdsProduto.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsProdutoCODIGO.AsInteger <> iCodigo) then
    cdsProduto.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadProduto.DataModuleCreate(Sender: TObject);
begin
  sCommandText := sdsProduto.CommandText;
  AutoEditar(False);
end;

procedure TdmCadProduto.EditarRegistro;
begin
  cdsProduto.Edit;
  AutoEditar(True);
end;

procedure TdmCadProduto.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsProduto.Bookmark;
  try
    cdsProduto.DisableControls;
    try
      cdsProduto.Delete;
      if (cdsProduto.ChangeCount > 0) and (cdsProduto.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsProduto.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsProduto.EnableControls;
  end;
end;

procedure TdmCadProduto.ExecutaConsulta(SQL: string);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := SQL;
  cdsProduto.Open;
end;

procedure TdmCadProduto.GravarRegistro;
begin
  if cdsProduto.State in [dsEdit, dsInsert] then
    cdsProduto.Post;

  if cdsProduto.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadProduto.IncluirRegistro;
begin
  if not cdsProduto.Active then
    LocalizarRegistro(False);
  cdsProduto.Insert;
  AutoEditar(True);
end;

function TdmCadProduto.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsProduto.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsProduto.IsEmpty;
  end
  else if (not cdsProduto.IsEmpty) and (Codigo > 0) then
  begin
    cdsProduto.First;
    Result := cdsProduto.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsProduto.IsEmpty;
end;

procedure TdmCadProduto.dspProdutoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

procedure TdmCadProduto.dspProduto_PosicaoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
