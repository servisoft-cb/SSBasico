unit UOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ComCtrls,
  Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, Menus, RXCtrls,
  DBFilter, Variants, ALed;

type
  TfOrdemCompra = class(TForm)
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    tOrdemCompraIns: TTable;
    tOrdemCompraItemIns: TTable;
    tOrdemCompraInsCodFornecedor: TIntegerField;
    tOrdemCompraInsCodCondPgto: TIntegerField;
    tOrdemCompraInsCodTransp: TIntegerField;
    tOrdemCompraInsDtEmissao: TDateField;
    tOrdemCompraInsObs: TMemoField;
    tOrdemCompraInsVlrTotal: TFloatField;
    tOrdemCompraItemInsItem: TIntegerField;
    tOrdemCompraItemInsCodMaterial: TIntegerField;
    tOrdemCompraItemInsQtd: TFloatField;
    tOrdemCompraItemInsVlrUnitario: TFloatField;
    tOrdemCompraItemInsAliqIPI: TFloatField;
    tOrdemCompraItemInsVlrIPI: TFloatField;
    tOrdemCompraItemInsDtEntrega: TDateField;
    tOrdemCompraInsCodigo: TIntegerField;
    tOrdemCompraItemInsCodigo: TIntegerField;
    tAuxOrdemCompra: TTable;
    tAuxOrdemCompraCodGrade: TIntegerField;
    tAuxOrdemCompraPosicao: TIntegerField;
    tAuxOrdemCompraQtd: TFloatField;
    tAuxOrdemCompraVlrUnitario: TFloatField;
    tAuxOrdemCompraVlrTotal: TFloatField;
    tAuxOrdemCompralkTamanho: TStringField;
    dsAuxOrdemCompra: TDataSource;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    RxDBFilter1: TRxDBFilter;
    tGradeItem: TTable;
    tGradeItemCodGrade: TIntegerField;
    tGradeItemPosicao: TIntegerField;
    tGradeItemTamanho: TStringField;
    StaticText11: TStaticText;
    RxDBGrid1: TRxDBGrid;
    StaticText14: TStaticText;
    tOrdemCompraInsFilial: TIntegerField;
    tOrdemCompraInsEntregue: TBooleanField;
    tOrdemCompraItemInsFilial: TIntegerField;
    tOrdemCompraItemInsCodCor: TIntegerField;
    tOrdemCompraItemInsVlrTotal: TFloatField;
    tOrdemCompraItemInsCodGrade: TIntegerField;
    tOrdemCompraItemInsQtdEntregue: TFloatField;
    tOrdemCompraItemInsQtdRestante: TFloatField;
    tOrdemCompraItemInsUnidade: TStringField;
    tOrdemCompraItemInsTamanho: TStringField;
    RxDBFilter2: TRxDBFilter;
    RxDBFilter3: TRxDBFilter;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit2: TEdit;
    Panel3: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    RxSpeedButton2: TRxSpeedButton;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    GroupBox1: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    StaticText8: TStaticText;
    DateEdit1: TDateEdit;
    StaticText9: TStaticText;
    BitBtn16: TBitBtn;
    StaticText10: TStaticText;
    RxDBLookupCombo6: TRxDBLookupCombo;
    BitBtn10: TBitBtn;
    Panel6: TPanel;
    CurrencyEdit6: TCurrencyEdit;
    StaticText15: TStaticText;
    RxDBLookupCombo7: TRxDBLookupCombo;
    StaticText1: TStaticText;
    RxDBLookupCombo5: TRxDBLookupCombo;
    StaticText2: TStaticText;
    RxDBLookupCombo10: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    GroupBox2: TGroupBox;
    ALed1: TALed;
    Label10: TLabel;
    ALed2: TALed;
    Label11: TLabel;
    ALed3: TALed;
    Label12: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn11: TBitBtn;
    Label9: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton6: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tAuxOrdemCompraBeforeInsert(DataSet: TDataSet);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo1Click(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2DropDown(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo3DropDown(Sender: TObject);
    procedure RxDBLookupCombo3CloseUp(Sender: TObject);
    procedure RxDBLookupCombo4CloseUp(Sender: TObject);
    procedure RxDBLookupCombo4DropDown(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CurrencyEdit6Exit(Sender: TObject);
    procedure CurrencyEdit6KeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure tAuxOrdemCompraBeforePost(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure Panel6Exit(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    vCodProduto: Integer;
    procedure Habilita;
    procedure Move_Itens;
    procedure Grava_Itens(Qtd, Valor: Real);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrdemCompra: TfOrdemCompra;
  Obs: Array [1..6] of String[126];
  T, vCodFornecedor, vItem: Integer;

implementation

uses UGrupos, UDM1, UFornecedores, UGrade, UCondPgto, UTransp, UMaterial, UOrdemCompraCor, Printers, UEscImpressora,
  UBaixaItOC, UConsFornecAtiv, UConsHistMat, UConsOrdemCompra, URelOrdemCompraMail, UProduto, UEscFilial, UConsOCNotas,
  UOrdemCompraCanc, UFuncionario;

{$R *.DFM}

procedure TfOrdemCompra.Grava_Itens(Qtd, Valor: Real);
var
  vVlrIPIAux : Real;
begin
  CurrencyEdit1.Value := Qtd;
  CurrencyEdit2.Value := Valor;
  DM1.tOrdemCompraItem.Refresh;
  tOrdemCompraItemIns.Refresh;
  tOrdemCompraItemIns.Last;
  DM1.tOrdemCompraItem.Insert;
  DM1.tOrdemCompraItemFilial.AsInteger := DM1.tOrdemCompraFilial.AsInteger;
  DM1.tOrdemCompraItemCodigo.AsInteger := DM1.tOrdemCompraCodigo.AsInteger;
  if BitBtn16.Tag = 1 then
    DM1.tOrdemCompraItemItem.AsInteger := vItem
  else
    DM1.tOrdemCompraItemItem.AsInteger := tOrdemCompraItemInsItem.AsInteger + 1;
  DM1.tOrdemCompraItemCodMaterial.AsInteger := RxDBLookupCombo5.KeyValue;
  if RxDBLookupCombo6.Text <> '' then
    DM1.tOrdemCompraItemCodCor.AsInteger := RxDBLookupCombo6.KeyValue
  else
    DM1.tOrdemCompraItemCodCor.AsInteger := 0;
  DM1.tOrdemCompraItemUnidade.AsString   := RxDBLookupCombo10.Value;
  vVlrIPIAux := 0;
  if CurrencyEdit4.Value > 0 then
    vVlrIPIAux := StrToFloat(FormatFloat('0.00',((CurrencyEdit1.Value * CurrencyEdit2.Value) * CurrencyEdit4.Value) / 100));
  DM1.tOrdemCompraItemQtd.AsFloat         := CurrencyEdit1.Value;
  DM1.tOrdemCompraItemQtdRestante.AsFloat := CurrencyEdit1.Value;
  DM1.tOrdemCompraItemQtdEntregue.AsFloat := 0;
  DM1.tOrdemCompraItemVlrUnitario.AsFloat := CurrencyEdit2.Value;
  DM1.tOrdemCompraItemAliqIpi.AsFloat     := CurrencyEdit4.Value;
  DM1.tOrdemCompraItemVlrIpi.AsFloat      := vVlrIPIAux;
  if DateEdit1.Text = '  /  /    ' then
    DM1.tOrdemCompraItemDtEntrega.Clear
  else
    DM1.tOrdemCompraItemDtEntrega.AsDateTime := DateEdit1.Date;
  DM1.tOrdemCompraItemVlrTotal.AsFloat   := (CurrencyEdit2.Value * CurrencyEdit1.Value) + vVlrIPIAux;
  //DM1.tOrdemCompraVlrTotal.AsFloat       := DM1.tOrdemCompraVlrTotal.AsFloat + DM1.tOrdemCompraItemVlrTotal.AsFloat + dm1.tOrdemCompraItemVlrIPI.AsCurrency;
  DM1.tOrdemCompraVlrTotal.AsFloat       := DM1.tOrdemCompraVlrTotal.AsFloat + DM1.tOrdemCompraItemVlrTotal.AsFloat;
  DM1.tOrdemCompraItemCodGrade.AsInteger := 0;
  DM1.tOrdemCompraItemPosicao.AsInteger  := 0;
  DM1.tOrdemCompraItemTamanho.AsString   := '';

  if (DM1.tProdutoLancaGrade.AsBoolean) and (BitBtn16.Tag < 1) then
    begin
      DM1.tOrdemCompraItemCodGrade.AsInteger := tAuxOrdemCompraCodGrade.AsInteger;
      DM1.tOrdemCompraItemPosicao.AsInteger  := tAuxOrdemCompraPosicao.AsInteger;
      DM1.tOrdemCompraItemTamanho.AsString   := tAuxOrdemCompralkTamanho.AsString;
    end;
  if (tAuxOrdemCompra.RecordCount > 0) and not(DM1.tParametrosImpItemNotaPorTam.AsBoolean) and
     not(DM1.tProdutoPrecoGrade.AsBoolean) then
    begin
      tAuxOrdemCompra.First;
      DM1.tOrdemCompraItemCodGrade.AsInteger := tAuxOrdemCompraCodGrade.AsInteger;
      while not tAuxOrdemCompra.Eof do
        begin
          DM1.tOrdemCompraItemGrade.Insert;
          DM1.tOrdemCompraItemGradeCodigo.AsInteger    := DM1.tOrdemCompraCodigo.AsInteger;
          DM1.tOrdemCompraItemGradeItem.AsInteger      := DM1.tOrdemCompraItemItem.AsInteger;
          DM1.tOrdemCompraItemGradeCodGrade.AsInteger  := tAuxOrdemCompraCodGrade.AsInteger;
          DM1.tOrdemCompraItemGradePosicao.AsInteger   := tAuxOrdemCompraPosicao.AsInteger;
          DM1.tOrdemCompraItemGradeQtd.AsFloat         := tAuxOrdemCompraQtd.asFloat;
          DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := tAuxOrdemCompraQtd.asFloat;
          DM1.tOrdemCompraItemGradeQtdEntregue.AsFloat := 0;
          DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat := tAuxOrdemCompraVlrUnitario.asFloat;
          DM1.tOrdemCompraItemGradeVlrTotal.AsFloat    := tAuxOrdemCompraVlrTotal.AsFloat;
          DM1.tOrdemCompraItemGrade.Post;
          tAuxOrdemCompra.Next;
        end;
    end;
  DM1.tOrdemCompraItem.Post;
end;

procedure TfOrdemCompra.Move_Itens;
begin
  CurrencyEdit1.Enabled   := not(DM1.tProdutoLancaGrade.AsBoolean);
  RxDBLookupCombo10.Value := DM1.tProdutoUnidade.AsString;
  if BitBtn16.Tag < 1 then
    begin
      CurrencyEdit2.Enabled := not(DM1.tProdutoPrecoGrade.AsBoolean);
      if not DM1.tProdutoPrecoGrade.AsBoolean then
        CurrencyEdit2.Value := DM1.tProdutoPrecoCusto.AsCurrency;
      CurrencyEdit3.Value := DM1.tProdutoPrecoCusto.AsCurrency;
      CurrencyEdit4.Value := DM1.tProdutoAliqIPI.AsCurrency;
    end;
  if BitBtn16.Tag = 1 then
    begin
      CurrencyEdit2.Enabled := True;
      CurrencyEdit1.Enabled := True;
    end;
end;

procedure TfOrdemCompra.Habilita;
begin
  Panel2.Enabled         := not(Panel2.Enabled);
  Panel4.Enabled         := not(Panel4.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn2.Enabled        := not(BitBtn2.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  RxSpeedButton2.Enabled := not(RxSpeedButton2.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  DBMemo1.ReadOnly       := not(DBMemo1.ReadOnly);
  BitBtn11.Enabled       := not(BitBtn11.Enabled);
end;

procedure TfOrdemCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter2.Active := False;
  RxDBFilter3.Active := False;
  DM1.tOrdemCompra.Filtered  := False;
  Dm1.tFornecedores.Filtered := False;
  RxDBFilter1.Active         := False;
  if Screen.FormCount < 3 then
  begin
    DM1.tOrdemCompraItemGrade.Close;
    DM1.tOrdemCompraItem.Close;
    DM1.tOrdemCompraNotaGrade.Close;
    DM1.tOrdemCompraNota.Close;
    DM1.tOrdemCompraCanc.Close;
    DM1.tOrdemCompra.Close;
    DM1.tFornecedores.Close;
    DM1.tTransp.Close;
    DM1.tCondPgto.Close;
    DM1.tProdutoCor.Close;
    DM1.tProdutoTam.Close;
    DM1.tProdutoGrade.Close;
    DM1.tProduto.Close;
    DM1.tTabPreco.Close;
    DM1.tUnidade.Close;
    DM1.tFuncionario.Close;
  end;
  Action := Cafree;
end;

procedure TfOrdemCompra.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrdemCompra.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
    begin
      RxDBFilter1.Active := False;
      DM1.tFornecedores.Refresh;
      fFornecedores := TfFornecedores.Create(Self);
      fFornecedores.ShowModal;
      RxDBFilter1.Active := True;
      DM1.tFornecedores.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfOrdemCompra.BitBtn1Click(Sender: TObject);
begin
  if (DM1.tEmpresaNivel.AsInteger = 99) or (DM1.tEmpresaNivel.AsInteger = 909) then
  begin
    ShowMessage('Não liberado!');
    exit;
  end;
  BitBtn2.Tag := 0;
  if DM1.tUsuarioInsOrdemCompra.AsBoolean then
    begin
      fEscFilial := TfEscFilial.Create(Self);
      fEscFilial.ShowModal;
      fOrdemCompra.Caption := 'Ordem de Compra ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
      DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
      tOrdemCompraIns.IndexFieldNames  := 'Filial;Codigo';
      DM1.tOrdemCompra.Refresh;
      tOrdemCompraIns.Refresh;
      tOrdemCompraIns.Last;
      DM1.tOrdemCompra.Insert;
      DM1.tOrdemCompraFilial.AsInteger := DM1.tFilialCodigo.AsInteger;
      DM1.tOrdemCompraCodigo.AsInteger := tOrdemCompraInsCodigo.AsInteger + 1;
      DM1.tOrdemCompra.Post;
      DM1.tOrdemCompra.Edit;
      StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
      DM1.tOrdemCompraDtEmissao.AsDateTime := Date();
      BitBtn16.Tag := 0;
      vItem := 0;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfOrdemCompra.BitBtn2Click(Sender: TObject);
begin
  if (DM1.tEmpresaNivel.AsInteger = 99) or (DM1.tEmpresaNivel.AsInteger = 909) then
  begin
    ShowMessage('Não liberado!');
    exit;
  end;
  BitBtn2.Tag  := 1;
  DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
  BitBtn16.Tag := 0;
  vItem        := 0;
  if DM1.tUsuarioAltOrdemCompra.AsBoolean then
    begin
      DM1.tOrdemCompra.Edit;
      Habilita;
      RxDBLookupCombo2.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfOrdemCompra.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tOrdemCompraItem.First;
      while not DM1.tOrdemCompraItem.Eof do
        begin
          DM1.tOrdemCompraItemGrade.First;
          while not DM1.tOrdemCompraItemGrade.Eof do
            DM1.tOrdemCompraItemGrade.Delete;
          DM1.tOrdemCompraCanc.First;
          while not DM1.tOrdemCompraCanc.Eof do
            DM1.tOrdemCompraCanc.Delete;
          DM1.tOrdemCompraItem.Delete;
        end;
//      if MessageDlg('Deseja excluir esta ordem de compra?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
      DM1.tOrdemCompra.Delete;
    end;
  DM1.tOrdemCompra.Cancel;
  Habilita;
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo6.ClearValue;
  RxDBLookupCombo7.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  DateEdit1.Clear;
  BitBtn2.Tag := 0;
end;

procedure TfOrdemCompra.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  if DM1.tUsuarioExcOrdemCompra.AsBoolean then
    begin
      if DM1.tOrdemCompraEntregue.AsBoolean then
        vExcluir := False
      else
        begin
          vExcluir := True;
          DM1.tOrdemCompraItem.First;
          while not DM1.tOrdemCompraItem.Eof do
            begin
              if DM1.tOrdemCompraItemQtdEntregue.AsFloat > 0 then
                begin
                  vExcluir := False;
                  DM1.tOrdemCompraItem.Last;
                end;
              DM1.tOrdemCompraItem.Next;
            end;
        end;
      if vExcluir then
        begin
          if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              DM1.tOrdemCompraItem.First;
              while not DM1.tOrdemCompraItem.Eof do
                begin
                  DM1.tOrdemCompraItemGrade.First;
                  while not DM1.tOrdemCompraItemGrade.Eof do
                    DM1.tOrdemCompraItemGrade.Delete;
                  DM1.tOrdemCompraCanc.First;
                  while not DM1.tOrdemCompraCanc.Eof do
                    DM1.tOrdemCompraCanc.Delete;
                  DM1.tOrdemCompraItem.Delete;
                end;
              DM1.tOrdemCompra.Delete;
              StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
            end
        end
      else
        ShowMessage('Ordem de compra já foi entregue!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfOrdemCompra.BitBtn5Click(Sender: TObject);
var
  vEntregue : Boolean;
begin
  BitBtn2.Tag := 0;
  if DM1.tOrdemCompra.State in [dsEdit,dsInsert] then
    begin
      vEntregue := True;
      DM1.tOrdemCompraItem.First;
      while not DM1.tOrdemCompraItem.Eof do
        begin
          if DM1.tOrdemCompraItemQtdRestante.AsFloat > 0 then
            vEntregue := False;
          DM1.tOrdemCompraItem.Next;
        end;
      DM1.tOrdemCompraEntregue.AsBoolean := vEntregue;
      DM1.tOrdemCompra.Post;
      StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
      Habilita;
      BitBtn1.SetFocus;
    end;
end;

procedure TfOrdemCompra.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
      DM1.tCondPgto.Refresh;
      DM1.tCondPgto2.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cond.pagto.!');
end;

procedure TfOrdemCompra.DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
end;

procedure TfOrdemCompra.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tOrdemCompra.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar a ordem de compra antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfOrdemCompra.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F9) then
    begin
      if DM1.tUsuarioConsFornecAtiv.AsBoolean then
        begin
          fConsFornecAtiv := TfConsFornecAtiv.Create(Self);
          fConsFornecAtiv.ShowModal;
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Consulta de fornecedores!');
    end;
  if (Key = Vk_F8) then
    begin
      fConsHistMat := TfConsHistMat.Create(Self);
      fConsHistMat.ShowModal;
    end;
  if (Key = Vk_F2) then
    begin
      fConsOrdemCompra := TfConsOrdemCompra.Create(Self);
      fConsOrdemCompra.ShowModal;
      fOrdemCompra.Caption := 'Ordem de Compra ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
    end;
  StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
end;

procedure TfOrdemCompra.BitBtn7Click(Sender: TObject);
begin
  if DateEdit1.Date < 1 then
    begin
      ShowMessage('Faltou informar a data de entrega!');
      exit;
    end;

  if RxDBLookupCombo5.Text = '' then
    ShowMessage('Há campos em branco!')
  else
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([RxDBLookupCombo5.KeyValue]);
      if (BitBtn16.Tag < 1) or (BitBtn16.Tag = 2) then
        begin
          if DM1.tProdutoLancaGrade.AsBoolean then
            begin
              if not(DM1.tParametrosImpItemNotaPorTam.AsBoolean) and not(DM1.tProdutoPrecoGrade.AsBoolean) then
                Grava_Itens(CurrencyEdit1.Value,CurrencyEdit2.Value)
              else
                begin
                  tAuxOrdemCompra.First;
                  while not tAuxOrdemCompra.Eof do
                    begin
                      if tAuxOrdemCompraQtd.AsFloat > 0 then
                        begin
                          if DM1.tProdutoPrecoGrade.AsBoolean then
                            Grava_itens(tAuxOrdemCompraQtd.AsFloat,tAuxOrdemCompraVlrUnitario.AsFloat)
                          else
                            Grava_itens(tAuxOrdemCompraQtd.AsFloat,CurrencyEdit2.Value)
                        end;
                      tAuxOrdemCompra.Delete;
                    end;
                end;
            end
          else
            Grava_Itens(CurrencyEdit1.Value,CurrencyEdit2.Value);
        end
      else
        Grava_Itens(CurrencyEdit1.Value,CurrencyEdit2.Value);
      DM1.tOrdemCompraItem.Refresh;
      DM1.tOrdemCompraItemGrade.Refresh;
      tAuxOrdemCompra.First;
      while not tAuxOrdemCompra.Eof do
        tAuxOrdemCompra.Delete;
      // fim da gravação da grade
      BitBtn8Click(Sender);
      BitBtn16.Tag := 0;
      CurrencyEdit6.SetFocus;
    end;
end;

procedure TfOrdemCompra.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo6.ClearValue;
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo10.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit6.Clear;
  DateEdit1.Clear;
  BitBtn16.Tag := 0;
  vItem := 0;
  tAuxOrdemCompra.First;
  while not tAuxOrdemCompra.Eof do
    tAuxOrdemCompra.Delete;
end;

procedure TfOrdemCompra.BitBtn9Click(Sender: TObject);
begin
  if (not DM1.tOrdemCompraItem.IsEmpty) and (DM1.tOrdemCompraItemQtdEntregue.AsFloat <= 0) then
    begin
      if MessageDlg('Deseja realmente excluir este item ?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          {DM1.tOrdemCompraVlrTotal.AsFloat  := DM1.tOrdemCompraVlrTotal.AsFloat -
                                               DM1.tOrdemCompraItemVlrTotal.AsFloat - dm1.tOrdemCompraItemVlrIPI.AsCurrency;}
          DM1.tOrdemCompraVlrTotal.AsFloat  := DM1.tOrdemCompraVlrTotal.AsFloat - DM1.tOrdemCompraItemVlrTotal.AsFloat;
          DM1.tOrdemCompraItemGrade.First;
          while not DM1.tOrdemCompraItemGrade.Eof do
            DM1.tOrdemCompraItemGrade.delete;
          DM1.tOrdemCompraItem.Delete;
        end;
    end
  else
    ShowMessage('Não há registro para ser excluído, ou item ja entregue!');
end;

procedure TfOrdemCompra.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit3.Value := CurrencyEdit2.Value * CurrencyEdit1.Value;
end;

procedure TfOrdemCompra.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
  begin
    fTransp := TfTransp.Create(Self);
    fTransp.ShowModal;
    DM1.tTransp.Refresh;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadora!');
end;

procedure TfOrdemCompra.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioMaterial.AsBoolean then
    begin
      RxDBFilter2.Active := False;
      RxDBFilter3.Active := False;
      DM1.tProduto.Refresh;
      fMaterial := TfMaterial.Create(Self);
      fMaterial.ShowModal;
      DM1.tProduto.Refresh;
      RxDBFilter2.Active := True;
      RxDBFilter3.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Material!');
end;

procedure TfOrdemCompra.tAuxOrdemCompraBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  i2 := 0;
  icount := fOrdemCompra.tAuxOrdemCompra.RecordCount;
  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fOrdemCompraCor.BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfOrdemCompra.Imprimir1Click(Sender: TObject);
var
  NumOrd : integer;
begin
  NumOrd := DM1.tOrdemCompraCodigo.AsInteger;
  Dm1.tFornecedores.Filtered := False;
  Dm1.tFornecedores.Filter   := 'CodForn = '''+IntToStr(Dm1.tOrdemCompraCodFornecedor.AsInteger)+'''';
  Dm1.tFornecedores.Filtered := True;

  DM1.tOrdemCompra.Filtered  := False;
  DM1.tOrdemCompra.Filter    := 'Codigo = '''+IntToStr(NumOrd)+'''';
  DM1.tOrdemCompra.Filtered  := True;

  fRelOrdemCompraMail := TfRelOrdemCompraMail.Create(Self);
  fRelOrdemCompraMail.RLReport1.Preview;
  fRelOrdemCompraMail.RLReport1.Free;
  FreeAndNil(fRelOrdemCompraMail);
  DM1.tOrdemCompra.Filtered  := False;
  Dm1.tFornecedores.Filtered := False;
  DM1.tOrdemCompra.Locate('Filial;Codigo',VarArrayOf([DM1.tFilialCodigo.AsInteger,NumOrd]),[loCaseInsensitive]);
end;

procedure TfOrdemCompra.Visualizar1Click(Sender: TObject);
var
  NumOrd : integer;
begin
  NumOrd := DM1.tOrdemCompraCodigo.AsInteger;
  Dm1.tFornecedores.Filtered := False;
  Dm1.tFornecedores.Filter   := 'CodForn = '''+IntToStr(Dm1.tOrdemCompraCodFornecedor.AsInteger)+'''';
  Dm1.tFornecedores.Filtered := True;

  DM1.tOrdemCompra.Filtered  := False;
  DM1.tOrdemCompra.Filter    := 'Codigo = '''+IntToStr(NumOrd)+'''';
  DM1.tOrdemCompra.Filtered  := True;

  vFormulario := 'OC';
  fRelOrdemCompraMail := TfRelOrdemCompraMail.Create(Self);
  fRelOrdemCompraMail.RLReport1.Preview;
  fRelOrdemCompraMail.RLReport1.Free;
  FreeAndNil(fRelOrdemCompraMail);
  DM1.tOrdemCompra.Filtered  := False;
  Dm1.tFornecedores.Filtered := False;
  DM1.tOrdemCompra.Locate('Filial;Codigo',VarArrayOf([DM1.tFilialCodigo.AsInteger,NumOrd]),[loCaseInsensitive]);
end;

procedure TfOrdemCompra.FormShow(Sender: TObject);
begin
  DM1.tOrdemCompra.Open;
  DM1.tOrdemCompraItem.Open;
  DM1.tOrdemCompraItemGrade.Open;
  DM1.tOrdemCompraNota.Open;
  DM1.tOrdemCompraNotaGrade.Open;
  DM1.tOrdemCompraCanc.Open;
  DM1.tFornecedores.Open;
  DM1.tTransp.Open;
  DM1.tCondPgto.Open;
  DM1.tCondPgto2.Open;
  DM1.tFuncionario.Open;
  DM1.tFuncionario2.Open;

  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tTabPreco.Open;
  DM1.tUnidade.Open;

  fOrdemCompra.Caption := 'Ordem de Compra ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
  DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
  DM1.tOrdemCompra.Refresh;
  DM1.tOrdemCompraItem.Refresh;
  DM1.tOrdemCompraItemGrade.Refresh;
  DM1.tOrdemCompra.Last;
  RxDBFilter1.Active := True;
  fOrdemCompra.Refresh;
  StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
  RxDBFilter3.Active := True;
end;

procedure TfOrdemCompra.PopupMenu1Popup(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : PopupMenu1.Items.Items[1].Enabled := False;
    1 : PopupMenu1.Items.Items[1].Enabled := True;
  end;
end;

procedure TfOrdemCompra.Edit2Change(Sender: TObject);
begin
  try
    DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
    DM1.tOrdemCompra.FindKey([DM1.tFilialCodigo.AsString,Edit2.Text]);
    StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
  except
    ShowMessage('Digite só números aqui!');
  end;
end;

procedure TfOrdemCompra.BitBtn16Click(Sender: TObject);
begin
  if (not DM1.tOrdemCompraItem.IsEmpty) and (DM1.tOrdemCompraItemQtdEntregue.AsFloat <= 0) then
    begin
      if RxDBLookupCombo5.Text = '' then
        begin
          vItem := 0;
          if BitBtn16.Tag <> 2 then
            begin
              BitBtn16.Tag := 1;
              vItem        := DM1.tOrdemCompraItemItem.AsInteger;
            end;
          if DM1.tOrdemCompraItemCodMaterial.AsInteger > 0 then
            begin
              RxDBLookupCombo7.KeyValue := DM1.tOrdemCompraItemCodMaterial.AsInteger;
              RxDBLookupCombo5.KeyValue := DM1.tOrdemCompraItemCodMaterial.AsInteger;
            end;
          if DM1.tOrdemCompraItemCodCor.AsInteger > 0 then
            RxDBLookupCombo6.KeyValue := DM1.tOrdemCompraItemCodCor.AsInteger;
          CurrencyEdit6.Value         := DM1.tOrdemCompraItemCodMaterial.AsInteger;
          CurrencyEdit1.Value         := DM1.tOrdemCompraItemQtd.AsFloat;
          RxDBLookupCombo10.Value     := DM1.tOrdemCompraItemUnidade.AsString;
          CurrencyEdit2.Value         := DM1.tOrdemCompraItemVlrUnitario.AsFloat;
          CurrencyEdit4.Value         := DM1.tOrdemCompraItemAliqIPI.AsFloat;
          DateEdit1.Date              := DM1.tOrdemCompraItemDtEntrega.AsDateTime;
          CurrencyEdit3.Value         := DM1.tOrdemCompraItemVlrTotal.AsFloat;
          tAuxOrdemCompra.First;
          while not tAuxOrdemCompra.EOF do
            tAuxOrdemCompra.Delete;
          tAuxOrdemCompra.Refresh;
          if DM1.tOrdemCompraItemCodGrade.AsInteger > 0 then
            begin
              DM1.tGrade.IndexFieldNames := 'Codigo';
              DM1.tGrade.FindKey([DM1.tOrdemCompraItemCodGrade.AsInteger]);
            end;
          DM1.tOrdemCompraItemGrade.First;
          while not DM1.tOrdemCompraItemGrade.EOF do
            begin
              tAuxOrdemCompra.Insert;
              tAuxOrdemCompraCodGrade.AsInteger  := DM1.tOrdemCompraItemGradeCodGrade.AsInteger;
              tAuxOrdemCompraPosicao.AsInteger   := DM1.tOrdemCompraItemGradePosicao.AsInteger;
              tAuxOrdemCompraQtd.asFloat         := DM1.tOrdemCompraItemGradeQtd.AsFloat;
              tAuxOrdemCompraVlrUnitario.asFloat := DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat;
              tAuxOrdemCompraVlrTotal.asFloat    := DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat * DM1.tOrdemCompraItemGradeQtd.AsFloat;
              tAuxOrdemCompra.Post;
              if BitBtn16.Tag = 2 then
                DM1.tOrdemCompraItemGrade.Next
              else
                DM1.tOrdemCompraItemGrade.Delete;
            end;
          if BitBtn16.Tag <> 2 then
            begin
              //DM1.tOrdemCompraVlrTotal.AsFloat := DM1.tOrdemCompraVlrTotal.AsFloat - DM1.tOrdemCompraItemVlrTotal.AsFloat - dm1.tOrdemCompraItemVlrIPI.AsCurrency;
              DM1.tOrdemCompraVlrTotal.AsFloat := DM1.tOrdemCompraVlrTotal.AsFloat - DM1.tOrdemCompraItemVlrTotal.AsFloat;
              DM1.tOrdemCompraItem.Delete;
            end;
          CurrencyEdit6.SetFocus;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end
  else
    ShowMessage('Não há registro para ser alterado, ou item já entregue!');
end;

procedure TfOrdemCompra.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
end;

procedure TfOrdemCompra.RxDBGrid1DblClick(Sender: TObject);
begin
  if DM1.tOrdemCompra.State in [dsBrowse] then
    begin
      fBaixaItOC := TfBaixaItOC.Create(Self);
      fBaixaItOC.ShowModal;
      StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
    end;
end;

procedure TfOrdemCompra.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not (DM1.tOrdemCompraItemQtdRestante.AsFloat > 0) then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
  if (DM1.tOrdemCompraItemQtdRestante.AsFloat > 0) and (DM1.tOrdemCompraItemQtdEntregue.AsFloat > 0) then
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
  if DM1.tOrdemCompraItemQtdRestante.AsFloat = DM1.tOrdemCompraItemQtd.AsFloat then
    begin
      Background  := clWhite;
      AFont.Color := clBlack;
    end;
end;

procedure TfOrdemCompra.RxDBLookupCombo1Click(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo1.Text;
  StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
end;

procedure TfOrdemCompra.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tOrdemCompra.Refresh;
  DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
  Edit2.Text := RxDBLookupCombo1.Text;
  StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
end;

procedure TfOrdemCompra.RxDBLookupCombo1Exit(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo1.Text;
  StaticText11.Visible := DM1.tOrdemCompraEntregue.AsBoolean;
end;

procedure TfOrdemCompra.RxDBLookupCombo2DropDown(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfOrdemCompra.RxDBLookupCombo2Enter(Sender: TObject);
begin
  vCodFornecedor := DM1.tOrdemCompraCodFornecedor.AsInteger;
end;

procedure TfOrdemCompra.RxDBLookupCombo3Exit(Sender: TObject);
begin
//Foi tirado as parcelas conferme solicitado pela Jurani
{  if RxDBLookupCombo3.Text <> '' then
     if DM1.tCondPgtoPrazoVista.AsString = 'P' then
       GroupBox2.Visible := True
     else
       GroupBox2.Visible := False;}
end;

procedure TfOrdemCompra.RxDBLookupCombo3DropDown(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfOrdemCompra.RxDBLookupCombo3CloseUp(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Codigo';
end;

procedure TfOrdemCompra.RxDBLookupCombo4CloseUp(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Codigo';
end;

procedure TfOrdemCompra.RxDBLookupCombo4DropDown(Sender: TObject);
begin
  DM1.tTransp.IndexFieldNames := 'Nome';
end;

procedure TfOrdemCompra.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfOrdemCompra.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfOrdemCompra.RxDBLookupCombo6Enter(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoCor.RecordCount < 1 then
            RxDBLookupCombo6.ClearValue;
        end
      else
        RxDBLookupCombo7.SetFocus;
    end
  else
    RxDBLookupCombo7.SetFocus;
end;

procedure TfOrdemCompra.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if (RxDBLookupCombo6.Text <> '') and (BitBtn16.Tag < 1) then
    if (DM1.tProdutoLancaCor.AsBoolean) then
      CurrencyEdit2.Value := DM1.tProdutoCorPrCusto.AsFloat
end;

procedure TfOrdemCompra.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      RxDBFilter2.Active := False;
      RxDBFilter3.Active := False;
      DM1.tProduto.Refresh;
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      DM1.tProduto.Refresh;
      RxDBFilter2.Active := True;
      RxDBFilter3.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Material!');
end;

procedure TfOrdemCompra.CurrencyEdit6Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit6.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit6.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo7.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo5.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit6.SetFocus;
          CurrencyEdit6.Clear;
        end;
    end;
end;

procedure TfOrdemCompra.CurrencyEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit6.AsInteger > 0 then
        RxDBLookupCombo5.SetFocus
      else
        RxDBLookupCombo7.SetFocus;
    end;
end;

procedure TfOrdemCompra.BitBtn10Click(Sender: TObject);
begin
  if (BitBtn16.Tag < 1) or not(DM1.tProdutoPrecoGrade.AsBoolean) then
    begin
      if DM1.tProdutoLancaGrade.AsBoolean then
        begin
          if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo6.Text = '') then
            begin
              ShowMessage('Falta informar a cor!');
              RxDBLookupCombo6.SetFocus;
            end
          else
            begin
              fOrdemCompraCor := tfOrdemCompraCor.Create(Self);
              fOrdemCompraCor.ShowModal;
              if DM1.tProdutoPrecoGrade.AsBoolean then
                begin
                  CurrencyEdit3.Clear;
                  tAuxOrdemCompra.First;
                  while not tAuxOrdemCompra.Eof do
                    begin
                      CurrencyEdit3.Value := CurrencyEdit3.Value + tAuxOrdemCompraVlrTotal.AsFloat;
                      tAuxOrdemCompra.Next;
                    end;
                end;
            end;
        end;
    end
  else
    ShowMessage('Este produto não tem grade!');
end;

procedure TfOrdemCompra.tAuxOrdemCompraBeforePost(DataSet: TDataSet);
begin
  tAuxOrdemCompraVlrTotal.AsFloat := tAuxOrdemCompraVlrUnitario.AsFloat * tAuxOrdemCompraQtd.AsFloat;
end;

procedure TfOrdemCompra.BitBtn11Click(Sender: TObject);
begin
  fConsOCNotas := TfConsOCNotas.Create(Self);
  fConsOCNotas.ShowModal;
end;

procedure TfOrdemCompra.Panel6Exit(Sender: TObject);
begin
  if vCodProduto <> CurrencyEdit6.AsInteger then
    begin
      RxDBLookupCombo6.ClearValue;
      tAuxOrdemCompra.First;
      while not tAuxOrdemCompra.Eof do
        tAuxOrdemCompra.Delete;
    end;
  if RxDBLookupCombo7.Text <> '' then
    Move_itens;
end;

procedure TfOrdemCompra.RxDBLookupCombo7Change(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      RxDBLookupCombo5.KeyValue := RxDBLookupCombo7.KeyValue;
      CurrencyEdit6.AsInteger   := RxDBLookupCombo7.KeyValue;
    end;
end;

procedure TfOrdemCompra.RxDBLookupCombo5Change(Sender: TObject);
begin
  if RxDBLookupCombo5.Text <> '' then
    begin
      RxDBLookupCombo7.KeyValue := RxDBLookupCombo5.KeyValue;
      CurrencyEdit6.AsInteger   := RxDBLookupCombo5.KeyValue;
    end;
end;

procedure TfOrdemCompra.Panel6Enter(Sender: TObject);
begin
  vCodProduto := CurrencyEdit6.AsInteger;
end;

procedure TfOrdemCompra.BitBtn12Click(Sender: TObject);
begin
  if DM1.tOrdemCompraItemItem.AsInteger > 0 then
    begin
      fOrdemCompraCanc := TfOrdemCompraCanc.Create(Self);
      fOrdemCompraCanc.ShowModal;
    end;
end;

procedure TfOrdemCompra.BitBtn13Click(Sender: TObject);
begin
  if DM1.tOrdemCompraItemCodMaterial.AsInteger > 0 then
    begin
      if MessageDlg('Copiar o material ' + DM1.tOrdemCompraItemlkNomeMaterial.AsString + '?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          BitBtn16.Tag := 2;
          BitBtn16Click(Sender);
          DateEdit1.Clear;
          DateEdit1.SetFocus;
        end;
    end;
end;

procedure TfOrdemCompra.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if DM1.tOrdemCompraCodFornecedor.AsInteger <> vCodFornecedor then
    begin
      DM1.tOrdemCompraCodCondPgto.AsString := DM1.tFornecedoresCodCondPgto.AsString;
      DM1.tOrdemCompraCodTransp.AsInteger  := DM1.tFornecedoresCodTransportadora.AsInteger;
    end;
end;

procedure TfOrdemCompra.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tFuncionario.IndexFieldNames := 'Nome';
end;

procedure TfOrdemCompra.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioFuncionario.AsBoolean then
  begin
    fFuncionario := TfFuncionario.Create(Self);
    fFuncionario.ShowModal;
    DM1.tFuncionario.Refresh;
    DM1.tFuncionario.IndexFieldNames := 'Nome';
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

end.
