unit uCopiaProdCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, DB, DBTables, Buttons;

type
  TfCopiaProdCli = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qCliente: TQuery;
    qClienteCodCliente: TIntegerField;
    qClienteCodProduto: TIntegerField;
    qClientelkNomeCliente: TStringField;
    dsqCliente: TDataSource;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn17: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCopiaProdCli: TfCopiaProdCli;

implementation

uses UProduto, UDM1;

{$R *.dfm}

procedure TfCopiaProdCli.FormShow(Sender: TObject);
begin
  qCliente.Close;
  if fProduto.tProdutoCli2CodCliente.AsInteger > 0 then
    begin
      qCliente.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qCliente.Params[1].AsInteger := fProduto.tProdutoCli2CodCor.AsInteger;
      qCliente.Open;
    end;
end;

procedure TfCopiaProdCli.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfCopiaProdCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCliente.Close;
  Action := Cafree;
end;

procedure TfCopiaProdCli.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfCopiaProdCli.BitBtn17Click(Sender: TObject);
begin
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
    begin
      fProduto.tProdutoCli2.First;
      while not fProduto.tProdutoCli2.Eof do
        begin
          if fProduto.tProdutoCli2CodCliente.AsInteger = RxDBLookupCombo1.KeyValue then
            begin
              DM1.tProdutoCli.SetKey;
              DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoCliCodCor.AsInteger     := fProduto.tProdutoCli2CodCor.AsInteger;
              DM1.tProdutoCliCodCliente.AsInteger := RxDBLookupCombo2.KeyValue;
              DM1.tProdutoCliCodProdCli.AsString  := fProduto.tProdutoCli2CodProdCli.AsString;
              DM1.tProdutoCliCodGrade.AsInteger   := fProduto.tProdutoCli2CodGrade.AsInteger;
              DM1.tProdutoCliPosicao.AsInteger    := fProduto.tProdutoCli2Posicao.AsInteger;
              if not DM1.tProdutoCli.GotoKey then
                begin
                  DM1.tProdutoCli.Insert;
                  DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoCliCodCor.AsInteger     := fProduto.tProdutoCli2CodCor.AsInteger;
                  DM1.tProdutoCliCodCliente.AsInteger := RxDBLookupCombo2.KeyValue;
                  DM1.tProdutoCliCodProdCli.AsString  := fProduto.tProdutoCli2CodProdCli.AsString;
                  Dm1.tProdutoCliNomeProdCli.AsString := fProduto.tProdutoCli2NomeProdCli.AsString;
                  DM1.tProdutoCliCodCorCli.AsInteger  := fProduto.tProdutoCli2CodCorCli.AsInteger;
                  Dm1.tProdutoCliTamProdCli.AsString  := fProduto.tProdutoCli2TamProdCli.AsString;
                  DM1.tProdutoCliCodGrade.AsInteger   := fProduto.tProdutoCli2CodGrade.AsInteger;
                  DM1.tProdutoCliPosicao.AsInteger    := fProduto.tProdutoCli2Posicao.AsInteger;
                  DM1.tProdutoCli.Post;
                end;
            end;
          fProduto.tProdutoCli2.Next;
        end;
      DM1.tProdutoCli.Refresh;
      fProduto.tProdutoCli2.Refresh;
    end
  else
    ShowMessage('Falta informar um cliente!');
end;

end.
