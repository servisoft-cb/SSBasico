unit URelCliFornMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelCliFornMov = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw2: TRLDraw;
    RLReport2: TRLReport;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw3: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw4: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelCliFornMov: TfRelCliFornMov;

implementation

uses UConsCliFornMov, UDM1, DB;

{$R *.dfm}

procedure TfRelCliFornMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCliFornMov.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório do Movimento de Clientes Resumido - ' +
                      fConsCliFornMov.DateEdit1.Text + ' a ' + fConsCliFornMov.DateEdit2.Text;
  RLLabel6.Visible := DM1.tUsuarioMostrarValorMovCli.Visible;
end;

procedure TfRelCliFornMov.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel7.Caption  := 'Relatório do Movimento de Fornecedores Resumido - ' +
                      fConsCliFornMov.DateEdit1.Text + ' a ' + fConsCliFornMov.DateEdit2.Text;
  RLLabel14.Visible := DM1.tUsuarioMostrarValorMovCli.Visible;
end;

procedure TfRelCliFornMov.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText5.Visible := DM1.tUsuarioMostrarValorMovCli.Visible;
end;

procedure TfRelCliFornMov.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText10.Visible := DM1.tUsuarioMostrarValorMovCli.Visible;
end;

end.
