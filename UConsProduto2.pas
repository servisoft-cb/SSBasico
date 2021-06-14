unit UConsProduto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, DB, DBTables, Buttons, Grids, DBGrids,
  SMDBGrid, Mask, ToolEdit, ExtCtrls, Menus, RXCtrls, DBClient;

type
  TfConsProduto2 = class(TForm)
    qProduto: TQuery;
    dsqProduto: TDataSource;
    SMDBGrid1: TSMDBGrid;
    qProdutoCodigo: TIntegerField;
    qProdutoNome: TStringField;
    qProdutoReferencia: TStringField;
    qProdutoCodForn: TIntegerField;
    qProdutoNomeForn: TStringField;
    qProdutoInativo: TBooleanField;
    qProdutoNomeGrupo: TStringField;
    qProdutoCodGrupo: TIntegerField;
    qProdutoUnidade: TStringField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    qProdutoLancaCor: TBooleanField;
    Label3: TLabel;
    ComboBox1: TComboBox;
    SpeedButton2: TSpeedButton;
    qProdutoEstMinimo: TFloatField;
    qProdutoEstMaximo: TFloatField;
    mProdutoCor: TClientDataSet;
    mProdutoCorCodProduto: TIntegerField;
    mProdutoCorNomeProduto: TStringField;
    mProdutoCorCodCor: TIntegerField;
    mProdutoCorNomeCor: TStringField;
    mProdutoCorReferencia: TStringField;
    mProdutoCorCodForn: TIntegerField;
    mProdutoCorNomeForn: TStringField;
    mProdutoCorInativo: TBooleanField;
    mProdutoCorCodGrupo: TIntegerField;
    mProdutoCorNomeGrupo: TStringField;
    mProdutoCorUnidade: TStringField;
    mProdutoCorEstMinimo: TFloatField;
    mProdutoCorEstMaximo: TFloatField;
    mProdutoCorQtdEstoque: TFloatField;
    qEstoque: TQuery;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueQtd2: TFloatField;
    tProdutoCor: TTable;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoCorPrCusto: TFloatField;
    tProdutoCorCodPigmento: TStringField;
    tProdutoCorVlrVenda: TFloatField;
    tProdutoCorInativo: TBooleanField;
    tProdutoCorEstMinimo: TFloatField;
    tProdutoCorEstMaximo: TFloatField;
    tProdutoCorlkNomeCor: TStringField;
    dsmProdutoCor: TDataSource;
    qProdutonomesubgrupo: TStringField;
    mProdutoCorNomeSubGrupo: TStringField;
    qProdutoPrecoCor: TBooleanField;
    mProdutoCorPrecoCusto: TFloatField;
    qProdutoPrecoCusto: TFloatField;
    SpeedButton3: TSpeedButton;
    qProdutoVlrVenda: TFloatField;
    mProdutoCorPrecoVenda: TFloatField;
    mProdutoCorCodBarra: TStringField;
    tCBarra: TTable;
    tCBarraCodBarra: TStringField;
    tCBarraCodProduto: TIntegerField;
    tCBarraCodCor: TIntegerField;
    tCBarraCodGrade: TIntegerField;
    tCBarraPosicao: TIntegerField;
    tCBarraTamanho: TStringField;
    tCBarraCodPrincipal: TIntegerField;
    tCBarraCodSeq: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vCodBarra : String;
    procedure Monta_SQL(Ordenar : String);
    procedure Le_qProduto;
    procedure Le_qProduto_Preco;
    procedure Le_qProduto_Etiq;
    procedure Grava_mProdutoCor(CodCor : Integer ; NomeCor : String ; EstMinimo, EstMaximo, Preco : Real);
    procedure Imprimir(Tipo : String);
    procedure Busca_CodBarra(CodCor : Integer);

  public
    { Public declarations }
    vProdMat : String;
  end;

var
  fConsProduto2: TfConsProduto2;

implementation

uses UDM1, uRelConsProduto, uRelConsProdutoGrupo, URelProdutoEtiq;

{$R *.dfm}

