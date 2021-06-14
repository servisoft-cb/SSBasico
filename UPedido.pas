unit UPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit,
  CurrEdit, ComCtrls, Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, MemTable, Menus, RXCtrls, DBFilter, ALed, RxDBComb, Variants,
  SMDBGrid;

type
  TfPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    Label5: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    DBDateEdit1: TDBDateEdit;
    tAuxPedidoGrade: TTable;
    dsAuxPedidoGrade: TDataSource;
    Label9: TLabel;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    tAuxPedidoGradeCodGrade: TIntegerField;
    tAuxPedidoGradePosicao: TIntegerField;
    tAuxPedidoGradeQtd: TFloatField;
    tAuxPedidoGradeVlrUnitario: TFloatField;
    tAuxPedidoGradeVlrTotal: TFloatField;
    tAuxPedidoGradelkTamanho: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    RxSpeedButton2: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Panel8: TPanel;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    tAuxPedidoMat: TTable;
    dsAuxPedidoMat: TDataSource;
    tAuxPedidoMatItem: TIntegerField;
    tAuxPedidoMatCodCor: TIntegerField;
    tAuxPedidoMatCodMaterial: TIntegerField;
    tAuxPedidoMatConsumoPr: TFloatField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label18: TLabel;
    RxDBFilter1: TRxDBFilter;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn18: TBitBtn;
    Label19: TLabel;
    BitBtn13: TBitBtn;
    tAuxPedidoGradePedido: TIntegerField;
    tAuxPedidoMatPedido: TIntegerField;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo9: TRxDBLookupCombo;
    tAuxPedidoMatImpTalao: TStringField;
    tAuxPedidoMatTipoConsumo: TStringField;
    tAuxPedMatCons: TTable;
    tAuxPedMatConsPedido: TIntegerField;
    tAuxPedMatConsItem: TIntegerField;
    tAuxPedMatConsCodGrade: TIntegerField;
    tAuxPedMatConsPosicao: TIntegerField;
    tAuxPedMatConsConsumo: TFloatField;
    RadioGroup2: TRadioGroup;
    StaticText1: TStaticText;
    BitBtn14: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn9: TBitBtn;
    SpeedButton5: TSpeedButton;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label28: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RadioGroup3: TRadioGroup;
    qTalaoAux: TQuery;
    qTalaoAuxPedido: TIntegerField;
    qTalaoAuxItemPedido: TIntegerField;
    tAuxPedMatConsTamanhoMat: TStringField;
    BitBtn7: TBitBtn;
    qTotalGrade: TQuery;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    RxDBFilter2: TRxDBFilter;
    qConferePed: TQuery;
    qConferePedPedido: TIntegerField;
    qConferePedItem: TIntegerField;
    BitBtn11: TBitBtn;
    BitBtn8: TBitBtn;
    RxDBFilter3: TRxDBFilter;
    Label14: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    Label29: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    ImprimirNovo1: TMenuItem;
    ckDtEntrega: TCheckBox;
    ckVendedor: TCheckBox;
    Panel10: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    RxDBGrid1: TRxDBGrid;
    Panel9: TPanel;
    Label39: TLabel;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    RxLabel1: TRxLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    SpeedButton4: TSpeedButton;
    DBMemo1: TDBMemo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    TabSheet3: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBText8: TDBText;
    DBText5: TDBText;
    Label26: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label27: TLabel;
    DBText6: TDBText;
    StaticText13: TStaticText;
    DBEdit9: TDBEdit;
    StaticText14: TStaticText;
    DBEdit10: TDBEdit;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    BitBtn15: TBitBtn;
    Label30: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText7: TDBText;
    DBText2: TDBText;
    ckVlrFabrica: TCheckBox;
    Label36: TLabel;
    DBText12: TDBText;
    Label37: TLabel;
    DBText13: TDBText;
    BitBtn10: TBitBtn;
    SpeedButton3: TSpeedButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel11: TPanel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    SpeedButton7: TSpeedButton;
    Label31: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label38: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label40: TLabel;
    DBDateEdit5: TDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure tAuxPedidoGradeBeforeInsert(DataSet: TDataSet);
    procedure GroupBox2Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn13Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn10Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure p(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Enter(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo9CloseUp(Sender: TObject);
    procedure RxDBLookupCombo9DropDown(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBRadioGroup2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn14Enter(Sender: TObject);
    procedure BitBtn16Enter(Sender: TObject);
    procedure BitBtn9Enter(Sender: TObject);
    procedure BitBtn7Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure RxDBLookupCombo7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure Panel11Exit(Sender: TObject);
    procedure RxDBComboBox1Exit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure ImprimirNovo1Click(Sender: TObject);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    vGravaPed : Boolean;
    vContComissao : Boolean;
    procedure Habilita;
    procedure Grava_Material;
    procedure Verifica_Pedido;
    procedure Busca_CondPagamento;
    procedure Excluir_Registro;
    procedure Configurar_Grid;
    procedure Chamar_Cliente(Codigo, Tipo : Integer); //Tipo é o número do RxDBLookpcombo
    function Posiciona_Cliente(CodCliente : Integer) : Boolean;
    { Private declarations }
  public
    vCodCombinacao : Integer;
    procedure Calc_desc_Item;
    procedure Calc_Vlr_Pedido;
    procedure Atualiza_Materiais;
    { Public declarations }
  end;

var
  fPedido: TfPedido;
  vValorParcelaTot, TextoTam: String;
  vValorParcelas: Currency;
  Obs  : Array [1..5] of String[75];
  //vCancItem : String[1];
  T, Cor, vControle, vItem : Integer;
  vDescMat : String;
  vDtReprogramacao, vDtEmbarque : TDateTime;
  vCodSitTrib : Integer;
  vReprogramacao : Boolean;

implementation

uses UGrupos, UDM1, UCliente, UGrade, UCondPgto, UTransp, UMaterial, UPedidoGrade, UVendedor, UNatOperacao, UPedidoMat, UDM2, Math, 
  UPedidoDesconto, URelPedido, Printers, UCopiaPedidos, UEscImpressora, UProduto, UConsPedido, USitTributaria, UConsPedidoNota,
  UDtReprog, UPedidoItem, UTabPreco, UPedidoItemCanc, UDMMovPedido,
  uRelPedido3;

{$R *.DFM}

procedure TfPedido.Excluir_Registro;
begin
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
  begin
    DM1.tPedidoGrade.First;
    while not DM1.tPedidoGrade.Eof do
      DM1.tPedidoGrade.Delete;
    DM1.tPedidoMaterial.First;
    while not DM1.tPedidoMaterial.Eof do
    begin
      DM1.tPedidoConsumo.First;
      while not DM1.tPedidoConsumo.Eof do
        DM1.tPedidoConsumo.Delete;
      DM1.tPedidoMaterial.Delete;
    end;

    if DM1.tParametrosMovPedidoPorItem.AsBoolean then
      if DM1.tParametrosControlePedidoMov.AsBoolean then
        DMMovPedido.Excluir_MovPedido(DM1.tPedidoItemPedido.AsInteger,DM1.tPedidoItemItem.AsInteger);

    DM1.tPedidoItem.Delete;
  end;
  if not DM1.tParametrosMovPedidoPorItem.AsBoolean then
    if DM1.tParametrosControlePedidoMov.AsBoolean then
      DMMovPedido.Excluir_MovPedido(DM1.tPedidoPedido.AsInteger,0);

  DM1.tPedidoDesconto.First;
  while not DM1.tPedidoDesconto.Eof do
    DM1.tPedidoDesconto.Delete;
  DM1.tPedido.Delete;
  DM1.tPedido.Refresh;
end;

procedure TfPedido.Busca_CondPagamento;
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.SetKey;
  DM1.tClienteCodigo.AsInteger := DM1.tPedidoCodCliente.AsInteger;
  if DM1.tCliente.GotoKey then
    DM1.tPedidoCodCondPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger
  else
    DM1.tPedidoCodCondPgto.AsInteger := 0;
end;

procedure TfPedido.Atualiza_Materiais;
var
  vItemAux : Integer;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := DM1.tPedidoItemCodProduto.AsInteger;
  if DM1.tProduto.GotoKey then
    begin
      DM1.tProdutoComb.Filtered := False;
      vItemAux := 0;
      DM1.tPedidoMaterial.First;
      while not DM1.tPedidoMaterial.Eof do
        begin
          DM1.tPedidoConsumo.First;
          while not DM1.tPedidoConsumo.Eof do
            DM1.tPedidoConsumo.Delete;
          DM1.tPedidoMaterial.Delete;
        end;
      if DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemCodCombinacao.AsInteger]),[locaseinsensitive]) then
        begin
          DM1.tPedidoMaterial.Refresh;
          DM1.tProdutoMat.First;
          while not DM1.tProdutoMat.Eof do
            begin
              inc(vItemAux);
              DM1.tPedidoMaterial.Refresh;
              DM1.tPedidoMaterial.Insert;
              DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
              DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
              DM1.tPedidoMaterialOrdem.AsInteger       := vItemAux;
              DM1.tPedidoMaterialCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
              DM1.tPedidoMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
              DM1.tPedidoMaterialConsumoPr.AsFloat     := DM1.tProdutoMatQtd.AsFloat;
              DM1.tPedidoMaterialImpTalao.AsString     := DM1.tProdutoMatImpTalao.AsString;
              DM1.tPedidoMaterialTipoConsumo.AsString  := DM1.tProdutoMatConsumo.AsString;
              if DM1.tProdutoMatConsumo.AsString = 'T' then
                begin
                  DM1.tProdutoConsumo.SetKey;
                  DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoMatCodProduto.AsInteger;
                  DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoMatCodCorProd.AsInteger;
                  DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
                  DM1.tProdutoConsumoCodGrade.AsInteger      := DM1.tPedidoItemCodGrade.AsInteger;
                  if DM1.tProdutoConsumo.GotoKey then
                    begin
                      DM1.tProdutoConsumoItem.First;
                      while not DM1.tProdutoConsumoItem.Eof do
                        begin
                          DM1.tPedidoConsumo.Insert;
                          DM1.tPedidoConsumoPedido.AsInteger    := DM1.tPedidoPedido.AsInteger;
                          DM1.tPedidoConsumoItemPed.AsInteger   := DM1.tPedidoItemItem.AsInteger;
                          DM1.tPedidoConsumoOrdem.AsInteger     := DM1.tPedidoMaterialOrdem.AsInteger;
                          DM1.tPedidoConsumoCodGrade.AsInteger  := DM1.tProdutoConsumoItemCodGrade.AsInteger;
                          DM1.tPedidoConsumoPosicao.AsInteger   := DM1.tProdutoConsumoItemPosicao.AsInteger;
                          DM1.tPedidoConsumoConsumo.AsFloat     := DM1.tProdutoConsumoItemConsumo.AsFloat;
                          DM1.tPedidoConsumoTamanhoMat.AsString := DM1.tProdutoConsumoItemTamanhoMat.AsString;
                          DM1.tPedidoConsumo.Post;
                          DM1.tProdutoConsumoItem.Next;
                        end;
                    end;
                end;
              DM1.tPedidoMaterial.Post;
              DM1.tProdutoMat.Next;
            end;
        end;
    end;
