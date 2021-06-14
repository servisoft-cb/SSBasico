unit UPrevPedCarteira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, DB,
  DBTables, DBClient, Grids, DBGrids, RXDBCtrl, ExtCtrls, ComCtrls;

type
  TfPrevPedCarteira = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qPedido: TQuery;
    qPedidoNomeCliente: TStringField;
    qPedidoCodCliente: TIntegerField;
    qPedidoReferencia: TStringField;
    qPedidoCodProduto: TIntegerField;
    qPedidoCodCor: TIntegerField;
    qPedidoNomeProduto: TStringField;
    qPedidoDtReprogramacao: TDateField;
    qPedidoQtdParesRest: TFloatField;
    qPedidolkNomeCor: TStringField;
    qData: TQuery;
    qDataDtReprogramacao: TDateField;
    qDataQtdParesRest: TFloatField;
    mData: TClientDataSet;
    mDataData: TDateField;
    mDataIndice: TIntegerField;
    mProduto: TClientDataSet;
    mProdutoCodCliente: TIntegerField;
    mProdutoNomeCliente: TStringField;
    mProdutoFantasia: TStringField;
    mProdutoReferencia: TStringField;
    mProdutoLargura: TStringField;
    mProdutoCodProduto: TIntegerField;
    mProdutoNomeProduto: TStringField;
    mProdutoCodCor: TIntegerField;
    mProdutoNomeCor: TStringField;
    mProdutoQtdAtrazo: TFloatField;
    mProdutoQtdAcumulada: TFloatField;
    mProdutoQtdTotal: TFloatField;
    mProdutoQData1: TFloatField;
    mProdutoQData2: TFloatField;
    mProdutoQData3: TFloatField;
    mProdutoQData4: TFloatField;
    mProdutoQData5: TFloatField;
    mProdutoQData6: TFloatField;
    mProdutoQData7: TFloatField;
    mProdutoQData8: TFloatField;
    mProdutoQData9: TFloatField;
    mProdutoQData10: TFloatField;
    mProdutoQData11: TFloatField;
    mProdutoQData12: TFloatField;
    mProdutoQData13: TFloatField;
    mProdutoQData14: TFloatField;
    mProdutoQData15: TFloatField;
    dsmProduto: TDataSource;
    qPedidoFantasia: TStringField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    ProgressBar1: TProgressBar;
    Label6: TLabel;
    RxDBGrid1: TRxDBGrid;
    BitBtn3: TBitBtn;
    StaticText1: TStaticText;
    mProdutoCorBanda: TIntegerField;
    Label7: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    CheckBox3: TCheckBox;
    mProdutoCodGrupo: TIntegerField;
    mProdutoCodAgrupado: TStringField;
    qPedidoCodGrupo: TIntegerField;
    qPedidolkNomeGrupo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mProdutoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
  private
    { Private declarations }
    vCodAgrupado : String;
    procedure Monta_SQL;
    procedure Monta_Memo;
  public
    { Public declarations }
  end;

var
  fPrevPedCarteira: TfPrevPedCarteira;
  vDataFinal : TDate;

implementation

uses UDM1, URelPedCarteira, UConsPedCarteiraDet;

{$R *.dfm}

procedure TfPrevPedCarteira.Monta_Memo;
var
  vReferencia : String;
  vCor : TColor;
