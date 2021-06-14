unit UOrdemCompraCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Buttons, Db,
  DBTables, MemTable, Grids, DBVGrids, DBGrids, RxLookup, Variants;

type
  TfOrdemCompraCor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    VDBGrid1: TVDBGrid;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure MontaGrade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrdemCompraCor: TfOrdemCompraCor;

implementation

uses UOrdemCompra, UDM1, UDM2;

{$R *.DFM}

procedure TfOrdemCompraCor.MontaGrade;
begin
  if (fOrdemCompra.BitBtn16.Tag = 0) or (fOrdemCompra.tAuxOrdemCompra.RecordCount < 1) then
    begin
      fOrdemCompra.tAuxOrdemCompra.First;
      while not fOrdemCompra.tAuxOrdemCompra.Eof do
        fOrdemCompra.tAuxOrdemCompra.delete;
      DM1.tGradeItem.First;
      while not DM1.tGradeItem.Eof do
        begin
          fOrdemCompra.tAuxOrdemCompra.Insert;
          fOrdemCompra.tAuxOrdemCompraCodGrade.AsInteger    := DM1.tGradeItemCodGrade.AsInteger;
          fOrdemCompra.tAuxOrdemCompraPosicao.AsInteger     := DM1.tGradeItemPosicao.AsInteger;
          fOrdemCompra.tAuxOrdemCompraQtd.AsString          := '';
          fOrdemCompra.tAuxOrdemCompraVlrUnitario.AsString  := '';
          fOrdemCompra.tAuxOrdemCompraVlrTotal.AsString     := '';
          if DM1.tProdutoPrecoGrade.AsBoolean then
            begin
              if DM2.tProdutoTam2.Locate('CodProduto;CodGrade;Posicao',VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tGradeItemCodGrade.AsInteger,DM1.tGradeItemPosicao.AsInteger]),[locaseinsensitive]) then
                fOrdemCompra.tAuxOrdemCompraVlrUnitario.AsFloat   := DM2.tProdutoTam2PrecoCusto.AsFloat
              else
                fOrdemCompra.tAuxOrdemCompraVlrUnitario.AsFloat   := DM1.tProdutoPrecoCusto.AsFloat;
            end;
          fOrdemCompra.tAuxOrdemCompra.Post;
          DM1.tGradeItem.Next;
        end;
    end;
  fOrdemCompra.tAuxOrdemCompra.First;
end;

procedure TfOrdemCompraCor.FormShow(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Codigo';
  if DM1.tProdutoPrecoGrade.AsBoolean = false then
    begin
      vDBGrid1.Columns[3].Destroy;
      vDBGrid1.Columns[2].Destroy;
    end;
  if DM1.tProdutoProdMat.AsString = 'P' then
    begin
      DM1.tProdutoGrade.First;
      if DM1.tProdutoGrade.RecordCount > 0 then
        RxDBLookupCombo1.KeyValue := DM1.tProdutoGradeCodGrade.AsInteger
      else
        RxDBLookupCombo1.ClearValue;
    end
  else
  if DM1.tProdutoCodGrade.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := DM1.tProdutoCodGrade.AsInteger;
  if RxDBLookupCombo1.Text <> '' then
    DM1.tGrade.FindKey([RxDBLookupCombo1.KeyValue]);
  MontaGrade;
  if fOrdemCompra.BitBtn16.Tag > 0 then
    CurrencyEdit1.Value := fOrdemCompra.CurrencyEdit1.Value;
end;

procedure TfOrdemCompraCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfOrdemCompraCor.VDBGrid1Enter(Sender: TObject);
begin
 if CurrencyEdit1.Value = 0 then
   begin
     ShowMessage('É obrigatório informar a quantidade total!');
     CurrencyEdit1.SetFocus;
   end
 else
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrdemCompraCor.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrdemCompraCor.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Codigo';
end;

procedure TfOrdemCompraCor.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfOrdemCompraCor.RxDBLookupCombo1Exit(Sender: TObject);
begin
  MontaGrade;
end;

procedure TfOrdemCompraCor.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrdemCompraCor.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrdemCompraCor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
 vQtd, vVlrTotal : Real;
begin
  if fOrdemCompra.BitBtn16.Tag <> 3 then
    begin
      vQtd      := 0;
      vVlrTotal := 0;
      fOrdemCompra.tAuxOrdemCompra.First;
      while not fOrdemCompra.tAuxOrdemCompra.Eof do
        begin
          vQtd := vQtd + fOrdemCompra.tAuxOrdemCompraQtd.asFloat;
          vVlrTotal := vVlrTotal + (fOrdemCompra.tAuxOrdemCompraQtd.AsFloat * fOrdemCompra.tAuxOrdemCompraVlrUnitario.AsFloat);
          fOrdemCompra.tAuxOrdemCompra.Next;
        end;
      if vQtd <> CurrencyEdit1.Value then
        begin
          ShowMessage('Quantidade da grade diferente da quantidade total!');
          CurrencyEdit1.SetFocus;
          CanClose := False;
        end
      else
        begin
          fOrdemCompra.CurrencyEdit1.Value := vQtd;
          fOrdemCompra.CurrencyEdit3.Value := vVlrTotal;
          CanClose := True;
        end;
    end;
end;

end.
