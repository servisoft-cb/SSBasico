unit UDctoEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, RXDBCtrl, CurrEdit,
  RxLookup, RXCtrls, Grids, DBGrids, Db, DBTables, MemTable, DBFilter,
  DBClient, RzDBCmbo;

type
  TfDctoEst = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn6: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    SpeedButton5: TSpeedButton;
    RxLabel3: TRxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxDBGrid1: TRxDBGrid;
    RxLabel7: TRxLabel;
    Label4: TLabel;
    DBText2: TDBText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    BitBtn7: TBitBtn;
    CurrencyEdit2: TCurrencyEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dsAuxDctoGrade: TDataSource;
    SpeedButton4: TSpeedButton;
    BitBtn10: TBitBtn;
    qCor: TQuery;
    qCorCodCor: TIntegerField;
    qCorNome: TStringField;
    dsqCor: TDataSource;
    Panel5: TPanel;
    CurrencyEdit3: TCurrencyEdit;
    RxLabel6: TRxLabel;
    RxLabel1: TRxLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxLabel2: TRxLabel;
    RxDBFilter1: TRxDBFilter;
    RxDBLookupCombo15: TRxDBLookupCombo;
    tAuxDctoGrade: TClientDataSet;
    tAuxDctoGradeCodGrade: TIntegerField;
    tAuxDctoGradePosicao: TIntegerField;
    tAuxDctoGradeQtd: TIntegerField;
    tAuxDctoGradeTamanho: TStringField;
    tAuxDctoGradeLargura: TStringField;
    tAuxDctoGradeVlrUnitario: TIntegerField;
    tAuxDctoGradeVlrTotal: TIntegerField;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel6: TPanel;
    SpeedButton6: TSpeedButton;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBRadioGroup1Enter(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure RxDBLookupCombo7Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure tAuxDctoGradeBeforeInsert(DataSet: TDataSet);
    procedure tAuxDctoGradeBeforePost(DataSet: TDataSet);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RzDBLookupComboBox1DropDown(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure RzDBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    vNumMovEst : Integer;
    vCodCor : Integer;
    vCodProduto : Integer;
    procedure Habilita;
    procedure Verifica_Total;
    procedure Limpa_Edit;
    procedure Move_Itens;
    procedure Grava_Estoque(Tamanho : String);
    procedure Ajusta_Estoque;
  public
    { Public declarations }
  end;

var
  fDctoEst: TfDctoEst;
  vItem : Integer;

implementation

uses UDM1, UDM2, UDctoGrade, UConsEstoqueMat, UConsDcto, UCor, UMaterial,
  UProduto, UEscFilial, UFornecedores, uIntegracao;

{$R *.DFM}

procedure TfDctoEst.Ajusta_Estoque;
var
  vFilialAux, vNumMovAux : Integer;
begin
  DM1.tEstoqueMatMov.Filtered := False;
  DM1.tEstoqueMatMov.Filter   := 'NumNota = '''+DM1.tDctoEstNumDcto.AsString+''' and TipoMov = '''+'DOC'+''' and Filial = '''+Dm1.tDctoEstFilial.AsString+'''';
  DM1.tEstoqueMatMov.Filtered := True;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
  begin
    vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
    vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

    DM1.tEstoqueMatMov.Delete;

    //02/05/2012
    if DM1.tParametrosUsaFB.AsBoolean then
      Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);
  end;
  DM1.tEstoqueMatMov.Filtered := False;
end;

procedure TfDctoEst.Grava_Estoque(Tamanho : String);
begin
  if vNumMovEst > 0 then
    begin
      DM1.tEstoqueMatMov.Refresh;
      DM1.tEstoqueMatMov.SetKey;
      Dm1.tEstoqueMatMovFilial.AsInteger := Dm1.tDctoEstItemFilial.AsInteger;
      DM1.tEstoqueMatMovNumMov.AsInteger := vNumMovEst;
      if DM1.tEstoqueMatMov.GotoKey then
        begin
          DM2.tEstoqueMatMov2.Refresh;
          DM2.tEstoqueMatMov2.Last;
          vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
        end;
    end
  else
    begin
      DM1.tEstoqueMatMov.Refresh;
      DM2.tEstoqueMatMov2.Refresh;
      DM2.tEstoqueMatMov2.Last;
      vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
    end;
  DM1.tEstoqueMatMov.Insert;
  Dm1.tEstoqueMatMovFilial.AsInteger      := Dm1.tDctoEstFilial.AsInteger;
  DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tDctoEstCodFornecedor.AsInteger;
  DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tDctoEstItemCodMaterial.AsInteger;
  DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tDctoEstItemCodCor.AsInteger;
  DM1.tEstoqueMatMovLargura.AsString      := DM1.tDctoEstItemlkLargura.AsString;
  DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tDctoEstData.AsDateTime;
  DM1.tEstoqueMatMovES.AsString           := DM1.tDctoEstTipo.AsString;
  DM1.tEstoqueMatMovTipoMov.AsString      := 'DOC';
  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tDctoEstNumDcto.AsInteger;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := 0;
  DM1.tEstoqueMatMovTamanho.AsString      := Tamanho;
  if (Tamanho = '') or (DM1.tDctoEstItemVlrUnit.AsFloat > 0) then
    DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tDctoEstItemVlrUnit.AsFloat
  else
    DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tDctoEstGradeVlrUnitario.AsFloat;
  if Tamanho = '' then
    DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstItemQtd.AsFloat))
  else
    DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstGradeQtd.AsFloat));

  if DM1.tEstoqueMatMovES.AsString = 'E' then
    DM1.tEstoqueMatMovQtd2.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tEstoqueMatMovQtd.AsFloat))
  else
    DM1.tEstoqueMatMovQtd2.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tEstoqueMatMovQtd.AsFloat * -1));
  DM1.tEstoqueMatMovUnidade.AsString      := DM1.tDctoEstItemUnidade.AsString;
  DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tProdutoAliqIcms.AsFloat;
  DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tProdutoAliqIPI.AsFloat;
  DM1.tEstoqueMatMovVlrDesconto.AsFloat   := 0;
  if (DM1.tProdutoAliqIcms.AsFloat > 0) and (DM1.tProdutoCodSitTrib.AsInteger > 0) then
    DM1.tEstoqueMatMovPercTributacao.AsFloat := DM1.tProdutolkSitTributaria.AsFloat
  else
    DM1.tEstoqueMatMovPercTributacao.AsFloat := 100;
  DM1.tEstoqueMatMov.Post;
  //02/05/2012
  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Gravar_Estoque_Mov_FB(dm1.tEstoqueMatMovFilial.AsInteger,dm1.tEstoqueMatMovNumMov.AsInteger);
end;

procedure TfDctoEst.Move_Itens;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
  if DM1.tProduto.GotoKey then
    begin
      CurrencyEdit3.AsInteger := DM1.tProdutoCodigo.AsInteger;
      CurrencyEdit1.Enabled   := not(DM1.tProdutoLancaGrade.AsBoolean);
      CurrencyEdit2.Enabled   := not(DM1.tProdutoPrecoGrade.AsBoolean);
      BitBtn10.Enabled        := DM1.tProdutoLancaGrade.AsBoolean;
      RxDBLookupCombo15.Value := DM1.tProdutoUnidade.AsString;
      if (not DM1.tProdutoPrecoCor.AsBoolean) and ((SpeedButton1.Tag <> 1) or (CurrencyEdit2.Value = 0)) and (DM1.tProdutoProdMat.AsString = 'M') then
        CurrencyEdit2.Value := DM1.tProdutoPrecoCusto.AsFloat
      else
      if (not DM1.tProdutoPrecoCor.AsBoolean) and ((SpeedButton1.Tag <> 1) or (CurrencyEdit2.Value = 0)) and (DM1.tProdutoProdMat.AsString = 'P') then
        CurrencyEdit2.Value := DM1.tProdutoVlrVenda.AsFloat;
      qCor.Close;
      if DM1.tProdutoLancaCor.AsBoolean then
        begin
          DM1.tProdutoCor.Refresh;
          qCor.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
          qCor.Open;
          RxDBLookupCombo3.ClearValue;
          if (SpeedButton1.Tag = 1) and (vCodCor > 0) then
            RxDBLookupCombo3.KeyValue := vCodCor;
        end;
    end;
end;

procedure TfDctoEst.Habilita;
begin
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  Panel3.Enabled       := not(Panel3.Enabled);
end;

procedure TfDctoEst.Verifica_Total;
begin
  DM1.tDctoEst.Edit;
  DM1.tDctoEstTotal.AsFloat := 0;
  DM1.tDctoEstItem.First;
  while not DM1.tDctoEstItem.Eof do
    begin
      DM1.tDctoEstTotal.AsFloat := DM1.tDctoEstTotal.AsFloat + DM1.tDctoEstItemVlrTotal.AsFloat;
      DM1.tDctoEstItem.Next;
    end;
  DM1.tDctoEst.Post;
end;

procedure TfDctoEst.Limpa_Edit;
begin
  RZDBLookupComboBox1.ClearKeyValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo15.ClearValue;
  CurrencyEdit1.Value := 0;
  CurrencyEdit2.Value := 0;
  CurrencyEdit3.Value := 0;
  tAuxDctoGrade.First;
  while not tAuxDctoGrade.Eof do
    tAuxDctoGrade.Delete;
end;

procedure TfDctoEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tGradeItem.Close;
  DM1.tGrade.Close;
  Dm1.tProdutoCor.Close;
  DM1.tDctoEst.Close;
  DM1.tDctoEstItem.Close;
  DM1.tDctoEstGrade.Close;
  DM1.tEstoqueMatMov.Close;
  DM1.tProduto.Close;
  Dm1.tProdutoCor.Close;
  DM1.tProdutoCli.Close;
  DM1.tProdutoConsumo.Close;
  DM1.tProdutoConsumoItem.Close;
  DM1.tProdutoGrade.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoTam.Close;
  DM1.tProdutoComb.Close;
  DM1.tTabPreco.Close;
  DM1.tCor.Close;
  DM1.tUnidade.Close;

  qCor.Close;
  while not tAuxDctoGrade.Eof do
    tAuxDctoGrade.Delete;
  Action := Cafree;
end;

procedure TfDctoEst.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tDctoEst.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve confirmar ou cancelar antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfDctoEst.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if DM1.tUsuarioInsDctoEst.AsBoolean then
    begin
      fEscFilial := TfEscFilial.Create(Self);
      fEscFilial.ShowModal;
      fDctoEst.Caption := 'Documento de Entrada e Saída do Estoque ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
      DM1.tDctoEst.Refresh;
      DM1.tDctoEst.Last;
      vNumAux := DM1.tDctoEstNumDcto.AsInteger;

      DM1.tDctoEst.Insert;
      Dm1.tDctoEstFilial.AsInteger  := Dm1.tFilialCodigo.AsInteger;
      DM1.tDctoEstNumDcto.AsInteger := vNumAux + 1;
      DM1.tDctoEstData.AsDateTime   := Date;
      DM1.tDctoEstUsuario.AsString  := DM1.tUsuarioUsuario.AsString;
      DM1.tDctoEstTipo.AsString     := 'E';
      DM1.tDctoEst.Post;
      DM1.tDctoEst.Edit;
      Habilita;
      DBDateEdit1.SetFocus;
      SpeedButton1.Tag := 0;
    end
  else
    ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer inserção!');
end;

procedure TfDctoEst.BitBtn2Click(Sender: TObject);
begin
  if not DM1.tDctoEst.IsEmpty then
    begin
      if DM1.tUsuarioAltDctoEst.AsBoolean then
        begin
          DM1.tDctoEst.Edit;
          DM1.tDctoEstItem.First;
          Ajusta_Estoque;
          Habilita;
          DBDateEdit1.SetFocus;
          BitBtn2.Tag      := 1;
          SpeedButton1.Tag := 0;
        end
      else
        ShowMessage('Usuário '+DM1.tUsuarioUsuario.AsString+' não autorizado a fazer alteração!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfDctoEst.BitBtn3Click(Sender: TObject);
begin
  if BitBtn2.Tag = 1 then
    begin
      DM1.tDctoEst.Cancel;
      DM1.tDctoEstItem.First;
      Ajusta_Estoque;
      while not DM1.tDctoEstItem.Eof do
        begin
          //*** Grava o movimento do estoque
          if DM1.tDctoEstGrade.RecordCount > 0 then
            begin
              DM1.tDctoEstGrade.First;
              while not DM1.tDctoEstGrade.Eof do
                begin
                  if DM1.tDctoEstGradeQtd.AsFloat > 0 then
                    begin
                      vNumMovEst := DM1.tDctoEstGradeNumMovEst.AsInteger;
                      Grava_Estoque(DM1.tDctoEstGradelkTamanho.AsString);
                      DM1.tDctoEstGrade.Edit;
                      DM1.tDctoEstGradeNumMovEst.AsInteger := vNumMovEst;
                      DM1.tDctoEstGrade.Post;
                    end;
                  DM1.tDctoEstGrade.Next;
                end;
            end
          else
            begin
              vNumMovEst := DM1.tDctoEstItemNumMovEst.AsInteger;
              Grava_Estoque('');
              DM1.tDctoEstItem.Edit;
              DM1.tDctoEstItemNumMovEst.AsInteger := vNumMovEst;
              DM1.tDctoEstItem.Post;
            end;
          DM1.tDctoEstItem.Next;
        end;
      Verifica_Total;
    end
  else
    begin
      DM1.tDctoEstItem.First;
      while not DM1.tDctoEstItem.Eof do
        begin
          DM1.tDctoEstGrade.First;
          while not DM1.tDctoEstGrade.Eof do
            DM1.tDctoEstGrade.Delete;
          DM1.tDctoEstItem.Delete;
        end;
      DM1.tDctoEst.Delete;
    end;
  Limpa_Edit;  
  Habilita;
  BitBtn2.Tag := 0;
  BitBtn1.SetFocus;
  SpeedButton1.Tag := 0;
end;

procedure TfDctoEst.BitBtn4Click(Sender: TObject);
var
  vFilialAux, vNumMovAux : Integer;
begin
  if not DM1.tDctoEst.IsEmpty then
    begin
      if DM1.tUsuarioExcDctoEst.AsBoolean then
        begin
          if MessageDlg('Deseja realmente excluir este Dcto. de Estoque?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
            begin
              DM1.tDctoEstItem.First;
              while not DM1.tDctoEstItem.Eof do
                begin
                  //*** Apaga o movimento do estoque
                  if DM1.tDctoEstItemCodGrade.AsInteger < 1 then
                    begin
                      DM1.tEstoqueMatMov.SetKey;
                      Dm1.tEstoqueMatMovFilial.AsInteger := Dm1.tDctoEstItemFilial.AsInteger;
                      DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tDctoEstItemNumMovEst.AsInteger;
                      if DM1.tEstoqueMatMov.GotoKey then
                      begin
                        vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
                        vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

                        DM1.tEstoqueMatMov.Delete;

                        //02/05/2012
                        if DM1.tParametrosUsaFB.AsBoolean then
                          Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

                      end;
                    end
                  else
                    begin
                      DM1.tDctoEstGrade.First;
                      while not DM1.tDctoEstGrade.Eof do
                        begin
                          DM1.tEstoqueMatMov.SetKey;
                          Dm1.tEstoqueMatMovFilial.AsInteger := Dm1.tDctoEstGradeFilial.AsInteger;
                          DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tDctoEstGradeNumMovEst.AsInteger;
                          if DM1.tEstoqueMatMov.GotoKey then
                          begin
                            vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
                            vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

                            DM1.tEstoqueMatMov.Delete;

                            //02/05/2012
                            if DM1.tParametrosUsaFB.AsBoolean then
                              Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

                          end;
                          DM1.tDctoEstGrade.Delete;
                        end;
                    end;
                  DM1.tDctoEstItem.Delete;
                end;
              DM1.tDctoEst.Delete;
            end;
        end
      else
        ShowMessage('Usuário '+ DM1.tUsuarioUsuario.AsString + ' não autorizado a fazer exclusão!');
    end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfDctoEst.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfDctoEst.BitBtn6Click(Sender: TObject);
begin
  if (RZDBLookupComboBox1.Text <> '') or (RxDBLookupCombo7.Text <> '') then
    ShowMessage('O Documento possui item que não foi confirmado, primeiro confirmar o item!')
  else
    begin
      Ajusta_Estoque;
      while not tAuxDctoGrade.Eof do
        tAuxDctoGrade.Delete;
      DM1.tDctoEstItem.First;
      while not DM1.tDctoEstItem.Eof do
        begin
          //*** Gravar movimento do estoque
          vNumMovEst := 0;
          DM1.tProduto.IndexFieldNames := 'Codigo';
          DM1.tProduto.FindKey([DM1.tDctoEstItemCodMaterial.AsInteger]);
          if DM1.tDctoEstGrade.RecordCount > 0 then
            begin
              DM1.tDctoEstGrade.First;
              while not DM1.tDctoEstGrade.Eof do
                begin
                  if DM1.tDctoEstGradeQtd.AsFloat > 0 then
                    begin
                      vNumMovEst := DM1.tDctoEstGradeNumMovEst.AsInteger;
                      Grava_Estoque(DM1.tDctoEstGradelkTamanho.AsString);
                      DM1.tDctoEstGrade.Edit;
                      DM1.tDctoEstGradeNumMovEst.AsInteger := vNumMovEst;
                      DM1.tDctoEstGrade.Post;
                    end;
                  DM1.tDctoEstGrade.Next;
                end;
            end
          else
            begin
              vNumMovEst := DM1.tDctoEstItemNumMovEst.AsInteger;
              Grava_Estoque('');
              DM1.tDctoEstItem.Edit;
              DM1.tDctoEstItemNumMovEst.AsInteger := vNumMovEst;
              DM1.tDctoEstItem.Post;
            end;
          DM1.tDctoEstItem.Next;
        end;
      if RxDBLookupCombo1.Text = '' then
        DM1.tDctoEstCodFornecedor.AsInteger := 0;
      DM1.tDctoEst.Post;
      DM1.tDctoEst.Refresh;
      DM1.tDctoEstItem.Refresh;
      DM1.tDctoEstGrade.Refresh;
      DM1.tEstoqueMatMov.Refresh;
      Limpa_Edit;
      Habilita;
      vNumMovEst  := 0;
      BitBtn2.Tag := 0;
      Verifica_Total;
      BitBtn1.SetFocus;
    end;
end;

procedure TfDctoEst.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfDctoEst.BitBtn7Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  if (CurrencyEdit1.Value <= 0) or (RZDBLookupComboBox1.Text = '') or (RxDBLookupCombo15.Value = '') then
    begin
      ShowMessage(' Há campos requeridos em branco, você deve acertar p/gravar' + #13 +
                  '"Quant.", "Material" ou "U.M."!');
      CurrencyEdit3.SetFocus;
    end
  else
    begin
      if not DM1.tProduto.Locate('Codigo',RZDBLookupComboBox1.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Produto não cadastrado!')
      else
      if (DM1.tProdutoCor.RecordCount > 0) and (RxDBLookupCombo3.Text = '') then
        begin
          ShowMessage('Não pode ser confirmado este item s/ "Cor"!');
          RxDBLookupCombo3.SetFocus;
        end
      else
        begin
          DM1.tDctoEstItem.Refresh;
          DM1.tDctoEstItem.Last;
          vNumAux := DM1.tDctoEstItemItem.AsInteger;
          DM1.tDctoEstItem.Insert;
          Dm1.tDctoEstItemFilial.AsInteger  := Dm1.tDctoEstFilial.AsInteger;
          DM1.tDctoEstItemNumDcto.AsInteger := DM1.tDctoEstNumDcto.AsInteger;
          if SpeedButton1.Tag = 1 then
            DM1.tDctoEstItemItem.AsInteger := vItem
          else
            DM1.tDctoEstItemItem.AsInteger := vNumAux + 1;
          DM1.tDctoEstItemCodMaterial.AsInteger := RZDBLookupComboBox1.KeyValue;
          if RxDBLookupCombo3.Text <> '' then
            DM1.tDctoEstItemCodCor.AsInteger    := RxDBLookupCombo3.KeyValue
          else
            DM1.tDctoEstItemCodCor.AsInteger    := 0;
          DM1.tDctoEstItemQtd.AsFloat           := CurrencyEdit1.Value;
          DM1.tDctoEstItemUnidade.AsString      := RxDBLookupCombo15.Value;
          if DM1.tProdutoPrecoGrade.AsBoolean then
            DM1.tDctoEstItemVlrUnit.AsFloat := 0
          else
            DM1.tDctoEstItemVlrUnit.AsFloat := CurrencyEdit2.Value;
          DM1.tDctoEstItemVlrTotal.AsFloat   := DM1.tDctoEstItemVlrUnit.AsFloat * DM1.tDctoEstItemQtd.AsFloat;
          DM1.tDctoEStItemCodGrade.AsInteger := 0;
          tAuxDctoGrade.First;
          if DM1.tProdutoLancaGrade.AsBoolean then
            DM1.tDctoEStItemCodGrade.AsInteger := tAuxDctoGradeCodGrade.AsInteger;
          DM1.tDctoEStItem.Post;
          if DM1.tProdutoLancaGrade.AsBoolean then
            begin
              DM1.tDctoEStItem.Edit;
              tAuxDctoGrade.First;
              while not tAuxDctoGrade.IsEmpty do
                begin
                  DM1.tDctoEstGrade.Insert;
                  Dm1.tDctoEstGradeFilial.AsInteger    := Dm1.tDctoEstFilial.AsInteger;                           
                  DM1.tDctoEstGradeNumDcto.AsInteger   := DM1.tDctoEstNumDcto.AsInteger;
                  DM1.tDctoEstGradeItem.AsInteger      := DM1.tDctoEstItemItem.AsInteger;
                  DM1.tDctoEstGradeCodGrade.AsInteger  := tAuxDctoGradeCodGrade.AsInteger;
                  DM1.tDctoEstGradePosicao.AsInteger   := tAuxDctoGradePosicao.AsInteger;
                  DM1.tDctoEstGradeQtd.AsFloat         := tAuxDctoGradeQtd.AsFloat;
                  DM1.tDctoEstGradeVlrUnitario.AsFloat := tAuxDctoGradeVlrUnitario.AsFloat;
                  DM1.tDctoEstGradeVlrTotal.AsFloat    := tAuxDctoGradeVlrTotal.AsFloat;
                  DM1.tDctoEstGrade.Post;
                  DM1.tDctoEstItemVlrTotal.AsFloat     := DM1.tDctoEstItemVlrTotal.AsFloat + DM1.tDctoEstGradeVlrTotal.AsFloat;
                  tAuxDctoGrade.Delete;
                end;
              DM1.tDctoEStItem.Post;
            end;
          DM1.tDctoEstTotal.AsFloat             := DM1.tDctoEstTotal.AsFloat + DM1.tDctoEstItemVlrTotal.AsFloat;
          Limpa_Edit;
          CurrencyEdit3.SetFocus;
          SpeedButton1.Tag := 0;
          vCodCor          := 0;
        end;
    end;
end;

procedure TfDctoEst.SpeedButton1Click(Sender: TObject);
var
  vAux : Real;
begin
  if not DM1.tDctoEstItem.IsEmpty then
    begin
      if RZDBLookupComboBox1.Text = '' then
        begin
          qCor.Close;
          qCor.Params[0].AsInteger := DM1.tDctoEstItemCodMaterial.AsInteger;
          qCor.Open;

          SpeedButton1.Tag := 1;
          vAux                               := 0;
          RxDBLookupCombo7.KeyValue          := DM1.tDctoEstItemCodMaterial.AsInteger;
          RZDBLookupComboBox1.KeyValue          := DM1.tDctoEstItemCodMaterial.AsInteger;
          if DM1.tDctoEstItemCodCor.AsInteger > 0 then
            RxDBLookupCombo3.KeyValue        := DM1.tDctoEstItemCodCor.AsInteger;
          RxDBLookupCombo15.Value            := DM1.tDctoEstItemUnidade.AsString;
          CurrencyEdit1.Value                := DM1.tDctoEstItemQtd.AsFloat;
          CurrencyEdit2.Value                := DM1.tDctoEstItemVlrUnit.AsFloat;
          CurrencyEdit3.AsInteger            := DM1.tDctoEstItemCodMaterial.AsInteger;
          vItem                              := DM1.tDctoEstItemItem.AsInteger;
          tAuxDctoGrade.First;
          while not tAuxDctoGrade.EOF do
            tAuxDctoGrade.Delete;
          DM1.tDctoEstGrade.First;
          while not DM1.tDctoEstGrade.EOF do
            begin
              tAuxDctoGrade.Insert;
              tAuxDctoGradeCodGrade.AsInteger := DM1.tDctoEstGradeCodGrade.AsInteger;
              tAuxDctoGradePosicao.AsInteger  := DM1.tDctoEstGradePosicao.AsInteger;
              tAuxDctoGradeQtd.asFloat        := StrToFloat(FormatFloat('0.00000',DM1.tDctoEstGradeQtd.AsFloat));
              vAux                            := StrToFloat(FormatFloat('0.00000',vAux)) + StrToFloat(FormatFloat('0.00000',DM1.tDctoEstGradeQtd.AsFloat));
              tAuxDctoGradeLargura.AsString   := DM1.tDctoEstGradelkLargura.AsString;
              tAuxDctoGradeTamanho.AsString   := DM1.tDctoEstGradelkTamanho.AsString;
              tAuxDctoGrade.Post;
              DM1.tDctoEstGrade.Delete;
            end;
          if vAux > 0 then
            CurrencyEdit1.Value := vAux;
          DM1.tDctoEstTotal.AsFloat := DM1.tDctoEstTotal.AsFloat - DM1.tDctoEstItemVlrTotal.AsFloat;
          vCodCor := DM1.tDctoEstItemCodCor.AsInteger; 
          vCodProduto := DM1.tDctoEstItemCodMaterial.AsInteger;
          DM1.tDctoEstItem.Delete;
          DM1.tDctoEstItem.Refresh;
          CurrencyEdit3.SetFocus;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfDctoEst.SpeedButton2Click(Sender: TObject);
begin
  Limpa_Edit;
  CurrencyEdit3.SetFocus;
  SpeedButton1.Tag := 0;
end;

procedure TfDctoEst.SpeedButton3Click(Sender: TObject);
begin
  if not DM1.tDctoEstItem.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este material do Dcto. de Estoque?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
        begin
          while not Dm1.tDctoEstGrade.IsEmpty do
            Dm1.tDctoEstGrade.Delete;
          DM1.tDctoEstTotal.AsFloat := DM1.tDctoEstTotal.AsFloat - DM1.tDctoEstItemVlrTotal.AsFloat;
          DM1.tDctoEstItem.Delete;
          DM1.tDctoEstItem.Refresh;
        end;
    end
  else
    ShowMessage('Não há o que apagar do Dcto. de Estoque!');
end;

procedure TfDctoEst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tDctoEst.State in [dsBrowse]) then
    begin
      fConsDcto := TfConsDcto.Create(Self);
      fConsDcto.ShowModal;
      fDctoEst.Caption := 'Documento de Entrada e Saída do Estoque ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
    end;
  if (Key = Vk_F3) and (DM1.tDctoEst.State in [dsBrowse]) then
    begin
      if DM1.tUsuarioConsEstoqueMat.AsBoolean then
        begin
          fConsEstoqueMat := TfConsEstoqueMat.Create(Self);
          fConsEstoqueMat.ShowModal;
          fDctoEst.Caption := 'Documento de Entrada e Saída do Estoque ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
        end
      else
        ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir esta consulta!');
    end;
end;

procedure TfDctoEst.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfDctoEst.RxDBLookupCombo3Enter(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoCor.RecordCount < 1 then
            begin
              RxDBLookupCombo15.SetFocus;
              RxDBLookupCombo3.ClearValue;
            end;
        end
      else
        RxDBLookupCombo7.SetFocus;
    end
  else
    RxDBLookupCombo7.SetFocus;
end;

procedure TfDctoEst.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    begin
      if DM1.tProdutoCor.Locate('CodCor',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]) then
        begin
          if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) and (DM1.tProdutoProdMat.AsString = 'M') then
            CurrencyEdit2.Value := DM1.tProdutoCorPrCusto.AsFloat
          else
          if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) and (DM1.tProdutoProdMat.AsString = 'P') then
            CurrencyEdit2.Value := DM1.tProdutoCorVlrVenda.AsFloat;
        end;
    end;
end;

procedure TfDctoEst.SpeedButton5Click(Sender: TObject);
var
  vCodAux : Integer;
begin
  RxDBFilter1.Active := False;
  if RxDBLookupCombo7.Text <> '' then
    vCodProdutoPos := RxDBLookupCombo7.KeyValue
  else
  if RZDBLookupComboBox1.Text <> '' then
    vCodProdutoPos := RZDBLookupComboBox1.KeyValue;
  vCodAux := vCodProdutoPos;
  fMaterial := TfMaterial.Create(Self);
  fMaterial.ShowModal;
  RxDBFilter1.Active := True;
  DM1.tProduto.Refresh;
  DM1.tProduto.Locate('Codigo',vCodAux,[loCaseInsensitive]);
end;

procedure TfDctoEst.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit3.AsInteger > 0 then
        RZDBLookupComboBox1.SetFocus
      else
        RxDBLookupCombo7.SetFocus;
    end;
end;

procedure TfDctoEst.CurrencyEdit3Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit3.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit3.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RZDBLookupComboBox1.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo7.KeyValue := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit3.SetFocus;
          CurrencyEdit3.Clear;
        end;
    end;
end;

procedure TfDctoEst.FormShow(Sender: TObject);
begin
  DM1.tDctoEst.Open;
  DM1.tDctoEstItem.Open;
  DM1.tDctoEstGrade.Open;
  DM1.tEstoqueMatMov.Open;
  DM1.tProduto.Open;
  Dm1.tProdutoCor.Open;
  DM1.tProdutoCli.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoTam.Open;
  DM1.tGradeItem.Open;
  DM1.tGrade.Open;
  DM1.tTabPreco.Open;
  DM1.tCor.Open;
  DM1.tUnidade.Open;
  DM1.tParametros.Open;

  DM1.tDctoEst.Last;

  fDctoEst.Caption := 'Documento de Entrada e Saída do Estoque ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;

  Label5.Visible           := DM1.tParametrosUsaFornDoctoEstoque.AsBoolean;
  RxDBLookupCombo1.Visible := DM1.tParametrosUsaFornDoctoEstoque.AsBoolean;
  SpeedButton6.Visible     := DM1.tParametrosUsaFornDoctoEstoque.AsBoolean;
end;

procedure TfDctoEst.SpeedButton4Click(Sender: TObject);
var
  vCodAux : Integer;
begin
  if RxDBLookupCombo7.Text <> '' then
    vCodProdutoPos := RxDBLookupCombo7.KeyValue
  else
  if RZDBLookupComboBox1.Text <> '' then
    vCodProdutoPos := RZDBLookupComboBox1.KeyValue;
  vCodAux := vCodProdutoPos;
  RxDBFilter1.Active := False;
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  RxDBFilter1.Active := True;
  DM1.tProduto.Refresh;
  DM1.tProduto.Locate('Codigo',vCodAux,[loCaseInsensitive]);
end;

procedure TfDctoEst.BitBtn10Click(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([RZDBLookupComboBox1.KeyValue]);
      if DM1.tProdutoLancaGrade.AsBoolean then
        begin
          fDctoGrade := tfDctoGrade.Create(Self);
          fDctoGrade.ShowModal;
        end;
    end;
end;

procedure TfDctoEst.DBRadioGroup1Enter(Sender: TObject);
begin
  DBRadioGroup1.ReadOnly := not(DM1.tDctoEstItem.IsEmpty);
end;

procedure TfDctoEst.RxDBGrid1DblClick(Sender: TObject);
begin
  if (DM1.tDctoEstGrade.RecordCount > 0) and (SpeedButton1.Tag <> 1) then
    begin
      SpeedButton1.Tag := 2;
      tAuxDctoGrade.First;
      while not tAuxDctoGrade.Eof do
        tAuxDctoGrade.Delete;
      DM1.tDctoEstGrade.First;
      while not DM1.tDctoEstGrade.Eof do
        begin
          tAuxDctoGrade.Insert;
          tAuxDctoGradeCodGrade.AsInteger  := DM1.tDctoEstGradeCodGrade.AsInteger;
          tAuxDctoGradePosicao.AsInteger   := DM1.tDctoEstGradePosicao.AsInteger;
          tAuxDctoGradeQtd.AsFloat         := DM1.tDctoEstGradeQtd.AsFloat;
          tAuxDctoGradeVlrUnitario.AsFloat := DM1.tDctoEstGradeVlrUnitario.AsFloat;
          tAuxDctoGradeVlrTotal.AsFloat    := DM1.tDctoEstGradeVlrTotal.AsFloat;
          tAuxDctoGradeLargura.AsString   := DM1.tDctoEstGradelkLargura.AsString;
          tAuxDctoGradeTamanho.AsString   := DM1.tDctoEstGradelkTamanho.AsString;
          tAuxDctoGrade.Post;
          DM1.tDctoEstGrade.Next;
        end;
      fDctoGrade := tfDctoGrade.Create(Self);
      fDctoGrade.ShowModal;
      SpeedButton1.Tag := 0;
      Limpa_Edit;
    end
  else
  if SpeedButton1.Tag = 1 then
    ShowMessage('Há um item em modo de alteração!');
end;

procedure TfDctoEst.Panel5Enter(Sender: TObject);
begin
  vCodProduto := CurrencyEdit3.AsInteger;
end;

procedure TfDctoEst.RxDBLookupCombo7Change(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      RZDBLookupComboBox1.KeyValue := RxDBLookupCombo7.KeyValue;
      CurrencyEdit3.AsInteger   := RxDBLookupCombo7.KeyValue;
    end;
end;

procedure TfDctoEst.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      RxDBLookupCombo7.KeyValue := RZDBLookupComboBox1.KeyValue;
      CurrencyEdit3.AsInteger   := RZDBLookupComboBox1.KeyValue;
    end;
end;

procedure TfDctoEst.Panel5Exit(Sender: TObject);
begin
  if vCodProduto <> CurrencyEdit3.AsInteger then
    begin
      RxDBLookupCombo3.ClearValue;
      tAuxDctoGrade.First;
      while not tAuxDctoGrade.Eof do
        tAuxDctoGrade.Delete;
    end;
  if RxDBLookupCombo7.Text <> '' then
    Move_itens;
end;

procedure TfDctoEst.tAuxDctoGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  icount := tAuxDctoGrade.RecordCount;

  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fDctoGrade.BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfDctoEst.tAuxDctoGradeBeforePost(DataSet: TDataSet);
begin
  if tAuxDctoGradeVlrUnitario.AsFloat > 0 then
    tAuxDctoGradeVlrTotal.AsFloat := tAuxDctoGradeVlrUnitario.AsFloat * tAuxDctoGradeQtd.AsFloat
  else
    tAuxDctoGradeVlrTotal.AsFloat := 0;
end;

procedure TfDctoEst.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfDctoEst.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
    begin
      fFornecedores := TfFornecedores.Create(Self);
      fFornecedores.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfDctoEst.RzDBLookupComboBox1DropDown(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      RxDBLookupCombo7.KeyValue := RZDBLookupComboBox1.KeyValue;
      CurrencyEdit3.AsInteger   := RZDBLookupComboBox1.KeyValue;
    end;
end;

procedure TfDctoEst.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfDctoEst.RzDBLookupComboBox1Exit(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      RxDBLookupCombo7.KeyValue := RZDBLookupComboBox1.KeyValue;
      CurrencyEdit3.AsInteger   := RZDBLookupComboBox1.KeyValue;
    end;
end;

end.

