unit UPrevPedidosNaoFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, Db, DBTables,
  MemTable, RXLookup, DBFilter, ComCtrls, Grids, DBGrids, DBClient;

type
  TfPrevPedidosNaoFat = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Bevel1: TBevel;
    qPedidos: TQuery;
    qPedidosNomeCliente: TStringField;
    qPedidosNomeProduto: TStringField;
    qPedidosQtdParesRest: TFloatField;
    qPedidosNomeCor: TStringField;
    qPedidosNumOS: TStringField;
    qPedidosVlrTotal: TFloatField;
    dsqPedidos: TDataSource;
    qPrevisaoFat: TQuery;
    CheckBox1: TCheckBox;
    dsqPrevisaoFat: TDataSource;
    qPrevisaoFatQtdParesRest: TFloatField;
    qPrevisaoFatVlrTotal: TFloatField;
    qPrevisaoFatDesconto: TFloatField;
    qPrevisaoFatDtReprogramacao: TDateField;
    qPedidosDtReprogramacao: TDateField;
    qPedidosReferencia: TStringField;
    qPedidosPedidoCliente: TStringField;
    qPedidosTamanho: TStringField;
    qPedidosPedido: TIntegerField;
    mPrevisao: TClientDataSet;
    mPrevisaoDtEmbarque: TDateField;
    mPrevisaoQtdPares: TFloatField;
    mPrevisaoVlrTotal: TFloatField;
    qPrevisaoFatCodProduto: TIntegerField;
    mResumo: TClientDataSet;
    mResumoNomeCliente: TStringField;
    mResumoReferencia: TStringField;
    mResumoQtdRestante: TFloatField;
    qPrevisaoFatUnidade: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1DropDown(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mPrevisaoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Monta_Previsao;
  public
    { Public declarations }
  end;

var
  fPrevPedidosNaoFat: TfPrevPedidosNaoFat;
  linha, pagina : Integer;
  F: TextFile;
  TextoDet : string;
  vVlrNormal, vVlrNormalCom, vVlrSuspenso, vVlrSuspensoCom : Real;
  vQtdNormal, vQtdSuspenso : Integer;

implementation

uses UDM1, UEscImpressora, URelPedidosNaoFat;

{$R *.DFM}

procedure TfPrevPedidosNaoFat.Monta_Previsao;
var
  vValor : Currency;
  vValorDesc : Currency;
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  mPrevisao.EmptyDataSet;
  qPrevisaoFat.First;
  while not qPrevisaoFat.Eof do
    begin
      if mPrevisao.Locate('DtEmbarque',qPrevisaoFatDtReprogramacao.AsDateTime,[loCaseInsensitive]) then
        mPrevisao.Edit
      else
        mPrevisao.Insert;
      mPrevisaoDtEmbarque.AsDateTime := qPrevisaoFatDtReprogramacao.AsDateTime;
      vValor     := qPrevisaoFatVlrTotal.AsFloat;
      vValorDesc := qPrevisaoFatDesconto.AsFloat;
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := qPrevisaoFatCodProduto.AsInteger;
      //if (DM1.tProduto.GotoKey) and (DM1.tProdutoUnidadeVenda.AsString <> '') and
      //   (DM1.tProdutoConvUnidadeVenda.AsFloat > 0) then
      //  begin
      //    vValor     := StrToCurr(FormatCurr('0.00',vValor / DM1.tProdutoConvUnidadeVenda.AsFloat));
      //    vValorDesc := StrToCurr(FormatCurr('0.00',vValorDesc / DM1.tProdutoConvUnidadeVenda.AsFloat));
      //  end
      //else
      //if (qPrevisaoFatUnidade.AsString = 'MH') or (qPrevisaoFatUnidade.AsString = 'MIL') then
        //begin
          //vValor     := StrToCurr(FormatCurr('0.00',vValor / 1000));
          //vValorDesc := StrToCurr(FormatCurr('0.00',vValorDesc / 1000));
        //end;
      mPrevisaoVlrTotal.AsCurrency := StrToCurr(FormatCurr('0.00',mPrevisaoVlrTotal.AsCurrency + vValor - vValorDesc));
      mPrevisaoQtdPares.AsFloat    := mPrevisaoQtdPares.AsFloat + qPrevisaoFatQtdParesRest.AsFloat;
      mPrevisao.Post;
      qPrevisaoFat.Next;
    end;
  mPrevisao.First;
end;

procedure TfPrevPedidosNaoFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qPrevisaoFat.Close;
  qPedidos.Close;
  DM1.tVendedor.Close;
  DM1.tProduto.Close;
  Action := Cafree;
end;

procedure TfPrevPedidosNaoFat.BitBtn6Click(Sender: TObject);
begin
  //if (DateEdit1.Text = '  /  /    ') or (DateEdit2.Text = '  /  /    ') then
  if (DateEdit1.Text = '  /  /    ') then
    ShowMessage('É obrigatório informar a data !')
  else
  if ((DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ')) and
     (DateEdit1.Date > DateEdit2.Date) then
    ShowMessage('Data inicial maior que data final!')
  else
    begin
      mResumo.EmptyDataSet;
      Screen.Cursor := crHourglass;
      if CheckBox1.Checked then
        begin
          //*** Imprime a previsão do faturamento
          qPrevisaoFat.Close;
          qPrevisaoFat.SQL.Clear;
          qPrevisaoFat.SQL.Add('SELECT Dbpedidoitem.CodProduto, Dbpedidoitem.DtReprogramacao, SUM( Dbpedidoitem.QtdParesRest ) QtdParesRest, SUM (Dbpedidoitem.Preco * DbpedidoItem.QtdParesRest) VlrTotal,');
          qPrevisaoFat.SQL.Add(' SUM(DbpedidoItem.VlrDesconto * DbpedidoItem.QtdParesRest) Desconto, dbPedidoItem.Unidade');
          qPrevisaoFat.SQL.Add('FROM dbPedido Dbpedido');
          qPrevisaoFat.SQL.Add('   INNER JOIN "dbPedidoItem.DB" Dbpedidoitem');
          qPrevisaoFat.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
          qPrevisaoFat.SQL.Add('WHERE   ( (Dbpedido.Cancelado IS NULL)  OR  (Dbpedido.Cancelado = FALSE) )');
          qPrevisaoFat.SQL.Add('   AND  (Dbpedidoitem.QtdParesRest > 0) AND (dbpedidoitem.MateriaPrima = False)');
          if DateEdit2.Text <> '  /  /    ' then
            begin
              qPrevisaoFat.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao BETWEEN :Data1 AND :Data2)');
              qPrevisaoFat.Params[0].AsDate := DateEdit1.Date;
              qPrevisaoFat.Params[1].AsDate := DateEdit2.Date;
            end
          else
            begin
              qPrevisaoFat.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao <= :Data1)');
              qPrevisaoFat.Params[0].AsDate := DateEdit1.Date;
            end;
          if fPrevPedidosNaoFat.RxDBLookupCombo1.Text <> '' then
            begin
              qPrevisaoFat.SQL.Add('   AND  (Dbpedido.CodVendedor = :Codigo)');
              qPrevisaoFat.ParamByName('Codigo').AsInteger := fPrevPedidosNaoFat.RxDBLookupCombo1.KeyValue;
            end;
          qPrevisaoFat.SQL.Add('GROUP BY Dbpedidoitem.CodProduto, Dbpedidoitem.DtReprogramacao, dbPedidoitem.Unidade');
          qPrevisaoFat.SQL.Add('ORDER BY Dbpedidoitem.DtReprogramacao');
          qPrevisaoFat.Open;
          Monta_Previsao;
          Screen.Cursor := crDefault;
          if mPrevisao.RecordCount > 0 then
            begin
              fRelPedidosNaoFat := TfRelPedidosNaoFat.Create(Self);
              fRelPedidosNaoFat.QuickRep2.Preview;
              fRelPedidosNaoFat.QuickRep2.Free;
            end
          else
            ShowMessage('Não há registros para imprimir!');
          qPrevisaoFat.Close;
        end
      else
        begin
          //*** Imprime os pedidos não faturados
          qPedidos.Close;
          qPedidos.SQL.Clear;
          qPedidos.SQL.Add('SELECT Dbproduto.Referencia, Dbcliente.Nome NomeCliente, Dbproduto.Nome NomeProduto, Dbpedidoitem.QtdParesRest, Dbcor.Nome NomeCor,');
          qPedidos.SQL.Add(' Dbpedidoitem.DtReprogramacao, Dbpedidoitem.NumOS, Dbpedido.PedidoCliente, Dbpedidoitem.VlrTotal, Dbpedidoitem.Tamanho, Dbpedido.Pedido');
          qPedidos.SQL.Add('FROM "dbPedidoItem.DB" Dbpedidoitem');
          qPedidos.SQL.Add('   INNER JOIN "dbPedido.DB" Dbpedido');
          qPedidos.SQL.Add('   ON  (Dbpedido.Pedido = Dbpedidoitem.Pedido)');
          qPedidos.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
          qPedidos.SQL.Add('   ON  (Dbpedidoitem.CodProduto = Dbproduto.Codigo)');
          qPedidos.SQL.Add('   FULL JOIN "Dbcor.DB" Dbcor');
          qPedidos.SQL.Add('   ON  (Dbpedidoitem.CodCor = Dbcor.Codigo)');
          qPedidos.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
          qPedidos.SQL.Add('   ON  (Dbpedido.CodCliente = Dbcliente.Codigo)');
          qPedidos.SQL.Add(' WHERE  ( (Dbpedido.Cancelado IS NULL)  OR  (Dbpedido.Cancelado = FALSE) )');
          qPedidos.SQL.Add('   AND  (Dbpedidoitem.QtdParesRest > 0) AND (Dbpedidoitem.MateriaPrima = False)');
          if DateEdit2.Text <> '  /  /    ' then
            begin
              qPedidos.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao BETWEEN :Data1 AND :Data2)');
              qPedidos.Params[0].AsDate := DateEdit1.Date;
              qPedidos.Params[1].AsDate := DateEdit2.Date;
            end
          else
            begin
              qPedidos.SQL.Add('   AND  (Dbpedidoitem.DtReprogramacao <= :Data1)');
              qPedidos.Params[0].AsDate := DateEdit1.Date;
            end;
          if fPrevPedidosNaoFat.RxDBLookupCombo1.Text <> '' then
            begin
              qPedidos.SQL.Add('   AND  (Dbpedido.CodVendedor = :Codigo)');
              qPedidos.ParamByName('Codigo').AsInteger := fPrevPedidosNaoFat.RxDBLookupCombo1.KeyValue;
            end;
          qPedidos.SQL.Add('ORDER BY Dbpedidoitem.DtReprogramacao, Dbpedido.PedidoCliente, Dbpedidoitem.NumOS, Dbproduto.Referencia, Dbpedidoitem.Tamanho');
          qPedidos.Open;
          Screen.Cursor := crDefault;
          qPedidos.First;
          if qPedidos.RecordCount > 0 then
            begin
              fRelPedidosNaoFat := TfRelPedidosNaoFat.Create(Self);
              fRelPedidosNaoFat.QuickRep1.Preview;
              fRelPedidosNaoFat.QuickRep1.Free;
              if MessageDlg('Deseja imprimir o resumo?',mtconfirmation,[mbok,mbno],0)=mrok then
                begin
                  mResumo.First;
                  fRelPedidosNaoFat := TfRelPedidosNaoFat.Create(Self);
                  fRelPedidosNaoFat.QuickRep3.Preview;
                  fRelPedidosNaoFat.QuickRep3.Free;
                end;
            end
          else
            ShowMessage('Não há registros para imprimir!');
          qPedidos.Close;
        end;
      Screen.Cursor := crDefault;
      BitBtn1.SetFocus;
    end;
end;

procedure TfPrevPedidosNaoFat.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPedidosNaoFat.RxDBLookupCombo1DropDown(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPrevPedidosNaoFat.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfPrevPedidosNaoFat.FormShow(Sender: TObject);
begin
  DM1.tVendedor.Open;
  DM1.tProduto.Open;
end;

procedure TfPrevPedidosNaoFat.mPrevisaoNewRecord(DataSet: TDataSet);
begin
  mPrevisaoQtdPares.AsFloat := 0;
  mPrevisaoVlrTotal.AsFloat := 0;
end;

end.
