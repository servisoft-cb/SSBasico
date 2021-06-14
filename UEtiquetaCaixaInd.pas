unit UEtiquetaCaixaInd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, DbTables, Db, MemTable, Mask,
  ToolEdit, CurrEdit, DBClient, RzTabs, DBCtrls, Grids, DBGrids, SMDBGrid, Variants;

type
  TfEtiquetaCaixaInd = class(TForm)
    dsmEtiqueta: TDataSource;
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
    mEtiquetaQtdCopias: TIntegerField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    vMaterial1, vMaterial2, vCodBarra : String;
    F: TextFile;
    F1: TextFile;
    F2: TextFile;
    vNomeFigura : String;
    vArqBat : String;

    procedure Gravar_mEtiqueta;
    procedure Buscar_Material;
    procedure Buscar_CodBarra;

    procedure Imprimir_Argox;
    procedure Salvar_Figura_Argox;

  public
    { Public declarations }
  end;

var
  fEtiquetaCaixaInd: TfEtiquetaCaixaInd;

implementation

uses UDM1, UEscImpressora;

{$R *.DFM}

procedure TfEtiquetaCaixaInd.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfEtiquetaCaixaInd.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfEtiquetaCaixaInd.BitBtn1Click(Sender: TObject);
var
  vCodAnt : Integer;
begin
  if mEtiqueta.IsEmpty then
    exit;

  fEscImpressora := TfEscImpressora.Create(self);
  fEscImpressora.RxDBLookupCombo1.KeyValue := 3;
  fEscImpressora.ShowModal;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);

  vCodAnt := 0;
  mEtiqueta.First;
  while not mEtiqueta.Eof do
  begin
    if vCodAnt <> mEtiquetaCodProduto.AsInteger then
      Salvar_Figura_Argox;
    //Imprimir_Argox;
    vCodAnt := mEtiquetaCodProduto.AsInteger;
    mEtiqueta.Next;
  end;
  Sleep(1000);

  //vCodAnt := 0;
  mEtiqueta.First;
  while not mEtiqueta.Eof do
  begin
    //if vCodAnt <> mEtiquetaCodProduto.AsInteger then
    //  Salvar_Figura_Argox;
    Imprimir_Argox;
    //vCodAnt := mEtiquetaCodProduto.AsInteger;
    mEtiqueta.Next;
  end;
      
  CloseFile(F);
end;

procedure TfEtiquetaCaixaInd.Gravar_mEtiqueta;
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
  mEtiquetaQtdCopias.AsInteger  := DM1.tPedidoGradeQtd.AsInteger;
  mEtiqueta.Post;
end;

procedure TfEtiquetaCaixaInd.Buscar_Material;
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

procedure TfEtiquetaCaixaInd.Buscar_CodBarra;
begin
  vCodBarra := '';
  if DM1.tCBarra.Locate('CodProduto;CodCor;CodGrade;Posicao',
    VarArrayOf([DM1.tPedidoItemCodProduto.AsInteger,DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoGradeCodGrade.AsInteger,DM1.tPedidoGradePosicao.AsInteger]),[locaseinsensitive]) then
    vCodBarra := DM1.tCBarraCodBarra.AsString;
end;

procedure TfEtiquetaCaixaInd.FormShow(Sender: TObject);
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoMat.Open;
  DM1.tCBarra.Open;
  DM1.tParametros.Open;
  DM1.tImpressora.Open;
end;

procedure TfEtiquetaCaixaInd.BitBtn2Click(Sender: TObject);
begin
  DM1.tParametros.Edit;
  Panel1.Enabled := True;
  BitBtn4.Enabled := True;
  BitBtn2.Enabled := False;
end;

procedure TfEtiquetaCaixaInd.BitBtn4Click(Sender: TObject);
begin
  DM1.tParametros.Post;
  Panel1.Enabled  := False;
  BitBtn4.Enabled := False;
  BitBtn2.Enabled := True;
end;

procedure TfEtiquetaCaixaInd.BitBtn5Click(Sender: TObject);
begin
  if MessageDlg('Deseja ajustar com os valores padrões?',mtconfirmation,[mbok,mbno],0)=mrNo then
    exit;

  DM1.tParametros.Edit;
  DM1.tParametrosArgox_OffSetBorda.AsInteger := 220;
  DM1.tParametrosArgox_Backfeed.AsInteger    := 259;
  DM1.tParametrosArgox_Temperatura.AsInteger := 8;
  DM1.tParametrosArgox_Velocidade.AsString   := 'C';
  DM1.tParametros.Post;
  DM1.tParametros.Close;
  DM1.tParametros.Open;
