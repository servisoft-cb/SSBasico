unit UEtiqCx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, DbTables, Db, MemTable, Variants, Mask,
  ToolEdit, CurrEdit, DBClient;

type
  TfEtiqCx = class(TForm)
    dsmEtiqueta: TDataSource;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    mEtiqueta: TClientDataSet;
    mEtiquetaCodProduto: TIntegerField;
    mEtiquetaReferencia: TStringField;
    mEtiquetaNome: TStringField;
    mEtiquetaMaterial1: TStringField;
    mEtiquetaMaterial2: TStringField;
    mEtiquetaTamanho: TStringField;
    mEtiquetaTamanho2: TStringField;
    mEtiquetaCodBarra: TStringField;
    mEtiquetaEndFoto: TStringField;
    CurrencyEdit2: TCurrencyEdit;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vMaterial1, vMaterial2, vCodBarra : String;
    procedure Gravar_mEtiqueta;
    procedure Buscar_Material;
    procedure Buscar_CodBarra;
  public
    { Public declarations }
  end;

var
  fEtiqCx: TfEtiqCx;

implementation

uses UDM1, URelEtiqCx, UAgendaTelef, URelEtiqCx2;

{$R *.DFM}


procedure TfEtiqCx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoGrade.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoComb.Close;
  DM1.tProduto.Close;
  DM1.tCBarra.Close;

  Action := Cafree;
end;

procedure TfEtiqCx.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfEtiqCx.BitBtn1Click(Sender: TObject);
var
  i : Integer;
begin
  if CurrencyEdit1.AsInteger <= 0 then
  begin
    ShowMessage('Pedido não informado!');
    exit;
  end;
  DM1.tPedido.IndexFieldNames := 'Pedido';
  if not DM1.tPedido.FindKey([CurrencyEdit1.AsInteger]) then
  begin
    ShowMessage('Pedido não encontrado!');
    exit;
  end;
  mEtiqueta.EmptyDataSet;
  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
  begin
    if (CurrencyEdit2.AsInteger = 0) or ((CurrencyEdit2.AsInteger > 0) and (CurrencyEdit2.AsInteger = DM1.tPedidoItemItem.AsInteger))  then
    begin
      Buscar_Material;
      DM1.tPedidoGrade.First;
      while not DM1.tPedidoGrade.Eof do
      begin
        if (Trim(Edit1.Text) = '') or ((Trim(Edit1.Text) <> '') and (Edit1.Text = DM1.tPedidoGradelkTamanho.AsString)) then
        begin
          Buscar_CodBarra;
          Gravar_mEtiqueta;
        end;
        DM1.tPedidoGrade.Next;
      end;
    end;
    DM1.tPedidoItem.Next;
  end;
  mEtiqueta.First;

  fRelEtiqCx2 := TfRelEtiqCx2.Create(Self);
  if ComboBox1.ItemIndex = 2 then
  begin
    fRelEtiqCx2.RLReport2.Preview;
    fRelEtiqCx2.RLReport2.Free;
  end
  else
  begin
    fRelEtiqCx2.RLReport1.Preview;
    fRelEtiqCx2.RLReport1.Free;
  end;

  FreeAndNil(fRelEtiqCx2);

  {fRelEtiqCx := TfRelEtiqCx.Create(Self);
  fRelEtiqCx.QuickRep1.Preview;
  fRelEtiqCx.QuickRep1.Free;
  FreeAndNil(fRelEtiqCx);}
end;

procedure TfEtiqCx.Gravar_mEtiqueta;
var
  i : Integer;
begin
  for i := 1 to DM1.tPedidoGradeQtd.AsInteger do
  begin
    mEtiqueta.Insert;
    mEtiquetaCodProduto.AsInteger := DM1.tPedidoItemCodProduto.AsInteger;
    mEtiquetaReferencia.AsString  := DM1.tPedidoItemlkReferencia.AsString;
    mEtiquetaNome.AsString        := DM1.tPedidoItemlkNomeProduto.AsString;
    mEtiquetaTamanho.AsString     := DM1.tPedidoGradelkTamanho.AsString;
    mEtiquetaTamanho2.AsString    := '';
    mEtiquetaMaterial1.AsString   := vMaterial1;
    mEtiquetaMaterial2.AsString   := vMaterial2;
    mEtiquetaCodBarra.AsString    := vCodBarra;
    mEtiquetaEndFoto.AsString     := DM1.tPedidoItemlkEndEtiq.AsString;
    mEtiqueta.Post;
  end;
end;

procedure TfEtiqCx.Buscar_Material;
begin
  vMaterial1 := '';
  vMaterial2 := '';
  if not DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]) then
    exit;
  if not DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemCodCombinacao.AsInteger]),[locaseinsensitive]) then
    exit;
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
  begin
    if DM1.tProdutoMatlkCabedal.AsBoolean then
    begin
      if vMaterial1 <> '' then
      begin
        vMaterial2 := DM1.tProdutoMatlkNomeMaterial.AsString;
        if Trim(DM1.tProdutoMatlkNomeCor.AsString) <> '' then
          vMaterial2 := vMaterial2 + ' ' + DM1.tProdutoMatlkNomeCor.AsString;
      end
      else
      begin
        vMaterial1 := DM1.tProdutoMatlkNomeMaterial.AsString;
        if Trim(DM1.tProdutoMatlkNomeCor.AsString) <> '' then
          vMaterial1 := vMaterial1 + ' ' + DM1.tProdutoMatlkNomeCor.AsString;
      end;
    end;
    DM1.tProdutoMat.Next;
  end;
end;

procedure TfEtiqCx.Buscar_CodBarra;
begin
  vCodBarra := '';
  if DM1.tCBarra.Locate('CodProduto;CodCor;CodGrade;Posicao',
    VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoGradeCodGrade.AsInteger,DM1.tPedidoGradePosicao.AsInteger]),[locaseinsensitive]) then
    vCodBarra := DM1.tCBarraCodBarra.AsString;
end;

procedure TfEtiqCx.FormShow(Sender: TObject);
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoMat.Open;
  DM1.tCBarra.Open;
end;

end.
