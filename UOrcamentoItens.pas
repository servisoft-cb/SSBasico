unit UOrcamentoItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, RxLookup, ExtCtrls,
  DBFilter, DB, DBTables;

type
  TfOrcamentoItens = class(TForm)
    RxDBLookupCombo5: TRxDBLookupCombo;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    Edit3: TEdit;
    Edit1: TEdit;
    StaticText5: TStaticText;
    BitBtn11: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    Panel1: TPanel;
    SpeedButton7: TSpeedButton;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    RxDBFilter2: TRxDBFilter;
    qCorRef: TQuery;
    qCorRefCodCor: TIntegerField;
    dsqCorRef: TDataSource;
    StaticText11: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    Panel2: TPanel;
    SpeedButton9: TSpeedButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText10: TStaticText;
    CurrencyEdit3: TCurrencyEdit;
    qCorRefNome: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Exit(Sender: TObject);
    procedure CurrencyEdit2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
  private
    { Private declarations }
    procedure Move_Itens;
    procedure Grava_Itens;
  public
    { Public declarations }
  end;

var
  fOrcamentoItens: TfOrcamentoItens;
  vVlrItemOrc : Currency;

implementation

uses UDM1, UOrcamentoGrade, UOrcamento, UDM2, UPedido, UProduto;

{$R *.dfm}

procedure TfOrcamentoItens.Grava_Itens;
var
  vItemAux : Integer;
begin
  fOrcamento.tAuxOrcamentoGrade.First;
  while not fOrcamento.tAuxOrcamentoGrade.Eof do
    begin
      if fOrcamento.tAuxOrcamentoGradeQtd.AsFloat > 0 then
        begin
          DM1.tOrcamentoItens.Refresh;
          DM1.tOrcamentoItens.Last;
          vItemAux := DM1.tOrcamentoItensItem.AsInteger;
          DM1.tOrcamentoItens.Insert;
          DM1.tOrcamentoItensNumOrcamento.AsInteger := DM1.tOrcamentoNumOrcamento.AsInteger;
          DM1.tOrcamentoItensItem.AsInteger         := vItemAux + 1;
          if (CheckBox1.Checked) then
            begin
              DM1.tOrcamentoItensCodProduto.AsInteger  := 0;
              DM1.tOrcamentoItensReferencia.AsString   := '';
              DM1.tOrcamentoItensNomeProduto.AsString  := Edit4.Text;
              Dm1.tOrcamentoItensProdutoNCad.AsBoolean := True;
            end
          else
            begin
              if DM1.tProdutoLancaCor.AsBoolean then
                DM1.tOrcamentoItensCodCor.AsInteger   := RxDBLookupCombo5.KeyValue
              else
                DM1.tOrcamentoItensCodCor.AsInteger   := 0;
              Dm1.tOrcamentoItensProdutoNCad.AsBoolean := False;
              DM1.tOrcamentoItensCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tOrcamentoItensReferencia.AsString  := DM1.tProdutoReferencia.AsString;
              DM1.tOrcamentoItensNomeProduto.AsString := RxDBLookupCombo3.Text;
            end;
          DM1.tOrcamentoItensUnidade.AsString      := Edit1.Text;
          DM1.tOrcamentoItensPrazoEntrega.AsString := Edit3.Text;
          DM1.tOrcamentoItensComMatriz.AsBoolean   := False;
          DM1.tOrcamentoItensQtd.AsFloat           := fOrcamento.tAuxOrcamentoGradeQtd.AsFloat;
          DM1.tOrcamentoItensVlrUnitario.AsFloat   := CurrencyEdit2.Value;
          DM1.tOrcamentoItensVlrTotal.AsFloat      := StrToFloat(FormatFloat('0.00',DM1.tOrcamentoItensVlrUnitario.AsFloat * DM1.tOrcamentoItensQtd.AsFloat));
          DM1.tOrcamentoItensAprovado.AsString     := 'P';
          DM1.tOrcamentoItensCodGrade.AsInteger    := fOrcamento.tAuxOrcamentoGradeCodGrade.AsInteger;
          DM1.tOrcamentoItensTamanho.AsString      := fOrcamento.tAuxOrcamentoGradeTamanho.AsString;
          DM1.tOrcamentoItensPosicao.AsInteger     := fOrcamento.tAuxOrcamentoGradePosicao.AsInteger;
          DM1.tOrcamentoItensCopiado.AsBoolean     := False;
          DM1.tOrcamentoItensPercComissao.AsFloat  := CurrencyEdit4.Value;
          DM1.tOrcamentoItens.Post;
        end;
      fOrcamento.tAuxOrcamentoGrade.Delete;
    end;
