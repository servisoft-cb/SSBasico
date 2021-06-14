unit UNotaFiscalParcela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ToolEdit, RXDBCtrl, Mask,
  DBCtrls, RxLookup, ExtCtrls, DB;

type
  TfNotaFiscalParcela = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label55: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    SpeedButton16: TSpeedButton;
    Label14: TLabel;
    SpeedButton24: TSpeedButton;
    Label46: TLabel;
    SpeedButton5: TSpeedButton;
    Label66: TLabel;
    Label7: TLabel;
    RxDBLookupCombo16: TRxDBLookupCombo;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    BitBtn2: TBitBtn;
    DBEdit36: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure RxDBLookupCombo16Enter(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit36Enter(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalParcela: TfNotaFiscalParcela;

implementation

uses UDM1, UEmissaoNotaFiscal, UCondPgto, UTipoCobranca, UContas,
  rsDBUtils;

{$R *.dfm}

procedure TfNotaFiscalParcela.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCondPgto.Close;
  DM1.tCondPgtoItem.Close;
  DM1.tPlanoContas.Close;
  DM1.tMovimentos.Close;

  Action := Cafree;
end;

procedure TfNotaFiscalParcela.BitBtn3Click(Sender: TObject);
var
  vValorDividir, vValorPrest, vValorVariavel : Currency;
  vValorVarTotal, vValorNotaTotal : string;
  vParcela : Integer;
begin
  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalEntrada.AsFloat)) > StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) then
    begin
      ShowMessage('Total da entrada não pode ser maior que o total das duplicatas!');
      exit;
    end;

  if RxDBLookupCombo2.Text = '' then
    begin
      ShowMessage('Deve haver um prazo de pagamento escolhido!');
      exit;
    end;
    
  if StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat)) <= 0 then
    begin
      ShowMessage('Não existe valor para gerar parcelas!');
      exit;
    end;

  if DM1.tCondPgtoPrazoVista.AsString = 'V' then
    begin
      ShowMessage('Esta condição não pode gerar contas!');
      exit;
    end;

  DM1.tNotaFiscalParc.First;
  if not DM1.tNotaFiscalParc.IsEmpty then
    while not DM1.tNotaFiscalParc.Eof do
      DM1.tNotaFiscalParc.Delete;
  vValorDividir := DM1.tNotaFiscalVlrTotalDupl.AsCurrency -
                   DM1.tNotaFiscalEntrada.AsCurrency;
  vValorPrest   := vValorDividir / DM1.tCondPgtoItem.RecordCount;
  DM1.tCondPgtoItem.First;
  vParcela := 0;
  while not DM1.tCondPgtoItem.EOF do
    begin
      DM1.tNotaFiscalParc.Insert;
      Inc(vParcela);
      DM1.tNotaFiscalParcFilial.AsInteger  := Dm1.tNotaFiscalFilial.AsInteger;
      DM1.tNotaFiscalParcNumSeq.AsInteger  := DM1.tNotaFiscalNumSeq.AsInteger;
      DM1.tNotaFiscalParcParcela.AsInteger := vParcela;
      DM1.tNotaFiscalParcVlrVenc.AsString  := FormatFloat('0.00',vValorPrest);
      DM1.tNotaFiscalParcDtVenc.AsDateTime := DM1.tNotaFiscalDtEntr.AsDateTime + DM1.tCondPgtoItemQtdDias.AsInteger;
      if RxDBLookupCombo16.Text <> '' then
        DM1.tNotaFiscalParcCodTipoCobr.AsInteger := RxDBLookupCombo16.KeyValue;
      if RxDBLookupCombo1.Text <> '' then
        DM1.tNotaFiscalParcCodConta.AsInteger := RxDBLookupCombo1.KeyValue;
      DM1.tNotaFiscalParc.Post;
      DM1.tCondPgtoItem.Next;
    end;
  vValorVariavel := 0;
  DM1.tNotaFiscalParc.First;
  while not DM1.tNotaFiscalParc.Eof do
    begin
      //if DM1.tNotaFiscalParcParcela.AsInteger < 10 then
        vValorVariavel := vValorVariavel + DM1.tNotaFiscalParcVlrVenc.AsCurrency;
      DM1.tNotaFiscalParc.Next;
    end;
  vValorVarTotal  := FormatFloat('0.00',vValorVariavel);
  vValorNotaTotal := FormatFloat('0.00',vValorDividir);
  vValorVariavel  := StrToFloat(vValorNotaTotal) - StrToFloat(vValorVarTotal);
  // Verifica parcelas C200
  if DM1.tNotaFiscalSituacao.AsString = '2' then
    DM1.tNotaFiscalParc.RecNo := DM1.tCondPgtoItem.RecordCount
  else
    DM1.tNotaFiscalParc.Last;
    DM1.tNotaFiscalParc.Edit;
    DM1.tNotaFiscalParcVlrVenc.AsCurrency := DM1.tNotaFiscalParcVlrVenc.AsCurrency +
                                             vValorVariavel;
    DM1.tNotaFiscalParc.Post;

    {********** Grava parcelas C200 *************}
    {********************************************}
    if DM1.tNotaFiscalSituacao.AsString = '2' then
      begin
        vValorDividir := 0;
        DM1.tNotaFiscalItens.First;
        while not DM1.tNotaFiscalItens.Eof do
          begin
            if (DM1.tNotaFiscalItensNumPedido.AsInteger > 0) and (DM1.tNotaFiscalItensItemPedido.AsInteger > 0) then
              begin
                DM1.tPedidoItem2.SetKey;
                DM1.tPedidoItem2Pedido.AsInteger := DM1.tNotaFiscalItensNumPedido.AsInteger;
                DM1.tPedidoItem2Item.AsInteger   := DM1.tNotaFiscalItensItemPedido.AsInteger;
                if DM1.tPedidoItem2.GotoKey then
                  begin
                    if (DM1.tPedidoItem2Preco.AsCurrency - DM1.tPedidoItem2VlrDesconto.AsCurrency) > DM1.tNotaFiscalItensVlrUnit.AsCurrency then
                      vValorDividir := vValorDividir + (((DM1.tPedidoItem2Preco.AsCurrency - DM1.tPedidoItem2VlrDesconto.AsCurrency) - DM1.tNotaFiscalItensVlrUnit.AsCurrency) *
                                       DM1.tNotaFiscalItensQtd.AsInteger);
                  end;
              end;
            DM1.tNotaFiscalItens.Next;
          end;
        if vValorDividir > 0 then
          begin
            vValorPrest   := vValorDividir / DM1.tCondPgtoItem.RecordCount;
            DM1.tCondPgtoItem.First;
            vParcela := 10;
            while not DM1.tCondPgtoItem.EOF do
              begin
                DM1.tNotaFiscalParc.Insert;
                Inc(vParcela);
                Dm1.tNotaFiscalParcFilial.AsInteger  := Dm1.tNotaFiscalFilial.AsInteger;
                DM1.tNotaFiscalParcParcela.AsInteger := vParcela;
                DM1.tNotaFiscalParcVlrVenc.AsString  := FormatFloat('0.00',vValorPrest);
                DM1.tNotaFiscalParcDtVenc.AsDateTime := DM1.tNotaFiscalDtEntr.AsDateTime + DM1.tCondPgtoItemQtdDias.AsInteger;
                if RxDBLookupCombo16.Text <> '' then
                  DM1.tNotaFiscalParcCodTipoCobr.AsInteger := RxDBLookupCombo16.KeyValue;
                DM1.tNotaFiscalParc.Post;
                DM1.tCondPgtoItem.Next;
              end;
            vValorVariavel := 0;
            DM1.tNotaFiscalParc.First;
            while not DM1.tNotaFiscalParc.Eof do
              begin
                if DM1.tNotaFiscalParcParcela.AsInteger > 10 then
                  vValorVariavel := vValorVariavel + DM1.tNotaFiscalParcVlrVenc.AsCurrency;
                DM1.tNotaFiscalParc.Next;
              end;
            vValorVarTotal  := FormatFloat('0.00',vValorVariavel);
            vValorNotaTotal := FormatFloat('0.00',vValorDividir);
            vValorVariavel  := StrToFloat(vValorNotaTotal) - StrToFloat(vValorVarTotal);
            DM1.tNotaFiscalParc.Last;
            DM1.tNotaFiscalParc.Edit;
            DM1.tNotaFiscalParcVlrVenc.AsCurrency := DM1.tNotaFiscalParcVlrVenc.AsCurrency +
                                                     vValorVariavel;
            DM1.tNotaFiscalParc.Post;
          end;
      end;
    {********Fim da gravação do C200*********}
    {****************************************}
  Close;
