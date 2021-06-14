unit UAgendaDig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  DBFilter, SMCVersInfo, EditType, SMBox, Calendar, SMCalendar, Planner,
  DBPlanner, PlannerMonthView, DBPlannerMonthView, PlanDraw, RzTabs,
  SMDBAcc, RzEdit, RzDBEdit;

type
  TfAgendaDig = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    DBEdit1: TDBEdit;
    Label32: TLabel;
    DBDateEdit2: TDBDateEdit;
    BitBtn8: TBitBtn;
    Label3: TLabel;
    DBText3: TDBText;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBMemo1: TDBMemo;
    TabSheet2: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet3: TRzTabSheet;
    DBMemo3: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo4: TDBMemo;
    TabSheet5: TRzTabSheet;
    Label1: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    DBText6: TDBText;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Exclui_Agenda;
  public
    { Public declarations }
    vDataSel : TDate;
  end;

var
  fAgendaDig: TfAgendaDig;

implementation

uses UDM1, UDM2, UReagendamento, UConsAgenda, UDMAgenda;

{$R *.DFM}

procedure TfAgendaDig.Exclui_Agenda;
begin
  {DM1.tAgendaHist.First;
  while not DM1.tAgendaHist.Eof do
    DM1.tAgendaHist.Delete;
  DM1.tAgenda.Delete;}
end;

procedure TfAgendaDig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfAgendaDig.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfAgendaDig.BitBtn6Click(Sender: TObject);
begin
  {if (DM1.tAgendaDtAgenda.AsDateTime < 1) or (DM1.tAgendaHrAgenda.IsNull) then
    begin
      ShowMessage('Falta informar a data ou a hora!');
      exit;
    end;}

  //DM1.tAgenda.Post;

  if trim(DMAgenda.cdsAgendaNOMEPESSOA.AsString) = '' then
  begin
    ShowMessage('É obrigatório informar Nome (Cliente/Outros)');
    exit;
  end;

  DMAgenda.cdsAgenda.Post;
  DMAgenda.cdsAgenda.ApplyUpdates(0);

  BitBtn2.Tag := 0;

  Close;
end;

procedure TfAgendaDig.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  {if DM1.tAgenda.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;}
end;

procedure TfAgendaDig.BitBtn8Click(Sender: TObject);
var
  vTexto : String;
begin
  if DMAgenda.cdsAgendaID.AsInteger < 1 then
    exit;
  if DMAgenda.cdsAgendaCONCLUIDO.AsString = 'S' then
    vTexto := 'Marcar pendente'
  else
    vTexto := 'Marcar concluido';

  if MessageDlg(vTexto+'?',mtconfirmation,[mbok,mbno],0)=mrok then
  begin
    DMAgenda.cdsAgenda.Edit;
    if DMAgenda.cdsAgendaCONCLUIDO.AsString = 'S' then
      DMAgenda.cdsAgendaCONCLUIDO.AsString := 'N'
    else
      DMAgenda.cdsAgendaCONCLUIDO.AsString := 'S';
    if DMAgenda.cdsAgendaCONCLUIDO.AsString = 'S' then
      DMAgenda.cdsAgendaDTCONCLUIDO.AsDateTime := Date
    else
      DMAgenda.cdsAgendaDTCONCLUIDO.Clear;
    DMAgenda.cdsAgenda.Post;
    DMAgenda.cdsAgenda.ApplyUpdates(0);
  end;
  Close;
end;

procedure TfAgendaDig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if (Key = Vk_F2) and (DM1.tAgenda.State in [dsBrowse]) then
    begin
      fConsAgenda := TfConsAgenda.Create(Self);
      fConsAgenda.ShowModal;
    end;}
end;

procedure TfAgendaDig.FormShow(Sender: TObject);
begin
  Panel3.Enabled   := (DMAgenda.cdsAgenda.State in [dsInsert]);
  DBMemo1.ReadOnly := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  DBMemo2.ReadOnly := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  DBMemo3.ReadOnly := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  DBMemo4.ReadOnly := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  BitBtn1.Enabled  := DMAgenda.cdsAgenda.State in [dsInsert];
  BitBtn2.Enabled  := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  BitBtn3.Enabled  := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  BitBtn7.Enabled  := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  BitBtn8.Enabled  := not(DMAgenda.cdsAgenda.State in [dsInsert]);
  if DMAgenda.cdsAgenda.State in [dsInsert] then
    DBDateEdit2.SetFocus;
end;

procedure TfAgendaDig.BitBtn2Click(Sender: TObject);
begin
  if DMAgenda.cdsAgendaID.AsInteger < 1 then
    exit;
  Panel3.Enabled   := True;
  DBMemo1.ReadOnly := False;
  DBMemo2.ReadOnly := False;
  DBMemo3.ReadOnly := False;
  DBMemo4.ReadOnly := False;
  BitBtn1.Enabled  := True;
  BitBtn2.Enabled  := not(BitBtn2.Enabled);
  BitBtn3.Enabled  := not(BitBtn3.Enabled);
  DMAgenda.cdsAgenda.Edit;
end;

procedure TfAgendaDig.BitBtn1Click(Sender: TObject);
begin
  if DMAgenda.cdsAgenda.State in [dsEdit,dsInsert] then
    DMAgenda.cdsAgenda.CancelUpdates;
  Close;
end;

procedure TfAgendaDig.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;
  DMAgenda.cdsAgenda_Hist.First;
  while not DMAgenda.cdsAgenda_Hist.Eof do
    DMAgenda.cdsAgenda_Hist.Delete;
  DMAgenda.cdsAgenda.Delete;
  DMAgenda.cdsAgenda.ApplyUpdates(0);
  close;
end;

end.
