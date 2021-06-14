unit UConsEstoqueMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, RXDBCtrl, StdCtrls, DBVGrids, Db, DBTables,
  Buttons, RxLookup, Mask, ToolEdit, DBFilter, ALed, MemTable, CurrEdit, Variants,
  SMDBGrid, DBCtrls;

type
  TfConsEstoqueMat = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    qEstoque: TQuery;
    dsEstoque: TDataSource;
    qEstoqueCodMaterial: TIntegerField;
    qEstoqueNomeMaterial: TStringField;
    qEstoqueCodCor: TIntegerField;
    qEstoqueQtd: TFloatField;
    qEstoqueEstMinimo: TFloatField;
    qEstoqueLargura: TStringField;
    qEstoqueNomeCor: TStringField;
    qEstoqueReferencia: TStringField;
    qEstoqueEstMaximo: TFloatField;
    Panel2: TPanel;
    Label2: TLabel;
    ALed1: TALed;
    Label32: TLabel;
    ALed4: TALed;
    Label34: TLabel;
    ALed2: TALed;
    Label3: TLabel;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    RadioGroup3: TRadioGroup;
    StaticText1: TStaticText;
    qOC: TQuery;
    dsOC: TDataSource;
    qEstoquelkQtdOC: TFloatField;
    RadioGroup4: TRadioGroup;
    qEstoqueTamanho: TStringField;
    qEstoqueclQtdOC: TFloatField;
    qOCCodMaterial: TIntegerField;
    qOCCodCor: TIntegerField;
    qOCQtdOC: TFloatField;
    qOCTamanho: TStringField;
    mBalanco: TMemoryTable;
    mBalancoCodProduto: TIntegerField;
    mBalancoNomeProduto: TStringField;
    mBalancoReferencia: TStringField;
    mBalancoCodCor: TIntegerField;
    mBalancoNomeCor: TStringField;
    mBalancoQtd: TFloatField;
    mBalancoEstMinimo: TFloatField;
    mBalancoEstMaximo: TFloatField;
    mBalancoTamanho: TStringField;
    mBalancoPrecoCompra: TFloatField;
    mBalancoVlrTotal: TFloatField;
    Label6: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    SMDBGrid1: TSMDBGrid;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure qEstoqueCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure mBalancoNewRecord(DataSet: TDataSet);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
    procedure Grava_mBalanco(Cor : Integer; Tamanho : String; EstMinimo,EstMaximo,PrecoCompra : Real);
  public
    { Public declarations }
  end;

var
  fConsEstoqueMat: TfConsEstoqueMat;
  linha, pagina : Integer;
  TextoGrade, TextoHifen, TextoQtd : String;
  vMostrarPreco : Boolean;
  F: TextFile;

implementation

uses UDM1, UAgendaTelef, UEscImpressora, URelEstoque, UConsEstUltMov;

{$R *.DFM}

procedure TfConsEstoqueMat.Grava_mBalanco(Cor : Integer; Tamanho : String; EstMinimo,EstMaximo,PrecoCompra : Real);
var
  vFlag : Boolean;
