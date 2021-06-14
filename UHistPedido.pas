unit UHistPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, RXCtrls, RxLookup, Buttons,
  RzTabs, DB, DBTables, DBClient, Grids, DBGrids, SMDBGrid;

type
  TfHistPedido = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label14: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label15: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label16: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    RxLabel9: TRxLabel;
    ComboBox1: TComboBox;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    qPedido: TQuery;
    qPedidoPedido: TIntegerField;
    qPedidoPedidoCliente: TStringField;
    qPedidoDtEmissao: TDateField;
    qPedidoDtEmbarque: TDateField;
    qPedidoDtProducao: TDateField;
    qPedidoCodCliente: TIntegerField;
    qPedidoQtdPares: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoVlrTotalFabrica: TFloatField;
    qPedidoPercFabrica: TFloatField;
    qPedidoVlrTotal: TFloatField;
    qPedidoCodFabrica: TIntegerField;
    qPedidoCodRepresentada: TIntegerField;
    qPedidoCodVendedor: TIntegerField;
    qPedidoPercComissao: TFloatField;
    mPedido: TClientDataSet;
    mPedidoPedido: TIntegerField;
    mPedidoPedidoCliente: TStringField;
    mPedidoCodCliente: TIntegerField;
    mPedidoNomeCliente: TStringField;
    mPedidoCodVendedor: TIntegerField;
    mPedidoNomeVendedor: TStringField;
    mPedidoCodFabrica: TIntegerField;
    mPedidoNomeFabrica: TStringField;
    mPedidoCodRepresentada: TIntegerField;
    mPedidoNomeRepresentada: TStringField;
    mPedidoQtdPedido: TIntegerField;
    mPedidoQtdPendente: TIntegerField;
    mPedidoQtdFaturado: TIntegerField;
    mPedidoVlrTotal: TFloatField;
    mPedidoVlrTotalFabrica: TFloatField;
    mPedidoVlrPendente: TFloatField;
    mPedidoDtEmissao: TDateField;
    mPedidoDtEmbarque: TDateField;
    mPedidoDtProducao: TDateField;
    RxLabel5: TRxLabel;
    ComboBox2: TComboBox;
    dsmPedido: TDataSource;
    SMDBGrid1: TSMDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    mMarcaFabricaRed: TClientDataSet;
    mMarcaFabricaRedCodRepresentada: TIntegerField;
    mMarcaFabricaRedNomeRepresentada: TStringField;
    mMarcaFabricaRedCodFabrica: TIntegerField;
    mMarcaFabricaRedNomeFabrica: TStringField;
    mMarcaFabricaRedQtdPedido: TIntegerField;
    mMarcaFabricaRedQtdPendente: TIntegerField;
    mMarcaFabricaRedQtdFaturada: TIntegerField;
    mMarcaFabricaRedVlrTotal: TFloatField;
    mMarcaFabricaRedVlrTotalFabrica: TFloatField;
    dsMarcaFabricaRed: TDataSource;
    GroupBox1: TGroupBox;
    ckDtEmissao: TCheckBox;
    ckDtEntregue: TCheckBox;
    ckDtFabrica: TCheckBox;
    ckRepresentante: TCheckBox;
    mMarcaFabricaRedDtEmissao: TDateField;
    mMarcaFabricaRedDtEntregue: TDateField;
    mMarcaFabricaRedDtFabrica: TDateField;
    mMarcaFabricaRedCodVendedor: TIntegerField;
    mMarcaFabricaRedNomeVendedor: TStringField;
    mMarcaFabricaRedCodChave: TStringField;
    ckFabrica: TCheckBox;
    SMDBGrid2: TSMDBGrid;
    ckMarca: TCheckBox;
    BitBtn6: TBitBtn;
    RxLabel6: TRxLabel;
    ComboBox3: TComboBox;
    BitBtn7: TBitBtn;
    qPedidoCodCondPgto: TIntegerField;
    mPedidoCodCondPgto: TIntegerField;
    mPedidoNomeCondPgto: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure mMarcaFabricaRedNewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vSQLPedido : String;

    procedure Monta_qPedido;
    procedure Le_qPedido(Tipo : String); //P=Pedido  M=Marca
    procedure Gravar_mMarcaFabricaRed;

  public
    { Public declarations }
  end;

var
  fHistPedido: TfHistPedido;

implementation

uses UDM1, rsExcelExporta, URelHistPedido;

{$R *.dfm}

procedure TfHistPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tCondPgto.Close;
  DM1.tVendedor.Close;

  Action := Cafree;
end;

procedure TfHistPedido.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  vSQLPedido := qPedido.SQL.Text;

  DM1.tCliente.Open;
  DM1.tVendedor.Open;
  DM1.tCondPgto.Open;
