unit UBuscaVale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MemTable, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons,
  ExtCtrls, ALed, Variants;

type
  TfBuscaVale = class(TForm)
    mCopia: TMemoryTable;
    msCopia: TDataSource;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Bevel1: TBevel;
    Label33: TLabel;
    mCopiaCodProduto: TIntegerField;
    mCopiaCodCor: TIntegerField;
    mCopiaUnidade: TStringField;
    mCopiaQuantidade: TFloatField;
    mCopiaVlrUnitario: TFloatField;
    mCopiaCodSitTrib: TIntegerField;
    mCopialkCodClasFiscal: TStringField;
    mCopiaCodGrade: TIntegerField;
    mCopiaPosicao: TIntegerField;
    mCopiaTamanho: TStringField;
    Label1: TLabel;
    Shape1: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscaVale: TfBuscaVale;

implementation

uses UDM1, UNotaFiscalItens, UEmissaoNotaFiscal;

{$R *.DFM}

procedure TfBuscaVale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fNotaFiscalItens.BitBtn17.Tag := 0;
  DM1.tVale.Filtered := False;
  Action := Cafree;
end;

procedure TfBuscaVale.FormShow(Sender: TObject);
begin
  DM1.tVale.Filtered := False;
  DM1.tVale.Filter   := 'CodCliente = '''+IntToStr(fEmissaoNotaFiscal.RxDBLookupCombo8.KeyValue) + ''' and Faturado = False and GeraCobranca = False' ;
  DM1.tVale.Filtered := True;
  mCopia.EmptyTable;
end;

procedure TfBuscaVale.RxDBGrid2DblClick(Sender: TObject);
begin
  DM1.tVale.Edit;
  DM1.tValeSelecionado.AsBoolean := not(DM1.tValeSelecionado.AsBoolean);
  DM1.tVale.Post;
end;

procedure TfBuscaVale.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tValeSelecionado.AsBoolean then
    begin
      Background  := clLime;
      AFont.Color := clBlack;
    end;
end;

procedure TfBuscaVale.BitBtn1Click(Sender: TObject);
begin
  //*** Agrupa os produtos
  mCopia.EmptyTable;
  fEmissaoNotaFiscal.mVale.EmptyTable;
  DM1.tVale.First;
  while not DM1.tVale.Eof do
  begin
    if DM1.tValeSelecionado.AsBoolean then
    begin
      fEmissaoNotaFiscal.mVale.Insert;
      fEmissaoNotaFiscal.mValeNumVale.AsInteger := DM1.tValeNumVale.AsInteger;
      fEmissaoNotaFiscal.mVale.Post;

      DM1.tValeItens.First;
      while not DM1.tValeItens.Eof do
      begin
        if mCopia.Locate('CodProduto;CodCor;VlrUnitario;CodSitTrib;CodGrade;Posicao',
           VarArrayOf([DM1.tValeItensCodProduto.AsInteger,DM1.tValeItensCodCor.AsInteger,DM1.tValeItensVlrUnitario.AsInteger,
           DM1.tValeItensCodSitTrib.AsInteger,DM1.tValeItensCodGrade.AsInteger,DM1.tValeItensPosicao.AsInteger]),[locaseinsensitive]) then
        begin
          mCopia.Edit;
          mCopiaQuantidade.AsFloat := mCopiaQuantidade.AsFloat + DM1.tValeItensQtd.AsFloat;
          mCopia.Post;
        end
        else
        begin
          mCopia.Insert;
          mCopiaCodProduto.AsInteger := DM1.tValeItensCodProduto.AsInteger;
          mCopiaCodCor.AsInteger     := DM1.tValeItensCodCor.AsInteger;
          mCopiaVlrUnitario.AsFloat  := DM1.tValeItensVlrUnitario.AsFloat;
          mCopiaCodSitTrib.AsInteger := DM1.tValeItensCodSitTrib.AsInteger;
          mCopiaUnidade.AsString     := DM1.tValeItensUnidade.AsString;
          mCopiaQuantidade.AsFloat   := DM1.tValeItensQtd.AsFloat;
          mCopiaCodGrade.AsInteger   := DM1.tValeItensCodGrade.AsInteger;
          mCopiaPosicao.AsInteger    := DM1.tValeItensPosicao.AsInteger;
          mCopiaTamanho.AsString     := DM1.tValeItensTamanho.AsString;
          mCopia.Post;
        end;
        DM1.tValeItens.Next;
      end;
    end;
    DM1.tVale.Next;
  end;

  //*** Grava o item na nota
  mCopia.First;
  while not mCopia.Eof do
  begin
    fNotaFiscalItens.CurrencyEdit6.AsInteger   := mCopiaCodProduto.AsInteger;
    fNotaFiscalItens.RZDBLookupComboBox2.KeyValue := mCopiaCodProduto.AsInteger;
    fNotaFiscalItens.RzDBLookupComboBox1.KeyValue := mCopiaCodProduto.AsInteger;
    fNotaFiscalItens.Move_Itens;
    //if mCopiaCodSitTrib.AsInteger > 0 then
    //  fNotaFiscalItens.RxDBLookupCombo13.KeyValue := mCopiaCodSitTrib.AsInteger;
    fNotaFiscalItens.RxDBLookupCombo4.Value := mCopiaCodCor.AsString;
    fNotaFiscalItens.RxDBLookupCombo7.Value := mCopiaUnidade.AsString;
    fNotaFiscalItens.CurrencyEdit3.Value := mCopiaQuantidade.AsFloat;
    fNotaFiscalItens.CurrencyEdit4.Value := mCopiaVlrUnitario.AsFloat;
    fNotaFiscalItens.CurrencyEdit5.Value := fNotaFiscalItens.CurrencyEdit3.Value * fNotaFiscalItens.CurrencyEdit4.Value;
    //if mCopialkCodClasFiscal.AsString <> '' then
    //  fNotaFiscalItens.RxDBLookupCombo5.KeyValue := mCopialkCodClasFiscal.AsString;
    //if fNotaFiscalItens.RxDBLookupCombo13.Text <> '' then
    //begin
    //  DM1.tSitTributaria.SetKey;
    //  DM1.tSitTributariaCodigo.AsInteger := fNotaFiscalItens.RxDBLookupCombo13.KeyValue;
    //  if (DM1.tSitTributaria.GotoKey) and (DM1.tSitTributariaSitTributaria.AsFloat = 0) then
    //    fNotaFiscalItens.Edit4.Clear;
    //end;
    fNotaFiscalItens.CheckBox2.Checked := False;
    fNotaFiscalItens.BitBtn6.Click;
    mCopia.Next;
  end;
end;

procedure TfBuscaVale.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
