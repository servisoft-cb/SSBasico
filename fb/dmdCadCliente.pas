unit dmdCadCliente;

interface

uses
  SysUtils, Classes, DmdDatabase, FMTBcd, DB, SqlExpr, DBClient, Provider,
  arTypes;

type
  TdmCadCliente = class(TDataModule)
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsClienteCODIGO: TIntegerField;
    sdsClienteNOME: TStringField;
    sdsClienteENDERECO: TStringField;
    sdsClienteBAIRRO: TStringField;
    sdsClienteCIDADE: TStringField;
    sdsClienteUF: TStringField;
    sdsClienteCEP: TStringField;
    sdsClienteTELEFONE: TStringField;
    sdsClienteTELEFONE2: TStringField;
    sdsClienteFAX: TStringField;
    sdsClientePESSOA: TStringField;
    sdsClienteCGCCPF: TStringField;
    sdsClienteINSCREST: TStringField;
    sdsClienteCONTATO: TStringField;
    sdsClienteOBS: TMemoField;
    sdsClienteAPROVCREDITO: TStringField;
    sdsClienteTIPOAPROV: TStringField;
    sdsClienteENDENTREGA: TStringField;
    sdsClienteBAIRROENTREGA: TStringField;
    sdsClienteCIDENTREGA: TStringField;
    sdsClienteCEPENTREGA: TStringField;
    sdsClienteUFENTREGA: TStringField;
    sdsClienteCGCCPFENTREGA: TStringField;
    sdsClienteINSCENTREGA: TStringField;
    sdsClienteENDPGTO: TStringField;
    sdsClienteBAIRROPGTO: TStringField;
    sdsClienteCIDPGTO: TStringField;
    sdsClienteCEPPGTO: TStringField;
    sdsClienteUFPGTO: TStringField;
    sdsClienteFANTASIA: TStringField;
    sdsClienteDTCADASTRO: TDateField;
    sdsClienteCODVENDEDOR: TIntegerField;
    sdsClienteOBSCTAS: TMemoField;
    sdsClienteLOJAS: TIntegerField;
    sdsClienteSELECIONADO: TStringField;
    sdsClienteCAIXAPOSTAL: TStringField;
    sdsClienteRG: TStringField;
    sdsClienteCODCIDADE: TIntegerField;
    sdsClienteCODCIDADEE: TIntegerField;
    sdsClienteCODCIDADEP: TIntegerField;
    sdsClienteEMAIL: TStringField;
    sdsClientePERCTRANSF: TFloatField;
    sdsClienteCODCONDPGTO: TIntegerField;
    sdsClienteDTNASCCONTATO: TDateField;
    sdsClienteNOMERESP: TStringField;
    sdsClienteCONTATOCLIENTE: TStringField;
    sdsClienteCONTATOMODELAGEM: TStringField;
    sdsClienteIMPITEMNOTAPORTAM: TStringField;
    sdsClienteCODBANCOBOLETO: TIntegerField;
    sdsClienteUSUARIO: TStringField;
    sdsClienteDTCAD: TDateField;
    sdsClienteHRCAD: TTimeField;
    sdsClienteCODTRANSP: TIntegerField;
    sdsClienteIPISUSPENSO: TStringField;
    sdsClienteDTVALIDADEIPI: TDateField;
    sdsClienteCODOBSIPI: TIntegerField;
    sdsClienteVENDAPORMILHEIRO: TStringField;
    sdsClienteAGRUPAPEDIDONANOTA: TStringField;
    sdsClienteCODVENDEDOR2: TIntegerField;
    sdsClienteJUNTARLARGURAEDI: TStringField;
    sdsClienteCODTIPOCOBRANCA: TIntegerField;
    sdsClienteMDIA1: TIntegerField;
    sdsClienteMDIA2: TIntegerField;
    sdsClientePERCCOMISSAO: TFloatField;
    sdsClientePERCCOMISSAO2: TFloatField;
    sdsClienteIMPOCABAIXOITEM: TStringField;
    sdsClienteCODGRUPO: TIntegerField;
    sdsClienteCODTRANSPREDESPACHO: TIntegerField;
    sdsClienteFONEENTREGA: TStringField;
    sdsClienteCAIXAPOSTALENTREGA: TStringField;
    sdsClienteFONECOBRANCA: TStringField;
    sdsClienteCAIXAPOSTALCOBRANCA: TStringField;
    sdsClienteINATIVO: TStringField;
    sdsClienteDDDFONE1: TIntegerField;
    sdsClienteDDDFONE2: TIntegerField;
    sdsClienteDDDFAX: TIntegerField;
    sdsClienteHOMEPAGE: TStringField;
    sdsClienteENDCOMPLEMENTO: TStringField;
    sdsClienteCODANT: TIntegerField;
    sdsClienteACUMULARFABRICAEDI: TStringField;
    sdsClienteIPI: TFloatField;
    sdsClienteTIPOFRETE: TStringField;
    sdsClienteNOMEENTREGA: TStringField;
    sdsClienteVLRLIMITECREDITO: TFloatField;
    sdsClienteCODINDICACAO: TIntegerField;
    sdsClienteCOMPLEMENTOINDICACAO: TStringField;
    sdsClienteMERCADO: TStringField;
    sdsClienteOBSCOMERCIAL: TMemoField;
    sdsClienteIMPPLANO: TStringField;
    sdsClienteEMAILNFE: TStringField;
    sdsClienteNUMEND: TStringField;
    sdsClienteNUMENDENTREGA: TStringField;
    sdsClienteCODCSTIPI: TStringField;
    sdsClienteCOMPLENDERECO: TStringField;
    sdsClienteUSAICMSSIMPLES: TStringField;
    sdsClienteCOMPLENDERECOENTREGA: TStringField;
    sdsClienteCODSITTRIBSIMPLES: TIntegerField;
    sdsClienteIDPAIS: TIntegerField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteTELEFONE: TStringField;
    cdsClienteTELEFONE2: TStringField;
    cdsClienteFAX: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteCGCCPF: TStringField;
    cdsClienteINSCREST: TStringField;
    cdsClienteCONTATO: TStringField;
    cdsClienteOBS: TMemoField;
    cdsClienteAPROVCREDITO: TStringField;
    cdsClienteTIPOAPROV: TStringField;
    cdsClienteENDENTREGA: TStringField;
    cdsClienteBAIRROENTREGA: TStringField;
    cdsClienteCIDENTREGA: TStringField;
    cdsClienteCEPENTREGA: TStringField;
    cdsClienteUFENTREGA: TStringField;
    cdsClienteCGCCPFENTREGA: TStringField;
    cdsClienteINSCENTREGA: TStringField;
    cdsClienteENDPGTO: TStringField;
    cdsClienteBAIRROPGTO: TStringField;
    cdsClienteCIDPGTO: TStringField;
    cdsClienteCEPPGTO: TStringField;
    cdsClienteUFPGTO: TStringField;
    cdsClienteFANTASIA: TStringField;
    cdsClienteDTCADASTRO: TDateField;
    cdsClienteCODVENDEDOR: TIntegerField;
    cdsClienteOBSCTAS: TMemoField;
    cdsClienteLOJAS: TIntegerField;
    cdsClienteSELECIONADO: TStringField;
    cdsClienteCAIXAPOSTAL: TStringField;
    cdsClienteRG: TStringField;
    cdsClienteCODCIDADE: TIntegerField;
    cdsClienteCODCIDADEE: TIntegerField;
    cdsClienteCODCIDADEP: TIntegerField;
    cdsClienteEMAIL: TStringField;
    cdsClientePERCTRANSF: TFloatField;
    cdsClienteCODCONDPGTO: TIntegerField;
    cdsClienteDTNASCCONTATO: TDateField;
    cdsClienteNOMERESP: TStringField;
    cdsClienteCONTATOCLIENTE: TStringField;
    cdsClienteCONTATOMODELAGEM: TStringField;
    cdsClienteIMPITEMNOTAPORTAM: TStringField;
    cdsClienteCODBANCOBOLETO: TIntegerField;
    cdsClienteUSUARIO: TStringField;
    cdsClienteDTCAD: TDateField;
    cdsClienteHRCAD: TTimeField;
    cdsClienteCODTRANSP: TIntegerField;
    cdsClienteIPISUSPENSO: TStringField;
    cdsClienteDTVALIDADEIPI: TDateField;
    cdsClienteCODOBSIPI: TIntegerField;
    cdsClienteVENDAPORMILHEIRO: TStringField;
    cdsClienteAGRUPAPEDIDONANOTA: TStringField;
    cdsClienteCODVENDEDOR2: TIntegerField;
    cdsClienteJUNTARLARGURAEDI: TStringField;
    cdsClienteCODTIPOCOBRANCA: TIntegerField;
    cdsClienteMDIA1: TIntegerField;
    cdsClienteMDIA2: TIntegerField;
    cdsClientePERCCOMISSAO: TFloatField;
    cdsClientePERCCOMISSAO2: TFloatField;
    cdsClienteIMPOCABAIXOITEM: TStringField;
    cdsClienteCODGRUPO: TIntegerField;
    cdsClienteCODTRANSPREDESPACHO: TIntegerField;
    cdsClienteFONEENTREGA: TStringField;
    cdsClienteCAIXAPOSTALENTREGA: TStringField;
    cdsClienteFONECOBRANCA: TStringField;
    cdsClienteCAIXAPOSTALCOBRANCA: TStringField;
    cdsClienteINATIVO: TStringField;
    cdsClienteDDDFONE1: TIntegerField;
    cdsClienteDDDFONE2: TIntegerField;
    cdsClienteDDDFAX: TIntegerField;
    cdsClienteHOMEPAGE: TStringField;
    cdsClienteENDCOMPLEMENTO: TStringField;
    cdsClienteCODANT: TIntegerField;
    cdsClienteACUMULARFABRICAEDI: TStringField;
    cdsClienteIPI: TFloatField;
    cdsClienteTIPOFRETE: TStringField;
    cdsClienteNOMEENTREGA: TStringField;
    cdsClienteVLRLIMITECREDITO: TFloatField;
    cdsClienteCODINDICACAO: TIntegerField;
    cdsClienteCOMPLEMENTOINDICACAO: TStringField;
    cdsClienteMERCADO: TStringField;
    cdsClienteOBSCOMERCIAL: TMemoField;
    cdsClienteIMPPLANO: TStringField;
    cdsClienteEMAILNFE: TStringField;
    cdsClienteNUMEND: TStringField;
    cdsClienteNUMENDENTREGA: TStringField;
    cdsClienteCODCSTIPI: TStringField;
    cdsClienteCOMPLENDERECO: TStringField;
    cdsClienteUSAICMSSIMPLES: TStringField;
    cdsClienteCOMPLENDERECOENTREGA: TStringField;
    cdsClienteCODSITTRIBSIMPLES: TIntegerField;
    cdsClienteIDPAIS: TIntegerField;
    sdsClienteEMAILCOBRANCA: TStringField;
    cdsClienteEMAILCOBRANCA: TStringField;
    sdsClienteCLIENTE: TStringField;
    sdsClienteFABRICA: TStringField;
    sdsClienteREPRESENTADA: TStringField;
    sdsClienteENDLOGO: TStringField;
    cdsClienteCLIENTE: TStringField;
    cdsClienteFABRICA: TStringField;
    cdsClienteREPRESENTADA: TStringField;
    cdsClienteENDLOGO: TStringField;
    sdsClienteEMAILNFE2: TStringField;
    cdsClienteEMAILNFE2: TStringField;
    sdsClienteCGCCPFPGTO: TStringField;
    sdsClienteINSCPGTO: TStringField;
    sdsClientePESSOAENTREGA: TStringField;
    sdsClientePESSOAPGTO: TStringField;
    cdsClienteCGCCPFPGTO: TStringField;
    cdsClienteINSCPGTO: TStringField;
    cdsClientePESSOAENTREGA: TStringField;
    cdsClientePESSOAPGTO: TStringField;
    sdsClientePERCFABRICA: TFloatField;
    cdsClientePERCFABRICA: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
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

