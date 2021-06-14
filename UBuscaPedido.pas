unit UBuscaPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Buttons, RXLookup, Grids,
  DBGrids, RXDBCtrl, Db, DbTables, Mask, ToolEdit, CurrEdit, DBFilter, ALed, DBVGrids, MemTable, Variants, DBClient;

type
  TfBuscaPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    Label3: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    mPedidoGrade: TMemoryTable;
    mPedidoGradeTamanho: TStringField;
    mPedidoGradeQtd: TFloatField;
    mPedidoGradeQtdFaturado: TFloatField;
    mPedidoGradeQtdRestante: TFloatField;
    msPedidoGrade: TDataSource;
    mPedidoGradeCodGrade: TIntegerField;
    mPedidoGradePosicao: TIntegerField;
    mPedidoGradePedido: TIntegerField;
    mPedidoGradeItemPedido: TIntegerField;
    Label4: TLabel;
    Edit5: TEdit;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    tPedido: TTable;
    dsPedido: TDataSource;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
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
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoItemObsLote: TStringField;
    tPedidoItemNumOS: TStringField;
    tPedidoItemDtEmbarque: TDateField;
    tPedidoItemCodCia: TIntegerField;
    tPedidoItemDtReprogramacao: TDateField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tPedidolkNomeCliente: TStringField;
    tPedidoItemlkReferencia: TStringField;
    tPedidoItemlkCor: TStringField;
    RxDBFilter1: TRxDBFilter;
    RxDBFilter2: TRxDBFilter;
    tPedidoGrade: TTable;
    dsPedidoGrade: TDataSource;
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
    tPedidoGradelkTamanho: TStringField;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RadioGroup1: TRadioGroup;
    tPedidoItemFabrica: TStringField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoItemProducaoVenda: TStringField;
    tPedidoItemPosicao: TIntegerField;
    tPedidoItemTamanho: TStringField;
    tPedidoItemlkNomeProduto: TStringField;
    tPedidoPedidoCliente: TStringField;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    tPedidoFilial: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid1: TRxDBGrid;
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
    ALed1: TALed;
    Label6: TLabel;
    Label7: TLabel;
    ALed2: TALed;
    ALed3: TALed;
    Label8: TLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure RxDBGrid1CellClick(Column: TColumn);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5Exit(Sender: TObject);
    procedure RxDBGrid2CellClick(Column: TColumn);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
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
    procedure tPedidoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    vQtd : Real;
    vPreco : Real;
    vSomaTransf : Boolean;
    procedure Monta_Auxiliar;
    procedure Copia_Nota;
    procedure Copia_NotaItem;
    procedure Copia_Vale;
    procedure Copia_ValeItem;
    procedure Monta_Agrupado(Qtd : Real; Tipo : String);
    procedure Copia_AgrupadoNota;
    procedure Busca_Preco(CodProduto, CodCor : Integer; VlrUnitario : Real);
  public
    { Public declarations }
  end;

var
  fBuscaPedido: TfBuscaPedido;
  vPedido : integer;
   
implementation

uses UDM1, UEmissaoNotaFiscal, UNotaFiscalItens, UVale, UValeItens;

{$R *.DFM}

procedure TfBuscaPedido.Busca_Preco(CodProduto, CodCor : Integer; VlrUnitario : Real);
begin
  vPreco := 0;
  DM1.tNatOperacao.Locate('Codigo',DM1.tNotaFiscalCodNatOper.AsInteger,[loCaseInsensitive]);
  DM1.tProduto.Locate('Codigo',CodProduto,[loCaseInsensitive]);
  if VlrUnitario > 0 then
  begin
    vPreco := VlrUnitario;
    exit;
  end;

  if DM1.tProdutoProdMat.AsString = 'M' then
    vPreco := StrToFloat(FormatFloat('0.0000',VlrUnitario))
  else
  if DM1.tPedidoTipo.AsString = 'A' then
    if DM1.tGrupo.Locate('Codigo',DM1.tProdutoCodGrupo.AsInteger,[loCaseInsensitive]) then
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

procedure TfBuscaPedido.Monta_Agrupado(Qtd : Real; Tipo : String);
var
  vCodAgrupado : Integer;
  vQtdAux : Real;
  vNovo : Boolean;
