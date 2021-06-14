unit UMovPedido_Nota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ToolEdit, Mask, CurrEdit, Buttons, ExtCtrls, dbXPress,
  Grids, DBGrids, SMDBGrid;

type
  TfMovPedido_Nota = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    CurrencyEdit2: TCurrencyEdit;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Limpar_Campos;
  public
    { Public declarations }
  end;

var
  fMovPedido_Nota: TfMovPedido_Nota;

implementation

uses UDMMovPedido, DmdDatabase, UConsMovPedido2;

{$R *.dfm}

procedure TfMovPedido_Nota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovPedido_Nota.BitBtn1Click(Sender: TObject);
var
  vItemAux : Integer;
  ID: TTransactionDesc;
begin
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    ShowMessage('Número da nota não informado!');
    exit;
  end;
  if Trim(Edit1.Text) = '' then
  begin
    ShowMessage('Série não informada!');
    exit;
  end;
  if DateEdit1.Date < 10 then
  begin
    ShowMessage('Data da nota não informada!');
    exit;
  end;
  if CurrencyEdit2.AsInteger <= 0 then
  begin
    ShowMessage('Qtd. de Retorno não informada!');
    exit;
  end;

  if MessageDlg('Confirmar o retorno da Fábrica?',mtconfirmation,[mbok,mbno],0)=mrno then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;

  dmDatabase.scoDados.StartTransaction(ID);
  try
    DMMovPedido.cdsMovPedido_Nota.Last;
    vItemAux := DMMovPedido.cdsMovPedido_NotaITEM.AsInteger + 1;

    DMMovPedido.cdsMovPedido_Nota.Insert;
    DMMovPedido.cdsMovPedido_NotaID.AsInteger          := DMMovPedido.cdsMovPedidoID.AsInteger;
    DMMovPedido.cdsMovPedido_NotaITEM.AsInteger        := vItemAux;
    DMMovPedido.cdsMovPedido_NotaPEDIDO.AsInteger      := DMMovPedido.cdsMovPedidoPEDIDO.AsInteger;
    DMMovPedido.cdsMovPedido_NotaNUMNOTA.AsInteger     := CurrencyEdit1.AsInteger;
    DMMovPedido.cdsMovPedido_NotaSERIE.AsString        := Edit1.Text;
    DMMovPedido.cdsMovPedido_NotaDTNOTA.AsDateTime     := DateEdit1.Date;
    DMMovPedido.cdsMovPedido_NotaQTD.AsInteger         := CurrencyEdit2.AsInteger;
    DMMovPedido.cdsMovPedido_NotaOBS.Value             := Memo1.Lines.Text;
    DMMovPedido.cdsMovPedido_NotaDTCADASTRO.AsDateTime := Date;
    DMMovPedido.cdsMovPedido_NotaHRCADASTRO.AsDateTime := Now;
    DMMovPedido.cdsMovPedido_Nota.Post;

    DMMovPedido.cdsMovPedido.Edit;
    DMMovPedido.cdsMovPedidoQTDPRODUZIDA.AsInteger := DMMovPedido.cdsMovPedidoQTDPRODUZIDA.AsInteger + CurrencyEdit2.AsInteger;
    DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger  := DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger - CurrencyEdit2.AsInteger;
    if StrToFloat(FormatFloat('0',DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger)) <= 0 then
      DMMovPedido.cdsMovPedidoDTSAIDA.AsDateTime := DateEdit1.Date;
    DMMovPedido.cdsMovPedido.Post;

    fConsMovPedido2.mConsulta.Edit;
    fConsMovPedido2.mConsultaQtdPendente.AsInteger  := DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger;
    fConsMovPedido2.mConsultaQtdProduzida.AsInteger := DMMovPedido.cdsMovPedidoQTDPRODUZIDA.AsInteger;
    if DMMovPedido.cdsMovPedidoDTSAIDA.AsDateTime > 10 then
      fConsMovPedido2.mConsultaDtSaida.AsDateTime := DMMovPedido.cdsMovPedidoDTSAIDA.AsDateTime;
    fConsMovPedido2.mConsulta.Post;

    DMMovPedido.cdsMovPedido.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

    Limpar_Campos;

    Panel2.Visible := False;
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TfMovPedido_Nota.BitBtn3Click(Sender: TObject);
begin
  if DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger <= 0 then
  begin
    ShowMessage('Pedido já concluído!');
    exit;
  end;
  Panel2.Visible := True;
  CurrencyEdit1.SetFocus;
end;

procedure TfMovPedido_Nota.Limpar_Campos;
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  Edit1.Clear;
  DateEdit1.Clear;
  Memo1.Lines.Clear;
end;

procedure TfMovPedido_Nota.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovPedido_Nota.BitBtn4Click(Sender: TObject);
var
  ID: TTransactionDesc;
  vQtd : Integer;
begin
  if DMMovPedido.cdsMovPedido_Nota.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o retorno?',mtconfirmation,[mbok,mbno],0)=mrno then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;

  dmDatabase.scoDados.StartTransaction(ID);
  try
    vQtd := DMMovPedido.cdsMovPedido_NotaQTD.AsInteger;

    DMMovPedido.cdsMovPedido_Nota.Delete;

    DMMovPedido.cdsMovPedido.Edit;
    DMMovPedido.cdsMovPedidoDTSAIDA.Clear;
    DMMovPedido.cdsMovPedidoQTDPRODUZIDA.AsInteger := DMMovPedido.cdsMovPedidoQTDPRODUZIDA.AsInteger - vQtd;
    DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger  := DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger + vQtd;
    DMMovPedido.cdsMovPedido.Post;

    fConsMovPedido2.mConsulta.Edit;
    fConsMovPedido2.mConsultaQtdPendente.AsInteger  := DMMovPedido.cdsMovPedidoQTDPENDENTE.AsInteger;
    fConsMovPedido2.mConsultaQtdProduzida.AsInteger := DMMovPedido.cdsMovPedidoQTDPRODUZIDA.AsInteger;
    fConsMovPedido2.mConsultaDtSaida.Clear;
    fConsMovPedido2.mConsulta.Post;

    DMMovPedido.cdsMovPedido.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

end.

