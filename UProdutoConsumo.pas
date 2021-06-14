unit UProdutoConsumo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxLookup, Buttons, Grids, DBGrids, RXDBCtrl, DBVGrids, ExtCtrls,
  Db, DBTables, MemTable, Mask, ToolEdit, CurrEdit, variants;

type
  TfProdutoConsumo = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    SpeedButton7: TSpeedButton;
    GroupBox1: TGroupBox;
    VDBGrid1: TVDBGrid;
    Panel1: TPanel;
    StaticText1: TStaticText;
    Label2: TLabel;
    StaticText2: TStaticText;
    Label3: TLabel;
    BitBtn6: TBitBtn;
    mProdutoGrade: TMemoryTable;
    mProdutoGradeCodGrade: TIntegerField;
    mProdutoGradePosicao: TIntegerField;
    mProdutoGradeQtd: TFloatField;
    mProdutoGradelkTamanho: TStringField;
    dsmProdutoGrade: TDataSource;
    BitBtn15: TBitBtn;
    GroupBox2: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    GroupBox3: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    mProdutoGradeTamanhoMat: TStringField;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    qTamanho: TQuery;
    qTamanhoPosicao: TIntegerField;
    qTamanhoTamanho: TStringField;
    mProdutoGradelkTamanhoMat: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure mProdutoGradeBeforeInsert(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdutoConsumo: TfProdutoConsumo;

implementation

uses UDM1, UProduto, UGrade, UProdutoMat;

{$R *.DFM}

procedure TfProdutoConsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BitBtn15.Tag := 0;
  Action := Cafree;
end;

procedure TfProdutoConsumo.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioGrade.AsBoolean then
    begin
      fGrade := TfGrade.Create(Self);
      fGrade.ShowModal;
    end
  else
    ShowMessage('Usu�rio "' + DM1.tUsuarioUsuario.AsString + '" n�o autorizado a abrir formul�rio de grades!');
end;

procedure TfProdutoConsumo.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoConsumo.mProdutoGradeBeforeInsert(DataSet: TDataSet);
begin
  if mProdutoGrade.RecordCount >= DM1.tGradeItem.RecordCount then
    begin
      BitBtn10.SetFocus;
      Abort;
    end;
end;

procedure TfProdutoConsumo.BitBtn10Click(Sender: TObject);
var
  vGravar : Boolean;
begin
  vGravar := True;
  if fProdutoMat.tProdutoMFichaTecnicaConsPorTam.AsBoolean then
    begin
      mProdutoGrade.First;
      while not mProdutoGrade.Eof do
        begin
          if mProdutoGradelkTamanhoMat.AsString = '' then
            begin
              ShowMessage('Falta informar o tamanho do material!');
              vGravar := False;
              mProdutoGrade.Last;
            end
          else
          if not fProdutoMat.tProdutoTamM.Locate('CodProduto;Tamanho',VarArrayOf([fProdutoMat.tProdutoMCodigo.AsInteger,mProdutoGradelkTamanhoMat.AsString]),[locaseinsensitive]) then
            begin
              ShowMessage('Tamanho do material ' + mProdutoGradelkTamanhoMat.AsString + ' n�o cadastrado!');
              vGravar := False;
              mProdutoGrade.Last;
            end;
          mProdutoGrade.Next;
        end;
    end;
  if not vGravar then
    ShowMessage('Possui tamanhos n�o cadastrados no material')
  else
  if RxDBLookupCombo1.Text <> '' then
    begin
      DM1.tProdutoConsumo.SetKey;
      DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
      DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoCorCodCor.AsInteger;
      DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
      DM1.tProdutoConsumoCodGrade.AsInteger      := RxDBLookupCombo1.KeyValue;
      if DM1.tProdutoConsumo.GotoKey then
        ShowMessage('Grade j� cadastrada')
      else
        begin
          DM1.tProdutoConsumo.Insert;
          DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
          DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoCorCodCor.AsInteger;
          DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
          DM1.tProdutoConsumoCodGrade.AsInteger      := RxDBLookupCombo1.KeyValue;
          DM1.tProdutoConsumoConsumo.AsFloat         := 0;
          DM1.tProdutoConsumo.Post;
          DM1.tProdutoConsumo.Edit;
          mProdutoGrade.First;
          while not mProdutoGrade.Eof do
            begin
              DM1.tProdutoConsumoItem.Insert;
              DM1.tProdutoConsumoItemCodProduto.AsInteger    := DM1.tProdutoConsumoCodProduto.AsInteger;
              DM1.tProdutoConsumoItemCodCorProduto.AsInteger := DM1.tProdutoConsumoCodCorProduto.AsInteger;
              DM1.tProdutoConsumoItemItemMaterial.AsInteger  := DM1.tProdutoConsumoItemMaterial.AsInteger;
              DM1.tProdutoConsumoItemCodGrade.AsInteger      := DM1.tProdutoConsumoCodGrade.AsInteger;
              DM1.tProdutoConsumoItemPosicao.AsInteger       := mProdutoGradePosicao.AsInteger;
              DM1.tProdutoConsumoItemConsumo.AsFloat         := mProdutoGradeQtd.AsFloat;
              DM1.tProdutoConsumoItemTamanhoMat.AsString     := mProdutoGradelkTamanhoMat.AsString;
              DM1.tProdutoConsumoItem.Post;
              DM1.tProdutoConsumoConsumo.AsFloat             := DM1.tProdutoConsumoConsumo.AsFloat + mProdutoGradeQtd.AsFloat;
              mProdutoGrade.Next;
            end;
          DM1.tProdutoConsumo.Post;
        end;
      BitBtn15.Tag := 0;
      RxDBLookupCombo1.ReadOnly := False;
      mProdutoGrade.EmptyTable;
      RxDBLookupCombo1.ClearValue;
      RxDBLookupCombo1.SetFocus;
    end;
end;

procedure TfProdutoConsumo.BitBtn11Click(Sender: TObject);
begin
  RxDBLookupCombo1.ReadOnly := False;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo1.SetFocus;
  mProdutoGrade.EmptyTable;
  BitBtn15.Tag := 0;
  CurrencyEdit1.Clear;
end;

procedure TfProdutoConsumo.VDBGrid1Enter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfProdutoConsumo.BitBtn15Click(Sender: TObject);
begin
  if BitBtn15.Tag = 1 then
    ShowMessage('J� existe uma grade para ser alterada, confirme antes de alterar outra')
  else
  if DM1.tProdutoConsumoCodGrade.AsInteger > 0 then
    begin
      BitBtn15.Tag := 1;
      RxDBLookupCombo1.KeyValue := DM1.tProdutoConsumoCodGrade.AsInteger;
      RxDBLookupCombo1.ReadOnly := True;
      DM1.tProdutoConsumoItem.First;
      while not DM1.tProdutoConsumoItem.Eof do
        begin
          mProdutoGrade.Insert;
          mProdutoGradeCodGrade.AsInteger   := DM1.tProdutoConsumoItemCodGrade.AsInteger;
          mProdutoGradePosicao.AsInteger    := DM1.tProdutoConsumoItemPosicao.AsInteger;
          mProdutoGradeQtd.AsFloat          := DM1.tProdutoConsumoItemConsumo.AsFloat;
          mProdutoGradeTamanhoMat.AsString := DM1.tProdutoConsumoItemTamanhoMat.AsString;
          mProdutoGrade.Post;
          DM1.tProdutoConsumoItem.Delete;
        end;
      DM1.tProdutoConsumo.Delete;
      mProdutoGrade.First;
      VDBGrid1.SetFocus;
    end;
end;

procedure TfProdutoConsumo.BitBtn12Click(Sender: TObject);
begin
  if BitBtn15.Tag = 1 then
    ShowMessage('N�o pode excluir, porque tem registro sendo alterado')
  else
    begin
      if MessageDlg('Deseja realmente excluir esta grade?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          DM1.tProdutoConsumoItem.First;
          while not DM1.tProdutoConsumoItem.Eof do
            DM1.tProdutoConsumoItem.Delete;
          DM1.tProdutoConsumo.Delete;
        end;
    end;
end;

procedure TfProdutoConsumo.FormShow(Sender: TObject);
begin
  qTamanho.Close;
  if DM1.tProdutoMatCodMaterial.AsInteger > 0 then
    begin
      qTamanho.Params[0].AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
      qTamanho.Open;
    end;
  Label2.Caption        := DM1.tProdutoMatlkNomeMaterial.AsString;
  Label3.Caption        := DM1.tProdutoMatlkNomeCor.AsString;
end;

procedure TfProdutoConsumo.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfProdutoConsumo.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfProdutoConsumo.GroupBox1Enter(Sender: TObject);
begin
  if mProdutoGrade.RecordCount < 1 then
    BitBtn1Click(Sender);
  //else
    //VDBGrid1.Columns[2].ReadOnly := not(fProdutoMat.tProdutoMLancaGrade.AsBoolean);
end;

procedure TfProdutoConsumo.BitBtn1Click(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text <> '') and (Bitbtn15.Tag <> 1) then
    begin
      DM1.tProdutoConsumo.SetKey;
      DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoCodigo.AsInteger;
      DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoCorCodCor.AsInteger;
      DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
      DM1.tProdutoConsumoCodGrade.AsInteger      := RxDBLookupCombo1.KeyValue;
      if DM1.tProdutoConsumo.GotoKey then
        begin
          ShowMessage('Esta grade j� esta lan�ada');
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo1.SetFocus;
        end
      else
        begin
          mProdutoGrade.EmptyTable;
          DM1.tGrade.IndexFieldNames := 'Codigo';
          DM1.tGrade.SetKey;
          DM1.tGradeCodigo.AsInteger := RxDBLookupCombo1.KeyValue;
          if DM1.tGrade.GotoKey then
            begin
              DM1.tGradeItem.First;
              while not DM1.tGradeItem.Eof do
                begin
                  mProdutoGrade.Insert;
                  mProdutoGradeCodGrade.AsInteger := DM1.tGradeItemCodGrade.AsInteger;
                  mProdutoGradePosicao.AsInteger  := DM1.tGradeItemPosicao.AsInteger;
                  mProdutoGradeQtd.AsFloat        := 0;
                  if fProdutoMat.tProdutoMLancaGrade.AsBoolean then
                    mProdutoGradeQtd.AsFloat      := CurrencyEdit1.Value;
                  mProdutoGrade.Post;
                  DM1.tGradeItem.Next;
                end;
            end;
          mProdutoGrade.First;
        end;
    end;
end;

end.
