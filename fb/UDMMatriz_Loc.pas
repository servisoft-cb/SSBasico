unit UDMMatriz_Loc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMMatriz_Loc = class(TDataModule)
    sdsMatriz_Loc: TSQLDataSet;
    dspMatriz_Loc: TDataSetProvider;
    cdsMatriz_Loc: TClientDataSet;
    dsMatriz_Loc: TDataSource;
    sdsMatriz_LocID: TIntegerField;
    sdsMatriz_LocREFMATRIZ: TStringField;
    sdsMatriz_LocEMPRESA: TStringField;
    sdsMatriz_LocPRATELEIRA: TStringField;
    sdsMatriz_LocQTD: TIntegerField;
    sdsMatriz_LocPOSSUIGRADE: TStringField;
    cdsMatriz_LocID: TIntegerField;
    cdsMatriz_LocREFMATRIZ: TStringField;
    cdsMatriz_LocEMPRESA: TStringField;
    cdsMatriz_LocPRATELEIRA: TStringField;
    cdsMatriz_LocQTD: TIntegerField;
    cdsMatriz_LocPOSSUIGRADE: TStringField;
    dsMatriz_LocMestre: TDataSource;
    sdsMatriz_LocTam: TSQLDataSet;
    dspMatriz_LocTam: TDataSetProvider;
    cdsMatriz_LocTam: TClientDataSet;
    dsMatriz_LocTam: TDataSource;
    sdsMatriz_LocTamID: TIntegerField;
    sdsMatriz_LocTamITEM: TIntegerField;
    sdsMatriz_LocTamTAMANHO: TStringField;
    sdsMatriz_LocTamQTD: TIntegerField;
    cdsMatriz_LocsdsMatriz_LocTam: TDataSetField;
    cdsMatriz_LocTamID: TIntegerField;
    cdsMatriz_LocTamITEM: TIntegerField;
    cdsMatriz_LocTamTAMANHO: TStringField;
    cdsMatriz_LocTamQTD: TIntegerField;
    sdsMatriz_LocUSUARIO: TStringField;
    sdsMatriz_LocDTCAD: TDateField;
    sdsMatriz_LocHRCAD: TTimeField;
    cdsMatriz_LocUSUARIO: TStringField;
    cdsMatriz_LocDTCAD: TDateField;
    cdsMatriz_LocHRCAD: TTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMatriz_LocUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMatriz_Loc: TDMMatriz_Loc;
  ctMatriz_Loc : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMMatriz_Loc.DataModuleCreate(Sender: TObject);
begin
  ctMatriz_Loc := sdsMatriz_Loc.CommandText;
end;

procedure TDMMatriz_Loc.dspMatriz_LocUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
