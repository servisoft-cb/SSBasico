unit UNotaEntradaGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Buttons, Db,
  DBTables, MemTable, Grids, DBVGrids, DBGrids, RxLookup, Variants;

type
  TfNotaEntradaGrade = class(TForm)
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
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1CloseUp(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
  private
    procedure MontaGrade;
    function Verifica_OrdemCompra: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaEntradaGrade: TfNotaEntradaGrade;
  flag : String[1];
  Tam: String;

implementation

uses UNotaEntrada, UDM1, UDM2;

{$R *.DFM}

function TfNotaEntradaGrade.Verifica_OrdemCompra: Boolean;
begin
  Result := False;
  Dm1.tOrdemCompra.IndexFieldNames     := 'Filial;Codigo';
  Dm1.tOrdemCompra.FindKey([DM1.tFilialCodigo.AsInteger,fNotaEntrada.CurrencyEdit11.Value]);
  Dm1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
  Dm1.tOrdemCompraItem.FindKey([DM1.tFilialCodigo.AsInteger,fNotaEntrada.CurrencyEdit11.Value,fNotaEntrada.CurrencyEdit12.Value]);
  fNotaEntrada.tAuxNEntradaGrade.First;
  while not fNotaEntrada.tAuxNEntradaGrade.EOF do
    begin
      Dm1.tOrdemCompraItemGrade.IndexFieldNames := 'Filial;Codigo;Item;CodGrade;Posicao';
      Dm1.tOrdemCompraItemGrade.SetKey;
      DM1.tOrdemCompraItemGradeFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
      Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := fNotaEntrada.CurrencyEdit11.AsInteger;
      Dm1.tOrdemCompraItemGradeItem.AsInteger     := fNotaEntrada.CurrencyEdit12.AsInteger;
      Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := fNotaEntrada.tAuxNEntradaGradeCodGrade.AsInteger;
      Dm1.tOrdemCompraItemGradePosicao.AsInteger  := fNotaEntrada.tAuxNEntradaGradePosicao.AsInteger;
      if Dm1.tOrdemCompraItemGrade.GotoKey then
        begin
          if Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat < fNotaEntrada.tAuxNEntradaGradeQtd.AsFloat then
            begin
              Tam := Dm1.tOrdemCompraItemGradelkTamanho.AsString;
              Result := True;
              Break;
            end
          else
            fNotaEntrada.tAuxNEntradaGrade.Next;
        end
      else
        begin
          Tam := Dm1.tOrdemCompraItemGradelkTamanho.AsString;
          Result := True;
          Break;
        end;
    end;
end;

procedure TfNotaEntradaGrade.MontaGrade;
begin
  if ((fNotaEntrada.BitBtn16.Tag < 1) and (fNotaEntrada.CurrencyEdit12.AsInteger < 1)) or
     (fNotaEntrada.tAuxNEntradaGrade.RecordCount < 1) then
    begin
      fNotaEntrada.tAuxNEntradaGrade.First;
      while not fNotaEntrada.tAuxNEntradaGrade.Eof do
        fNotaEntrada.tAuxNEntradaGrade.delete;
      DM1.tGradeItem.First;
      while not DM1.tGradeItem.Eof do
        begin
          fNotaEntrada.tAuxNEntradaGrade.Insert;
          fNotaEntrada.tAuxNEntradaGradeCodGrade.AsInteger    := DM1.tGradeItemCodGrade.AsInteger;
          fNotaEntrada.tAuxNEntradaGradePosicao.AsInteger     := DM1.tGradeItemPosicao.AsInteger;
          fNotaEntrada.tAuxNEntradaGradeTamanho.AsString      := DM1.tGradeItemTamanho.AsString;
          fNotaEntrada.tAuxNEntradaGradeQtd.AsString          := '';
          fNotaEntrada.tAuxNEntradaGradeVlrUnitario.AsString  := '';
          fNotaEntrada.tAuxNEntradaGradeVlrTotal.AsString     := '';
          if DM1.tProdutoPrecoGrade.AsBoolean then
            begin
              if DM2.tProdutoTam2.Locate('CodProduto;CodGrade;Posicao',VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tGradeItemCodGrade.AsInteger,DM1.tGradeItemPosicao.AsInteger]),[locaseinsensitive]) then
                fNotaEntrada.tAuxNEntradaGradeVlrUnitario.AsFloat   := DM2.tProdutoTam2PrecoCusto.AsFloat
              else
                fNotaEntrada.tAuxNEntradaGradeVlrUnitario.AsFloat   := DM1.tProdutoPrecoCusto.AsFloat;
            end;
          fNotaEntrada.tAuxNEntradaGrade.Post;
          DM1.tGradeItem.Next;
        end;
    end;
  fNotaEntrada.tAuxNEntradaGrade.First;