end;

procedure TfEtiquetaCaixaInd.BitBtn6Click(Sender: TObject);
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
          if DM1.tPedidoGradeQtd.AsInteger > 0 then
          begin
            Buscar_CodBarra;
            Gravar_mEtiqueta;
          end;
        end;
        DM1.tPedidoGrade.Next;
      end;
    end;
    DM1.tPedidoItem.Next;
  end;
  mEtiqueta.First;
end;

procedure TfEtiquetaCaixaInd.Imprimir_Argox;
var
  vAux : String;
begin
  writeln(F,'c0000');
  writeln(F,'KI503');
  vAux := FormatFloat('0000',DM1.tParametrosArgox_OffSetBorda.AsInteger);
  writeln(F,'O'+vAux);
  vAux := FormatFloat('000',DM1.tParametrosArgox_Backfeed.AsInteger);
  writeln(F,'f'+vAux);
  writeln(F,'KW0400');
  writeln(F,'KI7');
  writeln(F,'V0');
  writeln(F,'L');
  vAux := FormatFloat('00',DM1.tParametrosArgox_Temperatura.AsInteger);
  writeln(F,'H'+vAux);
  writeln(F,'P'+DM1.tParametrosArgox_Velocidade.AsString);
  writeln(F,'A2');
  writeln(F,'D11');
  writeln(F,'1F2205000390012'+mEtiquetaCodBarra.AsString);
  writeln(F,'191100401070156'+mEtiquetaReferencia.AsString);
  writeln(F,'191100400890118'+copy(mEtiquetaNome.AsString,1,15));
  writeln(F,'1Y1100000410163'+vNomeFigura);
  writeln(F,'191100200240118'+copy(mEtiquetaMaterial1.AsString,1,23));
  writeln(F,'191100200110118'+copy(mEtiquetaMaterial2.AsString,1,23));
  writeln(F,'191100201020299BR');
  writeln(F,'191100600710307'+mEtiquetaTamanho.AsString);
  writeln(F,'191100201020365USA');
  writeln(F,'191100600710360');
  writeln(F,'191100200540299UK');
  writeln(F,'191100600230312');
  writeln(F,'191100200540365EUR');
  writeln(F,'191100600230354');
  writeln(F,'1X1100000660295l00980002');
  writeln(F,'1X1100000180295b0098009800020002');
  writeln(F,'1X1100000180343l00020098');
  vAux := FormatFloat('0000',mEtiquetaQtdCopias.AsInteger);
  writeln(F,'Q'+vAux);
  writeln(F,'E');
end;

procedure TfEtiquetaCaixaInd.Salvar_Figura_Argox;
var
  i: Integer;
  vTexto: String;
  vFlag: Boolean;
  vPath: String;
  vRegistro: String;
  vRegistro2: String;
  vArqBat2: String;
  vNome2: String;
  Origem, Destino: string;
begin
  vTexto := mEtiquetaEndFoto.AsString;
  vFlag  := False;
  while not vFlag do
  begin
    i := Pos('\',vTexto);
    if i > 0 then
    begin
      delete(vtexto,1,i);
    end
    else
      vFlag := True;
  end;
  vNomeFigura := UpperCase(vTexto);
  vTexto := vNomeFigura;
  i := 0;
  vFlag := False;
  while not vFlag do
  begin
    i := i + 1;
    if copy(vTexto,i,4) = '.BMP' then
    begin
      Delete(vTexto,i,4);
      vFlag := True;
    end;
    if i >= Length(vTexto) then
      vFlag := True;
  end;
  vNomeFigura := UpperCase(vTexto);

    vArqBat2 := ExtractFilePath(Application.ExeName) + 'Arq.txt';
    AssignFile(F2,vArqBat2);
    ReWrite(F2);
    writeln(F2,'D');
    writeln(F2,'IAB'+UpperCase(vTexto));
    writeln(F2,'');
    writeln(F2,'');
    writeln(F2,'');
    CloseFile(F2);

    vArqBat := ExtractFilePath(Application.ExeName) + 'Figura.bat';
    AssignFile(F1,vArqBat);
    ReWrite(F1);
    vRegistro := 'copy/b ARQ.txt/b +' + UpperCase(mEtiquetaEndFoto.AsString) + '/b ' + DM1.tImpressoraEndereco.AsString;
    Writeln(F1,vRegistro);
    CloseFile(F1);
    winexec(PChar(vArqBat),sw_shownormal);
end;

end.