begin
  //Dia 07/11/2006 foi feito para agrupar os itens ignorando a largura
  //if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario;Largura',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
  //   DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,DM1.tPedidoItemPercComissao.AsFloat,DM1.tPedidoItemPercComissao2.AsFloat,DM1.tPedidoItemPreco.AsFloat,DM1.tPedidoItemLargura.AsString]),[locaseinsensitive]) then
  vNovo := True;
  if CheckBox1.Checked then
    begin
      Busca_Preco(DM1.tPedidoItemCodProduto.AsInteger,99999,DM1.tPedidoItemPreco.AsFloat);
      if DM1.tParametrosTipoComissao.AsString = 'G' then
        begin
          //Dia 13/06/2007 foi criada a procedure Busca_Preco, para fazer o locate pela variável vPreco
          //if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodGrade;CodSitTrib;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,
          //   DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,DM1.tPedidoItemPreco.AsFloat]),[locaseinsensitive]) then
          if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodGrade;CodSitTrib;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,
             DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,vPreco]),[locaseinsensitive]) then
            begin
              vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger;
              fNotaFiscalItens.mAgrupado.Edit;
              vNovo := False;
            end
        end
      else
      //Dia 13/06/2007 foi criada a procedure Busca_Preco, para fazer o locate pela variável vPreco
      if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,
         DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,DM1.tPedidoItemPercComissao.AsFloat,DM1.tPedidoItemPercComissao2.AsFloat,vPreco]),[locaseinsensitive]) then
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
          if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
             DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,vPreco]),[locaseinsensitive]) then
            begin
              vCodAgrupado := fNotaFiscalItens.mAgrupadoCodAgrupado.AsInteger;
              fNotaFiscalItens.mAgrupado.Edit;
              vNovo := False;
            end
        end
      else
      //if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
      if fNotaFiscalItens.mAgrupado.Locate('CodProduto;CodCor;CodGrade;CodSitTrib;PercComissao1;PercComissao2;VlrUnitario',VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,
         DM1.tPedidoItemCodGrade.AsInteger,DM1.tPedidoItemSitTrib.AsInteger,DM1.tPedidoItemPercComissao.AsFloat,DM1.tPedidoItemPercComissao2.AsFloat,vPreco]),[locaseinsensitive]) then
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
  fNotaFiscalItens.mAgrupadoCodProduto.AsInteger  := DM1.tPedidoItemCodProduto.AsInteger;
  fNotaFiscalItens.mAgrupadoReferencia.AsString   := DM1.tPedidoItemlkReferencia.AsString;
  fNotaFiscalItens.mAgrupadoNomeProduto.AsString  := DM1.tPedidoItemlkNomeProduto.AsString;
  //mAgrupadoQtd.AsFloat           := mAgrupadoQtd.AsFloat + 111; //Ver
  //fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat   := DM1.tPedidoItemPreco.AsFloat;
  fNotaFiscalItens.mAgrupadoVlrUnitario.AsFloat   := vPreco;
  //fNotaFiscalItens.mAgrupadoLargura.AsString      := DM1.tPedidoItemLargura.AsString;
  fNotaFiscalItens.mAgrupadoUnidade.AsString      := DM1.tPedidoItemUnidade.AsString;
  fNotaFiscalItens.mAgrupadoCodSitTrib.AsInteger  := DM1.tPedidoItemSitTrib.AsInteger;
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

          fNotaFiscalItens.mAgrupadoPedGrade.Insert;
          fNotaFiscalItens.mAgrupadoPedGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoPedGradePedido.AsInteger      := DM1.tPedidoItemPedido.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeItem.AsInteger        := DM1.tPedidoItemItem.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeCodGrade.AsInteger    := mPedidoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradePosicao.AsInteger     := mPedidoGradePosicao.AsInteger;
          if mPedidoGradeQtdFaturado.AsFloat > 0 then
            fNotaFiscalItens.mAgrupadoPedGradeQtd.AsFloat         := mPedidoGradeQtdFaturado.AsFloat;
          fNotaFiscalItens.mAgrupadoPedGrade.Post;
          mPedidoGrade.Next;
        end;
    end
  else
    begin
      DM1.tPedidoGrade.First;
      while not DM1.tPedidoGrade.Eof do
        begin
          if fNotaFiscalItens.mAgrupadoGrade.Locate('CodAgrupado;CodGrade;Posicao',VarArrayOf([vCodAgrupado,DM1.tPedidoGradeCodGrade.AsInteger,DM1.tPedidoGradePosicao.AsInteger]),[locaseinsensitive]) then
            fNotaFiscalItens.mAgrupadoGrade.Edit
          else
            fNotaFiscalItens.mAgrupadoGrade.Insert;
          fNotaFiscalItens.mAgrupadoGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoGradeCodGrade.AsInteger    := DM1.tPedidoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoGradePosicao.AsInteger     := DM1.tPedidoGradePosicao.AsInteger;
          fNotaFiscalItens.mAgrupadoGradeTamanho.AsString      := DM1.tPedidoGradelkTamanho.AsString;
          if DM1.tPedidoGradeQtdParesRest.AsFloat > 0 then
            begin
              fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat := fNotaFiscalItens.mAgrupadoGradeQtd.AsFloat + DM1.tPedidoGradeQtdParesRest.AsFloat;
              vQtdAux := vQtdAux + DM1.tPedidoGradeQtdParesRest.AsFloat;
            end;
          fNotaFiscalItens.mAgrupadoGrade.Post;
          fNotaFiscalItens.mAgrupadoPedGrade.Insert;
          fNotaFiscalItens.mAgrupadoPedGradeCodAgrupado.AsInteger := vCodAgrupado;
          fNotaFiscalItens.mAgrupadoPedGradePedido.AsInteger      := DM1.tPedidoItemPedido.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeItem.AsInteger        := DM1.tPedidoItemItem.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradeCodGrade.AsInteger    := DM1.tPedidoGradeCodGrade.AsInteger;
          fNotaFiscalItens.mAgrupadoPedGradePosicao.AsInteger     := DM1.tPedidoGradePosicao.AsInteger;
          if DM1.tPedidoGradeQtdParesRest.AsFloat > 0 then
            fNotaFiscalItens.mAgrupadoPedGradeQtd.AsFloat         := DM1.tPedidoGradeQtdParesRest.AsFloat;
          fNotaFiscalItens.mAgrupadoPedGrade.Post;

          DM1.tPedidoGrade.Next;
        end;
    end;
  if vQtdAux = 0 then
    vQtdAux := Qtd;
  if not fNotaFiscalItens.mAgrupadoPed.Locate('CodAgrupado;Pedido;Item',VarArrayOf([vCodAgrupado,DM1.tPedidoItemPedido.AsInteger,DM1.tPedidoItemItem.AsInteger]),[locaseinsensitive]) then
    begin
      fNotaFiscalItens.mAgrupadoPed.Insert;
      fNotaFiscalItens.mAgrupadoPedCodAgrupado.AsInteger := vCodAgrupado;
      fNotaFiscalItens.mAgrupadoPedPedido.AsInteger      := DM1.tPedidoItemPedido.AsInteger;
      fNotaFiscalItens.mAgrupadoPedItem.AsInteger        := DM1.tPedidoItemItem.AsInteger;
      fNotaFiscalItens.mAgrupadoPedNumOC.AsString        := DM1.tPedidoPedidoCliente.AsString;
      fNotaFiscalItens.mAgrupadoPedNumOS.AsString        := DM1.tPedidoItemNumOS.AsString;
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
  mPedidoAgrPedido.AsInteger := DM1.tPedidoItemPedido.AsInteger;
  mPedidoAgrItem.AsInteger   := DM1.tPedidoItemItem.AsInteger;
  mPedidoAgr.Post;
