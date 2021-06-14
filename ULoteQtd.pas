unit ULoteQtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons;

type
  TfLoteQtd = class(TForm)
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLoteQtd: TfLoteQtd;

implementation

uses Math, UDM1, UGeraLote2;

{$R *.dfm}

procedure TfLoteQtd.FormShow(Sender: TObject);
begin
  fGeraLote2.mInfLote.EmptyDataSet;
end;

procedure TfLoteQtd.BitBtn2Click(Sender: TObject);
begin
  fGeraLote2.mInfLote.EmptyDataSet;
  Close;
end;

procedure TfLoteQtd.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  vQtd : Real;
begin
  if fGeraLote2.mInfLote.RecordCount > 0 then
    begin
      vQtd := 0;
      fGeraLote2.mInfLote.First;
      while not fGeraLote2.mInfLote.Eof do
        begin
          vQtd := vQtd + (fGeraLote2.mInfLoteQtdPares.AsFloat * fGeraLote2.mInfLoteQtdLote.AsInteger);
          fGeraLote2.mInfLote.Next;
        end;
      if vQtd <> DM1.tPedidoItemQtdPares.AsFloat then
        begin
          CanClose := False;
          ShowMessage('Quantidade digitada diferente da quantidade do pedido!');
        end;
    end;
end;

procedure TfLoteQtd.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfLoteQtd.BitBtn3Click(Sender: TObject);
begin
  if (fGeraLote2.mInfLote.RecordCount > 0) and (MessageDlg('Excluir o registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK) then
    fGeraLote2.mInfLote.Delete;
end;

end.
