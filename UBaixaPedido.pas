unit UBaixaPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, RXDBCtrl, DBFilter, StdCtrls, RXLookup,
  Buttons, ExtCtrls, DBIProcs, Mask, ToolEdit, CurrEdit, ALed, DBClient, Variants;

type
  TfBaixaPedido = class(TForm)
    tPedido: TTable;
    dsPedido: TDataSource;
    tPedidoPedido: TIntegerField;
    tPedidoDtEmissao: TDateField;
    tPedidoCodCliente: TIntegerField;
    tPedidoCodTransp: TIntegerField;
    tPedidoCodRedespacho: TIntegerField;
    tPedidoCodCondPgto: TIntegerField;
    tPedidoTipoFrete: TStringField;
    tPedidoCodVendedor: TIntegerField;
    tPedidoPercComissao: TFloatField;
    tPedidoDtIniEmbarque: TDateField;
    tPedidoDtFinEmbarque: TDateField;
    tPedidoCodNatOper: TIntegerField;
    tPedidoSituacao: TIntegerField;
    tPedidoQtdPares: TFloatField;
    tPedidoVlrTotal: TFloatField;
    tPedidoVlrMercadoria: TFloatField;
    tPedidoVlrDesconto: TFloatField;
    tPedidoCancelado: TBooleanField;
    tPedidoImpresso: TBooleanField;
    tPedidoPesoBruto: TFloatField;
    tPedidoPesoLiquido: TFloatField;
    tPedidoCopiado: TBooleanField;
    tPedidoObs: TMemoField;
    tCliente: TTable;
    dsCliente: TDataSource;
    tClienteCodigo: TIntegerField;
    tClienteNome: TStringField;
    tClienteEndereco: TStringField;
    tClienteBairro: TStringField;
    tClienteCidade: TStringField;
    tClienteUf: TStringField;
    tClienteTelefone: TStringField;
    tClienteTelefone2: TStringField;
    tClienteFax: TStringField;
    tClientePessoa: TStringField;
    tClienteCgcCpf: TStringField;
    tClienteInscrEst: TStringField;
    tClienteContato: TStringField;
    tClienteObs: TMemoField;
    tClienteAprovCredito: TStringField;
    tClienteTipoAprov: TStringField;
    tClienteEndEntrega: TStringField;
    tClienteBairroEntrega: TStringField;
    tClienteCidEntrega: TStringField;
    tClienteUfEntrega: TStringField;
    tClienteCgcCpfEntrega: TStringField;
    tClienteInscEntrega: TStringField;
    tClienteEndPgto: TStringField;
    tClienteBairroPgto: TStringField;
    tClienteCidPgto: TStringField;
    tClienteUfPgto: TStringField;
    tClienteFantasia: TStringField;
    tClienteDtCadastro: TDateField;
    tClienteCodVendedor: TIntegerField;
    tClienteObsCtas: TMemoField;
    tClienteLojas: TIntegerField;
    tPedidolkCliente: TStringField;
    RxDBFilter1: TRxDBFilter;
    tClienteSelecionado: TBooleanField;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tPedidoItemCopiado: TBooleanField;
    tPedidoItemQtdParesCanc: TFloatField;
    tPedidoItemVlrDesconto: TFloatField;
    tPedidoItemSitTrib: TSmallintField;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaNumNota: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaDtNota: TDateField;
    tPedidoQtdParesCanc: TFloatField;
    tPedidoQtdParesFat: TFloatField;
    tPedidoQtdParesRest: TFloatField;
    RxDBGrid2: TRxDBGrid;
    GroupBox2: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    GroupBox3: TGroupBox;
    tPedidoItemlkproduto: TStringField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemQtdFatAut: TFloatField;
    Label8: TLabel;
    tPedidoQtdFatAut: TFloatField;
    tPedidoQtdFatMan: TFloatField;
    tPedidoItemlkNomeCor: TStringField;
    tExtComissaoIns: TTable;
    tExtComissaoInsNroLancamento: TIntegerField;
    tExtComissaoInsCodVendedor: TIntegerField;
    tExtComissaoInsDtReferencia: TDateField;
    tExtComissaoInsNroDoc: TIntegerField;
    tExtComissaoInsParcDoc: TIntegerField;
    tExtComissaoInsCodCliente: TIntegerField;
    tExtComissaoInsFuncao: TStringField;
    tExtComissaoInsVlrBase: TFloatField;
    tExtComissaoInsPercDescDupl: TFloatField;
    tExtComissaoInsPercComissao: TFloatField;
    tExtComissaoInsVlrComissao: TFloatField;
    tExtComissaoInsTipo: TStringField;
    tExtComissaoInsSuspensa: TBooleanField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    tPedidoItemlkReferencia: TStringField;
    tClienteCep: TStringField;
    tClienteCepEntrega: TStringField;
    tClienteCepPgto: TStringField;
    tClienteCaixaPostal: TStringField;
    tClienteRg: TStringField;
    tPedidoGrade: TTable;
    tPedidoGradePedido: TIntegerField;
    tPedidoGradeItemPed: TIntegerField;
    tPedidoGradeCodGrade: TIntegerField;
    tPedidoGradePosicao: TIntegerField;
    tPedidoGradeQtd: TFloatField;
    tPedidoGradeVlrUnitario: TFloatField;
    tPedidoGradeVlrTotal: TFloatField;
    tPedidoGradeQtdParesRest: TFloatField;
    tPedidoGradeQtdParesFat: TFloatField;
    tPedidoGradeQtdParesAut: TFloatField;
    tPedidoGradeQtdParesMan: TFloatField;
    dsPedidoGrade: TDataSource;
    tPedidoGradelkTamanho: TStringField;
    tPedidoItemNumOS: TStringField;
    tPedidoItemDtEmbarque: TDateField;
    tPedidoPedidoCliente: TStringField;
    tPedidoItemPosicao: TIntegerField;
    tPedidoItemTamanho: TStringField;
    tPedidoNotaTipo: TStringField;
    tPedidoNotaQtdPares: TFloatField;
    dsmItem: TDataSource;
    mItem: TClientDataSet;
    mItemPedido: TIntegerField;
    mItemItem: TIntegerField;
    mItemQtd: TFloatField;
    mItemQtdFaturado: TFloatField;
    mItemQtdRestante: TFloatField;
    mItemQtdAFaturar: TFloatField;
    mItemQtdAEstornar: TFloatField;
    mItemCodGrade: TIntegerField;
    mItemPosicao: TIntegerField;
    mItemTamanho: TStringField;
    tPedidoItemCancelado: TBooleanField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoItemObsLote: TStringField;
    tPedidoItemCodCia: TIntegerField;
    tPedidoItemDtReprogramacao: TDateField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tPedidoItemFabrica: TStringField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoItemProducaoVenda: TStringField;
    tPedidoItemPercComissao: TFloatField;
    tPedidoItemUnidade: TStringField;
    tPedidoItemPercComissao2: TFloatField;
    tPedidoItemObsTalao: TStringField;
    tPedidoItemLargura: TStringField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    BitBtn1: TBitBtn;
    DateEdit1: TDateEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    StaticText1: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    Panel2: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tPedidoAfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure tPedidoItemAfterPost(DataSet: TDataSet);
    procedure tPedidoNotaAfterPost(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure mItemNewRecord(DataSet: TDataSet);
    procedure tPedidoGradeBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
//    procedure Grava_Comissao;
//    procedure Grava_Comissao_Mod;
    procedure Baixar_Item(Qtd : Real);

    function Posiciona_Pedido(Tipo : String) : Boolean; //P=Pedido  I=Item

  public
    { Public declarations }
    vContReg : Integer;
    
    procedure Grava_PedidoNota(Qtd : Real);
  end;

var
  fBaixaPedido: TfBaixaPedido;

implementation

uses UDM1, UBaixaItPed, BDE;

{$R *.DFM}

procedure TfBaixaPedido.Grava_PedidoNota(Qtd : Real);
var
  vItem : Integer;
begin
  tPedidoNota.Filtered := False;
  tPedidoNota.Filter   := 'Tipo = '''+'M'+'''';
  tPedidoNota.Filtered := True;
  tPedidoNota.Last;
  vItem := tPedidoNotaItemNota.AsInteger;
  tPedidoNota.Filtered := False;

  tPedidoNota.Insert;
  tPedidoNotaPedido.AsInteger                := tPedidoItemPedido.AsInteger;
  tPedidoNotaItem.AsInteger                  := tPedidoItemItem.AsInteger;
  tPedidoNotaNumNota.AsInteger               := CurrencyEdit4.AsInteger;
  tPedidoNotaItemNota.AsInteger              := vItem + 1;
  tPedidoNotaTipo.AsString                   := 'M';
  tPedidoNotaDtNota.AsDateTime               := DateEdit1.Date;
  tPedidoNotaQtdPares.AsFloat                := Qtd;
  tPedidoNotaNroLancExtComissao.AsInteger    := 0;
  tPedidoNotaNroLancExtComissaoMod.AsInteger := 0;
  tPedidoNota.Post;
end;

{procedure TfBaixaPedido.Grava_Comissao;
begin
  DM1.tPedido.SetKey;
  DM1.tPedidoPedido.AsInteger := tPedidoPedido.AsInteger;
  DM1.tPedido.GotoKey;
  DM1.tPedidoItem.SetKey;
  DM1.tPedidoItemPedido.AsInteger := tPedidoNotaPedido.AsInteger;
  DM1.tPedidoItemItem.AsInteger   := tPedidoNotaItem.AsInteger;
  DM1.tPedidoItem.GotoKey;
  tExtComissaoIns.Refresh;
  tExtComissaoIns.Last;
  DM1.tExtComissao.Insert;
  DM1.tExtComissaoNroLancamento.AsInteger := tExtComissaoInsNroLancamento.AsInteger + 1;
  DM1.tExtComissaoCodCliente.AsInteger    := DM1.tPedidoCodCliente.AsInteger;
  DM1.tExtComissaoCodVendedor.AsInteger   := DM1.tPedidoCodVendedor.AsInteger;
  DM1.tExtComissaoDtReferencia.AsDateTime := tPedidoNotaDtNota.AsDateTime;
  DM1.tExtComissaoFuncao.AsString         := 'E';
  DM1.tExtComissaoNroDoc.AsInteger        := tPedidoNotaPedido.AsInteger;
  DM1.tExtComissaoParcDoc.AsInteger       := tPedidoNotaItem.AsInteger;
  DM1.tExtComissaoPercComissao.AsFloat    := DM1.tPedidoPercComissao.AsFloat;
  DM1.tExtComissaoTipo.AsString           := 'P';
  DM1.tExtComissaoVlrBase.AsFloat         := (DM1.tPedidoItemPreco.AsFloat - DM1.tPedidoItemVlrDesconto.AsFloat) * tPedidoNotaQtdPares.AsInteger;
  DM1.tExtComissaoVlrComissao.AsFloat     := (DM1.tExtComissaoVlrBase.AsFloat * DM1.tExtComissaoPercComissao.AsFloat) / 100;
  DM1.tExtComissao.Post;
end;}


procedure TfBaixaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tProduto.Close;
      DM1.tCor.Close;
    end;
  Action := Cafree;
end;

procedure TfBaixaPedido.tPedidoAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedido.Handle);
end;

procedure TfBaixaPedido.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaPedido.tPedidoItemAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoItem.Handle);
end;

procedure TfBaixaPedido.tPedidoNotaAfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tPedidoNota.Handle);
end;

procedure TfBaixaPedido.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          CurrencyEdit2.Enabled := False;
          CurrencyEdit3.Enabled := False;
          CurrencyEdit3.Clear;
          BitBtn1.Enabled       := True;
        end;
    1 : begin
          CurrencyEdit2.Enabled := True;
          CurrencyEdit3.Enabled := True;
          BitBtn1.Enabled       := False;
        end;
  end;
end;

procedure TfBaixaPedido.RxDBGrid1DblClick(Sender: TObject);
begin
  CurrencyEdit1.Value := tPedidoPedido.AsInteger;
end;

procedure TfBaixaPedido.RxDBGrid2DblClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
  begin
    CurrencyEdit1.AsInteger := tPedidoPedido.AsInteger;
    CurrencyEdit2.Text      := tPedidoItemItem.AsString;
    CurrencyEdit3.Text      := tPedidoItemQtdParesRest.AsString;
    CurrencyEdit2.SetFocus;
  end;
end;

procedure TfBaixaPedido.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tPedidoQtdPares.AsInteger = tPedidoQtdParesFat.AsInteger then
    Background := $006FDD00;
end;

procedure TfBaixaPedido.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit4.AsInteger < 1 then
  begin
    ShowMessage('Nº da nota não informado!');
    exit;
  end;

  if (CurrencyEdit1.AsInteger > 0) and (CurrencyEdit2.AsInteger > 0) then
  begin
    if not Posiciona_Pedido('I') then
    begin
      ShowMessage('Pedido/Item não encontrado!');
      exit;
    end;
  end;
  CurrencyEdit3.Value    := tPedidoItemQtdParesRest.AsFloat;
  CurrencyEdit3.ReadOnly := (tPedidoGrade.RecordCount > 0);
  BitBtn1.Enabled        := (tPedidoGrade.RecordCount < 1);

  if tPedidoGrade.RecordCount > 0 then
  begin
    vContReg           := tPedidoGrade.RecordCount;
    fBaixaItPed        := TfBaixaItPed.Create(Self);
    fBaixaItPed.ShowModal;
    vContReg := 99;
    CurrencyEdit2.Clear;
    CurrencyEdit3.Clear;
    CurrencyEdit1.SetFocus;
  end;
end;

procedure TfBaixaPedido.FormShow(Sender: TObject);
begin
  vContReg := 99;
  DM1.tGradeItemlk.Open;
  DM1.tProduto.Open;
  DM1.tCor.Open;
  DateEdit1.Date := Date;
  if CurrencyEdit2.AsInteger > 0 then
    CurrencyEdit2.SetFocus
  else
    CurrencyEdit1.SetFocus;
end;

procedure TfBaixaPedido.BitBtn1Click(Sender: TObject);
var
  vQtd : Real;
begin
  if CurrencyEdit1.AsInteger < 1 then
  begin
    ShowMessage('Pedido não informado!');
    exit;
  end;

  if ((RadioGroup1.ItemIndex = 1) and (CurrencyEdit3.Value <= 0)) then
  begin
    ShowMessage('Quantidade não informada!');
    exit;
  end;

  tPedido.IndexFieldNames := 'Pedido';
  if not tPedido.FindKey([CurrencyEdit1.AsInteger]) then
  begin
    ShowMessage('Pedido não encontrado!');
    exit;
  end;

  if RadioGroup1.ItemIndex = 0 then
  begin
    tPedidoItem.First;
    while not tPedidoItem.Eof do
    begin
      if tPedidoItemQtdParesRest.AsInteger > 0 then
        Baixar_Item(tPedidoItemQtdParesRest.AsFloat);
      tPedidoItem.Next;
    end;
  end
  else
  begin
    if not tPedidoItem.FindKey([tPedidoPedido.AsInteger,CurrencyEdit2.AsInteger]) then
    begin
      ShowMessage('Item não encontrado!');
      exit;
    end;
    if (tPedidoItemQtdParesRest.AsFloat <= 0) or (tPedidoItemQtdParesRest.AsFloat < CurrencyEdit3.Value) then
    begin
      ShowMessage('Qtd.Restante zerada ou qtd.para baixar maior que a qtd.restante!');
      exit;
    end;

    Baixar_Item(CurrencyEdit3.AsInteger);
  end;

  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  RadioGroup1.SetFocus;
end;

procedure TfBaixaPedido.CurrencyEdit1Change(Sender: TObject);
begin
  try
    tPedido.IndexFieldNames := 'Pedido';
    tPedido. FindNearest([CurrencyEdit1.AsInteger]);
  except
  end;
end;

procedure TfBaixaPedido.mItemNewRecord(DataSet: TDataSet);
begin
  mItemQtd.AsFloat         := 0;
  mItemQtdFaturado.AsFloat := 0;
  mItemQtdRestante.AsFloat := 0;
  mItemQtdAEstornar.Clear;
  mItemQtdAFaturar.Clear;
end;

procedure TfBaixaPedido.tPedidoGradeBeforeInsert(DataSet: TDataSet);
begin
  if tPedido.RecordCount > vContReg then
    begin
     fBaixaItPed.BitBtn1.SetFocus;
     tPedidoGrade.Cancel;
     Exit;
   end;
end;

procedure TfBaixaPedido.Baixar_Item(Qtd: Real);
begin
  tPedido.Edit;
  tPedidoQtdFatMan.AsFloat    := StrToFloat(FormatFloat('0.00000',tPedidoQtdFatMan.AsFloat + Qtd));
  tPedidoQtdParesFat.AsFloat  := StrToFloat(FormatFloat('0.00000',tPedidoQtdParesFat.AsFloat + Qtd));
  tPedidoQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.00000',tPedidoQtdParesRest.AsFloat - Qtd));
  tPedido.Post;

  tPedidoItem.Edit;
  tPedidoItemQtdFatMan.AsFloat    := StrToFloat(FormatFloat('0.00000',tPedidoItemQtdFatMan.AsFloat + Qtd));
  tPedidoItemQtdParesFat.AsFloat  := StrToFloat(FormatFloat('0.00000',tPedidoItemQtdParesFat.AsFloat + Qtd));
  tPedidoItemQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.00000',tPedidoItemQtdParesRest.AsFloat - Qtd));
  tPedidoItem.Post;

  if RadioGroup1.ItemIndex = 0 then
  begin
    tPedidoGrade.First;
    while not tPedidoGrade.Eof do
    begin
      tPedidoGrade.Edit;
      tPedidoGradeQtdParesMan.AsFloat  := StrToFloat(FormatFloat('0.00000',tPedidoGradeQtdParesMan.AsFloat + tPedidoGradeQtdParesRest.AsFloat));
      tPedidoGradeQtdParesFat.AsFloat  := StrToFloat(FormatFloat('0.00000',tPedidoGradeQtdParesFat.AsFloat + tPedidoGradeQtdParesRest.AsFloat));
      tPedidoGradeQtdParesRest.AsFloat := StrToFloat(FormatFloat('0.00000',tPedidoGradeQtdParesRest.AsFloat - tPedidoGradeQtdParesRest.AsFloat));
      tPedidoGrade.Post;
      tPedidoGrade.Next;
    end;
  end;

  Grava_PedidoNota(Qtd);
end;

function TfBaixaPedido.Posiciona_Pedido(Tipo: String): Boolean;
begin
  Result := False;
  if tPedido.FindKey([CurrencyEdit1.AsInteger]) then
    Result := True;
  if Tipo = 'I' then
    if not tPedidoItem.FindKey([tPedidoPedido.AsInteger,CurrencyEdit2.AsInteger]) then
      Result := False;
end;

end.
