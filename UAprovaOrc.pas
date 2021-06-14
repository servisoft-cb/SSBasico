unit UAprovaOrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, RxLookup, ExtCtrls, Db, DBTables, Mask, ToolEdit,
  CurrEdit, DBCtrls, RXDBCtrl, Grids, DBGrids, ALed;

type
  TfAprovaOrc = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    ALed2: TALed;
    Label33: TLabel;
    Label12: TLabel;
    ALed1: TALed;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAprovaOrc: TfAprovaOrc;

implementation

uses UDM1;


{$R *.DFM}

procedure TfAprovaOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  vAprovado    : Integer;
  vPendente    : Integer;
  vNaoAprovado : Integer;
  vAux2 : String;
begin
  vAprovado    := 0;
  vPendente    := 0;
  vNaoAprovado := 0;
  DM1.tOrcamentoItens.First;
  while not DM1.tOrcamentoItens.Eof do
    begin
      if DM1.tOrcamentoItensAprovado.AsString = 'P' then
        inc(vPendente)
      else
      if DM1.tOrcamentoItensAprovado.AsString = 'A' then
        inc(vAprovado)
      else
      if DM1.tOrcamentoItensAprovado.AsString = 'N' then
        inc(vNaoAprovado);
      DM1.tOrcamentoItens.Next;
    end;
  if (vAprovado > 0) and ((vNaoAprovado > 0) or (vPendente > 0)) then
    vAux2 := 'L'
  else
  if vPendente > 0 then
    vAux2 := 'P'
  else
  if (vNaoAprovado = 0) and (vAprovado > 0) then
    vAux2 := 'A'
  else
  if (vNaoAprovado > 0) and (vAprovado = 0) then
    vAux2 := 'N';
  DM1.tOrcamento.Edit;
  DM1.tOrcamentoAprovado.AsString := vAux2;
  DM1.tOrcamento.Post;
  DM1.tOrcamento.Refresh;
  DM1.tOrcamentoItens.Refresh;
  Action := Cafree;
end;

procedure TfAprovaOrc.DBRadioGroup1Click(Sender: TObject);
begin
  DBEdit5.Color        := clScrollBar;
  DBEdit5.ReadOnly     := True;
  DBDateEdit1.Color    := clScrollBar;
  DBDateEdit1.ReadOnly := True;
  if DBRadioGroup1.ItemIndex = 0 then
    begin
      DBDateEdit1.Color    := clWindow;
      DBDateEdit1.ReadOnly := False;
    end
  else
  if DBRadioGroup1.ItemIndex = 1 then
    begin
      DBEdit5.Color        := clWindow;
      DBEdit5.ReadOnly     := False;
    end;
end;

procedure TfAprovaOrc.DBRadioGroup1Exit(Sender: TObject);
begin
  DBRadioGroup1Click(Sender);
  BitBtn6.SetFocus;
end;

procedure TfAprovaOrc.BitBtn6Click(Sender: TObject);
begin
  if DM1.tOrcamentoItens.State in [dsEdit] then
    DM1.tOrcamentoItens.Post;
  RxDBGrid1.SetFocus;
end;

procedure TfAprovaOrc.BitBtn1Click(Sender: TObject);
begin
  if DM1.tOrcamentoItens.State in [dsEdit] then
    DM1.tOrcamentoItens.Cancel;
  Close;
end;

procedure TfAprovaOrc.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tOrcamentoItensAprovado.AsString = 'A' then
    begin
      Background  := clAqua;
      AFont.Color := clWindowText;
    end
  else
  if DM1.tOrcamentoItensAprovado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end;
end;

procedure TfAprovaOrc.FormShow(Sender: TObject);
begin
  RxDBGrid1.SetFocus;
end;

procedure TfAprovaOrc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
