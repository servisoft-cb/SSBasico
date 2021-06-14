unit UBuscaTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Buttons, RXLookup, Grids,
  DBGrids, RXDBCtrl, Db, DbTables, Mask, ToolEdit, CurrEdit,
  DBFilter, ALed, DBVGrids, MemTable, Variants, DBClient, SMDBGrid;

type
  TfBuscaTalao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    Edit1: TEdit;
    msPedidoGrade: TDataSource;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
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
    tPedidoQtdParesCanc: TFloatField;
    tPedidoQtdParesFat: TFloatField;
    tPedidoQtdParesRest: TFloatField;
    tPedidoQtdFatAut: TFloatField;
    tPedidoQtdFatMan: TFloatField;
    tPedidoDolar: TBooleanField;
    tPedidoQtdParesRep: TFloatField;
    tPedidoVlrReposicao: TFloatField;
    tPedidoMercado: TStringField;
    tPedidoCia: TIntegerField;
    tPedidolkNomeCliente: TStringField;
    RxDBFilter1: TRxDBFilter;
    RxDBFilter2: TRxDBFilter;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RadioGroup1: TRadioGroup;
    tPedidoPedidoCliente: TStringField;
    tPedidoFilial: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn5: TBitBtn;
    VDBGrid1: TVDBGrid;
    Label9: TLabel;
    RxDBGrid3: TRxDBGrid;
    VDBGrid2: TVDBGrid;
    mPedidoAgr: TMemoryTable;
    mPedidoAgrPedido: TIntegerField;
    mPedidoAgrItem: TIntegerField;
    Label10: TLabel;
    ProgressBar1: TProgressBar;
    Label11: TLabel;
    SpeedButton9: TSpeedButton;
    BitBtn7: TBitBtn;
    RadioGroup2: TRadioGroup;
    tPedidoEstoque: TBooleanField;
    tPedidoUsuario: TStringField;
    tPedidoDtCad: TDateField;
    tPedidoHrCad: TTimeField;
    tPedidoImpTamPorItem: TBooleanField;
    tPedidoCodVendedor2: TIntegerField;
    tPedidoPercComissao2: TFloatField;
    tPedidoTipo: TStringField;
    CheckBox1: TCheckBox;
    SMDBGrid1: TSMDBGrid;
    tTalao: TTable;
    tTalaoTalao: TIntegerField;
    tTalaoPedido: TIntegerField;
    tTalaoItemPedido: TIntegerField;
    tTalaoCodProduto: TIntegerField;
    tTalaoCodCor: TIntegerField;
    tTalaoCodGrade: TIntegerField;
    tTalaoPosicao: TIntegerField;
    tTalaoTamanho: TStringField;
    tTalaoQuantidade: TFloatField;
    tTalaoPedidoCliente: TStringField;
    tTalaoCodCliente: TIntegerField;
    tTalaoProduzido: TBooleanField;
    tTalaoDtBaixa: TDateField;
    tTalaoQtdFaturada: TFloatField;
    tTalaoQtdRestante: TFloatField;
    tTalaoDtEntrega: TDateField;
    tTalaoFilial: TIntegerField;
    tTalaoDtReprogramacao: TDateField;
    tTalaoReprogramacao: TBooleanField;
    tTalaoNumOS: TStringField;
    tTalaoCancelado: TBooleanField;
    tTalaoHrBaixa: TTimeField;
    tTalaoMotivoCancelado: TStringField;
    tTalaoDtCancelado: TDateField;
    dsTalao: TDataSource;
    tTalaoGrade: TTable;
    mPedidoGrade: TClientDataSet;
    mPedidoGradeTalao: TIntegerField;
    mPedidoGradeCodGrade: TIntegerField;
    mPedidoGradePosicao: TIntegerField;
    mPedidoGradeTamanho: TStringField;
    mPedidoGradeQtd: TFloatField;
    mPedidoGradeQtdRestante: TFloatField;
    mPedidoGradePedido: TIntegerField;
    mPedidoGradeItemPedido: TIntegerField;
    tTalaoGradeTalao: TIntegerField;
    tTalaoGradeCodGrade: TIntegerField;
    tTalaoGradePosicao: TIntegerField;
    tTalaoGradeQuantidade: TFloatField;
    tTalaoGradeQtdFaturada: TFloatField;
    tTalaoGradeQtdRestante: TFloatField;
    tTalaoGradeTamanho: TStringField;
    mPedidoGradeQtdFaturado: TFloatField;
    mPedidoAgrNumTalao: TIntegerField;
    BitBtn6: TBitBtn;
    Label2: TLabel;
    tTalaoPlano: TStringField;
    tTalaolkReferencia: TStringField;
    tTalaolkNomeProduto: TStringField;
    tTalaolkLancaGrade: TBooleanField;
    tTalaoTipo: TStringField;
    tTalaoFabrica: TStringField;
    tTalaoCodCombinacao: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid2Enter(Sender: TObject);
    procedure VDBGrid2CellClick(Column: TColumn);
    procedure SpeedButton9Click(Sender: TObject);
    procedure VDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup2Enter(Sender: TObject);
    procedure SMDBGrid1CellClick(Column: TColumn);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    vQtd : Real;
    vPreco : Real;
    vSomaTransf : Boolean;
    procedure Monta_Auxiliar;
    procedure Copia_Nota(Tipo : String); //S- Selecionados  I- Itens
    procedure Copia_Vale;
    procedure Copia_ValeItem;
    procedure Monta_Agrupado(Qtd : Real; Tipo : String);
    procedure Copia_AgrupadoNota;
    procedure Busca_Preco(CodProduto, CodCor : Integer; VlrUnitario : Real);
    procedure Agrupamento(Tipo : String);
  public
    { Public declarations }
  end;

var
  fBuscaTalao: TfBuscaTalao;
  vPedido : integer;
   
implementation

uses UDM1, UEmissaoNotaFiscal, UNotaFiscalItens, UVale, UValeItens;

{$R *.DFM}

