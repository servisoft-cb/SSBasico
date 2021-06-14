unit UConsPagarReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids, DBGrids, RXDBCtrl,
  RXLookup, Db, DBTables, RXSplit, DBFilter, RXCtrls, Menus, Printers,
  Mask, ToolEdit, CurrEdit, ALed, Variants, SMDBGrid, RzTabs, DBClient;

type
  TfConsPagarReceber = class(TForm)
    qPagar: TQuery;
    qPagarFilial: TIntegerField;
    qPagarNumCPagar: TIntegerField;
    qPagarParcCPagar: TIntegerField;
    qPagarNumNotaEnt: TIntegerField;
    qPagarCodForn: TIntegerField;
    qPagarPgtoParcial: TFloatField;
    qPagarRestParcela: TFloatField;
    qPagarDesconto: TFloatField;
    qPagarDtPagParcCPagar: TDateField;
    qPagarVlrParcCPagar: TFloatField;
    qPagarDtVencCPagar: TDateField;
    qPagarCodConta: TIntegerField;
    qPagarDtRecto: TDateField;
    qPagarDtGerado: TDateField;
    qPagarVlrDevolucao: TFloatField;
    qPagarDiasAtraso: TFloatField;
    qPagarNomeForn: TStringField;
    qPagarNomeConta: TStringField;
    dsqPagar: TDataSource;
    qPagarclDiasAtraso: TFloatField;
    qPagarNroDuplicata: TIntegerField;
    Panel5: TPanel;
    Label27: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    ComboBox1: TComboBox;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    qFornecedor: TQuery;
    qFornecedorFilial: TIntegerField;
    qFornecedorNomeForn: TStringField;
    qFornecedorCodForn: TIntegerField;
    qFornecedorVlrParcela: TFloatField;
    qFornecedorVlrDesconto: TFloatField;
    qFornecedorVlrPago: TFloatField;
    qFornecedorVlrRestante: TFloatField;
    qFornecedorVlrDespesas: TFloatField;
    qFornecedorVlrJurosPagos: TFloatField;
    qFornecedorVlrDevolucao: TFloatField;
    SMDBGrid2: TSMDBGrid;
    dsqFornecedor: TDataSource;
    qFilialPagar: TQuery;
    dsqFilialPagar: TDataSource;
    qFilialPagarFilial: TIntegerField;
    qFilialPagarEmpresa: TStringField;
    TabSheet3: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    qFilialPagarNomeInterno: TStringField;
    qFilialReceber: TQuery;
    dsqFilialReceber: TDataSource;
    qFilialReceberFilial: TIntegerField;
    qFilialReceberVlrParcela: TFloatField;
    qFilialReceberVlrDesconto: TFloatField;
    qFilialReceberVlrPago: TFloatField;
    qFilialReceberVlrRestante: TFloatField;
    qFilialReceberVlrDespesas: TFloatField;
    qFilialReceberVlrJurosPagos: TFloatField;
    qFilialReceberVlrDevolucao: TFloatField;
    qFilialReceberEmpresa: TStringField;
    qFilialReceberNomeInterno: TStringField;
    SMDBGrid4: TSMDBGrid;
    mFilialGeral: TClientDataSet;
    mFilialGeralFilial: TIntegerField;
    mFilialGeralNome: TStringField;
    mFilialGeralVlrReceber: TFloatField;
    mFilialGeralVlrPagar: TFloatField;
    mFilialGeralVlrPedido: TFloatField;
    mFilialGeralVlrOC: TFloatField;
    mFilialGeralVlrComissao: TFloatField;
    mFilialGeralVlrPedidoAtrazo: TFloatField;
    mFilialGeralVlrPedidoGeral: TFloatField;
    qPedido: TQuery;
    qPedidoPedido: TIntegerField;
    qPedidoItem: TIntegerField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoCodProduto: TIntegerField;
    qPedidoTalaoGerado: TBooleanField;
    qPedidoTalao: TIntegerField;
    qPedidoPreco: TFloatField;
    qPedidoVlrDesconto: TFloatField;
    qPedidoQtdRestanteTalao: TFloatField;
    qPedidoCodCondPgto: TIntegerField;
    qPedidoDtReprogramacaoTalao: TDateField;
    qPedidoDtReprogramacao: TDateField;
    qFilialPagarVlrParcela: TFloatField;
    qFilialPagarVlrDesconto: TFloatField;
    qFilialPagarVlrPago: TFloatField;
    qFilialPagarVlrRestante: TFloatField;
    qFilialPagarVlrDespesas: TFloatField;
    qFilialPagarVlrJurosPagos: TFloatField;
    qFilialPagarVlrDevolucao: TFloatField;
    qPedidoFilial: TIntegerField;
    qOC: TQuery;
    qOCFilial: TIntegerField;
    qOCValor: TFloatField;
    mFilialGeralVlrReal: TFloatField;
    mFilialGeralVlrRealPedido: TFloatField;
    mFilialGeralVlrRealOC: TFloatField;
    SMDBGrid5: TSMDBGrid;
    dsmFilialGeral: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Panel4: TPanel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    qPagarlkNomeFilial: TStringField;
    qFornecedorlkNomeFilial: TStringField;
    qOCDetalhada: TQuery;
    mOC: TClientDataSet;
    mOCDtEntregue: TDateField;
    mOCDtVencimento: TDateField;
    mOCVlrTotal: TFloatField;
    qComissao: TQuery;
    qComissaoFilial: TIntegerField;
    qComissaoFuncao: TStringField;
    qComissaoVlrComissao: TFloatField;
    TabSheet4: TRzTabSheet;
    SMDBGrid6: TSMDBGrid;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    qOCDetalhadaFilial: TIntegerField;
    qOCDetalhadaVlrRestante: TFloatField;
    qOCDetalhadaVlrEntregue: TFloatField;
    qOCDetalhadaDtEntrega: TDateField;
    qOCDetalhadaDtEmissao: TDateField;
    qOCDetalhadaCodMaterial: TIntegerField;
    qOCDetalhadaItem: TIntegerField;
    qOCDetalhadaCodCor: TIntegerField;
    qOCDetalhadaNomeMaterial: TStringField;
    qOCDetalhadaCodigo: TIntegerField;
    qOCDetalhadaCodFornecedor: TIntegerField;
    qOCDetalhadaNomeForn: TStringField;
    qOCDetalhadaQtdEntregue: TFloatField;
    qOCDetalhadaQtdRestante: TFloatField;
    qOCDetalhadaQtd: TFloatField;
    qOCDetalhadaVlrUnitario: TFloatField;
    qOCDetalhadaVlrTotal: TFloatField;
    mOCNumOC: TIntegerField;
    mOCCodFornecedor: TIntegerField;
    mOCNomeFornecedor: TStringField;
    mOCCodProduto: TIntegerField;
    mOCNomeProduto: TStringField;
    mOCCodCor: TIntegerField;
    mOCNomeCor: TStringField;
    mOCFilial: TIntegerField;
    mOCQtd: TFloatField;
    mOCQtdEntregue: TFloatField;
    mOCQtdRestante: TFloatField;
    mOCVlrPendente: TFloatField;
    mOCVlrEntregue: TFloatField;
    mOCDtEmissao: TDateField;
    mOCVlrUnitario: TFloatField;
    mOCPrazo: TStringField;
    dsmOC: TDataSource;
    qOCDetalhadaCodCondPgto: TIntegerField;
    Panel3: TPanel;
    Label5: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    mImprimir: TClientDataSet;
    mImprimirCodigo: TIntegerField;
    dsmImprimir: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qPagarCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure mFilialGeralNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mOCBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vSQL : String;
    vSQLPedido : String;
    vVlrPendente, vVlrEntregue, vVlrTotal : Real;

    procedure Monta_SQLqPagar;
    procedure Monta_SQLqFilial;
    procedure Monta_SQLqFornecedor;
    procedure Monta_SQLqPedido;
    procedure Monta_SQLqOCDetalhada;
    procedure Le_qFilial;
    procedure Le_qPedido;
    procedure Le_qOC;
    procedure Le_mFilialGeral;
    procedure Le_qComissao;
    procedure Le_qOCDetalhada;
    procedure Grava_mOC(Data : TDate; Prazo : String);

  public
    { Public declarations }
  end;

