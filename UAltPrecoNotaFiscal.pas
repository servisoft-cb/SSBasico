unit UAltPrecoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Mask, ToolEdit, CurrEdit, RXCtrls, Buttons;

type
  TfAltPrecoNotaFiscal = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Bevel1: TBevel;
    RxLabel1: TRxLabel;
    CurrencyEdit4: TCurrencyEdit;
    BitBtn1: TBitBtn;
    RxLabel2: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    CurrencyEdit2: TCurrencyEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    CurrencyEdit5: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Desconta_VlrAnterior;
    procedure Soma_VlrAtual;
    procedure Desfaz_Desconto;
  public
    { Public declarations }
  end;

var
  fAltPrecoNotaFiscal: TfAltPrecoNotaFiscal;

implementation

uses UDM1, UEmissaoNotaFiscal;

{$R *.dfm}

procedure TfAltPrecoNotaFiscal.Desfaz_Desconto;
var
  vValorAliq : Currency;
begin
  fEmissaoNotaFiscal.tNotaFiscalItensIns.IndexFieldNames := 'Filial;NumSeq;Item';
  fEmissaoNotaFiscal.tNotaFiscalItensIns.Refresh;
  fEmissaoNotaFiscal.tNotaFiscalItensIns.First;
  DM1.tNotaFiscalBaseICMS.Clear;
  DM1.tNotaFiscalVlrICMS.Clear;
  vValorAliq :=  0;
  if DM1.tNotaFiscalVlrFrete.AsCurrency > 0 then
    begin
      if vAliqICMS > 0 then
        vValorAliq := vAliqICMS;
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalVlrFrete.AsCurrency;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalBaseICMS.AsCurrency *
                                            vValorAliq / 100;
    end
  else
    begin
      DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency + 0;
      DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency  + 0;
    end;
  while not fEmissaoNotaFiscal.tNotaFiscalItensIns.EOF do
    begin
      if fEmissaoNotaFiscal.tNotaFiscalItensInsItem.AsInteger <> DM1.tNotaFiscalItensItem.AsInteger then
        begin
          DM1.tNotaFiscalBaseICMS.AsCurrency := DM1.tNotaFiscalBaseICMS.AsCurrency +
                                                fEmissaoNotaFiscal.tNotaFiscalItensInsBaseIcms.AsCurrency;
          DM1.tNotaFiscalVlrICMS.AsCurrency  := DM1.tNotaFiscalVlrICMS.AsCurrency +
                                                fEmissaoNotaFiscal.tNotaFiscalItensInsVlrIcms.AsCurrency;
        end;
      fEmissaoNotaFiscal.tNotaFiscalItensIns.Next;
    end;
end;

procedure TfAltPrecoNotaFiscal.Soma_VlrAtual;
var
  vSitTributaria: Real;
begin
  DM1.tNotaFiscalItens.Edit;
  if vSiglaUF = '' then
    fEmissaoNotaFiscal.Verifica_UF;
  //Posiciona a Natureza
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
  DM1.tNatOperacao.FindKey([DM1.tNotaFiscalItensNatOper.AsInteger]);
  CurrencyEdit5.Value := DM1.tNotaFiscalItensQtd.AsCurrency * CurrencyEdit4.Value;

  if CurrencyEdit1.Value > 0 then
    begin
      CurrencyEdit2.Value := CurrencyEdit5.Value * CurrencyEdit1.Value / 100;
      CurrencyEdit5.Value := CurrencyEdit5.Value - CurrencyEdit2.Value;
    end
  else
  if CurrencyEdit2.Value > 0 then
    CurrencyEdit5.Value := CurrencyEdit5.Value - CurrencyEdit2.Value;

  //Calcula IPI
  vValorIPI  := 0;
  if DM1.tNotaFiscalItensIpi.AsFloat > 0 then
    vValorIPI  := CurrencyEdit5.Value * DM1.tNotaFiscalItensIpi.AsCurrency / 100;
  vBaseICMS  := 0;
  vValorICMS := 0;

  //Calcula ICMS
  vBaseICMS := CurrencyEdit5.Value;
  if DM1.tNotaFiscalItensIcmsIpi.AsBoolean then
    vBaseICMS  := vBaseICMS + vValorIPI;
  vSitTributaria := 0;
  if DM1.tNotaFiscalItensSitTrib.AsInteger > 0 then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      if DM1.tSitTributaria.FindKey([DM1.tNotaFiscalItensSitTrib.AsInteger]) then
        vSitTributaria := DM1.tSitTributariaSitTributaria.AsFloat;
    end;
  if vSitTributaria > 0 then
    vBaseICMS := vBaseICMS * vSitTributaria  / 100
  else
    vBaseICMS := 0;
  if vBaseICMS > 0 then
    vValorICMS := vBaseICMS * DM1.tNotaFiscalItensIcms.AsFloat / 100
  else
    vValorICMS := 0;

  DM1.tNotaFiscalItensBaseICMS.AsFloat  := vBaseICMS;
  DM1.tNotaFiscalItensVlrICMS.AsFloat   := vValorICMS;

  DM1.tNotaFiscalBaseICMS.AsFloat       := DM1.tNotaFiscalBaseICMS.AsFloat + vBaseICMS;
  DM1.tNotaFiscalVlrICMS.AsFloat        := DM1.tNotaFiscalVlrICMS.AsFloat + vValorICMS;

  DM1.tNotaFiscalItensVlrUnit.AsFloat       := CurrencyEdit4.Value;
  DM1.tNotaFiscalItensVlrTotal.AsFloat      := CurrencyEdit5.Value;
  DM1.tNotaFiscalItensDesconto.AsFloat      := CurrencyEdit1.Value;
  DM1.tNotaFiscalItensVlrDesconto.AsFloat   := CurrencyEdit2.Value;

  DM1.tNotaFiscalItensVlrIPI.AsFloat        := vValorIPI;
  DM1.tNotaFiscalVlrIPI.AsFloat             := DM1.tNotaFiscalVlrIPI.AsFloat + vValorIPI;
  if DM1.tNatOperacaoSomaMercNF.AsBoolean then
    DM1.tNotaFiscalVlrTotalItens.AsFloat := DM1.tNotaFiscalVlrTotalItens.AsFloat + CurrencyEdit5.Value;
  DM1.tNotaFiscalVlrTotalNota.AsFloat       := DM1.tNotaFiscalVlrTotalNota.AsFloat + CurrencyEdit5.Value + vValorIPI;
  if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
    DM1.tNotaFiscalVlrTotalDupl.AsFloat     := DM1.tNotaFiscalVlrTotalDupl.AsFloat + CurrencyEdit5.Value + vValorIPI;

  DM1.tNotaFiscalItens.Post;
