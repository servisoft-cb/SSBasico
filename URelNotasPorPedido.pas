unit URelNotasPorPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelNotasPorPedido = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLBand4: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDraw11: TRLDraw;
    RLBand5: TRLBand;
    RLDraw10: TRLDraw;
    RLDraw8: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLSubDetail3BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNotasPorPedido: TfRelNotasPorPedido;

implementation

uses UConsNotasPorPedido;

{$R *.dfm}

procedure TfRelNotasPorPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotasPorPedido.RLSubDetail3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fConsNotasPorPedido.CheckBox1.Checked;
end;

procedure TfRelNotasPorPedido.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fConsNotasPorPedido.CheckBox1.Checked;
  if fConsNotasPorPedido.tNotaFiscalPedGradeQtd.AsFloat <= 0 then
    PrintIt := False;
end;

end.
