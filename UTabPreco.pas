unit UTabPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, DBTables,
  RxLookup, db, ToolEdit, CurrEdit, Grids, DBGrids, RXDBCtrl, RXCtrls, Menus, Variants, DBFilter, SMDBGrid;

type
  TfTabPreco = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    qCorRef: TQuery;
    qCorRefCodCor: TIntegerField;
    qCorRefNome: TStringField;
    dsqCorRef: TDataSource;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    StaticText4: TStaticText;
    qProduto: TQuery;
    dsqProduto: TDataSource;
    SMDBGrid1: TSMDBGrid;
    qTabela: TQuery;
    qTabelaCodProduto: TIntegerField;
    qTabelaCodCliente: TIntegerField;
    qTabelaCodCor: TIntegerField;
    qTabelaReferencia: TStringField;
    qTabelaNomeProduto: TStringField;
    qTabelaUnidade: TStringField;
    qTabelaPreco: TFloatField;
    qTabelaDtPreco: TDateField;
    qTabelaPrecoMObra: TFloatField;
    qTabelaDescMaterial: TStringField;
    Panel2: TPanel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    CurrencyEdit3: TCurrencyEdit;
    BitBtn3: TBitBtn;
    RxSpeedButton1: TRxSpeedButton;
    BitBtn6: TBitBtn;
    qProdutoReferencia: TStringField;
    qProdutoDescMaterial: TStringField;
    qProdutoCodigo: TIntegerField;
    Panel3: TPanel;
    StaticText1: TStaticText;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText9: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText3: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    StaticText2: TStaticText;
    DateEdit1: TDateEdit;
    StaticText5: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    StaticText6: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    BitBtn16: TBitBtn;
    dsqTabela: TDataSource;
    qTabelalkNomeCor: TStringField;
    qTabelaInativo: TBooleanField;
    qProdutoNome: TStringField;
    tProdutoCli2: TTable;
    tProdutoCli2CodProduto: TIntegerField;
    tProdutoCli2CodCor: TIntegerField;
    tProdutoCli2CodCliente: TIntegerField;
    tProdutoCli2CodProdCli: TStringField;
    tProdutoCli2CodGrade: TIntegerField;
    tProdutoCli2Posicao: TIntegerField;
    tProdutoCli2NomeProdCli: TStringField;
    tProdutoCli2CodCorCli: TIntegerField;
    tProdutoCli2TamProdCli: TStringField;
    qTabelaclCodProdCli: TStringField;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure Panel4Enter(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure qTabelaCalcFields(DataSet: TDataSet);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    procedure Habilita;
    procedure Grava_TabPreco(CodCor : Integer);
    procedure Grava_Historico;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTabPreco: TfTabPreco;
  vDescMat : String;

implementation

uses UDM1, UDM2, URelTabPreco, UConsTabPreco, UTabPrecoMotivo,
  UTabPrecoHist;

{$R *.DFM}

procedure TfTabPreco.Grava_Historico;
var
  i : Integer;
begin
  DM1.tTabPrecoHist.Refresh;
  DM1.tTabPrecoHist.Last;
  i := DM1.tTabPrecoHistItem.AsInteger;

  DM1.tTabPrecoHist.Insert;
  DM1.tTabPrecoHistCodCliente.AsInteger   := DM1.tTabPrecoCodCliente.AsInteger;
  DM1.tTabPrecoHistCodProduto.AsInteger   := DM1.tTabPrecoCodProduto.AsInteger;
  DM1.tTabPrecoHistCodCor.AsInteger       := DM1.tTabPrecoCodCor.AsInteger;
  DM1.tTabPrecoHistItem.AsInteger         := i + 1;
  DM1.tTabPrecoHistPreco.AsFloat          := DM1.tTabPrecoPreco.AsFloat;
  DM1.tTabPrecoHistPrecoMObra.AsFloat     := DM1.tTabPrecoPrecoMObra.AsFloat;
  if DateEdit1.Date > 0 then
    DM1.tTabPrecoHistDtAlteracao.AsDateTime := DateEdit1.Date
  else
    DM1.tTabPrecoHistDtAlteracao.AsDateTime := Date;
  fTabPrecoMotivo := TfTabPrecoMotivo.Create(Self);
  fTabPrecoMotivo.ShowModal;
  DM1.tTabPrecoHist.Post;
end;

procedure TfTabPreco.Grava_TabPreco(CodCor : Integer);
begin
  DM1.tTabPreco.SetKey;
  DM1.tTabPrecoCodCliente.AsInteger := RxDBLookupCombo1.KeyValue;
  DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
  DM1.tTabPrecoCodCor.AsInteger     := CodCor;
  if DM1.tTabPreco.GotoKey then
    begin
      DM1.tTabPreco.Edit;
      if (StrToFloat(FormatFloat('0.000',CurrencyEdit1.Value)) <> StrToFloat(FormatFloat('0.000',DM1.tTabPrecoPreco.AsFloat))) or
         (StrToFloat(FormatFloat('0.000',CurrencyEdit2.Value)) <> StrToFloat(FormatFloat('0.000',DM1.tTabPrecoPrecoMObra.AsFloat))) then
        Grava_Historico;
    end
  else
    begin
      DM1.tTabPreco.Insert;
      DM1.tTabPrecoCodCliente.AsInteger := RxDBLookupCombo1.KeyValue;
      DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tTabPrecoCodCor.AsInteger     := CodCor;
    end;
  vDtPreco := DateEdit1.Date;
  DM1.tTabPrecoPreco.AsFloat        := CurrencyEdit1.Value;
  DM1.tTabPrecoPrecoMObra.AsFloat   := CurrencyEdit2.Value;
  DM1.tTabPrecoDtPreco.AsDateTime   := DateEdit1.Date;
  DM1.tTabPreco.Post;
end;

procedure TfTabPreco.Habilita;
begin
  RxDBLookupCombo1.Enabled      := not(RxDBLookupCombo1.Enabled);
  RxDBLookupCombo5.Enabled      := not(RxDBLookupCombo5.Enabled);
  Panel4.Enabled                := not(Panel4.Enabled);
end;

procedure TfTabPreco.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfTabPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qProduto.Close;
  qTabela.Close;
  if Screen.FormCount < 3 then
    begin
      DM1.tCliente.Close;
      DM1.tTabPreco.Close;
      DM1.tTabPrecoHist.Close;
      DM1.tProduto.Close;
      DM1.tProdutoCor.Close;
    end;
  Action := Cafree;
end;

procedure TfTabPreco.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tcor.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar a cor antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfTabPreco.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo4.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit4.Clear;
end;

procedure TfTabPreco.BitBtn9Click(Sender: TObject);
begin
  if DM1.tUsuarioExcTabPreco.AsBoolean then
    begin
      if qTabelaCodProduto.AsInteger > 0 then
        begin
          DM1.tTabPreco.SetKey;
          DM1.tTabPrecoCodCliente.AsInteger := qTabelaCodCliente.AsInteger;
          DM1.tTabPrecoCodProduto.AsInteger := qTabelaCodProduto.AsInteger;
          DM1.tTabPrecoCodCor.AsInteger     := qTabelaCodCor.AsInteger;
          if not DM1.tTabPreco.GotoKey then
            begin
              ShowMessage('Registro já excluido!');
              exit;
            end;
          if DM1.tTabPreco.RecordCount > 0 then
            begin
              if MessageDlg('Deseja excluir este produto da tabela de preço?',mtConfirmation,
                 [mbOK,mbNo],0) = mrOK then
                DM1.tTabPreco.Delete;
            end;
          BitBtn3Click(Sender);
        end;
    end
  else
    ShowMessage('Usuário não autorizado a fazer exclusão');
end;

procedure TfTabPreco.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    begin
      if DM1.tProduto.Locate('Codigo',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
        begin
          CurrencyEdit4.AsInteger := RxDBLookupCombo2.KeyValue;
          // monta a query da cor da referência
          DM1.tProdutoCor.Refresh;
          qCorRef.Active              := False;
          qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
          qCorRef.Active              := True;
        end;
    end;
end;

procedure TfTabPreco.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfTabPreco.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  if RxDBLookupCombo1.Text <> '' then
    begin
      RxDBLookupCombo5.KeyValue := RxDBLookupCombo1.KeyValue;
      CurrencyEdit3.AsInteger   := RxDBLookupCombo1.KeyValue;
    end;
end;

procedure TfTabPreco.BitBtn7Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    begin
      ShowMessage('Falta informar o cliente!');
      exit;
    end;
  if DateEdit1.Date < 1 then
    begin
      ShowMessage('Falta informar a data !');
      exit;
    end;

  if (RxDBLookupCombo2.Text <> '')  and
     ((CurrencyEdit1.Value > 0) or (CurrencyEdit2.Value > 0)) and (DateEdit1.Date > 1) then
    begin
      if DM1.tProduto.Locate('Codigo',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
        begin
          if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) and
             (RxDBLookupCombo4.Text = '') then
            ShowMessage('Este produto o preço é por cor, é obrigatório informar a cor!')
          else
          if DM1.tProdutoCor.RecordCount > 0 then
            begin
              if RxDBLookupCombo4.Text <> '' then
                Grava_TabPreco(RxDBLookupCombo4.KeyValue)
              else
                begin
                  DM1.tProdutoCor.First;
                  while not DM1.tProdutoCor.Eof do
                    begin
                      Grava_TabPreco(DM1.tProdutoCorCodCor.AsInteger);
                      DM1.tProdutoCor.Next;
                    end;
                end;
            end
          else
            Grava_TabPreco(0);
          BitBtn3Click(Sender);
         qTabela.Locate('CodProduto',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);
        end
      else
        ShowMessage('Referência não cadastrada');
      BitBtn8Click(Sender);
    end
  else
    ShowMessage('Falta "Referência, Preço ou Data"');
  CurrencyEdit4.SetFocus;
end;

procedure TfTabPreco.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tCliente.Open;
  DM1.tTabPreco.Open;
  DM1.tTabPrecoHist.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  tProdutoCli2.Open;
  tProdutoCli2.Refresh;

  DateEdit1.Date := Date;
  qProduto.Open;
end;

procedure TfTabPreco.Imprimir1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      fRelTabPreco := TfRelTabPreco.Create(Self);
      fRelTabPreco.QuickRep1.Print;
      fRelTabPreco.QuickRep1.Free;
    end
  else
    ShowMessage('Você deve selecionar um cliente p/ gerar a impressão!');
end;

procedure TfTabPreco.Visualizar1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      fRelTabPreco := TfRelTabPreco.Create(Self);
      fRelTabPreco.QuickRep1.Preview;
      fRelTabPreco.QuickRep1.Free;
    end
  else
    ShowMessage('Você deve selecionar um cliente p/ gerar a impressão!');
end;

procedure TfTabPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F2 then
    begin
      fConsTabPreco := TfConsTabPreco.Create(Self);
      fConsTabPreco.ShowModal;
    end;
end;

procedure TfTabPreco.RxDBLookupCombo4Enter(Sender: TObject);
begin
  if RxDBLookupCombo2.Text = '' then
    begin
      ShowMessage('Falta infomar a referência!');
      RxDBLookupCombo2.SetFocus;
    end;
end;

procedure TfTabPreco.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Fantasia';
end;

procedure TfTabPreco.RxDBLookupCombo5Exit(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
  if RxDBLookupCombo5.Text <> '' then
    RxDBLookupCombo1.KeyValue := RxDBLookupCombo5.KeyValue;
end;

procedure TfTabPreco.CurrencyEdit3Exit(Sender: TObject);
begin
  if CurrencyEdit3.AsInteger > 0 then
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      if DM1.tCliente.FindKey([CurrencyEdit3.AsInteger]) then
        begin
          RxDBLookupCombo1.KeyValue := DM1.tClienteCodigo.AsInteger;
          RxDBLookupCombo5.KeyValue := DM1.tClienteCodigo.AsInteger;
        end;
    end;
end;

procedure TfTabPreco.Panel4Enter(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    begin
      ShowMessage('Cliente não foi informado!');
      RxDBLookupCombo1.SetFocus;
    end
  else
    begin
      DM1.tCliente.IndexFieldNames := 'Codigo';
      DM1.tCliente.FindKey([RxDBLookupCombo1.KeyValue]);
    end;
end;

procedure TfTabPreco.CurrencyEdit4Exit(Sender: TObject);
begin
  if (CurrencyEdit4.AsInteger > 0) and (qProduto.Locate('Codigo',CurrencyEdit4.AsInteger,[loCaseInsensitive])) then
    RxDBLookupCombo2.KeyValue := CurrencyEdit4.AsInteger
  else
  if CurrencyEdit4.AsInteger > 0 then 
    RxDBLookupCombo2.ClearValue;
end;

procedure TfTabPreco.BitBtn16Click(Sender: TObject);
begin
  if (qTabelaCodProduto.AsInteger < 1) or (qTabelaInativo.AsBoolean) then
    begin
      ShowMessage('Não existe registro para alteração, ou produto esta inativo!');
      exit;
    end;
  CurrencyEdit4.AsInteger   := qTabelaCodProduto.AsInteger;
  RxDBLookupCombo2.KeyValue := qTabelaCodProduto.AsInteger;
  RxDBLookupCombo2Exit(Sender);
  if qTabelaCodCor.AsInteger > 0 then
    RxDBLookupCombo4.KeyValue := qTabelaCodCor.AsInteger;
  CurrencyEdit1.Value := qTabelaPreco.AsFloat;
  CurrencyEdit2.Value := qTabelaPrecoMObra.AsFloat;
  DateEdit1.Date      := qTabelaDtPreco.AsDateTime;
  CurrencyEdit4.SetFocus;
end;

procedure TfTabPreco.BitBtn3Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    begin
      ShowMessage('Falta informar o cliente!');
      CurrencyEdit3.SetFocus;
      Exit;
    end;
  tProdutoCli2.Refresh;
  qTabela.Close;
  qTabela.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
  qTabela.Open;
end;

procedure TfTabPreco.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn16Click(Sender);
end;

procedure TfTabPreco.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (qTabelaCodProduto.AsInteger > 0) and (qTabelaInativo.AsBoolean) then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

procedure TfTabPreco.qTabelaCalcFields(DataSet: TDataSet);
begin
  if tProdutoCli2.Locate('CodProduto;CodCor;CodCliente',VarArrayOf([qTabelaCodProduto.AsInteger,qTabelaCodCor.AsInteger,qTabelaCodCliente.AsInteger]),[locaseinsensitive]) then
    qTabelaclCodProdCli.AsString := tProdutoCli2CodProdCli.AsString;
end;

procedure TfTabPreco.SMDBGrid1DblClick(Sender: TObject);
begin
  if (DM1.tTabPreco.Locate('CodCliente;CodProduto;CodCor',VarArrayOf([qTabelaCodCliente.AsInteger,qTabelaCodProduto.AsInteger,qTabelaCodCor.AsInteger]),[locaseinsensitive]))
     and (DM1.tTabPrecoHist.RecordCount > 0) then
    begin
      fTabPrecoHist := TfTabPrecoHist.Create(Self);
      fTabPrecoHist.ShowModal;
    end
  else
    ShowMessage('Não existe histórico deste produto!');
end;

end.