end;

procedure TfHistPedido.BitBtn1Click(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Codigo';
  Monta_qPedido;
  Le_qPedido('P');
end;

procedure TfHistPedido.Monta_qPedido;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add(vSQLPedido);
  if RxDBLookupCombo3.Text <> '' then
    qPedido.SQL.Add(' AND Filial = ' + IntToStr(RxDBLookupCombo3.KeyValue));
  if RxDBLookupCombo1.Text <> '' then
    qPedido.SQL.Add(' AND CodCliente = ' + IntToStr(RxDBLookupCombo1.KeyValue));
  if RxDBLookupCombo5.Text <> '' then
    qPedido.SQL.Add(' AND CodFabrica = ' + IntToStr(RxDBLookupCombo5.KeyValue));
  if RxDBLookupCombo6.Text <> '' then
    qPedido.SQL.Add(' AND CodRepresentada = ' + IntToStr(RxDBLookupCombo6.KeyValue));
  if RxDBLookupCombo7.Text <> '' then
    qPedido.SQL.Add(' AND CodVendedor = ' + IntToStr(RxDBLookupCombo7.KeyValue));
  if DateEdit3.Date > 10 then
  begin
    qPedido.SQL.Add(' AND DtEmissao >= :DtEmissaoIni ');
    qPedido.ParamByName('DtEmissaoIni').AsDate := DateEdit3.Date;
  end;
  if DateEdit4.Date > 10 then
  begin
    qPedido.SQL.Add(' AND DtEmissao <= :DtEmissaoFin ');
    qPedido.ParamByName('DtEmissaoFin').AsDate := DateEdit4.Date;
  end;
  if DateEdit1.Date > 10 then
  begin
    qPedido.SQL.Add(' AND DtEmbarque >= :DtEmbarqueIni ');
    qPedido.ParamByName('DtEmbarqueIni').AsDate := DateEdit1.Date;
  end;
  if DateEdit2.Date > 10 then
  begin
    qPedido.SQL.Add(' AND DtEmbarque <= :DtEmbarqueFin ');
    qPedido.ParamByName('DtEmbarqueFin').AsDate := DateEdit2.Date;
  end;
  if DateEdit5.Date > 10 then
  begin
    qPedido.SQL.Add(' AND DtProducao >= :DtProducaoIni ');
    qPedido.ParamByName('DtProducaoIni').AsDate := DateEdit5.Date;
  end;
  if DateEdit6.Date > 10 then
  begin
    qPedido.SQL.Add(' AND DtProducao <= :DtProducaoFin ');
    qPedido.ParamByName('DtProducaoFin').AsDate := DateEdit6.Date;
  end;
  case ComboBox1.ItemIndex of
    0 : qPedido.SQL.Add(' AND QtdParesRest > 0 ');
    1 : qPedido.SQL.Add(' AND QtdParesFat > 0 ');
  end;
  qPedido.Open;
end;

procedure TfHistPedido.Le_qPedido(Tipo : String); //P=Pedido  M=Marca
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tVendedor.IndexFieldNames := 'Codigo';
  mPedido.EmptyDataSet;
  qPedido.First;
  while not qPedido.Eof do
  begin
    mPedido.Insert;
    mPedidoPedido.AsInteger       := qPedidoPedido.AsInteger;
    mPedidoPedidoCliente.AsString := qPedidoPedidoCliente.AsString;
    mPedidoCodCliente.AsInteger   := qPedidoCodCliente.AsInteger;
    if DM1.tCliente.FindKey([qPedidoCodCliente.AsInteger]) then
      mPedidoNomeCliente.AsString := DM1.tClienteNome.AsString;

    mPedidoCodVendedor.AsInteger  := qPedidoCodVendedor.AsInteger;
    if DM1.tVendedor.FindKey([qPedidoCodVendedor.AsInteger]) then
      mPedidoNomeVendedor.AsString := DM1.tVendedorNome.AsString;

    mPedidoCodFabrica.AsInteger := qPedidoCodFabrica.AsInteger;
    if DM1.tCliente.FindKey([qPedidoCodFabrica.AsInteger]) then
      mPedidoNomeFabrica.AsString := DM1.tClienteNome.AsString;

    mPedidoCodRepresentada.AsInteger := qPedidoCodRepresentada.AsInteger;
    if DM1.tCliente.FindKey([qPedidoCodRepresentada.AsInteger]) then
      mPedidoNomeRepresentada.AsString := DM1.tClienteNome.AsString;

    mPedidoCodCondPgto.AsInteger := qPedidoCodCondPgto.AsInteger;
    if DM1.tCondPgto.FindKey([qPedidoCodCondPgto.AsInteger]) then
      mPedidoNomeCondPgto.AsString := DM1.tCondPgtoNome.AsString;

    mPedidoQtdPedido.AsInteger     := qPedidoQtdPares.AsInteger;
    mPedidoQtdPendente.AsInteger   := qPedidoQtdParesRest.AsInteger;
    mPedidoQtdFaturado.AsInteger   := qPedidoQtdParesFat.AsInteger;
    mPedidoVlrTotal.AsFloat        := qPedidoVlrTotal.AsFloat;
    mPedidoVlrTotalFabrica.AsFloat := qPedidoVlrTotalFabrica.AsFloat;
    mPedidoDtEmissao.AsDateTime    := qPedidoDtEmissao.AsDateTime;
    mPedidoDtEmbarque.AsDateTime   := qPedidoDtEmbarque.AsDateTime;
    mPedidoDtProducao.AsDateTime   := qPedidoDtProducao.AsDateTime;

    mPedido.Post;
    if Tipo = 'M' then
      Gravar_mMarcaFabricaRed;

    qPedido.Next;
  end;

  case ComboBox2.ItemIndex of
    0 : mPedido.IndexFieldNames := 'Pedido';
    1 : mPedido.IndexFieldNames := 'PedidoCliente;Pedido';
    2 : mPedido.IndexFieldNames := 'NomeFabrica;NomeRepresentada;DtEmbarque;DtProducao;Pedido';
    3 : mPedido.IndexFieldNames := 'NomeRepresentada;NomeFabrica;DtEmbarque;DtProducao;Pedido';
    4 : mPedido.IndexFieldNames := 'NomeCliente;DtEmbarque;DtProducao;Pedido';
    5 : mPedido.IndexFieldNames := 'NomeVendedor;NomeCliente;DtEmbarque;DtProducao;Pedido';
    6 : mPedido.IndexFieldNames := 'DtEmissao;NomeRepresentada;DtEmbarque;DtProducao;Pedido';
    7 : mPedido.IndexFieldNames := 'DtEmbarque;DtProducao;DtEmissao;NomeRepresentada;Pedido';
    8 : mPedido.IndexFieldNames := 'DtProducao;DtEmbarque;DtEmissao;NomeRepresentada;Pedido';
  end;
  mPedido.First;
end;

procedure TfHistPedido.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfHistPedido.Gravar_mMarcaFabricaRed;
var
  vChave : String;
begin
  vChave := '';
  if ckMarca.Checked then
    vChave := vChave + FormatFloat('0',mPedidoCodRepresentada.AsInteger);
  if ckDtEmissao.Checked then
    vChave := vChave + qPedidoDtEmissao.AsString;
  if ckDtEntregue.Checked then
    vChave := vChave + qPedidoDtEmbarque.AsString;
  if ckDtFabrica.Checked then
    vChave := vChave + qPedidoDtProducao.AsString;
  if ckRepresentante.Checked then
    vChave := vChave + FormatFloat('0',qPedidoCodVendedor.AsInteger);
  if ckFabrica.Checked then
    vChave := vChave + FormatFloat('0',qPedidoCodFabrica.AsInteger);
  if mMarcaFabricaRed.FindKey([vChave]) then
    mMarcaFabricaRed.Edit
  else
  begin
    mMarcaFabricaRed.Insert;
    mMarcaFabricaRedCodChave.AsString         := vChave;
    mMarcaFabricaRedCodRepresentada.AsInteger := mPedidoCodRepresentada.AsInteger;
    mMarcaFabricaRedNomeRepresentada.AsString := mPedidoNomeRepresentada.AsString;
    if ckDtEmissao.Checked then
      mMarcaFabricaRedDtEmissao.AsDateTime := qPedidoDtEmissao.AsDateTime;
    if ckDtEntregue.Checked then
      mMarcaFabricaRedDtEntregue.AsDateTime := qPedidoDtEmbarque.AsDateTime;
    if ckDtFabrica.Checked then
      mMarcaFabricaRedDtFabrica.AsDateTime := qPedidoDtProducao.AsDateTime;

    if ckRepresentante.Checked then
    begin
      mMarcaFabricaRedCodVendedor.AsInteger := qPedidoCodVendedor.AsInteger;
      mMarcaFabricaRedNomeVendedor.AsString := mPedidoNomeVendedor.AsString;
    end;
    if ckFabrica.Checked then
    begin
      mMarcaFabricaRedCodFabrica.AsInteger := qPedidoCodFabrica.AsInteger;
      mMarcaFabricaRedNomeFabrica.AsString := mPedidoNomeFabrica.AsString;
    end;
  end;
  mMarcaFabricaRedQtdPedido.AsInteger       := mMarcaFabricaRedQtdPedido.AsInteger + mPedidoQtdPedido.AsInteger;
  mMarcaFabricaRedQtdPendente.AsInteger     := mMarcaFabricaRedQtdPendente.AsInteger + mPedidoQtdPendente.AsInteger;
  mMarcaFabricaRedQtdFaturada.AsInteger     := mMarcaFabricaRedQtdFaturada.AsInteger + mPedidoQtdFaturado.AsInteger;
  mMarcaFabricaRedVlrTotal.AsFloat          := mMarcaFabricaRedVlrTotal.AsFloat + mPedidoVlrTotal.AsFloat;
  mMarcaFabricaRedVlrTotalFabrica.AsFloat   := mMarcaFabricaRedVlrTotalFabrica.AsFloat + mPedidoVlrTotalFabrica.AsFloat;
  mMarcaFabricaRed.Post;
end;

procedure TfHistPedido.mMarcaFabricaRedNewRecord(DataSet: TDataSet);
begin
  mMarcaFabricaRedQtdPedido.AsInteger       := 0;
  mMarcaFabricaRedQtdPendente.AsInteger     := 0;
  mMarcaFabricaRedQtdFaturada.AsInteger     := 0;
  mMarcaFabricaRedVlrTotal.AsFloat          := 0;
  mMarcaFabricaRedVlrTotalFabrica.AsFloat   := 0;
end;

procedure TfHistPedido.BitBtn4Click(Sender: TObject);
var
  i : Integer;
begin
  if not(ckMarca.Checked) and not(ckFabrica.Checked) then
  begin
    ShowMessage('É obrigatório escolher Marca ou Fábrica!');
    exit;
  end;

  for i := 1 to SMDBGrid2.ColCount - 1 do
  begin
    if (SMDBGrid2.Columns[i-1].FieldName = 'CodFabrica') or (SMDBGrid2.Columns[i-1].FieldName = 'NomeFabrica') then
      SMDBGrid2.Columns[i-1].Visible := (ckFabrica.Checked);
    if (SMDBGrid2.Columns[i-1].FieldName = 'CodRepresentada') or (SMDBGrid2.Columns[i-1].FieldName = 'NomeRepresentada') then
      SMDBGrid2.Columns[i-1].Visible := (ckMarca.Checked);
    if (SMDBGrid2.Columns[i-1].FieldName = 'DtEmissao') then
      SMDBGrid2.Columns[i-1].Visible := (ckDtEmissao.Checked);
    if (SMDBGrid2.Columns[i-1].FieldName = 'DtEntregue') then
      SMDBGrid2.Columns[i-1].Visible := (ckDtEntregue.Checked);
    if (SMDBGrid2.Columns[i-1].FieldName = 'DtFabrica') then
      SMDBGrid2.Columns[i-1].Visible := (ckDtFabrica.Checked);
    if (SMDBGrid2.Columns[i-1].FieldName = 'CodVendedor') or (SMDBGrid2.Columns[i-1].FieldName = 'NomeVendedor') then
      SMDBGrid2.Columns[i-1].Visible := (ckRepresentante.Checked);
  end;
  mMarcaFabricaRed.EmptyDataSet;
  mMarcaFabricaRed.IndexFieldNames := 'CodChave';

  Monta_qPedido;
  Le_qPedido('M');

  case ComboBox3.ItemIndex of
    0 : mMarcaFabricaRed.IndexFieldNames := 'NomeFabrica;NomeRepresentada;DtEntregue';
    1 : mMarcaFabricaRed.IndexFieldNames := 'NomeRepresentada;NomeFabrica;DtEntregue';
    2 : mMarcaFabricaRed.IndexFieldNames := 'NomeVendedor;NomeRepresentada;NomeFabrica;DtEntregue';
    3 : mMarcaFabricaRed.IndexFieldNames := 'DtEmissao;NomeRepresentada;NomeFabrica;DtEntregue';
    4 : mMarcaFabricaRed.IndexFieldNames := 'DtEntregue;NomeRepresentada;NomeFabrica;DtEmissao';
    5 : mMarcaFabricaRed.IndexFieldNames := 'DtFabrica;NomeRepresentada;NomeFabrica;DtEntregue';
  end;
end;

procedure TfHistPedido.BitBtn6Click(Sender: TObject);
begin
  ExcelExporta('SMDBGrid2',fHistPedido);
end;

procedure TfHistPedido.BitBtn7Click(Sender: TObject);
begin
  ExcelExporta('SMDBGrid1',fHistPedido);
end;

procedure TfHistPedido.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelHistPedido := TfRelHistPedido.Create(Self);
  fRelHistPedido.RLReport1.Preview;
  fRelHistPedido.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

end.
