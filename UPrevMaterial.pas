unit UPrevMaterial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Buttons, Menus, RXCtrls, DBFilter, RxLookup,
  Db, DBTables, MemTable, DBClient;

type
  TfPrevMaterial = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    dsmMaterial: TDataSource;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    RadioGroup3: TRadioGroup;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    CheckBox2: TCheckBox;
    Label7: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    qConsulta: TQuery;
    mMaterial: TClientDataSet;
    mMaterialCodMaterial: TIntegerField;
    mMaterialNomeMaterial: TStringField;
    mMaterialCor: TStringField;
    mMaterialUnidade: TStringField;
    mMaterialIpi: TFloatField;
    mMaterialIcms: TFloatField;
    mMaterialSaldo: TFloatField;
    mMaterialPreco: TFloatField;
    mMaterialReferencia: TStringField;
    mMaterialPrVenda: TFloatField;
    mMaterialProdMat: TStringField;
    mMaterialClasFiscal: TStringField;
    qConsultaCodigo: TIntegerField;
    qConsultaCodGrupo: TIntegerField;
    qConsultaCodSubGrupo: TIntegerField;
    qConsultaReferencia: TStringField;
    qConsultaNome: TStringField;
    qConsultaUnidade: TStringField;
    qConsultaCodClasFiscal: TStringField;
    qConsultaCodSitTrib: TIntegerField;
    qConsultaInativo: TBooleanField;
    qConsultaAliqIcms: TFloatField;
    qConsultaAliqIPI: TFloatField;
    qConsultaDescMaterial: TStringField;
    qConsultaReferencia2: TStringField;
    qConsultaVlrVenda: TFloatField;
    qConsultaProdMat: TStringField;
    qConsultaPrecoCusto: TFloatField;
    qConsultaCodFornecedor: TIntegerField;
    qConsultaEstMinimo: TFloatField;
    qConsultaEstMaximo: TFloatField;
    qConsultaPiloto: TBooleanField;
    qConsultaFrequencia: TBooleanField;
    RadioGroup4: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
    linha, pagina : Integer;
    F: TextFile;
    procedure Gravo_Memo;
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Rodape;
    procedure Monta_SQL;
    procedure Le_qConsulta;
  public
    { Public declarations }
  end;

var
  fPrevMaterial: TfPrevMaterial;

implementation

uses UDM1, URelMaterial, Printers, UEscImpressora;

{$R *.DFM}

procedure TfPrevMaterial.Le_qConsulta;
begin
  qConsulta.First;
  while not qConsulta.Eof do
    begin
      if DM1.tProduto.Locate('Codigo',qConsultaCodigo.AsInteger,[loCaseInsensitive]) then
        Gravo_Memo;
      qConsulta.Next;
    end;
end;

procedure TfPrevMaterial.Monta_SQL;
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Add('SELECT Codigo, CodGrupo, CodSubGrupo, Referencia, Nome, Unidade, CodClasFiscal, CodSitTrib, Inativo, AliqIcms, AliqIPI, DescMaterial, Referencia2, ');
  qConsulta.SQL.Add(' VlrVenda, ProdMat, PrecoCusto, CodFornecedor, EstMinimo, EstMaximo, Piloto, Frequencia ');
  qConsulta.SQL.Add('FROM "dbProduto.DB" Dbproduto ');
  qConsulta.SQL.Add('WHERE (0=0) ');
  if RadioGroup1.ItemIndex = 1 then
    begin
      if RxDBLookupCombo3.Text <> '' then
        begin
          qConsulta.SQL.Add('  AND (Nome >= :Nome1) ');
          qConsulta.ParamByName('Nome1').AsString := RxDBLookupCombo3.Text;
        end;
      if RxDBLookupCombo4.Text <> '' then
        begin
          qConsulta.SQL.Add('  AND (Nome <= :Nome2) ');
          qConsulta.ParamByName('Nome2').AsString := RxDBLookupCombo4.Text;
        end;
    end;

  if RadioGroup1.ItemIndex = 0 then
    begin
      if RxDBLookupCombo1.Text <> '' then
        begin
          qConsulta.SQL.Add('  AND (Referencia >= :Ref1) ');
          qConsulta.ParamByName('Ref1').AsString := RxDBLookupCombo1.Text;
        end;
      if RxDBLookupCombo2.Text <> '' then
        begin
          qConsulta.SQL.Add('  AND (Referencia <= :Ref2) ');
          qConsulta.ParamByName('Ref2').AsString := RxDBLookupCombo2.Text;
        end;
    end;

  if RadioGroup1.ItemIndex = 2 then
    begin
      if RxDBLookupCombo5.Text <> '' then
        begin
          qConsulta.SQL.Add('  AND (Codigo >= :Cod1) ');
          qConsulta.ParamByName('Cod1').AsInteger := RxDBLookupCombo5.KeyValue;
        end;
      if RxDBLookupCombo6.Text <> '' then
        begin
          qConsulta.SQL.Add('  AND (Codigo <= :Cod2) ');
          qConsulta.ParamByName('Cod2').AsInteger := RxDBLookupCombo6.KeyValue;
        end;
    end;

  if (CheckBox2.Checked) and (RxDBLookupCombo7.Text <> '') then
    begin
      qConsulta.SQL.Add('  AND (CodFornecedor <= :CodFornecedor) ');
      qConsulta.ParamByName('CodFornecedor').AsInteger := RxDBLookupCombo7.KeyValue;
    end;
  
  if not CheckBox1.Checked then
    qConsulta.SQL.Add('  AND (Inativo = False) ')
  else
    qConsulta.SQL.Add('  AND (Inativo = True) ');

  case RadioGroup2.ItemIndex of
    0 : qConsulta.SQL.Add(' AND (ProdMat = ''M'') ');
    1 : qConsulta.SQL.Add(' AND (ProdMat = ''P'') ');
    2 : qConsulta.SQL.Add(' AND (ProdMat = ''M'') AND (MaterialOutros = ''O'') ');
  end;
  case RadioGroup4.ItemIndex of
    0 : qConsulta.SQL.Add(' AND (PosseMat = ''E'') ');
    1 : qConsulta.SQL.Add(' AND (PosseMat = ''T'') ');
  end;
  qConsulta.Open;