procedure TfBuscaTalao.Busca_Preco(CodProduto, CodCor : Integer; VlrUnitario : Real);
begin
  vPreco := 0;
  //DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalCodNatOper.AsInteger,[loCaseInsensitive]);
  DM1.tNatOperacao.FindKey([DM1.tNotaFiscalCodNatOper.AsInteger]);
  DM1.tProduto.FindKey([CodProduto]);
  //DM1.tProduto.Locate('Codigo',CodProduto,[loCaseInsensitive]);
  if (DM1.tProdutoProdMat.AsString = 'M') or (VlrUnitario > 0) then
    vPreco := StrToFloat(FormatFloat('0.0000',VlrUnitario));

  if (DM1.tProdutoProdMat.AsString <> 'M') and (VlrUnitario <= 0) then
    begin
      if DM1.tPedidoTipo.AsString = 'A' then
        if DM1.tGrupo.FindKey([DM1.tProdutoCodGrupo.AsInteger]) then
        //if DM1.tGrupo.Locate('Codigo',DM1.tProdutoCodGrupo.AsInteger,[loCaseInsensitive]) then
          vPreco := StrToFloat(FormatFloat('0.0000',DM1.tGrupoPrecoAmostra.AsFloat));
      if vPreco = 0 then
        begin
          DM1.tTabPreco.SetKey;
          DM1.tTabPrecoCodCliente.AsInteger := DM1.tNotaFiscalCodCli.AsInteger;
          DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          //if (DM1.tProdutoLancaCor.AsBoolean) and (fEmissaoNotaFiscal.vCodCorGeral = 99999) then
          if (DM1.tProdutoLancaCor.AsBoolean) and (CodCor = 99999) then
            DM1.tProdutoCor.First;
          DM1.tTabPrecoCodCor.AsInteger := 0;
          //if (fEmissaoNotaFiscal.vCodCorGeral = 99999) and (DM1.tProdutoCorCodCor.AsInteger > 0) then
          if (CodCor = 99999) and (DM1.tProdutoCorCodCor.AsInteger > 0) then
            DM1.tTabPrecoCodCor.AsInteger := DM1.tProdutoCorCodCor.AsInteger
          else
          if (DM1.tProdutoLancaCor.AsBoolean) and (CodCor > 0) then
            DM1.tTabPrecoCodCor.AsInteger   := CodCor;
          if DM1.tTabPreco.GotoKey then
            begin
              if DM1.tNatOperacaoMaoObra.AsBoolean then
                if DM1.tTabPrecoPrecoMObra.AsFloat > 0 then
                  vPreco := StrToFloat(FormatFloat('0.0000',DM1.tTabPrecoPrecoMObra.AsFloat));
              if StrToFloat(FormatFloat('0.0000',vPreco)) <= 0 then
                vPreco := StrToFloat(FormatFloat('0.0000',DM1.tTabPrecoPreco.AsFloat));
            end;
          if StrToFloat(FormatFloat('0.0000',vPreco)) <= 0 then
            vPreco := StrToFloat(FormatFloat('0.0000',DM1.tProdutoVlrVenda.AsFloat));
        end;
    end;
end;

procedure TfBuscaTalao.Monta_Agrupado(Qtd : Real; Tipo : String);
var
  vCodAgrupado : Integer;
  vQtdAux : Real;
  vNovo : Boolean;
