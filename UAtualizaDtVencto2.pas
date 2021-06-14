unit UAtualizaDtVencto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, RxLookup;

type
  TfAtualizaDtVencto2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAtualizaDtVencto2: TfAtualizaDtVencto2;

implementation

uses UDM1;

{$R *.dfm}

procedure TfAtualizaDtVencto2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCReceber.Close;
  DM1.tCReceberParc.Close;
  Action := Cafree;
end;

procedure TfAtualizaDtVencto2.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tTipoCobranca.IndexFieldNames := 'Nome';
end;

procedure TfAtualizaDtVencto2.FormShow(Sender: TObject);
begin
  DM1.tFilial.Open;
  DM1.tCReceber.Open;
  DM1.tCReceberParc.Open;
end;

procedure TfAtualizaDtVencto2.BitBtn1Click(Sender: TObject);
var
  vFilial : Integer;
begin
  DM1.tCReceber.MasterSource.Enabled := False;
  ProgressBar1.Max      := DM1.tCReceber.RecordCount;
  ProgressBar1.Position := 0;
  vFilial := 0;
  DM1.tCReceber.First;
  while not DM1.tCReceber.Eof do
    begin
      if vFilial <> DM1.tCReceberFilial.AsInteger then
        ShowMessage('vFilial = ' + IntToStr(vFilial) + '  Tab. ' + DM1.tCReceberFilial.AsString);
      ProgressBar1.Position := ProgressBar1.Position + 1;
      DM1.tCReceberParc.First;
      while not DM1.tCReceberParc.Eof do
        begin
          if (RxDBLookupCombo1.Text = '') or
             ((RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo1.KeyValue = DM1.tCReceberParcCodTipoCobranca.AsInteger)) then
            begin
              if DM1.tCReceberParcRestParcela.AsFloat > 0 then //and not(DM1.tCReceberCancelado.AsBoolean) then
                begin
                  DM1.tCReceberParc.Edit;
                  DM1.tCReceberParc.Post;
                end;
            end;
          DM1.tCReceberParc.Next;
        end;
      vFilial := DM1.tCReceberFilial.AsInteger;
      DM1.tCReceber.Next;
    end;
  DM1.tCReceber.MasterSource.Enabled := True;

  ShowMessage('Fim da atualiza��o!');
end;

procedure TfAtualizaDtVencto2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
