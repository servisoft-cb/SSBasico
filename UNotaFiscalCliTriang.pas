unit UNotaFiscalCliTriang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Buttons;

type
  TfNotaFiscalCliTriang = class(TForm)
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalCliTriang: TfNotaFiscalCliTriang;

implementation

uses UDM1;

{$R *.dfm}

procedure TfNotaFiscalCliTriang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalCliTriang.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalCliTriang.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
