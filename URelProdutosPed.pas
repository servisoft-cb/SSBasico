unit URelProdutosPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelProdutosPed = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw7: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText9: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLDBText17: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLLabel20: TRLLabel;
    RLBand5: TRLBand;
    RLDraw11: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel29: TRLLabel;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText18: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLSubDetail3BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLDetailGrid2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProdutosPed: TfRelProdutosPed;

implementation

uses UConsProduto, UDM1, DB;

{$R *.dfm}

procedure TfRelProdutosPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelProdutosPed.RLBand2AfterPrint(Sender: TObject);
begin
  RLDetailGrid1.Visible := fConsProduto.CheckBox1.Checked;
end;

procedure TfRelProdutosPed.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fConsProduto.mTamanhoQtd.AsFloat <= 0 then
    PrintIt := False
  else
    begin
      PrintIt := True;
      RLDetailGrid1.ColSpacing := 4;
      if RLDetailGrid1.ColIndex > 1 then
        RLDetailGrid1.ColSpacing := 1;
      if RLDetailGrid1.ColIndex = 0 then
        begin
          RLDetailGrid1.ColWidth := 20;
          RLLabel9.Visible  := True;
          RLLabel10.Visible := True;
          RLLabel11.Visible := True;
          RLLabel12.Visible := True;
          RLDBText8.Left    := 26;
          RLDBText9.Left    := 26;
          RLDBText10.Left   := 26;
          RLDBText11.Left   := 26;
        end
      else
        begin
          RLDetailGrid1.ColWidth := 18;
          RLDBText8.Left    := 1;
          RLDBText9.Left    := 1;
          RLDBText10.Left   := 1;
          RLDBText11.Left   := 1;
          RLLabel9.Visible  := False;
          RLLabel10.Visible := False;
          RLLabel11.Visible := False;
          RLLabel12.Visible := False;
        end;
    end;
end;

procedure TfRelProdutosPed.RLSubDetail3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fConsProduto.CheckBox1.Checked;
end;

procedure TfRelProdutosPed.RLDetailGrid2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;
begin
  RLDetailGrid2.ColSpacing := 4;
  if RLDetailGrid2.ColIndex > 1 then
    RLDetailGrid2.ColSpacing := 1;
  if RLDetailGrid2.ColIndex = 0 then
    begin
      RLDetailGrid2.ColWidth := 20;
      RLLabel13.Visible      := True;
      RLLabel14.Visible      := True;
      RLLabel15.Visible      := True;
      RLLabel16.Visible      := True;
      RLDBText12.Left        := 26;
      RLDBText15.Left        := 26;
      RLDBText16.Left        := 26;
      RLDBText18.Left        := 26;
    end
  else
    begin
      RLDetailGrid2.ColWidth := 18;
      RLDBText12.Left        := 1;
      RLDBText15.Left        := 1;
      RLDBText16.Left        := 1;
      RLDBText18.Left        := 1;
      RLLabel13.Visible      := False;
      RLLabel14.Visible      := False;
      RLLabel15.Visible      := False;
      RLLabel16.Visible      := False;
    end;
end;

end.