begin
  mProduto.EmptyDataSet;
  ProgressBar1.Position := 0;
  ProgressBar1.Max      := qPedido.RecordCount;
  qPedido.First;
  vReferencia := qPedidoReferencia.AsString;
  vCor := clWhite;
  while not qPedido.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      if (CheckBox3.Checked) and (qPedidoCodGrupo.AsInteger > 0) then
        vCodAgrupado := 'G' + qPedidoCodGrupo.AsString
      else
        vCodAgrupado := 'C' + qPedidoCodCliente.AsString;
      if mProduto.Locate('CodAgrupado;CodProduto;CodCor',VarArrayOf([vCodAgrupado,qPedidoCodProduto.AsInteger,qPedidoCodCor.AsInteger]),[locaseinsensitive]) then
        mProduto.Edit
      else
        begin
          mProduto.Insert;
          mProdutoCodAgrupado.AsString := vCodAgrupado;
          mProdutoCodGrupo.AsInteger   := qPedidoCodGrupo.AsInteger;
          mProdutoCodCliente.AsInteger := qPedidoCodCliente.AsInteger;
          mProdutoNomeCliente.AsString := qPedidoNomeCliente.AsString;
          mProdutoFantasia.AsString    := qPedidoFantasia.AsString;
          mProdutoReferencia.AsString  := qPedidoReferencia.AsString;
          mProdutoNomeProduto.AsString := qPedidoNomeProduto.AsString;
          mProdutoCodProduto.AsInteger := qPedidoCodProduto.AsInteger;
          mProdutoCodCor.AsInteger     := qPedidoCodCor.AsInteger;
          mProdutoNomeCor.AsString     := qPedidolkNomeCor.AsString;
          if copy(vCodAgrupado,1,1) = 'G' then
            begin
              mProdutoNomeCliente.AsString := qPedidolkNomeGrupo.AsString;
              mProdutoFantasia.AsString    := qPedidolkNomeGrupo.AsString;
            end;
          if vReferencia <> qPedidoReferencia.AsString then
            begin
              if vCor = ClSilver then
                vCor := clWhite
              else
                vCor := clSilver;
            end;
          mProdutoCorBanda.AsInteger := ColorToRGB(vCor);
        end;
      if qPedidoDtReprogramacao.AsDateTime < DateEdit1.Date then
        mProdutoQtdAtrazo.AsFloat := mProdutoQtdAtrazo.AsFloat + qPedidoQtdParesRest.AsFloat
      else
      if mData.Locate('Data',qPedidoDtReprogramacao.AsDateTime,[loCaseInsensitive]) then
        mProduto.FieldByName('QData'+mDataIndice.AsString).AsFloat := mProduto.FieldByName('QData'+mDataIndice.AsString).AsFloat + qPedidoQtdParesRest.AsFloat
      else
        mProdutoQtdAcumulada.AsFloat := mProdutoQtdAcumulada.AsFloat + qPedidoQtdParesRest.AsFloat;
      mProdutoQtdTotal.AsFloat := mProdutoQtdTotal.AsFloat + qPedidoQtdParesRest.AsFloat;
      mProduto.Post;

      vReferencia := qPedidoReferencia.AsString;

      qPedido.Next;
    end;
end;

procedure TfPrevPedCarteira.Monta_SQL;
var
  i : Integer;
begin
  //Monta SQL da data
  i := 0;
  mData.EmptyDataSet;
  vDataFinal := 0;

  qData.Close;
  qData.SQL.Clear;
  qData.SQL.Add('SELECT Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest');
  qData.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qData.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qData.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qData.SQL.Add('   INNER JOIN "dbCliente.DB" dbCliente');
  qData.SQL.Add('   ON  (dbCliente.Codigo = Dbpedido.CodCliente)');
  qData.SQL.Add('WHERE  (Dbpedidoitem.QtdParesRest > 0) And (dbPedidoItem.DtReprogramacao >= :Data)');
  qData.SQL.Add('  AND  (Dbpedido.Tipo = ''V'')');
  qData.SQL.Add('  AND  (DbpedidoItem.MateriaPrima = False)');
  qData.ParamByName('Data').AsDate := DateEdit1.Date;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qData.SQL.Add(' AND dbPedido.Filial = :Filial');
      qData.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qData.SQL.Add(' AND dbPedido.CodCliente = :CodCliente');
      qData.ParamByName('CodCliente').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qData.SQL.Add(' AND (dbCliente.CodGrupo = :CodGrupo)');
      qData.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qData.SQL.Add(' AND dbPedidoItem.CodProduto = :CodProduto');
      qData.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
    end;
  qData.SQL.Add('GROUP BY Dbpedidoitem.DtReprogramacao');
  qData.SQL.Add('ORDER BY Dbpedidoitem.DtReprogramacao');
  qData.Open;

  qData.First;
  while not qData.Eof do
    begin
      inc(i);
      if i <= 13 then
        begin
          vDataFinal := qDataDtReprogramacao.AsDateTime;
          mData.Insert;
          mDataData.AsDateTime  := qDataDtReprogramacao.AsDateTime;
          mDataIndice.AsInteger := i;
          mData.Post;
        end
      else
        qData.Last;
      qData.Next;
    end;
  //Monta o SQL do pedido

  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT Dbcliente.Nome NomeCliente, Dbcliente.Codigo CodCliente, Dbproduto.Referencia, Dbproduto.Codigo CodProduto, Dbpedidoitem.CodCor,');
  qPedido.SQL.Add(' Dbproduto.Nome NomeProduto, Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, dbCliente.Fantasia, dbCliente.CodGrupo');
  qPedido.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
  qPedido.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
  qPedido.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qPedido.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qPedido.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qPedido.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
  qPedido.SQL.Add('WHERE  (Dbpedidoitem.QtdParesRest > 0) AND (Dbpedido.Tipo = ''V'')');
  qPedido.SQL.Add('  AND  (Dbpedidoitem.MateriaPrima = False)');
  if RxDBLookupCombo1.Text <> '' then
    begin
      qPedido.SQL.Add(' AND dbPedido.Filial = :Filial');
      qPedido.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedido.SQL.Add(' AND dbPedido.CodCliente = :CodCliente');
      qPedido.ParamByName('CodCliente').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if RxDBLookupCombo4.Text <> '' then
    begin
      qPedido.SQL.Add(' AND (dbCliente.CodGrupo = :CodGrupo)');
      qPedido.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo4.KeyValue;
    end;
  if CurrencyEdit1.AsInteger > 0 then
    begin
      qPedido.SQL.Add(' AND dbPedidoItem.CodProduto = :CodProduto');
      qPedido.ParamByName('CodProduto').AsInteger := CurrencyEdit1.AsInteger;
    end;
  qPedido.SQL.Add('GROUP BY Dbcliente.Nome, Dbcliente.Codigo, Dbproduto.Referencia, Dbproduto.Codigo, Dbpedidoitem.CodCor, Dbproduto.Nome, Dbpedidoitem.DtReprogramacao, dbCliente.Fantasia, dbCliente.CodGrupo');
  qPedido.SQL.Add('ORDER BY NomeCliente, Dbproduto.Referencia, Dbpedidoitem.CodCor');
  qPedido.Open;
