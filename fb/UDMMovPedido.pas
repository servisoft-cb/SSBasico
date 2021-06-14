unit UDMMovPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Variants, Messages, Windows,
  Dialogs;

//       Graphics, , , , ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit,
 // CurrEdit, ComCtrls, Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, MemTable, Menus, RXCtrls, DBFilter, ALed, RxDBComb, Variants,
  //SMDBGrid;


type
  TDMMovPedido = class(TDataModule)
    sdsMovPedido: TSQLDataSet;
    sdsMovPedidoID: TIntegerField;
    sdsMovPedidoPEDIDO: TIntegerField;
    sdsMovPedidoITEMPEDIDO: TIntegerField;
    sdsMovPedidoCODSETOR: TIntegerField;
    sdsMovPedidoCODFABRICA: TIntegerField;
    sdsMovPedidoDTENTRADA: TDateField;
    sdsMovPedidoDTSAIDA: TDateField;
    sdsMovPedidoDTPREVISAO: TDateField;
    dspMovPedido: TDataSetProvider;
    cdsMovPedido: TClientDataSet;
    cdsMovPedidoID: TIntegerField;
    cdsMovPedidoPEDIDO: TIntegerField;
    cdsMovPedidoITEMPEDIDO: TIntegerField;
    cdsMovPedidoCODSETOR: TIntegerField;
    cdsMovPedidoCODFABRICA: TIntegerField;
    cdsMovPedidoDTENTRADA: TDateField;
    cdsMovPedidoDTSAIDA: TDateField;
    cdsMovPedidoDTPREVISAO: TDateField;
    dsMovPedido: TDataSource;
    sdsMovPedidoCODCLIENTE: TIntegerField;
    sdsMovPedidoCODPRODUTO: TIntegerField;
    sdsMovPedidoCODCOR: TIntegerField;
    sdsMovPedidoCODCOMBINACAO: TIntegerField;
    cdsMovPedidoCODCLIENTE: TIntegerField;
    cdsMovPedidoCODPRODUTO: TIntegerField;
    cdsMovPedidoCODCOR: TIntegerField;
    cdsMovPedidoCODCOMBINACAO: TIntegerField;
    sdsMovPedido_Nota: TSQLDataSet;
    cdsMovPedido_Nota: TClientDataSet;
    dsMovPedido_Nota: TDataSource;
    sdsMovPedido_NotaID: TIntegerField;
    sdsMovPedido_NotaPEDIDO: TIntegerField;
    sdsMovPedido_NotaNUMNOTA: TIntegerField;
    sdsMovPedido_NotaSERIE: TStringField;
    sdsMovPedido_NotaDTNOTA: TDateField;
    sdsMovPedido_NotaQTD: TIntegerField;
    sdsMovPedido_NotaOBS: TMemoField;
    cdsMovPedido_NotaID: TIntegerField;
    cdsMovPedido_NotaPEDIDO: TIntegerField;
    cdsMovPedido_NotaNUMNOTA: TIntegerField;
    cdsMovPedido_NotaSERIE: TStringField;
    cdsMovPedido_NotaDTNOTA: TDateField;
    cdsMovPedido_NotaQTD: TIntegerField;
    cdsMovPedido_NotaOBS: TMemoField;
    sdsMovPedido_NotaDTCADASTRO: TDateField;
    sdsMovPedido_NotaHRCADASTRO: TTimeField;
    cdsMovPedido_NotaDTCADASTRO: TDateField;
    cdsMovPedido_NotaHRCADASTRO: TTimeField;
    dsMovPedidoMestre: TDataSource;
    cdsMovPedidosdsMovPedido_Nota: TDataSetField;
    sdsMovPedido_NotaITEM: TIntegerField;
    cdsMovPedido_NotaITEM: TIntegerField;
    sdsMovPedidoQTD: TIntegerField;
    sdsMovPedidoQTDPENDENTE: TIntegerField;
    sdsMovPedidoQTDPRODUZIDA: TIntegerField;
    cdsMovPedidoQTD: TIntegerField;
    cdsMovPedidoQTDPENDENTE: TIntegerField;
    cdsMovPedidoQTDPRODUZIDA: TIntegerField;
    qMovPedido: TSQLQuery;
    qMovPedidoID: TIntegerField;
    qMovPedidoPEDIDO: TIntegerField;
    qMovPedidoITEMPEDIDO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMovPedidoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsMovPedidoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vIDMovPedido : Integer;
    
    procedure Gravar_MovPedido;
    procedure Controlar_GravacaoMovPedido;
    procedure Abre_MovPedido(ID, Pedido, Item : Integer);
    procedure Excluir_MovPedido(Pedido, Item : Integer);

  end;

var
  DMMovPedido: TDMMovPedido;
  ctMovPedido : String;

implementation

uses DmdDatabase, UDM1, uIntegracao, Math;

{$R *.dfm}

procedure TDMMovPedido.Abre_MovPedido(ID, Pedido, Item: Integer);
begin
  cdsMovPedido.Close;
  sdsMovPedido.CommandText := ctMovPedido;
  if Pedido = 0 then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText
                              + ' WHERE ID = ' + IntToStr(ID)
  else
  begin
    sdsMovPedido.CommandText := sdsMovPedido.CommandText
                              + ' WHERE PEDIDO = ' + IntToStr(Pedido);
    if Item > 0 then
      sdsMovPedido.CommandText := sdsMovPedido.CommandText
                                + ' AND ITEMPEDIDO = ' + IntToStr(Item);
  end;
  cdsMovPedido.Open;
