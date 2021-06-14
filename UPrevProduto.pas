unit UPrevProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, SMDBGrid, RzTabs, DB,
  DBTables, Buttons, DBClient, ComCtrls, DBVGrids;

type
  TfPrevProduto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    BitBtn1: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    qProduto: TQuery;
    qProdutoCodigo: TIntegerField;
    qProdutoReferencia: TStringField;
    qProdutoCodGrupo: TIntegerField;
    qProdutoNomeProduto: TStringField;
    qProdutoNomeGrupo: TStringField;
    qProdutoUnidade: TStringField;
    qProdutoNomeForn: TStringField;
    qProdutoCodFornecedor: TIntegerField;
    qProdutoLancaCor: TBooleanField;
    qProdutoPrecoCusto: TFloatField;
    qProdutoPrecoCor: TBooleanField;
    qProdutoLancaGrade: TBooleanField;
    dsqProduto: TDataSource;
    TabSheet2: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    mEstoque: TClientDataSet;
    mEstoqueCodProduto: TIntegerField;
    mEstoqueNomeProduto: TStringField;
    mEstoqueCodCor: TIntegerField;
    mEstoqueNomeCor: TStringField;
    mEstoqueReferencia: TStringField;
    mEstoqueTamanho: TStringField;
    mEstoqueNomeFornecedor: TStringField;
    mEstoqueCodFornecedor: TIntegerField;
    mEstoqueVlrUnitario: TFloatField;
    mEstoqueQtdEstoque: TFloatField;
    dsmEstoque: TDataSource;
    qEstoque: TQuery;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueTamanho: TStringField;
    qEstoqueQtd: TFloatField;
    mEstoqueCodGrupo: TIntegerField;
    mEstoqueNomeGrupo: TStringField;
    tProdutoCor: TTable;
    tProdutoCorCodProduto: TIntegerField;
    tProdutoCorCodCor: TIntegerField;
    tProdutoCorPrCusto: TFloatField;
    tProdutoTam: TTable;
    tProdutoGrade: TTable;
    tProdutoTamCodProduto: TIntegerField;
    tProdutoTamCodGrade: TIntegerField;
    tProdutoTamPosicao: TIntegerField;
    tProdutoTamTamanho: TStringField;
    tProdutoGradeCodProduto: TIntegerField;
    tProdutoGradeCodGrade: TIntegerField;
    tProdutoGradeInativo: TBooleanField;
    dsProdutoGrade: TDataSource;
    tProdutoCorlkNomeCor: TStringField;
    mEstoqueUnidade: TStringField;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    mEstoqueGrade: TClientDataSet;
    mEstoqueGradeCodProduto: TIntegerField;
    mEstoqueGradeTamanho: TStringField;
    mEstoqueGradeQtd: TFloatField;
    mEstoqueGradeCodCor: TIntegerField;
    dsmEstoqueGrade: TDataSource;
    Label4: TLabel;
    ComboBox4: TComboBox;
    VDBGrid1: TVDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mEstoqueGradeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vSqlProduto : String;
    vVlrUnitario : Real;
    procedure Monta_SQLqProduto;
    procedure Le_qProduto;
    procedure Le_Grade(CodCor : Integer);
    procedure Grava_mEstoque(CodCor : Integer; Tamanho : String);
    procedure Filtra_Estoque;
  public
    { Public declarations }
  end;

var
  fPrevProduto: TfPrevProduto;

implementation

uses UDM1, URelProduto, URelProdutoEst;

{$R *.dfm}

procedure TfPrevProduto.Filtra_Estoque;
var
  vQtd : Real;
