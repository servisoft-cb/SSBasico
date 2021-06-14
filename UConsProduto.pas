unit UConsProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls,
  RzTabs, DB, DBTables, Grids, DBGrids, RzDBGrid, DBClient, ComCtrls;

type
  TfConsProduto = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    qPedDetalhado: TQuery;
    qPedDetalhadoPedido: TIntegerField;
    qPedDetalhadoItem: TIntegerField;
    qPedDetalhadoCodProduto: TIntegerField;
    qPedDetalhadoCodCor: TIntegerField;
    qPedDetalhadoCodGrade: TIntegerField;
    qPedDetalhadoQtdPares: TFloatField;
    qPedDetalhadoQtdParesFat: TFloatField;
    qPedDetalhadoQtdParesRest: TFloatField;
    qPedDetalhadoQtdParesCanc: TFloatField;
    qPedDetalhadoDtReprogramacao: TDateField;
    qPedDetalhadoUnidade: TStringField;
    qPedDetalhadoCodCliente: TIntegerField;
    qPedDetalhadoNomeCliente: TStringField;
    qPedDetalhadoDtEmissao: TDateField;
    qPedDetalhadoReferencia: TStringField;
    qPedDetalhadoNomeProduto: TStringField;
    qPedAcumulado: TQuery;
    RzDBGrid2: TRzDBGrid;
    dsqPedDetalhado: TDataSource;
    dsqPedAcumulado: TDataSource;
    qPedDetalhadolkNomeCor: TStringField;
    RzDBGrid1: TRzDBGrid;
    qPedAcumuladoQtdPares: TFloatField;
    qPedAcumuladoQtdParesFat: TFloatField;
    qPedAcumuladoQtdParesRest: TFloatField;
    qPedAcumuladoQtdParesCanc: TFloatField;
    qPedAcumuladoCodProduto: TIntegerField;
    qPedAcumuladoCodCor: TIntegerField;
    tCor: TTable;
    tCorCodigo: TIntegerField;
    tCorNome: TStringField;
    qPedAcumuladolkNomeCor: TStringField;
    CheckBox1: TCheckBox;
    qPedDetalhadoPedidoCliente: TStringField;
    qPedAcumuladoTam: TQuery;
    dsPedAcumuladoTam: TDataSource;
    qPedAcumuladoTamQtd: TFloatField;
    qPedAcumuladoTamQtdParesFat: TFloatField;
    qPedAcumuladoTamQtdParesRest: TFloatField;
    qPedAcumuladoTamQtdParesCanc: TFloatField;
    qPedAcumuladoTamCodCor: TIntegerField;
    qPedAcumuladoTamCodProduto: TIntegerField;
    ComboBox1: TComboBox;
    BitBtn5: TBitBtn;
    qPedDetalhadoFantasia: TStringField;
    qPedDetalhadoNumOS: TStringField;
    BitBtn1: TBitBtn;
    tProdutoConsumoItem: TTable;
    tProdutoConsumoItemCodProduto: TIntegerField;
    tProdutoConsumoItemCodCorProduto: TIntegerField;
    tProdutoConsumoItemItemMaterial: TIntegerField;
    tProdutoConsumoItemCodGrade: TIntegerField;
    tProdutoConsumoItemPosicao: TIntegerField;
    tProdutoConsumoItemConsumo: TFloatField;
    tProdutoConsumoItemTamanhoMat: TStringField;
    qPedAcumuladoCodGrade: TIntegerField;
    qPedAcumuladoTamCodGrade: TIntegerField;
    qPedAcumuladoTamPosicao: TIntegerField;
    mTamanho: TClientDataSet;
    mTamanhoCodProduto: TIntegerField;
    mTamanhoCodCor: TIntegerField;
    mTamanhoCodGrade: TIntegerField;
    mTamanhoPosicao: TIntegerField;
    mTamanhoQtd: TFloatField;
    mTamanhoQtdParesFat: TFloatField;
    mTamanhoQtdParesRest: TFloatField;
    mTamanhoQtdParesCanc: TFloatField;
    mTamanhoTamanho: TStringField;
    mProduto: TClientDataSet;
    CheckBox2: TCheckBox;
    dsmProduto: TDataSource;
    dsmTamanho: TDataSource;
    qPedAcumuladoTamlkTamanho: TStringField;
    StaticText1: TStaticText;
    ProgressBar1: TProgressBar;
    Label7: TLabel;
    Edit1: TEdit;
    mMaterial: TClientDataSet;
    mMaterialTam: TClientDataSet;
    mMaterialCodMaterial: TIntegerField;
    mMaterialNomeMaterial: TStringField;
    mMaterialTamCodMaterial: TIntegerField;
    mMaterialTamCodGrade: TIntegerField;
    mMaterialCodGrade: TIntegerField;
    mMaterialTamPosicao: TIntegerField;
    mMaterialTamTamanho: TStringField;
    mMaterialTamConsumoPed: TFloatField;
    mMaterialTamConsumoRest: TFloatField;
    mMaterialTamConsumoFat: TFloatField;
    dsmMaterial: TDataSource;
    mMaterialCodProduto: TIntegerField;
    mMaterialTamCodProduto: TIntegerField;
    mMaterialCodCor: TIntegerField;
    mMaterialTamCodCor: TIntegerField;
    mMaterialConsumoPed: TFloatField;
    mMaterialConsumoRest: TFloatField;
    mMaterialConsumoFat: TFloatField;
    mProdutoCodProduto: TIntegerField;
    mProdutoCodCor: TIntegerField;
    mProdutoCodGrade: TIntegerField;
    mProdutoReferencia: TStringField;
    mProdutoNomeProduto: TStringField;
    mProdutoNomeCor: TStringField;
    mProdutoQtdPares: TFloatField;
    mProdutoQtdParesFat: TFloatField;
    mProdutoQtdParesRest: TFloatField;
    mProdutoQtdParesCanc: TFloatField;
    dsmMaterialTam: TDataSource;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure mTamanhoNewRecord(DataSet: TDataSet);
    procedure mProdutoNewRecord(DataSet: TDataSet);
    procedure RzDBGrid1DblClick(Sender: TObject);
    procedure mMaterialNewRecord(DataSet: TDataSet);
    procedure mMaterialTamNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLPed;
    procedure Le_SQL;
    procedure Grava_mProduto;
    procedure Grava_mTamanho;
    procedure Grava_Material;
  public
    { Public declarations }
  end;

