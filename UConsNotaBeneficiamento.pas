unit UConsNotaBeneficiamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Mask, DBCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolEdit, CurrEdit, Db, DBTables, DBFilter, MemTable,
  Variants, ALed, SMDBGrid, RzTabs, DBClient, ComCtrls;
  
type
  TfConsNotaBeneficiamento = class(TForm)
    qNotaEntrada: TQuery;
    dsqNotaEntrada: TDataSource;
    qNotaEntradaCodForn: TIntegerField;
    qNotaEntradaNomeForn: TStringField;
    qNotaEntradaNumNEntr: TIntegerField;
    qNotaEntradaDtEmissaoNEntr: TDateField;
    qNotaEntradaVlrTotalNEntr: TFloatField;
    qNotaEntradaDtEntrada: TDateField;
    qNotaEntradaCodMaterial: TIntegerField;
    qNotaEntradaQtd: TFloatField;
    qNotaEntradaVlrUnit: TFloatField;
    qNotaEntradaVlrTotalItens: TFloatField;
    qNotaEntradaCodCor: TIntegerField;
    qNotaEntradaUnidade: TStringField;
    qNotaEntradaQtdRestante: TFloatField;
    qNotaEntradaQtdDevolvida: TFloatField;
    qNotaEntradalkNomeCor: TStringField;
    qNotaEntradaItem: TSmallintField;
    qNotaEntradaSitTrib: TSmallintField;
    qNotaEntradaclVlrTotalRestante: TFloatField;
    tNotaFiscalNDevolvida: TTable;
    tNotaFiscalNDevolvidaFilial: TIntegerField;
    tNotaFiscalNDevolvidaNumNota: TIntegerField;
    tNotaFiscalNDevolvidaItem: TIntegerField;
    tNotaFiscalNDevolvidaCodFornecedor: TIntegerField;
    tNotaFiscalNDevolvidaNumNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaItemNotaEntrada: TIntegerField;
    tNotaFiscalNDevolvidaQtd: TFloatField;
    dsNotaFiscalNDevolvida: TDataSource;
    qNotaEntradaFilial: TIntegerField;
    tNotaFiscalNDevolvidalkDtEmissao: TDateField;
    qNotaEntradaNome: TStringField;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    mAcumulado: TClientDataSet;
    mAcumuladoCodMaterial: TIntegerField;
    mAcumuladoNomeMaterial: TStringField;
    mAcumuladoCodCor: TIntegerField;
    mAcumuladoNomeCor: TStringField;
    mAcumuladoQtd: TFloatField;
    mAcumuladoQtdDevolvida: TFloatField;
    mAcumuladoQtdRestante: TFloatField;
    mAcumuladoVlrTotal: TFloatField;
    mAcumuladoVlrRestante: TFloatField;
    mAcumuladoVlrDevolvido: TFloatField;
    dsmAcumulado: TDataSource;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    Label20: TLabel;
    ALed4: TALed;
    RxDBGrid2: TRxDBGrid;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    qNotaEntradaNumPedCliente: TStringField;
    TabSheet3: TRzTabSheet;
    mAcumuladoPedido: TClientDataSet;
    mAcumuladoPedidoNumPedCliente: TStringField;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    SMDBGrid3: TSMDBGrid;
    dsmAcumuladoPedido: TDataSource;
    mAcumuladoPedidoCodMaterial: TIntegerField;
    mAcumuladoPedidoNomeMaterial: TStringField;
    mAcumuladoPedidoCodCor: TIntegerField;
    mAcumuladoPedidoNomeCor: TStringField;
    mAcumuladoPedidoQtd: TFloatField;
    mAcumuladoPedidoQtdDevolvida: TFloatField;
    mAcumuladoPedidoQtdRestante: TFloatField;
    mAcumuladoPedidoVlrTotal: TFloatField;
    mAcumuladoPedidoVlrRestante: TFloatField;
    mAcumuladoPedidoVlrDevolvido: TFloatField;
    tNotaFiscal2: TTable;
    tNotaFiscal2Filial: TIntegerField;
    tNotaFiscal2NumSeq: TIntegerField;
    tNotaFiscal2DtEmissao: TDateField;
    tNotaFiscalNDevolvidaNumSeq: TIntegerField;
    qNotaEntradalkCodNatOper: TStringField;
    qNotaEntradaCodNatOper: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qNotaEntradaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Le_qNotaEntrada(Tipo : String);
    procedure Monta_SQLqNotaEntrada;
  public
    { Public declarations }
  end;

