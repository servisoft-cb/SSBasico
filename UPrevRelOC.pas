unit UPrevRelOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, Db, DBTables, MemTable,
  Grids, DBGrids, RXDBCtrl, RzTabs, RxLookup, SMDBGrid;

type
  TfPrevRelOC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    mOC: TMemoryTable;
    mOCNumOC: TIntegerField;
    mOCDtEmissao: TDateField;
    mOCCodForn: TIntegerField;
    mOCVlrTotal: TFloatField;
    mOCVlrMercEntr: TFloatField;
    mOCVlrMercAberto: TFloatField;
    mOClkFornecedor: TStringField;
    mOCDtEntrega: TDateField;
    msOC: TDataSource;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    qOrdem: TQuery;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    qOrdemFilial: TIntegerField;
    qOrdemCodForn: TIntegerField;
    qOrdemNomeForn: TStringField;
    qOrdemNumOC: TIntegerField;
    qOrdemNomeCor: TStringField;
    qOrdemCodMaterial: TIntegerField;
    qOrdemReferencia: TStringField;
    qOrdemNomeMaterial: TStringField;
    qOrdemCodCor: TIntegerField;
    qOrdemItem: TIntegerField;
    qOrdemQtd: TFloatField;
    qOrdemVlrUnitario: TFloatField;
    qOrdemDtEntrega: TDateField;
    qOrdemVlrTotal: TFloatField;
    qOrdemQtdEntregue: TFloatField;
    qOrdemQtdRestante: TFloatField;
    qOrdemTamanho: TStringField;
    qOrdemQtdCancelada: TFloatField;
    dsqOrdem: TDataSource;
    qOrdemclVlrRestante: TFloatField;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Bevel1: TBevel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qOrdemDtEmissao: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qOrdemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Gera_Dados;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
    procedure Monta_SQLOrdem;
  public
    { Public declarations }
  end;

var
  fPrevRelOC: TfPrevRelOC;
  linha, pagina : Integer;
  F: TextFile;
  vVlrTotal, vVlrMercEntr, vVlrMercAberto : Real;

implementation

uses UDM1, UEscImpressora, URelOC;

{$R *.DFM}

