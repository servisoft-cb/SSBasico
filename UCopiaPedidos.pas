unit UCopiaPedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBTables, Grids, DBGrids,
  RXDBCtrl, ExtCtrls, StdCtrls, Buttons, DBFilter, RXLookup, RzTabs, SMDBGrid, Mask, ToolEdit, CurrEdit;

type
  TfCopiaPedidos = class(TForm)
    tPedido2: TTable;
    dsPedido2: TDataSource;
    tPedido2Pedido: TIntegerField;
    tPedido2DtEmissao: TDateField;
    tPedido2CodCliente: TIntegerField;
    tPedido2CodTransp: TIntegerField;
    tPedido2CodRedespacho: TIntegerField;
    tPedido2CodCondPgto: TIntegerField;
    tPedido2TipoFrete: TStringField;
    tPedido2CodVendedor: TIntegerField;
    tPedido2PercComissao: TFloatField;
    tPedido2DtIniEmbarque: TDateField;
    tPedido2DtFinEmbarque: TDateField;
    tPedido2CodNatOper: TIntegerField;
    tPedido2Situacao: TIntegerField;
    tPedido2QtdPares: TFloatField;
    tPedido2VlrTotal: TFloatField;
    tPedido2VlrMercadoria: TFloatField;
    tPedido2VlrDesconto: TFloatField;
    tPedido2Cancelado: TBooleanField;
    tPedido2Impresso: TBooleanField;
    tPedido2PesoBruto: TFloatField;
    tPedido2PesoLiquido: TFloatField;
    tPedido2lkCliente: TStringField;
    tPedidoItem2: TTable;
    tPedidoItem2Pedido: TIntegerField;
    tPedidoItem2Item: TIntegerField;
    tPedidoItem2CodProduto: TIntegerField;
    tPedidoItem2CodCor: TIntegerField;
    tPedidoItem2CodGrade: TIntegerField;
    tPedidoItem2QtdPares: TFloatField;
    tPedidoItem2Preco: TFloatField;
    tPedidoItem2VlrTotal: TFloatField;
    tPedidoItem2Cancelado: TBooleanField;
    tPedidoMaterial2: TTable;
    dsPedidoitem2: TDataSource;
    dsPedidoMaterial2: TDataSource;
    tPedidoDesconto2: TTable;
    dsPedidoDesconto2: TDataSource;
    tPedidoDesconto2Pedido: TIntegerField;
    tPedidoDesconto2Item: TIntegerField;
    tPedidoDesconto2PercDesconto: TFloatField;
    tPedidoDesconto2VlrDesconto: TFloatField;
    tPedidoGrade2: TTable;
    dsPedidoGrade2: TDataSource;
    tPedidoGrade2Pedido: TIntegerField;
    tPedidoGrade2ItemPed: TIntegerField;
    tPedidoGrade2CodGrade: TIntegerField;
    tPedidoGrade2Posicao: TIntegerField;
    tPedidoGrade2Qtd: TFloatField;
    tPedidoGrade2VlrUnitario: TFloatField;
    tPedidoGrade2VlrTotal: TFloatField;
    tProdutoMat2: TTable;
    dsProdutoMat2: TDataSource;
    tProdutoMat2CodProduto: TIntegerField;
    tProdutoMat2Item: TIntegerField;
    tProdutoMat2CodMaterial: TIntegerField;
    tProdutoMat2CodGrade: TIntegerField;
    tProdutoMat2CodCor: TIntegerField;
    tProdutoMat2Qtd: TFloatField;
    tProdutoMat2VlrUnitario: TFloatField;
    tProdutoMat2VlrTotal: TFloatField;
    tPedidoMaterial2Pedido: TIntegerField;
    tPedidoMaterial2ItemPed: TIntegerField;
    tPedidoMaterial2Ordem: TIntegerField;
    tPedidoMaterial2CodCor: TIntegerField;
    tPedidoMaterial2CodMaterial: TIntegerField;
    tPedidoMaterial2ConsumoPr: TFloatField;
    tPedidoItem2lkPesoBruto: TFloatField;
    tPedidoItem2lkPesoLiquido: TFloatField;
    tProdutoMat2CodCorProd: TIntegerField;
    tPedidoItem2QtdParesFat: TFloatField;
    tPedidoItem2QtdParesRest: TFloatField;
    tPedidoItem2Copiado: TBooleanField;
    tPedidoItem2QtdParesCanc: TFloatField;
    tPedidoItem2VlrDesconto: TFloatField;
    tPedido2Copiado: TBooleanField;
    tPedido2Obs: TMemoField;
    tPedidoMaterial2ImpTalao: TStringField;
    tPedidoItem2SitTrib: TSmallintField;
    tPedidoItem2QtdFatAut: TFloatField;
    tPedidoItem2QtdFatMan: TFloatField;
    tPedidoItem2Reposicao: TBooleanField;
    tPedidoItem2ObsLote: TStringField;
    tPedido2QtdParesCanc: TFloatField;
    tPedido2QtdParesFat: TFloatField;
    tPedido2QtdParesRest: TFloatField;
    tPedido2QtdFatAut: TFloatField;
    tPedido2QtdFatMan: TFloatField;
    tPedido2Dolar: TBooleanField;
    tPedido2QtdParesRep: TFloatField;
    tPedido2VlrReposicao: TFloatField;
    tPedido2Mercado: TStringField;
    tPedidoGrade2QtdParesRest: TFloatField;
    tPedidoGrade2QtdParesFat: TFloatField;
    tPedidoGrade2QtdParesAut: TFloatField;
    tPedidoGrade2QtdParesMan: TFloatField;
    tPedidoMaterial2TipoConsumo: TStringField;
    tPedidoItem2DtEmbarque: TDateField;
    tPedidoItem2NumOS: TStringField;
    tPedidoItem2CodCia: TIntegerField;
    tPedidoItem2DtReprogramacao: TDateField;
    tPedidoItem2Reprogramacao: TBooleanField;
    tPedidoItem2DtBaixa: TDateField;
    tPedidoItem2HrBaixa: TTimeField;
    tPedidoItem2Fabrica: TStringField;
    tPedido2PedidoCliente: TStringField;
    tPedidoItem2QtdLote: TFloatField;
    tPedidoItem2CodProdutoCli: TStringField;
    tPedidoItem2ProdCliPorTamanho: TBooleanField;
    tPedidoItem2ProducaoVenda: TStringField;
    tPedidoItem2Posicao: TIntegerField;
    tPedidoItem2Tamanho: TStringField;
    tPedidoItem2PercComissao: TFloatField;
    tPedidoItem2Unidade: TStringField;
    tPedido2ImpTamPorItem: TBooleanField;
    tPedido2CodVendedor2: TIntegerField;
    tPedido2PercComissao2: TFloatField;
    tPedidoItem2PercComissao2: TFloatField;
    tPedidoItem2TalaoGerado: TBooleanField;
    tPedidoItem2ObsTalao: TStringField;
    tPedidoItem2Largura: TStringField;
    tPedidoItem2MateriaPrima: TBooleanField;
    tPedido2Filial: TIntegerField;
    tPedido2Tipo: TStringField;
    tPedidoItem2Plano: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    vItemAux : Integer;
    procedure Copia_Pedido;
    procedure Copia_Item;
  public
    { Public declarations }
  end;

