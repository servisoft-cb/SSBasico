unit UConsMovPedido2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RxLookup, DBFilter, Buttons, Mask, ToolEdit,
  DB, DBClient, FMTBcd, Provider, SqlExpr, DBTables, Grids, DBGrids,
  SMDBGrid, CurrEdit, DBCtrls, dbXPress;

type
  TfConsMovPedido2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBFilter1: TRxDBFilter;
    Label4: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    Label9: TLabel;
    DateEdit3: TDateEdit;
    Label10: TLabel;
    DateEdit4: TDateEdit;
    BitBtn1: TBitBtn;
    mConsulta: TClientDataSet;
    mConsultaPedido: TIntegerField;
    mConsultaPedidoCliente: TStringField;
    mConsultaCodCliente: TIntegerField;
    mConsultaNomeCliente: TStringField;
    mConsultaCodFabrica: TIntegerField;
    mConsultaNomeFabrica: TStringField;
    mConsultaCodRepresentada: TIntegerField;
    mConsultaNomeRepresentada: TStringField;
    mConsultaCodSetor: TIntegerField;
    mConsultaNomeSetor: TStringField;
    mConsultaDtSaida: TDateField;
    mConsultaQtd: TIntegerField;
    mConsultaDtPrevisao: TDateField;
    sdsMovPedido: TSQLDataSet;
    cdsMovPedido: TClientDataSet;
    dspMovPedido: TDataSetProvider;
    sdsMovPedidoID: TIntegerField;
    sdsMovPedidoPEDIDO: TIntegerField;
    sdsMovPedidoCODSETOR: TIntegerField;
    sdsMovPedidoCODFABRICA: TIntegerField;
    sdsMovPedidoDTENTRADA: TDateField;
    sdsMovPedidoDTSAIDA: TDateField;
    sdsMovPedidoDTPREVISAO: TDateField;
    dsMovPedido: TDataSource;
    qRefCliente: TQuery;
    qRefClienteCodigo: TIntegerField;
    qRefClienteRefCliente: TStringField;
    dsqRefCliente: TDataSource;
    sdsMovPedidoCODCLIENTE: TIntegerField;
    dsmConsulta: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Shape1: TShape;
    Label13: TLabel;
    Shape2: TShape;
    Label14: TLabel;
    Shape3: TShape;
    Label15: TLabel;
    mConsultaDtEntrada: TDateField;
    StaticText1: TStaticText;
    mConsultaIDMovPedido: TIntegerField;
    cdsMovPedidoID: TIntegerField;
    cdsMovPedidoPEDIDO: TIntegerField;
    cdsMovPedidoCODSETOR: TIntegerField;
    cdsMovPedidoCODFABRICA: TIntegerField;
    cdsMovPedidoDTENTRADA: TDateField;
    cdsMovPedidoDTSAIDA: TDateField;
    cdsMovPedidoDTPREVISAO: TDateField;
    cdsMovPedidoCODCLIENTE: TIntegerField;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    mConsultaQtdPendente: TIntegerField;
    mConsultaQtdProduzida: TIntegerField;
    sdsMovPedidoQTD: TIntegerField;
    sdsMovPedidoQTDPENDENTE: TIntegerField;
    sdsMovPedidoQTDPRODUZIDA: TIntegerField;
    cdsMovPedidoQTD: TIntegerField;
    cdsMovPedidoQTDPENDENTE: TIntegerField;
    cdsMovPedidoQTDPRODUZIDA: TIntegerField;
    Shape4: TShape;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ctMovPedidoLoc : String;

    procedure Monta_SQLMovPedido;
    procedure Le_cdsMovPedido;

  public
    { Public declarations }
  end;

var
  fConsMovPedido2: TfConsMovPedido2;

implementation

uses UDM1, UDM2, DmdDatabase, UInfFabrica, UDMMovPedido, UMovPedido_Nota;

{$R *.dfm}