end;

procedure TfPrevMaterial.Gravo_Memo;
begin
  if Dm1.tProdutoCor.IsEmpty then
    begin
      mMaterial.Insert;
      mMaterialCodMaterial.AsInteger := Dm1.tProdutoCodigo.AsInteger;
      mMaterialReferencia.AsString   := DM1.tProdutoReferencia.AsString;
      mMaterialICMS.AsFloat          := Dm1.tProdutoAliqIcms.AsFloat;
      mMaterialIpi.AsFloat           := Dm1.tProdutoAliqIPI.AsFloat;
      mMaterialNomeMaterial.AsString := Dm1.tProdutoNome.AsString;
      mMaterialUnidade.AsString      := Dm1.tProdutoUnidade.AsString;
      mMaterialPreco.AsFloat         := Dm1.tProdutoPrecoCusto.AsFloat;
      mMaterialPrVenda.AsFloat       := DM1.tProdutoVlrVenda.AsFloat;
      mMaterialSaldo.AsFloat         := Dm1.tProdutoEstMinimo.AsFloat;
      mMaterialProdMat.AsString      := DM1.tProdutoProdMat.AsString;
      mMaterialClasFiscal.AsString   := DM1.tProdutoCodClasFiscal.AsString;
      if (DM1.tProdutoProdMat.AsString = 'M') and (DM1.tProdutoMaterialOutros.AsString = 'O') then
        mMaterialProdMat.AsString      := 'O';
      mMaterial.Post;
    end
  else
    begin
      Dm1.tProdutoCor.First;
      while not Dm1.tProdutoCor.Eof do
        begin
          //if CheckBox1.Checked = DM1.tProdutoCorInativo.AsBoolean then
            begin
              mMaterial.Insert;
              mMaterialCodMaterial.AsInteger := Dm1.tProdutoCodigo.AsInteger;
              mMaterialReferencia.AsString   := Dm1.tProdutoReferencia.AsString;
              mMaterialCor.AsString          := Dm1.tProdutoCorlkNomeCor.AsString;
              mMaterialICMS.AsFloat          := Dm1.tProdutoAliqIcms.AsFloat;
              mMaterialIpi.AsFloat           := Dm1.tProdutoAliqIPI.AsFloat;
              mMaterialNomeMaterial.AsString := Dm1.tProdutoNome.AsString;
              mMaterialUnidade.AsString      := Dm1.tProdutoUnidade.AsString;
              if Dm1.tProdutoPrecoCor.AsBoolean then
                mMaterialPreco.AsFloat := Dm1.tProdutoCorPrCusto.AsFloat
              else
                mMaterialPreco.AsFloat := Dm1.tProdutoPrecoCusto.AsFloat;
              mMaterialSaldo.AsFloat       := Dm1.tProdutoEstMinimo.AsFloat;
              mMaterialPrVenda.AsFloat     := DM1.tProdutoVlrVenda.AsFloat;
              mMaterialProdMat.AsString    := DM1.tProdutoProdMat.AsString;
              mMaterialClasFiscal.AsString := DM1.tProdutoCodClasFiscal.AsString;
              if (DM1.tProdutoProdMat.AsString = 'M') and (DM1.tProdutoMaterialOutros.AsString = 'O') then
                mMaterialProdMat.AsString      := 'O';
              mMaterial.Post;
            end;
          Dm1.tProdutoCor.Next;
        end;
    end;
end;

procedure TfPrevMaterial.Imprime_Cabecalho;
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
  texto1 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 113 - Length(texto1) do
    texto1 := texto1 + ' ';
  texto1 := texto1 + 'Pagina.: ' + IntToStr(pagina);
  Writeln(F,Texto1);

  case RadioGroup1.ItemIndex of
    0 : texto1 := '                                          RELACAO DE MATERIAIS                                                   Emissao: ' + DateToStr(Date);
    1 : texto1 := '                                          RELACAO DE PRODUTOS                                                    Emissao: ' + DateToStr(Date);
    2 : texto1 := '                                          RELACAO DE MATERIAIS DIVERSOS                                          Emissao: ' + DateToStr(Date);
    3 : texto1 := '                                          RELACAO DE MATERIAIS/PRODUTOS                                          Emissao: ' + DateToStr(Date);
  end;
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Codigo Referencia             Nome                                           Cor             Unid.     IPI    ICMS   ');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfPrevMaterial.Imprime_Detalhe;
var
 i: Integer;
 texto1, Texto2: string;
