unit UEtiqRotulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, DbTables, Db, MemTable, Variants, Mask,
  ToolEdit, CurrEdit, DBClient, Grids, DBGrids, SMDBGrid, QuickRpt, Qrctrls, printers;

type
  TfEtiqRotulo = class(TForm)
    dsmEtiqueta: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    mEtiqueta: TClientDataSet;
    mEtiquetaCodProduto: TIntegerField;
    mEtiquetaReferencia: TStringField;
    mEtiquetaNome: TStringField;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    mEtiquetaData: TDateField;
    mEtiquetaQtd: TIntegerField;
    mEtiquetaPedidoCliente: TStringField;
    mEtiquetaPedido: TIntegerField;
    mEtiquetaItem: TIntegerField;
    mEtiquetaMaterial1: TStringField;
    mEtiquetaMaterial2: TStringField;
    mEtiquetaEndFoto: TStringField;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vMaterial1, vMaterial2 : String;
    procedure Gravar_mEtiqueta;
    procedure Buscar_Material;
  public
    { Public declarations }
  end;

var
  fEtiqRotulo: TfEtiqRotulo;

implementation

uses UDM1, URelEtiqRotulo2;

{$R *.DFM}

procedure TfEtiqRotulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoGrade.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoCor.Close;
  DM1.tProdutoComb.Close;
  DM1.tProduto.Close;

  Action := Cafree;
end;

procedure TfEtiqRotulo.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfEtiqRotulo.BitBtn1Click(Sender: TObject);
var
  i : Integer;
begin
  if mEtiqueta.IsEmpty then
  begin
    ShowMessage('Não existe registro para imprimir!');
    exit;
  end;

  DM1.tFilial.Locate('Codigo',1,[loCaseInsensitive]);

  mEtiqueta.First;
  fRelEtiqRotulo2 := TfRelEtiqRotulo2.Create(Self);
  fRelEtiqRotulo2.RLReport1.Preview;
  fRelEtiqRotulo2.RLReport1.Free;
  FreeAndNil(fRelEtiqRotulo2);
end;

procedure TfEtiqRotulo.Gravar_mEtiqueta;
begin
  mEtiqueta.Insert;
  mEtiquetaCodProduto.AsInteger   := DM1.tPedidoItemCodProduto.AsInteger;
  mEtiquetaReferencia.AsString    := DM1.tPedidoItemlkReferencia.AsString;
  mEtiquetaNome.AsString          := DM1.tPedidoItemlkNomeProduto.AsString;
  mEtiquetaData.AsDateTime        := DateEdit1.Date;
  mEtiquetaQtd.AsInteger          := DM1.tPedidoItemQtdPares.AsInteger;
  mEtiquetaPedidoCliente.AsString := DM1.tPedidoPedidoCliente.AsString;
  mEtiquetaPedido.AsInteger       := DM1.tPedidoPedido.AsInteger;
  mEtiquetaItem.AsInteger         := DM1.tPedidoItemItem.AsInteger;
  mEtiquetaMaterial1.AsString     := vMaterial1;
  mEtiquetaMaterial2.AsString     := vMaterial2;
  mEtiquetaEndFoto.AsString       := DM1.tPedidoItemlkEndEtiq.AsString;
  mEtiqueta.Post;
end;

procedure TfEtiqRotulo.Buscar_Material;
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

procedure TfEtiqRotulo.FormShow(Sender: TObject);
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoMat.Open;
  
  DateEdit1.Date := Date;
end;

procedure TfEtiqRotulo.BitBtn2Click(Sender: TObject);
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
      Gravar_mEtiqueta;
    end;
    DM1.tPedidoItem.Next;
  end;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit1.SetFocus;
end;

procedure TfEtiqRotulo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    CheckBox1.Visible := not(CheckBox1.Visible);
end;

end.