begin
  vFlag := False;
  if qEstoque.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([DM1.tProdutoCodigo.AsInteger,Cor,Tamanho]),[locaseinsensitive]) then
    vFlag := True;
  if RadioGroup2.ItemIndex = 2 then
    begin
      if mBalanco.Locate('CodProduto;CodCor;Tamanho',VarArrayOf([DM1.tProdutoCodigo.AsInteger,Cor,Tamanho]),[locaseinsensitive]) then
        mBalanco.Edit
      else
        mBalanco.Insert;
      mBalancoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      mBalancoNomeProduto.AsString := DM1.tProdutoNome.AsString;
      mBalancoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
      mBalancoCodCor.AsInteger     := Cor;
      if Cor > 0 then
        begin
          DM1.tCor.IndexFieldNames := 'Codigo';
          DM1.tCor.SetKey;
          DM1.tCorCodigo.AsInteger := Cor;
          if DM1.tCor.GotoKey then
            mBalancoNomeCor.AsString := DM1.tCorNome.AsString;
        end;
      if qEstoque.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([DM1.tProdutoCodigo.AsInteger,Cor,Tamanho]),[locaseinsensitive]) then
        mBalancoQtd.AsFloat := qEstoqueQtd.AsFloat;
      mBalancoEstMinimo.AsFloat := EstMinimo;
      mBalancoEstMaximo.AsFloat := EstMaximo;
      mBalancoTamanho.AsString  := Tamanho;
      if vMostrarPreco then
        mBalancoPrecoCompra.AsFloat := PrecoCompra
      else
        mBalancoPrecoCompra.AsFloat := 0;
      mBalancoVlrTotal.AsFloat := mBalancoPrecoCompra.AsFloat * mBalancoQtd.AsFloat;
      mBalanco.Post;
    end
  else
  if vFlag then
    begin
      if mBalanco.Locate('CodProduto;CodCor;Tamanho',VarArrayOf([DM1.tProdutoCodigo.AsInteger,Cor,Tamanho]),[locaseinsensitive]) then
        mBalanco.Edit
      else
        mBalanco.Insert;
      mBalancoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      mBalancoNomeProduto.AsString := DM1.tProdutoNome.AsString;
      mBalancoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
      mBalancoCodCor.AsInteger     := Cor;
      if Cor > 0 then
        begin
          DM1.tCor.IndexFieldNames := 'Codigo';
          DM1.tCor.SetKey;
          DM1.tCorCodigo.AsInteger := Cor;
          if DM1.tCor.GotoKey then
            mBalancoNomeCor.AsString := DM1.tCorNome.AsString;
        end;
       if RadioGroup2.ItemIndex = 0 then
         if qEstoqueQtd.AsFloat > 0 then
           mBalancoQtd.AsFloat := qEstoqueQtd.AsFloat
       else
       if RadioGroup2.ItemIndex = 1 then
         if qEstoqueQtd.AsFloat < 0 then
           mBalancoQtd.AsFloat := qEstoqueQtd.AsFloat;
      mBalancoEstMinimo.AsFloat := EstMinimo;
      mBalancoEstMaximo.AsFloat := EstMaximo;
      mBalancoTamanho.AsString  := Tamanho;
      if vMostrarPreco then
        mBalancoPrecoCompra.AsFloat := PrecoCompra
      else
        mBalancoPrecoCompra.AsFloat := 0;
      mBalancoVlrTotal.AsFloat := mBalancoPrecoCompra.AsFloat * mBalancoQtd.AsFloat;
      mBalanco.Post;
    end
{  if mBalanco.Locate('CodProduto;CodCor;Tamanho',VarArrayOf([DM1.tProdutoCodigo.AsInteger,Cor,Tamanho]),[locaseinsensitive]) then
    mBalanco.Edit
  else
    mBalanco.Insert;
  mBalancoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
  mBalancoNomeProduto.AsString := DM1.tProdutoNome.AsString;
  mBalancoReferencia.AsString  := DM1.tProdutoReferencia.AsString;
  mBalancoCodCor.AsInteger     := Cor;
  if Cor > 0 then
    begin
      DM1.tCor.IndexFieldNames := 'Codigo';
      DM1.tCor.SetKey;
      DM1.tCorCodigo.AsInteger := Cor;
      if DM1.tCor.GotoKey then
        mBalancoNomeCor.AsString := DM1.tCorNome.AsString;
    end;
  if qEstoque.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([DM1.tProdutoCodigo.AsInteger,Cor,Tamanho]),[locaseinsensitive]) then
    mBalancoQtd.AsFloat := qEstoqueQtd.AsFloat;
  mBalancoEstMinimo.AsFloat := EstMinimo;
  mBalancoEstMaximo.AsFloat := EstMaximo;
  mBalancoTamanho.AsString  := Tamanho;
  if vMostrarPreco then
    mBalancoPrecoCompra.AsFloat := PrecoCompra
  else
    mBalancoPrecoCompra.AsFloat := 0;
  mBalancoVlrTotal.AsFloat := mBalancoPrecoCompra.AsFloat * mBalancoQtd.AsFloat;
  mBalanco.Post;}
