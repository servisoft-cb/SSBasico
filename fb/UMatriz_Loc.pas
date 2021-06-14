unit UMatriz_Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, VerificaCPF, VerificaCGC,
  CurrEdit, DBVGrids;

type
  TfMatriz_Loc = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Panel3: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    Label10: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn7: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    VDBGrid1: TVDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RxDBComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fMatriz_Loc: TfMatriz_Loc;

implementation

uses UDMMatriz_Loc, UDM1, UMatriz_LocC, DB;

{$R *.dfm}

procedure TfMatriz_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMatriz_Loc.cdsMatriz_Loc.State in [dsEdit,dsInsert] then
    DMMatriz_Loc.cdsMatriz_Loc.CancelUpdates;
  Action := Cafree;
end;

procedure TfMatriz_Loc.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  Close;
end;

procedure TfMatriz_Loc.BitBtn1Click(Sender: TObject);
begin
  if DMMatriz_Loc.cdsMatriz_Loc.State in [dsBrowse] then
  begin
    Close;
    exit;
  end;

  if (DMMatriz_Loc.cdsMatriz_LocPOSSUIGRADE.AsString = 'S') and (DMMatriz_Loc.cdsMatriz_LocTam.IsEmpty) then
  begin
    ShowMessage('Não foi informado os tamanhos!');
    exit;
  end;

  DMMatriz_Loc.cdsMatriz_Loc.Post;
  DMMatriz_Loc.cdsMatriz_Loc.ApplyUpdates(0);

  Close;
end;


procedure TfMatriz_Loc.BitBtn7Click(Sender: TObject);
var
  vItem : Integer;
begin
  if Trim(Edit1.Text) = '' then
  begin
    ShowMessage('Tamanho não foi informado!');
    exit;
  end;

  DMMatriz_Loc.cdsMatriz_LocTam.Last;
  vItem := DMMatriz_Loc.cdsMatriz_LocTamITEM.AsInteger;

  DMMatriz_Loc.cdsMatriz_LocTam.Insert;
  DMMatriz_Loc.cdsMatriz_LocTamID.AsInteger     := DMMatriz_Loc.cdsMatriz_LocID.AsInteger;
  DMMatriz_Loc.cdsMatriz_LocTamITEM.AsInteger   := vItem + 1;
  DMMatriz_Loc.cdsMatriz_LocTamTAMANHO.AsString := Edit1.Text;
  DMMatriz_Loc.cdsMatriz_LocTamQTD.AsInteger    := CurrencyEdit1.AsInteger;
  DMMatriz_Loc.cdsMatriz_LocTam.Post;

  SpeedButton2Click(Sender);
  Edit1.SetFocus;
end;

procedure TfMatriz_Loc.SpeedButton2Click(Sender: TObject);
begin
  Edit1.Clear;
  CurrencyEdit1.Clear;
end;

procedure TfMatriz_Loc.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMMatriz_Loc.cdsMatriz_LocTam.Delete;
end;

procedure TfMatriz_Loc.RxDBComboBox1Change(Sender: TObject);
begin
  Panel3.Visible := (RxDBComboBox1.ItemIndex = 0);

end;

procedure TfMatriz_Loc.FormShow(Sender: TObject);
begin
  Panel3.Visible := (DMMatriz_Loc.cdsMatriz_LocPOSSUIGRADE.AsString = 'S');
end;

end.