var
  fConsProduto: TfConsProduto;

implementation

uses UDM1, URelProdutosPed, URelProdutoPedDet, UConsProdutoTam;

{$R *.dfm}

procedure TfConsProduto.Grava_Material;
var
  vConsumo, vConsumoRest, vConsumoFat : Real;
begin
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
    begin
      if mMaterial.Locate('CodMaterial',DM1.tProdutoMatCodMaterial.AsInteger,[loCaseInsensitive]) then
        mMaterial.Edit
      else
        begin
          mMaterial.Insert;
          mMaterialCodProduto.AsInteger  := mProdutoCodProduto.AsInteger;
          mMaterialCodCor.AsInteger      := mProdutoCodCor.AsInteger;
          mMaterialCodGrade.AsInteger    := mProdutoCodGrade.AsInteger;
          mMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
          mMaterialNomeMaterial.AsString := DM1.tProdutoMatlkNomeMaterial.AsString;
        end;
      if DM1.tProdutoMatConsumo.AsString = 'G' then
        begin
          mMaterialConsumoPed.AsFloat  := mMaterialConsumoPed.AsFloat + StrToFloat(FormatFloat('0.00000',DM1.tProdutoMatQtd.AsFloat * qPedAcumuladoQtdPares.AsFloat));
          mMaterialConsumoRest.AsFloat := mMaterialConsumoRest.AsFloat + StrToFloat(FormatFloat('0.00000',DM1.tProdutoMatQtd.AsFloat * qPedAcumuladoQtdParesRest.AsFloat));
          mMaterialConsumoFat.AsFloat  := mMaterialConsumoFat.AsFloat + StrToFloat(FormatFloat('0.00000',DM1.tProdutoMatQtd.AsFloat * qPedAcumuladoQtdParesFat.AsFloat));
        end;
      mMaterial.Post;

      if DM1.tProdutoMatConsumo.AsString = 'T' then
        begin
          if DM1.tProdutoConsumo.Locate('CodGrade',mProdutoCodGrade.AsInteger,[loCaseInsensitive]) then
            begin
              DM1.tProdutoConsumoItem.First;
              while not DM1.tProdutoConsumoItem.Eof do
                begin
                  vConsumo     := 0;
                  vConsumoRest := 0;
                  vConsumoFat  := 0;
                  if (qPedAcumuladoTam.Locate('Posicao',DM1.tProdutoConsumoItemPosicao.AsInteger,[loCaseInsensitive])) and
                     (qPedAcumuladoTamQtd.AsFloat > 0) and (DM1.tProdutoConsumoItemConsumo.AsFloat > 0) then
                    begin
                      vConsumo     := StrToFloat(FormatFloat('0.00000',DM1.tProdutoConsumoItemConsumo.AsFloat * qPedAcumuladoTamQtd.AsFloat));
                      vConsumoRest := StrToFloat(FormatFloat('0.00000',DM1.tProdutoConsumoItemConsumo.AsFloat * qPedAcumuladoTamQtdParesRest.AsFloat));
                      vConsumoFat  := StrToFloat(FormatFloat('0.00000',DM1.tProdutoConsumoItemConsumo.AsFloat * qPedAcumuladoTamQtdParesFat.AsFloat));
                    end;
                  if vConsumo > 0 then
                    begin
                      if (mMaterialTam.Locate('Posicao',DM1.tProdutoConsumoItemPosicao.AsInteger,[loCaseInsensitive])) then
                        mMaterialTam.Edit
                      else
                        begin
                          mMaterialTam.Insert;
                          mMaterialTamCodProduto.AsInteger  := mMaterialCodProduto.AsInteger;
                          mMaterialTamCodCor.AsInteger      := mMaterialCodCor.AsInteger;
                          mMaterialTamCodGrade.AsInteger    := mMaterialCodGrade.AsInteger;
                          mMaterialTamCodMaterial.AsInteger := mMaterialCodMaterial.AsInteger;
                          mMaterialTamPosicao.AsInteger     := DM1.tProdutoConsumoItemPosicao.AsInteger;
                          mMaterialTamTamanho.AsString      := DM1.tProdutoConsumoItemlkTamanho.AsString;
                        end;
                      mMaterialTamConsumoPed.AsFloat  := StrToFloat(FormatFloat('0.00000',mMaterialTamConsumoPed.AsFloat + vConsumo));
                      mMaterialTamConsumoRest.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialTamConsumoRest.AsFloat + vConsumoRest));
                      mMaterialTamConsumoFat.AsFloat  := StrToFloat(FormatFloat('0.00000',mMaterialTamConsumoFat.AsFloat + vConsumoFat));
                      mMaterialTam.Post;

                      mMaterial.Edit;
                      mMaterialConsumoPed.AsFloat  := StrToFloat(FormatFloat('0.00000',mMaterialConsumoPed.AsFloat + vConsumo));
                      mMaterialConsumoRest.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialConsumoRest.AsFloat + vConsumoRest));
                      mMaterialConsumoFat.AsFloat  := StrToFloat(FormatFloat('0.00000',mMaterialConsumoFat.AsFloat + vConsumoFat));
                      mMaterial.Post;
                    end;
                  DM1.tProdutoConsumoItem.Next;
                end;
            end;
        end;
      DM1.tProdutoMat.Next;
    end;
