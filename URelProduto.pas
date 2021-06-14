unit URelProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelProduto = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel16: TRLLabel;
    RLDBText10: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProduto: TfRelProduto;

implementation

uses UPrevProduto;

{$R *.dfm}

procedure TfRelProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProduto.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 RLLabel1.Caption  := 'Relatório de ' + fPrevProduto.ComboBox1.Text;
 RLLabel15.Caption := 'Inativo (' + fPrevProduto.ComboBox3.Text + ')';
end;

procedure TfRelProduto.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText5.Visible := (fPrevProduto.ComboBox1.ItemIndex < 3);
end;

procedure TfRelProduto.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel6.Visible := (fPrevProduto.ComboBox1.ItemIndex < 3);
end;

end.
