unit UConsLoteFB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DBVGrids, RxLookup, StdCtrls, Mask,
  ToolEdit, Buttons, DB, DBTables, ALed, ExtCtrls, FMTBcd, DBClient,
  Provider, SqlExpr;

type
  TfConsLoteFB = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox3: TComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    CheckBox2: TCheckBox;
    sdsTalao: TSQLDataSet;
    dspTalao: TDataSetProvider;
    cdsTalao: TClientDataSet;
    dsTalao: TDataSource;
    sdsTalaoTALAO: TIntegerField;
    sdsTalaoCODPRODUTO: TIntegerField;
    sdsTalaoCODCOR: TIntegerField;
    sdsTalaoTAMANHO: TStringField;
    sdsTalaoPEDIDO: TIntegerField;
    sdsTalaoITEMPEDIDO: TIntegerField;
    sdsTalaoPEDIDOCLIENTE: TStringField;
    sdsTalaoQTD: TFloatField;
    sdsTalaoCODCLIENTE: TIntegerField;
    sdsTalaoPRODUZIDO: TStringField;
    sdsTalaoDTBAIXA: TDateField;
    sdsTalaoHRBAIXA: TTimeField;
    sdsTalaoDTENTREGA: TDateField;
    sdsTalaoFILIAL: TIntegerField;
    sdsTalaoNUMOSPEDIDO: TStringField;
    sdsTalaoCANCELADO: TStringField;
    sdsTalaoMOTIVOCANCELADO: TStringField;
    sdsTalaoDTCANCELADO: TDateField;
    sdsTalaoDTIMPRESSAO: TDateField;
    sdsTalaoHRIMPRESSAO: TTimeField;
    sdsTalaoCODCOMBINACAO: TIntegerField;
    sdsTalaoQTDPRODUZIDO: TFloatField;
    sdsTalaoNUMMOVEST: TIntegerField;
    sdsTalaoDTGERADO: TDateField;
    sdsTalaoNOMEPRODUTO: TStringField;
    sdsTalaoREFERENCIA: TStringField;
    sdsTalaoNOMECOR: TStringField;
    sdsTalaoNOMECLIENTE: TStringField;
    cdsTalaoTALAO: TIntegerField;
    cdsTalaoCODPRODUTO: TIntegerField;
    cdsTalaoCODCOR: TIntegerField;
    cdsTalaoTAMANHO: TStringField;
    cdsTalaoPEDIDO: TIntegerField;
    cdsTalaoITEMPEDIDO: TIntegerField;
    cdsTalaoPEDIDOCLIENTE: TStringField;
    cdsTalaoQTD: TFloatField;
    cdsTalaoCODCLIENTE: TIntegerField;
    cdsTalaoPRODUZIDO: TStringField;
    cdsTalaoDTBAIXA: TDateField;
    cdsTalaoHRBAIXA: TTimeField;
    cdsTalaoDTENTREGA: TDateField;
    cdsTalaoFILIAL: TIntegerField;
    cdsTalaoNUMOSPEDIDO: TStringField;
    cdsTalaoCANCELADO: TStringField;
    cdsTalaoMOTIVOCANCELADO: TStringField;
    cdsTalaoDTCANCELADO: TDateField;
    cdsTalaoDTIMPRESSAO: TDateField;
    cdsTalaoHRIMPRESSAO: TTimeField;
    cdsTalaoCODCOMBINACAO: TIntegerField;
    cdsTalaoQTDPRODUZIDO: TFloatField;
    cdsTalaoNUMMOVEST: TIntegerField;
    cdsTalaoDTGERADO: TDateField;
    cdsTalaoNOMEPRODUTO: TStringField;
    cdsTalaoREFERENCIA: TStringField;
    cdsTalaoNOMECOR: TStringField;
    cdsTalaoNOMECLIENTE: TStringField;
    sdsTalaoOBS: TStringField;
    cdsTalaoOBS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    ctTalaoLocal : String;
    procedure Montar_Talao;
  public
    vNumPedidoInt : Integer;
    vDtBaixaIniCons, vDtBaixaFinCons, vDtImpIniCons, vDtImpFinCons : TDate;
    vCodProdutoCons, vCodClienteCons, vCodCorCons : Integer;

    { Public declarations }
  end;

var
  fConsLoteFB: TfConsLoteFB;

implementation

uses UDM1, URelTalao2, UConsLoteMaisPesquisa, URelLotes,
  uConsLoteMateriais, UDMTalao, URelTalaoFB;

{$R *.dfm}