end;

procedure TfOrcamentoItens.Move_Itens;
begin
  Edit1.Text                := DM1.tProdutoUnidade.AsString;
  RxDBLookupCombo4.KeyValue := DM1.tProdutoCodigo.AsInteger;
  RxDBLookupCombo3.KeyValue := DM1.tProdutoCodigo.AsInteger;
  CurrencyEdit3.AsInteger   := DM1.tProdutoCodigo.AsInteger;
  if fOrcamento.BitBtn14.Tag = 1 then
    CurrencyEdit1.Enabled := True
  else
    CurrencyEdit1.Enabled := not(DM1.tProdutoLancaGrade.AsBoolean);
  CurrencyEdit2.Enabled := not(DM1.tProdutoPrecoGrade.AsBoolean);
  qCorRef.Close;
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo5.ReadOnly := not(DM1.tProdutoLancaCor.AsBoolean);
  if DM1.tProdutoLancaCor.AsBoolean then
    begin
      DM1.tProdutoCor.Refresh;
      qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qCorRef.Open;
      if fOrcamento.BitBtn14.Tag = 1 then
        RxDBLookupCombo5.KeyValue := vCorOrc;
    end;
  CurrencyEdit4.Value := DM1.tProdutoPercComissaoVend.AsFloat;
end;

procedure TfOrcamentoItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter2.Active := False;
  Action := Cafree;
end;

procedure TfOrcamentoItens.CheckBox1Click(Sender: TObject);
begin
  case CheckBox1.Checked of
    True  : begin
              CurrencyEdit3.Enabled    := False;
              RxDBLookupCombo3.Enabled := False;
              RxDBLookupCombo4.Enabled := False;
              RxDBLookupCombo5.Enabled := False;
              Edit4.Enabled            := True;
              RxDBLookupCombo1.Enabled := False;
              RxDBLookupCombo6.Enabled := False;
              CurrencyEdit1.Enabled    := True;
              CurrencyEdit3.Clear;
              CurrencyEdit4.Clear;
              RxDBLookupCombo3.ClearValue;
              RxDBLookupCombo4.ClearValue;
              RxDBLookupCombo5.ClearValue;
            end;
    False : begin
              CurrencyEdit3.Enabled    := True;
              RxDBLookupCombo3.Enabled := True;
              RxDBLookupCombo4.Enabled := True;
              RxDBLookupCombo5.Enabled := True;
              Edit4.Enabled            := False;
            end;
  end;
end;

procedure TfOrcamentoItens.CurrencyEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    RxDBLookupCombo4.SetFocus;
end;

procedure TfOrcamentoItens.CurrencyEdit3Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit3.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit3.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo4.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo3.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto não cadastrado!');
          CurrencyEdit3.SetFocus;
          CurrencyEdit3.Clear;
          RxDBLookupCombo4.ClearValue;
          RxDBLookupCombo3.ClearValue;
        end;
    end;
end;

procedure TfOrcamentoItens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfOrcamentoItens.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrcamentoItens.SpeedButton7Click(Sender: TObject);
begin
  CheckBox1.Checked := False;
  Edit4.Clear;
  CurrencyEdit3.Clear;
  RxDBLookupCombo4.ClearValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo6.ClearValue;
  Edit1.Clear;
  Edit3.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit4.Clear;
end;

procedure TfOrcamentoItens.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfOrcamentoItens.BitBtn11Click(Sender: TObject);
var
  vQtd : Real;
  vImpTamItem : Boolean;