var
  fConsPagarReceber: TfConsPagarReceber;

implementation

uses UDM1, URelPagarReceber;

{$R *.DFM}

procedure TfConsPagarReceber.Grava_mOC(Data : TDate; Prazo : String);
begin
  if (DateEdit1.Date > 0) and (Data < DateEdit1.Date) then
    exit;
  if (DateEdit2.Date > 0) and (Data > DateEdit2.Date) then
    exit;

  vVlrEntregue := 0;
  vVlrPendente := 0;
  vVlrTotal    := 0;


  mOC.Insert;
  mOCFilial.AsInteger := qOCDetalhadaFilial.AsInteger;
  mOCNumOC.AsInteger  := qOCDetalhadaCodigo.AsInteger;
  mOCDtEmissao.AsDateTime := qOCDetalhadaDtEmissao.AsDateTime;
  mOCDtEntregue.AsDateTime := qOCDetalhadaDtEntrega.AsDateTime;
  mOCDtVencimento.AsDateTime := Data;
  mOCCodFornecedor.AsInteger := qOCDetalhadaCodFornecedor.AsInteger;
  mOCNomeFornecedor.AsString := qOCDetalhadaNomeForn.AsString;
  mOCCodProduto.AsInteger    := qOCDetalhadaCodMaterial.AsInteger;
  mOCNomeProduto.AsString    := qOCDetalhadaNomeMaterial.AsString;
  mOCCodCor.AsInteger        := qOCDetalhadaCodCor.AsInteger;

  if DM1.tCor.FindKey([qOCDetalhadaCodCor.AsInteger]) then
    mOCNomeCor.AsString        := DM1.tCorNome.AsString;
  mOCQtd.AsFloat               := qOCDetalhadaQtd.AsFloat;
  mOCQtdEntregue.AsFloat       := qOCDetalhadaQtdEntregue.AsFloat;
  mOCQtdRestante.AsFloat       := qOCDetalhadaQtdRestante.AsFloat;
  mOCVlrPendente.AsFloat       := qOCDetalhadaVlrRestante.AsFloat;
  mOCVlrEntregue.AsFloat       := qOCDetalhadaVlrEntregue.AsFloat;
  mOCVlrTotal.AsFloat          := qOCDetalhadaVlrTotal.AsFloat;
  mOCVlrUnitario.AsFloat       := qOCDetalhadaVlrUnitario.AsFloat;
  mOCPrazo.AsString            := Prazo;
  mOC.Post;