end;

procedure TfNotaFiscalParcela.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalParcela.SpeedButton16Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de condição de pagamentos!');
end;

procedure TfNotaFiscalParcela.RxDBLookupCombo16Enter(Sender: TObject);
begin
  DM1.tTipoCobranca.IndexFieldNames := 'Nome';
end;

procedure TfNotaFiscalParcela.SpeedButton24Click(Sender: TObject);
begin
  if DM1.tUsuarioTiposCobr.AsBoolean then
    begin
      fTipoCobranca := TfTipoCobranca.Create(Self);
      fTipoCobranca.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalParcela.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tContas.IndexFieldNames := 'NomeConta';
end;

procedure TfNotaFiscalParcela.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioContas.AsBoolean then
    begin
      fContas := TfContas.Create(Self);
      fContas.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfNotaFiscalParcela.DBEdit36Enter(Sender: TObject);
begin
  if (DBEdit36.Text <> '') then
    DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat + DM1.tNotaFiscalVlrTransf.AsFloat;
end;

procedure TfNotaFiscalParcela.DBEdit36Exit(Sender: TObject);
var
  vVlrTransf, vVlrDif : Real;
begin
  if (DBEdit36.Text <> '') then
    begin
      vVlrTransf                     := StrToFloat(FormatFloat('0.00',(DM1.tNotaFiscalPercTransf.AsFloat * DM1.tNotaFiscalBaseIcms.AsFloat) / 100));
      vVlrDif                        := StrToFloat(FormatFloat('0.00',DM1.tNotaFiscalVlrTotalDupl.AsFloat - vVlrTransf));
      DM1.tNotaFiscalVlrTransf.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrTransf));
      DM1.tNotaFiscalVlrTotalDupl.AsFloat := DM1.tNotaFiscalVlrTotalDupl.AsFloat - DM1.tNotaFiscalVlrTransf.AsFloat;
    end;
