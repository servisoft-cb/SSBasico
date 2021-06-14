unit UDMEstoque;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, IdBaseComponent, IdCoder, Forms, FMTBcd, DBClient, Provider, IdCoder3to4, IdCoderMIME,
  Variants, arTypes;

type
  TDMEstoque = class(TDataModule)
    sdsEstoqueMov: TSQLDataSet;
    dspEstoqueMov: TDataSetProvider;
    cdsEstoqueMov: TClientDataSet;
    dsEstoqueMov: TDataSource;
    qEstoque: TSQLQuery;
    qEstoqueFILIAL: TIntegerField;
    qEstoqueCODMATERIAL: TIntegerField;
    qEstoqueCODCOR: TIntegerField;
    qEstoqueQTD: TFMTBCDField;
    qEstoqueTAMANHO: TStringField;
    qEstoque_Existe: TSQLQuery;
    qEstoque_ExisteCODMATERIAL: TIntegerField;
    qEstoque_ExisteCODCOR: TIntegerField;
    qEstoque_ExisteQTD: TFMTBCDField;
    sdsAux: TSQLDataSet;
    sdsEstoque_Atual: TSQLDataSet;
    dspEstoque_Atual: TDataSetProvider;
    cdsEstoque_Atual: TClientDataSet;
    dsEstoque_Atual: TDataSource;
    qEstoque_Atual: TSQLQuery;
    qEstoque_AtualFILIAL: TIntegerField;
    qEstoque_AtualCODMATERIAL: TIntegerField;
    qEstoque_AtualCODCOR: TIntegerField;
    qEstoque_AtualTAMANHO: TStringField;
    qEstoque_AtualQTD: TFMTBCDField;
    qEstoque_AtualQTDLOCADO: TFloatField;
    qEstoqueQTDLOCADO: TFloatField;
    qEstoqueQTDEMPEDIDO: TFloatField;
    qEstoque_AtualQTDEMPEDIDO: TFloatField;
    sdsEstoqueMovFILIAL: TIntegerField;
    sdsEstoqueMovNUMMOV: TIntegerField;
    sdsEstoqueMovCODMATERIAL: TIntegerField;
    sdsEstoqueMovCODCOR: TIntegerField;
    sdsEstoqueMovLARGURA: TStringField;
    sdsEstoqueMovDTMOV: TDateField;
    sdsEstoqueMovES: TStringField;
    sdsEstoqueMovTIPOMOV: TStringField;
    sdsEstoqueMovNUMNOTA: TIntegerField;
    sdsEstoqueMovCODCLIFORN: TIntegerField;
    sdsEstoqueMovVLRUNITARIO: TFloatField;
    sdsEstoqueMovQTD: TFloatField;
    sdsEstoqueMovPERCICMS: TFloatField;
    sdsEstoqueMovPERCIPI: TFloatField;
    sdsEstoqueMovVLRDESCONTO: TFloatField;
    sdsEstoqueMovUNIDADE: TStringField;
    sdsEstoqueMovQTD2: TFloatField;
    sdsEstoqueMovTAMANHO: TStringField;
    sdsEstoqueMovCODPRODUTO2: TIntegerField;
    sdsEstoqueMovPERCTRIBUTACAO: TFloatField;
    sdsEstoqueMovVLRFRETE: TFloatField;
    sdsEstoqueMovCODNATOPER: TIntegerField;
    sdsEstoqueMovNUMSEQNOTA: TIntegerField;
    sdsEstoqueMovSERIE: TStringField;
    sdsEstoqueMovUNIDADEORIG: TStringField;
    sdsEstoqueMovVLRUNITARIOORIG: TFloatField;
    sdsEstoqueMovQTDORIG: TFloatField;
    sdsEstoqueMovVLRDESCONTOORIG: TFloatField;
    sdsEstoqueMovMERCADO: TStringField;
    cdsEstoqueMovFILIAL: TIntegerField;
    cdsEstoqueMovNUMMOV: TIntegerField;
    cdsEstoqueMovCODMATERIAL: TIntegerField;
    cdsEstoqueMovCODCOR: TIntegerField;
    cdsEstoqueMovLARGURA: TStringField;
    cdsEstoqueMovDTMOV: TDateField;
    cdsEstoqueMovES: TStringField;
    cdsEstoqueMovTIPOMOV: TStringField;
    cdsEstoqueMovNUMNOTA: TIntegerField;
    cdsEstoqueMovCODCLIFORN: TIntegerField;
    cdsEstoqueMovVLRUNITARIO: TFloatField;
    cdsEstoqueMovQTD: TFloatField;
    cdsEstoqueMovPERCICMS: TFloatField;
    cdsEstoqueMovPERCIPI: TFloatField;
    cdsEstoqueMovVLRDESCONTO: TFloatField;
    cdsEstoqueMovUNIDADE: TStringField;
    cdsEstoqueMovQTD2: TFloatField;
    cdsEstoqueMovTAMANHO: TStringField;
    cdsEstoqueMovCODPRODUTO2: TIntegerField;
    cdsEstoqueMovPERCTRIBUTACAO: TFloatField;
    cdsEstoqueMovVLRFRETE: TFloatField;
    cdsEstoqueMovCODNATOPER: TIntegerField;
    cdsEstoqueMovNUMSEQNOTA: TIntegerField;
    cdsEstoqueMovSERIE: TStringField;
    cdsEstoqueMovUNIDADEORIG: TStringField;
    cdsEstoqueMovVLRUNITARIOORIG: TFloatField;
    cdsEstoqueMovQTDORIG: TFloatField;
    cdsEstoqueMovVLRDESCONTOORIG: TFloatField;
    cdsEstoqueMovMERCADO: TStringField;
    sdsEstoque_AtualFILIAL: TIntegerField;
    sdsEstoque_AtualCODMATERIAL: TIntegerField;
    sdsEstoque_AtualCODCOR: TIntegerField;
    sdsEstoque_AtualTAMANHO: TStringField;
    sdsEstoque_AtualQTD: TFMTBCDField;
    cdsEstoque_AtualFILIAL: TIntegerField;
    cdsEstoque_AtualCODMATERIAL: TIntegerField;
    cdsEstoque_AtualCODCOR: TIntegerField;
    cdsEstoque_AtualTAMANHO: TStringField;
    cdsEstoque_AtualQTD: TFMTBCDField;
    procedure ConexaoBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dspEstoqueMovUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspEstoque_AtualUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    ctEstoqueMov, ctEstoque_Atual: String;
    FEstado: TarCadState;
    procedure AtualizaConsulta;
  public
    { Public declarations }
    procedure AutoEditar(Ativar: Boolean);
    procedure ExecutaConsulta(SQL: string);
    function  LocalizarRegistro(bLocalizar: Boolean; Filial: Integer = 0; Codigo: Integer = 0): Boolean;
    procedure IncluirRegistro(Filial, Codigo: Integer);
    procedure EditarRegistro;
    procedure GravarRegistro;
    procedure ExcluirRegistro;
    procedure CancelarRegistro;
    property Estado: TarCadState read FEstado write FEstado;
  end;