implementation

{$R *.dfm}


{ TdmCadCliente }


procedure TdmCadCliente.AtualizaConsulta;
begin
  if cdsCliente.Active then
  begin
    if not cdsCliente.Eof then
      LocalizarRegistro(True)
    else
      LocalizarRegistro(False);
  end
  else
    LocalizarRegistro(False);
end;

procedure TdmCadCliente.AutoEditar(Ativar: Boolean);
begin

end;

procedure TdmCadCliente.CancelarRegistro;
var
  iCodigo: integer;
begin
  iCodigo := 0;
  if Estado = csEdit then
    iCodigo := cdsClienteCODIGO.AsInteger;

  if cdsCliente.Active then
    cdsCliente.CancelUpdates;
  AutoEditar(False);

  if (Estado = csEdit) and (cdsClienteCODIGO.AsInteger <> iCodigo) then
    cdsCliente.Locate('CODIGO', iCodigo, []);

  AtualizaConsulta;
end;

procedure TdmCadCliente.DataModuleCreate(Sender: TObject);
begin
  sCommandText := sdsCliente.CommandText;
  AutoEditar(False);
end;

procedure TdmCadCliente.EditarRegistro;
begin
  cdsCliente.Edit;
  AutoEditar(True);

end;

procedure TdmCadCliente.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsCliente.Bookmark;
  try
    cdsCliente.DisableControls;
    try
      cdsCliente.Delete;
      if (cdsCliente.ChangeCount > 0) and (cdsCliente.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsCliente.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsCliente.EnableControls;
  end;
end;

procedure TdmCadCliente.ExecutaConsulta(SQL: string);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := SQL;
  cdsCliente.Open;
end;

procedure TdmCadCliente.GravarRegistro;
begin
  if cdsCliente.State in [dsEdit, dsInsert] then
    cdsCliente.Post;

  if cdsCliente.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmCadCliente.IncluirRegistro;
begin
  if not cdsCliente.Active then
    LocalizarRegistro(False);
  cdsCliente.Insert;
  AutoEditar(True);
end;

function TdmCadCliente.LocalizarRegistro(bLocalizar: Boolean;
  Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsCliente.Active then
  begin
    ExecutaConsulta(sCommandText + ' WHERE CODIGO = ' + IntToStr(Codigo));
    Result := not cdsCliente.IsEmpty;
  end
  else if (not cdsCliente.IsEmpty) and (Codigo > 0) then
  begin
    cdsCliente.First;
    Result := cdsCliente.Locate('CODIGO', Codigo, []);
  end
  else
    Result := not cdsCliente.IsEmpty;
end;

end.

