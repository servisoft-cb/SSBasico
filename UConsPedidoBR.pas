unit UConsPedidoBR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Grids, DBGrids, RXDBCtrl, Mask, ToolEdit,
  CurrEdit, DB, DBTables, Buttons, ExtCtrls, DBVGrids, DBClient, SMDBGrid,
  RXCtrls, RzTabs;

type
  TfConsPedidoBR = class(TForm)
    qConsulta: TQuery;
    dsqConsulta: TDataSource;
    qConsultaPedido: TIntegerField;
    qConsultaPedidoCliente: TStringField;
    qConsultaCodCliente: TIntegerField;
    qConsultaNomeCliente: TStringField;
    qConsultaItem: TIntegerField;
    qConsultaCodProduto: TIntegerField;
    qConsultaCodCor: TIntegerField;
    qConsultaQtdPares: TFloatField;
    qConsultaQtdParesFat: TFloatField;
    qConsultaQtdParesRest: TFloatField;
    qConsultaQtdParesCanc: TFloatField;
    qConsultaNumOS: TStringField;
    qConsultaDtReprogramacao: TDateField;
    qConsultaTamanho: TStringField;
    qConsultaUnidade: TStringField;
    qConsultalkNomeCor: TStringField;
    tPedidoNota: TTable;
    dsPedidoNota: TDataSource;
    tPedidoNotaPedido: TIntegerField;
    tPedidoNotaItem: TIntegerField;
    tPedidoNotaNumNota: TIntegerField;
    tPedidoNotaItemNota: TIntegerField;
    tPedidoNotaTipo: TStringField;
    tPedidoNotaDtNota: TDateField;
    tPedidoNotaQtdPares: TFloatField;
    tPedidoNotaNroLancExtComissao: TIntegerField;
    tPedidoNotaNroLancExtComissaoMod: TIntegerField;
    qConsultaFilial: TIntegerField;
    qConsultalkNomeFilial: TStringField;
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
    tPedidoGradeCodProdutoCli: TStringField;
    tPedidoGradelkTamanho: TStringField;
    qConsultaLargura: TStringField;
    mResumo: TClientDataSet;
    mResumoCodProduto: TIntegerField;
    mResumoReferencia: TStringField;
    mResumoNomeProduto: TStringField;
    mResumoNumOS: TStringField;
    mResumoQtdTotal: TFloatField;
    mResumoQtdFaturada: TFloatField;
    mResumoPercRestante: TFloatField;
    mResumoQtdRestante: TFloatField;
    dsmResumo: TDataSource;
    mResumoNomeCor: TStringField;
    mResumoCodCor: TIntegerField;
    qConsultaPlano: TStringField;
    qConsultaTalaoGerado: TBooleanField;
    qConsultaCodGrade: TIntegerField;
    qConsultaPosicao: TIntegerField;
    qConsultaDtEmissao: TDateField;
    qConsultaFantasia: TStringField;
    qConsultaReferencia: TStringField;
    qConsultaDescMaterial: TStringField;
    qConsultaNomeProduto: TStringField;
    qConsultaCodCombinacao: TIntegerField;
    qConsultaCodFabrica: TIntegerField;
    qConsultaNomeFabrica: TStringField;
    qConsultaNomeMarca: TStringField;
    qConsultaPreco: TFloatField;
    qConsultaVlrTotal: TFloatField;
    qConsultaPrecoFabrica: TFloatField;
    qConsultaVlrTotalFabrica: TFloatField;
    qConsultaDtProducao: TDateField;
    qConsultaDtEmbarquePed: TDateField;
    qConsultaDtProducaoPed: TDateField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    Shape4: TShape;
    Label12: TLabel;
    RxDBGrid2: TRxDBGrid;
    VDBGrid1: TVDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Label16: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    RxLabel9: TRxLabel;
    RxLabel5: TRxLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label17: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    RadioGroup2: TRadioGroup;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
    procedure Monta_Resumo;
  public
    { Public declarations }
    vOpcao : String;
    vCodCor, vCodGrade, vPosicao  : Integer;
    vTamanho : String;
    vDescOpcaoImp : String;

  end;