procedure TfConsProduto2.Monta_SQL(Ordenar : String);
begin
  qProduto.Close;
  qProduto.SQL.Clear;
  qProduto.SQL.Add('SELECT Dbproduto.Codigo, Dbproduto.Nome, Dbproduto.Referencia, Dbfornecedores.CodForn, Dbfornecedores.NomeForn, ');
  qProduto.SQL.Add(' Dbproduto.Inativo, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbgrupo.Nome NomeGrupo, Dbproduto.CodGrupo, ');
  qProduto.SQL.Add(' dbProduto.Unidade, dbproduto.LancaCor, dbGrupoItem.Nome NomeSubGrupo, dbProduto.PrecoCor, dbProduto.PrecoCusto, dbProduto.VlrVenda ');
  qProduto.SQL.Add('FROM "dbProduto.DB" Dbproduto');
  qProduto.SQL.Add('   LEFT OUTER JOIN "dbFornecedores.DB" Dbfornecedores');
  qProduto.SQL.Add('   ON  (DbProduto.CodFornecedor = Dbfornecedores.CodForn)');
  qProduto.SQL.Add('   LEFT OUTER JOIN "dbGrupo.DB" Dbgrupo');
  qProduto.SQL.Add('   ON  (Dbproduto.CodGrupo = Dbgrupo.Codigo)');
  qProduto.SQL.Add('   LEFT OUTER JOIN "dbGrupoItem.DB" DbgrupoItem');
  qProduto.SQL.Add('   ON  (Dbproduto.CodGrupo = DbgrupoItem.CodGrupo)');
  qProduto.SQL.Add('   AND  (Dbproduto.CodSubGrupo = DbgrupoItem.CodSubGrupo)');
  qProduto.SQL.Add('WHERE  (Dbproduto.ProdMat = '''+vProdMat+''')');
  if dateedit1.date > 1 then
    begin
      qProduto.SQL.Add('   AND (dbProduto.DtCad >= :DtInicial)');
      qProduto.ParamByName('DtInicial').AsDate := DateEdit1.Date;
    end;
  if dateedit2.date > 1 then
    begin
      qProduto.SQL.Add('   AND (dbProduto.DtCad <= :DtFinal)');
      qProduto.ParamByName('DtFinal').AsDate := DateEdit2.Date;
    end;
  if not CheckBox1.Checked then
    qProduto.SQL.Add('   AND ((dbProduto.Inativo = False) or (dbProduto.Inativo is Null))');
  qProduto.SQL.Add(''+Ordenar+'');
  qProduto.Open;
end;

procedure TfConsProduto2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (qProduto.Active) and (qProdutoCodigo.AsInteger > 0) then
    DM1.tProduto.Locate('Codigo',qProdutoCodigo.AsInteger,[loCaseInsensitive]);
  qProduto.Close;
  tCBarra.Close;
  Action := Cafree;
end;

procedure TfConsProduto2.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Monta_SQL('Order By dbProduto.Nome, dbFornecedores.NomeForn');
  Screen.Cursor   := crDefault;
end;

procedure TfConsProduto2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (qProduto.Active) and (qProdutoInativo.AsBoolean) then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

procedure TfConsProduto2.SMDBGrid1TitleClick(Column: TColumn);
begin
  if Column.FieldName = 'Codigo' then
    Monta_SQL('Order By dbProduto.Codigo')
  else
  if Column.FieldName = 'Nome' then
    Monta_SQL('Order By dbProduto.Nome, dbFornecedores.NomeForn')
  else
  if Column.FieldName = 'Unidade' then
    Monta_SQL('Order By dbProduto.Unidade, dbProduto.Nome')
  else
  if Column.FieldName = 'NomeForn' then
    Monta_SQL('Order By dbFornecedores.NomeForn, dbProduto.Referencia, dbProduto.Codigo')
  else
  if Column.FieldName = 'Referencia' then
    Monta_SQL('Order By dbProduto.Referencia, dbProduto.Codigo')
  else
  if Column.FieldName = 'CodForn' then
    Monta_SQL('Order By dbFornecedores.CodForn, dbProduto.Referencia, dbProduto.Codigo')
  else
  if Column.FieldName = 'NomeGrupo' then
    Monta_SQL('Order By dbGrupo.Nome, dbProduto.Referencia, dbProduto.Codigo')
  else
  if Column.FieldName = 'Inativo' then
    Monta_SQL('Order By dbProduto.Inativo, dbProduto.Referencia, dbProduto.Codigo')
  else
  if Column.FieldName = 'LancaCor' then
    Monta_SQL('Order By dbProduto.LancaCor, dbProduto.Referencia, dbProduto.Codigo');
end;

procedure TfConsProduto2.FormShow(Sender: TObject);
var
  i : Integer;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  Label3.Visible    := (vProdMat <> 'P');
  ComboBox1.Visible := (vProdMat <> 'P');
  SpeedButton3.Visible := (vProdMat = 'M');

  if vProdMat = 'P' then
    begin
      for i := 1 to SMDBGrid1.ColCount - 1 do
        begin
          if SMDBGrid1.Columns[i-1].FieldName = 'NomeForn' then
            SMDBGrid1.Columns[i-1].Visible := False;
          if SMDBGrid1.Columns[i-1].FieldName = 'CodForn' then
            SMDBGrid1.Columns[i-1].Visible := False;
        end;
    end;
end;

 procedure TfConsProduto2.SpeedButton1Click(Sender: TObject);
begin
   SMDBGrid1.DisableScroll;
   case ComboBox1.ItemIndex of
     1 : Monta_SQL('Order By dbFornecedores.NomeForn, dbProduto.Referencia, dbProduto.Codigo');
     2 : Monta_SQL('Order By dbGrupos.Nome, dbProduto.Referencia, dbProduto.Codigo');
     3 : Monta_SQL('Order By dbGrupos.Nome, dbGrupoItem.Nome, dbProduto.Referencia, dbProduto.Codigo');
   end;
   fRelConsProduto := tfRelConsProduto.Create(Self);
   fRelConsProduto.RLReport1.Preview;
   fRelConsProduto.RLReport1.Free;
   SMDBGrid1.EnableScroll;
end;

procedure TfConsProduto2.SpeedButton2Click(Sender: TObject);
begin
  Imprimir('C');
end;

procedure TfConsProduto2.Le_qProduto;
begin
  tProdutoCor.Open;
  mProdutoCor.EmptyDataSet;
  qProduto.First;
  while not qProduto.Eof do
  begin
    if qProdutoLancaCor.AsBoolean then
    begin
      tProdutoCor.First;
      while not tProdutoCor.Eof do
      begin
        if (CheckBox1.Checked) or not(tProdutoCorInativo.AsBoolean) then
          Grava_mProdutoCor(tProdutoCorCodCor.AsInteger,tProdutoCorlkNomeCor.AsString, tProdutoCorEstMinimo.AsFloat, tProdutoCorEstMaximo.AsFloat, tProdutoCorPrCusto.AsFloat);
        tProdutoCor.Next;
      end;
    end
    else
      Grava_mProdutoCor(0,'',qProdutoEstMinimo.AsFloat,qProdutoEstMaximo.AsFloat,qProdutoPrecoCusto.AsFloat);

    qProduto.Next;
  end;
end;

procedure TfConsProduto2.Grava_mProdutoCor(CodCor: Integer;
  NomeCor: String ; EstMinimo, EstMaximo, Preco : Real);
begin
  mProdutoCor.Insert;

  mProdutoCorCodProduto.AsInteger  := qProdutoCodigo.AsInteger;
  mProdutoCorNomeProduto.AsString  := qProdutoNome.AsString;

  mProdutoCorCodCor.AsInteger      := CodCor;
  mProdutoCorNomeCor.AsString      := NomeCor;
  mProdutoCorReferencia.AsString   := qProdutoReferencia.AsString;
  mProdutoCorCodForn.AsInteger     := qProdutoCodForn.AsInteger;
  mProdutoCorNomeForn.AsString     := qProdutoNomeForn.AsString;
  mProdutoCorInativo.AsBoolean     := qProdutoInativo.AsBoolean;
  mProdutoCorCodGrupo.AsInteger    := qProdutoCodGrupo.AsInteger;
  mProdutoCorNomeGrupo.AsString    := qProdutoNomeGrupo.AsString;
  mProdutoCorNomeSubGrupo.AsString := qProdutonomesubgrupo.AsString;
  mProdutoCorUnidade.AsString      := qProdutoUnidade.AsString;
  mProdutoCorEstMinimo.AsFloat     := EstMinimo;
  mProdutoCorEstMaximo.AsFloat     := EstMaximo;
  mProdutoCorPrecoCusto.AsFloat    := Preco;
  mProdutoCorPrecoVenda.AsFloat    := Preco;
  if qEstoque.Locate('CodMaterial;CodCor',VarArrayOf([mProdutoCorCodProduto.AsInteger,mProdutoCorCodCor.AsInteger]),[loCaseInsensitive]) then
    mProdutoCorQtdEstoque.AsFloat := StrToFloat(FormatFloat('0.000000',qEstoqueQtd2.AsFloat))
  else
    mProdutoCorQtdEstoque.AsFloat := 0;
  mProdutoCorCodBarra.AsString := vCodBarra;
  mProdutoCor.Post;
end;

procedure TfConsProduto2.Le_qProduto_Preco;
begin
  tProdutoCor.Open;
  mProdutoCor.EmptyDataSet;
  qProduto.First;
  while not qProduto.Eof do
  begin
    if (qProdutoLancaCor.AsBoolean) and (qProdutoPrecoCor.AsBoolean) then
    begin
      tProdutoCor.First;
      while not tProdutoCor.Eof do
      begin
        if (CheckBox1.Checked) or not(tProdutoCorInativo.AsBoolean) then
        begin
          Grava_mProdutoCor(tProdutoCorCodCor.AsInteger,tProdutoCorlkNomeCor.AsString, tProdutoCorEstMinimo.AsFloat, tProdutoCorEstMaximo.AsFloat, tProdutoCorPrCusto.AsFloat);
        end;
        tProdutoCor.Next;
      end;
    end
    else
      Grava_mProdutoCor(0,'',qProdutoEstMinimo.AsFloat,qProdutoEstMaximo.AsFloat,qProdutoPrecoCusto.AsFloat);

    qProduto.Next;
  end;
end;

procedure TfConsProduto2.Le_qProduto_Etiq;
var
  vVlrVenda : Real;
begin
  tCBarra.Open;
  tProdutoCor.Open;
  mProdutoCor.EmptyDataSet;
  qProduto.First;
  while not qProduto.Eof do
  begin
    if qProdutoLancaCor.AsBoolean then
    begin
      tProdutoCor.First;
      while not tProdutoCor.Eof do
      begin
        if (CheckBox1.Checked) or not(tProdutoCorInativo.AsBoolean) then
        begin
          Busca_CodBarra(tProdutoCorCodCor.AsInteger);
          vVlrVenda := 0;
          if qProdutoPrecoCor.AsBoolean then
            vVlrVenda := tProdutoCorVlrVenda.AsFloat
          else
            vVlrVenda := qProdutoVlrVenda.AsFloat;

          Grava_mProdutoCor(tProdutoCorCodCor.AsInteger,tProdutoCorlkNomeCor.AsString, 0, 0, vVlrVenda);
        end;
        tProdutoCor.Next;
      end;
    end
    else
    begin
      Busca_CodBarra(0);

      Grava_mProdutoCor(0,'',0,0,qProdutoVlrVenda.AsFloat);
    end;

    qProduto.Next;
  end;
end;

procedure TfConsProduto2.Imprimir(Tipo: String);
begin
   SMDBGrid1.DisableScroll;
   case ComboBox1.ItemIndex of
     1 : Monta_SQL('Order By dbFornecedores.NomeForn, dbProduto.Referencia, dbProduto.Codigo');
     2 : Monta_SQL('Order By NomeGrupo, dbProduto.Referencia, dbProduto.Codigo');
     3 : Monta_SQL('Order By NomeGrupo, Nomesubgrupo, dbProduto.Referencia, dbProduto.Codigo');
   end;
   qEstoque.Close;
   qEstoque.Open;
   if Tipo = 'C' then
     Le_qProduto
   else
   if Tipo = 'P' then
     Le_qProduto_Preco
   else
   if Tipo = 'E' then
     Le_qProduto_Etiq;

   if ComboBox1.ItemIndex = 3 then
     mProdutoCor.IndexFieldNames := 'NomeGrupo;NomeSubGrupo;NomeProduto;NomeCor'
   else
     mProdutoCor.IndexFieldNames := 'NomeGrupo;NomeProduto;NomeCor';

   if Tipo = 'E' then
   begin
     fRelProdutoEtiq := TfRelProdutoEtiq.Create(Self);
     fRelProdutoEtiq.RLReport1.Preview;
     fRelProdutoEtiq.RLReport1.Free;
   end
   else
   begin
     fRelConsProdutoGrupo := tfRelConsProdutoGrupo.Create(Self);
     fRelConsProdutoGrupo.RLReport1.Preview;
     fRelConsProdutoGrupo.RLReport1.Free;
   end;
   SMDBGrid1.EnableScroll;
end;

procedure TfConsProduto2.SpeedButton3Click(Sender: TObject);
begin
  Imprimir('P');
end;

procedure TfConsProduto2.BitBtn2Click(Sender: TObject);
begin
  Imprimir('E');
end;

procedure TfConsProduto2.Busca_CodBarra(CodCor: Integer);
begin
  vCodBarra := '';
  if tCBarra.Locate('CodProduto;CodCor',VarArrayOf([qProdutoCodigo.AsInteger,CodCor]),[loCaseInsensitive]) then
    vCodBarra := tCBarraCodBarra.AsString;
end;

end.