end;

procedure TfConsEstoqueMat.Imprime_Cabecalho;
var
  Texto1 : String;
  I : Integer;
begin
  pagina := pagina + 1;
  if Pagina > 1 then
    begin
      while linha < 66 do
        begin
          Linha := Linha + 1;
          Writeln(F);
        end;
    end;
  Texto1 := '                                 RELATORIO DO ESTOQUE DOS MATERIAIS                                                  Pag: ';
  Texto1 := texto1 + IntToStr(pagina);
  Writeln(F,Texto1);
  Texto1 := '';
  for i := 1 to 116 do
    texto1 := texto1 + ' ';
  texto1 := texto1 + 'Data: ' + DateToStr(Date);
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Material Descricao                                   Larg.  Cor                      Quantidade');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfConsEstoqueMat.Imprime_Detalhe;
var
 i: Integer;
 texto1, Texto2 : string;
begin
  if linha > 61 then
    Imprime_Cabecalho;
  Texto1 := qEstoqueCodMaterial.AsString;
  for i := 1 to 7 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  Texto2 := Copy(qEstoqueNomeMaterial.AsString,1,43);
  for i := 1 to 43 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + '  ' + Texto2 + '   ';
  texto2 := qEstoqueLargura.AsString;
  For i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '    ';
  Texto2 := '';
  Texto2 := qEstoqueNomeCor.AsString;
  for i := 1 to 15 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '   ';
  texto2 := formatFloat('###,###,##0.00000',qEstoqueQtd.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2 + '  ';
  texto1 := texto1 + '  __________________________';
  Writeln(F,texto1);
  linha := linha + 1;

end;

procedure TfConsEstoqueMat.Imprime_Rodape;
begin
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfConsEstoqueMat.Imprimir;
var
  Texto : String;
begin
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  linha  := 99;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);

  SMDBGrid1.DisableScroll;
  qEstoque.First;
  while not qEstoque.Eof do
    begin
      Imprime_Detalhe;
      qEstoque.Next;
    end;
  Imprime_Rodape;

  SMDBGrid1.EnableScroll;

  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
end;

procedure TfConsEstoqueMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qEstoque.Close;
  qOC.Close;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if Screen.FormCount < 3 then
    begin
      DM1.tProduto.Close;
      DM1.tProdutoCor.Close;
      DM1.tProdutoGrade.Close;
      DM1.tProdutoTam.Close;
    end;
  Action := Cafree;
end;

procedure TfConsEstoqueMat.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfConsEstoqueMat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = ([ssAlt])) and (Key = 65) then
    begin
      fAgendaTelef := TfAgendaTelef.Create(Self);
      fAgendaTelef.ShowModal;
    end;
end;

procedure TfConsEstoqueMat.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  RxDBLookupCombo3.KeyValue := Dm1.tFilialCodigo.AsInteger;
  DateEdit1.Date := Date;
  if DM1.tParametrosTipoEmpresa.AsString = 'I' then
    RadioGroup3.ItemIndex := 1
  else
    RadioGroup3.ItemIndex := 0;
end;