var
  fConsPedidoBR: TfConsPedidoBR;

implementation

uses UDM1, URelPedidoBR2, UConsMateriaPrima, UDM2, rsExcelExporta,
  UConsPedidoBRTam;

{$R *.dfm}

procedure TfConsPedidoBR.Monta_Resumo;
begin
  mResumo.EmptyDataSet;
  qConsulta.First;
  while not qConsulta.Eof do
  begin
    if mResumo.Locate('CodProduto;CodCor',VarArrayOf([qConsultaCodProduto.AsInteger,qConsultaCodCor.AsInteger]),[locaseinsensitive]) then
      mResumo.Edit
    else
    begin
      mResumo.Insert;
      mResumoCodProduto.AsInteger := qConsultaCodProduto.AsInteger;
      mResumoReferencia.AsString  := qConsultaReferencia.AsString;
      mResumoNomeProduto.AsString := qConsultaNomeProduto.AsString;
      mResumoCodCor.AsInteger     := qConsultaCodCor.AsInteger;
      mResumoNomeCor.AsString     := qConsultalkNomeCor.AsString;
    end;
    mResumoQtdTotal.AsFloat     := mResumoQtdTotal.AsFloat + qConsultaQtdPares.AsFloat;
    mResumoQtdFaturada.AsFloat  := mResumoQtdFaturada.AsFloat + qConsultaQtdParesFat.AsFloat;
    mResumoQtdRestante.AsFloat  := mResumoQtdRestante.AsFloat + qConsultaQtdParesRest.AsFloat;
    mResumoPercRestante.AsFloat := StrToFloat(FormatFloat('0.00',(mResumoQtdRestante.AsFloat / mResumoQtdTotal.AsFloat) * 100));
    mResumo.Post;
    qConsulta.Next;
  end;
end;

procedure TfConsPedidoBR.Monta_SQL;
var
  vSeparador : String;
  vDtEntregueDesc, vDtProducaoDesc : String;