begin
  Texto2 := mMaterialCodMaterial.AsString;
  for i := 1 to 6 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := texto2 + ' ';

  Texto2 := mMaterialReferencia.AsString;
  for i := 1 to 22 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + ' ';

  Texto2 := copy(mMaterialNomeMaterial.AsString,1,40);
  for i := 1 to 40 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + '       ';

  Texto2 := mMaterialCor.AsString;
  for i := 1 to 15 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + '  ';

  Texto2 := mMaterialUnidade.AsString;
  for i := 1 to 3 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2 + '   ';

  texto2 := FormatFloat('##0.00',mMaterialIpi.AsFloat);
  for i := 1 to 5 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '  ';

  texto2 := FormatFloat('##0.00',mMaterialICMS.AsFloat);
  for i := 1 to 5 - Length(Texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '   ' + mMaterialProdMat.AsString;
  
  Writeln(F,Texto1);
  Linha := Linha + 1;
end;

procedure TfPrevMaterial.Imprime_Rodape;
begin
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfPrevMaterial.Imprimir;
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

  mMaterial.First;
  while not mMaterial.Eof do
    begin
      if linha > 61 then
        Imprime_Cabecalho;
      Imprime_Detalhe;
      mMaterial.Next;
    end;
  Imprime_Rodape;

  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
end;

procedure TfPrevMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tProduto.Close;
  DM1.tProdutoCor.Close;
  DM1.tCor.Close;
  DM1.tFornecedores.Close;
  qConsulta.Close;
  Action             := Cafree;
end;

procedure TfPrevMaterial.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo4.ClearValue;
  RadioGroup1.ItemIndex := 0;
  RadioGroup2.ItemIndex := 0;
end;

procedure TfPrevMaterial.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevMaterial.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
    0: begin
         RxDBLookupCombo1.Enabled  := True;
         RxDBLookupCombo2.Enabled  := True;
         RxDBLookupCombo3.ClearValue;
         RxDBLookupCombo4.ClearValue;
         RxDBLookupCombo5.ClearValue;
         RxDBLookupCombo6.ClearValue;
         RxDBLookupCombo3.Enabled  := False;
         RxDBLookupCombo4.Enabled  := False;
         Panel6.Enabled            := False;
       end;
    1: begin
         RxDBLookupCombo1.Enabled := False;
         RxDBLookupCombo2.Enabled := False;
         RxDBLookupCombo1.ClearValue;
         RxDBLookupCombo2.ClearValue;
         RxDBLookupCombo5.ClearValue;
         RxDBLookupCombo6.ClearValue;
         RxDBLookupCombo3.Enabled := True;
         RxDBLookupCombo4.Enabled := True;
         Panel6.Enabled           := False;
       end;
    2: begin
         RxDBLookupCombo1.Enabled := False;
         RxDBLookupCombo2.Enabled := False;
         RxDBLookupCombo1.ClearValue;
         RxDBLookupCombo2.ClearValue;
         RxDBLookupCombo3.ClearValue;
         RxDBLookupCombo4.ClearValue;
         RxDBLookupCombo3.Enabled := False;
         RxDBLookupCombo4.Enabled := False;
         Panel6.Enabled           := True;
       end;
  end;
end;

procedure TfPrevMaterial.FormShow(Sender: TObject);
begin
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tCor.Open;
  DM1.tFornecedores.Open;
  RxDBLookupCombo1.Enabled := False;
  RxDBLookupCombo2.Enabled := False;
  RxDBLookupCombo3.Enabled := False;
  RxDBLookupCombo4.Enabled := False;
end;

procedure TfPrevMaterial.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfPrevMaterial.BitBtn1Click(Sender: TObject);
begin
  mMaterial.EmptyDataSet;
  case RadioGroup1.ItemIndex of
    0 : mMaterial.IndexFieldNames := 'Referencia';
    1 : mMaterial.IndexFieldNames := 'Nome';
    2 : mMaterial.IndexFieldNames := 'CodMaterial';
  end;
  Monta_SQL;
  Le_qConsulta;

  if RadioGroup3.ItemIndex = 0 then
    Imprimir
  else
    begin
      fRelMaterial := TfRelMaterial.Create(Self);
      fRelMaterial.QuickRep1.Preview;
      fRelMaterial.QuickRep1.Free;
    end;
end;

procedure TfPrevMaterial.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfPrevMaterial.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfPrevMaterial.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfPrevMaterial.CheckBox2Click(Sender: TObject);
begin
  RxDBLookupCombo7.ReadOnly := not(CheckBox2.Checked);
end;

end.
