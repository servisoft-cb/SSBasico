unit UEscNotaDevolPorItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Mask, DBCtrls, RxLookup, Grids, DBGrids,
  RXDBCtrl, Buttons, ToolEdit, CurrEdit, Db, DBTables;

type
  TfEscNotaDevolPorItem = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBGrid1: TRxDBGrid;
    GroupBox1: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    qNotaEntrada: TQuery;
    dsqNotaEntrada: TDataSource;
    qNotaEntradaCodForn: TIntegerField;
    qNotaEntradaNomeForn: TStringField;
    qNotaEntradaNumNEntr: TIntegerField;
    qNotaEntradaDtEmissaoNEntr: TDateField;
    qNotaEntradaVlrTotalNEntr: TFloatField;
    qNotaEntradaDtEntrada: TDateField;
    BitBtn2: TBitBtn;
    RxLabel3: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    tNEntradaItens: TTable;
    dsNEntradaItens: TDataSource;
    tNEntradaItensCodForn: TIntegerField;
    tNEntradaItensNumNEntr: TIntegerField;
    tNEntradaItensItem: TSmallintField;
    tNEntradaItensCodMaterial: TIntegerField;
    tNEntradaItensQtd: TFloatField;
    tNEntradaItensVlrUnit: TFloatField;
    tNEntradaItensVlrTotalItens: TFloatField;
    tNEntradaItensIcms: TFloatField;
    tNEntradaItensIpi: TFloatField;
    tNEntradaItensDesc: TFloatField;
    tNEntradaItensVlrDesc: TFloatField;
    tNEntradaItensVlrIpi: TFloatField;
    tNEntradaItensVlrIcms: TFloatField;
    tNEntradaItensBaseIcms: TFloatField;
    tNEntradaItensSitTrib: TSmallintField;
    tNEntradaItensIcmsIpi: TBooleanField;
    tNEntradaItensCodCor: TIntegerField;
    tNEntradaItensUnidade: TStringField;
    tNEntradaItensCodGrade: TIntegerField;
    tNEntradaItensNumOC: TIntegerField;
    tNEntradaItensItemOC: TIntegerField;
    tNEntradaItensQtdPacote: TFloatField;
    tNEntradaItensNumMovEst: TIntegerField;
    tNEntradaItensMatProd: TStringField;
    tNEntradaItensSomaEstoque: TBooleanField;
    tNEntradaItensNomeMaterial: TStringField;
    tNEntradaItensCodNatOper: TIntegerField;
    tNEntradaItenslkNomeMaterial: TStringField;
    tNEntradaItenslkNomeCor: TStringField;
    tNEntradaItensReferencia: TStringField;
    tNEntradaItensDtBaixa: TDateField;
    tNEntradaItensHrBaixa: TTimeField;
    tNEntradaItensNumMovEstBaixa: TIntegerField;
    tNEntradaItenslkCodClasFiscal: TStringField;
    qNotaEntradaFilial: TIntegerField;
    tNEntradaItensFilial: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qNotaEntradaAfterScroll(DataSet: TDataSet);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEscNotaDevolPorItem: TfEscNotaDevolPorItem;

implementation

uses UDM1, UEmissaoNotaFiscal, UNotaFiscalItens;

{$R *.DFM}

procedure TfEscNotaDevolPorItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfEscNotaDevolPorItem.BitBtn2Click(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text = '') or (CurrencyEdit1.AsInteger = 0) or (CurrencyEdit2.AsInteger = 0) then
    ShowMessage('Falta informação!')
  else
    begin
      if not qNotaEntrada.Locate('NumNEntr',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        begin
          ShowMessage('Nota não esta cadastrada!');
          CurrencyEdit1.Clear;
          CurrencyEdit1.Setfocus;
        end
      else
      if not tNEntradaItens.Locate('Item',CurrencyEdit2.AsInteger,[loCaseInsensitive]) then
        begin
          ShowMessage('Item não cadastrado!');
          CurrencyEdit2.SetFocus;
          CurrencyEdit2.Clear;
        end
      else                       
        begin
          fNotaFiscalItens.CurrencyEdit6.AsInteger   := tNEntradaItensCodMaterial.AsInteger;
          fNotaFiscalItens.RZDBLookupComboBox2.KeyValue := tNEntradaItensCodMaterial.AsInteger;
          fNotaFiscalItens.RzDBLookupComboBox1.KeyValue := tNEntradaItensCodMaterial.AsInteger;
          if tNEntradaItensCodCor.AsInteger > 0  then
            fNotaFiscalItens.RxDBLookupCombo4.KeyValue := tNEntradaItensCodCor.AsInteger;
          fNotaFiscalItens.RxDBLookupCombo7.Value := tNEntradaItensUnidade.AsString;
          fNotaFiscalItens.CurrencyEdit3.Value    := tNEntradaItensQtd.AsFloat;
          fNotaFiscalItens.Edit4.Clear;
          fNotaFiscalItens.Edit5.Clear;
          DM1.tProduto.IndexFieldNames := 'Codigo';
          DM1.tProduto.SetKey;
          DM1.tProdutoCodigo.AsInteger := tNEntradaItensCodMaterial.AsInteger;
          if (DM1.tProduto.GotoKey) and (DM1.tProdutoCodSitTrib.AsInteger > 0) then
            fNotaFiscalItens.RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
          else
          if tNEntradaItensSitTrib.AsInteger > 0 then
            fNotaFiscalItens.RxDBLookupCombo13.KeyValue := tNEntradaItensSitTrib.AsInteger;
          if tNEntradaItenslkCodClasFiscal.AsString <> '' then
            fNotaFiscalItens.RxDBLookupCombo5.KeyValue := tNEntradaItenslkCodClasFiscal.AsString;
          fNotaFiscalItens.CurrencyEdit4.Value := tNEntradaItensVlrUnit.AsFloat;
          fNotaFiscalItens.CurrencyEdit5.Value := tNEntradaItensVlrTotalItens.AsFloat;
          vNumNotaDevItem             := tNEntradaItensNumNEntr.AsInteger;
          vCodForncDevItem            := tNEntradaItensCodForn.AsInteger;
          vItemDev                    := tNEntradaItensItem.AsInteger;
          Close;
        end;
    end;
end;

procedure TfEscNotaDevolPorItem.RxDBLookupCombo1Exit(Sender: TObject);
begin
  qNotaEntrada.Close;
  qNotaEntrada.SQL.Clear;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qNotaEntrada.SQL.Add('SELECT Dbnentrada.Filial, Dbnentrada.CodForn, Dbfornecedores.NomeForn, Dbnentrada.NumNEntr, Dbnentrada.DtEmissaoNEntr, Dbnentrada.VlrTotalNEntr, Dbnentrada.DtEntrada');
      qNotaEntrada.SQL.Add('FROM "DBNENTRADA.DB" Dbnentrada');
      qNotaEntrada.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
      qNotaEntrada.SQL.Add('   ON  (Dbnentrada.CodForn = Dbfornecedores.CodForn)');
      qNotaEntrada.SQL.Add('WHERE  Dbnentrada.CodForn = :CodForn and Dbnentrada.Filial = :Filial');
      qNotaEntrada.SQL.Add('ORDER BY Dbnentrada.Filial, Dbnentrada.CodForn, Dbnentrada.NumNEntr');
      qNotaEntrada.Params[0].AsInteger := RxDBLookupCombo1.KeyValue;
      qNotaEntrada.Params[1].AsInteger := DM1.tFilialCodigo.AsInteger;
      qNotaEntrada.Open;
    end;
end;

procedure TfEscNotaDevolPorItem.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfEscNotaDevolPorItem.RxDBGrid2DblClick(Sender: TObject);
begin
  if tNEntradaItensItem.AsInteger > 0 then
    CurrencyEdit2.AsInteger := tNEntradaItensItem.AsInteger;
end;

procedure TfEscNotaDevolPorItem.RxDBGrid1DblClick(Sender: TObject);
begin
  if (qNotaEntrada.RecordCount > 0) and (qNotaEntradaNumNEntr.AsInteger > 0) then
    CurrencyEdit1.AsInteger := qNotaEntradaNumNEntr.AsInteger;
end;

procedure TfEscNotaDevolPorItem.FormShow(Sender: TObject);
begin
  if vCodForncDevItem > 0 then
    begin
      RxDBLookupCombo1.KeyValue := vCodForncDevItem;
      CurrencyEdit1.AsInteger   := vNumNotaDevItem;
      CurrencyEdit2.AsInteger   := vItemDev;
    end
  else
    begin
      if DM1.tFornecedores.Locate('CGC',DM1.tClienteCgcCpf.AsString,[loCaseInsensitive]) then
        begin
          RxDBLookupCombo1.KeyValue := DM1.tFornecedoresCodForn.AsInteger;
          RxDBLookupCombo1Exit(Sender);
        end;
    end;
end;

procedure TfEscNotaDevolPorItem.qNotaEntradaAfterScroll(DataSet: TDataSet);
begin
{  tNEntradaItens.Filtered := False;
  tNEntradaItens.Filter   := 'CodForn = '''+qNotaEntradaCodForn.AsString+''' and NumNEntr = '''+qNotaEntradaNumNEntr.AsString+'''';
  tNEntradaItens.Filtered := True;}
end;

procedure TfEscNotaDevolPorItem.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if CurrencyEdit1.Value > 0 then
    begin
      if key = vk_Return then
        qNotaEntrada.Locate('NumNEntr',CurrencyEdit1.Value,([LocaseInsensitive]));
    end;
end;

procedure TfEscNotaDevolPorItem.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if CurrencyEdit2.Value > 0 then
    begin
      if key = vk_Return then
        tNEntradaItens.Locate('Item',CurrencyEdit2.Value,([LocaseInsensitive]));
    end;    
end;

end.
