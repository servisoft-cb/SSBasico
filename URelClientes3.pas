unit URelClientes3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelClientes3 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand4: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw4: TRLDraw;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelClientes3: TfRelClientes3;

implementation

uses UDM1, UConsCliente;

{$R *.dfm}

procedure TfRelClientes3.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fConsCliente.CheckBox1.Checked then
    PrintIt := (fConsCliente.qClienteEmail.AsString <> '');
end;

procedure TfRelClientes3.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fConsCliente.CheckBox1.Checked then
    RLDraw4.Visible := not(fConsCliente.qClienteEmail.AsString <> '');
end;

end.
