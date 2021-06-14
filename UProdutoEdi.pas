unit UProdutoEdi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Buttons, ExtCtrls, DB, DBTables, Mask,
  ToolEdit, CurrEdit;

type
  TfProdutoEDI = class(TForm)
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label1: TLabel;
    Edit3: TEdit;
    RxDBLookupCombo13: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    Label5: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit1: TCurrencyEdit;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBLookupCombo14Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo11Exit(Sender: TObject);
  private
    { Private declarations }
    vCodGrade, vPosicao : Integer;
    procedure Grava_ProdutoCli(CodProd : String; Tamanho : String);
  public
    vCodCorEdi : Integer;
    { Public declarations }
  end;

var
  fProdutoEDI: TfProdutoEDI;

implementation

uses UDM1, UProduto, UCliente;

{$R *.dfm}

procedure TfProdutoEDI.Grava_ProdutoCli(CodProd : String; Tamanho : String);
begin
  if Tamanho <> '' then
    CodProd := CodProd + '-' + Tamanho;
  if DM1.tProdutoCli.Locate('CodCliente;CodProdCli;CodGrade;Posicao',VarArrayOf([RxDBLookupCombo11.KeyValue,CodProd,vCodGrade,vPosicao]),[locaseinsensitive]) then
    ShowMessage('Produto do cliente já esta cadastrado ' + CodProd)
  else
    begin
      DM1.tProdutoCli.Insert;
      DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      if DM1.tProdutoLancaCor.AsBoolean then
        DM1.tProdutoCliCodCor.AsInteger   := vCodCorEdi
      else
        DM1.tProdutoCliCodCor.AsInteger   := 0;
      DM1.tProdutoCliCodCliente.AsInteger := RxDBLookupCombo11.KeyValue;
      DM1.tProdutoCliCodProdCli.AsString  := CodProd;
      DM1.tProdutoCliCodGrade.AsInteger   := vCodGrade;
      DM1.tProdutoCliPosicao.AsInteger    := vPosicao;
      DM1.tProdutoCli.Post;
      fProduto.tProdutoCli2.Refresh;
    end;
end;

procedure TfProdutoEDI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoEDI.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoEDI.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfProdutoEDI.BitBtn2Click(Sender: TObject);
var
  vCodigoAux : String;
begin
  if (RxDBLookupCombo11.Text = '') or (Edit3.Text = '') then
    ShowMessage('Falta informar o cliente ou o código do produto')
  else
  if (DM1.tProdutoGrade.RecordCount > 0) and (RxDBLookupCombo13.Text = '') then
    ShowMessage('Falta informar a grade!')
  else
  if (DM1.tProdutoGrade.RecordCount > 0) and (RxDBLookupCombo14.Text = '') then
    ShowMessage('Falta informar o tamanho!')
  else
  if (Dm1.tProdutoGrade.RecordCount < 1) and (RxDBLookupCombo13.Text <> '') then
    ShowMessage('Produto não pode ter grade informada!')
  else
    begin
      vCodGrade := 0;
      vPosicao  := 0;
      vCodigoAux := Edit3.Text; 
      if RxDBLookupCombo13.Text <> '' then
        begin
          vCodGrade := RxDBLookupCombo13.KeyValue;
          vPosicao  := RxDBLookupCombo14.KeyValue;
        end;
      if RxDBLookupCombo14.Text <> '' then
        begin
          if Copy(RxDBLookupCombo14.Text,1,1) = '0' then
            vCodigoAux := vCodigoAux + '-' + Copy(RxDBLookupCombo14.Text,2,(Length(RxDBLookupCombo14.Text) - 1))
          else
            vCodigoAux := vCodigoAux + '-' + RxDBLookupCombo14.Text;
        end;
      Grava_ProdutoCli(vCodigoAux,'');
      RxDBLookupCombo14.ClearValue;
      DM1.tProdutoCli.Refresh;
    end;
  RxDBLookupCombo11.SetFocus;
