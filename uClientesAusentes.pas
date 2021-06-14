unit uClientesAusentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, DB, DBTables, StdCtrls,
  JvEdit, JvTypedEdit, Buttons, DBClient, JvSpinEdit;

type
  TfClientesAusentes = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    qCliAusentes: TQuery;
    qCliAusentesNOME: TStringField;
    qCliAusentesFANTASIA: TStringField;
    qCliAusentesCGCCPF: TStringField;
    qBuscaData: TQuery;
    BitBtn1: TBitBtn;
    qCliAusentesCODIGO: TIntegerField;
    mCliAusentes: TClientDataSet;
    dsmCliAusentes: TDataSource;
    mCliAusentesCODIGO: TIntegerField;
    mCliAusentesNOME: TStringField;
    mCliAusentesFANTASIA: TStringField;
    mCliAusentesCGCCPF: TStringField;
    mCliAusentesULTCOMPRA: TDateField;
    JvSpinEdit1: TJvSpinEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientesAusentes: TfClientesAusentes;

implementation

uses uRelClientesAusentes;

{$R *.dfm}

procedure TfClientesAusentes.BitBtn1Click(Sender: TObject);
begin
  qCliAusentes.Close;
  qCliAusentes.ParamByName('D1').AsDateTime := IncMonth(Date,-JvSpinEdit1.Value);
  qCliAusentes.Open;

  mCliAusentes.EmptyDataSet;

  while not qCliAusentes.Eof do
  begin
    qBuscaData.Close;
    qBuscaData.ParamByName('C1').AsInteger := qCliAusentesCodigo.AsInteger;
    qBuscaData.Open;

    if not qBuscaData.FieldByName('DATA').IsNull then
    begin
      mCliAusentes.Insert;
      mCliAusentesCGCCPF.AsString   := qCliAusentesCGCCPF.AsString;
      mCliAusentesCODIGO.AsInteger  := qCliAusentesCODIGO.AsInteger;
      mCliAusentesFANTASIA.AsString := qCliAusentesFANTASIA.AsString;
      mCliAusentesNOME.AsString     := qCliAusentesNOME.AsString;
      mCliAusentesULTCOMPRA.AsDateTime := qBuscaData.FieldByName('DATA').AsDateTime;
      mCliAusentes.Post;
    end;
    qCliAusentes.Next;
  end;
  mCliAusentes.IndexFieldNames := 'ULTCOMPRA';
end;

procedure TfClientesAusentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfClientesAusentes.BitBtn2Click(Sender: TObject);
begin
  fRelClientesAusentes := TfRelClientesAusentes.Create(Self);
  fRelClientesAusentes.RLReport1.Preview;
  fRelClientesAusentes.Free;
end;

end.
