unit uRelConsProdutoGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelConsProdutoGrupo = class(TForm)
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
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel6: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelConsProdutoGrupo: TfRelConsProdutoGrupo;

implementation

uses UDM1, UConsProduto2;

{$R *.dfm}

procedure TfRelConsProdutoGrupo.FormCreate(Sender: TObject);
begin
  if fConsProduto2.ComboBox1.ItemIndex = 3 then
    RLGroup1.DataFields := 'NomeGrupo;NomeSubGrupo'
  else
    RLGroup1.DataFields := 'NomeGrupo';
end;

procedure TfRelConsProdutoGrupo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel11.Visible  := (fConsProduto2.ComboBox1.ItemIndex = 3);
  RLDBText10.Visible := (fConsProduto2.ComboBox1.ItemIndex = 3);
end;

end.
