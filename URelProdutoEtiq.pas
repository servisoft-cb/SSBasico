unit URelProdutoEtiq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode;

type
  TfRelProdutoEtiq = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLBarcode1: TRLBarcode;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProdutoEtiq: TfRelProdutoEtiq;

implementation

uses UConsProduto2;

{$R *.dfm}

procedure TfRelProdutoEtiq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProdutoEtiq.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBarcode1.Caption := fConsProduto2.mProdutoCorCodBarra.AsString;
  RLBarcode1.Refresh;
end;

end.
