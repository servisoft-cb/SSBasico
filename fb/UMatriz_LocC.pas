unit UMatriz_LocC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBVGrids;

type
  TfMatriz_LocC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    VDBGrid1: TVDBGrid;
    ComboBox1: TComboBox;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_sqlMatriz_Loc(Tipo : String ; Codigo : Integer);
  public
    { Public declarations }

  end;

var
  fMatriz_LocC: TfMatriz_LocC;

implementation

uses UDMMatriz_Loc, UDM1, UMatriz_Loc, uIntegracao, DateUtils;

{$R *.dfm}

procedure TfMatriz_LocC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMatriz_Loc.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMMatriz_Loc);
  Action := Cafree;
end;

procedure TfMatriz_LocC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlMatriz_Loc('C',0);
end;

procedure TfMatriz_LocC.Monta_sqlMatriz_Loc(Tipo : String ; Codigo : Integer);
begin
  DMMatriz_Loc.cdsMatriz_Loc.Close;
  DMMatriz_Loc.sdsMatriz_Loc.CommandText := ctMatriz_Loc
                                                + ' WHERE 0=0 ';
  if (Tipo = 'I') or (Codigo > 0) then
    DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText
                                                  + ' AND ID = ' + IntToStr(Codigo)
  else
  begin
    if Trim(Edit1.Text) <> '' then
      DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText
                                      + ' AND REFMATRIZ LIKE ' + QuotedStr('%'+Edit1.Text+'%');
    if Trim(Edit2.Text) <> '' then
      DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText
                                      + ' AND EMPRESA LIKE ' + QuotedStr('%'+Edit2.Text+'%');
  end;

  case ComboBox1.ItemIndex of
    0 : DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText + ' ORDER BY ID ';
    1 : DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText + ' ORDER BY REFMATRIZ, ID ';
    2 : DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText + ' ORDER BY EMPRESA, REFMATRIZ, ID ';
    3 : DMMatriz_Loc.sdsMatriz_Loc.CommandText := DMMatriz_Loc.sdsMatriz_Loc.CommandText + ' ORDER BY PRATELEIRA, EMPRESA, REFMATRIZ, ID ';
  end;

  DMMatriz_Loc.cdsMatriz_Loc.Open;
end;

procedure TfMatriz_LocC.BitBtn2Click(Sender: TObject);
begin
  if DMMatriz_Loc.cdsMatriz_Loc.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMMatriz_Loc.cdsMatriz_LocTam.First;
  while not DMMatriz_Loc.cdsMatriz_LocTam.Eof do
    DMMatriz_Loc.cdsMatriz_LocTam.Delete;

  DMMatriz_Loc.cdsMatriz_Loc.Delete;
  DMMatriz_Loc.cdsMatriz_Loc.ApplyUpdates(0);
end;


procedure TfMatriz_LocC.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if not DM1.tUsuarioInsMatriz_Loc.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;

  if not DMMatriz_Loc.cdsMatriz_Loc.Active then
    Monta_sqlMatriz_Loc('I',0);

  vNumAux := ProximaSequencia('MATRIZ_LOC',0);

  DMMatriz_Loc.cdsMatriz_Loc.Insert;
  DMMatriz_Loc.cdsMatriz_LocID.AsInteger     := vNumAux;
  DMMatriz_Loc.cdsMatriz_LocUSUARIO.AsString := DM1.tUsuarioUsuario.AsString;
  DMMatriz_Loc.cdsMatriz_LocDTCAD.AsDateTime := Date;
  DMMatriz_Loc.cdsMatriz_LocHRCAD.AsDateTime := Now;

  fMatriz_Loc := TfMatriz_Loc.Create(Self);
  fMatriz_Loc.ShowModal;
end;

procedure TfMatriz_LocC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMMatriz_Loc) then
    DMMatriz_Loc := TDMMatriz_Loc.Create(Self);

  //Monta_sqlMatriz_Loc('C',0);
end;

procedure TfMatriz_LocC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMMatriz_Loc.cdsMatriz_Loc.IsEmpty then
    exit;
  fMatriz_Loc := TfMatriz_Loc.Create(Self);
  fMatriz_Loc.ShowModal;
end;

procedure TfMatriz_LocC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
