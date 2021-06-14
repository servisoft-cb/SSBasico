unit UDMClienteTerceiro;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMClienteTerceiro = class(TDataModule)
    sdsClienteTerceiro: TSQLDataSet;
    dspClienteTerceiro: TDataSetProvider;
    cdsClienteTerceiro: TClientDataSet;
    dsClienteTerceiro: TDataSource;
    sdsClienteTerceiroCODIGO: TIntegerField;
    sdsClienteTerceiroNOME: TStringField;
    sdsClienteTerceiroENDERECO: TStringField;
    sdsClienteTerceiroBAIRRO: TStringField;
    sdsClienteTerceiroCIDADE: TStringField;
    sdsClienteTerceiroUF: TStringField;
    sdsClienteTerceiroCEP: TStringField;
    sdsClienteTerceiroTELEFONE: TStringField;
    sdsClienteTerceiroTELEFONE2: TStringField;
    sdsClienteTerceiroFAX: TStringField;
    sdsClienteTerceiroPESSOA: TStringField;
    sdsClienteTerceiroCGCCPF: TStringField;
    sdsClienteTerceiroINSCREST: TStringField;
    sdsClienteTerceiroCONTATO: TStringField;
    sdsClienteTerceiroFANTASIA: TStringField;
    sdsClienteTerceiroCAIXAPOSTAL: TStringField;
    sdsClienteTerceiroRG: TStringField;
    sdsClienteTerceiroCODCIDADE: TIntegerField;
    sdsClienteTerceiroUSUARIO: TStringField;
    sdsClienteTerceiroDTCAD: TDateField;
    sdsClienteTerceiroHRCAD: TTimeField;
    sdsClienteTerceiroINATIVO: TStringField;
    sdsClienteTerceiroDDDFONE1: TIntegerField;
    sdsClienteTerceiroDDDFONE2: TIntegerField;
    sdsClienteTerceiroDDDFAX: TIntegerField;
    sdsClienteTerceiroIDPAIS: TIntegerField;
    cdsClienteTerceiroCODIGO: TIntegerField;
    cdsClienteTerceiroNOME: TStringField;
    cdsClienteTerceiroENDERECO: TStringField;
    cdsClienteTerceiroBAIRRO: TStringField;
    cdsClienteTerceiroCIDADE: TStringField;
    cdsClienteTerceiroUF: TStringField;
    cdsClienteTerceiroCEP: TStringField;
    cdsClienteTerceiroTELEFONE: TStringField;
    cdsClienteTerceiroTELEFONE2: TStringField;
    cdsClienteTerceiroFAX: TStringField;
    cdsClienteTerceiroPESSOA: TStringField;
    cdsClienteTerceiroCGCCPF: TStringField;
    cdsClienteTerceiroINSCREST: TStringField;
    cdsClienteTerceiroCONTATO: TStringField;
    cdsClienteTerceiroFANTASIA: TStringField;
    cdsClienteTerceiroCAIXAPOSTAL: TStringField;
    cdsClienteTerceiroRG: TStringField;
    cdsClienteTerceiroCODCIDADE: TIntegerField;
    cdsClienteTerceiroUSUARIO: TStringField;
    cdsClienteTerceiroDTCAD: TDateField;
    cdsClienteTerceiroHRCAD: TTimeField;
    cdsClienteTerceiroINATIVO: TStringField;
    cdsClienteTerceiroDDDFONE1: TIntegerField;
    cdsClienteTerceiroDDDFONE2: TIntegerField;
    cdsClienteTerceiroDDDFAX: TIntegerField;
    cdsClienteTerceiroIDPAIS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspClienteTerceiroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMClienteTerceiro: TDMClienteTerceiro;
  ctClienteTerceiro : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMClienteTerceiro.DataModuleCreate(Sender: TObject);
begin
  ctClienteTerceiro := sdsClienteTerceiro.CommandText;
end;

procedure TDMClienteTerceiro.dspClienteTerceiroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