procedure TfPrevRelOC.Monta_SQLOrdem;
begin
  qOrdem.Close;
  qOrdem.SQL.Clear;
  qOrdem.SQL.Add('SELECT Dbordemcompra.Filial, Dbfornecedores.CodForn, Dbfornecedores.NomeForn, Dbordemcompra.Codigo NumOC, ');
  qOrdem.SQL.Add(' Dbcor.Nome NomeCor, Dbordemcompraitem.CodMaterial, Dbproduto.Referencia, Dbproduto.Nome NomeMaterial, ');
  qOrdem.SQL.Add(' Dbordemcompraitem.CodCor, Dbordemcompraitem.Item, Dbordemcompraitem.Qtd, Dbordemcompraitem.VlrUnitario, ');
  qOrdem.SQL.Add(' Dbordemcompraitem.DtEntrega, Dbordemcompraitem.VlrTotal, Dbordemcompraitem.QtdEntregue, Dbordemcompraitem.QtdRestante, ');
  qOrdem.SQL.Add(' Dbordemcompraitem.Tamanho, Dbordemcompraitem.QtdCancelada, dbOrdemCompra.DtEmissao ');
  qOrdem.SQL.Add(' FROM "dbOrdemCompra.DB" Dbordemcompra ');
  qOrdem.SQL.Add('    INNER JOIN "dbOrdemCompraItem.DB" Dbordemcompraitem ');
  qOrdem.SQL.Add('    ON  (Dbordemcompra.Filial = Dbordemcompraitem.Filial) ');
  qOrdem.SQL.Add('    AND  (Dbordemcompra.Codigo = Dbordemcompraitem.Codigo) ');
  qOrdem.SQL.Add('    INNER JOIN "dbFornecedores.DB" Dbfornecedores ');
  qOrdem.SQL.Add('    ON  (Dbordemcompra.CodFornecedor = Dbfornecedores.CodForn) ');
  qOrdem.SQL.Add('    INNER JOIN "dbProduto.DB" Dbproduto ');
  qOrdem.SQL.Add('    ON  (Dbordemcompraitem.CodMaterial = Dbproduto.Codigo) ');
  qOrdem.SQL.Add('    FULL OUTER JOIN "Dbcor.DB" Dbcor ');
  qOrdem.SQL.Add('    ON  (Dbordemcompraitem.CodCor = Dbcor.Codigo) ');
  qOrdem.SQL.Add('WHERE (0=0)');

  if RxDBLookupCombo2.Text <> '' then
    begin
      qOrdem.SQL.Add('  AND (dbOrdemCompra.Filial = :Filial)');
      qOrdem.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;

  if DateEdit1.Date > 0 then
    begin
      qOrdem.SQL.Add(' AND (Dbordemcompra.DtEmissao >= :DtEmissaoIni)');
      qOrdem.ParamByName('DtEmissaoIni').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qOrdem.SQL.Add(' AND (Dbordemcompra.DtEmissao <= :DtEmissaoFin)');
      qOrdem.ParamByName('DtEmissaoFin').AsDate := DateEdit2.Date;
    end;

  if DateEdit3.Date > 0 then
    begin
      qOrdem.SQL.Add(' AND (DbordemcompraItem.DtEntrega >= :DtEntregaIni)');
      qOrdem.ParamByName('DtEntregaIni').AsDate := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qOrdem.SQL.Add(' AND (DbordemcompraItem.DtEntrega <= :DtEntregaFin)');
      qOrdem.ParamByName('DtEntregaFin').AsDate := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : qOrdem.SQL.Add('  AND (dbOrdemCompraItem.QtdRestante > 0)');
    1 : qOrdem.SQL.Add('  AND (dbOrdemCompraItem.QtdEntregue > 0)');
  end;
  case ComboBox2.ItemIndex of
    0 : qOrdem.SQL.Add('ORDER BY dbOrdemCompra.Codigo, dbOrdemCompraItem.Item');
    1 : qOrdem.SQL.Add('ORDER BY dbOrdemCompraItem.CodMaterial, dbOrdemCompraItem.Tamanho, dbOrdemCompraItem.DtEntrega');
    2 : qOrdem.SQL.Add('ORDER BY dbOrdemCompraItem.CodMaterial, dbOrdemCompraItem.Tamanho, dbOrdemCompra.DtEmissao');
    3 : qOrdem.SQL.Add('ORDER BY dbProduto.Nome, dbOrdemCompraItem.Tamanho, dbOrdemCompraItem.DtEntrega');
    4 : qOrdem.SQL.Add('ORDER BY dbProduto.Nome, dbOrdemCompraItem.Tamanho, dbOrdemCompra.DtEmissao');
    5 : qOrdem.SQL.Add('ORDER BY dbFornecedores.NomeForn, dbOrdemCompraItem.DtEntrega');
    6 : qOrdem.SQL.Add('ORDER BY dbFornecedores.NomeForn, dbOrdemCompra.DtEmissao');
  end;
  qOrdem.Open;
end;

