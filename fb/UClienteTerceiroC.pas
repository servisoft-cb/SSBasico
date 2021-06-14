unit UClienteTerceiroC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB;

type
  TfClienteTerceiroC = class(TForm)
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
    procedure Monta_sqlClienteTerceiro(Tipo : String ; Codigo : Integer);
  public
    { Public declarations }

  end;

var
  fClienteTerceiroC: TfClienteTerceiroC;

implementation

uses UDMClienteTerceiro, UDM1, UClienteTerceiro, uIntegracao, DateUtils;

{$R *.dfm}

procedure TfClienteTerceiroC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMClienteTerceiro.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMClienteTerceiro);
  Action := Cafree;
end;

procedure TfClienteTerceiroC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlClienteTerceiro('C',0);
end;

procedure TfClienteTerceiroC.Monta_sqlClienteTerceiro(Tipo : String ; Codigo : Integer);
begin
  DMClienteTerceiro.cdsClienteTerceiro.Close;
  DMClienteTerceiro.sdsClienteTerceiro.CommandText := ctClienteTerceiro
                                                + ' WHERE 0=0 ';
  if (Tipo = 'I') or (Codigo > 0) then
    DMClienteTerceiro.sdsClienteTerceiro.CommandText := DMClienteTerceiro.sdsClienteTerceiro.CommandText
                                                  + ' AND CODIGO >= ' + IntToStr(Codigo);

  DMClienteTerceiro.sdsClienteTerceiro.CommandText := DMClienteTerceiro.sdsClienteTerceiro.CommandText
                                                + ' ORDER BY NOME, CODIGO ';
  DMClienteTerceiro.cdsClienteTerceiro.Open;
end;

procedure TfClienteTerceiroC.BitBtn2Click(Sender: TObject);
begin
  if DMClienteTerceiro.cdsClienteTerceiro.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMClienteTerceiro.cdsClienteTerceiro.Delete;
  DMClienteTerceiro.cdsClienteTerceiro.ApplyUpdates(0);
end;


procedure TfClienteTerceiroC.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if not DM1.tUsuarioInsClienteTerceiro.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;

  if not DMClienteTerceiro.cdsClienteTerceiro.Active then
    Monta_sqlClienteTerceiro('I',0);

  vNumAux := ProximaSequencia('CLIENTETERCEIRO',0);

  DMClienteTerceiro.cdsClienteTerceiro.Insert;
  DMClienteTerceiro.cdsClienteTerceiroCODIGO.AsInteger := vNumAux;
  DMClienteTerceiro.cdsClienteTerceiroUSUARIO.AsString := DM1.tUsuarioUsuario.AsString;
  DMClienteTerceiro.cdsClienteTerceiroDTCAD.AsDateTime := Date;
  DMClienteTerceiro.cdsClienteTerceiroHRCAD.AsDateTime := Now;

  fClienteTerceiro := TfClienteTerceiro.Create(Self);
  fClienteTerceiro.ShowModal;
end;

procedure TfClienteTerceiroC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMClienteTerceiro) then
    DMClienteTerceiro := TDMClienteTerceiro.Create(Self);

  Monta_sqlClienteTerceiro('C',0);
end;

procedure TfClienteTerceiroC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMClienteTerceiro.cdsClienteTerceiro.IsEmpty then
    exit;
  DMClienteTerceiro.cdsClienteTerceiro.Edit;
  fClienteTerceiro := TfClienteTerceiro.Create(Self);
  fClienteTerceiro.ShowModal;
end;

procedure TfClienteTerceiroC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
