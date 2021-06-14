unit UCancelaLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, DB;

type
  TfCancelaLote = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText5: TDBText;
    Label5: TLabel;
    DBText7: TDBText;
    Label7: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCancelaLote: TfCancelaLote;

implementation

uses UDM1, UGeraLote2;

{$R *.dfm}

procedure TfCancelaLote.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfCancelaLote.FormShow(Sender: TObject);
begin
  DateEdit1.Date := fGeraLote2.mTalaoDtCancelado.AsDateTime;
  Edit1.Text     := fGeraLote2.mTalaoMotivoCancelado.AsString;
end;

procedure TfCancelaLote.BitBtn1Click(Sender: TObject);
var
  vCancela : String;
begin
  vCancela := '';
  if DateEdit1.Date > 0 then
    if MessageDlg('Confirma o cancelamento do lote?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
      vCancela := 'S';
  if DateEdit1.Date <= 0 then
    if MessageDlg('Confirma a exclusão do cancelamento?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
      vCancela := 'N';
  if vCancela <> '' then
    begin
      fGeraLote2.mTalao.First;
      while not fGeraLote2.mTalao.Eof do
        begin
          if (fGeraLote2.SMDBGrid2.SelectedRows.CurrentRowSelected) and
             (((vCancela = 'S') and not(fGeraLote2.mTalaoCancelado.AsBoolean)) or
             ((vCancela = 'N') and (fGeraLote2.mTalaoCancelado.AsBoolean))) then
            begin
              fGeraLote2.mTalao.Edit;
              fGeraLote2.mTalaoDtCancelado.AsDateTime   := DateEdit1.Date;
              fGeraLote2.mTalaoMotivoCancelado.AsString := Edit1.Text;
              if vCancela = 'S' then
                fGeraLote2.mTalaoCancelado.AsBoolean := True
              else
                fGeraLote2.mTalaoCancelado.AsBoolean := False;
              fGeraLote2.mTalao.Post;
              if DM1.tTalao.Locate('Talao',fGeraLote2.mTalaoLote.AsInteger,[loCaseInsensitive]) then
                begin
                  DM1.tTalao.Edit;
                  fGeraLote2.Cancela_Talao;
                  DM1.tTalao.Post;
                end;
            end;
          fGeraLote2.mTalao.Next;
        end;
    end;
  Close;
end;

procedure TfCancelaLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