end;

procedure TfBuscaPedido.Copia_AgrupadoNota;
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
//  fEmissaoNotaFiscal.DBRadioGroup2Change(fEmissaoNotaFiscal);
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
    end;
  fEmissaoNotaFiscal.vCodCombinacao := fNotaFiscalItens.mAgrupadoCodCombinacao.AsInteger;
  fNotaFiscalItens.Monta_SQLCombinacao;  

  if DM1.tProdutoCodClasFiscal.AsString <> '' then
    fNotaFiscalItens.RxDBLookupCombo5.Value := DM1.tProdutoCodClasFiscal.AsString;
  fNotaFiscalItens.RxDBLookupCombo7.Value      := fNotaFiscalItens.mAgrupadoUnidade.AsString;
  fNotaFiscalItens.CurrencyEdit3.Value := fNotaFiscalItens.mAgrupadoQtd.AsFloat;
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
  fNotaFiscalItens.BitBtn6Click(fNotaFiscalItens);
  if DM1.tNotaFiscalPrazoPgto.AsInteger <= 0 then
    DM1.tNotaFiscalPrazoPgto.AsInteger   := DM1.tPedidoCodCondPgto.AsInteger;
end;

procedure TfBuscaPedido.Copia_Nota;
var
  vAux, vTaxa : Real;
begin
  vTaxa := 1;
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
  DM1.tNatOperacao.IndexFieldNames    := 'Codigo';
  DM1.tNatOperacao.SetKey;
  DM1.tNatOperacaoCodigo.AsInteger    := DM1.tNotaFiscalCodNatOper.AsInteger;
  DM1.tNatOperacao.GotoKey;
  DM1.tNotaFiscalCodVendedor.AsInteger  := DM1.tPedidoCodVendedor.AsInteger;
  if DM1.tPedidoPercComissao.AsFloat > 0 then
    DM1.tNotaFiscalPercComissao.AsFloat  := DM1.tPedidoPercComissao.AsFloat;

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
  while not DM1.tPedidoItem.EOF do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      //if (DM1.tTalao.RecordCount > 0) or (DM1.tPedidoItemMateriaPrima.AsBoolean) then
        //begin
          //if not(DM1.tPedidoItemCopiado.AsBoolean) and (D1.tPedidoItemQtdParesRest.AsFloat > 0) then
          if (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
            begin
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
              while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
                fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;
              vNumPedido  := DM1.tPedidoItemPedido.AsInteger;
              vItemPedido := DM1.tPedidoItemItem.AsInteger;
              //fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tPedidoCodNatOper.AsInteger;
              if fNotaFiscalItens.SpeedButton17.Tag <= 0 then
                fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalCodNatOper.AsInteger;
              if DM1.tProdutoCodSitTrib.AsInteger > 0 then
                fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
              else
              if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
                fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger;
              DM1.tProduto.IndexFieldNames := 'Codigo';
              DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]);

              fNotaFiscalItens.CurrencyEdit6.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
              fNotaFiscalItens.RZDBLookupComboBox2.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
              fNotaFiscalItens.RzDBLookupComboBox1.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
              fNotaFiscalItens.Move_Itens;

              fNotaFiscalItens.RadioGroup1.ItemIndex := RadioGroup2.ItemIndex;

              if DM1.tPedidoItemCodCor.AsInteger > 0 then
                begin
                  fNotaFiscalItens.RxDBLookupCombo4.KeyValue := DM1.tPedidoItemCodCor.AsInteger;
                  fNotaFiscalItens.Abre_SQLCor;
                end;
              fEmissaoNotaFiscal.vCodCombinacao := DM1.tPedidoItemCodCombinacao.AsInteger;
              fNotaFiscalItens.Monta_SQLCombinacao;

              fNotaFiscalItens.RxDBLookupCombo7.Value := DM1.tPedidoItemUnidade.AsString;
              fNotaFiscalItens.CurrencyEdit3.Value    := DM1.tPedidoItemQtdParesRest.AsFloat;
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
              DM1.tPedidoGrade.First;
              while not DM1.tPedidoGrade.Eof do
                begin
                  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
                  fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := DM1.tPedidoGradeCodGrade.AsInteger;
                  fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := DM1.tPedidoGradePosicao.AsInteger;
                  fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := DM1.tPedidoGradeQtdParesRest.AsFloat;
                  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
                  DM1.tPedidoGrade.Next;
                end;
              fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
              fNotaFiscalItens.BitBtn6Click(fNotaFiscalItens);
            end;
        //end
      //else
        //ShowMessage('Item ' + DM1.tPedidoItemItem.AsString + ' do pedido não foi copiado para a nota pois não possui talão!');
      DM1.tPedidoItem.Next;
    end;
  if DM1.tNotaFiscalPrazoPgto.AsInteger <= 0 then
    DM1.tNotaFiscalPrazoPgto.AsInteger := DM1.tPedidoCodCondPgto.AsInteger;