end;

procedure TfConsProduto.Grava_mTamanho;
begin
  qPedAcumuladoTam.First;
  while not qPedAcumuladoTam.Eof do
    begin
      if mTamanho.Locate('CodProduto;CodCor;CodGrade;Posicao',VarArrayOf([mProdutoCodProduto.AsInteger,mProdutoCodCor.AsInteger,qPedAcumuladoTamCodGrade.AsInteger,qPedAcumuladoTamPosicao.AsInteger]),[loCaseInsensitive]) then
        mTamanho.Edit
      else
        begin
          mTamanho.Insert;
          mTamanhoCodProduto.AsInteger := mProdutoCodProduto.AsInteger;
          mTamanhoCodCor.AsInteger     := mProdutoCodCor.AsInteger;
          mTamanhoCodGrade.AsInteger   := qPedAcumuladoTamCodGrade.AsInteger;
          mTamanhoPosicao.AsInteger    := qPedAcumuladoTamPosicao.AsInteger;
          mTamanhoTamanho.AsString     := qPedAcumuladoTamlkTamanho.AsString;
        end;
      mTamanhoQtd.AsFloat          := mTamanhoQtd.AsFloat + qPedAcumuladoTamQtd.AsFloat;
      mTamanhoQtdParesFat.AsFloat  := mTamanhoQtdParesFat.AsFloat + qPedAcumuladoTamQtdParesFat.AsFloat;
      mTamanhoQtdParesRest.AsFloat := mTamanhoQtdParesRest.AsFloat + qPedAcumuladoTamQtdParesRest.AsFloat;
      mTamanhoQtdParesCanc.AsFloat := mTamanhoQtdParesCanc.AsFloat + qPedAcumuladoTamQtdParesCanc.AsFloat;

      mTamanho.Post;
      qPedAcumuladoTam.Next;
    end;
