unit URelProdutoEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelProdutoEst = class(TForm)
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
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
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
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw3: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand4: TRLBand;
    RLDraw2: TRLDraw;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText12: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vCodProdutoAux, vCodCorAux : Integer;
  public
    { Public declarations }
  end;

var
  fRelProdutoEst: TfRelProdutoEst;

implementation

uses UPrevProduto, DB;

{$R *.dfm}

procedure TfRelProdutoEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProdutoEst.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 RLLabel1.Caption  := 'Relatório de ' + fPrevProduto.ComboBox1.Text;
 RLLabel15.Caption := 'Inativo (' + fPrevProduto.ComboBox3.Text + ')';
end;

procedure TfRelProdutoEst.FormCreate(Sender: TObject);
begin
  vCodProdutoAux := 0;
  vCodCorAux     := 0;
end;

procedure TfRelProdutoEst.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vFlag, vFlag2 : Boolean;
begin
  RLDBText5.Visible := (fPrevProduto.ComboBox1.ItemIndex < 3);

  vFlag  := True;
  vFlag2 := True;
  if vCodProdutoAux = fPrevProduto.mEstoqueCodProduto.AsInteger then
    vFlag := False;
  if (vCodProdutoAux = fPrevProduto.mEstoqueCodProduto.AsInteger) and
     (vCodCorAux = fPrevProduto.mEstoqueCodCor.AsInteger) then
    vFlag2 := False;
  RLDBText2.Visible := vFlag;
  RLDBText3.Visible := vFlag;
  RLDBText4.Visible := vFlag;
  RLDBText5.Visible := vFlag;
  RLDBText6.Visible := vFlag2;
  vCodProdutoAux := fPrevProduto.mEstoqueCodProduto.AsInteger;
  vCodCorAux     := fPrevProduto.mEstoqueCodCor.AsInteger;
end;

procedure TfRelProdutoEst.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel6.Visible := (fPrevProduto.ComboBox1.ItemIndex < 3);
end;

end.
