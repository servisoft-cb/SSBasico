unit UDMProcesso;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMProcesso = class(TDataModule)
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    sdsProcessoID: TIntegerField;
    sdsProcessoNOME: TStringField;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspProcessoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcesso: TDMProcesso;
  ctProcesso : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMProcesso.DataModuleCreate(Sender: TObject);
begin
  ctProcesso := sdsProcesso.CommandText;
end;

procedure TDMProcesso.dspProcessoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