end;

procedure TfConsProduto.Grava_mProduto;
var
  vCor : Integer;
begin
  if CheckBox2.Checked then
    vCor := 0
  else
    vCor := qPedAcumuladoCodCor.AsInteger;
  if mProduto.Locate('CodProduto;CodCor;CodGrade',VarArrayOf([qPedAcumuladoCodProduto.AsInteger,vCor,qPedAcumuladoCodGrade.AsInteger]),[loCaseInsensitive]) then
    mProduto.Edit
  else
    begin
      mProduto.Insert;
      mProdutoCodProduto.AsInteger := qPedAcumuladoCodProduto.AsInteger;
      mProdutoCodCor.AsInteger     := vCor;
      mProdutoCodGrade.AsInteger   := qPedAcumuladoCodGrade.AsInteger;
    end;
  mProdutoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
  mProdutoNomeProduto.AsString := DM1.tProdutoNome.AsString;
  if (vCor = 0) and (qPedAcumuladoCodCor.AsInteger > 0) then
    mProdutoNomeCor.AsString     := 'VARIAS CORES'
  else
  if (vCor = 0) and (qPedAcumuladoCodCor.AsInteger < 1) then
    mProdutoNomeCor.AsString     := ''
  else
    mProdutoNomeCor.AsString     := qPedAcumuladolkNomeCor.AsString;
  mProdutoQtdPares.AsFloat     := mProdutoQtdPares.AsFloat + qPedAcumuladoQtdPares.AsFloat;
  mProdutoQtdParesFat.AsFloat  := mProdutoQtdParesFat.AsFloat + qPedAcumuladoQtdParesFat.AsFloat;
  mProdutoQtdParesRest.AsFloat := mProdutoQtdParesRest.AsFloat + qPedAcumuladoQtdParesRest.AsFloat;
  mProdutoQtdParesCanc.AsFloat := mProdutoQtdParesCanc.AsFloat + qPedAcumuladoQtdParesCanc.AsFloat;
  mProduto.Post;
end;