procedure TfPrevRelOC.Gera_Dados;
begin
  mOC.EmptyTable;
  {Case RadioGroup1.ItemIndex of
    0 : begin
          DM1.tOrdemCompra.Filtered := False;
          DM1.tOrdemCompra.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+'''';
          DM1.tOrdemCompra.Filtered := True;
        end;
    1 : begin
          DM1.tOrdemCompra.Filtered := False;
          DM1.tOrdemCompra.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+''' and Entregue <> True';
          DM1.tOrdemCompra.Filtered := True;
        end;
    2 : begin
          DM1.tOrdemCompra.Filtered := False;
          DM1.tOrdemCompra.Filter   := 'DtEmissao >= '''+DateEdit1.Text+''' and DtEmissao <= '''+DateEdit2.Text+''' and Entregue = True';
          DM1.tOrdemCompra.Filtered := True;
        end;
  end;
  DM1.tOrdemCompra.First;
  while not DM1.tOrdemCompra.Eof do
    begin
      if DM1.tOrdemCompraEntregue.AsBoolean then
        begin
          mOC.Insert;
          mOCNumOC.AsInteger       := DM1.tOrdemCompraCodigo.AsInteger;
          mOCDtEmissao.AsDateTime  := DM1.tOrdemCompraDtEmissao.AsDateTime;
          mOCCodForn.AsInteger     := DM1.tOrdemCompraCodFornecedor.AsInteger;
          mOCVlrTotal.AsFloat      := DM1.tOrdemCompraVlrTotal.AsFloat;
          mOCVlrMercEntr.AsFloat   := DM1.tOrdemCompraVlrTotal.AsFloat;
          DM1.tOrdemCompraItem.First;
          while not DM1.tOrdemCompraItem.Eof do
            begin
              if DM1.tOrdemCompraItemDtEntrega.AsDateTime > 1 then
                mOCDtEntrega.AsDateTime := DM1.tOrdemCompraItemDtEntrega.AsDateTime;
              DM1.tOrdemCompraItem.Next;
            end;
          mOCVlrMercAberto.AsFloat := 0;
          mOC.Post;
        end
      else
        begin
          mOC.Insert;
          mOCNumOC.AsInteger       := DM1.tOrdemCompraCodigo.AsInteger;
          mOCDtEmissao.AsDateTime  := DM1.tOrdemCompraDtEmissao.AsDateTime;
          mOCCodForn.AsInteger     := DM1.tOrdemCompraCodFornecedor.AsInteger;
          mOCVlrTotal.AsFloat      := DM1.tOrdemCompraVlrTotal.AsFloat;
          DM1.tOrdemCompraItem.First;
          while not DM1.tOrdemCompraItem.Eof do
            begin
              mOCVlrMercAberto.AsFloat := mOCVlrMercAberto.AsFloat + (DM1.tOrdemCompraItemQtdRestante.AsFloat * DM1.tOrdemCompraItemVlrUnitario.AsFloat);
              mOCVlrMercEntr.AsFloat   := mOCVlrMercEntr.AsFloat + (DM1.tOrdemCompraItemQtdEntregue.AsFloat * DM1.tOrdemCompraItemVlrUnitario.AsFloat);
              if DM1.tOrdemCompraItemDtEntrega.AsDateTime > 1 then
                mOCDtEntrega.AsDateTime := DM1.tOrdemCompraItemDtEntrega.AsDateTime;
              DM1.tOrdemCompraItem.Next;
            end;
          mOC.Post;
        end;
      DM1.tOrdemCompra.Next;
    end;
  DM1.tOrdemCompra.Filtered := False;}
end;

procedure TfPrevRelOC.Imprime_Cabecalho;
var
 i : Integer;
 Texto1 : String;
begin
  {pagina := pagina + 1;
  if Pagina > 1 then
    begin
      while linha < 66 do
        begin
          Linha := Linha + 1;
          Writeln(F);
        end;
    end;
  Texto1 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 53 - length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'RELACAO DE ORDENS DE COMPRA  - ';
  Case RadioGroup1.ItemIndex of
    0 : Texto1 := Texto1 + 'Todas                        Pagina.: ';
    1 : Texto1 := Texto1 + 'Pendentes                    Pagina.: ';
    2 : Texto1 := Texto1 + 'Encerradas                   Pagina.: ';
  end;
  Texto1 := Texto1 + IntToStr(pagina);
  Writeln(F,Texto1);
  Texto1 := '                                                     Periodo: ' + DateEdit1.Text + ' a ' + DateEdit2.Text;
  for i := 1 to 113 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'No.O.Compra  Dt.Emissao  Fornecedor                                   Valor Total  Vlr. Merc.Entregue   Valor em Aberto  Dt. Entrega');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;}
end;

procedure TfPrevRelOC.Imprime_Detalhe;
var
 i : Integer;
 Texto1, Texto2 : string;
begin
  {Texto1 := mOCNumOC.AsString;
  for i := 1 to 11 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  Texto1 := Texto1 + '  ';
  Texto2 := mOCDtEmissao.AsString;
  for i := 1 to 12 - length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 :=  mOClkFornecedor.AsString;
  for i := 1 to 42 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,##0.00',mOCVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,##0.00',mOCVlrMercEntr.AsFloat);
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,##0.00',mOCVlrMercAberto.AsFloat);
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  if mOCDtEntrega.AsDateTime > 1 then
    Texto2 := mOCDtEntrega.AsString
  else
    Texto2 := ' ';
  for i := 1 to 13 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Writeln(F,texto1);
  linha := linha + 1;
  vVlrTotal      := vVlrTotal + mOCVlrTotal.AsFloat;
  vVlrMercEntr   := vVlrMercEntr + mOCVlrMercEntr.AsFloat;
  vVlrMercAberto := vVlrMercAberto + mOCVlrMercAberto.AsFloat;}
end;

procedure TfPrevRelOC.Imprime_Rodape;
var
 i : Integer;
 Texto1, Texto2 : string;
begin
  {Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Texto1 := '                         ......Total no Periodo =====>         ';
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrTotal);
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrMercEntr);
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Texto2 := FormatFloat('###,###,###,##0.00',vVlrMercAberto);
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Writeln(F,texto1);
  Writeln(F);
  linha := linha + 3;}
end;

procedure TfPrevRelOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qOrdem.Close;
  dm1.GravaGrid(SMDBGrid1,Name);
  if Screen.FormCount < 3 then
    begin
      DM1.tOrdemCompra.Close;
      DM1.tOrdemCompraItem.Close;
      DM1.tFornecedores.Close;
    end;
  Action := Cafree;
end;

procedure TfPrevRelOC.BitBtn2Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
  DateEdit3.Clear;
  DateEdit4.Clear;
  RxDBLookupCombo2.ClearValue;
end;

procedure TfPrevRelOC.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRelOC.BitBtn1Click(Sender: TObject);
//var
 // Texto : String;
begin
  if not qOrdem.Active then
    begin
      ShowMessage('Não existe registro para imprimir!');
      exit;
    end;
  
  fRelOC := TfRelOC.Create(Self);
  fRelOC.RLReport1.Preview;
  FreeAndNil(fRelOC);

  {Screen.Cursor  := crHourGlass;
  Gera_Dados;
  Screen.Cursor  := crDefault;
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  linha          := 99;
  pagina         := 0;
  vVlrTotal      := 0;
  vVlrMercEntr   := 0;
  vVlrMercAberto := 0;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  mOC.First;
  while not mOC.Eof do
    begin
      if linha > 61 then
        Imprime_Cabecalho;
      Imprime_Detalhe;
      mOC.Next;
    end;
  Imprime_Rodape;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;}
end;

procedure TfPrevRelOC.FormShow(Sender: TObject);
begin
  DM1.tOrdemCompra.Open;
  DM1.tOrdemCompraItem.Open;
  DM1.tFornecedores.Open;
  mOC.open;
end;

procedure TfPrevRelOC.BitBtn4Click(Sender: TObject);
begin
  Monta_SqlOrdem;
end;

procedure TfPrevRelOC.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

procedure TfPrevRelOC.qOrdemCalcFields(DataSet: TDataSet);
begin
  if qOrdemQtdRestante.AsFloat > 0 then
    qOrdemclVlrRestante.AsFloat := StrToFloat(FormatFloat('0.00',qOrdemVlrUnitario.AsFloat * qOrdemQtdRestante.AsFloat))
  else
    qOrdemclVlrRestante.AsFloat := 0;
end;

end.