var
  DMEstoque: TDMEstoque;

implementation

uses DmdDatabase, UDM1;

{$R *.dfm}

procedure TDMEstoque.ConexaoBeforeConnect(Sender: TObject);
begin
  //Conexao.LoadParamsFromIniFile('Config.ini');
end;

procedure TDMEstoque.DataModuleCreate(Sender: TObject);
begin
  ctEstoqueMov      := sdsEstoqueMov.CommandText;
  ctEstoque_Atual := sdsEstoque_Atual.CommandText;
end;

procedure TDMEstoque.dspEstoqueMovUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

function TDMEstoque.LocalizarRegistro(bLocalizar: Boolean; Filial: Integer; Codigo: Integer): Boolean;
begin
  if not bLocalizar and not cdsEstoqueMov.Active then
  begin
    ExecutaConsulta(ctEstoqueMov + ' WHERE FILIAL = ' + IntToStr(Filial) + ' AND NUMMOV = ' + IntToStr(Codigo));
    Result := not cdsEstoqueMov.IsEmpty;
  end
  else if (not cdsEstoqueMov.IsEmpty) and (Codigo > 0) then
  begin
    cdsEstoqueMov.First;
    Result := cdsEstoqueMov.Locate('FLIAL;NUMMOV',VarArrayOf([Filial,Codigo]),[]);
  end
  else
    Result := not cdsEstoqueMov.IsEmpty;
end;

procedure TdmEstoque.IncluirRegistro(Filial, Codigo: Integer);
begin
  if not cdsEstoqueMov.Active then
    LocalizarRegistro(False,Filial,Codigo);
  cdsEstoqueMov.Insert;
  AutoEditar(True);
end;

procedure TdmEstoque.GravarRegistro;
begin
  if cdsEstoqueMov.State in [dsEdit, dsInsert] then
    cdsEstoqueMov.Post;

  if cdsEstoqueMov.ApplyUpdates(0) > 0 then
    Abort;

  AutoEditar(False);
end;

procedure TdmEstoque.ExecutaConsulta(SQL: string);
begin
  cdsEstoqueMov.Close;
  sdsEstoqueMov.CommandText := SQL;
  cdsEstoqueMov.Open;
end;

procedure TDMEstoque.AutoEditar(Ativar: Boolean);
begin

end;

procedure TDMEstoque.EditarRegistro;
begin
  cdsEstoqueMov.Edit;
  AutoEditar(True);
end;

procedure TDMEstoque.ExcluirRegistro;
var
  sBookmark: string;
begin
  sBookmark := cdsEstoqueMov.Bookmark;
  try
    cdsEstoqueMov.DisableControls;
    try
      cdsEstoqueMov.Delete;
      if (cdsEstoqueMov.ChangeCount > 0) and (cdsEstoqueMov.ApplyUpdates(0) > 0) then
        Abort;
    except
      CancelarRegistro;
      cdsEstoqueMov.Bookmark := sBookmark;
      raise;
    end;
  finally
    AtualizaConsulta;
    cdsEstoqueMov.EnableControls;
  end;
end;

procedure TDMEstoque.CancelarRegistro;
var
  iFilial: Integer;
  iNumMov: Integer;
begin
  iFilial := 0;
  iNumMov := 0;
  if Estado = csEdit then
  Begin
    iFilial := cdsEstoqueMovFILIAL.AsInteger;
    iNumMov := cdsEstoqueMovNUMMOV.AsInteger;
  end;
  if cdsEstoqueMov.Active then
    cdsEstoqueMov.CancelUpdates;
  AutoEditar(False);
  if (Estado = csEdit) and (cdsEstoqueMovFILIAL.AsInteger <> iFilial) and (cdsEstoqueMovNUMMOV.AsInteger <> iNumMov) then
    cdsEstoqueMov.Locate('FILIAL;NUMMOV', VarArrayOf([iFilial, iNumMov]), [locaseinsensitive]);
  AtualizaConsulta;
end;

procedure TDMEstoque.AtualizaConsulta;
begin
  if cdsEstoqueMov.Active then
  begin
    if not cdsEstoqueMov.Eof then
      LocalizarRegistro(True,1,0)
    else
      LocalizarRegistro(False,1,0);
  end
  else
    LocalizarRegistro(False,1,0);
end;

procedure TDMEstoque.dspEstoque_AtualUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