end;

procedure TfProdutoEDI.RxDBLookupCombo14Enter(Sender: TObject);
begin
  if RxDBLookupCombo13.Text = '' then
    RxDBLookupCombo14.ReadOnly := True
  else
    begin
      RxDBLookupCombo14.ReadOnly := False;
      DM1.tProdutoGrade.Locate('CodGrade',RxDBLookupCombo13.KeyValue,[loCaseInsensitive]);
    end;
end;

procedure TfProdutoEDI.BitBtn1Click(Sender: TObject);
var
  i : Integer;
  vTexto : String;
begin
  if RxDBLookupCombo13.Text = '' then
    begin
      ShowMessage('Falta informar a grade!');
      exit;
    end;
  if RxDBLookupCombo14.Text <> '' then
    begin
      ShowMessage('Para repetir o código não pode informar o tamanho!');
      exit;
    end;

  DM1.tProdutoGrade.Locate('CodGrade',RxDBLookupCombo13.KeyValue,[loCaseInsensitive]);

  i := Length(Trim(Edit3.Text));
  while i > 0 do
    begin
      if copy(Edit3.Text,i,1) = '-' then
        i := -10
      else
        i := i - 1;
    end;
  if i = -10 then
    begin
      ShowMessage('Não informar o hífem e o tamanho, só informar o código antes do hífem!');
      exit;
    end;
  DM1.tProdutoTam.First;
  while not DM1.tProdutoTam.Eof do
    begin
      vTexto := DM1.tProdutoTamlkTamanho.AsString;
      if Copy(DM1.tProdutoTamlkTamanho.AsString,1,1) = '0' then
        vTexto := Copy(DM1.tProdutoTamlkTamanho.AsString,2,Length(DM1.tProdutoTamlkTamanho.AsString)-1);
      vCodGrade := DM1.tProdutoTamCodGrade.AsInteger;
      vPosicao  := DM1.tProdutoTamPosicao.AsInteger;
      Grava_ProdutoCli(Trim(Edit3.Text),vTexto);
      DM1.tProdutoTam.Next;
    end;
  DM1.tProdutoCli.Refresh;
  //fProduto.tProdutoCli2.Refresh;
  Close;
end;

procedure TfProdutoEDI.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'CgcCpf';
end;

procedure TfProdutoEDI.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      if DM1.tCliente.Locate('Codigo',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        begin
          RxDBLookupCombo11.KeyValue := DM1.tClienteCodigo.AsInteger;
          RxDBLookupCombo1.KeyValue  := DM1.tClienteCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Cliente não cadastrado!');
          CurrencyEdit1.SetFocus;
        end;
    end
end;

procedure TfProdutoEDI.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      if RxDBLookupCombo11.Text <> '' then
        vCodClientePos := RxDBLookupCombo11.KeyValue;
      fCliente := TfCliente.Create(Self);
      fCliente.BitBtn8.Visible := True;
      fCliente.ShowModal;
      DM1.tCliente.Refresh;
      if vCodClientePos > 0 then
        begin
          DM1.tCliente.Locate('Codigo',vCodClientePos,[loCaseInsensitive]);
          RxDBLookupCombo11.KeyValue := vCodClientePos;
          CurrencyEdit1.AsInteger    := vCodClientePos;
          RxDBLookupCombo1.KeyValue  := vCodClientePos;
        end;
      vCodClientePos := 0;
      RxDBLookupCombo11.SetFocus;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfProdutoEDI.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      RxDBLookupCombo11.KeyValue := RxDBLookupCombo1.KeyValue;
      CurrencyEdit1.AsInteger    := RxDBLookupCombo1.KeyValue;
    end;
end;

procedure TfProdutoEDI.RxDBLookupCombo11Exit(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
    begin
      CurrencyEdit1.AsInteger := RxDBLookupCombo11.KeyValue;
      CurrencyEdit1Exit(Sender);
    end;
end;

end.
