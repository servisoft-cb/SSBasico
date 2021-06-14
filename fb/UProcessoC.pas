unit UProcessoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, FMTBcd, SqlExpr;

type
  TfProcessoC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    vTipo : String;
    
    procedure Monta_sqlProcesso(Tipo : String ; Codigo : Integer);
  public
    { Public declarations }

  end;

var
  fProcessoC: TfProcessoC;

implementation

uses UDM1, UProcesso, uIntegracao, DateUtils,
  DmdDatabase, UDMProcesso;

{$R *.dfm}

procedure TfProcessoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMProcesso.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMProcesso);
  Action := Cafree;
end;

procedure TfProcessoC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlProcesso('C',0);
end;

procedure TfProcessoC.Monta_sqlProcesso(Tipo : String ; Codigo : Integer);
begin
  DMProcesso.cdsProcesso.Close;
  DMProcesso.sdsProcesso.CommandText := ctProcesso;
  if (Tipo = 'I') or (Codigo > 0) then
    DMProcesso.sdsProcesso.CommandText := DMProcesso.sdsProcesso.CommandText
                                        + ' WHERE ID >= ' + IntToStr(Codigo);

  DMProcesso.sdsProcesso.CommandText := DMProcesso.sdsProcesso.CommandText
                                                + ' ORDER BY ID ';
  DMProcesso.cdsProcesso.Open;
end;

procedure TfProcessoC.BitBtn2Click(Sender: TObject);
begin
  if DMProcesso.cdsProcesso.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMProcesso.cdsProcesso.Delete;
  DMProcesso.cdsProcesso.ApplyUpdates(0);
end;


procedure TfProcessoC.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
  vCodAux : Integer;
begin
  if not DM1.tUsuarioInsProcesso.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;

  if not DMProcesso.cdsProcesso.Active then
    Monta_sqlProcesso('I',0);

  vNumAux := ProximaSequencia('PROCESSO',0);

  DMProcesso.cdsProcesso.Insert;
  DMProcesso.cdsProcessoID.AsInteger     := vNumAux;

  fProcesso := TfProcesso.Create(Self);
  fProcesso.ShowModal;
end;

procedure TfProcessoC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMProcesso) then
    DMProcesso := TDMProcesso.Create(Self);

  Monta_sqlProcesso('C',0);
  vTipo := IntToStr(Tag);
  BitBtn1.Enabled := DM1.tUsuarioInsProcesso.AsBoolean;
  BitBtn2.Enabled := DM1.tUsuarioExcProcesso.AsBoolean;
end;

procedure TfProcessoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMProcesso.cdsProcesso.IsEmpty then
    exit;
  DMProcesso.cdsProcesso.Edit;
  fProcesso := TfProcesso.Create(Self);
  fProcesso.Panel2.Enabled  := DM1.tUsuarioAltProcesso.AsBoolean;
  fProcesso.BitBtn1.Enabled := DM1.tUsuarioAltProcesso.AsBoolean;
  fProcesso.ShowModal;
end;

procedure TfProcessoC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