end;

procedure TDMMovPedido.DataModuleCreate(Sender: TObject);
begin
  ctMovPedido := sdsMovPedido.CommandText;
end;

procedure TDMMovPedido.Excluir_MovPedido(Pedido, Item: Integer);
var
  sds: TSQLDataSet;
begin
  if Pedido <= 0 then
    exit;
  qMovPedido.Close;
  qMovPedido.ParamByName('PEDIDO').AsInteger := Pedido;
  qMovPedido.ParamByName('ITEMPEDIDO').AsInteger := Item;
  qMovPedido.Open;
  if qMovPedido.IsEmpty then
    exit;
  sds := TSQLDataSet.Create(nil);
  try
    sds.Close;
    sds.CommandText := ' DELETE FROM MOVPEDIDO  '
                     + ' WHERE PEDIDO = ' + IntToStr(Pedido)
                     + '   AND ITEMPEDIDO = ' + IntToStr(Item);
    sds.ExecSQL;

  except
  end;
  FreeAndNil(sds);
  qMovPedido.Close;
end;


procedure TDMMovPedido.Controlar_GravacaoMovPedido;
begin
  cdsMovPedido.Close;
  Abre_MovPedido(0,DM1.tPedidoPedido.AsInteger,0);

  if DM1.tParametrosMovPedidoPorItem.AsBoolean then
  begin
    DM1.tPedidoItem.First;
    while not DM1.tPedidoItem.Eof do
    begin
      Gravar_MovPedido;
      DM1.tPedidoItem.Next;
    end;
  end
  else
    Gravar_MovPedido;

  cdsMovPedido.ApplyUpdates(0);
end;

procedure TDMMovPedido.dspMovPedidoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

procedure TDMMovPedido.cdsMovPedidoNewRecord(DataSet: TDataSet);
begin
  cdsMovPedidoITEMPEDIDO.AsInteger    := 0;
  cdsMovPedidoCODPRODUTO.AsInteger    := 0;
  cdsMovPedidoCODCOR.AsInteger        := 0;
  cdsMovPedidoCODCOMBINACAO.AsInteger := 0;
  cdsMovPedidoQTD.AsInteger           := 0;
  cdsMovPedidoQTDPENDENTE.AsInteger   := 0;
  cdsMovPedidoQTDPRODUZIDA.AsInteger  := 0;
end;

procedure TDMMovPedido.Gravar_MovPedido;
var
  vExiste : Boolean;
  vNumAux : Integer;
begin
  DM1.tParametrosMovPed.First;
  while not DM1.tParametrosMovPed.Eof do
  begin
    vExiste := False;
    if (DM1.tParametrosMovPedidoPorItem.AsBoolean) and
       (cdsMovPedido.Locate('ItemPedido;CodSetor',VarArrayOf([DM1.tPedidoItemItem.AsInteger,DM1.tParametrosMovPedCodSetor.AsInteger]),[locaseinsensitive])) then
      vExiste := True
    else
    if not(DM1.tParametrosMovPedidoPorItem.AsBoolean) and
       (cdsMovPedido.Locate('CodSetor',DM1.tParametrosMovPedCodSetor.AsInteger,[loCaseInsensitive])) then
      vExiste := True;

    if vExiste then
      cdsMovPedido.Edit
    else
    begin
      vNumAux := ProximaSequencia('MOVPEDIDO',0);
      cdsMovPedido.Insert;
      cdsMovPedidoID.AsInteger         := vNumAux;
      cdsMovPedidoPEDIDO.AsInteger     := DM1.tPedidoPedido.AsInteger;
      cdsMovPedidoCODSETOR.AsInteger   := DM1.tParametrosMovPedCodSetor.AsInteger;
      cdsMovPedidoCODFABRICA.AsInteger := DM1.tPedidoCodFabrica.AsInteger;
      cdsMovPedidoDTENTRADA.IsNull;
      cdsMovPedidoDTSAIDA.IsNull;
      cdsMovPedidoDTPREVISAO.IsNull;
    end;
    cdsMovPedidoCODCLIENTE.AsInteger := DM1.tPedidoCodCliente.AsInteger;
    if DM1.tParametrosMovPedidoPorItem.AsBoolean then
    begin
      cdsMovPedidoITEMPEDIDO.AsInteger    := DM1.tPedidoItemItem.AsInteger;
      cdsMovPedidoCODPRODUTO.AsInteger    := DM1.tPedidoItemCodProduto.AsInteger;
      cdsMovPedidoCODCOR.AsInteger        := DM1.tPedidoItemCodCor.AsInteger;
      cdsMovPedidoCODCOMBINACAO.AsInteger := DM1.tPedidoItemCodCombinacao.AsInteger;
      cdsMovPedidoQTD.AsInteger           := DM1.tPedidoItemQtdPares.AsInteger;
      cdsMovPedidoQTDPENDENTE.AsInteger   := DM1.tPedidoItemQtdPares.AsInteger;
    end
    else
    begin
      cdsMovPedidoQTD.AsInteger           := DM1.tPedidoQtdPares.AsInteger;
      cdsMovPedidoQTDPENDENTE.AsInteger   := DM1.tPedidoQtdPares.AsInteger;
    end;
    cdsMovPedido.Post;
    DM1.tParametrosMovPed.Next;
  end;
end;

end.