procedure TfConsMovPedido2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.GravaGrid(SMDBGrid1,Name);

  if DMMovPedido.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMMovPedido);

  qRefCliente.Close;
  DM2.qFabrica.Close;
  DM2.qRepresentada.Close;
  DM1.tCliente.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedido.Close;
  DM1.tProduto.Close;
  DM1.tSetor.Close;

  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfConsMovPedido2.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  RxDBFilter1.Active := True;
  DM2.qFabrica.Open;
  DM2.qRepresentada.Open;
  DM1.tCliente.Open;
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tProduto.Open;
  DM1.tSetor.Open;
  qRefCliente.Open;

  if not Assigned(DMMovPedido) then
    DMMovPedido := TDMMovPedido.Create(Self);

  ctMovPedidoLoc := sdsMovPedido.CommandText;
end;

procedure TfConsMovPedido2.BitBtn1Click(Sender: TObject);
begin
  Monta_SQLMovPedido;
  Le_cdsMovPedido;
  case ComboBox2.ItemIndex of
    0 : mConsulta.IndexFieldNames := 'Pedido';
    1 : mConsulta.IndexFieldNames := 'NomeFabrica;DtEntrada;Pedido;Item';
    2 : mConsulta.IndexFieldNames := 'NomeSetor;NomeFabrica;DtEntrada;Pedido;Item';
    3 : mConsulta.IndexFieldNames := 'DtEntrada;Pedido;Item';
    4 : mConsulta.IndexFieldNames := 'DtSaida;Pedido;Item';
    5 : mConsulta.IndexFieldNames := 'NomeCliente;DtEntrada;Pedido;Item';
  end;
end;

procedure TfConsMovPedido2.Monta_SQLMovPedido;
begin
  cdsMovPedido.Close;
  sdsMovPedido.CommandText := ctMovPedidoLoc
                            + ' WHERE 0 = 0 ';
  if RxDBLookupCombo1.Text <> '' then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.CODFABRICA = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if RxDBLookupCombo4.Text <> '' then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.CODSETOR = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if RxDBLookupCombo3.Text <> '' then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.CODCLIENTE = ' + IntToStr(RxDBLookupCombo3.KeyValue);
  if DateEdit1.Date > 0 then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.DTENTRADA  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 0 then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.DTENTRADA  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 0 then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.DTSAIDA  >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 0 then
    sdsMovPedido.CommandText := sdsMovPedido.CommandText + ' AND M.DTSAIDA  <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));

  case ComboBox1.ItemIndex of
    0 : sdsMovPedido.CommandText := ' AND (M.DTENTRADA IS NOT NULL) AND (M.DTSAIDA IS NULL) ';
    1 : sdsMovPedido.CommandText := ' AND (M.DTENTRADA IS NOT NULL) AND (M.DTSAIDA IS NOT NULL) ';
    2 : sdsMovPedido.CommandText := ' AND (M.DTENTRADA IS NULL) ';
  end;

  cdsMovPedido.Open;
end;