var
  fCopiaPedidos: TfCopiaPedidos;
  vNumPedido : Integer;
implementation

uses UDM1, UPedido;

{$R *.DFM}

procedure TfCopiaPedidos.Copia_Item;
var
  vQtdAux : Real;
begin
  DM1.tPedidoItem.Insert;
  DM1.tPedidoItemPedido.AsInteger         := DM1.tPedidoPedido.AsInteger;
  DM1.tPedidoItemItem.AsInteger           := vItemAux;
  DM1.tPedidoItemCodProduto.AsInteger     := tPedidoItem2CodProduto.AsInteger;
  if tPedidoItem2SitTrib.AsInteger > 0 then
    DM1.tPedidoItemSitTrib.AsInteger := tPedidoItem2SitTrib.AsInteger
  else
    DM1.tPedidoItemSitTrib.AsInteger := 0;
  DM1.tPedidoItemCodCor.AsInteger            := tPedidoItem2CodCor.AsInteger;
  DM1.tPedidoItemCodGrade.AsInteger          := tPedidoItem2CodGrade.AsInteger;
  Dm1.tPedidoItemLargura.AsString            := tPedidoItem2Largura.AsString;
  DM1.tPedidoItemPreco.AsFloat               := tPedidoItem2Preco.AsFloat;
  DM1.tPedidoItemVlrDesconto.AsFloat         := tPedidoItem2VlrDesconto.AsFloat;
  DM1.tPedidoItemQtdPares.AsFloat            := tPedidoItem2QtdPares.AsFloat;
  DM1.tPedidoItemQtdParesFat.AsFloat         := 0;
  DM1.tPedidoItemQtdParesRest.AsFloat        := DM1.tPedidoItemQtdPares.AsFloat;
  DM1.tPedidoItemReposicao.AsBoolean         := tPedidoItem2Reposicao.AsBoolean;
  DM1.tPedidoItemVlrTotal.AsFloat            := tPedidoItem2VlrTotal.AsFloat;
  DM1.tPedidoItemCopiado.AsBoolean           := False;
  DM1.tPedidoItemNumOS.AsString              := tPedidoItem2NumOS.AsString;
  DM1.tPedidoItemDtEmbarque.AsDateTime       := tPedidoItem2DtEmbarque.AsDateTime;
  DM1.tPedidoItemCodCia.AsInteger            := tPedidoItem2CodCia.AsInteger;
  DM1.tPedidoItemDtReprogramacao.AsDateTime  := tPedidoItem2DtEmbarque.AsDateTime;
  DM1.tPedidoItemReprogramacao.AsBoolean     := False;
  DM1.tPedidoItemFabrica.AsString            := tPedidoItem2Fabrica.AsString;
  DM1.tPedidoItemCodProdutoCli.AsString      := tPedidoItem2CodProdutoCli.AsString;
  DM1.tPedidoItemPosicao.AsInteger           := tPedidoItem2Posicao.AsInteger;
  DM1.tPedidoItemTamanho.AsString            := tPedidoItem2Tamanho.AsString;
  DM1.tPedidoItemPercComissao.AsFloat        := tPedidoItem2PercComissao.AsFloat;
  DM1.tPedidoItemPercComissao2.AsFloat       := tPedidoItem2PercComissao2.AsFloat;
  DM1.tPedidoItemProducaoVenda.AsString      := tPedidoItem2ProducaoVenda.AsString;
  DM1.tPedidoItemProdCliPorTamanho.AsBoolean := tPedidoItem2ProdCliPorTamanho.AsBoolean;
  DM1.tPedidoItemLargura.AsString            := tPedidoItem2Largura.AsString;
  DM1.tPedidoItemUnidade.AsString            := tPedidoItem2Unidade.AsString;
  DM1.tPedidoItemObsTalao.AsString           := tPedidoItem2ObsTalao.AsString;
  DM1.tPedidoItemMateriaPrima.AsBoolean      := tPedidoItem2MateriaPrima.AsBoolean;
  DM1.tPedidoItemPlano.AsString              := tPedidoItem2Plano.AsString;
  vQtdAux := tPedidoItem2QtdPares.AsFloat;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := tPedidoItem2CodProduto.AsInteger;
  DM1.tPedidoVlrMercadoria.AsFloat := DM1.tPedidoVlrMercadoria.AsFloat +
                                      (StrToFloat(FormatFloat('0.00',tPedidoItem2Preco.AsFloat * vQtdAux)));
  DM1.tPedidoVlrTotal.AsFloat      := DM1.tPedidoVlrTotal.AsFloat +
                                      tPedidoItem2VlrTotal.AsFloat;
  DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat +
                                      tPedidoItem2lkPesoBruto.AsFloat * vQtdAux;
  DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat +
                                      tPedidoItem2lkPesoLiquido.AsFloat * vQtdAux;
  tPedidoGrade2.First;
  while not tPedidoGrade2.EOF do
    begin
      DM1.tPedidoGrade.Insert;
      DM1.tPedidoGradePedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoGradeItemPed.AsInteger    := vItemAux;
      DM1.tPedidoGradeCodGrade.AsInteger   := tPedidoGrade2CodGrade.AsInteger;
      DM1.tPedidoGradePosicao.AsInteger    := tPedidoGrade2Posicao.AsInteger;
      DM1.tPedidoGradeQtd.AsFloat          := tPedidoGrade2Qtd.AsFloat;
      DM1.tPedidoGradeQtdParesRest.AsFloat := tPedidoGrade2Qtd.AsFloat;
      DM1.tPedidoGradeQtdParesAut.AsFloat  := 0;
      DM1.tPedidoGradeQtdParesMan.AsFloat  := 0;
      DM1.tPedidoGradeQtdParesFat.AsFloat  := 0;
      DM1.tPedidoGradeVlrTotal.AsFloat     := tPedidoGrade2VlrTotal.AsFloat;
      DM1.tPedidoGradeVlrUnitario.AsFloat  := tPedidoGrade2VlrUnitario.AsFloat;
      DM1.tPedidoGrade.Post;
      tPedidoGrade2.Next;
    end;
  tPedidoMaterial2.First;
  while not tPedidoMaterial2.EOF do
    begin
      DM1.tPedidoMaterial.Insert;
      DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoMaterialCodCor.AsInteger      := tPedidoMaterial2CodCor.AsInteger;
      DM1.tPedidoMaterialCodMaterial.AsInteger := tPedidoMaterial2CodMaterial.AsInteger;
      DM1.tPedidoMaterialConsumoPr.AsFloat     := tPedidoMaterial2ConsumoPr.AsFloat;
      DM1.tPedidoMaterialItemPed.AsInteger     := vItemAux;
      DM1.tPedidoMaterialOrdem.AsInteger       := tPedidoMaterial2Ordem.AsInteger;
      DM1.tPedidoMaterialImpTalao.AsString     := tPedidoMaterial2ImpTalao.AsString;
      DM1.tPedidoMaterialTipoConsumo.AsString  := tPedidoMaterial2TipoConsumo.AsString;
      DM1.tPedidoMaterial.Post;
      tPedidoMaterial2.Next;
    end;
  DM1.tPedidoItem.Post;
