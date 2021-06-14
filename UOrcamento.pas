unit UOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ComCtrls,
  Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, Menus, RXCtrls,
  DBFilter, ALed;

type
  TfOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBDateEdit1: TDBDateEdit;
    RxSpeedButton2: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    Edit2: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText14: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    RxDBFilter3: TRxDBFilter;
    Label5: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label33: TLabel;
    ALed2: TALed;
    ALed1: TALed;
    Label12: TLabel;
    BitBtn10: TBitBtn;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    StaticText11: TStaticText;
    tAuxOrcamentoGrade: TTable;
    dsAuxOrcamentoGrade: TDataSource;
    tAuxOrcamentoGradeNumOrcamento: TIntegerField;
    tAuxOrcamentoGradeCodGrade: TIntegerField;
    tAuxOrcamentoGradePosicao: TIntegerField;
    tAuxOrcamentoGradeQtd: TFloatField;
    tAuxOrcamentoGradeVlrUnitario: TFloatField;
    tAuxOrcamentoGradeVlrTotal: TFloatField;
    tAuxOrcamentoGradeTamanho: TStringField;
    Label10: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label28: TLabel;
    Label42: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label14: TLabel;
    Label20: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBGrid1: TRxDBGrid;
    BitBtn14: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    RxDBFilter1: TRxDBFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RxDBLookupCombo1Click(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure tAuxOrcamentoGradeBeforePost(DataSet: TDataSet);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    procedure Habilita;
    procedure TipoAprovacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrcamento: TfOrcamento;
  vTotalPesoTr : Real;
  Obs   : Array [1..6] of String[126];
  vEdit: String[1];  // N = Inserção do pedido
                     // S = Alteracao do pedido
                     // C = Consulta dos pares da grade da referencia
  T, vCodFornecedor, vItemOrcAux : Integer;
  vCorOrc : Integer;
  vAprovado : String;

implementation

uses UDM1, UDM2, UCondPgto, UMaterial, Printers, UCliente,
  UConsOrcamento, URelOrcamentoMail, UVendedor, UAprovaOrc, UOrcamentoGrade,
  UConsPedido, UTabPreco, UProduto, UOrcamentoItens, UEscFilial, ComObj;


{$R *.DFM}

procedure TfOrcamento.Habilita;
begin
  Panel2.Enabled           := not(Panel2.Enabled);
  Panel4.Enabled           := not(Panel4.Enabled);
  BitBtn1.Enabled          := not(BitBtn1.Enabled);
  BitBtn2.Enabled          := not(BitBtn2.Enabled);
  BitBtn3.Enabled          := not(BitBtn3.Enabled);
  BitBtn4.Enabled          := not(BitBtn4.Enabled);
  BitBtn5.Enabled          := not(BitBtn5.Enabled);
  BitBtn6.Enabled          := not(BitBtn6.Enabled);
  BitBtn10.Enabled         := not(BitBtn10.Enabled);
  RxSpeedButton2.Enabled   := not(RxSpeedButton2.Enabled);
  DBNavigator1.Enabled     := not(DBNavigator1.Enabled);
  DBMemo1.ReadOnly         := not(DBMemo1.ReadOnly);
end;

procedure TfOrcamento.TipoAprovacao;
begin
  StaticText11.Caption := '';
  if DM1.tOrcamentoAprovado.AsString = 'A' then
    StaticText11.Caption := 'APROVADO'
  else
  if DM1.tOrcamentoAprovado.AsString = 'N' then
    StaticText11.Caption := 'NÃO APROVADO'
  else
  if DM1.tOrcamentoAprovado.AsString = 'P' then
    StaticText11.Caption := 'PENDENTE'
  else
  if DM1.tOrcamentoAprovado.AsString = 'L' then
    StaticText11.Caption := 'APROVADO PARCIAL';
end;

procedure TfOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tCidade.Close;
  DM1.tCor.Close;
  DM1.tOrcamento.Close;
  DM1.tOrcamentoItens.Close;
  DM1.tOrcamentoGrade.Close;
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoTam.Close;
  DM1.tVendedor.Close;
  DM1.tVendedor2.Close;
  DM1.tTabPreco.Close;

  Action := Cafree;
end;

procedure TfOrcamento.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrcamento.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  BitBtn2.Tag := 0;
  if DM1.tUsuarioInsOrcamento.AsBoolean then
    begin
      fEscFilial := TfEscFilial.Create(Self);
      fEscFilial.ShowModal;
      fOrcamento.Caption := 'Orçamento ' + Dm1.tFilialEmpresa.AsString;

      DM1.tOrcamento.IndexFieldNames  := 'Filial;NumOrcamento';
      DM1.tOrcamento.Refresh;
      DM1.tOrcamento.Last;
      vNumAux := DM1.tOrcamentoNumOrcamento.AsInteger;
                                                     
      DM1.tOrcamento.Insert;
      DM1.tOrcamentoNumOrcamento.AsInteger    := vNumAux + 1;
      DM1.tOrcamentoData.AsDateTime           := Date;
      DM1.tOrcamentoAprovado.AsString         := 'P';
      DM1.tOrcamentoQtdDiasValidade.AsInteger := 10;
      DM1.tOrcamentoPrazoPagto.AsString       := 'À COMBINAR';
      DM1.tOrcamento.Post;
      DM1.tOrcamento.Edit;
      tAuxOrcamentoGrade.First;
      while not tAuxOrcamentoGrade.Eof do
        tAuxOrcamentoGrade.Delete;
      tAuxOrcamentoGrade.Refresh;
      TipoAprovacao;
      vItemOrcAux := 0;
      Habilita;
      DBDateEdit1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfOrcamento.BitBtn2Click(Sender: TObject);
begin
  BitBtn2.Tag := 1;
  DM1.tOrcamento.IndexFieldNames := 'Filial;NumOrcamento';
  vItemOrcAux := 0;
  if DM1.tUsuarioAltOrcamento.AsBoolean then
    begin
      DM1.tOrcamento.Edit;
      Habilita;
      DBDateEdit1.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfOrcamento.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    begin
      DM1.tOrcamentoItens.First;
      while not DM1.tOrcamentoItens.Eof do
        begin
          DM1.tOrcamentoGrade.First;
          while not DM1.tOrcamentoGrade.Eof do
            DM1.tOrcamentoGrade.Delete;
          DM1.tOrcamentoItens.Delete;
        end;
      DM1.tOrcamento.Delete;
    end
  else
    DM1.tOrcamento.Cancel;
  tAuxOrcamentoGrade.First;
  while not tAuxOrcamentoGrade.Eof do
    tAuxOrcamentoGrade.Delete;
  tAuxOrcamentoGrade.Refresh;
  TipoAprovacao;
  Habilita;
  BitBtn2.Tag := 0;
end;

procedure TfOrcamento.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  if DM1.tUsuarioExcOrcamento.AsBoolean then
    begin
      vExcluir := True;
      if DM1.tOrcamentoAprovado.AsString <> 'P' then
        vExcluir := False;
      RxDBFilter1.Active := True;
      if DM1.tOrcamentoItens.RecordCount > 0 then
        vExcluir := False;
      RxDBFilter1.Active := False;
      if vExcluir then
        begin
          if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
            begin
              DM1.tOrcamentoItens.First;
              while not DM1.tOrcamentoItens.Eof do
                begin
                  DM1.tOrcamentoGrade.First;
                  while not DM1.tOrcamentoGrade.Eof do
                    DM1.tOrcamentoGrade.Delete;
                  DM1.tOrcamentoItens.Delete;
                end;
              DM1.tOrcamento.Delete;
              DM1.tOrcamento.Refresh;
              TipoAprovacao;
            end
        end
      else
        ShowMessage('Orçamento já foi aprovado ou copiado para o pedido!');
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfOrcamento.BitBtn5Click(Sender: TObject);
begin
  BitBtn2.Tag := 0;
  if DM1.tOrcamento.State in [dsEdit,dsInsert] then
    begin
      DM1.tOrcamentoVlrTotal.AsFloat := 0;
      DM1.tOrcamentoItens.First;
      while not DM1.tOrcamentoItens.Eof do
        begin
          DM1.tOrcamentoVlrTotal.AsFloat := DM1.tOrcamentoVlrTotal.AsFloat + DM1.tOrcamentoItensVlrTotal.AsFloat;
          DM1.tOrcamentoItens.Next;
        end;
      DM1.tOrcamento.Post;
      tAuxOrcamentoGrade.First;
      while not tAuxOrcamentoGrade.Eof do
        tAuxOrcamentoGrade.Delete;
      DM1.tOrcamentoItens.Refresh;
      DM1.tOrcamento.Refresh;
      TipoAprovacao;
      Habilita;
      BitBtn1.SetFocus;
    end;
end;

procedure TfOrcamento.DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  DM1.tOrcamento.IndexFieldNames := 'Filial;NumOrcamento';
end;

procedure TfOrcamento.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tOrcamento.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o orçamento antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfOrcamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) and (Dm1.tOrcamento.State in [dsBrowse]) then
    begin
      fConsOrcamento := TfConsOrcamento.Create(Self);
      fConsOrcamento.ShowModal;
      TipoAprovacao;
    end;
  if (Key = Vk_F4)  then
    begin
      if DM1.tUsuarioTabPreco.AsBoolean then
        begin
          fTabPreco := TfTabPreco.Create(Self);
          fTabPreco.ShowModal;
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a usar a tabela de preço!');
    end;
