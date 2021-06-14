unit UNotaFiscalClienteTerc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, RxLookup, RXCtrls, ExtCtrls, Mask, DBCtrls,
  Grids, DBGrids, RXDBCtrl, DB, DBTables;

type
  TfNotaFiscalClienteTerc = class(TForm)
    RxLabel5: TRxLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    BitBtn12: TBitBtn;
    SpeedButton22: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn12Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalClienteTerc: TfNotaFiscalClienteTerc;

implementation

uses UDM1, UDMClienteTerceiro, UClienteTerceiroC;

{$R *.dfm}

procedure TfNotaFiscalClienteTerc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM1.tNotaFiscalTBObs.State in [dsEdit, dsInsert] then
    DM1.tNotaFiscalTBObs.Cancel;

  if DM1.tParametrosUsaFB.AsBoolean then
  begin
    if DMClienteTerceiro.Owner.ClassName = Self.ClassName then
      FreeAndNil(DMClienteTerceiro);
  end;

  Action := Cafree;
end;

procedure TfNotaFiscalClienteTerc.BitBtn12Click(Sender: TObject);
begin
  if RxDBLookupCombo12.Text <> '' then
  begin
    if Trim(DM1.tNotaFiscalTBObsDadosAdicionais.Value) = '' then
      DM1.tNotaFiscalTBObsDadosAdicionais.Value := DM1.tObsAuxDescricao.Value
    else
      DM1.tNotaFiscalTBObsDadosAdicionais.Value := DM1.tNotaFiscalTBObsDadosAdicionais.Value
                                                 + ' (Nota de Venda para: '
                                                 + DMClienteTerceiro.cdsClienteTerceiroNOME.AsString
                                                 + ',End:' + DMClienteTerceiro.cdsClienteTerceiroENDERECO.AsString
                                                 + ',Cep: ' + DMClienteTerceiro.cdsClienteTerceiroCEP.AsString
                                                 + ' - ' + DMClienteTerceiro.cdsClienteTerceiroBAIRRO.AsString
                                                 + ',Cid: ' + DMClienteTerceiro.cdsClienteTerceiroCIDADE.AsString
                                                 + ' - ' + DMClienteTerceiro.cdsClienteTerceiroUF.AsString + ')';
  end
end;

procedure TfNotaFiscalClienteTerc.SpeedButton22Click(Sender: TObject);
begin
  if DM1.tUsuarioClienteTerceiro.AsBoolean then
  begin
    fClienteTerceiroC := TfClienteTerceiroC.Create(Self);
    fClienteTerceiroC.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalClienteTerc.BitBtn1Click(Sender: TObject);
begin
  DM1.tNotaFiscalTBObs.Post;
  Close;
end;

procedure TfNotaFiscalClienteTerc.FormShow(Sender: TObject);
begin
  if DM1.tNotaFiscalTBObs.IsEmpty then
  begin
    DM1.tNotaFiscalTBObs.Insert;
    DM1.tNotaFiscalTBObsFilial.AsInteger := DM1.tNotaFiscalFilial.AsInteger;
    DM1.tNotaFiscalTBObsNumSeq.AsInteger := DM1.tNotaFiscalNumSeq.AsInteger;
    DM1.tNotaFiscalTBObsDadosAdicionais.Clear;
  end
  else
    DM1.tNotaFiscalTBObs.Edit;
end;

procedure TfNotaFiscalClienteTerc.BitBtn2Click(Sender: TObject);
begin
  DM1.tNotaFiscalTBObs.Cancel;
  Close;
end;

procedure TfNotaFiscalClienteTerc.FormCreate(Sender: TObject);
begin
  if DM1.tParametrosUsaFB.AsBoolean then
  begin
    if not Assigned(DMClienteTerceiro) then
      DMClienteTerceiro := TDMClienteTerceiro.Create(Self);
  end;
  DMClienteTerceiro.cdsClienteTerceiro.Close;
  DMClienteTerceiro.sdsClienteTerceiro.CommandText := ctClienteTerceiro
                                                    + ' ORDER BY NOME, CODIGO';
  DMClienteTerceiro.cdsClienteTerceiro.Open;
end;

end.