var
  fConsNotaBeneficiamento: TfConsNotaBeneficiamento;

implementation

uses UDM1, URelNotaBeneficiamento, URelNotaBeneficiamentoAcum,
  URelNotaBeneficiamentoAcumPed;

{$R *.DFM}

procedure TfConsNotaBeneficiamento.Monta_SQLqNotaEntrada;
begin
  qNotaEntrada.Close;
  qNotaEntrada.SQL.Clear;
  qNotaEntrada.SQL.Add('SELECT Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.NumNEntr, Dbnentrada.DtEmissaoNEntr,');
  qNotaEntrada.SQL.Add(' Dbnentrada.VlrTotalNEntr, Dbnentrada.DtEntrada, Dbnentradaitens.CodMaterial, Dbnentradaitens.Qtd,');
  qNotaEntrada.SQL.Add(' Dbnentradaitens.VlrUnit, Dbnentradaitens.VlrTotalItens, Dbnentradaitens.CodCor, Dbnentradaitens.Unidade,');
  qNotaEntrada.SQL.Add(' Dbnentradaitens.QtdRestante, Dbnentradaitens.QtdDevolvida, Dbnentradaitens.Item, Dbnentradaitens.SitTrib, ');
  qNotaEntrada.SQL.Add(' Dbnentrada.Filial, Dbnentrada.Filial, dbProduto.Nome, dbNEntradaItens.NumPedCliente, dbNEntradaItens.CodNatOper ');
  qNotaEntrada.SQL.Add('FROM "DBNENTRADA.DB" Dbnentrada');
  qNotaEntrada.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qNotaEntrada.SQL.Add('   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)');
  qNotaEntrada.SQL.Add('   INNER JOIN "dbNEntradaItens.DB" Dbnentradaitens');
  qNotaEntrada.SQL.Add('   ON  (Dbnentrada.NumNEntr = Dbnentradaitens.NumNEntr)');
  qNotaEntrada.SQL.Add('   AND  (Dbnentrada.CodForn = Dbnentradaitens.CodForn)');
  qNotaEntrada.SQL.Add('   INNER JOIN "dbProduto.DB" dbProduto');
  qNotaEntrada.SQL.Add('   ON  (DbnentradaItens.CodMaterial = dbProduto.Codigo)');
  //qNotaEntrada.SQL.Add('    JOIN "dbNatOperacao.DB" dbNatOperacao');
  //qNotaEntrada.SQL.Add('   ON  (DbnentradaItens.CodNatOper = dbNatOperacao.Codigo)');
  qNotaEntrada.SQL.Add('WHERE   (Dbnentrada.CodForn = :CodFornecedor) ');
  qNotaEntrada.SQL.Add('  AND   (DbnentradaItens.Devolucao = False) ');
  case ComboBox2.ItemIndex of
    0 : qNotaEntrada.SQL.Add('  AND   (dbNatOperacao.ControlarRetorno = True)');
    1 : qNotaEntrada.SQL.Add('  AND   (dbNatOperacao.ControlarRetorno = False)');
  end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qNotaEntrada.SQL.Add('  AND   (dbnentrada.Filial = :Filial)');
      qNotaEntrada.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if ComboBox1.ItemIndex = 0 then
    qNotaEntrada.SQL.Add('   AND  (Dbnentradaitens.QtdRestante > 0)')
  else
  if ComboBox1.ItemIndex = 1 then
    qNotaEntrada.SQL.Add('   AND  (Dbnentradaitens.QtdRestante <= 0)');
  if DateEdit1.Date > 0 then
    begin
      qNotaEntrada.SQL.Add('   AND  (Dbnentrada.DtEntrada >= :DtInicial)');
      qNotaEntrada.ParamByName('DtInicial').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qNotaEntrada.SQL.Add('   AND  (Dbnentrada.DtEntrada <= :DtFinal)');
      qNotaEntrada.ParamByName('DtFinal').AsDate := DateEdit2.Date;
    end;
  qNotaEntrada.SQL.Add('ORDER BY Dbnentrada.CodForn, Dbnentrada.NumNEntr');
  qNotaEntrada.ParamByName('CodFornecedor').AsInteger := RxDBLookupCombo2.KeyValue;
  qNotaEntrada.Open;