end;

procedure TfPrevPedCarteira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevPedCarteira.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevPedCarteira.CurrencyEdit1Exit(Sender: TObject);
begin
  if CurrencyEdit1.AsInteger > 0 then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit1.AsInteger;
      if DM1.tProduto.GotoKey then
        RxDBLookupCombo3.KeyValue := DM1.tProdutoCodigo.AsInteger
      else
        ShowMessage('Produto n�o cadastrado!');
    end
  else
    RxDBLookupCombo3.ClearValue;
end;

procedure TfPrevPedCarteira.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfPrevPedCarteira.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    CurrencyEdit1.Value := RxDBLookupCombo3.KeyValue
  else
    CurrencyEdit1.Clear;
end;

procedure TfPrevPedCarteira.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPedCarteira.BitBtn1Click(Sender: TObject);
begin
  if mProduto.RecordCount > 0 then
    begin
      mProduto.First;
      fRelPedCarteira := TfRelPedCarteira.Create(Self);
      fRelPedCarteira.RLReport1.Preview;
      fRelPedCarteira.RLReport1.Free;
      ProgressBar1.Position := 0;
    end
  else
    ShowMessage('Gerar a consulta antes da impress�o!')
end;

procedure TfPrevPedCarteira.mProdutoNewRecord(DataSet: TDataSet);
var
  i : Integer;
begin
  mProdutoQtdAcumulada.AsFloat := 0;
  mProdutoQtdAtrazo.AsFloat    := 0;
  mProdutoQtdTotal.AsFloat     := 0;
  mProdutoCorBanda.AsInteger   := 0;
  for i := 1 to 15 do
    mProduto.FieldByName('QData'+IntToStr(i)).AsFloat := 0;
end;

procedure TfPrevPedCarteira.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tCor.Open;
  DM1.tProduto.Open;
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tGrupoCliente.Open;
end;

procedure TfPrevPedCarteira.BitBtn3Click(Sender: TObject);
var
  ano,mes,dia : Word;
begin
  if DateEdit1.Date > 1 then
    begin
      Monta_SQL;
      Monta_Memo;
      mProduto.First;
      mData.First;
      while not mData.Eof do
        begin
          if mDataIndice.AsInteger > 13 then
            mData.Last
          else
            begin
              DecodeDate(mDataData.AsDateTime,ano,mes,dia);
              RxDBGrid1.Columns[mDataIndice.AsInteger + 4].Title.Caption := IntToStr(Dia) + '/' + IntToStr(Mes);
            end;
          mData.Next;
        end;
      ProgressBar1.Position := 0;
    end
  else
    begin
      ShowMessage('Falta informar a data de refer�ncia!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevPedCarteira.RxDBGrid1DblClick(Sender: TObject);
begin
  if mProdutoCodCliente.AsInteger > 0 then
    begin
      fConsPedCarteiraDet := TfConsPedCarteiraDet.Create(Self);
      fConsPedCarteiraDet.qDetalhado.Close;
      fConsPedCarteiraDet.qDetalhado.ParamByName('CodCliente').AsInteger := mProdutoCodCliente.AsInteger;
      fConsPedCarteiraDet.qDetalhado.ParamByName('CodProduto').AsInteger := mProdutoCodProduto.AsInteger;
      fConsPedCarteiraDet.qDetalhado.ParamByName('CodCor').AsInteger     := mProdutoCodCor.AsInteger;
      fConsPedCarteiraDet.qDetalhado.Open;
      fConsPedCarteiraDet.ShowModal;
    end;
end;

procedure TfPrevPedCarteira.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background := mProdutoCorBanda.AsInteger;
end;

procedure TfPrevPedCarteira.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tGrupoCliente.IndexFieldNames := 'Nome';
end;

end.