procedure TfConsEstoqueMat.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor   := crHourGlass;
  if DateEdit1.Text = '  /  /    ' then
    DateEdit1.Date := Date;
  //*** Monta o sql do estoque
  qOC.Close;
  qOC.SQL.Clear;
  qOC.SQL.Add('SELECT CodMaterial, CodCor, SUM( QtdRestante ) QtdOC, Tamanho');
  qOC.SQL.Add('FROM "dbOrdemCompraItem.db" Dbordemcompraitem');
  if RxDBLookupCombo3.Text <> '' then
    begin
      qOC.SQL.Add('WHERE Filial = :Filial');
      qOC.ParamByName('Filial').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
  qOC.SQL.Add('GROUP BY CodMaterial, CodCor, Tamanho');
  qOC.Open;

  qEstoque.Close;
  qEstoque.SQL.Clear;
  qEstoque.SQL.Add('SELECT DISTINCT Dbproduto.Codigo CodMaterial, Dbproduto.Nome NomeMaterial, Dbestoquematmov.CodCor, ');
  qEstoque.SQL.Add('SUM(Dbestoquematmov.Qtd2) Qtd, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbestoquematmov.Largura, Dbcor.Nome NomeCor, Dbproduto.Referencia, dbEstoqueMatMov.Tamanho');
  qEstoque.SQL.Add('FROM "dbProduto.DB" Dbproduto');
  qEstoque.SQL.Add('   FULL OUTER JOIN "dbEstoqueMatMov.DB" Dbestoquematmov');
  qEstoque.SQL.Add('   ON  (Dbproduto.Codigo = Dbestoquematmov.CodMaterial)');
  qEstoque.SQL.Add('   FULL OUTER JOIN "dbCor.DB" Dbcor');
  qEstoque.SQL.Add('   ON  (Dbestoquematmov.CodCor = Dbcor.Codigo)');
  //qEstoque.SQL.Add('WHERE ((Dbestoquematmov.DtMov <= :Data) or (Dbestoquematmov.DtMov is NULL)) and (Dbproduto.Estoque = True) and (dbproduto.ProdMat = :T1)');
  qEstoque.SQL.Add('WHERE ((Dbestoquematmov.DtMov <= :Data) or (Dbestoquematmov.DtMov is NULL)) and (Dbproduto.Estoque = True) ');
  if RxDBLookupCombo3.Text <> '' then
    begin
      qEstoque.SQL.Add(' and ((dbEstoqueMatMov.Filial = :Filial) or (dbEstoqueMatMov.Filial is Null))');
      qEstoque.ParamByName('Filial').AsInteger := RxDBLookupCombo3.KeyValue;
    end;
  case RadioGroup3.ItemIndex of
    0 : qEstoque.SQL.Add(' AND (dbproduto.ProdMat = ''P'')');
    1 : qEstoque.SQL.Add(' AND (dbproduto.ProdMat = ''M'') and (dbproduto.MaterialOutros = ''M'') ');
    2 : qEstoque.SQL.Add(' AND (dbproduto.ProdMat = ''M'') and (dbproduto.MaterialOutros = ''O'') ');
  end;
  qEstoque.SQL.Add('GROUP BY Dbproduto.Codigo, Dbproduto.Nome, Dbestoquematmov.CodCor, Dbproduto.EstMinimo, Dbproduto.EstMaximo, Dbestoquematmov.Largura, Dbcor.Nome, Dbproduto.Referencia, dbEstoqueMatMov.Tamanho');
  case RadioGroup4.ItemIndex of
    0 : qEstoque.SQL.Add('ORDER BY Referencia, NomeCor, Tamanho');
    1 : qEstoque.SQL.Add('ORDER BY NomeMaterial, NomeCor, Tamanho');
    2 : qEstoque.SQL.Add('ORDER BY Codigo, NomeCor, Tamanho');
  end;
  qEstoque.ParamByName('Data').AsDate := DateEdit1.Date;
  qEstoque.Open;

  RadioGroup2Click(Sender);

  Screen.Cursor   := crDefault;
end;

procedure TfConsEstoqueMat.RadioGroup2Click(Sender: TObject);
var
  vQtd : Real;