end;

procedure TfCopiaPedidos.Copia_Pedido;
begin
  DM1.tPedidoCodCliente.AsInteger     := tPedido2CodCliente.AsInteger;
  DM1.tPedidoCodCondPgto.AsInteger    := tPedido2CodCondPgto.AsInteger;
  DM1.tPedidoCodTransp.AsInteger      := tPedido2CodTransp.AsInteger;
  DM1.tPedidoCodRedespacho.AsInteger  := tPedido2CodRedespacho.AsInteger;
  DM1.tPedidoCodVendedor.AsInteger    := tPedido2CodVendedor.AsInteger;
  DM1.tPedidoPercComissao.AsFloat     := tPedido2PercComissao.AsFloat;
  DM1.tPedidoCodNatOper.AsInteger     := tPedido2CodNatOper.AsInteger;
  DM1.tPedidoDtIniEmbarque.AsDateTime := tPedido2DtIniEmbarque.AsDateTime;
  DM1.tPedidoDtFinEmbarque.AsDateTime := tPedido2DtFinEmbarque.AsDateTime;
  DM1.tPedidoSituacao.AsInteger       := tPedido2Situacao.AsInteger;
  DM1.tPedidoTipoFrete.AsString       := tPedido2TipoFrete.AsString;
  DM1.tPedidoQtdPares.AsFloat         := tPedido2QtdPares.AsFloat;
  DM1.tPedidoQtdParesRep.AsFloat      := tPedido2QtdParesRep.AsFloat;
  DM1.tPedidoVlrReposicao.AsFloat     := tPedido2VlrReposicao.AsFloat;
  DM1.tPedidoVlrDesconto.AsFloat      := tPedido2VlrDesconto.AsFloat;
  DM1.tPedidoImpTamPorItem.AsBoolean  := tPedido2ImpTamPorItem.AsBoolean;
  DM1.tPedidoCodVendedor2.AsInteger   := tPedido2CodVendedor2.AsInteger;
  DM1.tPedidoPercComissao2.AsFloat    := tPedido2PercComissao2.AsFloat;
  DM1.tPedidoTipo.AsString            := tPedido2Tipo.AsString;
  DM1.tPedidoFilial.AsInteger         := tPedido2Filial.AsInteger;
  tPedidoItem2.First;
  while not tPedidoItem2.EOF do
    begin
      if tPedidoItem2Cancelado.AsBoolean <> True then
        begin
          vItemAux := tPedidoItem2Item.AsInteger;
          Copia_Item;
        end;
      tPedidoItem2.Next;
    end;
  tPedidoDesconto2.First;
  while not tPedidoDesconto2.EOF do
    begin
      DM1.tPedidoDesconto.Insert;
      DM1.tPedidoDescontoPedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoDescontoItem.AsInteger       := tPedidoDesconto2Item.AsInteger;
      DM1.tPedidoDescontoPercDesconto.AsFloat := tPedidoDesconto2PercDesconto.AsFloat;
      DM1.tPedidoDescontoVlrDesconto.AsFloat  := tPedidoDesconto2VlrDesconto.AsFloat;
      DM1.tPedidoDesconto.Post;
      tPedidoDesconto2.Next;
    end;