procedure TfConsMovPedido2.Le_cdsMovPedido;
begin
  DM1.tCliente2.IndexFieldNames   := 'Codigo';
  DM1.tPedido.IndexFieldNames     := 'Pedido';
  DM1.tPedidoItem.IndexFieldNames := 'Pedido;Item';

  mConsulta.EmptyDataSet;
  cdsMovPedido.First;
  while not cdsMovPedido.Eof do
  begin
    mConsulta.Insert;
    mConsultaIDMovPedido.AsInteger  := cdsMovPedidoID.AsInteger;
    mConsultaPedido.AsInteger       := cdsMovPedidoPEDIDO.AsInteger;
    if DM1.tPedidoPedido.AsInteger <> cdsMovPedidoPEDIDO.AsInteger then
      DM1.tPedido.FindKey([cdsMovPedidoPEDIDO.AsInteger]);
    mConsultaPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;

    mConsultaQtd.AsInteger          := DM1.tPedidoQtdPares.AsInteger;
    mConsultaQtdPendente.AsInteger  := cdsMovPedidoQTDPENDENTE.AsInteger;
    mConsultaQtdProduzida.AsInteger := cdsMovPedidoQTDPRODUZIDA.AsInteger;

    mConsultaCodCliente.AsInteger := cdsMovPedidoCODCLIENTE.AsInteger;
    if cdsMovPedidoCODCLIENTE.AsInteger > 0 then
    begin
      if DM1.tCliente2Codigo.AsInteger <> cdsMovPedidoCODCLIENTE.AsInteger then
        DM1.tCliente2.FindKey([cdsMovPedidoCODCLIENTE.AsInteger]);
      mConsultaNomeCliente.AsString := DM1.tCliente2Nome.AsString;
    end;

    mConsultaCodFabrica.AsInteger := cdsMovPedidoCODFABRICA.AsInteger;
    if cdsMovPedidoCODFABRICA.AsInteger > 0 then
    begin
      if DM1.tCliente2Codigo.AsInteger <> cdsMovPedidoCODFABRICA.AsInteger then
        DM1.tCliente2.FindKey([cdsMovPedidoCODFABRICA.AsInteger]);
      mConsultaNomeFabrica.AsString := DM1.tCliente2Nome.AsString;
    end;

    mConsultaCodRepresentada.AsInteger := DM1.tPedidoCodRepresentada.AsInteger;
    if DM1.tPedidoCodRepresentada.AsInteger > 0 then
    begin
      if DM1.tCliente2Codigo.AsInteger <> DM1.tPedidoCodRepresentada.AsInteger then
        DM1.tCliente2.FindKey([DM1.tPedidoCodRepresentada.AsInteger]);
      mConsultaNomeRepresentada.AsString := DM1.tCliente2Nome.AsString;
    end;

    mConsultaCodSetor.AsInteger := cdsMovPedidoCODSETOR.AsInteger;
    if cdsMovPedidoCODSETOR.AsInteger > 0 then
    begin
      if DM1.tSetorCodigo.AsInteger <> cdsMovPedidoCODSETOR.AsInteger then
        DM1.tSetor.FindKey([cdsMovPedidoCODSETOR.AsInteger]);
      mConsultaNomeSetor.AsString := DM1.tSetorNome.AsString;
    end;

    if cdsMovPedidoDTENTRADA.AsDateTime > 10 then
      mConsultaDtEntrada.AsDateTime := cdsMovPedidoDTENTRADA.AsDateTime;

    if cdsMovPedidoDTSAIDA.AsDateTime > 10 then
      mConsultaDtSaida.AsDateTime := cdsMovPedidoDTSAIDA.AsDateTime;

    if cdsMovPedidoDTPREVISAO.AsDateTime > 10 then
      mConsultaDtPrevisao.AsDateTime := cdsMovPedidoDTPREVISAO.AsDateTime;

    mConsulta.Post;

    cdsMovPedido.Next;
  end;
end;

procedure TfConsMovPedido2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mConsulta.IsEmpty then
    exit;

  if (mConsultaQtdPendente.AsInteger <= 0) and (mConsultaDtSaida.AsDateTime > 10) then
    Background := clMoneyGreen
  else
  if (mConsultaQtdPendente.AsInteger > 0) and (mConsultaQtdProduzida.AsInteger > 0) then
    Background := clAqua
  else
  if (mConsultaDtEntrada.AsDateTime > 10) then
    Background := clCream
  else
  if mConsultaDtEntrada.AsDateTime < 10 then
    Background := clYellow;
end;

procedure TfConsMovPedido2.SMDBGrid1DblClick(Sender: TObject);
begin
  if not(mConsulta.Active) or (mConsulta.IsEmpty) then
  begin
    ShowMessage('N�o existe registro!');
    exit;
  end;

  fInfFabrica := TfInfFabrica.Create(Self);
  fInfFabrica.Tag := 1;
  DMMovPedido.vIDMovPedido := mConsultaIDMovPedido.AsInteger;
  fInfFabrica.ShowModal;
end;

procedure TfConsMovPedido2.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) and not(mConsulta.IsEmpty) then
  begin
    if  mConsultaDtEntrada.AsDateTime < 10 then
    begin
      ShowMessage('Pedido n�o possui data de envio!');
      exit;
    end;
    DMMovPedido.Abre_MovPedido(mConsultaIDMovPedido.AsInteger,0,0);
    fMovPedido_Nota := TfMovPedido_Nota.Create(Self);
    fMovPedido_Nota.ShowModal;
  end;
end;

procedure TfConsMovPedido2.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

end.
