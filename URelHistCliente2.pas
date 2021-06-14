unit URelHistCliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelHistCliente2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail3: TRLSubDetail;
    RLGroup2: TRLGroup;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLLabel16: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel1: TRLLabel;
    RLDraw4: TRLDraw;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelHistCliente2: TfRelHistCliente2;

implementation

uses UHistCliente, UClienteConsHistorico;

{$R *.dfm}

end.