begin
  vNovo := True;
  if CheckBox1.Checked then
    begin
      Busca_Preco(tTalaoCodProduto.AsInteger,99999,DM1.tPedidoItemPreco.AsFloat);
      if DM1.tParametrosTipoComissao.AsString = 'G' then
        begin
          if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodGrade;CodSitTrib;VlrUnitario;Fabrica;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,
             DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,vPreco,DM1.tTalaoFabrica.AsString,DM1.tTalaoCodCombinacao.AsInteger]),[locaseinsensitive]) then
            begin
              vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger;
              fNotaFiscalItens.mAgrupado.Edit;
              vNovo := False;
            end
        end
      else
      if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario;Fabrica;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,
         DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,DM1.tPedidoItemPercComissao.AsFloat,DM1.tPedidoItemPercComissao2.AsFloat,vPreco,DM1.tTalaoFabrica.AsString,DM1.tTalaoCodCombinacao.AsInteger]),[locaseinsensitive]) then
        begin
          vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger;
          fNotaFiscalItens.mAgrupado.Edit;
          vNovo := False;
        end;
    end
  else
    begin
      Busca_Preco(DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemPreco.AsFloat);
      if DM1.tParametrosTipoComissao.AsString = 'G' then
        begin
          if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;VlrUnitario;Fabrica;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
             DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,vPreco,DM1.tTalaoFabrica.AsString,DM1.tTalaoCodCombinacao.AsInteger]),[locaseinsensitive]) then
            begin
              vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger;
              fNotaFiscalItens.mAgrupado.Edit;
              vNovo := False;
            end
        end
      else
      //if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
      if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario;Fabrica;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
         DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,DM1.tPedidoItemPercComissao.AsFloat,DM1.tPedidoItemPercComissao2.AsFloat,vPreco,DM1.tTalaoFabrica.AsString,DM1.tTalaoCodCombinacao.AsInteger]),[locaseinsensitive]) then
        begin
          vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger;
          fNotaFiscalItens.mAgrupado.Edit;
          vNovo := False;
        end;
    end;

  if vNovo then
    begin
      fNotaFiscalItens.mAgrupado.Last;
      vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger + 1;
      fNotaFiscalItens.mAgrupado.Insert;
      fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger := vCodAgrupado;
    end;
  fNotaFiscalItens.mAgrupadoCodProduto.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
  fNotaFiscalItens.mAgrupadoReferencia.AsString     := DM1.tPedidoItemlkReferencia.AsString;
  fNotaFiscalItens.mAgrupadoNomeProduto.AsString    := DM1.tPedidoItemlkNomeProduto.AsString;
  fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat     := vPreco;
  fNotaFiscalItens.mAgrupadoUnidade.AsString        := DM1.tPedidoItemUnidade.AsString;
  fNotaFiscalItens.mAgrupadoCodSitTrib.AsInteger    := DM1.tPedidoItemSitTrib.AsInteger;
  fNotaFiscalItens.mAgrupadoFabrica.AsString        := DM1.tTalaoFabrica.AsString;
  fNotaFiscalItens.mAgrupadoCodCombinacao.AsInteger := DM1.tTalaoCodCombinacao.AsInteger;
  //Foi incluido dia 12/04/2007 para agrupar as cores
  if CheckBox1.Checked then
    begin
      fNotaFiscalItens.mAgrupadoCodCor.AsInteger      := 99999;
      fNotaFiscalItens.mAgrupadoNomeCor.AsString      := 'Diversas Cores';
    end
  else
    begin
      fNotaFiscalItens.mAgrupadoCodCor.AsInteger      := DM1.tPedidoItemCodCor.AsInteger;
      fNotaFiscalItens.mAgrupadoNomeCor.AsString      := DM1.tPedidoItemlkCor.AsString;
    end;
  fNotaFiscalItens.mAgrupadoPercComissao1.AsFloat := DM1.tPedidoItemPercComissao.AsFloat;
  fNotaFiscalItens.mAgrupadoPercComissao2.AsFloat := DM1.tPedidoItemPercComissao2.AsFloat;
  fNotaFiscalItens.mAgrupadoCodGrade.AsInteger    := DM1.tPedidoItemCodGrade.AsInteger;
  fNotaFiscalItens.mAgrupadoPosicao.AsInteger     := DM1.tPedidoItemPosicao.AsInteger;
  fNotaFiscalItens.mAgrupado.Post;

  vQtdAux := 0;
  if Tipo = 'I' then
    begin
      mPedidoGrade.First;
      while not mPedidoGrade.Eof do
        begin
          if fNotaFiscalItens.mAgrupadoGrade.Locate('CodAgrupado;CodGrade;Posicao',VarArrayOf([vCodAgrupado,mPedidoGradeCodGrade.AsInteger,mPedidoGradePosicao.AsInteger]),[locaseinsensitive]) then
            fNotaFiscalItens.mAgrupadoGrade.Edit
          else
            fNotaFiscalItens.mAgrupadoGrade.Insert;
          fNotaFiscalItens.mAgrupadoGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoGradeCodGrade.AsInteger    := mPedidoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoGradePosicao.AsInteger     := mPedidoGradePosicao.AsInteger;
          fNotaFiscalItens.mAgrupadoGradeTamanho.AsString      := mPedidoGradeTamanho.AsString;
          if mPedidoGradeQtdFaturado.AsFloat > 0 then
            begin
              fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat := fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat + mPedidoGradeQtdFaturado.AsFloat;
              vQtdAux := vQtdAux + mPedidoGradeQtdFaturado.AsFloat;
            end;
          fNotaFiscalItens.mAgrupadoGrade.Post;

          //aqui 2
          fNotaFiscalItens.mAgrupadoPedGrade.Insert;
          fNotaFiscalItens.mAgrupadoPedGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoPedGradePedido.AsInteger      := DM1.tPedidoItemPedido.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeItem.AsInteger        := DM1.tPedidoItemItem.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeCodGrade.AsInteger    := mPedidoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradePosicao.AsInteger     := mPedidoGradePosicao.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeNumTalao.AsInteger    := mPedidoGradeTalao.AsInteger;
          if mPedidoGradeQtdFaturado.AsFloat > 0 then
            fNotaFiscalItens.mAgrupadoPedGradeQtd.AsFloat         := mPedidoGradeQtdFaturado.AsFloat;
          fNotaFiscalItens.mAgrupadoPedGrade.Post;
          mPedidoGrade.Next;
        end;
    end
  else
    begin
      DM1.tTalaoGrade.First;
      while not DM1.tTalaoGrade.Eof do
        begin
          if fNotaFiscalItens.mAgrupadoGrade.Locate('CodAgrupado;CodGrade;Posicao',VarArrayOf([vCodAgrupado,DM1.tTalaoGradeCodGrade.AsInteger,DM1.tTalaoGradePosicao.AsInteger]),[locaseinsensitive]) then
            fNotaFiscalItens.mAgrupadoGrade.Edit
          else
            fNotaFiscalItens.mAgrupadoGrade.Insert;
          fNotaFiscalItens.mAgrupadoGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoGradeCodGrade.AsInteger    := DM1.tTalaoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoGradePosicao.AsInteger     := DM1.tTalaoGradePosicao.AsInteger;
          fNotaFiscalItens.mAgrupadoGradeTamanho.AsString      := DM1.tTalaoGradeTamanho.AsString;
          //aqui 3
          if DM1.tTalaoGradeQtdRestante.AsFloat > 0 then
            begin
              fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat := fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat + DM1.tTalaoGradeQtdRestante.AsFloat;
              vQtdAux := vQtdAux + DM1.tTalaoGradeQtdRestante.AsFloat;
            end;
          fNotaFiscalItens.mAgrupadoGrade.Post;

          fNotaFiscalItens.mAgrupadoPedGrade.Insert;
          fNotaFiscalItens.mAgrupadoPedGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoPedGradePedido.AsInteger      := DM1.tTalaoPedido.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeItem.AsInteger        := DM1.tTalaoItemPedido.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeCodGrade.AsInteger    := DM1.tTalaoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradePosicao.AsInteger     := DM1.tTalaoGradePosicao.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeNumTalao.AsInteger    := DM1.tTalaoGradeTalao.AsInteger;
          if DM1.tTalaoGradeQtdRestante.AsFloat > 0 then
            fNotaFiscalItens.mAgrupadoPedGradeQtd.AsFloat         := DM1.tTalaoGradeQtdRestante.AsFloat;
          fNotaFiscalItens.mAgrupadoPedGrade.Post;

          DM1.tTalaoGrade.Next;
        end;
    end;
  if vQtdAux = 0 then
    vQtdAux := Qtd;
  if not fNotaFiscalItens.mAgrupadoPed.Locate('CodAgrupado;Pedido;Item;NumTalao',VarArrayOf([vCodAgrupado,DM1.tTalaoItemPedido.AsInteger,DM1.tTalaoItemPedido.AsInteger,DM1.tTalaoTalao.AsInteger]),[locaseinsensitive]) then
    begin
      fNotaFiscalItens.mAgrupadoPed.Insert;
      fNotaFiscalItens.mAgrupadoPedCodAgrupado.AsInteger := vCodAgrupado;
      fNotaFiscalItens.mAgrupadoPedPedido.AsInteger      := DM1.tTalaoPedido.AsInteger;
      fNotaFiscalItens.mAgrupadoPedItem.AsInteger        := DM1.tTalaoItemPedido.AsInteger;
      fNotaFiscalItens.mAgrupadoPedNumOC.AsString        := DM1.tTalaoPedidoCliente.AsString;
      fNotaFiscalItens.mAgrupadoPedNumOS.AsString        := DM1.tTalaoNumOS.AsString;
      fNotaFiscalItens.mAgrupadoPedNumTalao.AsInteger    := DM1.tTalaoTalao.AsInteger;
      fNotaFiscalItens.mAgrupadoPedQtd.AsFloat           := vQtdAux;
      fNotaFiscalItens.mAgrupadoPed.Post;
    end;

  fNotaFiscalItens.mAgrupado.Edit;
  fNotaFiscalItens.mAgrupadoQtd.AsFloat := fNotaFiscalItens.mAgrupadoQtd.AsFloat + vQtdAux;
  fNotaFiscalItens.mAgrupado.Post;

  if fNotaFiscalItens.mAgrupadoReferencia.AsString = '' then
    ShowMessage('Pedido= ' + DM1.tPedidoItemPedido.AsString + ' item= ' + DM1.tPedidoItemItem.AsString + ', não possui referência!');
  if fNotaFiscalItens.mAgrupadoUnidade.AsString = '' then
    ShowMessage('Pedido= ' + DM1.tPedidoItemPedido.AsString + ' item= ' + DM1.tPedidoItemItem.AsString + ', não possui unidade!');
  if fNotaFiscalItens.mAgrupadoQtd.AsFloat <= 0 then
    ShowMessage('Pedido= ' + DM1.tPedidoItemPedido.AsString + ' item= ' + DM1.tPedidoItemItem.AsString + ', não possui qtd!');
  if fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat <= 0 then
    ShowMessage('Pedido= ' + DM1.tPedidoItemPedido.AsString + ' item= ' + DM1.tPedidoItemItem.AsString + ', não possui valor!');
    
  mPedidoAgr.Insert;
  mPedidoAgrPedido.AsInteger   := DM1.tTalaoPedido.AsInteger;
  mPedidoAgrItem.AsInteger     := DM1.tTalaoItemPedido.AsInteger;
  mPedidoAgrNumTalao.AsInteger := DM1.tTalaoTalao.AsInteger;
  mPedidoAgr.Post;