begin
  if qEstoque.Active then
    begin
      vQtd := 0;
      qEstoque.Filtered := False;
      case RadioGroup2.ItemIndex of
        0 : begin
              qEstoque.Filter   := 'Qtd > ''' +FloatToStr(vQtd)+ '''';
              qEstoque.Filtered := True;
            end;
        1 : begin
              qEstoque.Filter   := 'Qtd < ''' +FloatToStr(vQtd)+ ''' and Qtd is not null';
              qEstoque.Filtered := True;
            end;
      end;
    end
  else
    qEstoque.Filtered := False;
end;

procedure TfConsEstoqueMat.BitBtn6Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    Imprimir
  else
    begin
      qEstoque.First;
      fRelEstoque := TfRelEstoque.Create(Self);
      fRelEstoque.QuickRep1.Preview;
      fRelEstoque.QuickRep1.Free;
    end;
end;

procedure TfConsEstoqueMat.qEstoqueCalcFields(DataSet: TDataSet);
begin
  if qEstoqueTamanho.AsString <> '' then
    begin
      if qOC.Locate('CodMaterial;CodCor;Tamanho',VarArrayOf([qEstoqueCodMaterial.AsInteger,qEstoqueCodCor.AsInteger,qEstoqueTamanho.AsString]),[locaseinsensitive]) then
        qEstoqueclQtdOC.AsFloat := qOCQtdOC.AsFloat
      else
        qEstoqueclQtdOC.AsFloat := 0;
    end
  else
  if qOC.Locate('CodMaterial;CodCor',VarArrayOf([qEstoqueCodMaterial.AsInteger,qEstoqueCodCor.AsInteger]),[locaseinsensitive]) then
    qEstoqueclQtdOC.AsFloat := qOCQtdOC.AsFloat
  else
    qEstoqueclQtdOC.AsFloat := 0;
end;

procedure TfConsEstoqueMat.BitBtn3Click(Sender: TObject);
begin
  vMostrarPreco := False;
  if DM1.tUsuarioAdministrador.AsBoolean then
    if MessageDlg('Imprimir com Preço?',mtconfirmation,[mbok,mbno],0)=mrok then
      vMostrarPreco := True;

  DateEdit1.Date := Date;
  BitBtn1Click(Sender);

  case RadioGroup4.ItemIndex of
    0 : DM1.tProduto.IndexFieldNames := 'Referencia';
    1 : DM1.tProduto.IndexFieldNames := 'Nome';
    2 : DM1.tProduto.IndexFieldNames := 'Codigo';
  end;

  DM1.tProduto.Filtered := False;
  if RadioGroup3.ItemIndex = 0 then
    DM1.tProduto.Filter   := 'ProdMat = '''+'P'+''''
  else
    DM1.tProduto.Filter   := 'ProdMat = '''+'M'+'''';
  DM1.tProduto.Filtered := True;

  mBalanco.EmptyTable;

  DM1.tProduto.First;
  while not DM1.tProduto.Eof do
    begin
      if DM1.tProdutoLancaCor.AsBoolean then
        begin
          DM1.tProdutoCor.First;
          while not DM1.tProdutoCor.Eof do
            begin
              if DM1.tProdutoLancaGrade.AsBoolean then
                begin
                  DM1.tProdutoGrade.First;
                  while not DM1.tProdutoGrade.Eof do
                    begin
                      DM1.tProdutoTam.First;
                      while not DM1.tProdutoTam.Eof do
                        begin
                          if DM1.tProdutoPrecoCor.AsBoolean then
                            Grava_mBalanco(DM1.tProdutoCorCodCor.AsInteger,DM1.tProdutoTamlkTamanho.AsString,DM1.tProdutoTamQtdMinima.AsFloat,DM1.tProdutoTamQtdMaxima.AsFloat,DM1.tProdutoCorPrCusto.AsFloat)
                          else
                            Grava_mBalanco(DM1.tProdutoCorCodCor.AsInteger,DM1.tProdutoTamlkTamanho.AsString,DM1.tProdutoTamQtdMinima.AsFloat,DM1.tProdutoTamQtdMaxima.AsFloat,DM1.tProdutoPrecoCusto.AsFloat);
                          DM1.tProdutoTam.Next;
                        end;
                      DM1.tProdutoGrade.Next;
                    end;
                end
              else
                Grava_mBalanco(DM1.tProdutoCorCodCor.AsInteger,'',DM1.tProdutoEstMinimo.AsFloat,DM1.tProdutoEstMaximo.AsFloat,DM1.tProdutoPrecoCusto.AsFloat);
              DM1.tProdutoCor.Next;
            end;
        end
      else
      if DM1.tProdutoLancaGrade.AsBoolean then
        begin
          DM1.tProdutoGrade.First;
          while not DM1.tProdutoGrade.Eof do
            begin
              DM1.tProdutoTam.First;
              while not DM1.tProdutoTam.Eof do
                begin
                  Grava_mBalanco(0,DM1.tProdutoTamlkTamanho.AsString,DM1.tProdutoEstMinimo.AsFloat,DM1.tProdutoEstMaximo.AsFloat,DM1.tProdutoPrecoCusto.AsFloat);
                  DM1.tProdutoTam.Next;
                end;
              DM1.tProdutoGrade.Next;
            end;
        end
      else
        Grava_mBalanco(0,'',DM1.tProdutoEstMinimo.AsFloat,DM1.tProdutoEstMaximo.AsFloat,DM1.tProdutoPrecoCusto.AsFloat);
      DM1.tProduto.Next;
    end;
  DM1.tProduto.Filtered := False;

  if vMostrarPreco then
    begin
      fRelEstoque := TfRelEstoque.Create(Self);
      fRelEstoque.QuickRep3.Preview;
      fRelEstoque.QuickRep3.Free;
    end
  else
    begin
      fRelEstoque := TfRelEstoque.Create(Self);
      fRelEstoque.QuickRep2.Preview;
      fRelEstoque.QuickRep2.Free;
    end;
end;

procedure TfConsEstoqueMat.mBalancoNewRecord(DataSet: TDataSet);
begin
  mBalancoQtd.AsFloat       := 0;
  mBalancoEstMinimo.AsFloat := 0;
  mBalancoEstMaximo.AsFloat := 0;
end;

procedure TfConsEstoqueMat.SMDBGrid1DblClick(Sender: TObject);
begin
  if qEstoqueCodMaterial.AsInteger > 0 then
    begin
      fConsEstUltMov := TfConsEstUltMov.Create(Self);
      if RxDBLookupCombo3.Text <> '' then
        fConsEstUltMov.RxDbLookupCombo1.KeyValue := RxDbLookupCombo3.KeyValue;
      fConsEstUltMov.ShowModal;
    end;
end;

procedure TfConsEstoqueMat.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  vQtd : Real;
begin
  vQtd := 0;
  if StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat)) <  StrToFloat(FormatFloat('0.00000',vQtd)) then
    begin
      Background  := clRed;
      AFont.Color := clBlack;
    end
  else
  if StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat)) <  StrToFloat(FormatFloat('0.00000',qEstoqueEstMinimo.AsFloat)) then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end
  else
  if StrToFloat(FormatFloat('0.00000',qEstoqueEstMaximo.AsFloat)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.00000',qEstoqueQtd.AsFloat)) >  StrToFloat(FormatFloat('0.00000',qEstoqueEstMaximo.AsFloat)) then
        begin
          Background  := clAqua;
          AFont.Color := clBlack;
        end;
    end;
end;

procedure TfConsEstoqueMat.RxDBLookupCombo3Exit(Sender: TObject);
begin
  DBText1.Visible := (RxDBLookupCombo3.Text <> '');
end;

end.
