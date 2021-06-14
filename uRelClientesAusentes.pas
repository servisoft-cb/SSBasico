unit uRelClientesAusentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelClientesAusentes = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelClientesAusentes: TfRelClientesAusentes;

implementation

uses uClientesAusentes;

{$R *.dfm}

procedure TfRelClientesAusentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfRelClientesAusentes.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'CLIENTES SEM PEDIDOS NOS ÚLTIMOS ' + fClientesAusentes.JvSpinEdit1.Text + ' MESES';
end;

end.