end;

procedure TfBuscaTalao.Copia_AgrupadoNota;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.FindKey([fNotaFiscalItens.mAgrupadoCodProduto.AsInteger]);

  DM1.tNatOperacao.IndexFieldNames    := 'Codigo';
  DM1.tNatOperacao.SetKey;
  DM1.tNatOperacaoCodigo.AsInteger    := DM1.tNotaFiscalCodNatOper.AsInteger;
  if DM1.tNatOperacao.GotoKey then
    begin
      if DM1.tProdutoCodSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
      else
      if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger;
    end;
  if fNotaFiscalItens.mAgrupadoPed.Locate('CodAgrupado',fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger,[loCaseInsensitive]) then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      DM1.tPedido.FindKey([fNotaFiscalItens.mAgrupadoPedPedido.AsInteger]);
    end;

  DM1.tNotaFiscalCodVendedor.AsInteger  := DM1.tPedidoCodVendedor.AsInteger;
  if DM1.tPedidoCodCondPgto.AsInteger < 1 then
    DM1.tNotaFiscalCondPgto.AsString     := 'N'
  else
    DM1.tNotaFiscalCondPgto.AsString     := DM1.tPedidolkPrazoVista.AsString;
    //aqui
  //fEmissaoNotaFiscal.DBRadioGroup2Change(fEmissaoNotaFiscal);
  DM1.tNotaFiscalSituacao.AsInteger    := DM1.tPedidoSituacao.AsInteger;
  DM1.tNotaFiscalCodTransp.AsInteger   := DM1.tPedidoCodTransp.AsInteger;
  if DM1.tPedidoTipoFrete.AsString = 'C' then
    DM1.tNotaFiscalEmitDest.AsInteger := 1
  else
    DM1.tNotaFiscalEmitDest.AsInteger := 2;
  //*** Copia os itens do pedido para os itens da nota
  DM1.tPedidoItem.First;
  vNumPedido  := 0;
  vItemPedido := 99999;
  vNumLote    := 0;
  vFabrica    := fNotaFiscalItens.mAgrupadoFabrica.AsString;
  if fNotaFiscalItens.SpeedButton17.Tag <= 0 then
    fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalCodNatOper.AsInteger;
  fNotaFiscalItens.CurrencyEdit6.AsInteger    := fNotaFiscalItens.mAgrupadoCodProduto.AsInteger;
  fNotaFiscalItens.RZDBLookupComboBox2.KeyValue  := fNotaFiscalItens.mAgrupadoCodProduto.AsInteger;
  fNotaFiscalItens.RzDBLookupComboBox1.KeyValue  := fNotaFiscalItens.mAgrupadoCodProduto.AsInteger;
  fNotaFiscalItens.Move_Itens;

  fNotaFiscalItens.RadioGroup1.ItemIndex := RadioGroup2.ItemIndex;

  if DM1.tParametrosTipoComissao.AsString = 'P' then
    fNotaFiscalItens.CurrencyEdit7.Value := fNotaFiscalItens.mAgrupadoPercComissao1.AsFloat
  else
    fNotaFiscalItens.CurrencyEdit7.Value := DM1.tNotaFiscalPercComissao.AsFloat;
  fEmissaoNotaFiscal.vCodCorGeral := fNotaFiscalItens.mAgrupadoCodCor.AsInteger;
  if fNotaFiscalItens.mAgrupadoCodCor.AsInteger > 0 then
    begin
      fNotaFiscalItens.RxDBLookupCombo4.KeyValue := fNotaFiscalItens.mAgrupadoCodCor.AsInteger;
      fNotaFiscalItens.Abre_SQLCor;
      fNotaFiscalItens.RxDBLookupCombo4.KeyValue := fNotaFiscalItens.mAgrupadoCodCor.AsInteger;
    end;
  fEmissaoNotaFiscal.vCodCombinacao := fNotaFiscalItens.mAgrupadoCodCombinacao.AsInteger;
  fNotaFiscalItens.Monta_SQLCombinacao;
  

  if DM1.tProdutoCodClasFiscal.AsString <> '' then
    fNotaFiscalItens.RxDBLookupCombo5.KeyValue := DM1.tProdutoCodClasFiscal.AsString;
  fNotaFiscalItens.RxDBLookupCombo7.Value      := fNotaFiscalItens.mAgrupadoUnidade.AsString;
  fNotaFiscalItens.CurrencyEdit3.Value         := fNotaFiscalItens.mAgrupadoQtd.AsFloat;
  // verifica a sit.tributaria
  if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
      if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
        fNotaFiscalItens.Edit4.Clear;
    end;
  fNotaFiscalItens.CurrencyEdit4.Value := fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat;
  fNotaFiscalItens.CurrencyEdit4Exit(fNotaFiscalItens);
  fNotaFiscalItens.CurrencyEdit5.Value;
  //fNotaFiscalItens.CurrencyEdit7.Value := DM1.tPedidoItemPercComissao.AsFloat;
  fNotaFiscalItens.CheckBox2.Checked := True;
  if (fNotaFiscalItens.mAgrupadoCodGrade.AsInteger > 0) and (fNotaFiscalItens.mAgrupadoPosicao.AsInteger > 0) then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([fNotaFiscalItens.mAgrupadoCodGrade.AsInteger]);
    end;
  fEmissaoNotaFiscal.SpeedButton23.Tag := 2;
  fNotaFiscalItens.mAgrupadoGrade.First;
  while not fNotaFiscalItens.mAgrupadoGrade.Eof do
    begin
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
      fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := fNotaFiscalItens.mAgrupadoGradeCodGrade.AsInteger;
      fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := fNotaFiscalItens.mAgrupadoGradePosicao.AsInteger;
      fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat;
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
      fNotaFiscalItens.mAgrupadoGrade.Next;
    end;
  fNotaFiscalItens.CheckBox1.Checked := vSomaTransf;
  fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
  //aqui
  fNotaFiscalItens.BitBtn6Click(fNotaFiscalItens);
  if DM1.tNotaFiscalPrazoPgto.AsInteger <= 0 then
    DM1.tNotaFiscalPrazoPgto.AsInteger   := DM1.tPedidoCodCondPgto.AsInteger;
