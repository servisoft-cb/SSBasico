unit UCopiaProdCliCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Buttons, DB, DBTables;

type
  TfCopiaProdCliCor = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qCor: TQuery;
    dsqCor: TDataSource;
    qCorCodCor: TIntegerField;
    qCorCodProduto: TIntegerField;
    Label2: TLabel;
    qCorNome: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCopiaProdCliCor: TfCopiaProdCliCor;

implementation

uses UDM1, UProduto;

{$R *.dfm}

procedure TfCopiaProdCliCor.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfCopiaProdCliCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCor.Close;
  Action := Cafree;
end;

procedure TfCopiaProdCliCor.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> ''  then
    begin
      if RxDBLookupCombo1.KeyValue = fProduto.tProdutoCor2CodCor.AsInteger then
        ShowMessage('Esta cor é a original, não pode copiar ela mesma!')
      else
        begin
          fProduto.tProdutoCli2.First;
          while not fProduto.tProdutoCli2.Eof do
            begin
              DM1.tProdutoCli.SetKey;
              DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoCliCodCor.AsInteger     := RxDBLookupCombo1.KeyValue;
              DM1.tProdutoCliCodCliente.AsInteger := fProduto.tProdutoCli2CodCliente.AsInteger;
              DM1.tProdutoCliCodProdCli.AsString  := fProduto.tProdutoCli2CodProdCli.AsString;
              DM1.tProdutoCliCodGrade.AsInteger   := fProduto.tProdutoCli2CodGrade.AsInteger;
              DM1.tProdutoCliPosicao.AsInteger    := fProduto.tProdutoCli2Posicao.AsInteger;
              if not DM1.tProdutoCli.GotoKey then
                begin
                  DM1.tProdutoCli.Insert;
                  DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoCliCodCor.AsInteger     := RxDBLookupCombo1.KeyValue;
                  DM1.tProdutoCliCodCliente.AsInteger := fProduto.tProdutoCli2CodCliente.AsInteger;
                  DM1.tProdutoCliCodProdCli.AsString  := fProduto.tProdutoCli2CodProdCli.AsString;
                  DM1.tProdutoCliCodGrade.AsInteger   := fProduto.tProdutoCli2CodGrade.AsInteger;
                  DM1.tProdutoCliPosicao.AsInteger    := fProduto.tProdutoCli2Posicao.AsInteger;
                  Dm1.tProdutoCliNomeProdCli.AsString := fProduto.tProdutoCli2NomeProdCli.AsString;
                  DM1.tProdutoCliCodCorCli.AsInteger  := fProduto.tProdutoCli2CodCorCli.AsInteger;
                  Dm1.tProdutoCliTamProdCli.AsString  := fProduto.tProdutoCli2TamProdCli.AsString;
                  DM1.tProdutoCli.Post;
                end;
              fProduto.tProdutoCli2.Next;
            end;
        end;
      DM1.tProdutoCli.Refresh;
      fProduto.tProdutoCli2.Refresh;
      Close;
    end
  else
    ShowMessage('Falta informar a cor!');
end;

procedure TfCopiaProdCliCor.FormShow(Sender: TObject);
begin
  Label2.Caption := 'Copiar da cor ' + fProduto.tProdutoCor2lkNomeCor.AsString;
  qCor.Close;
  qCor.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
  qCor.Open;
end;

end.