end;

procedure TfBuscaPedido.Copia_NotaItem;
begin
  vNumPedido  := DM1.tPedidoPedido.AsInteger;
  vItemPedido := DM1.tPedidoItemItem.AsInteger;
  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
  while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Delete;

  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]);

  if fNotaFiscalItens.SpeedButton17.Tag <= 0 then
    fNotaFiscalItens.RxDBLookupCombo15.KeyValue := DM1.tNotaFiscalCodNatOper.AsInteger;
  fNotaFiscalItens.CurrencyEdit6.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
  fNotaFiscalItens.RZDBLookupComboBox2.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
  fNotaFiscalItens.RzDBLookupComboBox1.KeyValue  := DM1.tPedidoItemCodProduto.AsInteger;
  fNotaFiscalItens.Move_Itens;

  fNotaFiscalItens.RadioGroup1.ItemIndex := RadioGroup2.ItemIndex;

  fNotaFiscalItens.RxDBLookupCombo4.Value := DM1.tPedidoItemCodCor.AsString;
  fNotaFiscalItens.Abre_SQLCor;

  fEmissaoNotaFiscal.vCodCombinacao := DM1.tPedidoItemCodCombinacao.AsInteger;
  fNotaFiscalItens.Monta_SQLCombinacao;

  fNotaFiscalItens.RxDBLookupCombo7.Value := DM1.tPedidoItemUnidade.AsString;
  fNotaFiscalItens.CheckBox2.Checked := True;

  if (DM1.tPedidoItemCodGrade.AsInteger > 0) and (DM1.tPedidoItemPosicao.AsInteger < 1) then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
      fEmissaoNotaFiscal.SpeedButton23.Tag := 2;
      mPedidoGrade.First;
      while not mPedidoGrade.Eof do
        begin
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger := mPedidoGradeCodGrade.AsInteger;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger  := mPedidoGradePosicao.AsInteger;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat        := 0;
          if mPedidoGradeQtdFaturado.AsFloat > 0 then
            begin
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat    := mPedidoGradeQtdFaturado.AsFloat;
              vQtd                                                 := vQtd + mPedidoGradeQtdFaturado.AsFloat;
            end;
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
          mPedidoGrade.Delete;
        end;
      fEmissaoNotaFiscal.SpeedButton23.Tag := 0;
    end
  else
    vQtd   := CurrencyEdit1.Value;
  fNotaFiscalItens.CurrencyEdit3.Value := vQtd;

  //Busca preço
  Busca_Preco(DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemPreco.AsFloat);
  fNotaFiscalItens.CurrencyEdit4.Value := vPreco;
  fNotaFiscalItens.CurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',fNotaFiscalItens.CurrencyEdit3.Value * fNotaFiscalItens.CurrencyEdit4.Value));
  if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
    begin
      DM1.tSitTributaria.IndexFieldNames := 'Codigo';
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
      if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
        fNotaFiscalItens.Edit4.Clear;
    end;
  fNotaFiscalItens.CheckBox2.Checked := True;
  fNotaFiscalItens.CheckBox1.Checked := vSomaTransf;
  fNotaFiscalItens.BitBtn6.Click;
end;

procedure TfBuscaPedido.Copia_Vale;
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

procedure TfBuscaPedido.Copia_ValeItem;
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
  fValeItens.Edit1.Text          := '';
  fValeItens.CurrencyEdit4.Value := DM1.tPedidoItemPreco.AsFloat;
  fValeItens.CurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',fValeItens.CurrencyEdit3.Value * DM1.tPedidoItemPreco.AsFloat));
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

procedure TfBuscaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BitBtn2Click(Sender);
  tPedido.Filtered   := False;
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tPedido.IndexFieldNames  := 'Pedido';
  Action := CaFree;
end;

