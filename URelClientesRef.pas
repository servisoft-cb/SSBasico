unit URelClientesRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBTables;

type
  TfRelClientesRef = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    RLSubDetail4: TRLSubDetail;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw4: TRLDraw;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw3: TRLDraw;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelClientesRef: TfRelClientesRef;

implementation

uses UDM1, UConsClientesRef;

{$R *.dfm}

procedure TfRelClientesRef.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DM1.tProduto.Locate('Codigo',fConsClientesRef.mProdutosCodProduto.AsInteger,[loCaseInsensitive]);
end;

procedure TfRelClientesRef.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  texto1 : String;
begin
  RLMemo1.Lines.Clear;
  Texto1 := 'Grade: ' + DM1.tProdutoGradelkNomeGrade.AsString + '  Tamanho/Peso: ';
  DM1.tProdutoTam.First;
  while not DM1.tProdutoTam.Eof do
    begin
      if DM1.tProdutoTamPesoL.AsFloat > 0 then
        texto1 := texto1 + DM1.tProdutoTamlkTamanho.AsString + '=' + DM1.tProdutoTamPesoL.AsString + '  '
      else
        texto1 := texto1 + DM1.tProdutoTamlkTamanho.AsString + '=0  ';
      DM1.tProdutoTam.Next;
    end;
  RLMemo1.Lines.Text := texto1;
end;

procedure TfRelClientesRef.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vCodAux : Integer;
begin
  vCodAux := 0;
  if DM1.tFornecedores.Locate('CGC',fConsClientesRef.mClienteCNPJ.AsString,[loCaseInsensitive]) then
    vCodAux := DM1.tFornecedoresCodForn.AsInteger;
  fConsClientesRef.qNotaEntrada.Filtered := False;
  fConsClientesRef.qNotaEntrada.Filter   := 'CodForn = '''+IntToStr(vCodAux)+'''';
  fConsClientesRef.qNotaEntrada.Filtered := True;
end;

end.