end;

procedure TfConsPagarReceber.Le_qOCDetalhada;
var
  vData : TDateTime;
  vVlrAux : Real;
begin
  vVlrEntregue := 0;
  vVlrPendente := 0;
  vVlrTotal    := 0;

  DM1.tCor.IndexFieldNames := 'Codigo';
  ProgressBar1.Max      := qOCDetalhada.RecordCount;
  ProgressBar1.Position := 0;
  mOC.EmptyDataSet;
  qOCDetalhada.First;
  while not qOCDetalhada.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if qOCDetalhadaDtEntrega.AsDateTime > 1 then
        vData := qOCDetalhadaDtEntrega.AsDateTime
      else
        vData := qOCDetalhadaDtEmissao.AsDateTime;

      if DM1.tCondPgto.FindKey([qOCDetalhadaCodCondPgto.AsInteger]) then
        begin
          if DM1.tCondPgtoPrazoVista.AsString = 'V' then
            Grava_mOC(qOCDetalhadaDtEntrega.AsDateTime,DM1.tCondPgtoNome.AsString)
          else
            begin
              DM1.tCondPgtoItem.First;
              while not DM1.tCondPgtoItem.Eof do
                begin
                  vData := vData + DM1.tCondPgtoItemQtdDias.AsFloat;
                  Grava_mOC(vData,DM1.tCondPgtoNome.AsString);
                  DM1.tCondPgtoItem.Next;
                end;
            end;
        end
      else
        Grava_mOC(qOCDetalhadaDtEntrega.AsDateTime,'Não Especificado');
      qOCDetalhada.Next;
    end;
end;

procedure TfConsPagarReceber.Le_qComissao;
begin
  qComissao.Close;
  qComissao.Open;
  qComissao.First;
  while not qComissao.Eof do
    begin
      if (RxDBLookupCombo2.Text = '') or
         ((RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo2.KeyValue = qComissaoFilial.AsInteger)) then
        begin
          if mFilialGeral.Locate('Filial',qComissaoFilial.AsInteger,[loCaseInsensitive]) then
            mFilialGeral.Edit
          else
            begin
              mFilialGeral.Insert;
              mFilialGeralFilial.AsInteger := qComissaoFilial.AsInteger;
            end;
          if qComissaoFuncao.AsString = 'E' then
            mFilialGeralVlrComissao.AsFloat := mFilialGeralVlrComissao.AsFloat + qComissaoVlrComissao.AsFloat
          else
            mFilialGeralVlrComissao.AsFloat := mFilialGeralVlrComissao.AsFloat - qComissaoVlrComissao.AsFloat;
          mFilialGeral.Post;
        end;
      qComissao.Next;
    end;
end;

