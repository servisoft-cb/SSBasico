unit UConsLimiteCredCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, ExtCtrls, RzTabs, Buttons, DB, DBClient,
  Mask, ToolEdit, CurrEdit, Grids, DBGrids, SMDBGrid;

type
  TfConsLimiteCredCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    mCliente: TClientDataSet;
    mClienteVlrTitulos: TFloatField;
    mClienteVlrPedidos: TFloatField;
    mClienteVlrTransf: TFloatField;
    mClienteVlrLimite: TFloatField;
    mClienteSaldo: TFloatField;
    mClienteCodigo: TIntegerField;
    mClienteNome: TStringField;
    mClienteVlrEmAberto: TFloatField;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    dsmCliente: TDataSource;
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mClienteNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Le_qPedidoCliente;
    procedure Le_qCReceberCliente;
    procedure Grava_mCliente(Tipo : String);
  public
    { Public declarations }
  end;

var
  fConsLimiteCredCliente: TfConsLimiteCredCliente;

implementation

uses UDM1, UDM2, UConsHistCliente2;

{$R *.dfm}

procedure TfConsLimiteCredCliente.Grava_mCliente(Tipo : String);
var
  vAux : Real;
begin
  if Tipo = 'P' then
    begin
      if mCliente.Locate('Codigo',DM2.qPedidoClienteCodCliente.AsInteger,[loCaseInsensitive]) then
        mCliente.Edit
      else
        begin
          mCliente.Insert;
          mClienteCodigo.AsInteger  := DM2.qPedidoClienteCodCliente.AsInteger;
          mClienteNome.AsString     := DM2.qPedidoClienteNome.AsString;
          mClienteVlrLimite.AsFloat := DM2.qPedidoClienteVlrLimiteCredito.AsFloat;
        end;
      vAux := DM2.qPedidoClientePreco.AsFloat;
      if StrToFloat(FormatFloat('0.00',DM2.qPedidoClienteVlrDesconto.AsFloat)) > 0 then
        vAux := StrToFloat(FormatFloat('0.00',vAux - DM2.qPedidoClienteVlrDesconto.AsFloat));
      vAux := StrToFloat(FormatFloat('0.00',vAux * DM2.qPedidoClienteQtdParesRest.AsFloat));
      mClienteVlrPedidos.AsFloat  := mClienteVlrPedidos.AsFloat + vAux;
    end
  else
    begin
      if mCliente.Locate('Codigo',DM2.qCReceberClienteCodCli.AsInteger,[loCaseInsensitive]) then
        mCliente.Edit
      else
        begin
          mCliente.Insert;
          mClienteCodigo.AsInteger  := DM2.qCReceberClienteCodCli.AsInteger;
          mClienteNome.AsString     := DM2.qCReceberClienteNome.AsString;
          mClienteVlrLimite.AsFloat := DM2.qCReceberClienteVlrLimiteCredito.AsFloat;
        end;
      vAux := StrToFloat(FormatFloat('0.00',DM2.qCReceberClienteRestParcela.AsFloat));
      if DM2.qCReceberClienteTransferencia.AsBoolean then
        mClienteVlrTransf.AsFloat  := mClienteVlrTransf.AsFloat + vAux
      else
        mClienteVlrTitulos.AsFloat := mClienteVlrTitulos.AsFloat + vAux;
    end;
  mClienteVlrEmAberto.AsFloat := mClienteVlrEmAberto.AsFloat + vAux;
  if StrToFloat(FormatFloat('0.00',mClienteVlrLimite.AsFloat)) > 0 then
    mClienteSaldo.AsFloat       := mClienteVlrLimite.AsFloat - mClienteVlrEmAberto.AsFloat
  else
    mClienteSaldo.AsFloat       := 0;
  mCliente.Post;
end;

procedure TfConsLimiteCredCliente.Le_qPedidoCliente;
begin
  mCliente.EmptyDataSet;
  DM2.qPedidoCliente.First;
  while not DM2.qPedidoCliente.Eof do
    begin
      Grava_mCliente('P');
      DM2.qPedidoCliente.Next;
    end;
end;

procedure TfConsLimiteCredCliente.Le_qCReceberCliente;
begin
  DM2.qCReceberCliente.First;
  while not DM2.qCReceberCliente.Eof do
    begin
      Grava_mCliente('R');
      DM2.qCReceberCliente.Next;
    end;
end;

procedure TfConsLimiteCredCliente.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsLimiteCredCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.GravaGrid(SMDBGrid1,Name);
  
  DM2.qPedidoCliente.Close;
  DM2.qCReceberCliente.Close;
  DM1.tCliente.Close;
  DM1.tGrupoCliente.Close;
  Action := Cafree;
end;

procedure TfConsLimiteCredCliente.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
  DM1.tCliente.Open;
  DM1.tGrupoCliente.Open;
end;

procedure TfConsLimiteCredCliente.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tGrupoCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsLimiteCredCliente.BitBtn1Click(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
    ShowMessage('Não pode informar "Cliente" e "Grupo" junto!')
  else
    begin
      if RxDBLookupCombo1.Text <> '' then
        begin
          DM2.Monta_SQLqPedidoCliente(RxDBLookupCombo1.KeyValue,'C');
          DM2.Monta_SQLqCReceberCliente(RxDBLookupCombo1.KeyValue,'C');
        end
      else
      if RxDBLookupCombo2.Text <> '' then
        begin
          DM2.Monta_SQLqPedidoCliente(RxDBLookupCombo2.KeyValue,'G');
          DM2.Monta_SQLqCReceberCliente(RxDBLookupCombo2.KeyValue,'G');
        end
      else
        begin
          DM2.Monta_SQLqPedidoCliente(0,'N');
          DM2.Monta_SQLqCReceberCliente(0,'N');
        end
    end;
  Le_qPedidoCliente;
  Le_qCReceberCliente;
end;

procedure TfConsLimiteCredCliente.mClienteNewRecord(DataSet: TDataSet);
begin
  mClienteVlrEmAberto.AsFloat := 0;
  mClienteVlrLimite.AsFloat   := 0;
  mClienteVlrPedidos.AsFloat  := 0;
  mClienteVlrTitulos.AsFloat  := 0;
  mClienteVlrTransf.AsFloat   := 0;
end;

procedure TfConsLimiteCredCliente.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

procedure TfConsLimiteCredCliente.SMDBGrid1DblClick(Sender: TObject);
begin
  fConsHistCliente2 := tfConsHistCliente2.Create(Self);
  if mClienteCodigo.AsInteger > 0 then
    fConsHistCliente2.RxDBLookupCombo2.KeyValue := mClienteCodigo.AsInteger;
  fConsHistCliente2.ShowModal;
end;

end.