end;

procedure TfPedido.Habilita;
begin
  DBMemo1.Enabled        := not(DBMemo1.Enabled);
  Panel2.Enabled         := not(Panel2.Enabled);
  Panel4.Enabled         := not(Panel4.Enabled);
  Panel7.Enabled         := not(Panel7.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn2.Enabled        := not(BitBtn2.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  BitBtn10.Enabled       := not(BitBtn10.Enabled);
  SpeedButton3.Enabled   := not(SpeedButton3.Enabled);
  RxSpeedButton2.Enabled := not(RxSpeedButton2.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  RadioGroup2.Enabled    := not(RadioGroup2.Enabled);
end;

procedure TfPedido.Calc_desc_Item;
var
 vAux, vVlrDesc, vVlrTotal : Currency;
 vQtdAux2 : Real;
begin
  //vAux    := 0;
  vVlrDesc  := 0;
  vVlrTotal := StrToCurr(FormatFloat('0.0000',DM1.tPedidoItemPreco.AsCurrency));
  DM1.tPedidoItemVlrDesconto.AsCurrency := 0;
  DM1.tPedidoDesconto.First;
  while not DM1.tPedidoDesconto.EOF do
    begin
      vAux := StrToCurr(FormatFloat('0.00',(vVlrTotal * DM1.tPedidoDescontoPercDesconto.AsCurrency) / 100));
      vVlrTotal := StrToCurr(FormatFloat('0.00',vVlrTotal - vAux));
      vVlrDesc := StrToCurr(FormatFloat('0.00',vVlrDesc + vAux));
      DM1.tPedidoDesconto.Next;
    end;
  DM1.tPedidoItemVlrDesconto.AsCurrency := StrToCurr(FormatFloat('0.00',vVlrDesc));
  vQtdAux2 := DM1.tPedidoItemQtdPares.AsFloat;
  DM1.tPedidoItemVlrTotal.AsCurrency    := StrToCurr(FormatCurr('0.00',vVlrTotal * vQtdAux2));
  if DM1.tPedidoItemReposicao.AsBoolean then
    DM1.tPedidoVlrReposicao.AsCurrency := DM1.tPedidoVlrReposicao.AsCurrency + DM1.tPedidoItemVlrTotal.AsCurrency
  else
    begin
      DM1.tPedidoVlrTotal.AsCurrency := StrToCurr(FormatCurr('0.00',DM1.tPedidoVlrTotal.AsCurrency + DM1.tPedidoItemVlrTotal.AsCurrency));
      if DM1.tPedidoDesconto.RecordCount > 0 then
        DM1.tPedidoVlrDesconto.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - DM1.tPedidoVlrTotal.AsCurrency));
    end;
end;

procedure TfPedido.Calc_Vlr_Pedido;
var
 vAux, vVlrDesc, vVlrTotal : Currency;
 vQtdAux : Real;
begin
  vContComissao := True;
  DM1.tPedidoVlrDesconto.AsFloat   := 0;
  DM1.tPedidoVlrMercadoria.AsFloat := 0;
  DM1.tPedidoVlrReposicao.AsFloat  := 0;
  DM1.tPedidoVlrTotal.AsFloat      := 0;
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
  begin
    if not DM1.tPedidoItemCancelado.AsBoolean then
    begin
      if (not DM1.tPedidoItemReposicao.AsBoolean) then
      begin
        DM1.tPedidoItem.Edit;
        if DM1.tParametrosTipoDtEntrega.AsString = 'P' then
        begin
          DM1.tPedidoItemDtEmbarque.AsDateTime      := DM1.tPedidoDtEmbarque.AsDateTime;
          DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
          DM1.tPedidoItemDtProducao.AsDateTime := DM1.tPedidoDtProducao.AsDateTime;
        end;
        //Ajusta a comissão dos itens
        if DM1.tParametrosTipoComissao.AsString = 'G' then
        begin
          DM1.tPedidoItemPercComissao.AsFloat  := DM1.tPedidoPercComissao.AsFloat;
          DM1.tPedidoItemPercComissao2.AsFloat := DM1.tPedidoPercComissao2.AsFloat;
        end
        else
        if DM1.tPedidoItemPercComissao.AsFloat <= 0 then
          vContComissao := False;
        vVlrDesc  := 0;
        vVlrTotal := DM1.tPedidoItemPreco.AsCurrency;
        DM1.tPedidoItemVlrDesconto.AsCurrency := 0;
        DM1.tPedidoDesconto.First;
        while not DM1.tPedidoDesconto.EOF do
        begin
          vAux := StrToCurr(FormatFloat('0.00',(vVlrTotal * DM1.tPedidoDescontoPercDesconto.AsCurrency) / 100));
          vVlrTotal := StrToCurr(FormatFloat('0.00',vVlrTotal - vAux));
          vVlrDesc := StrToCurr(FormatFloat('0.00',vVlrDesc + vAux));
          DM1.tPedidoDesconto.Next;
        end;
        vQtdAux := DM1.tPedidoItemQtdPares.AsFloat;
        DM1.tPedidoItemVlrDesconto.AsCurrency := StrToCurr(FormatCurr('0.00',vVlrDesc));
        DM1.tPedidoItemVlrTotal.AsCurrency    := StrToCurr(FormatCurr('0.00',vVlrTotal * vQtdAux));
        vAux   := StrToCurr(FormatFloat('0.0000',DM1.tPedidoItemPreco.AsFloat)) * vQtdAux;
        DM1.tPedidoVlrMercadoria.AsCurrency  := StrToCurr(FormatCurr('0.00',DM1.tPedidoVlrMercadoria.AsCurrency + vAux));
        DM1.tPedidoVlrTotal.AsCurrency       := StrToCurr(FormatCurr('0.00',DM1.tPedidoVlrTotal.AsCurrency + DM1.tPedidoItemVlrTotal.AsCurrency));
        if DM1.tPedidoDesconto.RecordCount > 0 then
          DM1.tPedidoVlrDesconto.AsCurrency     := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - DM1.tPedidoVlrTotal.AsCurrency));
        DM1.tPedidoItem.Post;
      end
      else
      if DM1.tPedidoItemReposicao.AsBoolean then
      begin
        DM1.tPedidoItem.Edit;
        vVlrDesc  := 0;
        vVlrTotal := DM1.tPedidoItemPreco.AsFloat;
        DM1.tPedidoItemVlrDesconto.AsFloat := 0;
        DM1.tPedidoDesconto.First;
        while not DM1.tPedidoDesconto.EOF do
        begin
          vAux := StrToFloat(FormatFloat('0.00',(vVlrTotal * DM1.tPedidoDescontoPercDesconto.AsFloat / 100)));
          vVlrTotal := vVlrTotal - vAux;
          vVlrDesc := vVlrDesc + vAux;
          DM1.tPedidoDesconto.Next;
        end;
        DM1.tPedidoItemVlrDesconto.AsFloat := vVlrDesc;
        //if (DM1.tPedidoItemlkUnidadeVenda.AsString <> '') and (DM1.tPedidoItemlkConvUnidadeVenda.AsFloat > 0) then
        //  DM1.tPedidoItemVlrTotal.AsCurrency    := StrToCurr(FormatCurr('0.00',vVlrTotal * (DM1.tPedidoItemQtdPares.AsFloat / DM1.tPedidoItemlkConvUnidadeVenda.AsFloat)))
        //else
          DM1.tPedidoItemVlrTotal.AsCurrency    := StrToCurr(FormatCurr('0.00',vVlrTotal * DM1.tPedidoItemQtdPares.AsFloat));
        DM1.tPedidoVlrReposicao.AsCurrency    := DM1.tPedidoVlrReposicao.AsCurrency + DM1.tPedidoItemVlrTotal.AsCurrency;
        DM1.tPedidoItem.Post;
      end;
    end;
    DM1.tPedidoItem.Next;
  end;