end;

procedure TfOrcamento.Imprimir1Click(Sender: TObject);
var
  NumOrc : integer;
begin
  NumOrc := DM1.tOrcamentoNumOrcamento.AsInteger;

  Dm1.tCliente.Filtered := False;
  Dm1.tCliente.Filter   := 'Codigo = '''+IntToStr(Dm1.tOrcamentoCodCliente.AsInteger)+'''';
  Dm1.tCliente.Filtered := True;

  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.Filter   := 'NumOrcamento = '''+IntToStr(NumOrc)+'''';
  DM1.tOrcamento.Filtered := True;

  fRelOrcamentoMail := TfRelOrcamentoMail.Create(Self);
  fRelOrcamentoMail.RLReport1.Print;
  fRelOrcamentoMail.RLReport1.Free;

  Dm1.tCliente.Filtered := False;
  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.FindKey([NumOrc]);
{var
  NumOrd : integer;
begin
  NumOrd := DM1.tOrcamentoNumOrcamento.AsInteger;
  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.Filter   := 'Codigo = '''+IntToStr(NumOrd)+'''';
  DM1.tOrcamento.Filtered := True;
  fRelOrcamento := tfRelOrcamento.Create(Self);
  fRelOrcamento.QuickRep1.Print;
  fRelOrcamento.QuickRep1.Free;
  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.FindKey([NumOrd]);}
end;

procedure TfOrcamento.Visualizar1Click(Sender: TObject);
var
  NumOrc : integer;
begin
  NumOrc := DM1.tOrcamentoNumOrcamento.AsInteger;

  Dm1.tCliente.Filtered := False;
  Dm1.tCliente.Filter   := 'Codigo = '''+IntToStr(Dm1.tOrcamentoCodCliente.AsInteger)+'''';
  Dm1.tCliente.Filtered := True;

  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.Filter   := 'NumOrcamento = '''+IntToStr(NumOrc)+'''';
  DM1.tOrcamento.Filtered := True;

  vFormulario := 'Orcamento';
  fRelOrcamentoMail := TfRelOrcamentoMail.Create(Self);
  fRelOrcamentoMail.RLReport1.Preview;
  fRelOrcamentoMail.RLReport1.Free;
  
  Dm1.tCliente.Filtered   := False;
  DM1.tOrcamento.Filtered := False;
  DM1.tOrcamento.Locate('NumOrcamento',NumOrc,[loCaseInsensitive]);

end;

procedure TfOrcamento.FormShow(Sender: TObject);
begin
  DM1.tUF.Open;
  DM1.tCidade.Open;
  DM1.tCor.Open;
  DM1.tOrcamento.Open;
  DM1.tOrcamentoItens.Open;
  DM1.tOrcamentoGrade.Open;
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tVendedor.Open;
  DM1.tVendedor2.Open;
  DM1.tTabPreco.Open;
  DM1.tOrcamento.Refresh;
  DM1.tOrcamentoItens.Refresh;
  TipoAprovacao;
  fOrcamento.Caption := 'Orçamento ' + Dm1.tFilialEmpresa.AsString;
end;

procedure TfOrcamento.Edit2Change(Sender: TObject);
begin
  try
    DM1.tOrcamento.IndexFieldNames := 'Filial;NumOrcamento';
    DM1.tOrcamento.FindKey([Edit2.Text]);
    TipoAprovacao;
  except
    ShowMessage('Digite só números aqui!');
  end;
end;

procedure TfOrcamento.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  TipoAprovacao;
end;

procedure TfOrcamento.RxDBLookupCombo1Click(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo1.Text;
  TipoAprovacao;
end;

procedure TfOrcamento.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tOrcamento.Refresh;
  DM1.tOrcamento.IndexFieldNames := 'Filial;NumOrcamento';
  Edit2.Text := RxDBLookupCombo1.Text;
  TipoAprovacao;
end;

procedure TfOrcamento.RxDBLookupCombo1Exit(Sender: TObject);
begin
  Edit2.Text := RxDBLookupCombo1.Text;
  TipoAprovacao;
end;

procedure TfOrcamento.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
      DM1.tCliente.Refresh;
      DM1.tCliente.IndexFieldNames := 'Nome';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Clientes!');
end;

procedure TfOrcamento.RxDBLookupCombo2Enter(Sender: TObject);
begin
  PageControl1.ActivePage      := TabSheet2;
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfOrcamento.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if ((BitBtn2.Tag < 1) and (RxDBLookupCombo2.Text <> '')) or
     ((BitBtn2.Tag = 1) and (DM1.tOrcamentoNomeCliente.AsString = '')) then
    DM1.tOrcamentoNomeCliente.AsString := RxDBLookupCombo2.Text;
  if ((RxDBLookupCombo2.Text <> '') and (BitBtn2.Tag < 1)) or (DM1.tOrcamentoFone.AsString = '') then
    DM1.tOrcamentoFone.AsString := DM1.tClienteTelefone.AsString;
  if ((RxDBLookupCombo2.Text <> '') and (BitBtn2.Tag < 1)) or (DM1.tOrcamentoEMail.AsString = '') then
    DM1.tOrcamentoEMail.AsString := DM1.tClienteEmail.AsString;
  DM1.tOrcamentoCodVendedor.AsInteger    := DM1.tClienteCodVendedor.AsInteger;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfOrcamento.RxDBLookupCombo6Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfOrcamento.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
      DM1.tVendedor.Refresh;
      DM1.tVendedor.IndexFieldNames := 'Nome';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Vendedores!');
end;

procedure TfOrcamento.DBEdit2Enter(Sender: TObject);
begin
  if DM1.tOrcamentoCodCliente.AsInteger > 0 then
    DBEdit2.ReadOnly := True
  else
    DBEdit2.ReadOnly := False;
end;

procedure TfOrcamento.BitBtn10Click(Sender: TObject);
begin
  if DM1.tOrcamentoNumOrcamento.AsInteger > 0 then
    begin
      fAprovaOrc := TfAprovaOrc.Create(Self);
      fAprovaOrc.ShowModal;
      TipoAprovacao;
    end;
end;

procedure TfOrcamento.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tOrcamentoItensCopiado.AsBoolean then
    begin
      Background  := clTeal;
      AFont.Color := clWindowText;
    end
  else
  if DM1.tOrcamentoItensAprovado.AsString = 'A' then
    begin
      Background  := clAqua;
      AFont.Color := clWindowText;
    end
  else
  if DM1.tOrcamentoItensAprovado.AsString = 'N' then
    begin
      Background  := clRed;
      AFont.Color := clWindowText;
    end;
end;

procedure TfOrcamento.tAuxOrcamentoGradeBeforePost(DataSet: TDataSet);
begin
  if tAuxOrcamentoGrade.RecordCount > DM1.tProdutoTam.RecordCount then
    tAuxOrcamentoGrade.Cancel
  else
    begin
      if tAuxOrcamentoGradeVlrUnitario.AsFloat > 0 then
        tAuxOrcamentoGradeVlrTotal.AsFloat := tAuxOrcamentoGradeVlrUnitario.AsFloat * tAuxOrcamentoGradeQtd.AsFloat
      else
        tAuxOrcamentoGradeVlrTotal.AsFloat := 0;
    end;
end;

procedure TfOrcamento.RxDBLookupCombo8Enter(Sender: TObject);
begin
  PageControl1.ActivePage      := TabSheet2;
  DM1.tCliente.IndexFieldNames := 'CgcCpf';
end;

procedure TfOrcamento.RxDBLookupCombo8Exit(Sender: TObject);
begin
  RxDBLookupCombo2.SetFocus;
end;

procedure TfOrcamento.BitBtn14Click(Sender: TObject);
begin
  fOrcamentoItens := TfOrcamentoItens.Create(Self);
  BitBtn14.Tag := 0;
  fOrcamentoItens.ShowModal;
end;

procedure TfOrcamento.BitBtn11Click(Sender: TObject);
begin
  if DM1.tOrcamentoItensCopiado.AsBoolean then
    ShowMessage('este item não pode ser alterado, pois já foi copiado para o pedido!')
  else
  if DM1.tOrcamentoItensItem.AsInteger > 0 then
    begin
      BitBtn14.Tag := 1;
      fOrcamentoItens  := TfOrcamentoItens.Create(Self);
      vItemOrcAux      := DM1.tOrcamentoItensItem.AsInteger;
      vCorOrc          := DM1.tOrcamentoItensCodCor.AsInteger;
      vAprovado        := DM1.tOrcamentoItensAprovado.AsString;
      fOrcamentoItens.Edit1.Text          := DM1.tOrcamentoItensUnidade.AsString;
      fOrcamentoItens.Edit3.Text          := DM1.tOrcamentoItensPrazoEntrega.AsString;
      fOrcamentoItens.CurrencyEdit2.Value := DM1.tOrcamentoItensVlrUnitario.AsFloat;
      fOrcamentoItens.CurrencyEdit4.Value := DM1.tOrcamentoItensPercComissao.AsFloat;
      fOrcamentoItens.CurrencyEdit1.Value := DM1.tOrcamentoItensQtd.AsFloat;
      fOrcamentoItens.CheckBox1.Checked   := Dm1.tOrcamentoItensProdutoNCad.AsBoolean;
      if Dm1.tOrcamentoItensProdutoNCad.AsBoolean then
        fOrcamentoItens.Edit4.Text          := Dm1.tOrcamentoItensNomeProduto.AsString
      else
        begin
          fOrcamentoItens.RxDBLookupCombo4.KeyValue := DM1.tOrcamentoItensCodProduto.AsInteger;
          fOrcamentoItens.RxDBLookupCombo3.KeyValue := DM1.tOrcamentoItensCodProduto.AsInteger;
          fOrcamentoItens.CurrencyEdit3.Value       := DM1.tOrcamentoItensCodProduto.AsInteger;
        end;
      DM1.tOrcamentoVlrTotal.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tOrcamentoVlrTotal.AsFloat - DM1.tOrcamentoItensVlrTotal.AsFloat));
      if DM1.tOrcamentoItensCodGrade.AsInteger > 0 then
        fOrcamentoItens.RxDBLookupCombo1.KeyValue := DM1.tOrcamentoItensCodGrade.AsInteger;
      if DM1.tOrcamentoItensPosicao.AsInteger > 0 then
        fOrcamentoItens.RxDBLookupCombo6.KeyValue := DM1.tOrcamentoItensPosicao.AsInteger;
      if DM1.tOrcamentoItensPosicao.AsInteger > 0 then
        begin
          fOrcamentoItens.RxDBLookupCombo1.Enabled := True;
          fOrcamentoItens.RxDBLookupCombo6.Enabled := True;
        end;
      
      DM1.tOrcamentoGrade.First;
      while not DM1.tOrcamentoGrade.Eof do
        begin
          tAuxOrcamentoGrade.Insert;
          tAuxOrcamentoGradeNumOrcamento.AsInteger := DM1.tOrcamentoItensNumOrcamento.AsInteger;
          tAuxOrcamentoGradeCodGrade.AsInteger     := DM1.tOrcamentoGradeCodGrade.AsInteger;
          tAuxOrcamentoGradePosicao.AsInteger      := DM1.tOrcamentoGradePosicao.AsInteger;
          tAuxOrcamentoGradeQtd.AsFloat            := DM1.tOrcamentoGradeQtd.AsFloat;
          tAuxOrcamentoGradeTamanho.AsString       := DM1.tOrcamentoGradelkTamanho.AsString;
          tAuxOrcamentoGrade.Post;
          DM1.tOrcamentoGrade.Delete;
        end;
      DM1.tOrcamentoItens.Delete;
      DM1.tProduto.Locate('Codigo',fOrcamentoItens.RxDBLookupCombo4.KeyValue,[loCaseInsensitive]);
      fOrcamentoItens.ShowModal;
    end;
end;

procedure TfOrcamento.BitBtn12Click(Sender: TObject);
begin
  if (not DM1.tOrcamentoItens.IsEmpty) then
    begin
      if DM1.tOrcamentoItensCopiado.AsBoolean then
        ShowMessage('Este item não pode ser excluído pois já foi copiado para o pedido!')
      else
      if MessageDlg('Deseja realmente excluir este item ?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tOrcamentoVlrTotal.AsFloat     := StrToFloat(FormatFloat('0.00',DM1.tOrcamentoVlrTotal.AsFloat - DM1.tOrcamentoItensVlrTotal.AsFloat));
          DM1.tOrcamentoGrade.First;
          while not DM1.tOrcamentoGrade.Eof do
            DM1.tOrcamentoGrade.Delete;
          DM1.tOrcamentoItens.Delete;
        end;
    end
  else
    ShowMessage('Não há registro p/ ser excluído, ou item ja entregue!');
end;

end.