procedure TfBuscaPedido.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfBuscaPedido.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  tPedido.Filtered   := False;
  RxDBFilter1.Active := True;
  RxDBFilter2.Active := True;
  if RadioGroup1.ItemIndex = 0 then
    begin
      if fEmissaoNotaFiscal.RxDBLookupCombo8.Text <> '' then
        begin
          tPedido.Filter   := 'CodCliente = ' + QuotedStr(IntToStr(fEmissaoNotaFiscal.RxDBLookupCombo8.KeyValue)) + ' and Filial = ''' + IntToStr(Dm1.tNotaFiscalFilial.AsInteger)+'''';
          tPedido.Filtered := True;
        end;
    end
  else
    begin
      if fVale.RxDBLookupCombo8.Text <> '' then
        begin
          tPedido.Filter   := 'CodCliente = ' + QuotedStr(IntToStr(fVale.RxDBLookupCombo8.KeyValue)) + ' and Filial = ''' + IntToStr(Dm1.tNotaFiscalFilial.AsInteger)+'''';
          tPedido.Filtered := True;
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

procedure TfBuscaPedido.BitBtn2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit3.Clear;
  Edit5.Clear;
  Edit3.SetFocus;
  CheckBox1.Checked := False;

  /// DESABILITADO PELO BOCA ATÉ FAZER O AGRUPAMENTO "QUANDO CHAMA DO VALE DA ERRO" 
{  fNotaFiscalItens.mAgrupado.First;
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
  mPedidoAgr.EmptyTable;}
end;

procedure TfBuscaPedido.BitBtn1Click(Sender: TObject);
var
  vCorreto : Boolean;
  vCopiar : Boolean;
begin
  vCopiar := False;
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    ShowMessage('Não pode copiar o item do pedido, existe pedido agrupado!')
  else
    begin
      tPedido.IndexFieldNames := 'Pedido';
      if (Edit3.Text <> '') and (Edit1.Text <> '') then
        begin
          vCopiar := True;
          tPedido.SetKey;
          tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger; 
          if tPedido.GotoKey then
            begin
              DM1.tNotaFiscal.Edit;
              tPedidoItem.SetKey;
              tPedidoItemPedido.AsInteger := tPedidoPedido.AsInteger;
              tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
              if tPedidoItem.GotoKey = False then
                begin
                  vCopiar := False;
                  ShowMessage('Item do pedido não cadastrado ou já faturado!');
                  Edit5.Text := '';
                  Edit1.Text := '';
                  CurrencyEdit1.Clear;
                end;
            end
          else
            begin
              vCopiar := False;
              ShowMessage('Pedido não cadastrado ou já faturado!');
              Edit3.Text := '';
            end;
        end;
    end;

  if vCopiar then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      vNumPedido  := 0;
      vItemPedido := 0;
      vQtd        := 0;
      vCorreto    := True;
      if (Edit3.Text <> '') and (Edit1.Text <> '') then
        begin
          if Edit1.Text = ''  then
            ShowMessage('Campo em branco!')
          else
          if MessageDlg('Deseja copiar o pedido ' + Edit3.Text + ' item ' + Edit1.Text + ' para a nota?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              vSomaTransf := False;
              //if MessageDlg('Com transferência de ICMS?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
              //  vSomaTransf := True;
              if (tPedidoItemCodGrade.AsInteger > 0) and (tPedidoItemPosicao.AsInteger < 1) then
                begin
                  mPedidoGrade.First;
                  while not mPedidoGrade.Eof do
                    begin
                      if mPedidoGradeQtdFaturado.AsFloat > mPedidoGradeQtdRestante.AsFloat then
                        vCorreto := False;
                      if vQtd < 1 then
                        vQtd := mPedidoGradeQtdFaturado.AsFloat;
                      mPedidoGrade.Next;
                    end;
                  if vQtd < 1 then
                    vCorreto := False;
                  vQtd := 0;
                end;
              if vCorreto then
                begin
                  DM1.tPedido.SetKey;
                  DM1.tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
                  if DM1.tPedido.GotoKey = False then
                    ShowMessage('Pedido não cadastrado!')
                  else
                  if DM1.tPedidoCancelado.AsBoolean then
                    ShowMessage('Este pedido foi cancelado!')
                  else
                  if DM1.tPedidoQtdParesRest.AsFloat <= 0 then
                    ShowMessage('Este pedido já foi faturado!')
                  else
                    begin
                      DM1.tPedidoItem.SetKey;
                      DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
                      if DM1.tPedidoItem.GotoKey = False then
                        begin
                          ShowMessage('Item não cadastrado!');
                          BitBtn2Click(Sender);
                        end
                      else
                      if DM1.tPedidoItemQtdPares.AsFloat <= 0 then
                        ShowMessage('Item está cancelado!')
                      else
                      if DM1.tPedidoItemQtdParesRest.AsFloat <= 0 then
                        ShowMessage('Item já foi faturado!')
                      //else
                      //if (DM1.tTalao.RecordCount < 1) and not(DM1.tPedidoItemMateriaPrima.AsBoolean)then
                      //  ShowMessage('Item ' + DM1.tPedidoItemItem.AsString + ' do pedido não vai ser copiado para a nota pois não possui talão!')
                      else
                      //if (DM1.tPedidoItemCopiado.AsBoolean) then
                      //  ShowMessage('Já foi copiado este item!')
                      //else
                        begin
                          if RadioGroup1.ItemIndex = 0 then
                            Copia_NotaItem
                          else
                            Copia_ValeItem;
                        end;
                    end;
                end
              else
                ShowMessage('Não pode ser confirmado pois a qtd. para ser faturada é maior que a disponível!');
            end;
        end;
      Edit1.Clear;
      Edit5.Clear;
      Edit3.SetFocus;
      CurrencyEdit1.Clear;
      tPedido.Refresh;
      tPedidoItem.Refresh;
      tPedidoGrade.Refresh;
    end;
end;

procedure TfBuscaPedido.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (tPedidoQtdParesFat.AsFloat > 0) and (tPedidoQtdParesRest.AsFloat <= 0) then
    Background  := clTeal;
  if tPedidoCancelado.AsBoolean then
    Background  := clRed;
end;

procedure TfBuscaPedido.BitBtn4Click(Sender: TObject);
var
  vCopiar : Boolean;

begin
  vCopiar := False;
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    ShowMessage('Não pode copiar o pedido, existe pedido agrupado!')
  else
    begin
      tPedido.IndexFieldNames := 'Pedido';
      if (Edit3.Text <> '') then
        begin
          vCopiar := True;
          tPedido.SetKey;
          tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
          if tPedido.GotoKey = False then
            begin
              DM1.tNotaFiscal.Edit;
              vCopiar := False;
              ShowMessage('Pedido não cadastrado ou já faturado!');
              Edit3.Text := '';
            end;
        end;
    end;

  if vCopiar then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      vItemPedido := 0;
      if (Edit3.Text <> '') and ((Edit1.Text <> '') or (Edit5.Text <> '')) then
        begin
          ShowMessage('Para copiar o pedido integral, não pode ter item marcado ou Nº da OS!');
          Edit5.SetFocus;
        end
      else
      if Edit3.Text <> '' then
        begin
          if MessageDlg('Deseja copiar o pedido ' + Edit3.Text + ' para a nota?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              vSomaTransf := False;
              if not(DM1.tFilialSimples.AsBoolean) and not(DM1.tFilialSimplesGaucho.AsBoolean) then
                if MessageDlg('Com transferência de ICMS?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
                  vSomaTransf := True;
              DM1.tPedido.SetKey;
              DM1.tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
              if DM1.tPedido.GotoKey then
                begin
                  DM1.tNotaFiscal.Edit;
                  if DM1.tPedidoCancelado.AsBoolean then
                    ShowMessage('Este pedido está cancelado!')
                  else
                  //if (DM1.tPedidoCopiado.AsBoolean = False) or (DM1.tPedidoQtdParesRest.AsFloat > 0)then
                  Label11.Visible      := True;
                  Label11.Refresh;
                  ProgressBar1.Visible := True;
                  ProgressBar1.Max     := DM1.tPedidoItem.RecordCount;
                  if DM1.tPedidoQtdParesRest.AsFloat > 0 then
                    begin
                      if RadioGroup1.ItemIndex = 0 then
                        Copia_Nota
                      else
                        Copia_Vale;
                    end
                  else
                   ShowMessage('Este pedido já foi copiado!');
                end;
            end;
        end;
      Close;
    end;
end;

procedure TfBuscaPedido.Monta_Auxiliar;
begin
  mPedidoGrade.EmptyTable;
  tPedidoGrade.First;
  while not tPedidoGrade.Eof do
    begin
      mPedidoGrade.Insert;
      mPedidoGradePedido.AsInteger     := tPedidoGradePedido.AsInteger;
      mPedidoGradeItemPedido.AsInteger := tPedidoGradeItemPed.AsInteger;
      mPedidoGradeCodGrade.AsInteger   := tPedidoGradeCodGrade.AsInteger;
      mPedidoGradePosicao.AsInteger    := tPedidoGradePosicao.AsInteger;
      mPedidoGradeQtd.AsFloat          := tPedidoGradeQtd.AsFloat;
      mPedidoGradeQtdFaturado.AsFloat  := tPedidoGradeQtdParesRest.AsFloat;
      mPedidoGradeQtdRestante.AsFloat  := tPedidoGradeQtdParesRest.AsFloat;
      mPedidoGradeTamanho.AsString     := tPedidoGradelkTamanho.AsString;
      mPedidoGrade.Post;
      tPedidoGrade.Next;
    end;
  mPedidoGrade.First;
end;

procedure TfBuscaPedido.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit3.Text <> '') then
    begin
      tPedidoItem.SetKey;
      tPedidoItemPedido.AsInteger := tPedidoPedido.AsInteger;
      tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
      if tPedidoItem.GotoKey then
        Monta_Auxiliar
      else
        begin
          ShowMessage('Item não cadastrado!');
          mPedidoGrade.EmptyTable;
          Edit1.SetFocus;
        end;
      BitBtn1.SetFocus;
    end;
  if (Edit5.Text = '') and (Edit1.Text = '') and (Edit3.Text <> '') then
    BitBtn4.SetFocus;
end;

procedure TfBuscaPedido.RxDBGrid1CellClick(Column: TColumn);
begin
  Edit3.Text := tPedidoPedidoCliente.AsString;
  Edit1.Text := tPedidoItemItem.AsString;
  Edit5.Text := tPedidoItemNumOS.AsString;
  CurrencyEdit1.Value := tPedidoItemQtdParesRest.AsFloat;
  CurrencyEdit2.Value := tPedidoItemPedido.AsInteger;
  Monta_Auxiliar;
end;

procedure TfBuscaPedido.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  mPedidoGrade.EmptyTable;
  Edit1.Clear;
end;

procedure TfBuscaPedido.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
    begin
      tPedido.IndexFieldNames       := 'PedidoCliente';
      tPedido.FindKey([Edit3.Text]);
      if tPedidoPedidoCliente.AsString = Edit3.Text then
        CurrencyEdit2.Value := tPedidoPedido.AsInteger
      else
        CurrencyEdit2.Clear;
    end;
end;

procedure TfBuscaPedido.Edit5Exit(Sender: TObject);
begin
  if (Edit3.Text <> '') and (Edit5.Text <> '') then
    begin
      if tPedidoItem.Locate('Pedido;NumOS',VarArrayOf([tPedidoPedido.AsInteger,Edit5.Text]),[locaseinsensitive]) then
        begin
          Edit1.Text := tPedidoItemItem.AsString;
          Edit1Exit(Sender);
          BitBtn1.SetFocus;
        end
      else
        begin
          ShowMessage('OS não encontrada!');
          Edit5.SelectAll;
        end;
    end;
end;

procedure TfBuscaPedido.RxDBGrid2CellClick(Column: TColumn);
begin
  Edit3.Text              := tPedidoPedidoCliente.AsString;
  CurrencyEdit2.AsInteger := tPedidoPedido.AsInteger;
end;

procedure TfBuscaPedido.BitBtn7Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    begin
      vSomaTransf := False;
      if MessageDlg('Com transferência de ICMS?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        vSomaTransf := True;
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

procedure TfBuscaPedido.BitBtn5Click(Sender: TObject);
var
  vCopiar : Boolean;
begin
  vCopiar := False;
  tPedido.IndexFieldNames := 'Pedido';
  if (Edit3.Text <> '') then
    begin
      vCopiar := True;
      tPedido.SetKey;
      tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
      if tPedido.GotoKey = False then
        begin
          DM1.tNotaFiscal.Edit;
          vCopiar := False;
          ShowMessage('Pedido não cadastrado ou já faturado!');
        end;
    end;

  if vCopiar then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      vItemPedido := 0;
      if (Edit3.Text <> '') and ((Edit1.Text <> '') or (Edit5.Text <> '')) then
        begin
          ShowMessage('Para copiar o pedido integral, não pode ter item marcado ou Nº da OS!');
          Edit5.SetFocus;
        end
      else
      if Edit3.Text <> '' then
        begin
          if MessageDlg('Deseja Agrupar o pedido ' + Edit3.Text + ' para a nota?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              DM1.tPedido.SetKey;
              DM1.tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
              if DM1.tPedido.GotoKey then
                begin
                  if DM1.tPedidoCancelado.AsBoolean then
                    ShowMessage('Este pedido está cancelado!')
                  else
                  if DM1.tPedidoQtdParesRest.AsFloat > 0 then
                    begin
                      DM1.tPedidoItem.First;
                      while not DM1.tPedidoItem.Eof do
                        begin
                          if (DM1.tTalao.RecordCount > 0) or (DM1.tPedidoItemMateriaPrima.AsBoolean) then
                            begin
                              if not mPedidoAgr.Locate('Pedido;Item',VarArrayOf([DM1.tPedidoItemPedido.AsInteger,DM1.tPedidoItemItem.AsInteger]),[locaseinsensitive]) then
                                begin
                                  if not(DM1.tPedidoItemCancelado.AsBoolean) and (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
                                    Monta_Agrupado(DM1.tPedidoItemQtdParesRest.AsFloat,'P')
                                end
                              else
                                begin
                                  ShowMessage('Pedido ' + DM1.tPedidoItemPedido.AsString + ' item ' + DM1.tPedidoItemItem.AsString + ' já foi copiado!');
                                  DM1.tPedidoItem.Last;
                                end;
                            end
                          else
                            begin
                              ShowMessage('Item do Ped.: ' + DM1.tPedidoItemItem.AsString + ' não vai copiar para a nota pois não possui talões gerados!');
                              DM1.tPedidoItem.Last;
                            end;
                          DM1.tPedidoItem.Next;
                        end;
                    end;
                end;
            end;
        end;
    end;
  Edit1.Clear;
  Edit3.Clear;
  Edit5.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
end;

procedure TfBuscaPedido.BitBtn6Click(Sender: TObject);
var
  vCopiar  : Boolean;
  vCorreto : Boolean;
begin
  vCopiar := False;
  tPedido.IndexFieldNames := 'Pedido';
  if (Edit3.Text <> '') and (Edit1.Text <> '') then
    begin
      vCopiar := True;
      tPedido.SetKey;
      tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
      if tPedido.GotoKey then
        begin
          DM1.tNotaFiscal.Edit;
          tPedidoItem.SetKey;
          tPedidoItemPedido.AsInteger := tPedidoPedido.AsInteger;
          tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
          if tPedidoItem.GotoKey = False then
            begin
              vCopiar := False;
              ShowMessage('Item do pedido não cadastrado ou já faturado!');
              Edit5.Text := '';
              Edit1.Text := '';
              CurrencyEdit1.Clear;
            end;
        end
      else
        begin
          vCopiar := False;
          ShowMessage('Pedido não cadastrado ou já faturado!');
          Edit3.Text := '';
        end;
    end;

  if vCopiar then
    begin
      vQtd := 0;
      DM1.tPedido.IndexFieldNames := 'Pedido';
      vCorreto    := True;
      if (Edit3.Text <> '') and (Edit1.Text <> '') then
        begin
          if Edit1.Text = ''  then
            ShowMessage('Campo em branco!')
          else
          if MessageDlg('Deseja agrupar o pedido ' + Edit3.Text + ' item ' + Edit1.Text + ' para a nota?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              if (tPedidoItemCodGrade.AsInteger > 0) and (tPedidoItemPosicao.AsInteger < 1) then
                begin
                  mPedidoGrade.First;
                  while not mPedidoGrade.Eof do
                    begin
                      if mPedidoGradeQtdFaturado.AsFloat > mPedidoGradeQtdRestante.AsFloat then
                        vCorreto := False;
                      if vQtd < 1 then
                        vQtd := mPedidoGradeQtdFaturado.AsFloat;
                      mPedidoGrade.Next;
                    end;
                  if vQtd < 1 then
                    vCorreto := False;
                  vQtd := 0;
                end;
              if vCorreto then
                begin
                  DM1.tPedido.SetKey;
                  DM1.tPedidoPedido.AsInteger := CurrencyEdit2.AsInteger;
                  if DM1.tPedido.GotoKey = False then
                    ShowMessage('Pedido não cadastrado!')
                  else
                  if DM1.tPedidoCancelado.AsBoolean then
                    ShowMessage('Este Pedido foi cancelado!')
                  else
                  if DM1.tPedidoQtdParesRest.AsFloat <= 0 then
                    ShowMessage('Este Pedido já foi faturado!')
                  else
                    begin
                      DM1.tPedidoItem.SetKey;
                      DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
                      DM1.tPedidoItemItem.AsInteger   := StrToInt(Edit1.Text);
                      if DM1.tPedidoItem.GotoKey = False then
                        begin
                          ShowMessage('Item não cadastrado!');
                          BitBtn2Click(Sender);
                        end
                      else
                      if DM1.tPedidoItemQtdPares.AsFloat <= 0 then
                        ShowMessage('Item está cancelado!')
                      else
                      if DM1.tPedidoItemQtdParesRest.AsFloat <= 0 then
                        ShowMessage('Item já foi faturado!')
                      else
                      if DM1.tTalao.RecordCount > 0 then
                        begin
                          if not mPedidoAgr.Locate('Pedido;Item',VarArrayOf([DM1.tPedidoItemPedido.AsInteger,DM1.tPedidoItemItem.AsInteger]),[locaseinsensitive]) then
                            begin
                              if not(DM1.tPedidoItemCancelado.AsBoolean) and (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
                                Monta_Agrupado(CurrencyEdit1.Value,'I');
                            end
                          else
                            ShowMessage('Pedido ' + DM1.tPedidoItemPedido.AsString + ' item ' + DM1.tPedidoItemItem.AsString + ' já foi copiado!');
                        end
                      else
                        ShowMessage('Item Ped. ' + DM1.tPedidoItemItem.AsString + ' não vai copiar para a nota pois não possui talões gerados!');
                    end;
                end
              else
                ShowMessage('Não pode ser confirmado pois a qtd. para ser faturada é maior que a disponível!');
            end;
        end;
      Edit1.Clear;
      Edit5.Clear;
      Edit3.SetFocus;
      CurrencyEdit1.Clear;
      tPedido.Refresh;
      tPedidoItem.Refresh;
      tPedidoGrade.Refresh;
    end;
end;

procedure TfBuscaPedido.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfBuscaPedido.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfBuscaPedido.VDBGrid2Enter(Sender: TObject);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

procedure TfBuscaPedido.VDBGrid2CellClick(Column: TColumn);
begin
 if vDBGrid2.SelectedIndex = 0 then
   vDBGrid2.SelectedIndex := 1;
end;

procedure TfBuscaPedido.SpeedButton9Click(Sender: TObject);
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

procedure TfBuscaPedido.VDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfBuscaPedido.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfBuscaPedido.RadioGroup2Click(Sender: TObject);
begin
  RxDBFilter1.Active := False;
  case RadioGroup2.ItemIndex of
    0 : RxDBFilter1.Filter.Text := '(QtdParesRest > 0) and ((Tipo = ''V'') or (Tipo = ''F''))';
    1 : RxDBFilter1.Filter.Text := '(QtdParesRest > 0) and ((Tipo = ''A'') or (Tipo = ''N''))';
    2 : RxDBFilter1.Filter.Text := '(QtdParesRest > 0) and (Tipo = ''R'')';
  end;
  RxDBFilter1.Active := True;
end;

procedure TfBuscaPedido.RadioGroup2Enter(Sender: TObject);
begin
  if fNotaFiscalItens.mAgrupado.RecordCount > 0 then
    begin
      ShowMessage('Já existem itens agrupados, não pode alterar o tipo!');
      Edit3.SetFocus;
    end;
end;

procedure TfBuscaPedido.tPedidoAfterScroll(DataSet: TDataSet);
begin
  Edit3.Text              := tPedidoPedidoCliente.AsString;
  CurrencyEdit2.AsInteger := tPedidoPedido.AsInteger;
end;

end.