end;

procedure TfConsNotaBeneficiamento.Le_qNotaEntrada(Tipo : String);
begin
  ProgressBar1.Max      := qNotaEntrada.RecordCount;
  ProgressBar1.Position := 0;
  qNotaEntrada.First;
  while not qNotaEntrada.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      //Geral
      if Tipo = 'G' then
        begin
          if mAcumulado.Locate('CodMaterial;CodCor',VarArrayOf([qNotaEntradaCodMaterial.AsInteger,qNotaEntradaCodCor.AsInteger]),[locaseinsensitive]) then
            mAcumulado.Edit
          else
            begin
              mAcumulado.Insert;
              mAcumuladoCodMaterial.AsInteger := qNotaEntradaCodMaterial.AsInteger;
              mAcumuladoCodCor.AsInteger      := qNotaEntradaCodCor.AsInteger;
              mAcumuladoNomeMaterial.AsString := qNotaEntradaNome.AsString;
              mAcumuladoNomeCor.AsString      := qNotaEntradalkNomeCor.AsString;
            end;
          mAcumuladoQtd.AsFloat          := mAcumuladoQtd.AsFloat + qNotaEntradaQtd.AsFloat;
          mAcumuladoQtdDevolvida.AsFloat := mAcumuladoQtdDevolvida.AsFloat + qNotaEntradaQtdDevolvida.AsFloat;
          mAcumuladoQtdRestante.AsFloat  := mAcumuladoQtdRestante.AsFloat + qNotaEntradaQtdRestante.AsFloat;
          mAcumuladoVlrTotal.AsFloat     := mAcumuladoVlrTotal.AsFloat + qNotaEntradaVlrTotalItens.AsFloat;
          mAcumuladoVlrRestante.AsFloat  := mAcumuladoVlrRestante.AsFloat + StrToFloat(FormatFloat('0.00',qNotaEntradaQtdRestante.AsFloat * qNotaEntradaVlrUnit.AsFloat));
          mAcumuladoVlrDevolvido.AsFloat := mAcumuladoVlrDevolvido.AsFloat + StrToFloat(FormatFloat('0.00',qNotaEntradaQtdDevolvida.AsFloat * qNotaEntradaVlrUnit.AsFloat));
          mAcumulado.Post;
        end
      else
      //Por Pedido
        begin
          if mAcumuladoPedido.Locate('CodMaterial;CodCor;NumPedCliente',VarArrayOf([qNotaEntradaCodMaterial.AsInteger,qNotaEntradaCodCor.AsInteger,qNotaEntradaNumPedCliente.AsString]),[locaseinsensitive]) then
            mAcumuladoPedido.Edit
          else
            begin
              mAcumuladoPedido.Insert;
              mAcumuladoPedidoCodMaterial.AsInteger  := qNotaEntradaCodMaterial.AsInteger;
              mAcumuladoPedidoCodCor.AsInteger       := qNotaEntradaCodCor.AsInteger;
              mAcumuladoPedidoNomeMaterial.AsString  := qNotaEntradaNome.AsString;
              mAcumuladoPedidoNomeCor.AsString       := qNotaEntradalkNomeCor.AsString;
              mAcumuladoPedidoNumPedCliente.AsString := qNotaEntradaNumPedCliente.AsString;
            end;
          mAcumuladoPedidoQtd.AsFloat          := mAcumuladoPedidoQtd.AsFloat + qNotaEntradaQtd.AsFloat;
          mAcumuladoPedidoQtdDevolvida.AsFloat := mAcumuladoPedidoQtdDevolvida.AsFloat + qNotaEntradaQtdDevolvida.AsFloat;
          mAcumuladoPedidoQtdRestante.AsFloat  := mAcumuladoPedidoQtdRestante.AsFloat + qNotaEntradaQtdRestante.AsFloat;
          mAcumuladoPedidoVlrTotal.AsFloat     := mAcumuladoPedidoVlrTotal.AsFloat + qNotaEntradaVlrTotalItens.AsFloat;
          mAcumuladoPedidoVlrRestante.AsFloat  := mAcumuladoPedidoVlrRestante.AsFloat + StrToFloat(FormatFloat('0.00',qNotaEntradaQtdRestante.AsFloat * qNotaEntradaVlrUnit.AsFloat));
          mAcumuladoPedidoVlrDevolvido.AsFloat := mAcumuladoPedidoVlrDevolvido.AsFloat + StrToFloat(FormatFloat('0.00',qNotaEntradaQtdDevolvida.AsFloat * qNotaEntradaVlrUnit.AsFloat));
          mAcumuladoPedido.Post;
        end;
      qNotaEntrada.Next;
    end;
