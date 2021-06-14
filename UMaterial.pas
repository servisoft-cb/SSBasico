unit UMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit,
  CurrEdit, ComCtrls, Db, DBTables, RXLookup, Grids, DBGrids, DBVGrids, MemTable, DBFilter, RXDBCtrl, Variants, RXCtrls, SMDBGrid,
  DBClient, RzDBCmbo;

type
  TfMaterial = class(TForm)
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    tProdutoIns: TTable;
    SpeedButton4: TSpeedButton;
    tProdutoCorIns: TTable;
    GroupBox2: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    RxDBFilter1: TRxDBFilter;
    DBRadioGroup3: TDBRadioGroup;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    tProdutoMat: TTable;
    tProdutoMatCodMaterial: TIntegerField;
    tProdutoMatCodProduto: TIntegerField;
    tProdutoMatCodCor: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    Label9: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    Label13: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SpeedButton9: TSpeedButton;
    Label17: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    DBCheckBox6: TDBCheckBox;
    tProdutoInsCodigo: TIntegerField;
    tProdutoInsReferencia: TStringField;
    DBEdit2: TDBEdit;
    RxDBFilter2: TRxDBFilter;
    tProdutoCorInsCodProduto: TIntegerField;
    tProdutoCorInsCodCor: TIntegerField;
    tProdutoCorInsPrCusto: TFloatField;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    dsProdutoIns: TDataSource;
    tProdutoInsNome: TStringField;
    tProdutoInsVincularProduto: TBooleanField;
    tProdutoInsCodProdutoEst: TIntegerField;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    Label20: TLabel;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    VDBGrid1: TVDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBLookupCombo10: TRxDBLookupCombo;
    BitBtn23: TBitBtn;
    qVerificaGrade: TQuery;
    qVerificaGradeCodMaterial: TIntegerField;
    qVerificaGradeCodGrade: TIntegerField;
    qVerificaGrade2: TQuery;
    qVerificaGrade2CodProduto: TIntegerField;
    qVerificaGrade2CodGrade: TIntegerField;
    qVerificaMat: TQuery;
    IntegerField1: TIntegerField;
    qVerificaMat2: TQuery;
    IntegerField2: TIntegerField;
    Panel6: TPanel;
    StaticText1: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBGrid1: TDBGrid;
    CurrencyEdit1: TCurrencyEdit;
    StaticText2: TStaticText;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    SpeedButton6: TSpeedButton;
    BitBtn15: TBitBtn;
    RxDBLookupCombo11: TRxDBLookupCombo;
    RxDBFilter4: TRxDBFilter;
    RxSpeedButton3: TRxSpeedButton;
    Label21: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    TabSheet5: TTabSheet;
    qPreco: TQuery;
    qPrecoVlrUnitario: TFloatField;
    qPrecoES: TStringField;
    qPrecoDtMov: TDateField;
    qPrecoNomeForn: TStringField;
    qPrecoCodForn: TIntegerField;
    SMDBGrid1: TSMDBGrid;
    dsmPreco: TDataSource;
    mPreco: TClientDataSet;
    mPrecoCodFornecedor: TIntegerField;
    mPrecoNomeFornecedor: TStringField;
    mPrecoPrecoCusto: TFloatField;
    mPrecoDtPreco: TDateField;
    BitBtn18: TBitBtn;
    Label22: TLabel;
    ProgressBar1: TProgressBar;
    DBGrid4: TDBGrid;
    qPrecoCodCor: TIntegerField;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    StaticText13: TStaticText;
    DBEdit8: TDBEdit;
    StaticText14: TStaticText;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    StaticText15: TStaticText;
    Label27: TLabel;
    SpeedButton5: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn10: TBitBtn;
    TabSheet2: TTabSheet;
    BitBtn12: TBitBtn;
    BitBtn14: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    tCBarra: TTable;
    tCBarraCodBarra: TStringField;
    tCBarraCodProduto: TIntegerField;
    tCBarraCodCor: TIntegerField;
    tCBarraCodGrade: TIntegerField;
    tCBarraPosicao: TIntegerField;
    tCBarraTamanho: TStringField;
    tCBarraCodPrincipal: TIntegerField;
    tCBarraCodSeq: TIntegerField;
    tCBarralkNomeCor: TStringField;
    dsCBarra: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RxDBLookupCombo2DropDown(Sender: TObject);
    procedure RxDBLookupCombo2CloseUp(Sender: TObject);
    procedure RxDBLookupCombo3DropDown(Sender: TObject);
    procedure RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo6DropDown(Sender: TObject);
    procedure RxDBLookupCombo6CloseUp(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Enter(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBox4Enter(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure RxSpeedButton3Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RzDBLookupComboBox1DropDown(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure Habilita;
    procedure opcoes;
    procedure Excluir_Registro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMaterial: TfMaterial;
  i2 : Integer;

implementation

uses UGrupos, UDM1, UFornecedores, UGrade, UCor, USitTributaria, UClasFiscal, UDM2, ComObj, UConsHistMat, UDMMaterialFornecedor,
  uMaterialFornecedor, UCBarra, uIntegracao, UDMTabImposto, UConsProduto2;

{$R *.DFM}

procedure TfMaterial.Excluir_Registro;
var
  vCodAux : Integer;
begin
  DM1.tProdutoCor.First;
  while not DM1.tProdutoCor.Eof do
    DM1.tProdutoCor.Delete;
  Dm1.tProdutoGrade.First;
  while not Dm1.tProdutoGrade.Eof do
    begin
      Dm1.tProdutoTam.First;
      while not Dm1.tProdutoTam.Eof do
        Dm1.tProdutoTam.Delete;
      Dm1.tProdutoGrade.Delete;
    end;
  DMMaterialFornecedor.Excluir_MaterialFornecedor(DM1.tProdutoCodigo.AsInteger,0,0);
  vCodAux := DM1.tProdutoCodigo.AsInteger;
  DM1.tProduto.Delete;

  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Excluir_Produto_FB(vCodAux);
end;

procedure TfMaterial.Habilita;
begin
  Panel2.Enabled            := not(Panel2.Enabled);
  Panel4.Enabled            := not(Panel4.Enabled);
  BitBtn1.Enabled           := not(BitBtn1.Enabled);
  BitBtn2.Enabled           := not(BitBtn2.Enabled);
  BitBtn3.Enabled           := not(BitBtn3.Enabled);
  BitBtn4.Enabled           := not(BitBtn4.Enabled);
  BitBtn5.Enabled           := not(BitBtn5.Enabled);
  BitBtn6.Enabled           := not(BitBtn6.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn8.Enabled           := not(BitBtn8.Enabled);
  BitBtn9.Enabled           := not(BitBtn9.Enabled);
  BitBtn12.Enabled          := not(BitBtn12.Enabled);
  BitBtn14.Enabled          := not(BitBtn14.Enabled);
  BitBtn15.Enabled          := not(BitBtn15.Enabled);
  SpeedButton6.Enabled      := not(SpeedButton6.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  RxDBLookupCombo2.Enabled  := not(RxDBLookupCombo2.Enabled);
  CurrencyEdit1.Enabled     := not(CurrencyEdit1.Enabled);
  RxDBLookupCombo10.Enabled := not(RxDBLookupCombo10.Enabled);
  SpeedButton2.Enabled      := not(SpeedButton2.Enabled);
  BitBtn21.Enabled          := not(BitBtn21.Enabled);
  BitBtn22.Enabled          := not(BitBtn22.Enabled);
  BitBtn23.Enabled          := not(BitBtn23.Enabled);
end;

procedure TfMaterial.Opcoes;
begin
  if (DBCheckBox4.Checked) then
    begin
      Label12.Visible := False;
      DBEdit7.Visible := False;
    end
  else
    begin
      Label12.Visible := True;
      DBEdit7.Visible := True;
    end;
  Panel7.Enabled           := DBCheckBox5.Checked;
  Panel6.Enabled           := DbCheckBox2.Checked;
  CurrencyEdit1.Enabled    := DbCheckBox4.Checked;
  if DM1.tProduto.State in [dsEdit] then
    begin
      VDBGrid1.ReadOnly            := not(DM1.tProdutoPrecoGrade.AsBoolean);
      VDBGrid1.Columns[1].ReadOnly := not(DM1.tProdutoPrecoGrade.AsBoolean);
    end
  else
    begin
      VDBGrid1.ReadOnly            := True;
      VDBGrid1.Columns[1].ReadOnly := True;
    end;

  DM2.qGrupoItem.Close;
  if DM1.tProdutoCodGrupo.AsInteger > 0 then
  begin
    DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := DM1.tProdutoCodGrupo.AsInteger;
    DM2.qGrupoItem.Open;
  end;
end;

procedure TfMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qPreco.Close;
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  RxDBFilter4.Active := False;

  if Screen.FormCount < 3 then
  begin
    DM1.tGrupo.Close;
    DM1.tCor.Close;
    DM1.tClasFiscal.Close;
    DM1.tSitTributaria.Close;
    DM1.tGrade.Close;
    DM1.tGradeItem.Close;
    DM1.tTabPreco.Close;
    DM1.tProduto.Close;
    DM1.tProdutoCor.Close;
    DM1.tProdutoMat.Close;
    DM1.tProdutoComb.Close;
    DM1.tProdutoCli.Close;
    DM1.tProdutoConsumo.Close;
    DM1.tProdutoConsumoItem.Close;
    DM1.tProdutoGrade.Close;
    DM1.tProdutoTam.Close;
    DM1.tFornecedores.Close;
    DM1.tUnidade.Close;
    DM1.tGrupoItem.Close;
  end;
  DM2.qClasFisical.Close;

  if DMTabImposto.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTabImposto);
  if DMMaterialFornecedor.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMMaterialFornecedor);

  Action := Cafree;
end;

procedure TfMaterial.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfMaterial.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioGrupos.AsBoolean then
    begin
      fGrupos := TfGrupos.Create(Self);
      fGrupos.ShowModal;
      DM1.tGrupo.IndexFieldNames := 'Nome';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de grupos!');
end;

procedure TfMaterial.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMaterial.AsBoolean then
    begin
      BitBtn2.Tag := 0;
      DM1.tProduto.IndexFieldNames   := 'Codigo';
      tProdutoIns.IndexFieldNames    := 'Codigo';
      tProdutoIns.Open;
      tProdutoIns.Last;
      DM1.tProduto.Refresh;
      DM1.tProduto.Insert;
      DM1.tProdutoCodigo.AsInteger        := tProdutoInsCodigo.AsInteger + 1;
      DM1.tProdutoPosseMat.AsString       := 'E';
      DM1.tProdutoMaterialOutros.AsString := 'M';
      DM1.tProdutoProdMat.AsString        := 'M';
      DM1.tProduto.Post;
      DM1.tProduto.Edit;
      Habilita;
      Opcoes;
      PageControl1.ActivePage := TabSheet1;
      RxDBLookupCombo4.SetFocus;
      mPreco.EmptyDataSet;
      DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMaterial.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMaterial.AsBoolean then
    begin
      if DM1.tProdutoCodigo.AsInteger < 1 then
        Exit;

      DM1.tProduto.Edit;
      Habilita;
      BitBtn2.Tag := 1;
      PageControl1.ActivePage := TabSheet1;
      RxDBLookupCombo4.SetFocus;
      opcoes;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMaterial.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    Excluir_Registro
  else
  if BitBtn2.Tag = 1 then
    begin
      if not(DM1.tProdutoLancaGrade.AsBoolean) and (DM1.tProdutoGrade.RecordCount > 0) then
        ShowMessage('Existe grade lançada, não pode desmarcar a opção Lança Grade!')
      else
      if (DM1.tProdutoLancaGrade.AsBoolean) and (DM1.tProdutoGrade.RecordCount < 1) then
        ShowMessage('Opção Lança Grade está marcada, porém não existe grade lançada!')
      else
        begin
          DM1.tProduto.Cancel;
          if not(DM1.tProdutoLancaGrade.AsBoolean) and (DM1.tProdutoGrade.RecordCount > 0) then
            begin
              ShowMessage('Existe grade lançada!');
              DM1.tProduto.Edit;
            end
          else
          if not(DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoCor.RecordCount > 0) then
            begin
              ShowMessage('Existe cor lançada!');
              DM1.tProduto.Edit;
            end
          else
            BitBtn2.Tag := 0;
        end;
    end;
  if BitBtn2.Tag = 0 then
    begin
      RxDBLookupCombo2.ClearValue;
      CurrencyEdit1.Clear;
      Habilita;
      BitBtn1.SetFocus;
      opcoes;
    end;
  RxDBLookupCombo10.ClearValue;
  mPreco.EmptyDataSet;
  DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
end;

procedure TfMaterial.BitBtn3Click(Sender: TObject);
var
  vFlag : Boolean;
begin
  if DM1.tUsuarioExcMaterial.AsBoolean then
  begin
    if DM1.tProdutoCodigo.AsInteger < 1 then
      exit;

    tProdutoMat.Open;
    if tProdutoMat.Locate('CodMaterial',DM1.tProdutoCodigo.AsInteger,[loCaseInsensitive]) then
      ShowMessage('Este material não pode ser excluído pois está no produto ' + tProdutoMatCodProduto.AsString)
    else
    begin
      vFlag := True;
      qVerificaMat.Close;
      qVerificaMat.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qVerificaMat.Open;
      if qVerificaMat.RecordCount > 0 then
        vFlag := False;
      if vFlag then
      begin
        qVerificaMat2.Close;
        qVerificaMat2.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
        qVerificaMat2.Open;
        if qVerificaMat2.RecordCount > 0 then
          vFlag := False;
      end;
      mPreco.EmptyDataSet;
      DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
      if not vFlag then
        ShowMessage('Material não pode ser excluído, já foi usado!')
      else
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        Excluir_Registro;
    end;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMaterial.BitBtn5Click(Sender: TObject);
begin
  if DM1.tProduto.State in [dsBrowse] then
    DM1.tProduto.Edit;

  if DM1.tProduto.State in [dsEdit,dsInsert] then
    begin
      if Trim(DM1.tProdutoOrigemProd.AsString) = '' then
      begin
        ShowMessage('Falta informar a origem!');
        exit;
      end;

      if DM1.tProdutoNome.AsString = '' then
        ShowMessage('Falta informar o nome do material!')
      else
      if (DbCheckBox5.Checked = True) and (DM1.tProdutoGrade.RecordCount < 1) then
        ShowMessage('Falta a grade!')
      else
      if (DbCheckBox5.Checked = False) and (DM1.tProdutoGrade.RecordCount > 0) then
        ShowMessage('Existe grade nesse produto, deve ser marcado o campo "Lança grade"!')
      else
      if (DM1.tProdutoVincularProduto.AsBoolean) and (DM1.tProdutoCodProdutoEst.AsInteger < 1) then
        ShowMessage('Falta informar o produto vinculado!')
      else
      if Dm1.tProdutoUnidade.AsString = '' then
        ShowMessage('Falta informar a unidade!')
      else
      if (DBCheckBox2.Checked) and (DM1.tProdutoCor.RecordCount < 1) then
        ShowMessage('Falta informar a cor!')
      else
        begin
          tProdutoMat.Open;
          if (DM1.tProdutoInativo.AsBoolean) and (tProdutoMat.Locate('CodMaterial',DM1.tProdutoCodigo.AsInteger,[loCaseInsensitive])) then
            ShowMessage('Material está sendo usado na ficha técnica código: ' + tProdutoMatCodProduto.AsString);
          if not(DM1.tProdutoVincularProduto.AsBoolean) and (DM1.tProdutoCodProdutoEst.AsInteger > 0) then
            DM1.tProdutoCodProdutoEst.AsInteger := 0;
          if not DM1.tProdutoLancaGrade.AsBoolean then
            DM1.tProdutoFichaTecnicaConsPorTam.AsBoolean := False;
          if DM1.tProdutoGrade.RecordCount < 1 then
            DM1.tProdutoCodGrade.AsInteger := 0;
          DM1.tProduto.Post;
          
          if DM1.tParametrosUsaFB.AsBoolean then
            Prc_Gravar_Produto_FB(DM1.tProdutoCodigo.AsInteger);

          DM1.tProdutoTam.First;
          while not DM1.tProdutoTam.Eof do
            begin
              if DM1.tProdutoTamPosicao.AsInteger < 1 then
                DM1.tProdutoTam.Delete
              else
                begin
                  DM1.tProdutoTam.Edit;
                  DM1.tProdutoTamQtdMinima.AsFloat := DM1.tProdutoEstMinimo.AsFloat;
                  DM1.tProdutoTamQtdMaxima.AsFloat := DM1.tProdutoEstMaximo.AsFloat;
                  DM1.tProdutoTam.Post;
                  DM1.tProdutoTam.Next;
                end;
            end;
          BitBtn2.Tag := 0;
          RxDBLookupCombo2.ClearValue;
          CurrencyEdit1.Clear;
          Habilita;
          BitBtn1.SetFocus;
          opcoes;
        end;
    end;
  RxDBLookupCombo10.ClearValue;
end;

procedure TfMaterial.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
    begin
      fFornecedores := TfFornecedores.Create(Self);
      fFornecedores.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfMaterial.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tProduto.State in [dsEdit] then
    begin
      ShowMessage('Você deve cancelar ou confirmar o material antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMaterial.BitBtn7Click(Sender: TObject);
begin
  if not (RxDBLookupCombo2.Text <> '') then
    ShowMessage('Falta o nome da cor!')
  else
  if BitBtn15.Tag = 1 then
    begin
      if DM1.tProdutoCor.Locate('CodProduto;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,RxDBLookupCombo2.KeyValue]),[locaseinsensitive]) then
        begin
          if DM1.tProdutoCorCodCor.AsInteger <> RxDBLookupCombo2.KeyValue then
            ShowMessage('Quando for alterado uma cor, a mesma não pode ser trocada.')
          else
            begin
              DM1.tProdutoCor.Edit;
              DM1.tProdutoCorPrCusto.AsFloat   := CurrencyEdit1.Value;
              DM1.tProdutoCor.Post;
              BitBtn15.Tag := 0;
            end;
        end;
    end
  else
  if DM1.tProdutoCor.Locate('CodProduto;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,RxDBLookupCombo2.KeyValue]),[locaseinsensitive]) then
    ShowMessage('Esta cor já está no material!')
  else
    begin
      DM1.tProdutoCor.Refresh;
      DM1.tProdutoCor.Insert;
      DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tProdutoCorCodCor.AsInteger     := RxDBLookupCombo2.KeyValue;
      DM1.tProdutoCorPrCusto.AsFloat      := CurrencyEdit1.Value;
      DM1.tProdutoCor.Post;
      BitBtn15.Tag := 0;
    end;
  BitBtn8Click(Sender);
end;

procedure TfMaterial.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo2.ReadOnly := False;
  RxDBLookupCombo2.ClearValue;
  CurrencyEdit1.Clear;
  RxDBLookupCombo2.SetFocus;
  BitBtn15.Tag := 0;
end;

procedure TfMaterial.BitBtn9Click(Sender: TObject);
begin
  if not DM1.tProdutoCor.IsEmpty then
  begin
    tProdutoMat.Open;
    if tProdutoMat.Locate('CodMaterial;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tProdutoCorCodCor.AsInteger]),[locaseinsensitive]) then
      ShowMessage('Esta cor não pode ser excluída pois esta no produto ' + tProdutoMatCodProduto.AsString)
    else
    if MessageDlg('Deseja realmente excluir esta cor?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      DMMaterialFornecedor.Excluir_MaterialFornecedor(DM1.tProdutoCodigo.AsInteger,DM1.tProdutoCorCodCor.AsInteger,0);
      DM1.tProdutoCor.Delete;
    end
  end
  else
    ShowMessage('Não há registro para ser excluído!');
end;

procedure TfMaterial.DBCheckBox2Click(Sender: TObject);
begin
  if DM1.tProduto.State in [dsEdit] then
  begin
    if not(DBCheckBox2.Checked) and (DM1.tProdutoCor.RecordCount > 0) then
    begin
      ShowMessage('Não pode desmarcar a cor pois existe cor informada!');
      DBCheckBox2.Checked := True;
    end;
    Panel6.Enabled    := DBCheckBox2.Checked;
    TabSheet1.Visible := DBCheckBox2.Checked;
    if not(DBCheckBox2.Checked) and (DBCheckBox4.Checked) then
      DBCheckBox4.Checked := False;
  end;
end;

procedure TfMaterial.DBCheckBox5Click(Sender: TObject);
begin
  if DM1.tProduto.State in [dsEdit] then
  begin
    if not(DBCheckBox5.Checked) and (DM1.tProdutoGrade.RecordCount > 0) then
    begin
      ShowMessage('Não pode desmarcar a grade pois existem tamanhos informados!');
      DBCheckBox5.Checked  := True;
    end;
    Panel7.Enabled    := DBCheckBox5.Checked;
    TabSheet4.Visible := DBCheckBox5.Checked;
  end;
end;

procedure TfMaterial.FormShow(Sender: TObject);
begin
  if not Assigned(DMTabImposto) then
    DMTabImposto := TDMTabImposto.Create(Self);
  if not Assigned(DMMaterialFornecedor) then
    DMMaterialFornecedor := TDMMaterialFornecedor.Create(Self);

  Panel7.Enabled       := DbCheckBox5.Checked;
  DM1.tGrupo.Open;
  DM1.tCor.Open;
  DM1.tClasFiscal.Open;
  DM1.tSitTributaria.Open;
  DM1.tGrade.Open;
  DM1.tGradeItem.Open;
  DM1.tTabPreco.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoCli.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tFornecedores.Open;
  DM1.tUnidade.Open;
  DM1.tGrupoItem.Open;
  DM1.tCBarra.Open;
  tCBarra.Open;
  tProdutoIns.Open;

  DM2.qClasFisical.Open;

  DM2.qGrupoItem.Close;
  if DM1.tProdutoCodGrupo.AsInteger > 0 then
  begin
    DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := DM1.tProdutoCodGrupo.AsInteger;
    DM2.qGrupoItem.Open;
  end;

  RxDBFilter1.Active   := True;
  RxDBFilter2.Active   := True;
  TabSheet5.TabVisible := DM1.tUsuarioMostraPrecoMat.AsBoolean;

  Label9.Visible           := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  RxDBLookupCombo8.Visible := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  SpeedButton8.Visible     := DM1.tParametrosMostrarSitTribProduto.AsBoolean;

  Opcoes;
end;

procedure TfMaterial.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  Opcoes;
  mPreco.EmptyDataSet;
  DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
end;

procedure TfMaterial.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioCor.AsBoolean then
    begin
      fCor := TfCor.Create(Self);
      fCor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cores!');
end;

procedure TfMaterial.RxDBLookupCombo2DropDown(Sender: TObject);
begin
  DM1.tCor.IndexFieldNames := 'Nome';
end;

procedure TfMaterial.RxDBLookupCombo2CloseUp(Sender: TObject);
begin
  DM1.tCor.IndexFieldNames := 'Codigo';
end;

procedure TfMaterial.RxDBLookupCombo3DropDown(Sender: TObject);
begin
  DM1.tProduto.Refresh;
  DM1.tProduto.IndexFieldNames := 'Nome';
  CurrencyEdit3.Clear;
  mPreco.EmptyDataSet;
  DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
end;

procedure TfMaterial.RxDBLookupCombo6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo6.LookupDisplay = 'NomeForn' then
        begin
           RxDBLookupCombo6.CloseUp(True);
           RxDBLookupCombo6.LookupDisplay    := 'Fantasia';
           DM1.tFornecedores.IndexFieldNames := 'Fantasia';
           DM1.tFornecedores.Refresh;
           Label8.Caption := 'Fantasia';
        end
      else
      if RxDBLookupCombo6.LookupDisplay = 'Fantasia' then
        begin
          RxDBLookupCombo6.CloseUp(True);
          RxDBLookupCombo6.LookupDisplay    := 'NomeForn';
          DM1.tFornecedores.IndexFieldNames := 'NomeForn';
          DM1.tFornecedores.Refresh;
          Label8.Caption := 'Nome';
        end;
    end;
end;

procedure TfMaterial.RxDBLookupCombo6DropDown(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfMaterial.RxDBLookupCombo6CloseUp(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'CodForn';
end;

procedure TfMaterial.BitBtn15Click(Sender: TObject);
begin
  if DM1.tProdutoPrecoCor.AsBoolean then
    begin
      if not DM1.tProdutoCor.IsEmpty then
        begin
          if RxDBLookupCombo2.Text = '' then
            begin
              BitBtn15.Tag := 1;
              RxDBLookupCombo2.KeyValue := DM1.tProdutoCorCodCor.AsInteger;
              CurrencyEdit1.Value       := DM1.tProdutoCorPrCusto.AsFloat;
              RxDBLookupCombo2.ReadOnly := True;
              CurrencyEdit1.SetFocus;
            end
          else
            ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
        end
      else
        ShowMessage('Não registro para ser alterado!');
    end;
end;

procedure TfMaterial.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfMaterial.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioClasFiscal.AsBoolean then
    begin
      DM2.qClasFisical.Close;
      fClasFiscal := TfClasFiscal.Create(Self);
      fClasFiscal.ShowModal;
      DM2.qClasFisical.Open;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a abrir este formulário!');
end;

procedure TfMaterial.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([CurrencyEdit3.AsInteger]);
      mPreco.EmptyDataSet;
      DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
    end;
end;

procedure TfMaterial.CurrencyEdit3Enter(Sender: TObject);
begin
  DM1.tProduto.Refresh;
  RzDBLookupComboBox1.ClearKeyValue;
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfMaterial.RxDBLookupCombo4Exit(Sender: TObject);
var
  i : Integer;
  vAux : String;
begin
  DM2.qGrupoItem.Close;
  if (DBEdit2.Text = '') or (BitBtn2.Tag = 0) then
    begin
      if (RxDBLookupCombo4.Text <> '') and (DM1.tGrupoReferencia.AsString <> '') then
        DM1.tProdutoReferencia.AsString := DM1.tGrupoReferencia.AsString + '.'
      else
        DM1.tProdutoReferencia.AsString := 'M.';
      vAux := DM1.tProdutoCodigo.AsString;
      for i := 1 to 6 - Length(vAux) do
        vAux := '0' + vAux;
      DM1.tProdutoReferencia.AsString := DM1.tProdutoReferencia.AsString + vAux;
      if BitBtn2.Tag = 0 then
        DM1.tProdutoEstoque.AsBoolean := DM1.tGrupoEstoque.AsBoolean;
    end;

  if RxDBLookupCombo4.Text <> '' then
    begin
      DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo4.KeyValue;
      DM2.qGrupoItem.Open;
    end;

  DM1.tGrupo.IndexFieldNames := 'Codigo';
end;

procedure TfMaterial.DBEdit2Exit(Sender: TObject);
begin
  if DM1.tProdutoReferencia.AsString <> '' then
    if tProdutoIns.Locate('Referencia',DM1.tProdutoReferencia.AsString,[loCaseInsensitive]) then
      if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
      begin
        ShowMessage('Referência já cadastrada!');
        DM1.tProdutoReferencia.Clear;
        DBEdit2.SetFocus;
      end;
end;

procedure TfMaterial.TabSheet3Enter(Sender: TObject);
begin
  DM1.tProdutoCor.Refresh;
end;

procedure TfMaterial.BitBtn21Click(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Codigo';
  DM1.tGrade.SetKey;
  DM1.tGradeCodigo.AsInteger := RxDBLookupCombo10.KeyValue;
  if DM1.tGrade.GotoKey then
  begin
    DM1.tProdutoGrade.Insert;
    DM1.tProdutoGradeCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
    DM1.tProdutoGradeCodGrade.AsInteger   := DM1.tGradeCodigo.AsInteger;
    DM1.tProdutoGrade.Post;
    DM1.tProdutoCodGrade.AsInteger        := DM1.tGradeCodigo.AsInteger;
    DM1.tGradeItem.First;
    while not DM1.tGradeItem.Eof do
    begin
      DM1.tProdutoTam.Insert;
      DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
      DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
      DM1.tProdutoTamTamanho.AsString     := DM1.tGradeItemTamanho.AsString;
      DM1.tProdutoTam.Post;
      DM1.tGradeItem.Next;
    end;
  end;
  RxDBLookupCombo10.ClearValue;
end;

procedure TfMaterial.RxDBLookupCombo10Enter(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfMaterial.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioGrade.AsBoolean then
    begin
      fGrade := TfGrade.Create(Self);
      fGrade.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cores!');
end;

procedure TfMaterial.BitBtn22Click(Sender: TObject);
begin
  if DM1.tProdutoTamCodGrade.AsInteger > 0 then
  begin
    if MessageDlg('Deseja excluir a grade?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      qVerificaGrade.Close;
      qVerificaGrade.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qVerificaGrade.Params[1].AsInteger := DM1.tProdutoTamCodGrade.AsInteger;
      qVerificaGrade.Open;
      if qVerificaGrade.RecordCount > 0 then
        ShowMessage('Esta grade já foi usada, não pode ser excluída!')
      else
      begin
        qVerificaGrade2.Close;
        qVerificaGrade2.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
        qVerificaGrade2.Params[1].AsInteger := DM1.tProdutoTamCodGrade.AsInteger;
        qVerificaGrade2.Open;
        if qVerificaGrade2.RecordCount > 0 then
          ShowMessage('Esta grade já foi usada, não pode ser excluída!')
        else
        begin
          DM1.tProdutoTam.First;
          while not DM1.tProdutoTam.Eof do
            DM1.tProdutoTam.Delete;

          DMMaterialFornecedor.Excluir_MaterialFornecedor(DM1.tProdutoCodigo.AsInteger,0,DM1.tProdutoGradeCodGrade.AsInteger);
          DM1.tProdutoGrade.Delete;
        end;
      end;
    end;
  end;
end;

procedure TfMaterial.BitBtn23Click(Sender: TObject);
begin
  if DM1.tProdutoGradeCodGrade.AsInteger > 0 then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.SetKey;
      DM1.tGradeCodigo.AsInteger := DM1.tProdutoGradeCodGrade.AsInteger;
      if DM1.tGrade.GotoKey then
        begin
          DM1.tGradeItem.First;
          while not DM1.tGradeItem.Eof do
            begin
              DM1.tProdutoTam.SetKey;
              DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
              DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
              if not DM1.tProdutoTam.GotoKey then
                begin
                  DM1.tProdutoTam.Insert;
                  DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
                  DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
                  DM1.tProdutoTamTamanho.AsString     := DM1.tGradeItemTamanho.AsString;
                  DM1.tProdutoTam.Post;
                end;
              DM1.tGradeItem.Next;
            end;
        end;
    end;
end;

procedure TfMaterial.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfMaterial.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfMaterial.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfMaterial.DBCheckBox4Enter(Sender: TObject);
begin
  if not(DBCheckBox2.Checked) then
    DBCheckBox4.ReadOnly := True
  else
    DBCheckBox4.ReadOnly := False;
end;

procedure TfMaterial.DBCheckBox4Click(Sender: TObject);
begin
  if DM1.tProduto.State in [dsEdit] then
    begin
      if (DBCheckBox4.Checked) then
        begin
          Label12.Visible := False;
          DBEdit7.Visible := False;
        end
      else
        begin
          Label12.Visible := True;
          DBEdit7.Visible := True;
        end;
      CurrencyEdit1.Enabled := DbCheckBox4.Checked;
    end;
end;

procedure TfMaterial.RxSpeedButton3Click(Sender: TObject);
begin
  RxDBFilter4.Active := not(RxDBFilter4.Active);
end;

procedure TfMaterial.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Nome';
end;

procedure TfMaterial.BitBtn18Click(Sender: TObject);
var
  i : Integer;
  vPreco : Real;
begin
  qPreco.Close;
  qPreco.SQL.Clear;
  qPreco.SQL.Add('SELECT Dbestoquematmov.VlrUnitario, Dbestoquematmov.ES, Dbestoquematmov.DtMov, Dbfornecedores.NomeForn, Dbfornecedores.CodForn, dbEstoqueMatMov.CodCor');
  qPreco.SQL.Add('FROM "dbEstoqueMatMov.DB" Dbestoquematmov');
  qPreco.SQL.Add('   INNER JOIN "dbFornecedores.DB" Dbfornecedores');
  qPreco.SQL.Add('   ON  (Dbestoquematmov.CodCliForn = Dbfornecedores.CodForn)');
  qPreco.SQL.Add('   INNER JOIN "dbNatOperacao.DB" Dbnatoperacao');
  qPreco.SQL.Add('   ON  (Dbestoquematmov.CodNatOper = Dbnatoperacao.Codigo)');
  qPreco.SQL.Add('WHERE  Dbestoquematmov.TipoMov = ''NTE''');
  qPreco.SQL.Add('  AND  dbestoquematmov.CodMaterial = :CodMaterial');
  //qPreco.SQL.Add('  AND  ((dbFornecedores.Cliente = False) or (dbFornecedores.Cliente is Null))');
  qPreco.SQL.Add('  AND (Dbnatoperacao.GeraDuplicata = TRUE)');
  if DM1.tProdutoPrecoCor.AsBoolean then
    begin
      qPreco.SQL.Add('  AND dbestoquematmov.CodCor = :CodCor');
      qPreco.ParamByName('CodCor').AsInteger := DM1.tProdutoCorCodCor.AsInteger;
    end;
  qPreco.SQL.Add('ORDER BY Dbestoquematmov.DtMov');
  qPreco.ParamByName('CodMaterial').AsInteger := DM1.tProdutoCodigo.AsInteger;
  qPreco.Open;
  mPreco.EmptyDataSet;
  DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
  ProgressBar1.Visible  := True;
  ProgressBar1.Max      := qPreco.RecordCount;
  ProgressBar1.Position := 0;

  i      := 0;
  vPreco := 0;
  qPreco.Last;
  while not qPreco.Bof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if StrToFloat(FormatFloat('0.00000',vPreco)) <> StrToFloat(FormatFloat('0.00000',qPrecoVlrUnitario.AsFloat)) then
        begin
          inc(i);
          if i > 7 then
            qPreco.First
          else
            begin
              mPreco.Insert;
              mPrecoCodFornecedor.AsInteger := qPrecoCodForn.AsInteger;
              mPrecoNomeFornecedor.AsString := qPrecoNomeForn.AsString;
              mPrecoDtPreco.AsDateTime      := qPrecoDtMov.AsDateTime;
              mPrecoPrecoCusto.AsFloat      := qPrecoVlrUnitario.AsFloat;
              mPreco.Post;
            end;
        end;
      vPreco := qPrecoVlrUnitario.AsFloat;
      qPreco.Prior;
    end;
  ProgressBar1.Visible  := False;
end;

procedure TfMaterial.SMDBGrid1DblClick(Sender: TObject);
begin
  fConsHistMat := TfConsHistMat.Create(Self);
  fConsHistMat.Tag := 1;
  fConsHistMat.CurrencyEdit1.AsInteger   := DM1.tProdutoCodigo.AsInteger;
  fConsHistMat.RxDBLookupCombo1.KeyValue := DM1.tProdutoCodigo.AsInteger;
  fConsHistMat.RxDBLookupCombo4.KeyValue := DM1.tProdutoCodigo.AsInteger;
  if DM1.tProdutoPrecoCor.AsBoolean then
    begin
      fConsHistMat.RxDBLookupCombo2Enter(Sender);
      fConsHistMat.RxDBLookupCombo2.KeyValue := DM1.tProdutoCorCodCor.AsInteger;
    end;
  fConsHistMat.ShowModal;
end;

procedure TfMaterial.RzDBLookupComboBox1DropDown(Sender: TObject);
begin
  DM1.tProduto.Refresh;
  DM1.tProduto.IndexFieldNames := 'Nome';
  CurrencyEdit3.Clear;
  mPreco.EmptyDataSet;
  DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
end;

procedure TfMaterial.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  DM1.tProduto.Refresh;
  DM1.tProduto.IndexFieldNames := 'Nome';
  CurrencyEdit3.Clear;
  mPreco.EmptyDataSet;
  DBGrid4.Visible := DM1.tProdutoPrecoCor.AsBoolean;
end;

procedure TfMaterial.BitBtn10Click(Sender: TObject);
begin
  if DM1.tProdutoCodigo.AsInteger > 0 then
  begin
    fMaterialFornecedor := TfMaterialFornecedor.Create(Self);
    fMaterialFornecedor.vCodProduto := DM1.tProdutoCodigo.AsInteger;
    fMaterialFornecedor.vTabela     := DM1.tProduto;
    fMaterialFornecedor.ShowModal;
  end;
end;

procedure TfMaterial.BitBtn12Click(Sender: TObject);
begin
  if not DM1.tUsuarioInsProduto.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString  + ' não autorizado!');
    exit;
  end;

  fCBarra := TfCBarra.Create(Self);
  fCBarra.ShowModal;
  tCBarra.Refresh;
end;

procedure TfMaterial.BitBtn14Click(Sender: TObject);
begin
  if not DM1.tUsuarioExcProduto.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString  + ' não autorizado!');
    exit;
  end;

  if tCBarra.IsEmpty then
    exit;

  if tCBarraCodPrincipal.AsInteger > 0 then
  begin
    ShowMessage('Cód. Não pode ser excluído!');
    exit;
  end;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    if DM1.tCBarra.Locate('CodBarra',tCBarraCodBarra.AsString,[loCaseInsensitive]) then
      DM1.tCBarra.Delete;
    DM1.tCBarra.Refresh;
    tCBarra.Refresh;
  end;
end;

procedure TfMaterial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tProduto.State in [dsBrowse]) then
  begin
    fConsProduto2 := TfConsProduto2.Create(Self);
    fConsProduto2.vProdMat := 'M';
    fConsProduto2.ShowModal;
  end;
end;

end.