end;

procedure TfNotaFiscalParcela.BitBtn2Click(Sender: TObject);
begin
  DBEdit36Enter(Sender);
  DBEdit36Exit(Sender);
end;

procedure TfNotaFiscalParcela.FormShow(Sender: TObject);
begin
  if dm1.tNotaFiscal.State in [dsBrowse] then
  begin
    Panel2.Enabled  := False;
    BitBtn3.Enabled := False;
  end
  else
    begin
      DM1.tCondPgto.Open;
      DM1.tCondPgtoItem.Open;
      DM1.tTipoCobranca.Open;
      DM1.tPlanoContas.Open;
      DM1.tContas.Open;
      DM1.tMovimentos.Open;

      DM1.tCliente.IndexFieldNames := 'Codigo';
      if DM1.tCliente.FindKey([DM1.tNotaFiscalCodCli.AsInteger]) then
        begin
          if DM1.tClienteCodBancoBoleto.AsInteger > 0 then
            RxDBLookupCombo1.KeyValue  := DM1.tClienteCodBancoBoleto.AsInteger;
          if DM1.tClienteCodTipoCobranca.AsInteger > 0 then
            RxDBLookupCombo16.KeyValue := DM1.tClienteCodTipoCobranca.AsInteger;
          if DM1.tClienteCodCondPgto.AsInteger > 0 then
            DM1.tNotaFiscalPrazoPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
          DM1.tNotaFiscalPercTransf.AsFloat := DM1.tClientePercTransf.AsFloat;
          if DM1.tNotaFiscalPercTransf.AsFloat > 0 then
            BitBtn2Click(Sender);
        end;
   end;
end;

procedure TfNotaFiscalParcela.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