end;

procedure TfConsNotaBeneficiamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qNotaEntrada.Close;
  if Screen.FormCount < 3 then
    begin
      DM1.tFornecedores.Close;
      DM1.tProduto.Close;
      DM1.tProdutoCor.Close;
      DM1.tCor.Close;
    end;
  Action := CaFree;
end;

procedure TfConsNotaBeneficiamento.BitBtn1Click(Sender: TObject);
begin
  mAcumulado.EmptyDataSet;
  RxDBGrid2.DataSource := nil;
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  qNotaEntrada.Close;
  if RxDBLookupCombo2.Text <> '' then
    begin
      Monta_SQLqNotaEntrada;
      Le_qNotaEntrada('G');
      RxDBGrid2.DataSource := dsNotaFiscalNDevolvida;
    end
  else
    ShowMessage('Falta informar o Fornecedor!');
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
end;

procedure TfConsNotaBeneficiamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfConsNotaBeneficiamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsNotaBeneficiamento.qNotaEntradaCalcFields(
  DataSet: TDataSet);
begin
  qNotaEntradaclVlrTotalRestante.AsFloat := StrToFloat(FormatFloat('0.00',qNotaEntradaQtdRestante.AsFloat * qNotaEntradaVlrUnit.AsFloat));
end;

procedure TfConsNotaBeneficiamento.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tFornecedores.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tCor.Open;
end;

procedure TfConsNotaBeneficiamento.BitBtn3Click(Sender: TObject);
begin
  if RzPageControl1.ActivePageIndex = 0 then
    begin
      fRelNotaBeneficiamento := TfRelNotaBeneficiamento.Create(Self);
      fRelNotaBeneficiamento.RLReport1.Preview;
      fRelNotaBeneficiamento.RLReport1.Free;
    end
  else
  if RzPageControl1.ActivePageIndex = 1 then
    begin
      fRelNotaBeneficiamentoAcum := TfRelNotaBeneficiamentoAcum.Create(Self);
      fRelNotaBeneficiamentoAcum.RLReport1.Preview;
      fRelNotaBeneficiamentoAcum.RLReport1.Free;
    end
  else
    begin
      fRelNotaBeneficiamentoAcumPed := TfRelNotaBeneficiamentoAcumPed.Create(Self);
      fRelNotaBeneficiamentoAcumPed.RLReport1.Preview;
      fRelNotaBeneficiamentoAcumPed.RLReport1.Free;
    end;
end;

procedure TfConsNotaBeneficiamento.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qNotaEntradaQtdRestante.AsFloat > 0 then
    begin
      AFont.Color := clBlack;
      Background  := clWhite;
    end
  else
    begin
      AFont.Color := clWindow;
      Background  := clTeal;
    end;
end;

procedure TfConsNotaBeneficiamento.BitBtn4Click(Sender: TObject);
begin
  Le_qNotaEntrada('P');
end;

end.

