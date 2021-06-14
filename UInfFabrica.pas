unit UInfFabrica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RxLookup, Buttons;

type
  TfInfFabrica = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInfFabrica: TfInfFabrica;

implementation

uses UDMMovPedido, UDM2, UConsMovPedido, UConsMovPedido2;

{$R *.dfm}

procedure TfInfFabrica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Tag := 0;
  Action := Cafree;
end;

procedure TfInfFabrica.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfInfFabrica.FormShow(Sender: TObject);
begin
  DM2.qFabrica.Open;
  if Tag = 1 then
  begin
    if fConsMovPedido2.mConsultaCodFabrica.AsInteger > 0 then
      RxDBLookupCombo1.KeyValue := fConsMovPedido2.mConsultaCodFabrica.AsInteger;
    if fConsMovPedido2.mConsultaDtEntrada.AsDateTime > 10 then
      DateEdit1.Date := fConsMovPedido2.mConsultaDtEntrada.AsDateTime;
    //if fConsMovPedido2.mConsultaDtSaida.AsDateTime > 10 then
    //  DateEdit2.Date := fConsMovPedido2.mConsultaDtSaida.AsDateTime;
  end
  else
  begin
    if fConsMovPedido.mConsultaCodFabrica.AsInteger > 0 then
      RxDBLookupCombo1.KeyValue := fConsMovPedido.mConsultaCodFabrica.AsInteger;
    if fConsMovPedido.mConsultaDtEntrada.AsDateTime > 10 then
      DateEdit1.Date := fConsMovPedido.mConsultaDtEntrada.AsDateTime;
    //if fConsMovPedido.mConsultaDtSaida.AsDateTime > 10 then
    //  DateEdit2.Date := fConsMovPedido.mConsultaDtSaida.AsDateTime;
  end;
end;

procedure TfInfFabrica.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Fábrica não informada!');
    exit;
  end;

  if MessageDlg('Confirmar?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  DMMovPedido.Abre_MovPedido(DMMovPedido.vIDMovPedido,0,0);
  if DMMovPedido.cdsMovPedido.IsEmpty then
  begin
    ShowMessage('Registro não encontrado ID ' + IntToStr(DMMovPedido.vIDMovPedido));
    exit;
  end;

  DMMovPedido.cdsMovPedido.Edit;
  DMMovPedido.cdsMovPedidoCODFABRICA.AsInteger := RxDBLookupCombo1.KeyValue;
  if DateEdit1.Date > 10 then
    DMMovPedido.cdsMovPedidoDTENTRADA.AsDateTime := DateEdit1.Date
  else
    DMMovPedido.cdsMovPedidoDTENTRADA.IsNull;
  //if DateEdit2.Date > 10 then
  //  DMMovPedido.cdsMovPedidoDTSAIDA.AsDateTime := DateEdit2.Date
  //else
  //  DMMovPedido.cdsMovPedidoDTSAIDA.IsNull;
  DMMovPedido.cdsMovPedido.Post;
  DMMovPedido.cdsMovPedido.ApplyUpdates(0);

  if Tag = 1 then
  begin
    fConsMovPedido2.mConsulta.Edit;
    fConsMovPedido2.mConsultaCODFABRICA.AsInteger := RxDBLookupCombo1.KeyValue;
    if DateEdit1.Date > 10 then
      fConsMovPedido2.mConsultaDTENTRADA.AsDateTime := DateEdit1.Date
    else
      fConsMovPedido2.mConsultaDTENTRADA.IsNull;
    //if DateEdit2.Date > 10 then
    //  fConsMovPedido2.mConsultaDTSAIDA.AsDateTime := DateEdit2.Date
    //else
    //  fConsMovPedido2.mConsultaDTSAIDA.IsNull;
    fConsMovPedido2.mConsultaNomeFabrica.AsString := RxDBLookupCombo1.Text;
    fConsMovPedido2.mConsulta.Post;
  end
  else
  begin
    fConsMovPedido.mConsulta.Edit;
    fConsMovPedido.mConsultaCODFABRICA.AsInteger := RxDBLookupCombo1.KeyValue;
    if DateEdit1.Date > 10 then
      fConsMovPedido.mConsultaDTENTRADA.AsDateTime := DateEdit1.Date
    else
      fConsMovPedido.mConsultaDTENTRADA.IsNull;
    //if DateEdit2.Date > 10 then
    //  fConsMovPedido.mConsultaDTSAIDA.AsDateTime := DateEdit2.Date
    //else
    //  fConsMovPedido.mConsultaDTSAIDA.IsNull;
    fConsMovPedido.mConsultaNomeFabrica.AsString := RxDBLookupCombo1.Text;
    fConsMovPedido.mConsulta.Post;
  end;

  Close;
end;

end.
