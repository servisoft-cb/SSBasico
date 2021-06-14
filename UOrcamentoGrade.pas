unit UOrcamentoGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, CurrEdit, Buttons, Db,
  DBTables, MemTable, Grids, DBVGrids, DBGrids;

type
  TfOrcamentoGrade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    VDBGrid1: TVDBGrid;
    DBLookupComboBox4: TDBLookupComboBox;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrcamentoGrade: TfOrcamentoGrade;

implementation

uses UDM1, UOrcamento, UOrcamentoItens;

{$R *.DFM}

procedure TfOrcamentoGrade.FormShow(Sender: TObject);
begin
  if DM1.tProdutoPrecoGrade.AsBoolean = False then
    begin
      vDBGrid1.Columns[3].Destroy;
      vDBGrid1.Columns[2].Destroy;
    end;
  if fOrcamento.BitBtn14.Tag = 1 then
    begin
      BitBtn1.Enabled := False;
      BitBtn2.Enabled := False;
      DBLookupComboBox4.Enabled := False;
    end
  else
    begin
      BitBtn1.Enabled := True;
      BitBtn2.Enabled := True;
      DBLookupComboBox4.Enabled := True;
      DM1.tProdutoGrade.First;
      if DM1.tProdutoGradeCodGrade.AsInteger > 0 then
        DBLookupComboBox4.KeyValue := DM1.tProdutoGradeCodGrade.AsInteger;
    end;
  BitBtn1Click(Sender);
end;

procedure TfOrcamentoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfOrcamentoGrade.VDBGrid1Enter(Sender: TObject);
begin
  
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrcamentoGrade.VDBGrid1CellClick(Column: TColumn);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;

procedure TfOrcamentoGrade.VDBGrid1ColEnter(Sender: TObject);
begin
 if vDBGrid1.SelectedIndex = 0 then
   vDBGrid1.SelectedIndex := 1;
end;


procedure TfOrcamentoGrade.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfOrcamentoGrade.BitBtn1Click(Sender: TObject);
begin
  if fOrcamento.BitBtn14.Tag = 1 then
    DBLookupComboBox4.KeyValue := fOrcamento.tAuxOrcamentoGradeCodGrade.AsInteger
  else
  if fOrcamento.tAuxOrcamentoGrade.RecordCount > 0 then
    ShowMessage('Já existe a grade gerada para este item!')
  else
  if DBLookupComboBox4.Text <> '' then
    begin
      DM1.tProdutoTam.First;
      while not DM1.tProdutoTam.Eof do
        begin
          fOrcamento.tAuxOrcamentoGrade.Insert;
          fOrcamento.tAuxOrcamentoGradeNumOrcamento.AsInteger := DM1.tOrcamentoNumOrcamento.AsInteger;
          fOrcamento.tAuxOrcamentoGradeCodGrade.AsInteger     := DM1.tProdutoTamCodGrade.AsInteger;
          fOrcamento.tAuxOrcamentoGradePosicao.AsInteger      := DM1.tProdutoTamPosicao.AsInteger;
          fOrcamento.tAuxOrcamentoGradeTamanho.AsString       := DM1.tProdutoTamlkTamanho.AsString;
          fOrcamento.tAuxOrcamentoGrade.Post;
          DM1.tProdutoTam.Next;
        end;
      fOrcamento.tAuxOrcamentoGrade.First;
      VDBGrid1.SetFocus;
    end
  else
    begin
      ShowMessage('Falta informar uma grade!');
      DBLookupComboBox4.SetFocus;
    end;
end;

procedure TfOrcamentoGrade.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrcamentoGrade.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir a grade?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      fOrcamento.tAuxOrcamentoGrade.First;
      while not fOrcamento.tAuxOrcamentoGrade.Eof do
        fOrcamento.tAuxOrcamentoGrade.Delete;
    end;
  DBLookupComboBox4.SetFocus;
end;

end.