begin
  vImpTamItem := False;
  if DM1.tOrcamentoCodCliente.AsInteger > 0 then
    if DM1.tCliente.Locate('Codigo',DM1.tOrcamentoCodCliente.AsInteger,[loCaseInsensitive]) then
      vImpTamItem := DM1.tClienteImpItemNotaPorTam.AsBoolean;
  if (RxDBLookupCombo3.Text <> '') and not(CheckBox1.Checked) and
     (((vImpTamItem) and (fOrcamento.BitBtn14.Tag < 1)) or ((vImpTamItem = False))) then  
    begin
      if DM1.tProdutoLancaGrade.AsBoolean then
        begin
          fOrcamentoGrade := TfOrcamentoGrade.Create(Self);
          fOrcamentoGrade.ShowModal;
          vQtd := 0;
          fOrcamento.tAuxOrcamentoGrade.First;
          while not fOrcamento.tAuxOrcamentoGrade.Eof do
            begin
              vQtd := vQtd + fOrcamento.tAuxOrcamentoGradeQtd.AsFloat;
              fOrcamento.tAuxOrcamentoGrade.Next;
            end;
          CurrencyEdit1.Value := vQtd;
        end
      else
        ShowMessage('Produto não possui grade!');
    end;
end;

procedure TfOrcamentoItens.RxDBLookupCombo6Enter(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo3.Text <> '') then
    DM1.tProdutoGrade.FindKey([RxDBLookupCombo3.KeyValue,RxDBLookupCombo1.KeyValue])
  else
    begin
      ShowMessage('Falta informar o produto ou a grade!');
      RxDBLookupCombo6.SetFocus;
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfOrcamentoItens.FormShow(Sender: TObject);
begin
  RxDBFilter2.Active := True;
  if fOrcamento.BitBtn14.Tag = 1 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit3.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          qCorRef.Close;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo5.ReadOnly := not(DM1.tProdutoLancaCor.AsBoolean);
          if DM1.tProdutoLancaCor.AsBoolean then
            begin
              DM1.tProdutoCor.Refresh;
              qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
              qCorRef.Open;
              RxDBLookupCombo5.KeyValue := vCorOrc;
            end;
        end;
    end;
end;

procedure TfOrcamentoItens.BitBtn6Click(Sender: TObject);
var
  vImpTamItem : Boolean;
  vItemAux : Integer;