begin
  if DM1.tParametrosTipoDtEntrega.AsString = 'P' then
  begin
    vDtEntregueDesc := 'dbPedido.DtEmbarque';
    vDtProducaoDesc := 'dbPedido.DtProducao';
  end
  else
  begin
    vDtEntregueDesc := 'dbPedidoItem.DtReprogramacao';
    vDtProducaoDesc := 'dbPedidoItem.DtProducao';
  end;
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbpedido.Pedido, Dbpedido.PedidoCliente, Dbpedido.CodCliente, Dbcliente.Nome NomeCliente, Dbpedidoitem.Item, ');
  qConsulta.SQL.Add(' Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.QtdPares, Dbpedidoitem.QtdParesFat, Dbpedidoitem.QtdParesRest, ');
  qConsulta.SQL.Add(' Dbpedidoitem.QtdParesCanc, Dbpedidoitem.NumOS, Dbpedidoitem.DtReprogramacao, Dbpedidoitem.Tamanho, Dbpedidoitem.Unidade, ');
  qConsulta.SQL.Add(' dbPedido.Filial, dbPedidoItem.Largura, dbPedidoItem.Plano, dbPedidoItem.TalaoGerado, dbPedidoItem.CodGrade, dbPedidoItem.Posicao, dbPedido.DtEmissao, ');
  qConsulta.SQL.Add(' Dbcliente.Fantasia, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbproduto.DescMaterial,  dbPedidoItem.CodCombinacao, ');
  qConsulta.SQL.Add(' dbPedido.CodFabrica, Fabrica.Nome NomeFabrica, Marca.Nome NomeMarca, dbPedidoItem.Preco, dbPedidoItem.VlrTotal, ');
  qConsulta.SQL.Add(' dbPedidoItem.PrecoFabrica, dbPedidoItem.VlrTotalFabrica, dbPedidoItem.DtProducao, ');
  qConsulta.SQL.Add(' dbPedido.DtEmbarque DtEmbarquePed, dbPedido.DtProducao DtProducaoPed');
  qConsulta.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qConsulta.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qConsulta.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qConsulta.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qConsulta.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qConsulta.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qConsulta.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qConsulta.SQL.Add('   FULL JOIN "dbCliente.DB" Fabrica');
  qConsulta.SQL.Add('   ON  (Dbpedido.CodFabrica = Fabrica.Codigo)');
  qConsulta.SQL.Add('   FULL JOIN "dbCliente.DB" Marca');
  qConsulta.SQL.Add('   ON  (Dbpedido.CodRepresentada = Marca.Codigo)');
  qConsulta.SQL.Add('WHERE (0=0)' );
  if RxDBLookupCombo3.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.Filial = :Filial)');
    qConsulta.ParamByName('Filial').AsInteger := RxDBLookupCombo3.KeyValue;
  end;
  if RxDBLookupCombo5.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.CodFabrica = :CodFabrica)');
    qConsulta.ParamByName('CodFabrica').AsInteger := RxDBLookupCombo5.KeyValue;
  end;
  if RxDBLookupCombo6.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.CodRepresentada = :CodRepresentada)');
    qConsulta.ParamByName('CodRepresentada').AsInteger := RxDBLookupCombo6.KeyValue;
  end;
  if RadioGroup1.ItemIndex = 0 then
    qConsulta.SQL.Add(' AND (dbPedidoItem.QtdParesRest > 0)');
  if RadioGroup1.ItemIndex = 1 then
    qConsulta.SQL.Add(' AND (dbPedidoItem.QtdParesFat > 0)');
  if Edit3.Text <> '' then
    qConsulta.SQL.Add(' AND (dbPedidoItem.NumOS LIKE ''%' + Edit3.Text + '%'')');
  if Edit1.Text <> '' then
    qConsulta.SQL.Add(' AND (dbCliente.Nome LIKE ''%' + Edit1.Text + '%'')');
  if Edit2.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.PedidoCliente = :PedidoCliente)');
    qConsulta.ParamByName('PedidoCliente').AsString := Edit2.Text;
  end;
  if CurrencyEdit1.AsInteger > 0 then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.Pedido = :Pedido)');
    qConsulta.ParamByName('Pedido').AsInteger := CurrencyEdit1.AsInteger;
  end;
  if RxDBLookupCombo1.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.CodCliente = :CodCliente)');
    qConsulta.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if RxDBLookupCombo4.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedidoItem.CodProduto = :CodProduto)');
    qConsulta.ParamByName('CodProduto').AsInteger := RxDBLookupCombo4.KeyValue;
  end;
  if RxDBLookupCombo8.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedidoItem.CodCor = :CodCor)');
    qConsulta.ParamByName('CodCor').AsInteger := RxDBLookupCombo8.KeyValue;
  end;
  if DateEdit3.Date > 10 then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.DtEmissao >= :DtEmissaoIni)');
    qConsulta.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
  end;
  if DateEdit4.Date > 10 then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.DtEmissao <= :DtEmissaoFim)');
    qConsulta.ParamByName('DtEmissaoFim').AsDate := DateEdit4.Date;
  end;
  if DateEdit1.Date > 10 then
  begin
    //qConsulta.SQL.Add(' AND (dbPedidoItem.DtReprogramacao >= :DtReprogramacaoIni)');
    qConsulta.SQL.Add(' AND (' + vDtEntregueDesc + ' >= :DtReprogramacaoIni)');
    qConsulta.ParamByName('DtReprogramacaoIni').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 10 then
  begin
    //qConsulta.SQL.Add(' AND (dbPedidoItem.DtReprogramacao <= :DtReprogramacaoFim)');
    qConsulta.SQL.Add(' AND (' + vDtEntregueDesc + ' <= :DtReprogramacaoFim)');
    qConsulta.ParamByName('DtReprogramacaoFim').AsDate := DateEdit2.Date;
  end;
  if DateEdit5.Date > 10 then
  begin
    qConsulta.SQL.Add(' AND (' + vDtProducaoDesc + ' >= :DtProducaoIni)');
    qConsulta.ParamByName('DtProducaoIni').AsDate := DateEdit5.Date;
  end;
  if DateEdit6.Date > 10 then
  begin
    qConsulta.SQL.Add(' AND (' + vDtProducaoDesc + ' <= :DtProducaoFim)');
    qConsulta.ParamByName('DtProducaoFim').AsDate := DateEdit6.Date;
  end;
  if RxDBLookupCombo7.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedido.CodVendedor = :CodVendedor)');
    qConsulta.ParamByName('CodVendedor').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if vCodCor > 0 then
  begin
    qConsulta.SQL.Add(' AND (dbPedidoItem.CodCor = :CodCor)');
    qConsulta.ParamByName('CodCor').AsInteger := vCodCor;
  end;
  if vCodGrade > 0 then
  begin
    qConsulta.SQL.Add(' AND (dbPedidoItem.CodGrade = :CodGrade)');
    qConsulta.ParamByName('CodGrade').AsInteger := vCodGrade;
  end;
  if vTamanho <> '' then
  begin
    qConsulta.SQL.Add(' AND (dbPedidoItem.Tamanho = :Tamanho)');
    qConsulta.ParamByName('Tamanho').AsString := vTamanho;
  end;
  case ComboBox1.ItemIndex of
    0 : qConsulta.SQL.Add(' AND (dbPedidoItem.TalaoGerado = False)');
    1 : qConsulta.SQL.Add(' AND (dbPedidoItem.TalaoGerado = True)');
  end;
  case RadioGroup2.ItemIndex of
    0 : qConsulta.SQL.Add('ORDER BY dbPedidoItem.DtReprogramacao, dbPedidoItem.CodProduto, dbPedidoItem.CodCor, dbPedidoItem.Tamanho');
    1 : qConsulta.SQL.Add('ORDER BY dbPedido.PedidoCliente, dbPedidoItem.CodProduto, dbPedidoItem.Tamanho, dbPedidoItem.DtReprogramacao, dbPedidoItem.CodCor');
    2 : qConsulta.SQL.Add('ORDER BY dbPedidoItem.NumOS, dbPedidoItem.DtReprogramacao, dbPedido.PedidoCliente, dbPedidoItem.CodProduto, dbPedidoItem.Tamanho, dbPedidoItem.CodCor');
    3 : qConsulta.SQL.Add('ORDER BY dbPedidoItem.CodProduto, dbPedido.PedidoCliente, dbPedidoItem.CodProduto, dbPedidoItem.Tamanho, dbPedidoItem.DtReprogramacao, dbPedidoItem.CodCor');
  end;
  qConsulta.Open;