procedure TfConsProduto.Le_SQL;
begin
  ProgressBar1.Max      := qPedAcumulado.RecordCount;
  ProgressBar1.Position := 0;
  mProduto.First;
  while not mProduto.Eof do
    begin
      mTamanho.First;
      while not mTamanho.Eof do
        mTamanho.Delete;
      mMaterial.First;
      while not mMaterial.Eof do
        begin
          mMaterialTam.First;
          while not mMaterialTam.Eof do
            mMaterialTam.Delete;
          mMaterial.Delete;
        end;
      mProduto.Delete;
    end;

  qPedAcumulado.First;
  while not qPedAcumulado.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if DM1.tProduto.Locate('Codigo',qPedAcumuladoCodProduto.AsInteger,[loCaseInsensitive]) then
        begin


          {DM1.tProdutoMat.Filtered := False;
          if qPedAcumuladoCodCor.AsInteger > 0 then
            begin
              DM1.tProdutoMat.Filter   := 'CodCorProd = '''+ qPedAcumuladoCodCor.AsString+'''';
              DM1.tProdutoMat.Filtered := True;
            end;}
          Grava_mProduto;
          mProduto.Edit;

          qPedAcumuladoTam.Filtered := False;
          qPedAcumuladoTam.Filter   := 'CodProduto = '''+fConsProduto.qPedAcumuladoCodProduto.AsString+''' and CodCor = '''+fConsProduto.qPedAcumuladoCodCor.AsString+''' and CodGrade = ''' + fConsProduto.qPedAcumuladoCodGrade.AsString + '''';
          qPedAcumuladoTam.Filtered := True;
          if qPedAcumuladoTam.RecordCount > 0 then
            Grava_mTamanho;
          if DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([qPedAcumuladoCodCor.AsInteger,1]),[locaseinsensitive]) then
            Grava_Material;

          mProduto.Post;
        end;
      qPedAcumulado.Next;
    end;
end;

procedure TfConsProduto.Monta_SQLPed;
var
  Texto1 : String;
begin
  //Detalhado
  qPedDetalhado.Close;
  qPedDetalhado.SQL.Clear;
  qPedDetalhado.SQL.Add('SELECT Dbpedido.Pedido, Dbpedidoitem.Item, Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, ');
  qPedDetalhado.SQL.Add(' Dbpedidoitem.CodGrade, dbPedido.PedidoCliente, ');
  qPedDetalhado.SQL.Add(' Dbpedidoitem.DtReprogramacao, Dbpedidoitem.Unidade, Dbpedido.CodCliente, ');
  qPedDetalhado.SQL.Add(' Dbcliente.Nome NomeCliente, Dbpedido.DtEmissao, Dbproduto.Referencia, Dbproduto.Nome NomeProduto, ');
  qPedDetalhado.SQL.Add(' Dbpedidoitem.QtdPares, Dbpedidoitem.QtdParesFat, Dbpedidoitem.QtdParesRest, Dbpedidoitem.QtdParesCanc, dbCliente.Fantasia, dbPedidoItem.NumOS');
  qPedDetalhado.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedDetalhado.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedDetalhado.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedDetalhado.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qPedDetalhado.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qPedDetalhado.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qPedDetalhado.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qPedDetalhado.SQL.Add('WHERE (0=0)');

  qPedAcumulado.Close;
  qPedAcumulado.SQL.Clear;
  qPedAcumulado.SQL.Add('SELECT SUM( Dbpedidoitem.QtdPares ) QtdPares, SUM( Dbpedidoitem.QtdParesFat ) QtdParesFat, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM( Dbpedidoitem.QtdParesCanc ) QtdParesCanc, Dbpedidoitem.CodProduto, ');
  qPedAcumulado.SQL.Add(' Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade');
  qPedAcumulado.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedAcumulado.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedAcumulado.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedAcumulado.SQL.Add('WHERE (0=0)');

  qPedAcumuladoTam.Close;
  qPedAcumuladoTam.SQL.Clear;
  qPedAcumuladoTam.SQL.Add('SELECT SUM( Dbpedidograde.Qtd ) Qtd, SUM( Dbpedidograde.QtdParesFat ) QtdParesFat, SUM( Dbpedidograde.QtdParesRest ) QtdParesRest, SUM( Dbpedidograde.QtdParesCanc ) QtdParesCanc, ');
  qPedAcumuladoTam.SQL.Add(' Dbpedidoitem.CodCor, Dbpedidoitem.CodProduto, Dbpedidoitem.CodGrade, Dbpedidograde.Posicao');
  qPedAcumuladoTam.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedAcumuladoTam.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedAcumuladoTam.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedAcumuladoTam.SQL.Add('   INNER JOIN "DBPEDIDOGRADE.DB" Dbpedidograde');
  qPedAcumuladoTam.SQL.Add('   ON  (Dbpedidoitem.Pedido = Dbpedidograde.Pedido)');
  qPedAcumuladoTam.SQL.Add('   AND  (Dbpedidoitem.Item = Dbpedidograde.ItemPed)');
  qPedAcumuladoTam.SQL.Add('WHERE (0=0)');

  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedDetalhado.SQL.Add(' AND (dbPedido.Filial = :Filial)');
      qPedDetalhado.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;

      qPedAcumulado.SQL.Add(' AND (dbPedido.Filial = :Filial)');
      qPedAcumulado.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;

      qPedAcumuladoTam.SQL.Add(' AND (dbPedido.Filial = :Filial)');
      qPedAcumuladoTam.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPedDetalhado.SQL.Add(' AND (dbPedido.CodCliente = :CodCliente)');
      qPedDetalhado.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;

      qPedAcumulado.SQL.Add(' AND (dbPedido.CodCliente = :CodCliente)');
      qPedAcumulado.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;

      qPedAcumuladoTam.SQL.Add(' AND (dbPedido.CodCliente = :CodCliente)');
      qPedAcumuladoTam.ParamByName('CodCliente').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qPedDetalhado.SQL.Add(' AND (dbPedidoItem.CodProduto = :CodProduto)');
      qPedDetalhado.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;

      qPedAcumulado.SQL.Add(' AND (dbPedidoItem.CodProduto = :CodProduto)');
      qPedAcumulado.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;

      qPedAcumuladoTam.SQL.Add(' AND (dbPedidoItem.CodProduto = :CodProduto)');
      qPedAcumuladoTam.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
    end;
  if DateEdit1.Date > 0 then
    begin
      qPedDetalhado.SQL.Add(' AND (dbPedido.DtEmissao >= :DataIni)');
      qPedDetalhado.ParamByName('DataIni').AsDate := DateEdit1.Date;

      qPedAcumulado.SQL.Add(' AND (dbPedido.DtEmissao >= :DataIni)');
      qPedAcumulado.ParamByName('DataIni').AsDate := DateEdit1.Date;

      qPedAcumuladoTam.SQL.Add(' AND (dbPedido.DtEmissao >= :DataIni)');
      qPedAcumuladoTam.ParamByName('DataIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qPedDetalhado.SQL.Add(' AND (dbPedido.DtEmissao <= :DataFin)');
      qPedDetalhado.ParamByName('DataFin').AsDate := DateEdit2.Date;

      qPedAcumulado.SQL.Add(' AND (dbPedido.DtEmissao <= :DataFin)');
      qPedAcumulado.ParamByName('DataFin').AsDate := DateEdit2.Date;

      qPedAcumuladoTam.SQL.Add(' AND (dbPedido.DtEmissao <= :DataFin)');
      qPedAcumuladoTam.ParamByName('DataFin').AsDate := DateEdit2.Date;
    end;
  if Edit1.Text <> '' then
    begin
      qPedDetalhado.SQL.Add(' AND (dbPedidoItem.NumOS = :NumOS)');
      qPedDetalhado.ParamByName('NumOS').AsString := Edit1.Text;

      qPedAcumulado.SQL.Add(' AND (dbPedidoItem.NumOS = :NumOS)');
      qPedAcumulado.ParamByName('NumOS').AsString := Edit1.Text;

      qPedAcumuladoTam.SQL.Add(' AND (dbPedidoItem.NumOS = :NumOS)');
      qPedAcumuladoTam.ParamByName('NumOS').AsString := Edit1.Text;
    end;

  Texto1 := '';
  case ComboBox1.ItemIndex of
    0 : Texto1 := ' AND (dbPedidoItem.QtdParesRest > 0) ';
    1 : Texto1 := ' AND (dbPedidoItem.QtdParesFat > 0) ';
  end;
  qPedDetalhado.SQL.Add(Texto1);
  qPedAcumulado.SQL.Add(Texto1);
  qPedAcumuladoTam.SQL.Add(Texto1);

  qPedDetalhado.SQL.Add('ORDER BY Dbproduto.Referencia, NomeProduto, NomeCliente, Dbpedido.DtEmissao');

  qPedAcumulado.SQL.Add('GROUP BY Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade');
  qPedAcumulado.SQL.Add('ORDER BY DbPedidoItem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade');

  qPedAcumuladoTam.SQL.Add('GROUP BY Dbpedidoitem.CodCor, Dbpedidoitem.CodProduto, Dbpedidoitem.CodGrade, Dbpedidograde.Posicao');
  qPedAcumuladoTam.SQL.Add('ORDER BY Dbpedidoitem.CodProduto, Dbpedidoitem.CodCor, Dbpedidoitem.CodGrade, Dbpedidograde.Posicao');

  qPedDetalhado.Open;
  qPedAcumulado.Open;
  qPedAcumuladoTam.Open;
end;

procedure TfConsProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCliente.Close;
  DM1.tProduto.Close;
  DM1.tProdutoMat.Close;
  DM1.tProdutoComb.Close;
  DM1.tCor.Close;
  qPedAcumulado.Close;
  qPedDetalhado.Close;
  qPedAcumuladoTam.Close;
  mProduto.First;
  while not mProduto.Eof do
    begin
      mTamanho.First;
      while not mTamanho.Eof do
        mTamanho.Delete;
      mProduto.Delete;
    end;
  Action := Cafree;
end;

procedure TfConsProduto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsProduto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsProduto.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ProgressBar1.Position := 0;
  Monta_SQLPed;
  Le_SQL;
  Screen.Cursor   := crDefault;
end;

procedure TfConsProduto.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tProduto.GotoKey then
        RxDBLookupCombo3.KeyValue := CurrencyEdit1.AsInteger;
    end;
end;

procedure TfConsProduto.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    CurrencyEdit1.AsInteger := RxDBLookupCombo3.KeyValue;
end;

procedure TfConsProduto.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tProduto.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tCor.Open;
end;

procedure TfConsProduto.BitBtn5Click(Sender: TObject);
begin
  tProdutoConsumoItem.Refresh;
  if RzPageControl2.ActivePageIndex = 1 then
    begin
      fRelProdutosPed := TfRelProdutosPed.Create(Self);
      fRelProdutosPed.RLReport1.PreviewModal;
      fRelProdutosPed.RLReport1.Free;
      qPedAcumuladoTam.Filtered    := False;
      DM1.tProdutoMat.Filtered     := False;
      DM1.tProdutoConsumo.Filtered := False;
    end
  else
    begin
      fRelProdutosPedDet := TfRelProdutosPedDet.Create(Self);
      fRelProdutosPedDet.RLReport1.PreviewModal;
      fRelProdutosPedDet.RLReport1.Free;
    end;
end;

procedure TfConsProduto.mTamanhoNewRecord(DataSet: TDataSet);
begin
  mTamanhoQtd.AsFloat          := 0;
  mTamanhoQtdParesCanc.AsFloat := 0;
  mTamanhoQtdParesFat.AsFloat  := 0;
  mTamanhoQtdParesRest.AsFloat := 0;
end;

procedure TfConsProduto.mProdutoNewRecord(DataSet: TDataSet);
begin
  mProdutoQtdPares.AsFloat     := 0;
  mProdutoQtdParesFat.AsFloat  := 0;
  mProdutoQtdParesRest.AsFloat := 0;
  mProdutoQtdParesCanc.AsFloat := 0;
end;

procedure TfConsProduto.RzDBGrid1DblClick(Sender: TObject);
begin
  fConsProdutoTam := TfConsProdutoTam.Create(Self);
  fConsProdutoTam.ShowModal;
end;

procedure TfConsProduto.mMaterialNewRecord(DataSet: TDataSet);
begin
  mMaterialConsumoPed.AsFloat  := 0;
  mMaterialConsumoRest.AsFloat := 0;
  mMaterialConsumoFat.AsFloat  := 0;
end;

procedure TfConsProduto.mMaterialTamNewRecord(DataSet: TDataSet);
begin
  mMaterialTamConsumoPed.AsFloat  := 0;
  mMaterialTamConsumoRest.AsFloat := 0;
  mMaterialTamConsumoFat.AsFloat  := 0;
end;

procedure TfConsProduto.BitBtn3Click(Sender: TObject);
begin
      fRelProdutosPed := TfRelProdutosPed.Create(Self);
      fRelProdutosPed.RLReport1.PreviewModal;
      fRelProdutosPed.RLReport1.Free;

end;

end.