end;

procedure TfBuscaTalao.Copia_Nota(Tipo : String);
var
  vAux, vTaxa : Real;
begin
  vTaxa := 1;

  DM1.tPedido.IndexFieldNames := 'Pedido';
  if not DM1.tTalao.FindKey([tTalaoTalao.AsInteger]) then
  //if not DM1.tTalao.Locate('Talao',tTalaoTalao.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Talão '  + tTalaoTalao.AsString + ' com erro, cancelar a digitação da nota refaz a inclusão novamente!');
      exit;
    end;

  if not DM1.tPedido.FindKey([tTalaoPedido.AsInteger]) then
  //if not DM1.tPedido.Locate('Pedido',tTalaoPedido.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Pedido '  + tTalaoPedidoCliente.AsString + ', não encontrado!');
      exit;
    end;

  if not DM1.tPedidoItem.Locate('Item',tTalaoItemPedido.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Item ' + tTalaoItemPedido.AsString + ' do pedido '  + tTalaoPedidoCliente.AsString + ', não encontrado!');
      exit;
    end;

  if not DM1.tProduto.FindKey([tTalaoCodProduto.AsInteger]) then
  //if not DM1.tProduto.Locate('Codigo',tTalaoCodProduto.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Produto ' + tTalaoCodProduto.AsString + '  ' + DM1.tTalaolkReferencia.AsString + ', não encontrado!');
      exit;
    end;

  if not DM1.tNatOperacao.FindKey([DM1.tNotaFiscalCodNatOper.AsInteger]) then
  //if not DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalCodNatOper.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Natureza ' + fEmissaoNotaFiscal.RxDBLookupCombo7.Text + ', não encontrada!');
      exit;
    end;

  if (DM1.tNotaFiscalCodVendedor.AsInteger > 0) and (DM1.tNotaFiscalCodVendedor.AsInteger <> DM1.tPedidoCodVendedor.AsInteger) then
    ShowMessage('Pedido (OC) ' + DM1.tPedidoPedidoCliente.AsString + ', esta com vendedor diferente da nota');

  if DM1.tPedidoDolar.AsBoolean then
    begin
      DM1.tIndexador.IndexFieldNames := 'Data';
      DM1.tIndexador.SetKey;
      DM1.tIndexadorData.AsDateTime  := DM1.tNotaFiscalDtEmissao.AsDateTime;
      if DM1.tIndexador.GotoKey then
        vTaxa := DM1.tIndexadorTaxa.AsFloat
      else
        ShowMessage('Não possui índice cadastrado!');
    end;

  DM1.tNotaFiscalCodVendedor.AsInteger  := DM1.tPedidoCodVendedor.AsInteger;
  if DM1.tPedidoCodCondPgto.AsInteger < 1 then
    DM1.tNotaFiscalCondPgto.AsString     := 'N'
  else
    DM1.tNotaFiscalCondPgto.AsString     := DM1.tPedidolkPrazoVista.AsString;
    //aqui
  //fEmissaoNotaFiscal.DBRadioGroup2Change(fEmissaoNotaFiscal);
  DM1.tNotaFiscalSituacao.AsInteger    := DM1.tPedidoSituacao.AsInteger;
  DM1.tNotaFiscalCodTransp.AsInteger   := DM1.tPedidoCodTransp.AsInteger;
  if DM1.tPedidoTipoFrete.AsString = 'C' then
    DM1.tNotaFiscalEmitDest.AsInteger := 1
  else
    DM1.tNotaFiscalEmitDest.AsInteger := 2;

  //*** Copia os itens do pedido para os itens da nota
  if (DM1.tTalaoQtdRestante.AsFloat > 0) then
    begin
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
      while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
        fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
      vNumPedido  := DM1.tPedidoItemPedido.AsInteger;
      vItemPedido := DM1.tPedidoItemItem.AsInteger;
      vNumLote    := DM1.tTalaoTalao.AsInteger;
      vFabrica    := DM1.tTalaoFabrica.AsString;
      if fNotaFiscalItens.SpeedButton17.Tag <= 0 then
        fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalCodNatOper.AsInteger;
      if DM1.tProdutoCodSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
      else
      if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
        fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger;

      fNotaFiscalItens.CurrencyEdit6.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
      fNotaFiscalItens.RZDBLookupComboBox2.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
      fNotaFiscalItens.RzDBLookupComboBox1.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
      fNotaFiscalItens.Move_Itens;

      fNotaFiscalItens.RadioGroup1.ItemIndex := RadioGroup2.ItemIndex;

      if DM1.tPedidoItemCodCor.AsInteger > 0 then
        begin
          fNotaFiscalItens.RxDBLookupCombo4.KeyValue := DM1.tPedidoItemCodCor.AsInteger;
          fNotaFiscalItens.Abre_SQLCor;
          fNotaFiscalItens.RxDBLookupCombo4.KeyValue := DM1.tPedidoItemCodCor.AsInteger;
        end;
      fEmissaoNotaFiscal.vCodCombinacao := DM1.tPedidoItemCodCombinacao.AsInteger;
      fNotaFiscalItens.Monta_SQLCombinacao;

      fNotaFiscalItens.RxDBLookupCombo7.Value  := DM1.tPedidoItemUnidade.AsString;
      if Tipo = 'S' then
        fNotaFiscalItens.CurrencyEdit3.Value := DM1.tTalaoQtdRestante.AsFloat
      else
        fNotaFiscalItens.CurrencyEdit3.Value := CurrencyEdit1.Value;
      // verifica a sit.tributaria
      if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
        begin
          DM1.tSitTributaria.IndexFieldNames := 'Codigo';
          DM1.tSitTributaria.SetKey;
          DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
          if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
            fNotaFiscalItens.Edit4.Clear;
        end;
      //Busca preço
      Busca_Preco(DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemPreco.AsFloat);
      vAux := vPreco;
      if DM1.tPedidoSituacao.AsString = '2' then
        vAux := StrToFloat(FormatFloat('0.00',(vAux * DM1.tParametrosPercC200.AsCurrency / 100)));
      if DM1.tPedidoDolar.AsBoolean then
        vAux := StrToFloat(FormatFloat('0.00',(vAux * vTaxa)));
      fNotaFiscalItens.CurrencyEdit4.Value := vAux;
      fNotaFiscalItens.CurrencyEdit4Exit(fNotaFiscalItens);
      fNotaFiscalItens.CurrencyEdit5.Value;
      fNotaFiscalItens.CheckBox2.Checked := True;
      if DM1.tPedidoItemCodGrade.AsInteger > 0 then
        begin
          DM1.tGrade.IndexFieldNames := 'Codigo';
          DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
        end;
      fEmissaoNotaFiscal.SpeedButton23.Tag := 2;
      if Tipo = 'I' then
        begin
          mPedidoGrade.First;
          while not mPedidoGrade.Eof do
            begin
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := mPedidoGradeCodGrade.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := mPedidoGradePosicao.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := mPedidoGradeQtdFaturado.AsFloat;
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
              mPedidoGrade.Delete;
            end;
        end
      else
        begin
          DM1.tTalaoGrade.First;
          while not DM1.tTalaoGrade.Eof do
            begin
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := DM1.tTalaoGradeCodGrade.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := DM1.tTalaoGradePosicao.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := DM1.tTalaoGradeQtdRestante.AsFloat;
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
              DM1.tTalaoGrade.Next;
            end;
        end;
      fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
      fNotaFiscalItens.BitBtn6Click(fNotaFiscalItens);
    end;
  if DM1.tNotaFiscalPrazoPgto.AsInteger <= 0 then
    DM1.tNotaFiscalPrazoPgto.AsInteger   := DM1.tPedidoCodCondPgto.AsInteger;
end;

procedure TfBuscaTalao.Copia_Vale;
var
  vAux, vTaxa : Real;
begin
  vTaxa := 1;
  if DM1.tPedidoDolar.AsBoolean then
    begin
      DM1.tIndexador.IndexFieldNames := 'Data';
      DM1.tIndexador.SetKey;
      DM1.tIndexadorData.AsDateTime  := DM1.tValeDtEmissao.AsDateTime;
      if DM1.tIndexador.GotoKey then
        vTaxa := DM1.tIndexadorTaxa.AsFloat
      else
        ShowMessage('Não possui índice cadastrado!');
    end;
  DM1.tValeCodCliente.AsInteger      := DM1.tPedidoCodCliente.AsInteger;
  //fVale.RxDBLookupCombo8Click(fVale);
  //*** Copia os itens do pedido para os itens da nota
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.EOF do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
        begin
          vNumPedido  := DM1.tPedidoItemPedido.AsInteger;
          vItemPedido := DM1.tPedidoItemItem.AsInteger;
          fValeItens.CurrencyEdit1.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
          fValeItens.RxDBLookupCombo1.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
          fValeItens.RxDBLookupCombo2.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
          fValeItens.RxDBLookupCombo4.KeyValue := DM1.tPedidoItemCodCor.AsInteger;
          if DM1.tPedidoItemSitTrib.AsInteger > 0 then
            fValeItens.RxDBLookupCombo13.KeyValue := DM1.tPedidoItemSitTrib.AsInteger;
          fValeItens.Edit2.Text          := DM1.tPedidoItemUnidade.AsString;
          fValeItens.Edit1.Text          := '';
            fValeItens.CurrencyEdit3.Value := DM1.tPedidoItemQtdParesRest.AsFloat;
          if (DM1.tPedidoItemCodGrade.AsInteger > 0) and (DM1.tPedidoItemPosicao.AsInteger > 0) then
            begin
              DM1.tGrade.IndexFieldNames := 'Codigo';
              DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
              fValeItens.RxDBLookupCombo3.KeyValue := DM1.tPedidoItemCodGrade.AsInteger;
              fValeItens.RxDBLookupCombo6.KeyValue := DM1.tPedidoItemPosicao.AsInteger;
            end;

          // verifica a sit.tributaria
          if fValeItens.RxDBLookupCombo13.Text <> '' then
            begin
              DM1.tSitTributaria.IndexFieldNames := 'Codigo';
              DM1.tSitTributaria.SetKey;
              DM1.tSitTributariaCodigo.AsInteger := fValeItens.RxDBLookupCombo13.KeyValue;
              if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
                fValeItens.Edit4.Clear;
            end;
          vAux := DM1.tPedidoItemPreco.AsFloat - DM1.tPedidoItemVlrDesconto.AsFloat;
          if DM1.tPedidoSituacao.AsString = '2' then
            vAux := StrToFloat(FormatFloat('0.00',(vAux * DM1.tParametrosPercC200.AsFloat / 100)));
          if DM1.tPedidoDolar.AsBoolean then
            vAux := StrToFloat(FormatFloat('0.00',(vAux * vTaxa)));

          fValeItens.CurrencyEdit4.Value := vAux;
          fValeItens.CurrencyEdit4Exit(fValeItens);
          fValeItens.BitBtn6Click(fValeItens);
        end;
      DM1.tPedidoItem.Next;
    end;
end;

procedure TfBuscaTalao.Copia_ValeItem;
begin
  fValeItens.CurrencyEdit1.AsInteger   := DM1.tPedidoItemCodProduto.AsInteger;
  fValeItens.RxDBLookupCombo1.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
  fValeItens.RxDBLookupCombo2.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
  if DM1.tPedidoItemSitTrib.AsInteger > 0 then
    fValeItens.RxDBLookupCombo13.KeyValue := DM1.tPedidoItemSitTrib.AsInteger;
  if (DM1.tPedidoItemCodGrade.AsInteger > 0) and (DM1.tPedidoItemPosicao.AsInteger > 0) then
    begin
      fValeItens.RxDBLookupCombo3.KeyValue := DM1.tPedidoItemCodGrade.AsInteger;
      fValeItens.RxDBLookupCombo6.KeyValue := DM1.tPedidoItemPosicao.AsInteger;
    end;
  fValeItens.RxDBLookupCombo4.Value := DM1.tPedidoItemCodCor.AsString;
  fValeItens.Edit2.Text := DM1.tPedidoItemUnidade.AsString;
  vQtd   := CurrencyEdit1.Value;
    fValeItens.CurrencyEdit3.Value := vQtd;
  fValeItens.Edit1.Text          := '';
  fValeItens.CurrencyEdit4.Value := DM1.tPedidoItemPreco.AsFloat;
  fValeItens.CurrencyEdit5.Value := fValeItens.CurrencyEdit3.Value * DM1.tPedidoItemPreco.AsFloat;
  if fValeItens.RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := fValeItens.RxDBLookupCombo13.KeyValue;
      if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
        fValeItens.Edit4.Clear;
    end;
  vNumPedido                         := DM1.tPedidoPedido.AsInteger;
  vItemPedido                        := DM1.tPedidoItemItem.AsInteger;
  fValeItens.BitBtn6.Click;
end;

procedure TfBuscaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BitBtn2Click(Sender);
  tTalao.Filtered    := False;
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tPedido.IndexFieldNames  := 'Pedido';
  Action := CaFree;
end;

procedure TfBuscaTalao.FormShow(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames     := 'Codigo';
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
  DM1.tGrupo.IndexFieldNames       := 'Codigo';
  DM1.tTalao.IndexFieldNames       := 'Talao';

  PageControl1.ActivePageIndex := 0;
  tTalao.Filtered    := False;
  //RxDBFilter1.Active := True;
  RadioGroup2Click(Sender);
  RxDBFilter2.Active := True;

  if RadioGroup1.ItemIndex = 0 then
    begin
      if fEmissaoNotaFiscal.RxDBLookupCombo8.Text <> '' then
        begin
          tTalao.Filter   := 'CodCliente = ' + QuotedStr(IntToStr(fEmissaoNotaFiscal.RxDBLookupCombo8.KeyValue)) + ' and Filial = ''' + IntToStr(Dm1.tNotaFiscalFilial.AsInteger)+'''';
          tTalao.Filtered := True;
        end;
    end
  else
    begin
      if fVale.RxDBLookupCombo8.Text <> '' then
        begin
          tTalao.Filter   := 'CodCliente = ' + QuotedStr(IntToStr(fVale.RxDBLookupCombo8.KeyValue)) + ' and Filial = ''' + IntToStr(Dm1.tNotaFiscalFilial.AsInteger)+'''';
          tTalao.Filtered := True;
        end;
    end;
   // TIRADO
  fNotaFiscalItens.mAgrupado.First;
  while not fNotaFiscalItens.mAgrupado.Eof do
    begin
      fNotaFiscalItens.mAgrupadoGrade.First;
      while not fNotaFiscalItens.mAgrupadoGrade.Eof do
        fNotaFiscalItens.mAgrupadoGrade.Delete;
      fNotaFiscalItens.mAgrupadoPed.First;
      while not fNotaFiscalItens.mAgrupadoPed.Eof do
        begin
          fNotaFiscalItens.mAgrupadoPedGrade.First;
          while not fNotaFiscalItens.mAgrupadoPedGrade.Eof do
            fNotaFiscalItens.mAgrupadoPedGrade.Delete;
          fNotaFiscalItens.mAgrupadoPed.Delete;
        end;
      fNotaFiscalItens.mAgrupado.Delete;
    end;
  mPedidoAgr.EmptyTable;
end;

procedure TfBuscaTalao.BitBtn2Click(Sender: TObject);
begin
  Edit1.Clear;
  CheckBox1.Checked := False;
end;

procedure TfBuscaTalao.BitBtn1Click(Sender: TObject);
var
  vQtdGrade : Real;
begin
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    ShowMessage('Não pode copiar o item do pedido, existe pedido agrupado!')
  else
  if tTalaoQtdRestante.AsFloat > 0 then
    begin
      vQtdGrade := 0;
      if tTalaolkLancaGrade.AsBoolean then
        begin
          mPedidoGrade.First;
          while not mPedidoGrade.Eof do
            begin
              vQtdGrade := vQtdGrade + mPedidoGradeQtdFaturado.AsFloat;
              mPedidoGrade.Next;
            end;
          mPedidoGrade.First;
          if vQtdGrade <> CurrencyEdit1.Value then
            ShowMessage('Qtd. informada na grade esta diferente da quantidade do item para o faturamento!')
          else
            Copia_Nota('I');
        end
      else
        Copia_Nota('I');
    end;
  DM1.tTalao.Refresh;
  tTalao.Refresh;
  tTalaoGrade.Refresh;
end;

procedure TfBuscaTalao.BitBtn4Click(Sender: TObject);
begin
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
  begin
    ShowMessage('Não pode copiar o lote, existe lotes agrupados!');
    exit;
  end;
  if MessageDlg('Confirma a copia dos lotes selecionados?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  tTalao.First;
  while not tTalao.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        begin
          if tTalaoDtBaixa.AsDateTime <= 0 then
            begin
              ShowMessage('Lote ' + tTalaoTalao.AsString + ' não baixado, não pode ser faturado completo!');
              tTalao.Last;
            end
          else
            Copia_Nota('S');
        end;
      tTalao.Next;
    end;
  Close;
end;

procedure TfBuscaTalao.Monta_Auxiliar;
begin
  mPedidoGrade.EmptyDataSet;
  tTalaoGrade.First;
  while not tTalaoGrade.Eof do
    begin
      mPedidoGrade.Insert;
      mPedidoGradeTalao.AsInteger      := tTalaoTalao.AsInteger;
      mPedidoGradePedido.AsInteger     := tTalaoPedido.AsInteger;
      mPedidoGradeItemPedido.AsInteger := tTalaoItemPedido.AsInteger;
      mPedidoGradeCodGrade.AsInteger   := tTalaoGradeCodGrade.AsInteger;
      mPedidoGradePosicao.AsInteger    := tTalaoGradePosicao.AsInteger;
      mPedidoGradeQtd.AsFloat          := tTalaoGradeQuantidade.AsFloat;
      mPedidoGradeQtdFaturado.AsFloat  := tTalaoGradeQtdRestante.AsFloat;
      mPedidoGradeQtdRestante.AsFloat  := tTalaoGradeQtdRestante.AsFloat;
      mPedidoGradeTamanho.AsString     := tTalaoGradeTamanho.AsString;
      mPedidoGrade.Post;
      tTalaoGrade.Next;
    end;
  mPedidoGrade.First;
end;

procedure TfBuscaTalao.BitBtn7Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    begin
      vSomaTransf := True;
      //if MessageDlg('Com Transferência de icms?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
      //  vSomaTransf := True;
      fNotaFiscalItens.mAgrupado.First;
      while not fNotaFiscalItens.mAgrupado.Eof do
        begin
          if RadioGroup1.ItemIndex = 0 then
            Copia_AgrupadoNota;
          fNotaFiscalItens.mAgrupado.Next;
        end;
      Close;
    end
  else
    ShowMessage('Não existe pedido agrupado!');
end;

procedure TfBuscaTalao.Agrupamento(Tipo : String);
begin
  DM1.tPedido.IndexFieldNames := 'Pedido';
  if not DM1.tTalao.Locate('Talao',tTalaoTalao.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Talão '  + tTalaoTalao.AsString + ' com erro, cancelar a digitação da nota refaz a inclusão novamente!');
      exit;
    end;

  if not DM1.tPedido.Locate('Pedido',tTalaoPedido.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Pedido '  + tTalaoPedidoCliente.AsString + ', não encontrado!');
      exit;
    end;

  if not DM1.tPedidoItem.Locate('Item',tTalaoItemPedido.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Item ' + tTalaoItemPedido.AsString + ' do pedido '  + tTalaoPedidoCliente.AsString + ', não encontrado!');
      exit;
    end;

  if not DM1.tProduto.Locate('Codigo',tTalaoCodProduto.AsInteger,[loCaseInsensitive]) then
    begin
      ShowMessage('Produto ' + tTalaoCodProduto.AsString + '  ' + DM1.tTalaolkReferencia.AsString + ', não encontrado!');
      exit;
    end;

  if not mPedidoAgr.Locate('NumTalao;Pedido;Item',VarArrayOf([tTalaoTalao.AsInteger,DM1.tPedidoItemPedido.AsInteger,DM1.tPedidoItemItem.AsInteger]),[locaseinsensitive]) then
    begin
      if (Tipo = 'P') and (tTalaoQtdRestante.AsFloat > 0) then
        Monta_Agrupado(tTalaoQtdRestante.AsFloat,Tipo)
      else
      if (Tipo = 'I') and (CurrencyEdit1.Value > 0) then
        Monta_Agrupado(CurrencyEdit1.Value,Tipo);
    end;
end;

procedure TfBuscaTalao.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja Agrupar os talões selecionados?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    Exit;

  tTalao.First;
  while not tTalao.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      if tTalaoDtBaixa.AsDateTime <= 0 then
      begin
        ShowMessage('Lote ' + tTalaoTalao.AsString + ' não baixado, não pode ser faturado completo!');
        tTalao.Last;
      end
      else
        Agrupamento('P');
    end;
    tTalao.Next;
  end;
end;

procedure TfBuscaTalao.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfBuscaTalao.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfBuscaTalao.VDBGrid2Enter(Sender: TObject);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

procedure TfBuscaTalao.VDBGrid2CellClick(Column: TColumn);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

procedure TfBuscaTalao.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o agrupamento selecionado?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      fNotaFiscalItens.mAgrupadoGrade.First;
      while not fNotaFiscalItens.mAgrupadoGrade.Eof do
        fNotaFiscalItens.mAgrupadoGrade.Delete;
      fNotaFiscalItens.mAgrupadoPed.First;
      while not fNotaFiscalItens.mAgrupadoPed.Eof do
        begin
          if mPedidoAgr.Locate('Pedido;Item',VarArrayOf([fNotaFiscalItens.mAgrupadoPedPedido.AsInteger,fNotaFiscalItens.mAgrupadoPedItem.AsInteger]),[locaseinsensitive]) then
            mPedidoAgr.Delete;
          fNotaFiscalItens.mAgrupadoPedGrade.First;
          while not fNotaFiscalItens.mAgrupadoPedGrade.Eof do
            fNotaFiscalItens.mAgrupadoPedGrade.Delete;
          fNotaFiscalItens.mAgrupadoPed.Delete;
        end;
      fNotaFiscalItens.mAgrupado.Delete;
    end;
end;

procedure TfBuscaTalao.VDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfBuscaTalao.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfBuscaTalao.RadioGroup2Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  case RadioGroup2.ItemIndex of
    0 : RxDBFilter1.Filter.Text := '(QtdRestante > 0) and ((Tipo = ''V'') or (Tipo = ''F'') or (Tipo is Null))';
    1 : RxDBFilter1.Filter.Text := '(QtdRestante > 0) and ((Tipo = ''A'') or (Tipo = ''N''))';
    2 : RxDBFilter1.Filter.Text := '(QtdRestante > 0) and (Tipo = ''R'')';
  end;
  RxDBFilter1.Active := True;
end;

procedure TfBuscaTalao.RadioGroup2Enter(Sender: TObject);
begin
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    ShowMessage('Já existe itens agrupados, não pode alterar o tipo');
end;

procedure TfBuscaTalao.SMDBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text          := tTalaoTalao.AsString;
  CurrencyEdit1.Value := tTalaoQtdRestante.AsFloat;
  Monta_Auxiliar;
end;

procedure TfBuscaTalao.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  mPedidoGrade.EmptyDataSet;
  Edit1.Clear;
end;

procedure TfBuscaTalao.BitBtn6Click(Sender: TObject);
begin
  tPedido.IndexFieldNames := 'Pedido';
  Agrupamento('I');
end;

end.
