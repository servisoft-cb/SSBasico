unit uRelNatOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelNatOperacao = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel9: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelNatOperacao: TfRelNatOperacao;

implementation

uses UPrevNatOperacao;

{$R *.dfm}

procedure TfRelNatOperacao.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   fPrevNatOperacao.qNotaFiscal.Filtered := False;
   //fPrevNatOperacao.qNotaFiscal.Filter := 'CodNatOper = ' + fPrevNatOperacao.mTotalCodFiscal.AsString;
   fPrevNatOperacao.qNotaFiscal.Filter := 'NatOper = ' + fPrevNatOperacao.mTotalCodNatOper.AsString;
   fPrevNatOperacao.qNotaFiscal.Filtered := True;
end;

end.