end;

procedure TfConsPedidoBR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.GravaGrid(SMDBGrid1,Name);
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoTam.Close;
  DM1.tProdutoConsumo.Close;
  DM1.tProdutoConsumoItem.Close;
  DM1.tProdutoComb.Close;
  DM1.tCor.Close;
  DM2.qFabrica.Close;
  DM2.qRepresentada.Close;
  qConsulta.Close;
  Action := Cafree;
end;

procedure TfConsPedidoBR.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsPedidoBR.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
  RxDBGrid2.DataSource := dsPedidoNota;
  VDBGrid1.DataSource  := dsPedidoGrade;
  RzPageControl1.ActivePage := TabSheet2;
end;

procedure TfConsPedidoBR.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfConsPedidoBR.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    RxDBLookupCombo4.KeyValue := RxDBLookupCombo2.KeyValue
  else
    RxDBLookupCombo4.ClearValue;
end;

procedure TfConsPedidoBR.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoBR.BitBtn2Click(Sender: TObject);
begin
  if qConsulta.RecordCount > 0 then
  begin
    fRelPedidoBR2 := TfRelPedidoBR2.Create(Self);
    fRelPedidoBR2.RLReport1.PreviewModal;
    fRelPedidoBR2.RLReport1.Free;
    if MessageDlg('Imprimir o resumo?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      Monta_Resumo;
      mResumo.First;
      fRelPedidoBR2 := TfRelPedidoBR2.Create(Self);
      fRelPedidoBR2.RLReport2.Preview;
      fRelPedidoBR2.RLReport2.Free;
    end;
    end
  else
    ShowMessage('Não existe registro para impressão!');
end;

procedure TfConsPedidoBR.FormShow(Sender: TObject);
var
  i : Integer;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tCor.Open;
  DM2.qFabrica.Close;
  DM2.qFabrica.Open;
  DM2.qRepresentada.Close;
  DM2.qRepresentada.Open;
  DM1.tParametros.Close;
  DM1.tParametros.Open;

  if DM1.tParametrosTipoDtEntrega.AsString = 'P' then
  begin
    for i := 1 to SMDBGrid1.ColCount - 1 do
    begin
      if SMDBGrid1.Columns[i-1].FieldName = 'DtReprogramacao' then
        SMDBGrid1.Columns[i-1].FieldName := 'DtEmbarquePed';
      if SMDBGrid1.Columns[i-1].FieldName = 'DtProducao' then
        SMDBGrid1.Columns[i-1].FieldName := 'DtProducaoPed';
    end;
  end;
end;

procedure TfConsPedidoBR.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfConsPedidoBR.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfConsPedidoBR.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    RxDBLookupCombo2.KeyValue := RxDBLookupCombo4.KeyValue
  else
    RxDBLookupCombo2.ClearValue;
end;

procedure TfConsPedidoBR.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsPedidoBR.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (qConsultaItem.AsInteger > 0) then
    begin
      if (qConsultaQtdParesRest.AsFloat <= 0) and (qConsultaQtdParesFat.AsFloat > 0) then
        begin
          Background  := clTeal;
          AFont.Color := clWhite;
        end
      else
      if (qConsultaQtdParesRest.AsFloat <= 0) and (qConsultaQtdParesCanc.AsFloat > 0) then
        begin
          Background  := clRed;
          AFont.Color := clWhite;
        end
      else
      if qConsultaTalaoGerado.AsBoolean then
        Background  := clAqua;
    end;
end;

procedure TfConsPedidoBR.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

procedure TfConsPedidoBR.BitBtn5Click(Sender: TObject);
begin
  if (qConsulta.Active) and (qConsulta.RecordCount > 0) then
  begin
    fConsMateriaPrima := TfConsMateriaPrima.Create(Self);
    fConsMateriaPrima.BitBtn1.Tag := 0;
    fConsMateriaPrima.ShowModal;
  end
  else
    ShowMessage('Não existe pedidos para gerar a materia prima!');
end;

procedure TfConsPedidoBR.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfConsPedidoBR.RxDBLookupCombo8Enter(Sender: TObject);
begin
  RxDBLookupCombo8.ReadOnly := (RxDBLookupCombo2.Text = '');
end;

procedure TfConsPedidoBR.BitBtn4Click(Sender: TObject);
begin
  ExcelExporta('SMDBGrid1',fConsPedidoBR);
end;

procedure TfConsPedidoBR.BitBtn6Click(Sender: TObject);
begin
  fConsPedidoBRTam := TfConsPedidoBRTam.Create(Self);
  fConsPedidoBRTam.ShowModal;
end;

end.
