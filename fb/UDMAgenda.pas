unit UDMAgenda;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMAgenda = class(TDataModule)
    sdsAgenda: TSQLDataSet;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    dsAgenda: TDataSource;
    dsAgendaMestre: TDataSource;
    sdsAgenda_Hist: TSQLDataSet;
    dspAgenda_Hist: TDataSetProvider;
    cdsAgenda_Hist: TClientDataSet;
    dsAgenda_Hist: TDataSource;
    sdsAgendaID: TIntegerField;
    sdsAgendaDTAGENDA: TDateField;
    sdsAgendaOBS: TMemoField;
    sdsAgendaPAUTA: TMemoField;
    sdsAgendaDESCISOES: TMemoField;
    sdsAgendaPENDENCIAS: TMemoField;
    sdsAgendaNOMEPESSOA: TStringField;
    sdsAgendaUSUARIO: TStringField;
    sdsAgendaDTCADASTRO: TDateField;
    sdsAgendaHRCADASTRO: TTimeField;
    sdsAgendaCONCLUIDO: TStringField;
    sdsAgendaHRAGENDA: TTimeField;
    cdsAgendaID: TIntegerField;
    cdsAgendaDTAGENDA: TDateField;
    cdsAgendaOBS: TMemoField;
    cdsAgendaPAUTA: TMemoField;
    cdsAgendaDESCISOES: TMemoField;
    cdsAgendaPENDENCIAS: TMemoField;
    cdsAgendaNOMEPESSOA: TStringField;
    cdsAgendaUSUARIO: TStringField;
    cdsAgendaDTCADASTRO: TDateField;
    cdsAgendaHRCADASTRO: TTimeField;
    cdsAgendaCONCLUIDO: TStringField;
    cdsAgendaHRAGENDA: TTimeField;
    sdsAgenda_HistID: TIntegerField;
    sdsAgenda_HistITEM: TIntegerField;
    sdsAgenda_HistDTANTAGENDA: TDateField;
    sdsAgenda_HistMOTIVOREAGENDAMENTO: TMemoField;
    sdsAgenda_HistUSUARIO: TStringField;
    sdsAgenda_HistDTCADASTRO: TDateField;
    sdsAgenda_HistHRCADASTRO: TTimeField;
    sdsAgenda_HistHRANTAGENDA: TTimeField;
    cdsAgendasdsAgenda_Hist: TDataSetField;
    cdsAgenda_HistID: TIntegerField;
    cdsAgenda_HistITEM: TIntegerField;
    cdsAgenda_HistDTANTAGENDA: TDateField;
    cdsAgenda_HistMOTIVOREAGENDAMENTO: TMemoField;
    cdsAgenda_HistUSUARIO: TStringField;
    cdsAgenda_HistDTCADASTRO: TDateField;
    cdsAgenda_HistHRCADASTRO: TTimeField;
    cdsAgenda_HistHRANTAGENDA: TTimeField;
    sdsAgendaCODFUNCIONARIO: TIntegerField;
    cdsAgendaCODFUNCIONARIO: TIntegerField;
    sdsAgendaDTCONCLUIDO: TDateField;
    cdsAgendaDTCONCLUIDO: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspAgendaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAgenda: TDMAgenda;
  ctAgenda : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMAgenda.DataModuleCreate(Sender: TObject);
begin
  ctAgenda := sdsAgenda.CommandText;
end;

procedure TDMAgenda.dspAgendaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