begin
  if (CheckBox1.Checked) and ((Edit4.Text = '') or (Edit1.Text = '') or (CurrencyEdit1.Value = 0))then
    ShowMessage('Falta Informar a descrição do <produto>, <Quantidade>, <Unidade> ou <Valor>!')
  else
  if not(CheckBox1.Checked) and ((RxDBLookupCombo4.Text = '') or (Edit1.Text = '') or (CurrencyEdit1.Value = 0)) then
    ShowMessage('Falta informar <Referência>, <Quantidade>, <Unidade> ou <Valor>!')
  else
    begin
      if RxDBLookupCombo4.Text <> '' then
        begin
          DM1.tProduto.IndexFieldNames := 'Codigo';
          DM1.tProduto.SetKey;
          DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo4.KeyValue;
        end;
      if not(CheckBox1.Checked) and (DM1.tProduto.GotoKey) and ((DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo5.Text = '')) then
        ShowMessage('Este produto possui cor!')
      else
        begin
          vImpTamItem := False;
          if DM1.tOrcamentoCodCliente.AsInteger > 0 then
            if DM1.tCliente.Locate('Codigo',DM1.tOrcamentoCodCliente.AsInteger,[loCaseInsensitive]) then
              vImpTamItem := DM1.tClienteImpItemNotaPorTam.AsBoolean;
          fOrcamento.tAuxOrcamentoGrade.First;
          if (DM1.tProdutoLancaGrade.AsBoolean) and (fOrcamento.BitBtn14.Tag <> 1) and not(CheckBox1.Checked) and
             (vImpTamItem) then
            begin
              DM1.tOrcamentoItens.Refresh;
              DM1.tOrcamentoItens.Last;
              Grava_Itens;
              SpeedButton7Click(Sender);
              if fOrcamento.BitBtn14.Tag = 1 then
                Close
              else
                CheckBox1.SetFocus;
            end
          else
            begin
              DM1.tOrcamentoItens.Refresh;
              DM1.tOrcamentoItens.Last;
              vItemAux := DM1.tOrcamentoItensItem.AsInteger;

              DM1.tOrcamentoItens.Insert;
              DM1.tOrcamentoItensNumOrcamento.AsInteger := DM1.tOrcamentoNumOrcamento.AsInteger;
              if  fOrcamento.BitBtn14.Tag = 1 then
                DM1.tOrcamentoItensItem.AsInteger  := vItemOrcAux
              else
                DM1.tOrcamentoItensItem.AsInteger  := vItemAux + 1;
              if (CheckBox1.Checked) then
                begin
                  DM1.tOrcamentoItensCodProduto.AsInteger := 0;
                  DM1.tOrcamentoItensReferencia.AsString  := '';
                  DM1.tOrcamentoItensNomeProduto.AsString := Edit4.Text;
                  Dm1.tOrcamentoItensProdutoNCad.AsBoolean := True;
                end
              else
                begin
                  if DM1.tProdutoLancaCor.AsBoolean then
                    DM1.tOrcamentoItensCodCor.AsInteger   := RxDBLookupCombo5.KeyValue
                  else
                    DM1.tOrcamentoItensCodCor.AsInteger   := 0;
                  Dm1.tOrcamentoItensProdutoNCad.AsBoolean := False;
                  DM1.tOrcamentoItensCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tOrcamentoItensReferencia.AsString  := DM1.tProdutoReferencia.AsString;
                  DM1.tOrcamentoItensNomeProduto.AsString := RxDBLookupCombo3.Text;
                end;
              DM1.tOrcamentoItensUnidade.AsString      := Edit1.Text;
              DM1.tOrcamentoItensPrazoEntrega.AsString := Edit3.Text;
              DM1.tOrcamentoItensComMatriz.AsBoolean   := False;
              DM1.tOrcamentoItensQtd.AsFloat           := CurrencyEdit1.Value;
              DM1.tOrcamentoItensVlrUnitario.AsFloat  := CurrencyEdit2.Value;
              DM1.tOrcamentoItensVlrTotal.AsFloat     := StrToFloat(FormatFloat('0.00',DM1.tOrcamentoItensVlrUnitario.AsFloat * DM1.tOrcamentoItensQtd.AsFloat));
              DM1.tOrcamentoItensPercComissao.AsFloat := CurrencyEdit4.Value;
              fOrcamento.tAuxOrcamentoGrade.First;
              if fOrcamento.BitBtn14.Tag = 1 then
                DM1.tOrcamentoItensAprovado.AsString    := vAprovado
              else
                DM1.tOrcamentoItensAprovado.AsString    := 'P';
              if RxDBLookupCombo1.Text = '' then
                DM1.tOrcamentoItensCodGrade.AsInteger := 0
              else
                DM1.tOrcamentoItensCodGrade.AsInteger := RxDBLookupCombo1.KeyValue;
              if RxDBLookupCombo6.Text = '' then
                begin
                  DM1.tOrcamentoItensTamanho.AsString  := '';
                  DM1.tOrcamentoItensPosicao.AsInteger := 0;
                end
              else
                begin
                  DM1.tOrcamentoItensTamanho.AsString  := RxDBLookupCombo6.Text;
                  DM1.tOrcamentoItensPosicao.AsInteger := RxDBLookupCombo6.KeyValue;
                end;
              DM1.tOrcamentoItensCopiado.AsBoolean := False;
              DM1.tOrcamentoItens.Post;
              DM1.tOrcamentoItens.Edit;
              if DM1.tProdutoLancaGrade.AsBoolean then
                begin
                  fOrcamento.tAuxOrcamentoGrade.First;
                  while not fOrcamento.tAuxOrcamentoGrade.Eof do
                    begin
                      DM1.tOrcamentoGrade.Insert;
                      DM1.tOrcamentoGradeNumOrcamento.AsInteger := fOrcamento.tAuxOrcamentoGradeNumOrcamento.AsInteger;
                      DM1.tOrcamentoGradeItem.AsInteger         := DM1.tOrcamentoItensItem.AsInteger;
                      DM1.tOrcamentoGradeCodGrade.AsInteger     := fOrcamento.tAuxOrcamentoGradeCodGrade.AsInteger;
                      DM1.tOrcamentoGradePosicao.AsInteger      := fOrcamento.tAuxOrcamentoGradePosicao.AsInteger;
                      DM1.tOrcamentoGradeQtd.AsFloat            := fOrcamento.tAuxOrcamentoGradeQtd.AsFloat;
                      DM1.tOrcamentoGradeVlrUnitario.AsFloat    := fOrcamento.tAuxOrcamentoGradeVlrUnitario.AsFloat;
                      DM1.tOrcamentoGradeVlrTotal.AsFloat       := fOrcamento.tAuxOrcamentoGradeVlrTotal.AsFloat;
                      DM1.tOrcamentoGrade.Post;
                      if DM1.tProdutoPrecoGrade.AsBoolean then
                        DM1.tOrcamentoItensVlrTotal.AsFloat := DM1.tOrcamentoItensVlrTotal.AsFloat + fOrcamento.tAuxOrcamentoGradeVlrTotal.AsFloat;
                      fOrcamento.tAuxOrcamentoGrade.Delete;
                    end;
                end;
              DM1.tOrcamentoItens.Post;
              DM1.tOrcamentoVlrTotal.AsFloat          := StrToFloat(FormatFloat('0.00',DM1.tOrcamentoVlrTotal.AsFloat + DM1.tOrcamentoItensVlrTotal.AsFloat));
              SpeedButton7Click(Sender);
            end;
          if fOrcamento.BitBtn14.Tag = 1 then
            Close
          else
            CheckBox1.SetFocus;
        end;
    end;
