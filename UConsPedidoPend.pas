unit UConsPedidoPend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RxLookup, Mask, ToolEdit, Grids,
  DBGrids, SMDBGrid, DB, DBTables, DBClient;

type
  TfConsPedidoPend = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    SMDBGrid1: TSMDBGrid;
    qConsulta: TQuery;
    qConsultaPedido: TIntegerField;
    qConsultaCodCliente: TIntegerField;
    qConsultaCodProduto: TIntegerField;
    qConsultaCodCor: TIntegerField;
    qConsultaUnidade: TStringField;
    qConsultaQtdParesRest: TFloatField;
    mPedido: TClientDataSet;
    mPedidoCodCliente: TIntegerField;
    mPedidoNomeCliente: TStringField;
    mPedidoCodProduto: TIntegerField;
    mPedidoCodCor: TIntegerField;
    mPedidoReferencia: TStringField;
    mPedidoNomeProduto: TStringField;
    mPedidoQtdPedido: TFloatField;
    mPedidoQtdProducao: TFloatField;
    mPedidoUnidade: TStringField;
    ComboBox1: TComboBox;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    dsmPedido: TDataSource;
    mPedidoNomeCor: TStringField;
    mPedidoTamCalculo: TFloatField;
    mPedidoErro: TBooleanField;
    BitBtn3: TBitBtn;
    mPedidoDtEntrega: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mPedidoNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_qConsulta;
    procedure Le_qConsulta;
  public
    { Public declarations }
  end;

var
  fConsPedidoPend: TfConsPedidoPend;

implementation

uses UDM1, URelPedidoPend;

{$R *.dfm}

procedure TfConsPedidoPend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedidoPend.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoPend.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tCor.Open;
  DM1.tUnidade.Open;

  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tCor.IndexFieldNames     := 'Codigo';
end;

procedure TfConsPedidoPend.BitBtn2Click(Sender: TObject);
begin
  if (DateEdit1.Date < 10) or (DateEdit2.Date < 10) then
  begin
    ShowMessage('É obrigatório informar a data inicial e final!');
    exit;
  end;

  Monta_qConsulta;
  Le_qConsulta;

end;

procedure TfConsPedidoPend.Monta_qConsulta;
begin

  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Dbpedido.Pedido, Dbpedido.CodCliente, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Unidade, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest');
  qConsulta.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qConsulta.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qConsulta.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qConsulta.SQL.Add('WHERE   (Dbpedido.Cancelado = FALSE)');
  qConsulta.SQL.Add('   AND  (Dbpedidoitem.Cancelado = FALSE)');
  qConsulta.SQL.Add('   AND  (Dbpedidoitem.QtdParesRest > 0)');
  qConsulta.SQL.Add('   AND  Dbpedidoitem.DtReprogramacao BETWEEN :Data1 AND :Data2');
  if RxDBLookupCombo1.Text <> '' then
  begin
    qConsulta.SQL.Add(' AND  Dbpedido.Filial = :Filial');
    qConsulta.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  qConsulta.ParamByName('Data1').AsDate := DateEdit1.Date;
  qConsulta.ParamByName('Data2').AsDate := DateEdit2.Date;
  qConsulta.SQL.Add('GROUP BY Dbpedido.Pedido, Dbpedido.CodCliente, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.Unidade');
  qConsulta.Open;
end;

procedure TfConsPedidoPend.Le_qConsulta;
var
  vAux : Real;
begin
  mPedido.EmptyDataSet;
  qConsulta.First;
  while not qConsulta.Eof do
    begin
      if mPedido.Locate('CodCliente;CodProduto;CodCor;Unidade',VarArrayOf([qConsultaCodCliente.AsInteger,qConsultaCodProduto.AsInteger,qConsultaCodCor.AsInteger,qConsultaUnidade.AsString]),[locaseinsensitive]) then
        mPedido.Edit
      else
      begin
        mPedido.Insert;
        mPedidoCodCliente.AsInteger := qConsultaCodCliente.AsInteger;
        mPedidoCodProduto.AsInteger := qConsultaCodProduto.AsInteger;
        mPedidoCodCor.AsInteger     := qConsultaCodCor.AsInteger;
        mPedidoUnidade.AsString     := qConsultaUnidade.AsString;
        if DM1.tCliente.FindKey([qConsultaCodCliente.AsInteger]) then
          mPedidoNomeCliente.AsString := DM1.tClienteNome.AsString;
        if DM1.tProduto.FindKey([qConsultaCodProduto.AsInteger]) then
        begin
          mPedidoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
          mPedidoNomeProduto.AsString := DM1.tProdutoNome.AsString;
          mPedidoTamCalculo.AsFloat   := DM1.tProdutoTamCalculo.AsFloat;
        end;
        if StrToFloat(FormatFloat('0.0000',mPedidoTamCalculo.AsFloat)) <= 0 then
        begin
          mPedidoTamCalculo.AsFloat   := 1;
          mPedidoErro.AsBoolean       := True;
        end;

        if DM1.tCor.FindKey([qConsultaCodCor.AsInteger]) then
          mPedidoNomeCor.AsString := DM1.tCorNome.AsString;
        mPedidoUnidade.AsString := qConsultaUnidade.AsString;
      end;
      mPedidoQtdPedido.AsFloat := mPedidoQtdPedido.AsFloat + qConsultaQtdParesRest.AsFloat;
      vAux := 1;
      if DM1.tUnidade.Locate('Unidade',qConsultaUnidade.AsString,[loCaseInsensitive]) then
        if DM1.tUnidadeConversor.AsFloat > 0 then
          vAux := DM1.tUnidadeConversor.AsFloat;
      vAux := vAux * qConsultaQtdParesRest.AsFloat;
      vAux := StrToFloat(FormatFloat('0.000',vAux * mPedidoTamCalculo.AsFloat));
      mPedidoQtdProducao.AsFloat := mPedidoQtdProducao.AsFloat + vAux;
      mPedido.Post;
      qConsulta.Next;
    end;
  case ComboBox1.ItemIndex of
    0 : mPedido.IndexFieldNames := 'NomeCliente;Referencia;NomeCor';
    1 : mPedido.IndexFieldNames := 'Referencia;NomeCor;NomeCliente';
  end;
  mPedido.First;
end;

procedure TfConsPedidoPend.mPedidoNewRecord(DataSet: TDataSet);
begin
  mPedidoQtdPedido.AsFloat   := 0;
  mPedidoQtdProducao.AsFloat := 0;
  mPedidoErro.AsBoolean      := False;
end;

procedure TfConsPedidoPend.BitBtn3Click(Sender: TObject);
begin
  mPedido.First;
  fRelPedidoPend := TfRelPedidoPend.Create(Self);
  fRelPedidoPend.RLReport1.Preview;
  fRelPedidoPend.RLReport1.Free;
end;

end.