end;

procedure TfPedido.Grava_Material;
var
 vQtdPar, vQtdParFat, vQtdParCanc, vQtdParRep : Real;
begin
// Faz a gravação dos materiais nos itens dos pedidos, para gerar os talões
  DM1.tProduto.IndexFieldNames := 'Codigo';
  vQtdPar     := 0;
  vQtdParFat  := 0;
  vQtdParCanc := 0;
  vQtdParRep  := 0;
  DM1.tPedidoItem.First;
  DM1.tPedidoDtIniEmbarque.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
  DM1.tPedidoDtFinEmbarque.AsDateTime := 0;
  while not DM1.tPedidoItem.EOF do
    begin
      if DM1.tPedidoItemDtReprogramacao.AsDateTime < DM1.tPedidoDtIniEmbarque.AsDateTime then
        DM1.tPedidoDtIniEmbarque.AsDateTime := DM1.tPedidoItemDtReprogramacao.AsDateTime;
      if DM1.tPedidoItemDtReprogramacao.AsDateTime > DM1.tPedidoDtFinEmbarque.AsDateTime then
        DM1.tPedidoDtFinEmbarque.AsDateTime := DM1.tPedidoItemDtReprogramacao.AsDateTime;
      vQtdParCanc := vQtdParCanc + DM1.tPedidoItemQtdParesCanc.AsFloat;
      if DM1.tPedidoItemReposicao.AsBoolean then
        vQtdParRep := vQtdParRep + DM1.tPedidoItemQtdPares.AsFloat
      else
        vQtdPar    := vQtdPar + DM1.tPedidoItemQtdPares.AsFloat;
      vQtdParFat := vQtdParFat + DM1.tPedidoItemQtdParesFat.AsFloat;
      DM1.tPedidoItem.Next;
    end;
  DM1.tPedidoQtdPares.AsFloat     := vQtdPar;
  DM1.tPedidoQtdParesCanc.AsFloat := vQtdParCanc;
  DM1.tPedidoQtdParesFat.AsFloat  := vQtdParFat;
  DM1.tPedidoQtdParesRest.AsFloat := vQtdPar - vQtdParFat;
  DM1.tPedidoQtdParesRep.AsFloat  := vQtdParRep;
end;

procedure TfPedido.Verifica_Pedido;
begin
  if DM1.tPedidoCancelado.AsBoolean = False then
    Panel9.SendToBack
  else
    Panel9.BringToFront;
  if DM1.tPedidoQtdParesFat.AsFloat > 0 then
    begin
      BitBtn18.Enabled := True;
      BitBtn18.Visible := True;
    end
  else
    begin
      BitBtn18.Enabled := False;
      BitBtn18.Visible := False;
    end;
end;

procedure TfPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM1.tParametrosControlePedidoMov.AsBoolean then
    if DMMovPedido.Owner.ClassName = Self.ClassName then
      FreeAndNil(DMMovPedido);

  RxDBFilter2.Active := False;
  RxDBFilter3.Active := False;
  DM1.tPedido.Close;
  DM1.tPedidoConsumo.Close;
  DM1.tPedidoDesconto.Close;
  DM1.tPedidoGrade.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoMaterial.Close;
  DM1.tPedidoNota.Close;
  DM1.tPedidoCanc.Close;
  DM1.tPedidoCancGrade.Close;
  DM1.tTalao.Close;

  DM1.tProduto.Close;
  DM1.tProdutoCli.Close;
  DM1.tProdutoConsumo.Close;
  DM1.tProdutoConsumoItem.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoTam.Close;
  DM1.tProdutoComb.Close;

  DM1.tCliente.Close;
  DM1.tCondPgto.Close;
  DM1.tCondPgto2.Close;

  DM1.tNatOperacao.Close;
  DM1.tVendedor.Close;
  DM1.tTabPreco.Close;
  DM1.tTransp.Close;
  DM1.tGrupo.Close;
  DM1.tGrupolk.Close;
  DM1.tUnidade.Close;

  DM2.qRepresentada.Close;
  DM2.qFabrica.Close;

  qTalaoAux.Close;

  Action := Cafree;
end;

procedure TfPedido.BitBtn6Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  Close;
end;

procedure TfPedido.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
  begin
    if RxDBLookupCombo4.Text <> '' then
      Chamar_Cliente(RxDBLookupCombo4.KeyValue,4)
    else
      Chamar_Cliente(0,4);
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário!');
end;

procedure TfPedido.BitBtn1Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  vCodSitTrib := 0;
  BitBtn2.Tag := 0;
  BitBtn4.Tag := 1;
  if DM1.tUsuarioInsPedido.AsBoolean then
  begin
    vReprogramacao    := False;
    BitBtn18.Enabled  := False;
    BitBtn18.Visible  := False;
    BitBtn15.Enabled            := True;
    DM1.tPedido.IndexFieldNames := 'Pedido';
    DM1.tPedido.Refresh;
    DM1.tPedido.Last;
    vItemAux := DM1.tPedidoPedido.AsInteger;
    DM1.tPedido.Insert;
    if DM1.tPedidoCancelado.AsBoolean = False then
      Panel9.SendToBack
    else
      Panel9.BringToFront;         
    DM1.tPedidoPedido.AsInteger    := vItemAux + 1;
    DM1.tPedidoPercFabrica.AsFloat := DM1.tParametrosPercFabrica.AsFloat;
    DM1.tPedido.Post;
    DM1.tPedido.Edit;
    Habilita;
    RxDBComboBox1.Enabled := True;
    if DM1.tParametrosPedirFilial.AsBoolean then
      RxDBLookupCombo3.SetFocus
    else
      RxDBLookupCombo4.SetFocus;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfPedido.BitBtn2Click(Sender: TObject);
var
 vFat : String[1];
 vQtd : Real;