end;

procedure TfOrcamentoItens.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      RxDBFilter2.Active := False;
      vCodProdutoPos     := 0;
      if RxDBLookupCombo4.Text <> '' then
        vCodProdutoPos := RxDBLookupCombo4.KeyValue
      else
      if RxDBLookupCombo3.Text <> '' then
        vCodProdutoPos := RxDBLookupCombo3.KeyValue;
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      RxDBFilter2.Active := True;
      DM1.tProduto.Refresh;
      DM1.tProdutoCor.Refresh;
      DM1.tProdutoMat.Refresh;
      if (RxDBLookupCombo4.Text <> '')  then
        begin
          DM1.tProduto.Locate('Codigo',RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);
          qCorRef.Active              := False;
          qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
          qCorRef.Active              := True;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfOrcamentoItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F10 then
    Close;
end;

procedure TfOrcamentoItens.Panel2Exit(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo4.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          Move_itens;
          //if not DM1.tProdutoLancaCor.AsBoolean then
          //Mostra_Preco;
        end
      else
        begin
          ShowMessage('Produto não cadastrado!');
          RxDBLookupCombo4.SetFocus;
        end;
    end;
end;

procedure TfOrcamentoItens.CurrencyEdit2Enter(Sender: TObject);
begin
  vVlrItemOrc := CurrencyEdit2.Value;
end;

procedure TfOrcamentoItens.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.Text <> '' then
    begin
      RxDBLookupCombo3.KeyValue := RxDBLookupCombo4.KeyValue;
      CurrencyEdit3.AsInteger   := RxDBLookupCombo4.KeyValue;
    end
  else
    begin
      RxDBLookupCombo3.ClearValue;
      CurrencyEdit3.Clear;
    end;
end;

procedure TfOrcamentoItens.RxDBLookupCombo3Change(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    begin
      RxDBLookupCombo4.KeyValue := RxDBLookupCombo3.KeyValue;
      CurrencyEdit3.AsInteger   := RxDBLookupCombo3.KeyValue;
    end
  else
    begin
      RxDBLookupCombo4.ClearValue;
      CurrencyEdit3.Clear;
    end;
end;

end.
