unit UConsAmostra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, ExtCtrls, DBFilter, Mask, ToolEdit, Buttons,
  FMTBcd, DB, SqlExpr, DBClient, Provider, CurrEdit, Grids, DBGrids,
  SMDBGrid;

type
  TfConsAmostra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBFilter1: TRxDBFilter;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    Label9: TLabel;
    DateEdit5: TDateEdit;
    Label10: TLabel;
    DateEdit6: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label11: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label12: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    Edit2: TEdit;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsConsultaID: TIntegerField;
    sdsConsultaNUMPEDIDO: TIntegerField;
    sdsConsultaDTENCAMINHADA: TDateField;
    sdsConsultaDTENTREGA: TDateField;
    sdsConsultaCODCLIENTE: TIntegerField;
    sdsConsultaCODFABRICA: TIntegerField;
    sdsConsultaQTDTOTAL: TIntegerField;
    sdsConsultaCODPRODUTO: TIntegerField;
    sdsConsultaUSUARIO: TStringField;
    sdsConsultaDTCADASTRO: TDateField;
    sdsConsultaHRCADASTRO: TTimeField;
    sdsConsultaFICHA: TStringField;
    sdsConsultaCARIMBOPALMILHA: TStringField;
    sdsConsultaCARIMBOSOLA: TStringField;
    sdsConsultaNOMEFABRICA: TStringField;
    sdsConsultaNOMECLIENTE: TStringField;
    sdsConsultaNOMEREPRESENTADA: TStringField;
    sdsConsultaNOMEPRODUTO: TStringField;
    sdsConsultaREFERENCIA: TStringField;
    sdsConsultaREFCLIENTE: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNUMPEDIDO: TIntegerField;
    cdsConsultaDTENCAMINHADA: TDateField;
    cdsConsultaDTENTREGA: TDateField;
    cdsConsultaCODCLIENTE: TIntegerField;
    cdsConsultaCODFABRICA: TIntegerField;
    cdsConsultaQTDTOTAL: TIntegerField;
    cdsConsultaCODPRODUTO: TIntegerField;
    cdsConsultaUSUARIO: TStringField;
    cdsConsultaDTCADASTRO: TDateField;
    cdsConsultaHRCADASTRO: TTimeField;
    cdsConsultaFICHA: TStringField;
    cdsConsultaCARIMBOPALMILHA: TStringField;
    cdsConsultaCARIMBOSOLA: TStringField;
    cdsConsultaNOMEFABRICA: TStringField;
    cdsConsultaNOMECLIENTE: TStringField;
    cdsConsultaNOMEREPRESENTADA: TStringField;
    cdsConsultaNOMEPRODUTO: TStringField;
    cdsConsultaREFERENCIA: TStringField;
    cdsConsultaREFCLIENTE: TStringField;
    Label14: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    ctConsulta : String;

    procedure Monta_SQLConsulta;

  public
    { Public declarations }
  end;

var
  fConsAmostra: TfConsAmostra;

implementation

uses UDMPedAmostra, UDM2, UDM1, DmdDatabase, UPedAmostra;

{$R *.dfm}

procedure TfConsAmostra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  DM2.qFabrica.Close;
  DM2.qRepresentada.Close;

  if DMPedAmostra.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMPedAmostra);

  Action := Cafree;
end;

procedure TfConsAmostra.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  if not Assigned(DMPedAmostra) then
    DMPedAmostra := TDMPedAmostra.Create(Self);

  DM2.qFabrica.Open;
  DM2.qRepresentada.Open;
  RxDBFilter1.Active := True;
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  ctConsulta := sdsConsulta.CommandText;
end;

procedure TfConsAmostra.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsAmostra.BitBtn1Click(Sender: TObject);
begin
  Monta_SQLConsulta;
end;

procedure TfConsAmostra.Monta_SQLConsulta;
begin
  cdsConsulta.Close;
  if CurrencyEdit1.AsInteger > 0 then
    sdsConsulta.CommandText := ctConsulta
                             + ' WHERE ID = ' + CurrencyEdit1.Text
  else
  begin
    sdsConsulta.CommandText := ctConsulta
                             + ' WHERE 0 = 0 ';
    if RxDBLookupCombo1.Text <> '' then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.CODFABRICA = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if RxDBLookupCombo2.Text <> '' then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND PRO.CODREPRESENTADA = ' + IntToStr(RxDBLookupCombo2.KeyValue);
    if RxDBLookupCombo3.Text <> '' then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.CODCLIENTE = ' + IntToStr(RxDBLookupCombo3.KeyValue);
    if RxDBLookupCombo4.Text <> '' then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.CODPRODUTO = ' + IntToStr(RxDBLookupCombo4.KeyValue);
    if Trim(Edit1.Text) <> '' then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.REFCLIENTE = ' + Edit1.Text;
    if Trim(Edit2.Text) <> '' then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.CONSTRUCAO = ' + Edit2.Text;
    if DateEdit1.Date > 0 then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTENCAMINHADA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 0 then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTENCAMINHADA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if DateEdit3.Date > 0 then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTENTREGA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 0 then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTENTREGA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit5.Date > 0 then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTCADASTRO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
    if DateEdit6.Date > 0 then
      sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTCADASTRO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
    case ComboBox1.ItemIndex of
      0 : sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTENCAMINHADA IS NULL ';
      1 : sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.DTENTREGA IS NULL ';
    end;
  end;
  cdsConsulta.Open;
end;

procedure TfConsAmostra.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsAmostra.SMDBGrid1DblClick(Sender: TObject);
begin
  if not DM1.tUsuarioAltPedAmostra.AsBoolean then
  begin
    ShowMessage('Usuário não autorizado a fazer a alteração!');
    exit;
  end;

  if not(cdsConsulta.Active) or (cdsConsulta.IsEmpty) then
  begin
    ShowMessage('Não existe registro para encaminhar!');
    exit;
  end;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if not DM1.tProduto.FindKey([cdsConsultaCODPRODUTO.AsInteger]) then
  begin
    ShowMessage('Produto (' + cdsConsultaCODPRODUTO.AsString + ') não cadastrado!');
    exit;
  end;

  DMPedAmostra.cdsPedAmostra.Close;
  DMPedAmostra.sdsPedAmostra.CommandText := ctPedAmostra
                                          + ' WHERE ID = ' + cdsConsultaID.AsString;
  DMPedAmostra.cdsPedAmostra.Open;
  if DMPedAmostra.cdsPedAmostra.IsEmpty then
  begin
    ShowMessage('Nº do movimento (' + cdsConsultaID.AsString + ') não encontrado!');
    exit;
  end;

  fPedAmostra := TfPedAmostra.Create(Self);
  fPedAmostra.ShowModal;
end;

end.