end;

procedure TfNotaEntradaGrade.FormShow(Sender: TObject);
begin
  if DM1.tProdutoPrecoGrade.AsBoolean = False then
    begin
      vDBGrid1.Columns[3].Destroy;
      vDBGrid1.Columns[2].Destroy;
    end;
  if fNotaEntrada.BitBtn16.Tag = 2 then
    begin
      RxDBLookupCombo1.KeyValue := fNotaEntrada.tAuxNEntradaGradeCodGrade.AsInteger;
      CurrencyEdit1.Value       := DM1.tNEntradaItensQtd.AsFloat;
      RxDBLookupCombo1.Enabled  := False;
      CurrencyEdit1.Enabled     := False;
      VDBGrid1.ReadOnly         := True;
    end
  else
  if fNotaEntrada.CurrencyEdit12.AsInteger > 0 then
    RxDBLookupCombo1.KeyValue := DM1.tGradeCodigo.AsInteger
  else
    begin
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
    end;
  if RxDBLookupCombo1.Text <> '' then
    DM1.tGrade.FindKey([RxDBLookupCombo1.KeyValue]);

  MontaGrade;
  if (fNotaEntrada.BitBtn16.Tag = 1) or (fNotaEntrada.CurrencyEdit12.AsInteger > 0) then
    CurrencyEdit1.Value := fNotaEntrada.CurrencyEdit3.Value;
end;

procedure TfNotaEntradaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaEntradaGrade.VDBGrid1Enter(Sender: TObject);
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

procedure TfNotaEntradaGrade.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaEntradaGrade.RxDBLookupCombo1Exit(Sender: TObject);
begin
  MontaGrade;
end;

procedure TfNotaEntradaGrade.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfNotaEntradaGrade.RxDBLookupCombo1CloseUp(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Codigo';
end;

procedure TfNotaEntradaGrade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  vQtd, vVlrTotal : Real;
begin
  if fNotaEntrada.BitBtn16.Tag <> 2 then
    begin
      vQtd      := 0;
      vVlrTotal := 0;
      fNotaEntrada.tAuxNEntradaGrade.First;
      while not fNotaEntrada.tAuxNEntradaGrade.Eof do
        begin
          vQtd := vQtd + fNotaEntrada.tAuxNEntradaGradeQtd.asFloat;
          vVlrTotal := vVlrTotal + (fNotaEntrada.tAuxNEntradaGradeQtd.AsFloat * fNotaEntrada.tAuxNEntradaGradeVlrUnitario.AsFloat);
          fNotaEntrada.tAuxNEntradaGrade.Next;
        end;
      if vQtd <> CurrencyEdit1.Value then
        begin
          ShowMessage('Quantidade da grade diferente da quantidade total!');
          CanClose := False;
        end
      else
        begin
          if fNotaEntrada.CurrencyEdit12.AsInteger > 0 then
            begin
              if Verifica_OrdemCompra then
                begin
                  ShowMessage('Quantidade do tamanho ' + Tam +
                  ' maior que a' + #13 + 'restante ou não encontrado na ordem de compra!');
                  Abort;
                  CanClose := False;
                end
              else
                CanClose := True;
            end
          else
            CanClose := True;
          fNotaEntrada.CurrencyEdit3.Value := vQtd;
          if vVlrTotal > 0 then
            fNotaEntrada.CurrencyEdit8.Value := vVlrTotal;
        end;
    end;

end;

procedure TfNotaEntradaGrade.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfNotaEntradaGrade.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

end.