procedure TfConsLoteFB.Montar_Talao;
begin
  cdsTalao.Close;
  sdsTalao.CommandText := ctTalaoLocal + ' WHERE 0 = 0 ';

  if vNumPedidoInt > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.PEDIDO = ' + IntToStr(vNumPedidoInt);
  if RxDBLookupCombo1.Text <> '' then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit1.Date > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.DTGERADO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.DTGERADO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

  case ComboBox1.ItemIndex of
    0 : sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.PRODUZIDO = ' + QuotedStr('N');
    1 : sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.PRODUZIDO = ' + QuotedStr('s');
  end;

  if vDtBaixaIniCons > 10 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.DTBAIXA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtBaixaIniCons));

  if vDtBaixaFinCons > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.DTBAIXA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtBaixaFinCons));

  if vDtImpIniCons > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.DTIMPRESSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtImpIniCons));

  if vDtImpFinCons > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.DTIMPRESSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',vDtImpFinCons));
  if vCodProdutoCons > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.CODPRODUTO = ' + IntToStr(vCodProdutoCons);
  if vCodCorCons > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.CODCOR = ' + IntToStr(vCodCorCons);
  if vCodClienteCons > 0 then
    sdsTalao.CommandText := sdsTalao.CommandText + ' AND T.CODCLIENTE = ' + IntToStr(vCodClienteCons);
  cdsTalao.Open;
  
  if vNumPedidoInt > 0 then
    SMDBGrid1.SelectAllClick(SMDBGrid1.SelectedRows);
end;

procedure TfConsLoteFB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vNumPedidoInt := 0;
  if Screen.FormCount < 3 then
  begin
    DM1.tTalao.Close;
    DM1.tTalaoGrade.Close;
    DM1.tProduto.Close;
    DM1.tProdutoCor.Close;
    DM1.tProdutoComb.Close;
    DM1.tPedido.Close;
    DM1.tPedidoItem.Close;
    DM1.tPedidoGrade.Close;
  end;
  Action := Cafree;
end;

procedure TfConsLoteFB.BitBtn1Click(Sender: TObject);
begin
  vNumPedidoInt := 0;
  Montar_Talao;
end;

procedure TfConsLoteFB.BitBtn3Click(Sender: TObject);
begin
  if not cdsTalao.Active then
    exit;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  SMDBGrid1.DisableScroll;
  fRelTalaoFB := TfRelTalaoFB.Create(Self);
  fRelTalaoFB.RLReport1.Preview;
  fRelTalaoFB.RLReport1.Free;
  FreeAndNil(fRelTalaoFB);
  SMDBGrid1.EnableScroll;
end;

procedure TfConsLoteFB.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  ctTalaoLocal := sdsTalao.CommandText;
  
  if not Assigned(DMTalao) then
    DMTalao := TDMTalao.Create(Self);

  if vNumPedidoInt > 0 then
    Montar_Talao;
  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  if DM1.tUsuarioUsuario.AsString = 'CLEOMAR' then
  begin
    DM1.tPedido.Open;
    DM1.tPedidoItem.Open;
    DM1.tPedidoGrade.Open;
  end;

  vDtBaixaIniCons := 0;
  vDtBaixaFinCons := 0;
  vDtImpIniCons   := 0;
  vDtImpFinCons   := 0;
  vCodProdutoCons := 0;
  vCodClienteCons := 0;
  vCodCorCons     := 0;

  BitBtn3.Enabled := DM1.tUsuarioRelTalao.AsBoolean;
end;

procedure TfConsLoteFB.BitBtn4Click(Sender: TObject);
begin
  fConsLoteMaisPesquisa := TfConsLoteMaisPesquisa.Create(Self);
  fConsLoteMaisPesquisa.DateEdit1.Date := vDtBaixaIniCons;
  fConsLoteMaisPesquisa.DateEdit2.Date := vDtBaixaFinCons;
  fConsLoteMaisPesquisa.DateEdit3.Date := vDtImpIniCons;
  fConsLoteMaisPesquisa.DateEdit4.Date := vDtImpFinCons;
  if vCodProdutoCons > 0 then
    fConsLoteMaisPesquisa.RxDBLookupCombo2.KeyValue := vCodProdutoCons;
  if vCodCorCons > 0 then
    fConsLoteMaisPesquisa.RxDBLookupCombo1.KeyValue := vCodCorCons;
  if vCodClienteCons > 0 then
    fConsLoteMaisPesquisa.RxDBLookupCombo3.KeyValue := vCodClienteCons;
  fConsLoteMaisPesquisa.ShowModal;
end;

procedure TfConsLoteFB.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelLotes := TfRelLotes.Create(Self);
  fRelLotes.RLReport1.Preview;
  fRelLotes.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsLoteFB.SMDBGrid1DblClick(Sender: TObject);
begin
  fConsLoteMateriais := TfConsLoteMateriais.Create(Self);
  fConsLoteMateriais.ShowModal;
end;

end.