end;

procedure TfAltPrecoNotaFiscal.Desconta_VlrAnterior;
begin
  DM1.tNotaFiscalBaseICMS.AsFloat      := DM1.tNotaFiscalBaseICMS.AsFloat -
                                          DM1.tNotaFiscalItensBaseICMS.AsFloat;
  DM1.tNotaFiscalVlrICMS.AsFloat       := DM1.tNotaFiscalVlrICMS.AsFloat -
                                          DM1.tNotaFiscalItensVlrICMS.AsFloat;
  DM1.tNotaFiscalVlrTotalNota.AsFloat  := DM1.tNotaFiscalVlrTotalNota.AsFloat -
                                          DM1.tNotaFiscalItensVlrTotal.AsFloat -
                                          DM1.tNotaFiscalItensVlrIPI.AsFloat;
  if DM1.tNotaFiscalItensGeraDupl.AsBoolean then
    DM1.tNotaFiscalVlrTotalDupl.AsFloat  := DM1.tNotaFiscalVlrTotalDupl.AsFloat -
                                            DM1.tNotaFiscalItensVlrTotal.AsFloat -
                                            DM1.tNotaFiscalItensVlrIPI.AsFloat;

  if DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalItensNatOper.AsInteger,([Locaseinsensitive])) then
    if DM1.tNatOperacaoSomaMercNF.AsBoolean then
      DM1.tNotaFiscalVlrTotalItens.AsFloat := DM1.tNotaFiscalVlrTotalItens.AsFloat -
                                              DM1.tNotaFiscalItensVlrTotal.AsFloat;

  if DM1.tNotaFiscalItensIPI.AsFloat > 0 then
    DM1.tNotaFiscalVlrIPI.AsFloat := DM1.tNotaFiscalVlrIPI.AsFloat -
                                     DM1.tNotaFiscalItensQtd.AsFloat *
                                     DM1.tNotaFiscalItensVlrUnit.AsFloat *
                                     DM1.tNotaFiscalItensIPI.AsFloat / 100;

  DM1.tNotaFiscalVlrTotalItens.AsCurrency := DM1.tNotaFiscalVlrTotalItens.AsCurrency +
                                             DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  DM1.tNotaFiscalVlrTotalNota.AsCurrency  := DM1.tNotaFiscalVlrTotalNota.AsCurrency +
                                             DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  DM1.tNotaFiscalVlrTotalDupl.AsCurrency  := DM1.tNotaFiscalVlrTotalDupl.AsCurrency +
                                             DM1.tNotaFiscalVlrTotalDesc.AsCurrency;
  Desfaz_Desconto;

  DM1.tNotaFiscalPercDesc.Clear;
  DM1.tNotaFiscalVlrTotalDesc.Clear;
end;

procedure TfAltPrecoNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfAltPrecoNotaFiscal.BitBtn1Click(Sender: TObject);
var
  vGravar : Boolean;
begin
  vGravar := True;
  if DM1.tNotaFiscalVlrTotalDesc.AsFloat > 0 then
    ShowMessage('Desconto da nota vai ser zerado, informar o desconto novamente!');
  if (DM1.tNotaFiscalItensVlrDesconto.AsFloat > 0) and (CurrencyEdit2.Value <= 0) then
    begin
      if MessageDlg('Vlr.do desconto atual esta zerado, anterior possuia valor, confirmar sem desconto?',mtConfirmation,[mbOK,mbNo],0) = mrNo then
        vGravar := False;
    end
  else
    if MessageDlg('Confirmar o novo valor unitário?',mtConfirmation,[mbOK,mbNo],0) = mrNo then
      vGravar := False;
  if vGravar then
    begin
      if CurrencyEdit4.Value > 0 then
        begin
          //Descontando o valor unitário anterior
          fEmissaoNotaFiscal.Limpa_Parcelas;
          Desconta_VlrAnterior;
          Soma_VlrAtual;
          Close;
        end
      else
        begin
          ShowMessage('Falta informar o valor!');
          CurrencyEdit4.Value := DM1.tNotaFiscalItensVlrUnit.AsFloat;
          CurrencyEdit4.SetFocus;
        end;
    end;
end;

procedure TfAltPrecoNotaFiscal.FormShow(Sender: TObject);
begin
  CurrencyEdit4.Value := DM1.tNotaFiscalItensVlrUnit.AsFloat;
  DM1.tCliente.Locate('Codigo',DM1.tNotaFiscalCodCli.AsInteger,[loCaseInsensitive]);
end;

end.