end;

procedure TfCopiaPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  tPedido2.IndexFieldNames := 'Pedido';
end;

procedure TfCopiaPedidos.BitBtn2Click(Sender: TObject);
begin
  tPedido2.Filtered := False;
  Close;
end;

procedure TfCopiaPedidos.FormShow(Sender: TObject);
begin
  vNumPedido := 0;
  RzPageControl1.Refresh;
  if TabSheet1.TabVisible then
    begin
      RzPageControl1.ActivePage := TabSheet1;
      vNumPedido := DM1.tPedidoPedido.AsInteger;
    end
  else
    RzPageControl1.ActivePage := TabSheet2;
  tPedido2.Filtered := False;
  tPedido2.Filter   := 'Pedido <> '''+IntToStr(vNumPedido)+'''';
  tPedido2.Filtered := True;
  fCopiaPedidos.Refresh;
end;

procedure TfCopiaPedidos.BitBtn1Click(Sender: TObject);
var
  i : Integer;
begin
  if TabSheet1.TabVisible then
    if MessageDlg('Deseja realmente copiar o pedido selecionado?',mtWarning,[mbOK,mbNO],0) = mrOK then
      Copia_Pedido;
  if (TabSheet2.TabVisible) and (MessageDlg('Deseja realmente copiar o item selecionado?',mtWarning,[mbOK,mbNO],0) = mrOK) then
    begin
      if tPedido2.Locate('Pedido',DM1.tPedidoPedido.AsInteger,[loCaseInsensitive]) then
        begin
          DM1.tPedidoItem.Refresh;
          DM1.tPedidoItem.Last;
          vItemAux := DM1.tPedidoItemItem.AsInteger;
          for i := 1 to CurrencyEdit1.AsInteger do
            begin
              vItemAux := vItemAux + 1;
              Copia_Item;
            end;
        end;
    end;
  BitBtn2.Click;
end;

end.