begin
  vReprogramacao    := False;
  vCodSitTrib       := 0;
  vQtd              := 0;
  DM1.tPedido.IndexFieldNames := 'Pedido';
  BitBtn2.Tag := 1;
  BitBtn4.Tag := 0;
  PageControl1.ActivePage := TabSheet1;
  if DM1.tUsuarioAltPedido.AsBoolean then
    begin
      if DM1.tPedidoCancelado.AsBoolean <> True then
        begin
          vFat := 'N';
          if DM1.tPedidoItem.RecordCount > 0 then
            begin
              Dm1.tPedidoItem.Filtered := False;
              Dm1.tPedidoItem.Filter   := 'QtdParesFat <= ''' + FloatToStr(vQtd) +'''';
              Dm1.tPedidoItem.Filtered := True;
              if Dm1.tPedidoItem.IsEmpty then
                begin
                  ShowMessage('Pedido não pode ser alterado. Já foi gerado nota');
                  Dm1.tPedidoItem.Filtered := False;
                  vFat := 'S';
                end;
            end;
          if vFat = 'N' then
            begin
              Dm1.tPedidoItem.Filtered := False;
              DM1.tPedido.Edit;
              Habilita;
              if DM1.tParametrosPedirFilial.AsBoolean then
                RxDBLookupCombo3.SetFocus
              else
                RxDBLookupCombo4.SetFocus;
              qConferePed.Close;
              qConferePed.Params[0].AsInteger := DM1.tPedidoPedido.AsInteger;
              qConferePed.Open;
              RxDBComboBox1.Enabled := (qConferePed.RecordCount < 1);
              qConferePed.Close;
            end;
        end
      else
        ShowMessage('Este pedido foi cancelado e não pode ser alterado!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfPedido.BitBtn4Click(Sender: TObject);
begin
  if BitBtn4.Tag = 0 then
    begin
      DM1.tPedido.Cancel;
      DM1.tPedido.Edit;
      vContComissao    := True;
      Calc_Vlr_Pedido;
      if not vContComissao then
        ShowMessage('Possui itens sem % comissao!');
      Grava_Material;  // Grava os materiais nos itens dos pedidos, vai servir para a
      DM1.tPedido.Post;
      BitBtn2.Tag := 0;
      Habilita;
      BitBtn15.Enabled := False;
    end;
  if BitBtn4.Tag = 1 then
    begin
      BitBtn15.Enabled            := False;
      Excluir_Registro;
      Habilita;
    end;
end;

procedure TfPedido.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  BitBtn2.Tag := 0;
  if DM1.tUsuarioExcPedido.AsBoolean then
    begin
      if DM1.tPedidoQtdParesFat.AsFloat > 0 then
        ShowMessage('Pedido não pode ser excluído, já esta faturado!')
      else
        begin
          vExcluir := True;
          qTalaoAux.Close;
          qTalaoAux.Params[0].AsInteger := DM1.tPedidoPedido.AsInteger;
          qTalaoAux.Open;
          if qTalaoAux.RecordCount > 0 then
            begin
              vExcluir := False;
              ShowMessage('Pedido possui talões gerados!')
            end;
          qTalaoAux.Close;
          if vExcluir then
            if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
              Excluir_Registro;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfPedido.BitBtn5Click(Sender: TObject);
begin
  if (Trim(DM1.tPedidoPedidoCliente.AsString) = '') or (RxDBLookupCombo3.Text = '') then
  begin
    ShowMessage('O Campo "Nº Pedido do Cliente" e a "Filial" não podem estar vazio!');
    DBEdit2.SetFocus;
    exit;
  end;

  if DM1.tPedidoItem.RecordCount < 1 then
  begin
    ShowMessage('Pedido não pode ser confirmado sem item!');
    exit;
  end;

  if DM1.tPedidoCodCliente.AsInteger < 1 then
  begin
    ShowMessage('Cliente não foi informado!');
    RxDBLookupCombo4.SetFocus;
    exit;
  end;

  BitBtn2.Tag := 0;
  PageControl1.ActivePage := TabSheet1;

  if DM1.tPedido.State in [dsBrowse] then
    DM1.tPedido.Edit;

  BitBtn15.Enabled := False;
  vContComissao    := True;
  vGravaPed        := True;
  Calc_Vlr_Pedido;
  if not vContComissao then
    ShowMessage('Possui itens sem % comissao!');
  Grava_Material;  // Grava os materiais nos itens dos pedidos, vai servir para a
                  // montagem dos lotes.

  if vGravaPed then
  begin
    DM1.tPedido.Post;
    Habilita;

    if DM1.tParametrosControlePedidoMov.AsBoolean then
    begin
      try
        DMMovPedido.Controlar_GravacaoMovPedido;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível gravar o movimento do pedido Tabela MOVPEDIDO, ' + E.Message + '! Clique para continuar!');
        end;
      end;
    end;

    BitBtn1.SetFocus;
    BitBtn15.Enabled := False;
  end
  else
  begin
    DBEdit1.Clear;
    DBEdit1.SetFocus;
    ShowMessage('Existe % de comissão no pedido e nos itens!');
    exit;
  end;
  DM1.tPedido.Refresh;
  DM1.tPedidoItem.Refresh;
end;

procedure TfPedido.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
      DM1.tCondPgto2.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cond.pagto.!');
end;

procedure TfPedido.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
//  DM1.tPedido.IndexFieldNames := 'Pedido';
end;

procedure TfPedido.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tPedido.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o pedido antes de fechar esta janela');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tPedido.State in [dsBrowse]) then
    begin
      fConsPedido := TfConsPedido.Create(Self);
      fConsPedido.ShowModal;
    end;
  Verifica_Pedido;
end;

procedure TfPedido.BitBtn9Click(Sender: TObject);
var
  vQtdAux : Real;
  vAux : Currency;
begin
  if DM1.tPedidoItemQtdParesFat.AsFloat > 0 then
    ShowMessage('Este item já foi faturado')
  else
  if DM1.tPedidoItemTalaoGerado.AsBoolean then
    ShowMessage('Lote já gerado!')
  else
  if MessageDlg('Deseja realmente excluir este produto do pedido?',mtConfirmation,
     [mbOK,mbNo],0) = mrOK then
    begin
      if DM1.tPedidoItemReposicao.AsBoolean then
        begin
          DM1.tPedidoQtdParesRep.AsFloat  := DM1.tPedidoQtdParesRep.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
          DM1.tPedidoVlrReposicao.AsFloat := DM1.tPedidoVlrReposicao.AsFloat - DM1.tPedidoItemVlrTotal.AsFloat;
          DM1.tPedidoGrade.First;
          while not DM1.tPedidoGrade.Eof do
            DM1.tPedidoGrade.Delete;
          DM1.tPedidoMaterial.First;
          while not DM1.tPedidoMaterial.Eof do
            begin
              DM1.tPedidoConsumo.First;
              while not DM1.tPedidoConsumo.Eof do
                DM1.tPedidoConsumo.Delete;
              DM1.tPedidoMaterial.Delete;
            end;
        end
      else
        begin
          vQtdAux := DM1.tPedidoItemQtdPares.AsFloat;
          DM1.tPedidoQtdPares.AsFloat      := DM1.tPedidoQtdPares.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
          DM1.tPedidoQtdParesRest.AsFloat  := DM1.tPedidoQtdParesRest.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
          DM1.tPedidoQtdParesCanc.AsFloat  := DM1.tPedidoQtdParesCanc.AsFloat - DM1.tPedidoItemQtdParesCanc.AsFloat;

          DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat - DM1.tPedidoItemlkPesoBruto.AsFloat *
                                              vQtdAux;
          DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat - DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                              vQtdAux;

          vAux   := StrToCurr(FormatFloat('0.0000',DM1.tPedidoItemPreco.AsCurrency)) * vQtdAux;
          DM1.tPedidoVlrMercadoria.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - vAux));
          DM1.tPedidoVlrTotal.AsCurrency   := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrTotal.AsCurrency - DM1.tPedidoItemVlrTotal.AsCurrency));
          if DM1.tPedidoDesconto.RecordCount > 0 then
            DM1.tPedidoVlrDesconto.AsCurrency := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - DM1.tPedidoVlrTotal.AsCurrency))
          else
            DM1.tPedidoVlrDesconto.AsCurrency := 0;
          DM1.tPedidoGrade.First;
          while not DM1.tPedidoGrade.Eof do
            DM1.tPedidoGrade.Delete;
          DM1.tPedidoMaterial.First;
          while not DM1.tPedidoMaterial.Eof do
            begin
              DM1.tPedidoConsumo.First;
              while not DM1.tPedidoConsumo.Eof do
                DM1.tPedidoConsumo.Delete;
              DM1.tPedidoMaterial.Delete;
            end;
        end;
      if DM1.tParametrosMovPedidoPorItem.AsBoolean then
        if DM1.tParametrosControlePedidoMov.AsBoolean then
          DMMovPedido.Excluir_MovPedido(DM1.tPedidoItemPedido.AsInteger,DM1.tPedidoItemItem.AsInteger);

      DM1.tPedidoItem.Delete;
    end;
end;

procedure TfPedido.DBLookupComboBox1DropDown(Sender: TObject);
begin
  DM1.tPedido.Refresh;
  DM1.tPedido.IndexFieldNames := 'Pedido';
end;

procedure TfPedido.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
    begin
      fTransp := TfTransp.Create(Self);
      fTransp.ShowModal;
      DM1.tPedidoCodTransp.Clear;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadora!');
end;

procedure TfPedido.tAuxPedidoGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  i2 := 0;
  if BitBtn14.Tag <> 2 then
    begin
      icount := fPedido.tAuxPedidoGrade.RecordCount;
      if icount >= DM1.tProdutoTam.RecordCount then
        begin
         fPedidoGrade.BitBtn5.SetFocus;
         Abort;
       end;
    end;
end;

procedure TfPedido.GroupBox2Enter(Sender: TObject);
begin
  if DM1.tPedidolkPrazoVista.AsString = 'V' then
    ShowMessage('Condição de pagamento é à vista');
end;

procedure TfPedido.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      RxDBFilter3.Active := False;
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
      RxDBFilter3.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de vendedor!');
end;

procedure TfPedido.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
  begin
    fNatOperacao := TfNatOperacao.Create(Self);
    fNatOperacao.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadora!');
end;

procedure TfPedido.BitBtn13Click(Sender: TObject);
begin
  fPedidoDesconto := TfPedidoDesconto.Create(Self);
  fPedidoDesconto.ShowModal;
end;

procedure TfPedido.BitBtn13Exit(Sender: TObject);
begin
  if DM1.tPedido.State in [dsInsert,dsEdit] then
    begin
      DM1.tPedidoVlrDesconto.AsFloat  := 0;
      DM1.tPedidoVlrReposicao.AsFloat := 0;
      DM1.tPedidoVlrTotal.AsFloat     := 0;
      DM1.tPedidoVlrDesconto.AsFloat  := 0;
      DM1.tPedidoItem.First;
      while not DM1.tPedidoItem.EOF do
        begin
          if DM1.tPedidoItemQtdPares.AsFloat > 0 then
            begin
              DM1.tPedidoItem.Edit;
              Calc_Desc_Item;
              DM1.tPedidoItem.Post;
            end;
          DM1.tPedidoItem.Next;
        end;
    end;
end;

procedure TfPedido.FormCreate(Sender: TObject);
begin
  DM2.qRepresentada.Open;
  DM2.qFabrica.Open;

  DM1.tPedido.open;
  DM1.tPedidoConsumo.Open;
  DM1.tPedidoDesconto.Open;
  DM1.tPedidoGrade.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoMaterial.Open;
  DM1.tPedidoNota.Open;
  DM1.tPedidoCanc.Open;
  DM1.tPedidoCancGrade.Open;
  DM1.tPedido2.Open;
  DM1.tTalao.Open;

  DM1.tProduto.Open;
  DM1.tProdutoCli.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoTam.Open;
  DM1.tProdutoComb.Open;

  DM1.tCliente.Open;
  DM1.tCondPgto.Open;
  DM1.tCondPgto2.Open;
  DM1.tNatOperacao.Open;
  DM1.tVendedor.Open;
  DM1.tTabPreco.Open;
  DM1.tTransp.Open;
  DM1.tGrupo.Open;
  DM1.tGrupolk.Open;
  DM1.tUnidade.Open;
  DM1.tParametros.Open;
  DM1.tParametrosMovPed.Open;

  tAuxPedMatCons.open;
  tAuxPedidoGrade.open;
  Dm1.tProduto2.Open;
  tAuxPedidoMat.open;

  DM1.tPedido.Refresh;
  DM1.tPedido.Last;
  if DM1.tPedidoCancelado.AsBoolean = False then
    Panel9.SendToBack
  else
    Panel9.BringToFront;
end;

procedure TfPedido.FormShow(Sender: TObject);
begin
  DM2.qFabrica.Close;
  DM2.qFabrica.Open;
  DM2.qRepresentada.Close;
  DM2.qRepresentada.Open;
  Label19.Caption := RxDBLookupCombo4.LookupDisplay;
  PageControl1.ActivePage := TabSheet1;
  if DM1.tPedidoCancelado.AsBoolean = False then
    Panel9.SendToBack
  else
    Panel9.BringToFront;
  BitBtn18.Enabled := (DM1.tPedidoQtdParesFat.AsFloat > 0);
  BitBtn18.Visible := (DM1.tPedidoQtdParesFat.AsFloat > 0);

  Label14.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
  Label29.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
  RxDBLookupCombo10.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
  RxDBLookupCombo11.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;

  if DM1.tParametrosControlePedidoMov.AsBoolean then
  begin
    if not Assigned(DMMovPedido) then
      DMMovPedido := TDMMovPedido.Create(Self);
  end;
  RxDBLookupCombo3.Visible := DM1.tParametrosPedirFilial.AsBoolean;
  Label28.Visible          := DM1.tParametrosPedirFilial.AsBoolean;
  if not(DM1.tParametrosPedirFilial.AsBoolean) then
    RxDBLookupCombo3.KeyValue := DM1.tFilialCodigo.AsInteger;
  Label30.Visible := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;
  DBEdit3.Visible := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;

  Label37.Visible  := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;
  DBText13.Visible := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;

  Label36.Visible  := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;
  DBText12.Visible := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;

  ckVlrFabrica.Visible := DM1.tParametrosMostrarPrecoFabrica.AsBoolean;
  Label38.Visible      := (DM1.tParametrosTipoDtEntrega.AsString = 'P');
  DBDateEdit4.Visible  := (DM1.tParametrosTipoDtEntrega.AsString = 'P');
  Label40.Visible      := (DM1.tParametrosTipoDtEntrega.AsString = 'P');
  DBDateEdit5.Visible  := (DM1.tParametrosTipoDtEntrega.AsString = 'P');

  Configurar_Grid;
end;

procedure TfPedido.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Verifica_Pedido;
end;

procedure TfPedido.BitBtn10Click(Sender: TObject);
begin
  if (DM1.tPedidoQtdPares.AsFloat <= 0) or (DM1.tPedidoQtdParesRest.AsFloat <= 0) then
    ShowMessage('Pedido já faturado ou cancelado!')
  else
  begin
    fPedidoItemCanc := TfPedidoItemCanc.Create(Self);
    fPedidoItemCanc.Tag := 1;
    fPedidoItemCanc.Panel1.Visible := False;
    fPedidoItemCanc.ShowModal;
  end;
end;

procedure TfPedido.SpeedButton3Click(Sender: TObject);
var
  vCancAux : Boolean;
begin
  vCancAux := True;
  if DM1.tPedidoItemQtdPares.AsFloat <= 0 then
    ShowMessage('Item já esta cancelado!')
  else
  if DM1.tPedidoItemQtdParesRest.AsFloat <= 0 then
    ShowMessage('Não existe quantidade para cancelar!')
  else
  //if DM1.tPedidoItemTalaoGerado.AsBoolean then
  //  begin
  //    ShowMessage('Lote já gerado!');
  //    vCancAux := False;
  //  end
  //else
  if MessageDlg('Deseja cancelar o item '+DM1.tPedidoItemItem.AsString+' ?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
  begin
    vCancAux := False;
    fPedidoItemCanc := TfPedidoItemCanc.Create(Self);
    fPedidoItemCanc.Tag := 0;
    fPedidoItemCanc.CurrencyEdit1.ReadOnly := False;
    fPedidoItemCanc.Edit1.ReadOnly         := False;
    fPedidoItemCanc.BitBtn5.Enabled        := True;
    fPedidoItemCanc.ShowModal;
  end;
  if vCancAux then
  begin             
    fPedidoItemCanc := TfPedidoItemCanc.Create(Self);
    fPedidoItemCanc.Tag := 0;
    fPedidoItemCanc.CurrencyEdit1.ReadOnly := True;
    fPedidoItemCanc.Edit1.ReadOnly         := True;
    fPedidoItemCanc.BitBtn5.Enabled        := False;
    fPedidoItemCanc.ShowModal;
  end;
end;

procedure TfPedido.RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tPedidoItemItem.AsInteger > 0 then
    begin
      if DM1.tPedidoItemQtdPares.AsFloat <= 0 then
        begin
          Background  := clRed;
          AFont.Color := clWhite;
        end
      else
      if (DM1.tPedidoItemQtdParesFat.AsFloat > 0) and (DM1.tPedidoItemQtdParesRest.AsFloat = 0) then
        begin
          Background  := clTeal;
          AFont.Color := clWhite;
        end
      else
      if not Dm1.tPedidoItemTalaoGerado.AsBoolean then
        begin
          Background  := clSilver;
          AFont.Color := clBlack;
        end
      else
      if (DM1.tPedidoItemReposicao.AsBoolean) or (DM1.tPedidoItemReprogramacao.AsBoolean) then
        begin
          Background  := clAqua;
          AFont.Color := clBlack;
        end;
    end;
end;

procedure TfPedido.BitBtn15Click(Sender: TObject);
begin
  fCopiaPedidos := TfCopiaPedidos.Create(Self);
  fCopiaPedidos.TabSheet2.TabVisible := False;
  fCopiaPedidos.ShowModal;
end;

procedure TfPedido.BitBtn16Click(Sender: TObject);
var
 i : Integer;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if DM1.tPedidoItem.IsEmpty then
    ShowMessage('Não há registro para ser alterado!')
  else
  if DM1.tPedidoItemQtdParesFat.AsFloat > 0 then
    ShowMessage('Item do pedido já esta faturado!')
  else
  if DM1.tPedidoItemQtdParesCanc.AsFloat > 0 then
    ShowMessage('Item do pedido já esta cancelado!')
  else
  if DM1.tPedidoItemDtBaixa.AsDateTime > 0 then
    ShowMessage('Item já baixado!')
  else
  if DM1.tPedidoCodCliente.AsInteger < 0 then
    ShowMessage('Falta informar o cliente!')
  else
  if DM1.tPedidoItemTalaoGerado.AsBoolean then
    ShowMessage('Lote já gerado!')
  else
  if DM1.tProduto.Locate('Codigo',DM1.tPedidoItemCodProduto.AsInteger,[loCaseInsensitive]) then
    begin
      BitBtn14.Tag := 1;
      fPedidoItem  := TfPedidoItem.Create(Self);
      vItemPedAux  := DM1.tPedidoItemItem.AsInteger;
      fPedidoItem.CurrencyEdit3.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
      fPedidoItem.RzDBLookupComboBox1.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
      fPedidoItem.RxDBLookupCombo10.KeyValue := DM1.tPedidoItemCodProduto.AsInteger;
      if DM1.tPedidoItemSitTrib.AsInteger > 0 then
        fPedidoItem.RxDBLookupCombo12.KeyValue := DM1.tPedidoItemSitTrib.AsInteger;
      fPedidoItem.Edit4.Text                   := DM1.tPedidoItemFabrica.AsString;
      fPedidoItem.Edit5.Text                   := DM1.tPedidoItemNumOS.AsString;
      fPedidoItem.Edit6.Text                   := DM1.tPedidoItemPlano.AsString;
      fPedidoItem.CurrencyEdit1.Value          := DM1.tPedidoItemQtdPares.AsCurrency;
      fPedidoItem.CurrencyEdit2.Value          := DM1.tPedidoItemPreco.AsCurrency;
      fPedidoItem.CurrencyEdit4.Value          := DM1.tPedidoItemPercComissao.AsFloat;
      fPedidoItem.DateEdit1.Date               := DM1.tPedidoItemDtEmbarque.AsDateTime;
      fPedidoItem.DateEdit2.Date               := DM1.tPedidoItemDtProducao.AsDateTime;
      fPedidoItem.RxDBLookupCombo15.Value      := DM1.tPedidoItemUnidade.AsString;
      fPedidoItem.Edit2.Text                   := DM1.tPedidoItemObsTalao.AsString;
      vDtEmbarque                  := DM1.tPedidoItemDtEmbarque.AsDateTime;
      vDtReprogramacao             := DM1.tPedidoItemDtReprogramacao.AsDateTime;
      Cor                          := DM1.tPedidoItemCodCor.AsInteger;
      vDescMat                     := DM1.tPedidoItemlkDescMaterial.AsString;
      vReprogramacao               := DM1.tPedidoItemReprogramacao.AsBoolean;
      vCodCombinacao               := DM1.tPedidoItemCodCombinacao.AsInteger;
      //fPedidoItem.RxDBLookupCombo11Exit(Sender);
      if DM1.tPedidoItemCodCor.AsInteger > 0 then
        begin
          fPedidoItem.qCorRef.Active               := False;
          fPedidoItem.qCorRef.Params[0].AsInteger  := DM1.tProdutoCodigo.AsInteger;
          fPedidoItem.qCorRef.Active               := True;
          fPedidoItem.RxDBLookupCombo3.KeyValue    := Cor;
        end;
      // grava a grade nos itens
      tAuxPedidoGrade.First;
      while not tAuxPedidoGrade.Eof do
        tAuxPedidoGrade.Delete;
      if DM1.tPedidoItemCodGrade.AsInteger > 0 then
        DM1.tProdutoGrade.FindKey([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodGrade.AsInteger]);
      if DM1.tPedidoItemPosicao.AsInteger < 1 then
        begin
          DM1.tPedidoGrade.First;
          while not DM1.tPedidoGrade.Eof do
            begin
              tAuxPedidoGrade.Insert;
              tAuxPedidoGradePedido.AsInteger    := DM1.tPedidoGradePedido.AsInteger;
              tAuxPedidoGradeCodGrade.AsInteger  := DM1.tPedidoGradeCodGrade.AsInteger;
              tAuxPedidoGradePosicao.AsInteger   := DM1.tPedidoGradePosicao.AsInteger;
              tAuxPedidoGradeQtd.asFloat         := DM1.tPedidoGradeQtd.AsFloat;
              tAuxPedidoGradeVlrUnitario.asFloat := DM1.tPedidoGradeVlrUnitario.AsFloat;
              tAuxPedidoGrade.Post;
              DM1.tPedidoGrade.Next;
            end;
        end;
       // grava os materiais na tabela auxiliar
      tAuxPedidoMat.First;
      while not tAuxPedidoMat.EOF do
        begin
          tAuxPedMatCons.First;
          while not tAuxPedMatCons.Eof do
            tAuxPedMatCons.Delete;
          tAuxPedidoMat.Delete;
        end;
      i := 0;
      DM1.tPedidoMaterial.First;
      while not DM1.tPedidoMaterial.EOF do
        begin
          inc(i);
          tAuxPedidoMat.Insert;
          tAuxPedidoMatPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
          tAuxPedidoMatItem.AsInteger        := i;
          tAuxPedidoMatCodCor.AsInteger      := DM1.tPedidoMaterialCodCor.AsInteger;
          tAuxPedidoMatCodMaterial.AsInteger := DM1.tPedidoMaterialCodMaterial.AsInteger;
          tAuxPedidoMatConsumoPr.AsFloat     := DM1.tPedidoMaterialConsumoPr.AsFloat;
          tAuxPedidoMatImpTalao.AsString     := DM1.tPedidoMaterialImpTalao.AsString;
          tAuxPedidoMatTipoConsumo.AsString  := DM1.tPedidoMaterialTipoConsumo.AsString;
          if DM1.tPedidoMaterialTipoConsumo.AsString = 'T' then
            begin
              DM1.tPedidoConsumo.First;
              while not DM1.tPedidoConsumo.Eof do
                begin
                  tAuxPedMatCons.Insert;
                  tAuxPedMatConsPedido.AsInteger    := DM1.tPedidoPedido.AsInteger;
                  tAuxPedMatConsItem.AsInteger      := i;
                  tAuxPedMatConsCodGrade.AsInteger  := DM1.tPedidoConsumoCodGrade.AsInteger;
                  tAuxPedMatConsPosicao.AsInteger   := DM1.tPedidoConsumoPosicao.AsInteger;
                  tAuxPedMatConsConsumo.AsFloat     := DM1.tPedidoConsumoConsumo.AsFloat;
                  tAuxPedMatConsTamanhoMat.AsString := DM1.tPedidoConsumoTamanhoMat.AsString;
                  tAuxPedMatCons.Post;
                  //DM1.tPedidoConsumo.Delete;
                  DM1.tPedidoConsumo.Next;
                end;
            end;
          tAuxPedidoMat.Post;
          //DM1.tPedidoMaterial.Delete;
          DM1.tPedidoMaterial.Next;
        end;
      if DM1.tPedidoItemProducaoVenda.AsString = 'P' then
        fPedidoItem.RadioGroup3.ItemIndex := 0
      else
        fPedidoItem.RadioGroup3.ItemIndex := 1;
      //DM1.tPedidoItem.Delete;
      fPedidoItem.ShowModal;
    end
  else
    ShowMessage('Produto não cadastrado!');
end;

procedure TfPedido.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tPedido.IndexFieldNames := 'PedidoCliente';
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedido.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tPedido.IndexFieldNames := 'Pedido';
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedido.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPedido.IndexFieldNames := 'Pedido';
  Edit2.Text := RxDBLookupCombo2.Text;
end;

procedure TfPedido.Edit2Change(Sender: TObject);
begin
  try
    DM1.tPedido.IndexFieldNames := 'Pedido';
    DM1.tPedido.FindNearest([Edit2.Text]);
    Verifica_Pedido;
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfPedido.RxDBLookupCombo2Change(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo2.Text;
end;

procedure TfPedido.RxDBLookupCombo2Exit(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo2.Text;
end;

procedure TfPedido.Edit3Change(Sender: TObject);
begin
  try
    DM1.tPedido.IndexFieldNames := 'PedidoCliente';
    DM1.tPedido.FindNearest([Edit3.Text]);
    Verifica_Pedido;
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfPedido.RxDBLookupCombo1Change(Sender: TObject);
begin
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedido.DBDateEdit1Exit(Sender: TObject);
begin
  if DM1.tPedidoDtEmissao.AsString = '' then
    begin
      ShowMessage('Data de emissão não pode ser vazia!');
      DBDateEdit1.SetFocus;
      DBDateEdit1.Date := Date;
    end;
end;

procedure TfPedido.RxDBGrid1DblClick(Sender: TObject);
begin
  BitBtn14.Tag := 2;
// grava a grade nos itens
  tAuxPedidoGrade.First;
  while not tAuxPedidoGrade.Eof do
    tAuxPedidoGrade.Delete;
  DM1.tPedidoGrade.First;
  while not DM1.tPedidoGrade.Eof do
    begin
      tAuxPedidoGrade.Insert;
      tAuxPedidoGradeCodGrade.AsInteger   := DM1.tPedidoGradeCodGrade.AsInteger;
      tAuxPedidoGradePosicao.AsInteger    := DM1.tPedidoGradePosicao.AsInteger;
      tAuxPedidoGradeQtd.asFloat          := DM1.tPedidoGradeQtd.AsFloat;
      tAuxPedidoGradeVlrUnitario.asFloat  := DM1.tPedidoGradeVlrUnitario.AsFloat;
      tAuxPedidoGrade.Post;
      DM1.tPedidoGrade.Next;
    end;
  fPedidoGrade := TfPedidoGrade.Create(Self);
  fPedidoGrade.ShowModal;
  BitBtn14.Tag := 0;
// Apaga a tabela auxiliar
  tAuxPedidoGrade.First;
  while not tAuxPedidoGrade.Eof do
    tAuxPedidoGrade.Delete;
end;

procedure TfPedido.RxDBLookupCombo4Enter(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet3;
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPedido.RxDBLookupCombo4Exit(Sender: TObject);
begin
  vCodSitTrib := 0;
  PageControl1.ActivePage        := TabSheet1;
  RxDBLookupCombo4.LookupDisplay := 'Nome';
  Label19.Caption                := RxDBLookupCombo4.LookupDisplay;
  if RxDBLookupCombo4.Text <> '' then
    begin
      if Posiciona_Cliente(RxDBLookupCombo4.KeyValue) then
        begin
          DM1.tUF.SetKey;
          DM1.tUFSigla.AsString := DM1.tClienteUf.AsString;
          if DM1.tUF.GotoKey then
            vCodSitTrib := DM1.tUFCodSitTrib.AsInteger;
          DM1.tPedidoCodVendedor.AsInteger := DM1.tClienteCodVendedor.AsInteger;
          if DM1.tClientePercComissao.AsFloat > 0 then
            DM1.tPedidoPercComissao.AsFloat := DM1.tClientePercComissao.AsFloat
          else
            DM1.tPedidoPercComissao.AsFloat := DM1.tClientelkComissao.AsFloat;
          if DM1.tClientePercComissao2.AsFloat > 0 then
            DM1.tPedidoPercComissao2.AsFloat := DM1.tClientePercComissao2.AsFloat
          else
            DM1.tPedidoPercComissao2.AsFloat := DM1.tClientelkPercComissao2.AsFloat;
          if Dm1.tClienteCodTransp.AsInteger > 0 then
            Dm1.tPedidoCodTransp.AsInteger := Dm1.tClienteCodTransp.AsInteger;
          if (DM1.tPedidoCodCondPgto.AsInteger <= 0) and (DM1.tClienteCodCondPgto.AsInteger > 0) then
            DM1.tPedidoCodCondPgto.AsInteger := DM1.tClienteCodCondPgto.AsInteger;
          if DM1.tClienteUf.AsString <> DM1.tEmpresaEstado.AsString then
            DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatVendaF.AsInteger
          else
            DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatVenda.AsInteger;
          if BitBtn2.Tag = 0 then
            DM1.tPedidoImpTamPorItem.AsBoolean := DM1.tClienteImpItemNotaPorTam.AsBoolean;
          if DM1.tClienteTipoFrete.AsString <> '' then
            DM1.tPedidoTipoFrete.AsString := DM1.tClienteTipoFrete.AsString;
        end;
    end;
end;

procedure TfPedido.p(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if RxDBLookupCombo4.Text <> '' then
    DM1.tPedidoCodCliente.AsInteger := RxDBLookupCombo4.KeyValue;
end;

procedure TfPedido.PageControl1Enter(Sender: TObject);
begin
//  if PageControl1.ActivePage = TabSheet3 then
//    begin
//      DM1.tCliente.IndexFieldNames := 'Codigo';
//      DM1.tCliente.FindKey([DM1.tPedidoCodCliente.AsInteger]);
//    end;
end;

procedure TfPedido.BitBtn18Click(Sender: TObject);
begin
  fConsPedidoNota := TfConsPedidoNota.Create(Self);
  fConsPedidoNota.ShowModal;
end;

procedure TfPedido.RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo4.LookupDisplay = 'Nome' then
        begin
           RxDBLookupCombo4.CloseUp(True);
           RxDBLookupCombo4.LookupDisplay := 'Fantasia';
           Dm1.tCliente.IndexFieldNames   := 'Fantasia';
           Dm1.tCliente.Refresh;
        end
      else
        begin
          RxDBLookupCombo4.CloseUp(True);
          RxDBLookupCombo4.LookupDisplay := 'Nome';
          Dm1.tCliente.IndexFieldNames   := 'Nome';
          Dm1.tCliente.Refresh;
        end;
      Label19.Caption := RxDBLookupCombo4.LookupDisplay;
    end;
end;

procedure TfPedido.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.LookupDisplay = 'Nome' then
    DM1.tCliente.IndexFieldNames := 'Nome'
  else
    Dm1.tCliente.IndexFieldNames := 'Fantasia';
end;

procedure TfPedido.RxDBLookupCombo5Exit(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
end;

procedure TfPedido.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
  if DM1.tPedidoItem.RecordCount > 0 then
    RxDBLookupCombo5.ReadOnly := True
  else
    RxDBLookupCombo5.ReadOnly := False;
end;

procedure TfPedido.RxDBLookupCombo6Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
  if DM1.tPedidoCodVendedor.AsInteger > 0 then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.SetKey;
      DM1.tClienteCodigo.AsInteger   := RxDBLookupCombo4.KeyValue;
      if (DM1.tCliente.GotoKey) and (DM1.tClientePercComissao.AsFloat <= 0) then
        begin
          Dm1.tVendedor.SetKey;
          Dm1.tVendedorCodigo.AsInteger   := Dm1.tPedidoCodVendedor.AsInteger;
          if (Dm1.tVendedor.GotoKey) and (DM1.tVendedorPercComissao.AsFloat > 0) then
            DM1.tPedidoPercComissao.AsFloat := DM1.tVendedorPercComissao.AsFloat;
        end;
    end;
end;

procedure TfPedido.RxDBLookupCombo6Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPedido.RxDBLookupCombo9CloseUp(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Codigo';
end;

procedure TfPedido.RxDBLookupCombo9DropDown(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfPedido.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfPedido.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfPedido.DBEdit7Enter(Sender: TObject);
begin
  if DM1.tPedidoItem.IsEmpty then
    begin
      ShowMessage('Não há item registrado p/ ser inserido a observação!');
      DBMemo1.SetFocus;
    end;
end;

procedure TfPedido.DBRadioGroup2Exit(Sender: TObject);
begin
  //*** deixar invisivel este campo a Artesul não vai usar
end;

procedure TfPedido.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tPedidoItemQtdPares.AsFloat <= 0 then
    ShowMessage('Item cancelado!')
  else
  if DM1.tPedidoItemQtdParesRest.AsFloat <= 0 then
    ShowMessage('Item já faturado, não pode ser reprogramado!')
  else
  if DM1.tPedidoItemQtdParesRest.AsFloat > 0 then
    begin
      DM1.tPedidoItem.Edit;
      fDtReprog := TfDtReprog.Create(Self);
      fDtReprog.ShowModal;
    end;
end;

procedure TfPedido.BitBtn14Click(Sender: TObject);
begin
  if (DM1.tPedidoCodCliente.AsInteger > 0) and (DM1.tPedidoCodNatOper.AsInteger > 0) then
    begin
      fPedidoItem := TfPedidoItem.Create(Self);
      BitBtn14.Tag := 0;
      fPedidoItem.ShowModal;
    end
  else
    begin
      ShowMessage('Falta informar o cliente ou a natureza!');
      RxDBLookupCombo4.SetFocus;
    end;
end;

procedure TfPedido.BitBtn7Click(Sender: TObject);
begin
  if DM1.tPedidoItemCodProduto.AsInteger > 0 then
    begin
      if DM1.tPedido.State in [dsEdit,dsInsert] then
        BitBtn14.Tag := 0
      else
        BitBtn14.Tag := 2;
      fPedidoMat   := TfPedidoMat.Create(Self);
      fPedidoMat.ShowModal;
      BitBtn14.Tag := 0;
    end;
end;

procedure TfPedido.BitBtn14Enter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPedido.BitBtn16Enter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPedido.BitBtn9Enter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPedido.BitBtn7Enter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPedido.BitBtn8Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;

procedure TfPedido.RxDBLookupCombo7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo7.LookupDisplay = 'Nome' then
        begin
           RxDBLookupCombo7.CloseUp(True);
           RxDBLookupCombo7.LookupDisplay := 'Fantasia';
           Dm1.tTransp.IndexFieldNames    := 'Fantasia';
           Dm1.tTransp.Refresh;
        end
      else
        begin
          RxDBLookupCombo7.CloseUp(True);
          RxDBLookupCombo7.LookupDisplay := 'Nome';
          Dm1.tTransp.IndexFieldNames    := 'Nome';
          Dm1.tTransp.Refresh;
        end; 
      Label20.Caption := RxDBLookupCombo7.LookupDisplay;
    end;
end;

procedure TfPedido.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfPedido.DBEdit2Exit(Sender: TObject);
begin
  if (RxDBLookupCombo4.Text <> '') and (DM1.tPedidoPedidoCliente.AsString <> '') then
    begin
      if DM1.tPedido2.Locate('PedidoCliente',DM1.tPedidoPedidoCliente.AsString,[loCaseInsensitive]) then
        begin
          if (DM1.tPedido2Pedido.AsInteger <> DM1.tPedidoPedido.AsInteger) and (DM1.tPedidoCodCliente.AsInteger = DM1.tPedido2CodCliente.AsInteger) then
            if MessageDlg('Esse pedido já foi digitado, continuar com a inclusão?',mtConfirmation,[mbOK,mbNO],0) = mrNO then
              begin
                DBEdit2.Clear;
                DBEdit2.SetFocus;
              end;
        end;
    end;
end;

procedure TfPedido.DBEdit2Enter(Sender: TObject);
begin
  if RxDBLookupCombo4.Text = '' then
    begin
      ShowMessage('Falta informar o cliente!');
      RxDBLookupCombo4.SetFocus;
    end;
end;

procedure TfPedido.Panel11Exit(Sender: TObject);
begin
  Busca_CondPagamento;
end;

procedure TfPedido.RxDBComboBox1Exit(Sender: TObject);
begin
  if RxDBComboBox1.ItemIndex = 0 then
    begin
      if DM1.tClienteUf.AsString <> DM1.tEmpresaEstado.AsString then
        DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatVendaF.AsInteger
      else
        DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatVenda.AsInteger;
    end
  else
  if RxDBComboBox1.ItemIndex = 5 then
    begin
      if DM1.tClienteUf.AsString <> DM1.tEmpresaEstado.AsString then
        DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatBenefF.AsInteger
      else
        DM1.tPedidoCodNatOper.AsInteger := DM1.tParametrosCodNatBenef.AsInteger;
    end;
end;

procedure TfPedido.BitBtn11Click(Sender: TObject);
begin
  if DM1.tPedidoItemItem.AsInteger > 0 then
    begin
      fCopiaPedidos := TfCopiaPedidos.Create(Self);
      fCopiaPedidos.TabSheet1.TabVisible := False;
      fCopiaPedidos.ShowModal;
    end;
end;

procedure TfPedido.TabSheet3Show(Sender: TObject);
begin
  if DM1.tPedidoCodCliente.AsInteger > 0 then
    DM1.tCliente.Locate('Codigo',DM1.tPedidoCodCliente.AsInteger,[loCaseInsensitive]);
end;

procedure TfPedido.Imprimir1Click(Sender: TObject);
var
  NumPed : Integer;
  vQtdAux : Real;
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  if not DM1.tCliente.FindKey([DM1.tPedidoCodCliente.AsInteger]) then
  begin
    ShowMessage('Cliente não encontrado!');
    exit;
  end;
  vQtdAux := 0;
  RxDBFilter1.Active := True;
  NumPed := DM1.tPedidoPedido.AsInteger;
  DM1.tPedido.Filtered := False;
  DM1.tPedido.Filter   := 'Pedido = '''+IntToStr(NumPed)+'''';
  DM1.tPedido.Filtered := True;
  DM1.tPedidoItem.Filtered := False;
  if RadioGroup3.ItemIndex = 1 then
  begin
    Dm1.tPedidoItem.Filter   := 'QtdParesRest > ''' + FloatToStr(vQtdAux) +'''';
    Dm1.tPedidoItem.Filtered := True;
  end;
  fRelPedido := tfRelPedido.Create(Self);
  fRelPedido.QuickRep1.Preview;
  fRelPedido.QuickRep1.Free;
  DM1.tPedido.Filtered := False;
  DM1.tPedido.FindKey([NumPed]);
  DM1.tPedidoItem.Filtered := False;
  RxDBFilter1.Active := False;
end;

procedure TfPedido.ImprimirNovo1Click(Sender: TObject);
var
  NumPed : Integer;
  vQtdAux : Real;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tCliente.IndexFieldNames := 'Codigo';
  if not DM1.tCliente.FindKey([DM1.tPedidoCodCliente.AsInteger]) then
  begin
    ShowMessage('Cliente não encontrado!');
    exit;
  end;
  vQtdAux := 0;
  RxDBFilter1.Active := True;
  NumPed := DM1.tPedidoPedido.AsInteger;
  DM1.tPedido.Filtered := False;
  DM1.tPedido.Filter   := 'Pedido = '''+IntToStr(NumPed)+'''';
  DM1.tPedido.Filtered := True;
  DM1.tPedidoItem.Filtered := False;
  if RadioGroup3.ItemIndex = 1 then
  begin
    Dm1.tPedidoItem.Filter   := 'QtdParesRest > ''' + FloatToStr(vQtdAux) +'''';
    Dm1.tPedidoItem.Filtered := True;
  end;
  fRelPedido3 := TfRelPedido3.Create(Self);
  fRelPedido3.RLReport1.Preview;
  fRelPedido3.RLReport1.Free;
  FreeAndNil(fRelPedido3);
  DM1.tPedido.Filtered := False;
  DM1.tPedido.FindKey([NumPed]);
  DM1.tPedidoItem.Filtered := False;
  RxDBFilter1.Active := False;
end;

procedure TfPedido.Configurar_Grid;
var
  i : Integer;
  vNomeCol : String;
begin
  if DM1.tParametrosMostrarPrecoFabrica.AsBoolean then
    exit;
  i := 0;
  while i <= 27 do
  begin
    vNomeCol := RxDBGrid1.Columns[i].FieldName;
    if (copy(vNomeCol,1,12) = 'PrecoFabrica') or (copy(vNomeCol,1,15) = 'VlrTotalFabrica') then
      RxDBGrid1.Columns[i].Visible := False;
    i := i + 1;
  end;

end;

function TfPedido.Posiciona_Cliente(CodCliente : Integer) : Boolean;
begin
  Result := False;
  DM1.tCliente.IndexFieldNames := 'Codigo';
  if DM1.tCliente.FindKey([CodCliente]) then
    Result := True;
end;

procedure TfPedido.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if (RxDBLookupCombo10.Text <> '') and (Posiciona_Cliente(RxDBLookupCombo10.KeyValue)) then
    if DM1.tClientePercFabrica.AsFloat > 0 then
      DM1.tPedidoPercFabrica.AsFloat := DM1.tClientePercFabrica.AsFloat;
end;

procedure TfPedido.Chamar_Cliente(Codigo, Tipo : Integer); //Tipo é o número do RxDBLookpcombo
begin
  vCodClientePos := Codigo;
  RxDBFilter2.Active := False;
  fCliente := TfCliente.Create(Self);
  fCliente.BitBtn8.Visible := True;
  fCliente.ShowModal;
  RxDBFilter2.Active := True;
  DM1.tCliente.Refresh;
  if vCodClientePos > 0 then
  begin
    DM1.tCliente.Locate('Codigo',vCodClientePos,[loCaseInsensitive]);
    TRxDBLookupCombo(FindComponent('RxDBLookupCombo'+IntToStr(Tipo))).KeyValue := vCodClientePos;
  end;
  vCodClientePos := 0;
end;

procedure TfPedido.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
  begin
    if RxDBLookupCombo10.Text <> '' then
      Chamar_Cliente(RxDBLookupCombo10.KeyValue,10)
    else
      Chamar_Cliente(0,10);
    DM2.qRepresentada.Close;
    DM2.qRepresentada.Open;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário!');
end;

procedure TfPedido.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
  begin
    if RxDBLookupCombo11.Text <> '' then
      Chamar_Cliente(RxDBLookupCombo11.KeyValue,11)
    else
      Chamar_Cliente(0,11);
    DM2.qFabrica.Close;
    DM2.qFabrica.Open;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário!');
end;

end.
