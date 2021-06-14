unit UDMTalao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMTalao = class(TDataModule)
    sdsTalao: TSQLDataSet;
    dspTalao: TDataSetProvider;
    cdsTalao: TClientDataSet;
    dsTalao: TDataSource;
    sdsTalaoTALAO: TIntegerField;
    sdsTalaoCODPRODUTO: TIntegerField;
    sdsTalaoCODCOR: TIntegerField;
    sdsTalaoTAMANHO: TStringField;
    sdsTalaoPEDIDO: TIntegerField;
    sdsTalaoITEMPEDIDO: TIntegerField;
    sdsTalaoPEDIDOCLIENTE: TStringField;
    sdsTalaoQTD: TFloatField;
    sdsTalaoCODCLIENTE: TIntegerField;
    sdsTalaoPRODUZIDO: TStringField;
    sdsTalaoDTBAIXA: TDateField;
    sdsTalaoHRBAIXA: TTimeField;
    sdsTalaoDTENTREGA: TDateField;
    sdsTalaoFILIAL: TIntegerField;
    sdsTalaoNUMOSPEDIDO: TStringField;
    sdsTalaoCANCELADO: TStringField;
    sdsTalaoMOTIVOCANCELADO: TStringField;
    sdsTalaoDTCANCELADO: TDateField;
    sdsTalaoDTIMPRESSAO: TDateField;
    sdsTalaoHRIMPRESSAO: TTimeField;
    sdsTalaoCODCOMBINACAO: TIntegerField;
    sdsTalaoQTDPRODUZIDO: TFloatField;
    sdsTalaoNUMMOVEST: TIntegerField;
    sdsTalaoDTGERADO: TDateField;
    cdsTalaoTALAO: TIntegerField;
    cdsTalaoCODPRODUTO: TIntegerField;
    cdsTalaoCODCOR: TIntegerField;
    cdsTalaoTAMANHO: TStringField;
    cdsTalaoPEDIDO: TIntegerField;
    cdsTalaoITEMPEDIDO: TIntegerField;
    cdsTalaoPEDIDOCLIENTE: TStringField;
    cdsTalaoQTD: TFloatField;
    cdsTalaoCODCLIENTE: TIntegerField;
    cdsTalaoPRODUZIDO: TStringField;
    cdsTalaoDTBAIXA: TDateField;
    cdsTalaoHRBAIXA: TTimeField;
    cdsTalaoDTENTREGA: TDateField;
    cdsTalaoFILIAL: TIntegerField;
    cdsTalaoNUMOSPEDIDO: TStringField;
    cdsTalaoCANCELADO: TStringField;
    cdsTalaoMOTIVOCANCELADO: TStringField;
    cdsTalaoDTCANCELADO: TDateField;
    cdsTalaoDTIMPRESSAO: TDateField;
    cdsTalaoHRIMPRESSAO: TTimeField;
    cdsTalaoCODCOMBINACAO: TIntegerField;
    cdsTalaoQTDPRODUZIDO: TFloatField;
    cdsTalaoNUMMOVEST: TIntegerField;
    cdsTalaoDTGERADO: TDateField;
    qProximoTalao: TSQLQuery;
    qProximoTalaoTALAO: TIntegerField;
    sdsTalaoOBS: TStringField;
    cdsTalaoOBS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTalaoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTalao: TDMTalao;
  ctTalao : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMTalao.DataModuleCreate(Sender: TObject);
begin
  ctTalao := sdsTalao.CommandText;
end;

procedure TDMTalao.dspTalaoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
