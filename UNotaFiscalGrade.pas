unit UNotaFiscalGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, Mask, ToolEdit, CurrEdit, Grids, DBVGrids, Buttons,
  ExtCtrls, Db, DBTables, Variants;

type
  TfNotaFiscalGrade = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    VDBGrid1: TVDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure MontaGrade;
  public
    { Public declarations }
  end;

var
  fNotaFiscalGrade: TfNotaFiscalGrade;
  vSaldoMinimo, vEstoque : Boolean;

implementation

uses UDM1, UEmissaoNotaFiscal, UConsEstoqueMat, UNotaFiscalItens, UDM2;

{$R *.DFM}

procedure TfNotaFiscalGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfNotaFiscalGrade.MontaGrade;
begin

  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
  while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
    fEmissaoNotaFiscal.tAuxNotaFiscalGrade.delete;
  if DM1.tProdutoProdMat.AsString = 'P' then
    begin
      DM1.tProdutoTam.First;
      while not DM1.tProdutoTam.Eof do
        begin
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger   := DM1.tProdutoTamCodGrade.AsInteger;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger    := DM1.tProdutoTamPosicao.AsInteger;
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsString         := '';
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeVlrUnitario.AsString := '';
          fEmissaoNotaFiscal.tAuxNotaFiscalGradeVlrTotal.AsString    := '';
          if DM1.tProdutoPrecoGrade.AsBoolean then
            fEmissaoNotaFiscal.tAuxNotaFiscalGradeVlrUnitario.AsFloat := DM1.tProdutoTamPrecoCusto.AsFloat
          else
            fEmissaoNotaFiscal.tAuxNotaFiscalGradeVlrUnitario.AsFloat := DM1.tProdutoVlrVenda.AsFloat;
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
          DM1.tProdutoTam.Next;
        end;
    end
  else
  if RxDBLookupCombo1.Text <> '' then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.SetKey;
      DM1.tGradeCodigo.AsInteger := RxDBLookupCombo1.KeyValue;
      if DM1.tGrade.GotoKey then
        begin
          DM1.tGradeItem.First;
          while not DM1.tGradeItem.Eof do
            begin
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Insert;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradePosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
              fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsString         := '';
              if DM1.tProdutoPrecoGrade.AsBoolean then
                begin
                  if DM2.tProdutoTam2.Locate('CodProduto;CodGrade;Posicao',VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tGradeItemCodGrade.AsInteger,DM1.tGradeItemPosicao.AsInteger]),[locaseinsensitive]) then
                    fEmissaoNotaFiscal.tAuxNotaFiscalGradeVlrUnitario.AsFloat   := DM2.tProdutoTam2PrecoCusto.AsFloat
                  else
                    fEmissaoNotaFiscal.tAuxNotaFiscalGradeVlrUnitario.AsFloat   := DM1.tProdutoPrecoCusto.AsFloat;
                end;
              fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Post;
              DM1.tGradeItem.Next;
            end;
        end;
    end;
  fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
end;

procedure TfNotaFiscalGrade.RxDBLookupCombo1Exit(Sender: TObject);
begin
  MontaGrade;
end;

procedure TfNotaFiscalGrade.VDBGrid1Enter(Sender: TObject);
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

procedure TfNotaFiscalGrade.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalGrade.FormShow(Sender: TObject);
begin
  if DM1.tProdutoPrecoGrade.AsBoolean = False then
    begin
      vDBGrid1.Columns[3].Destroy;
      vDBGrid1.Columns[2].Destroy;
    end;
  DM1.tProdutoGrade.First;
  if DM1.tProdutoProdMat.AsString = 'P' then
    RxDBLookupCombo1.KeyValue := DM1.tProdutoGradeCodGrade.AsInteger
  else
    RxDBLookupCombo1.KeyValue := DM1.tProdutoCodGrade.AsInteger;
  CurrencyEdit1.Value := 0;
  if fEmissaoNotaFiscal.SpeedButton23.Tag > 0 then
    begin
      RxDBLookupCombo1.Enabled := False;
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
      while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
        begin
          CurrencyEdit1.Value := CurrencyEdit1.Value + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.AsFloat;
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Next;
        end;
      if fEmissaoNotaFiscal.SpeedButton23.Tag = 2 then
        begin
          CurrencyEdit1.ReadOnly := True;
          VDBGrid1.ReadOnly      := True;
        end;
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
    end
  else
    begin
      RxDBLookupCombo1.Enabled := True;
      MontaGrade;
    end;
end;

procedure TfNotaFiscalGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F3 then
    begin
      if DM1.tUsuarioConsEstoqueMat.AsBoolean then
        begin
          fConsEstoqueMat := TfConsEstoqueMat.Create(Self);
          fConsEstoqueMat.ShowModal;
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir esta consulta!');
    end;
end;

procedure TfNotaFiscalGrade.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfNotaFiscalGrade.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfNotaFiscalGrade.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfNotaFiscalGrade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
 vQtd : Real;
begin
  if fEmissaoNotaFiscal.SpeedButton23.Tag = 2 then
    CanClose := True
  else
    begin
      vQtd      := 0;
      fEmissaoNotaFiscal.tAuxNotaFiscalGrade.First;
      while not fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Eof do
        begin
          vQtd := StrToFloat(FormatFloat('0.00000',vQtd + fEmissaoNotaFiscal.tAuxNotaFiscalGradeQtd.asFloat));
          fEmissaoNotaFiscal.tAuxNotaFiscalGrade.Next;
        end;

      if (StrToFloat(FormatFloat('0.00000',vQtd)) > 0) and (StrToFloat(FormatFloat('0.00000',vQtd)) <> StrToFloat(FormatFloat('0.00000',CurrencyEdit1.Value))) then
        begin
          ShowMessage('Quantidade da grade diferente da quantidade total!');
          CanClose := False;
        end
      else
      if vQtd > 0 then
        begin
          fNotaFiscalItens.CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00000',vQtd));
          CanClose := True;
        end
      else
      if vQtd <= 0 then
        begin
          if MessageDlg('Confirma este produto sem grade?',mtConfirmation,[mbOK,mbNo],0) = mrOk then
            begin
              fNotaFiscalItens.CurrencyEdit3.Value := CurrencyEdit1.Value;
              CanClose := True;
            end
          else
            CanClose := False;
        end;
    end;
end;

end.
