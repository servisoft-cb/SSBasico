unit UDtReprogTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit, DBCtrls, Buttons, RXDBCtrl,
  Db, DBTables;

type
  TfDtReprogTalao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    BitBtn4: TBitBtn;
    DateEdit1: TDateEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDtReprogTalao: TfDtReprogTalao;

implementation

uses UDM1, UGeraLote2, DateUtils;

{$R *.DFM}

procedure TfDtReprogTalao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fGeraLote2.mTalao.State in [dsEdit] then
    fGeraLote2.mTalao.Cancel;
  Action := Cafree;
end;

procedure TfDtReprogTalao.BitBtn1Click(Sender: TObject);
begin
  if DateEdit1.Date > 0 then
    begin
      if (YearOf(DateEdit1.Date) < 2008) and
         ((MonthOf(DateEdit1.Date) > 12) or (MonthOf(DateEdit1.Date) < 1)) and
         ((DayOf(DateEdit1.Date) > 31) or (MonthOf(DateEdit1.Date) < 1)) then
        begin
          ShowMessage('Data inválida!');
          exit;
        end;
      fGeraLote2.mTalaoDtReprogramacao.AsDateTime := DateEdit1.Date;
    end
  else
    fGeraLote2.mTalaoDtReprogramacao .AsDateTime := fGeraLote2.mTalaoDtEntrega.AsDateTime;
  fGeraLote2.mTalaoReprogramacao.AsBoolean := CheckBox1.Checked;
  fGeraLote2.mTalao.Post;
  Close;
end;

procedure TfDtReprogTalao.BitBtn4Click(Sender: TObject);
begin
  fGeraLote2.mTalao.Cancel;
  Close;
end;

procedure TfDtReprogTalao.FormCreate(Sender: TObject);
begin
  DateEdit1.Date    := fGeraLote2.mTalaoDtReprogramacao.AsDateTime;
  CheckBox1.Checked := fGeraLote2.mTalaoReprogramacao.AsBoolean;
end;

end.
