unit UAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, DBTables,
  Db, ComCtrls, RXCtrls, Menus, CurrEdit, RxDBComb, Planner, DBPlanner, DBPlannerMonthView, PlanDraw, SMDBGrid, FMTBcd, DBClient,
  SqlExpr, ToolEdit, Grids, DBGrids, PlannerMonthView, Provider;

type
  TfAgenda = class(TForm)
    dsConsulta: TDataSource;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label1: TLabel;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    DBPlannerMonthView1: TDBPlannerMonthView;
    sdsAgenda: TSQLDataSet;
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
    sdsAgendaCODFUNCIONARIO: TIntegerField;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
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
    cdsAgendaCODFUNCIONARIO: TIntegerField;
    dsAgenda: TDataSource;
    sdsAgendaNOMEFUNCIONARIO: TStringField;
    cdsAgendaNOMEFUNCIONARIO: TStringField;
    qAgenda: TSQLQuery;
    qAgendaDTAGENDA: TDateField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Shape2: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure DBPlannerMonthView1GetDayProp(Sender: TObject;
      Date: TDateTime; var Caption: String; CaptionBrush: TBrush;
      AFont: TFont; var BKColor, BKColorTo: TColor);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    ctAgendaLoc: String;

    function fnc_Existe_Agenda(Data : TDateTime ) : Boolean;
    procedure Monta_sdsAgendaLoc(Tipo : String ; ID : Integer);
    procedure Monta_sqlAgenda(Codigo : Integer);

  public
    { Public declarations }
  end;

var
  fAgenda: TfAgenda;

implementation

uses UDM1, UDM2, UAgendaDig, DateUtils, Math, UDMAgenda, DmdDatabase, uIntegracao;

{$R *.DFM}

procedure TfAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {if Screen.FormCount < 3 then
    begin
      DM1.tAgenda.Close;
      DM1.tAgendaHist.Close;
    end;}

  if DMAgenda.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMAgenda);

  Action := Cafree;
end;

procedure TfAgenda.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  if not Assigned(DMAgenda) then
    DMAgenda := TDMAgenda.Create(Self);

  ctAgendaLoc := sdsAgenda.CommandText;

  //DM1.tAgenda.Open;
  //DM1.tAgendaHist.Open;
  DBPlannerMonthView1.Day   := DayOf(Date);
  DBPlannerMonthView1.Month := MonthOf(Date);
  DBPlannerMonthView1.Year  := YearOf(Date);
end;

procedure TfAgenda.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  DateEdit2.Date := SelDate;
  DateEdit3.Date := SelDate;
  //if tAgenda.Locate('DtAgenda',SelDate,[loCaseInsensitive]) then
  BitBtn1Click(Sender);
end;

procedure TfAgenda.DBPlannerMonthView1GetDayProp(Sender: TObject;
  Date: TDateTime; var Caption: String; CaptionBrush: TBrush; AFont: TFont;
  var BKColor, BKColorTo: TColor);
begin
  if fnc_Existe_Agenda(Date) then
  //if (tAgenda.Locate('DtAgenda',Date,[loCaseInsensitive])) then
    BKColor := clAqua;
end;

procedure TfAgenda.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit2.Date > 1) and (DateEdit3.Date > 1) then
    Monta_sdsAgendaLoc('P',0);
end;

procedure TfAgenda.SMDBGrid1DblClick(Sender: TObject);
begin
  if cdsAgenda.IsEmpty then
    exit;

  Monta_sqlAgenda(cdsAgendaID.AsInteger);
  fAgendaDig := TfAgendaDig.Create(Self);
  fAgendaDig.ShowModal;
end;

function TfAgenda.fnc_Existe_Agenda(Data : TDateTime ) : Boolean;
begin
  Result := False;
  qAgenda.Close;
  if DM1.tParametrosControlarAgendaPorFunc.AsBoolean then
    qAgenda.SQL.Text := qAgenda.SQL.Text + ' ((AND CodFuncionario = ' + DM1.tUsuarioCodFuncionario.AsString + ') or (CodFuncionario <= 0))' ;
  qAgenda.ParamByName('DTAGENDA').AsDate := Data;
  qAgenda.Open;
  if not qAgenda.IsEmpty then
    Result := True;
end;

procedure TfAgenda.Monta_sdsAgendaLoc(Tipo : String ; ID : Integer);
begin
  cdsAgenda.Close;
  sdsAgenda.CommandText := ctAgendaLoc;
  if (Tipo = 'N') or (ID > 0) then
    sdsAgenda.CommandText := sdsAgenda.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  begin
    sdsAgenda.CommandText := sdsAgenda.CommandText + ' WHERE A.DTAGENDA BETWEEN ' +
                             QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date)) + ' AND ' +
                             QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if not CheckBox1.Checked then
      sdsAgenda.CommandText := sdsAgenda.CommandText + ' AND CONCLUIDO = ' + QuotedStr('N');
    if DM1.tParametrosControlarAgendaPorFunc.AsBoolean then
      sdsAgenda.CommandText := sdsAgenda.CommandText + ' AND ((A.CODFUNCIONARIO = ' +
                               DM1.tUsuarioCodFuncionario.AsString + ') or (A.CODFUNCIONARIO <= 0)) ';
  end;
  cdsAgenda.Open;
end;

procedure TfAgenda.BitBtn2Click(Sender: TObject);
var
  vNumAux: Integer;
begin
  if not DMAgenda.cdsAgenda.Active then
    Monta_sqlAgenda(0);

  vNumAux := ProximaSequencia('AGENDA',0);

  DMAgenda.cdsAgenda.Insert;
  DMAgenda.cdsAgendaID.AsInteger          := vNumAux;
  DMAgenda.cdsAgendaUSUARIO.AsString      := DM1.tUsuarioUsuario.AsString;
  DMAgenda.cdsAgendaDTCADASTRO.AsDateTime := Date;
  DMAgenda.cdsAgendaHRCADASTRO.AsDateTime := Now;
  DMAgenda.cdsAgendaCONCLUIDO.AsString    := 'N';
  if DM1.tUsuarioCodFuncionario.AsInteger > 0 then
    DMAgenda.cdsAgendaCODFUNCIONARIO.AsInteger := DMAgenda.cdsAgendaCODFUNCIONARIO.AsInteger
  else
    DMAgenda.cdsAgendaCODFUNCIONARIO.AsInteger := 0;
  fAgendaDig := TfAgendaDig.Create(Self);
  fAgendaDig.ShowModal;
end;

procedure TfAgenda.Monta_sqlAgenda(Codigo: Integer);
begin
  DMAgenda.cdsAgenda.Close;
  DMAgenda.sdsAgenda.CommandText := ctAgenda + ' WHERE ID = ' + IntToStr(Codigo);
  DMAgenda.cdsAgenda.Open;
end;

procedure TfAgenda.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsAgendaConcluido.AsString = 'S' then
  begin
    Background  := clTeal;
    AFont.Color := clWhite;
  end;
end;

end.
