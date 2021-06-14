unit URelInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelInventario = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand5: TRLBand;
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
    RLDBText8: TRLDBText;
    RLBand6: TRLBand;
    RLLabel17: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLBand7: TRLBand;
    RLLabel18: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDraw4: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw2: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLReport1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelInventario: TfRelInventario;

implementation

uses UPrevInventario, RxLookup, ToolEdit;

{$R *.dfm}

procedure TfRelInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelInventario.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := '';
  if fPrevInventario.RxDBLookupCombo1.Text <> '' then
    RLLabel3.Caption := RLLabel3.Caption + ' (Filial: ' + fPrevInventario.RxDBLookupCombo1.Text + ')';
  case fPrevInventario.ComboBox1.ItemIndex of
    0: RLLabel3.Caption := RLLabel3.Caption + ' (PRODUTOS)';
    1: RLLabel3.Caption := RLLabel3.Caption + ' (MATERIAIS)';
    2: RLLabel3.Caption := RLLabel3.Caption + ' (OUTROS MATERIAIS)';
  end;
  if fPrevInventario.CheckBox1.Checked then
    RLLabel3.Caption := RLLabel3.Caption + ' (Imprime os inativos)';
  RLLabel1.Caption := 'RELATÓRIO DO INVETÁRIO - Data: ' + fPrevInventario.DateEdit1.Text;
end;

procedure TfRelInventario.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel14.Caption := fPrevInventario.mInventarioNomeGrupo.AsString;
end;

procedure TfRelInventario.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel16.Caption := fPrevInventario.mInventarioNomeSubGrupo.AsString;
end;

procedure TfRelInventario.FormCreate(Sender: TObject);
begin
  RLReport1.FirstPageNumber := fPrevInventario.CurrencyPagina.AsInteger;
end;

procedure TfRelInventario.RLReport1AfterPrint(Sender: TObject);
begin
 //fPrevInventario.CurrencyPaginaFinal.AsInteger :=  RLReport1.PageNumber  LastPageNumber;
 fPrevInventario.CurrencyPaginaFinal.AsInteger :=  RLReport1.PageNumber;
end;

end.