procedure TfConsPagarReceber.Monta_SQLqOCDetalhada;
begin
  qOCDetalhada.Close;
  qOCDetalhada.SQL.Clear;
  qOCDetalhada.SQL.Add('SELECT Dbordemcompraitem.Filial, SUM(  Dbordemcompraitem.VlrUnitario * Dbordemcompraitem.QtdRestante  ) VlrRestante, ');
  qOCDetalhada.SQL.Add(' SUM(  Dbordemcompraitem.VlrUnitario * Dbordemcompraitem.QtdEntregue  ) VlrEntregue, Dbordemcompraitem.DtEntrega, ');
  qOCDetalhada.SQL.Add(' Dbordemcompra.DtEmissao, Dbordemcompraitem.CodMaterial, Dbordemcompraitem.Item, Dbordemcompraitem.CodCor, ');
  qOCDetalhada.SQL.Add(' Dbproduto.Nome NomeMaterial, Dbordemcompra.Codigo, Dbordemcompra.CodFornecedor, Dbfornecedores.NomeForn, ');
  qOCDetalhada.SQL.Add(' Dbordemcompraitem.QtdEntregue, Dbordemcompraitem.QtdRestante, Dbordemcompraitem.Qtd, ');
  qOCDetalhada.SQL.Add(' Dbordemcompraitem.VlrUnitario, Dbordemcompraitem.VlrTotal, Dbordemcompra.CodCondPgto ');
  qOCDetalhada.SQL.Add('FROM "dbOrdemCompra.DB" Dbordemcompra ');
  qOCDetalhada.SQL.Add('   INNER JOIN "dbOrdemCompraItem.DB" Dbordemcompraitem ');
  qOCDetalhada.SQL.Add('   ON  (Dbordemcompra.Filial = Dbordemcompraitem.Filial) ');
  qOCDetalhada.SQL.Add('   AND  (Dbordemcompra.Codigo = Dbordemcompraitem.Codigo) ');
  qOCDetalhada.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores ');
  qOCDetalhada.SQL.Add('   ON  (Dbordemcompra.CodFornecedor = Dbfornecedores.CodForn) ');
  qOCDetalhada.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto ');
  qOCDetalhada.SQL.Add('   ON  (Dbordemcompraitem.CodMaterial = Dbproduto.Codigo) ');
  qOCDetalhada.SQL.Add('WHERE  (0=0) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qOCDetalhada.SQL.Add(' AND (dbOrdemCompraItem.Filial = :Filial) ');
      qOCDetalhada.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit3.Date > 0 then
    begin
      qOCDetalhada.SQL.Add(' AND (dbOrdemCompra.DtEmissao >= :DtEmissaoIni) ');
      qOCDetalhada.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qOCDetalhada.SQL.Add(' AND (dbOrdemCompra.DtEmissao <= :DtEmissaoFin) ');
      qOCDetalhada.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qOCDetalhada.SQL.Add(' AND  (Dbordemcompraitem.QtdRestante > 0)');
    1 : qOCDetalhada.SQL.Add(' AND  (Dbordemcompraitem.QtdEntregue > 0)');
  end;
  qOCDetalhada.SQL.Add('GROUP BY Dbordemcompraitem.Filial, Dbordemcompraitem.DtEntrega, Dbordemcompra.DtEmissao, ');
  qOCDetalhada.SQL.Add('Dbordemcompraitem.CodMaterial, Dbordemcompraitem.Item, Dbordemcompraitem.CodCor, Dbproduto.Nome, Dbordemcompra.Codigo, ');
  qOCDetalhada.SQL.Add('Dbordemcompra.CodFornecedor, Dbfornecedores.NomeForn, Dbordemcompraitem.QtdEntregue, Dbordemcompraitem.QtdRestante, ');
  qOCDetalhada.SQL.Add('Dbordemcompraitem.Qtd, Dbordemcompraitem.VlrUnitario, Dbordemcompraitem.VlrTotal, Dbordemcompra.CodCondPgto ');
  qOCDetalhada.SQL.Add('ORDER BY Dbordemcompraitem.Filial, Dbordemcompraitem.DtEntrega, Dbordemcompra.CodCondPgto');
  qOCDetalhada.Open;
end;

procedure TfConsPagarReceber.Le_mFilialGeral;
begin
  mFilialGeral.First;
  while not mFilialGeral.Eof do
    begin
      mFilialGeral.Edit;
      mFilialGeralVlrReal.AsFloat       := mFilialGeralVlrReceber.AsFloat - mFilialGeralVlrPagar.AsFloat;
      mFilialGeralVlrRealPedido.AsFloat := mFilialGeralVlrReal.AsFloat + mFilialGeralVlrPedidoGeral.AsFloat;
      mFilialGeralVlrRealOC.AsFloat     := mFilialGeralVlrRealPedido.AsFloat - mFilialGeralVlrOC.AsFloat - mFilialGeralVlrComissao.AsFloat;
      mFilialGeral.Post;
      mFilialGeral.Next;
    end;
end;

procedure TfConsPagarReceber.Le_qOC;
begin
  qOC.Close;
  qOC.Open;
  qOC.First;
  while not qOC.Eof do
    begin
      if (RxDBLookupCombo2.Text = '') or
         ((RxDBLookupCombo2.Text <> '') and (RxDBLookupCombo2.KeyValue = qOCFilial.AsInteger)) then
        begin
          if mFilialGeral.Locate('Filial',qOCFilial.AsInteger,[loCaseInsensitive]) then
            mFilialGeral.Edit
          else
            begin
              mFilialGeral.Insert;
              mFilialGeralFilial.AsInteger := qOCFilial.AsInteger;
            end;
          mFilialGeralVlrOC.AsFloat := mFilialGeralVlrOC.AsFloat + qOCValor.AsFloat;
          mFilialGeral.Post;
        end;
      qOC.Next;
    end;

  //Le OC Detalhada
  {DM1.tCondPgto.IndexFieldNames := 'Codigo';
  mOC.EmptyDataSet;
  qOCDetalhada.First;
  while not qOCDetalhada.Eof do
    begin
      Le_CondPagto;
      qOCDetalhada.Next;
    end;}
end;

procedure TfConsPagarReceber.Le_qPedido;
var
  vVlrAux, vQtd : Real;
begin
  qPedido.First;
  while not qPedido.Eof do
    begin
      if mFilialGeral.Locate('Filial',qPedidoFilial.AsInteger,[loCaseInsensitive]) then
        mFilialGeral.Edit
      else
        begin
          mFilialGeral.Insert;
          mFilialGeralFilial.AsInteger := qPedidoFilial.AsInteger;
        end;
      vQtd := qPedidoQtdParesRest.AsFloat;
      if qPedidoTalao.AsInteger > 0 then
        vQtd := qPedidoQtdRestanteTalao.AsFloat;
      vVlrAux := StrToFloat(FormatFloat('0.00',vQtd * (qPedidoPreco.AsFloat - qPedidoVlrDesconto.AsFloat)));
      if ((qPedidoTalao.AsInteger > 0) and (qPedidoDtReprogramacaoTalao.AsDateTime < Date)) or
         ((qPedidoTalao.AsInteger < 0) and (qPedidoDtReprogramacao.AsDateTime < Date)) then
        mFilialGeralVlrPedidoAtrazo.AsFloat := mFilialGeralVlrPedidoAtrazo.AsFloat + vVlrAux
      else
        mFilialGeralVlrPedido.AsFloat := mFilialGeralVlrPedido.AsFloat + vVlrAux;
      mFilialGeralVlrPedidoGeral.AsFloat := mFilialGeralVlrPedidoGeral.AsFloat + vVlrAux;
      mFilialGeral.Post;
      qPedido.Next;
    end;
end;

procedure TfConsPagarReceber.Monta_SQLqPedido;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Text := vSQLPedido;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedido.SQL.Add(' AND (dbPedido.Filial = :Filial)');
      qPedido.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  qPedido.Open;
end;

procedure TfConsPagarReceber.Le_qFilial;
begin
  qFilialPagar.First;
  while not qFilialPagar.Eof do
    begin
      if mFilialGeral.Locate('Filial',qFilialPagarFilial.AsInteger,[loCaseInsensitive]) then
        mFilialGeral.Edit
      else
        begin
          mFilialGeral.Insert;
          mFilialGeralFilial.AsInteger := qFilialPagarFilial.AsInteger;
          mFilialGeralNome.AsString    := qFilialPagarNomeInterno.AsString;
        end;
      mFilialGeralVlrPagar.AsFloat := mFilialGeralVlrPagar.AsFloat + qFilialPagarVlrParcela.AsFloat;
      mFilialGeral.Post;
      qFilialPagar.Next;
    end;
  //Receber  
  qFilialReceber.First;
  while not qFilialReceber.Eof do
    begin
      if mFilialGeral.Locate('Filial',qFilialReceberFilial.AsInteger,[loCaseInsensitive]) then
        mFilialGeral.Edit
      else
        begin
          mFilialGeral.Insert;
          mFilialGeralFilial.AsInteger := qFilialReceberFilial.AsInteger;
          mFilialGeralNome.AsString    := qFilialReceberNomeInterno.AsString;
        end;
      mFilialGeralVlrReceber.AsFloat := mFilialGeralVlrReceber.AsFloat + qFilialReceberVlrParcela.AsFloat;
      mFilialGeral.Post;
      qFilialReceber.Next;
    end;
end;

procedure TfConsPagarReceber.Monta_SQLqFornecedor;
begin
  qFornecedor.Close;
  qFornecedor.SQL.Clear;
  qFornecedor.SQL.Add('SELECT Dbcpagar.Filial, Dbfornecedores.NomeForn, Dbfornecedores.CodForn, SUM( Dbcpagarparc.VlrParcCPagar ) VlrParcela, ');
  qFornecedor.SQL.Add(' SUM( Dbcpagarparc.Desconto ) VlrDesconto, SUM( Dbcpagarparc.PgtoParcial ) VlrPago, SUM( Dbcpagarparc.RestParcela ) VlrRestante, ');
  qFornecedor.SQL.Add(' SUM( Dbcpagarparc.Despesas ) VlrDespesas, SUM( Dbcpagarparc.JurosPagos ) VlrJurosPagos, SUM( Dbcpagarparc.VlrDevolucao ) VlrDevolucao ');
  qFornecedor.SQL.Add('FROM "dbCPagar.DB" Dbcpagar ');
  qFornecedor.SQL.Add('   INNER JOIN "dbCPagarParc.DB" Dbcpagarparc ');
  qFornecedor.SQL.Add('   ON  (Dbcpagar.Filial = Dbcpagarparc.Filial) ');
  qFornecedor.SQL.Add('   AND  (Dbcpagar.NumCPagar = Dbcpagarparc.NumCPagar) ');
  qFornecedor.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores ');
  qFornecedor.SQL.Add('   ON  (Dbcpagarparc.CodForn = Dbfornecedores.CodForn) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qFornecedor.SQL.Add(' AND (dbCPagar.Filial = :Filial) ');
      qFornecedor.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qFornecedor.SQL.Add(' AND (dbCPagarParc.DtVencCPagar >= :DtVectoIni) ');
      qFornecedor.ParamByName('DtVectoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qFornecedor.SQL.Add(' AND (dbCPagarParc.DtVencCPagar <= :DtVectoFin) ');
      qFornecedor.ParamByName('DtVectoFin').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qFornecedor.SQL.Add(' AND (dbCPagarParc.DtGerado >= :DtEmissaoIni) ');
      qFornecedor.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qFornecedor.SQL.Add(' AND (dbCPagarParc.DtGerado <= :DtEmissaoFin) ');
      qFornecedor.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qFornecedor.SQL.Add(' AND (dbCPagarParc.RestParcela > 0)');
    1 : qFornecedor.SQL.Add(' AND (dbCPagarParc.PgtoParcial > 0)');
  end;
  qFornecedor.SQL.Add('GROUP BY Dbcpagar.Filial, Dbfornecedores.NomeForn, Dbfornecedores.CodForn ');
  qFornecedor.SQL.Add('ORDER BY Dbcpagar.Filial, Dbfornecedores.NomeForn ');
  qFornecedor.Open;
end;

procedure TfConsPagarReceber.Monta_SQLqFilial;
begin
  //Pagar
  qFilialPagar.Close;
  qFilialPagar.SQL.Clear;
  qFilialPagar.SQL.Add('SELECT Dbcpagar.Filial, SUM( Dbcpagarparc.VlrParcCPagar ) VlrParcela, SUM( Dbcpagarparc.Desconto ) VlrDesconto, ');
  qFilialPagar.SQL.Add(' SUM( Dbcpagarparc.PgtoParcial ) VlrPago, SUM( Dbcpagarparc.RestParcela ) VlrRestante, SUM( Dbcpagarparc.Despesas ) VlrDespesas, ');
  qFilialPagar.SQL.Add(' SUM( Dbcpagarparc.JurosPagos ) VlrJurosPagos, SUM( Dbcpagarparc.VlrDevolucao ) VlrDevolucao, Dbfilial.Empresa, Dbfilial.NomeInterno ');
  qFilialPagar.SQL.Add('FROM "dbCPagar.DB" Dbcpagar ');
  qFilialPagar.SQL.Add('   INNER JOIN "dbCPagarParc.DB" Dbcpagarparc ');
  qFilialPagar.SQL.Add('   ON  (Dbcpagar.Filial = Dbcpagarparc.Filial) ');
  qFilialPagar.SQL.Add('   AND  (Dbcpagar.NumCPagar = Dbcpagarparc.NumCPagar) ');
  qFilialPagar.SQL.Add('   INNER JOIN "dbFilial.DB" Dbfilial ');
  qFilialPagar.SQL.Add('   ON  (Dbcpagarparc.Filial = Dbfilial.Codigo) ');
  qFilialPagar.SQL.Add('WHERE (0=0) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qFilialPagar.SQL.Add(' AND (dbCPagar.Filial = :Filial) ');
      qFilialPagar.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qFilialPagar.SQL.Add(' AND (dbCPagarParc.DtVencCPagar >= :DtVectoIni) ');
      qFilialPagar.ParamByName('DtVectoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qFilialPagar.SQL.Add(' AND (dbCPagarParc.DtVencCPagar <= :DtVectoFin) ');
      qFilialPagar.ParamByName('DtVectoFin').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qFilialPagar.SQL.Add(' AND (dbCPagarParc.DtGerado >= :DtEmissaoIni) ');
      qFilialPagar.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qFilialPagar.SQL.Add(' AND (dbCPagarParc.DtGerado <= :DtEmissaoFin) ');
      qFilialPagar.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qFilialPagar.SQL.Add(' AND (dbCPagarParc.RestParcela > 0)');
    1 : qFilialPagar.SQL.Add(' AND (dbCPagarParc.PgtoParcial > 0)');
  end;
  qFilialPagar.SQL.Add('GROUP BY Dbcpagar.Filial, Dbfilial.Empresa, Dbfilial.NomeInterno ');
  qFilialPagar.SQL.Add('ORDER BY Dbcpagar.Filial ');
  qFilialPagar.Open;

  //Receber
  qFilialReceber.Close;
  qFilialReceber.SQL.Clear;
  qFilialReceber.SQL.Add('SELECT dbCReceber.Filial, SUM( dbCReceberParc.VlrParcCReceber ) VlrParcela, SUM( dbCReceberParc.Desconto ) VlrDesconto, ');
  qFilialReceber.SQL.Add(' SUM( dbCReceberParc.PgtoParcial ) VlrPago, SUM( dbCReceberParc.RestParcela ) VlrRestante, SUM( dbCReceberParc.Despesas ) VlrDespesas, ');
  qFilialReceber.SQL.Add(' SUM( dbCReceberParc.JurosPagos ) VlrJurosPagos, SUM( dbCReceberParc.VlrDevolucao ) VlrDevolucao, Dbfilial.Empresa, Dbfilial.NomeInterno ');
  qFilialReceber.SQL.Add('FROM "dbCReceber.DB" Dbcreceber');
  qFilialReceber.SQL.Add('   INNER JOIN "dbCReceberParc.DB" Dbcreceberparc');
  qFilialReceber.SQL.Add('   ON  (dbCReceber.Filial = dbCReceberParc.Filial)');
  qFilialReceber.SQL.Add('   AND  (dbCReceber.NumCReceber = dbCReceberParc.NumCReceber)');
  qFilialReceber.SQL.Add('   INNER JOIN "dbFilial.DB" Dbfilial');
  qFilialReceber.SQL.Add('   ON  (dbCReceberParc.Filial = Dbfilial.Codigo)');
  qFilialReceber.SQL.Add('WHERE (0=0) ');
  if RxDBLookupCombo2.Text <> '' then
    begin
      qFilialReceber.SQL.Add(' AND (dbCReceberParc.Filial = :Filial) ');
      qFilialReceber.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qFilialReceber.SQL.Add(' AND (dbCReceberParc.DtVencCReceber >= :DtVectoIni) ');
      qFilialReceber.ParamByName('DtVectoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qFilialReceber.SQL.Add(' AND (dbCReceberParc.DtVencCReceber <= :DtVectoFin) ');
      qFilialReceber.ParamByName('DtVectoFin').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qFilialReceber.SQL.Add(' AND (dbCReceberParc.DtGerado >= :DtEmissaoIni) ');
      qFilialReceber.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qFilialReceber.SQL.Add(' AND (dbCReceberParc.DtGerado <= :DtEmissaoFin) ');
      qFilialReceber.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qFilialReceber.SQL.Add(' AND (dbCReceberParc.RestParcela > 0)');
    1 : qFilialReceber.SQL.Add(' AND (dbCReceberParc.PgtoParcial > 0)');
  end;
  qFilialReceber.SQL.Add('GROUP BY dbCReceber.Filial, Dbfilial.Empresa, Dbfilial.NomeInterno');
  qFilialReceber.SQL.Add('ORDER BY dbCReceber.Filial');
  qFilialReceber.Open;
end;

procedure TfConsPagarReceber.Monta_SQLqPagar;
begin
  qPagar.Close;
  qPagar.SQL.Clear;
  qPagar.SQL.Add(vSQL);
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPagar.SQL.Add(' AND (dbCPagar.Filial = :Filial) ');
      qPagar.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qPagar.SQL.Add(' AND (dbCPagarParc.DtVencCPagar >= :DtVectoIni) ');
      qPagar.ParamByName('DtVectoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qPagar.SQL.Add(' AND (dbCPagarParc.DtVencCPagar <= :DtVectoFin) ');
      qPagar.ParamByName('DtVectoFin').AsDate := DateEdit2.Date;
    end;
  if DateEdit3.Date > 0 then
    begin
      qPagar.SQL.Add(' AND (dbCPagarParc.DtGerado >= :DtEmissaoIni) ');
      qPagar.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qPagar.SQL.Add(' AND (dbCPagarParc.DtGerado <= :DtEmissaoFin) ');
      qPagar.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qPagar.SQL.Add(' AND (dbCPagarParc.RestParcela > 0)');
    1 : qPagar.SQL.Add(' AND (dbCPagarParc.PgtoParcial > 0)');
  end;
  qPagar.SQL.Add('ORDER BY dbCPagar.Filial, dbFornecedores.NomeForn, dbCPagarParc.DtVencCPagar, dbCPagarParc.NroDuplicata');
  qPagar.Open;
end;

procedure TfConsPagarReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      Dm1.tCPagar.Close;
      Dm1.tCPagarParc.Close;
      Dm1.tCPagarParcHist.Close;
      Dm1.tFornecedores.Close;
      DM1.tJuros.Close;
      DM1.tMovimentos.Close;
      DM1.tCheque.Close;
      DM1.tChequeCPagar.Close;
      DM1.tNEntrada.Close;
      DM1.tPlanoContas.Close;
      DM1.tPlanoContasItens.Close;
    end;
  Action := Cafree;
end;

procedure TfConsPagarReceber.BitBtn7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  //if RzPageControl1.ActivePage = TabSheet3 then
    Monta_SQLqFilial;
  //else
  //if RzPageControl1.ActivePage = TabSheet2 then
    Monta_SQLqFornecedor;
  //else
    Monta_SQLqPagar;

  mFilialGeral.EmptyDataSet;
  Monta_SQLqPedido;
  //Monta_SQLqOCDetalhada;
  Le_qFilial;
  Le_qPedido;
  Le_qOC;
  Le_qComissao;
  Le_mFilialGeral;


  Screen.Cursor   := crDefault;
end;

procedure TfConsPagarReceber.FormCreate(Sender: TObject);
begin
  Dm1.tCPagar.Open;
  Dm1.tCPagarParc.Open;
  Dm1.tCPagarParcHist.Open;
  Dm1.tFornecedores.Open;
  DM1.tContas.Open;
  DM1.tJuros.Open;
  DM1.tMovimentos.Open;
  DM1.tCheque.Open;
  DM1.tChequeCPagar.Open;
  DM1.tNEntrada.Open;
  DM1.tPlanoContas.Open;
  DM1.tPlanoContasItens.Open;
end;

procedure TfConsPagarReceber.qPagarCalcFields(DataSet: TDataSet);
begin
  if StrToFloat(FormatFloat('0.00',qPagarRestParcela.AsFloat)) > 0 then
    qPagarclDiasAtraso.AsFloat := Date - qPagarDtVencCPagar.AsDateTime
  else
    qPagarclDiasAtraso.AsFloat := qPagarDtPagParcCPagar.AsDateTime - qPagarDtVencCPagar.AsDateTime;
  if qPagarclDiasAtraso.AsFloat <= 0 then
    qPagarclDiasAtraso.AsInteger := 0;
end;

procedure TfConsPagarReceber.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  vSQL       := qPagar.SQL.Text;
  vSQLPedido := qPedido.SQL.Text;

  DM1.tCondPgto.Open;
  DM1.tCondPgtoItem.Open;
  DM1.tCor.Open;

  TabSheet4.TabVisible := False;
end;

procedure TfConsPagarReceber.mFilialGeralNewRecord(DataSet: TDataSet);
begin
  mFilialGeralVlrReceber.AsFloat      := 0;
  mFilialGeralVlrPagar.AsFloat        := 0;
  mFilialGeralVlrPedido.AsFloat       := 0;
  mFilialGeralVlrOC.AsFloat           := 0;
  mFilialGeralVlrComissao.AsFloat     := 0;
  mFilialGeralVlrPedidoAtrazo.AsFloat := 0;
  mFilialGeralVlrPedidoGeral.AsFloat  := 0;
end;

procedure TfConsPagarReceber.BitBtn2Click(Sender: TObject);
begin
  mImprimir.EmptyDataSet;
  mImprimir.Insert;
  mImprimirCodigo.AsInteger := 1;
  mImprimir.Post;

  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  fRelPagarReceber := TfRelPagarReceber.Create(Self);

  fRelPagarReceber.RLSubDetail1.Visible := CheckBox1.Checked;
  fRelPagarReceber.RLSubDetail2.Visible := CheckBox2.Checked;
  fRelPagarReceber.RLSubDetail3.Visible := CheckBox3.Checked;

  fRelPagarReceber.RLReport1.Preview;
  fRelPagarReceber.RLReport1.Free;
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
end;

procedure TfConsPagarReceber.BitBtn1Click(Sender: TObject);
begin
  Monta_SQLqOCDetalhada;
  Le_qOCDetalhada;
end;

procedure TfConsPagarReceber.mOCBeforePost(DataSet: TDataSet);
begin
  if mOCDtEntregue.AsDateTime < 10 then
    mOCDtEntregue.Clear;
end;

end.
