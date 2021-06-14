unit URelPedidoPend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelPedidoPend = class(TForm)
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
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel10: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedidoPend: TfRelPedidoPend;

implementation

uses UConsPedidoPend, RxLookup, DB;

{$R *.dfm}

procedure TfRelPedidoPend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedidoPend.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := '';
  if fConsPedidoPend.RxDBLookupCombo1.Text <> '' then
    RLLabel3.Caption := '(Filial: ' + fConsPedidoPend.RxDBLookupCombo1.Text + ')';
  RLLabel3.Caption := RLLabel3.Caption + ' (Período: ' + fConsPedidoPend.DateEdit1.Text
                    + ' a ' + fConsPedidoPend.DateEdit2.Text + ')';
end;

procedure TfRelPedidoPend.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fConsPedidoPend.mPedidoNomeCor.AsString <> '' then
    RLLabel10.Caption := fConsPedidoPend.mPedidoNomeCor.AsString + ' (' + fConsPedidoPend.mPedidoNomeProduto.AsString +')'
  else
    RLLabel10.Caption := fConsPedidoPend.mPedidoNomeProduto.AsString;
end;

end.