begin
  vQtd := 0;
  mEstoque.Filtered      := False;
  mEstoqueGrade.Filtered := False;
  if ComboBox4.ItemIndex = 0 then
    begin
      mEstoque.Filter        := 'QtdEstoque > ''' +FloatToStr(vQtd)+ '''';
      mEstoqueGrade.Filter   := 'Qtd > ''' +FloatToStr(vQtd)+ '''';
    end
  else
  if ComboBox4.ItemIndex = 1 then
    begin
      mEstoque.Filter        := 'QtdEstoque < ''' +FloatToStr(vQtd)+ '''';
      mEstoqueGrade.Filter   := 'Qtd < ''' +FloatToStr(vQtd)+ '''';
    end;
  mEstoque.Filtered      := True;
  mEstoqueGrade.Filtered := True;
end;

procedure TfPrevProduto.Le_Grade(CodCor : Integer);
begin
  tProdutoGrade.First;
  while not tProdutoGrade.Eof do
    begin
      tProdutoTam.First;
      while not tProdutoTam.Eof do
        begin
          Grava_mEstoque(CodCor,tProdutoTamTamanho.AsString);
          tProdutoTam.Next;
        end;
      tProdutoGrade.Next;
    end;
end;

procedure TfPrevProduto.Grava_mEstoque(CodCor : Integer; Tamanho : String);
var
  vFlag : Boolean;
begin
  vFlag := True;
  if Tamanho <> '' then
    if mEstoque.Locate('CodProduto;CodCor',VarArrayOf([qProdutoCodigo.AsInteger,CodCor]),[locaseinsensitive]) then
      vFlag := False;
  if vFlag then
    begin
      mEstoque.Insert;
      mEstoqueCodProduto.AsInteger := qProdutoCodigo.AsInteger;
      mEstoqueNomeProduto.AsString := qProdutoNomeProduto.AsString;
      mEstoqueCodGrupo.AsInteger   := qProdutoCodGrupo.AsInteger;
      mEstoqueNomeGrupo.AsString   := qProdutoNomeGrupo.AsString;
      mEstoqueCodCor.AsInteger     := CodCor;
      if CodCor > 0 then
        mEstoqueNomeCor.AsString := tProdutoCorlkNomeCor.AsString;
      //mEstoqueTamanho.AsString   := Tamanho;
      mEstoqueReferencia.AsString := qProdutoReferencia.AsString;
      mEstoqueNomeFornecedor.AsString := qProdutoNomeForn.AsString;
      mEstoqueCodFornecedor.AsInteger := qProdutoCodFornecedor.AsInteger;
      mEstoqueVlrUnitario.AsFloat     := vVlrUnitario;
      mEstoqueUnidade.AsString        := qProdutoUnidade.AsString;
      //if (Tamanho <> '') and (qEstoque.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([qProdutoCodigo.AsInteger,CodCor,Tamanho]),[locaseinsensitive])) then
      //  mEstoqueQtdEstoque.AsFloat := StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat))
      //else
      if (Tamanho = '') and (qEstoque.Locate('CodMaterial;CodCor',VarArrayOf([qProdutoCodigo.AsInteger,CodCor]),[locaseinsensitive])) then
        mEstoqueQtdEstoque.AsFloat := StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat));
      mEstoque.Post;
    end;
  if Tamanho <> '' then
    begin
      mEstoqueGrade.Insert;
      mEstoqueGradeCodProduto.AsInteger := qProdutoCodigo.AsInteger;
      mEstoqueGradeCodCor.AsInteger     := CodCor;
      if qEstoque.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([qProdutoCodigo.AsInteger,CodCor,Tamanho]),[locaseinsensitive]) then
        mEstoqueGradeQtd.AsFloat := StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat));
      mEstoqueGradeTamanho.AsString     := Tamanho;
      mEstoqueGrade.Post;
      mEstoque.Edit;
      mEstoqueQtdEstoque.AsFloat := mEstoqueQtdEstoque.AsFloat + mEstoqueGradeQtd.AsFloat;
      mEstoque.Post;
    end;
end;

procedure TfPrevProduto.Le_qProduto;
begin
  qEstoque.Close;
  qEstoque.Open;
  vVlrUnitario := 0;

  mEstoque.EmptyDataSet;
  mEstoqueGrade.EmptyDataSet;
  case ComboBox2.ItemIndex of
    0 : mEstoque.IndexFieldNames := 'NomeGrupo;NomeProduto;NomeCor;Tamanho';
    1 : mEstoque.IndexFieldNames := 'NomeGrupo;CodProduto;NomeCor;Tamanho';
    2 : mEstoque.IndexFieldNames := 'NomeGrupo;Referencia;NomeCor;Tamanho';
    3 : mEstoque.IndexFieldNames := 'NomeGrupo;NomeFornecedor;NomeProduto;NomeCor;Tamanho';
  end;
  ProgressBar1.Max      := qProduto.RecordCount;
  ProgressBar1.Position := 0;
  qProduto.First;
  while not qProduto.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if not qProdutoPrecoCor.AsBoolean then
        vVlrUnitario := qProdutoPrecoCusto.AsFloat;
      if qProdutoLancaCor.AsBoolean then
        begin
          if qProdutoPrecoCor.AsBoolean then
            vVlrUnitario := tProdutoCorPrCusto.AsFloat;
          tProdutoCor.First;
          while not tProdutoCor.Eof do
            begin
              if qProdutoLancaGrade.AsBoolean then
                Le_Grade(tProdutoCorCodCor.AsInteger)
              else
                Grava_mEstoque(tProdutoCorCodCor.AsInteger,'');
              tProdutoCor.Next;
            end;
        end
      else
      if qProdutoLancaGrade.AsBoolean then
        Le_Grade(0)
      else
        Grava_mEstoque(0,'');
      qProduto.Next;
    end;
end;

procedure TfPrevProduto.Monta_SQLqProduto;
begin
  qProduto.Close;
  qProduto.SQL.Clear;
  qProduto.SQL.Text := vSqlProduto;
  qProduto.SQL.Add('WHERE (0=0) ');
  case ComboBox1.ItemIndex of
    0 : qProduto.SQL.Add(' AND (dbProduto.ProdMat = ''M'') AND (dbProduto.MaterialOutros = ''M'') ');
    1 : qProduto.SQL.Add(' AND (dbProduto.ProdMat = ''M'')');
    2 : qProduto.SQL.Add(' AND (dbProduto.ProdMat = ''M'') AND (dbProduto.MaterialOutros = ''O'') ');
    3 : qProduto.SQL.Add(' AND (dbProduto.ProdMat = ''P'')');
  end;

  case ComboBox3.ItemIndex of
    0 : qProduto.SQL.Add(' AND (dbProduto.Inativo = False) ');
    2 : qProduto.SQL.Add(' AND (dbProduto.Inativo = True) ');
  end;

  case ComboBox2.ItemIndex of
    0 : qProduto.SQL.Add('ORDER BY dbGrupo.Nome, dbProduto.Nome ');
    1 : qProduto.SQL.Add('ORDER BY dbGrupo.Nome, dbProduto.Codigo ');
    2 : qProduto.SQL.Add('ORDER BY dbGrupo.Nome, dbProduto.Referencia ');
    3 : qProduto.SQL.Add('ORDER BY dbGrupo.Nome, dbFornecedores.NomeForn, dbProduto.Nome');
  end;
  qProduto.Open;
end;

procedure TfPrevProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qProduto.Close;
  qEstoque.Close;
  Action := Cafree;
end;

procedure TfPrevProduto.FormShow(Sender: TObject);
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  vSqlProduto := qProduto.SQL.Text;
  tProdutoCor.Open;
  tProdutoGrade.Open;
  tProdutoTam.Open;
end;

procedure TfPrevProduto.BitBtn1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  VDBGrid1.DataSource := nil;
  mEstoque.Filtered      := False;
  mEstoqueGrade.Filtered := True;
  Monta_SQLqProduto;
  if RzPageControl1.ActivePageIndex = 1 then
    begin
      Le_qProduto;
      Filtra_Estoque;
    end;
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
  VDBGrid1.DataSource := dsmEstoqueGrade;
end;

procedure TfPrevProduto.BitBtn2Click(Sender: TObject);
begin
  if RzPageControl1.ActivePageIndex = 0 then
    begin
      SMDBGrid1.DisableScroll;
      fRelProduto := TfRelProduto.Create(Self);
      fRelProduto.RLReport1.Preview;
      fRelProduto.RLReport1.Free;
      FreeAndNil(fRelProduto);
      SMDBGrid1.EnableScroll;
    end
  else
    begin
      SMDBGrid2.DisableScroll;
      fRelProdutoEst := TfRelProdutoEst.Create(Self);
      fRelProdutoEst.RLReport1.Preview;
      fRelProdutoEst.RLReport1.Free;
      FreeAndNil(fRelProdutoEst);
      SMDBGrid2.EnableScroll;
    end;
end;

procedure TfPrevProduto.mEstoqueGradeNewRecord(DataSet: TDataSet);
begin
  mEstoqueGradeQtd.AsFloat := 0;
end;

end.
