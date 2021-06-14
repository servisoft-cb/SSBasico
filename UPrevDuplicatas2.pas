unit UPrevDuplicatas2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, CurrEdit, DBFilter,
  Grids, DBGrids, Db, DBTables, ValorPor, RxLookup, Variants, RXCtrls,
  Menus;

type
  TfPrevDuplicatas2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    RadioGroup1: TRadioGroup;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    tCReceberParcHistIns: TTable;
    tCReceberParcHistInsNumCReceber: TIntegerField;
    tCReceberParcHistInsParcCReceber: TIntegerField;
    tCReceberParcHistInsItem: TIntegerField;
    tCReceberParcHistInsCodHistorico: TIntegerField;
    tCReceberParcHistInsDtHistorico: TDateField;
    tCReceberParcHistInsHistorico: TStringField;
    ValorPorExtenso1: TValorPorExtenso;
    RadioGroup2: TRadioGroup;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label7: TLabel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    MSDOS1: TMenuItem;
    Windows1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    tCReceberParcHistInsFilial: TIntegerField;
    Label8: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure MSDOS1Click(Sender: TObject);
    procedure Windows1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Imprimir;
    procedure Imprime_Dup;
    procedure Imprime_Dup2;
  public
    { Public declarations }
    procedure Grava_Historico(Obs : String);
  end;

var
  fPrevDuplicatas2: TfPrevDuplicatas2;
  Linha, Pagina : Integer;
  vNumNota : Integer;
  F: TextFile;
  vVlrTotal : Real;
  vData : TDate;
  vNotas : String;

implementation

uses UDM1, UEscImpressora, URelDuplicata2;

{$R *.DFM}

procedure TfPrevDuplicatas2.Grava_Historico(Obs : String);
begin
  tCReceberParcHistIns.Refresh;
  tCReceberParcHistIns.Last;
  DM1.tCReceberParcHist.Insert;
  DM1.tCReceberParcHistNumCReceber.AsInteger   := DM1.tCReceberParcNumCReceber.AsInteger;
  DM1.tCReceberParcHistParcCReceber.AsInteger  := DM1.tCReceberParcParcCReceber.AsInteger;
  DM1.tCReceberParcHistItem.AsInteger          := tCReceberParcHistInsItem.AsInteger + 1;
  DM1.tCReceberParcHistDtHistorico.AsDateTime  := Date;
  DM1.tCReceberParcHistCodHistorico.AsCurrency := 0;
  //DM1.tCReceberParcHistHistorico.AsString      := 'DUPLICATA EMITIDA';
  DM1.tCReceberParcHistHistorico.AsString      := Obs;
  DM1.tCReceberParcHist.Post;
end;

procedure TfPrevDuplicatas2.Imprime_Dup;
var
 i : Integer;
 texto1, texto2 : String;
begin
  Writeln(F,' ----------------------------------------------------------------------------------------------------------------------------------');
  texto1 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 60 - Length(texto1) do
    texto1 := texto1 + ' ';
  texto1 := '| ' + texto1 + ' | ';
  texto2 := DM1.tEmpresaEndereco.AsString;
  for i := 1 to 60 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '      |';
  writeln(F,texto1);

  texto2 := '| CNPJ: ' + DM1.tEmpresaCgc.AsString;
  for i := 1 to 63 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto2 + '| ';
  texto2 := DM1.tEmpresaCidade.AsString;
  for i := 1 to 35 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '-     ';
  texto2 := DM1.tEmpresaEstado.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                       |';
  writeln(F,texto1);

  texto2 := '| Inscricao Estadual: ' + DM1.tEmpresaInscr.AsString;
  for i := 1 to 63 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto2 + '| CEP: ';
  texto2 := DM1.tEmpresaCep.AsString;
  for i := 1 to 9 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '   Fone: ';
  texto2 := DM1.tEmpresaTel.AsString;
  for i := 1 to 16 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + 'Fax: ';
  texto2 := DM1.tEmpresaFax.AsString;
  for i := 1 to 22 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '|';
  writeln(F,texto1);

  writeln(F,'|----------------------------------------------------------------------------------------------------------------------------------');
  writeln(F,'|              F A T U R A           ||   D U P L I C A T A             ||      DATA      |  --------------------------------------');
  writeln(F,'|------------------------------------||---------------------------------||                | |              PARA USO DA             |');
  writeln(F,'|      VALOR      |   NUMERO         ||      VALOR     |     NUMERO     ||   VENCIMENTO   | |        INSTITUICAO FINANCEIRA        |');
  writeln(F,'|-----------------|------------------||----------------|----------------||                | |                                      |');

  // se for agrupado//
  if RadioGroup1.ItemIndex = 3 then
    texto2 := FormatFloat('###,###,##0.00',vVlrTotal)
  else
    texto2 := FormatFloat('###,###,##0.00',DM1.tCReceberVlrTotal.AsFloat);
  for i := 1 to 14 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := '| ' + texto2 + '  |  ';
  texto2 := DM1.tCReceberParcNumNota.AsString;
  for i := 1 to 8 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '        || ';
  if RadioGroup1.ItemIndex = 3 then
    texto2 := FormatFloat('###,###,##0.00',vVlrTotal)
  else
    texto2 := FormatFloat('###,###,##0.00',DM1.tCReceberParcVlrParcCReceber.AsFloat);
  for i := 1 to 14 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' | ';
  texto2 := DM1.tCReceberParcNumNota.AsString;
  for i := 1 to 8 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + ' / ';
  texto2 := DM1.tCReceberParcParcCReceber.AsString;
  for i := 1 to 3 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + ' ||   ';
  // se for agrupado//
  texto2 := DM1.tCReceberParcDtVencCReceber.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '   | |                                      |';
  writeln(F,texto1);

  writeln(F,' -----------------------------------------------------------------------------------------  |                                      |');
  if RadioGroup1.ItemIndex = 3 then
    begin
      Texto1 := '| ';
      Texto2 := 'NOTAS AGRUPADAS: ' + vNotas;
      for i := 1 to 87 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 +  ' | |                                      |';
      writeln(F,Texto1);
    end
  else
    writeln(F,'|                                                                                         | |                                      |');
  writeln(F,'|                                                                                         | |                                      |');
{  writeln(F,'| DESCONTO DE:                                      ATE:                                  | |                                      |');
  writeln(F,'| CONDICOES ESPECIAIS:                                                                    | |                                      |');}
  writeln(F,' -----------------------------------------------------------------------------------------   --------------------------------------');

  texto1 := '|                  || Nome do Sacado: ';
  texto2 := DM1.tCReceberParclkNomeCliente.AsString;
  for i := 1 to 40 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                                        -  ';
  texto2 := DM1.tCReceberCodCli.AsString;
  for i := 1 to 6 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 +  '    |';
  writeln(F,texto1);

  texto1 := '|                  || Endereco......: ';
  texto2 := DM1.tCReceberParclkEndereco.AsString + ' - ' + DM1.tCReceberParclkNumEnd.AsString;;
  for i := 1 to 40 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '      ';
  texto2 := DM1.tCReceberParclkBairro.AsString;
  for i := 1 to 25 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                      |';
  writeln(F,texto1);

  texto1 := '|           |      || Municipio.....: ';
  texto2 := DM1.tCReceberParclkCidade.AsString;
  for i := 1 to 26 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                    Estado: ';
  texto2 := DM1.tCReceberParclkEstado.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '             CEP: ';
  texto2 := DM1.tCReceberParclkCep.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '         |';
  writeln(F,texto1);

  texto1 := '|           |      || Praca de Pagto: ';
  texto2 := DM1.tCReceberParclkEndPgto.AsString;
  for i := 1 to 40 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '      ';
  texto2 := DM1.tCReceberParclkCidPgto.AsString;
  for i := 1 to 26 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + ' - ';
  texto2 := DM1.tCReceberParclkUfPgto.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + ' - ';
  texto2 := DM1.tCReceberParclkCepPgto.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '   |';
  writeln(F,texto1);

  texto1 := '|           |      || Inscr. C.N.P.J: ';
  texto2 := DM1.tCReceberParclkCgcCpf.AsString;
  for i := 1 to 18 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                            Inscr.Estadual: ';
  texto2 := DM1.tCReceberParclkInscrEst.AsString;
  for i := 1 to 14 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                 |';
  writeln(F,texto1);

  writeln(F,'|           |      | --------------------------------------------------------------------------------------------------------------|');

  texto1 := '|           |      ||   VALOR  |';

  if RadioGroup1.ItemIndex = 3 then
    ValorPorExtenso1.Valor := vVlrTotal
  else
    ValorPorExtenso1.Valor := DM1.tCReceberParcVlrParcCReceber.AsFloat;
  texto2 := ValorPorExtenso1.Texto;
  for i := 1 to 250 - Length(texto2) do
    texto2 := texto2 + '*';
  texto1 := texto1 + Copy(Texto2,1,90) + '         |';
  writeln(F,texto1);

  texto1 := '|           |      ||    POR   | ' + Copy(Texto2,91,90) + '        |';
  writeln(F,texto1);

  texto1 := '|           |      ||  EXTENSO | ' + Copy(Texto2,181,70) + '                            |';
  writeln(F,texto1);

  writeln(F,'|           |      | --------------------------------------------------------------------------------------------------------------');
  writeln(F,'|           |      || Reconheco(emos) a exatidao desta DUPLICATA DE VENDA MERCANTIL, na importancia acima, que pagarei(emos) a     |');

  texto1 := '|           |      || ';
  texto2 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 60 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '., na praca e vencimento acima indicados         |';
  writeln(F,texto1);

  writeln(F,'|           |      ||                                                                                                              |');

  texto1 := '|           |      ||           ';
  texto2 := DM1.tCReceberParcDtGerado.AsString;
  for i := 1 to 10 - length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '                               ________________________________________________          |';
  writeln(F,texto1);
  //writeln(F,'|           |      ||   ___________/___________/___________              ________________________________________________          |');
  writeln(F,'|                  ||         Data do aceite                                           Assinatura do Sacado                        |');
  writeln(F,' ------------------  --------------------------------------------------------------------------------------------------------------');
  writeln(F);
  writeln(F);
  writeln(F);
end;

procedure TfPrevDuplicatas2.Imprime_Dup2;
var
 i : Integer;
 texto1, texto2 : String;
begin
  for i := 1 to 8 do
    Writeln(F);
  texto1 := ' ';
  for i := 1 to 90 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + DateToStr(Date);
  Writeln(F,Texto1);
  for i := 1 to 4 do
    Writeln(F);
  texto2 := FormatFloat('###,###,##0.00',DM1.tCReceberVlrTotal.AsFloat);
  for i := 1 to 25 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := ' ' + texto2;
  texto2 := DM1.tCReceberParcNumNota.AsString;
  for i := 1 to 12 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '     ';
  texto2 := FormatFloat('###,###,##0.00',DM1.tCReceberParcVlrParcCReceber.AsFloat);
  for i := 1 to 24 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2;
  texto2 := DM1.tCReceberParcNumNota.AsString;
  for i := 1 to 12 - Length(texto2) do
    texto2 := ' ' + texto2;
  texto1 := texto1 + texto2 + '/';
  texto2 := DM1.tCReceberParcParcCReceber.AsString;
  for i := 1 to 3 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '     ';
  texto2 := DM1.tCReceberParcDtVencCReceber.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;
  writeln(F,texto1);
  for i := 1 to 6 do
    Writeln(F);
  Texto1 := ' ';
  for i := 1 to 42 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + DM1.tCReceberParclkNomeCliente.AsString + ' - ' + DM1.tCReceberCodCli.AsString;
  Writeln(F,texto1);
  Texto1 := ' ';
  for i := 1 to 42 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + DM1.tCReceberParclkEndereco.AsString + ' - ' + DM1.tCReceberParclkNumEnd.AsString;
  Writeln(F,Texto1);
  Texto1 := ' ';
  for i := 1 to 42 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto2 := DM1.tCReceberParclkCidade.AsString;
  for i := 1 to 53 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 := DM1.tCReceberParclkEstado.AsString;
  for i := 1 to 26 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + DM1.tCReceberParclkCep.AsString;
  Writeln(F,Texto1);
  Writeln(F);
  Texto1 := ' ';
  for i := 1 to 42 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto2 := DM1.tCReceberParclkEndPgto.AsString;
  for i := 1 to 40 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + ' - ';
  Texto2 := DM1.tCReceberParclkCidPgto.AsString;
  for i := 1 to 26 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + ' - ';
  Texto2 := DM1.tCReceberParclkUfPgto.AsString;
  for i := 1 to 2 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + ' - ';
  Texto2 := DM1.tCReceberParclkCepPgto.AsString;
  for i := 1 to 10 - Length(texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  Texto1 := ' ';
  for i := 1 to 42 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto2 := DM1.tCReceberParclkCgcCpf.AsString;
  for i := 1 to 66 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + DM1.tCReceberParclkInscrEst.AsString;
  Writeln(F,Texto1);
  for i := 1 to 2 do
    Writeln(F);
  ValorPorExtenso1.Valor := DM1.tCReceberParcVlrParcCReceber.AsFloat;
  Texto2 := ValorPorExtenso1.Texto;
  for i := 1 to 285 - Length(Texto2) do
    Texto2 := Texto2 + '*';
  Texto1 := ' ';
  for i := 1 to 41 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + Copy(Texto2,1,95);
  writeln(F,Texto1);
  Texto1 := ' ';
  for i := 1 to 41 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + Copy(Texto2,96,95);
  Writeln(F,Texto1);
  Texto1 := ' ';
  for i := 1 to 41 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + Copy(Texto2,191,95);
  Writeln(F,Texto1);
  for i := 1 to 13 do
    Writeln(F);
end;

procedure TfPrevDuplicatas2.Imprimir;
var
  Texto : String;
begin
  fEscImpressora := TfEscImpressora.Create(Self);
  fEscImpressora.ShowModal;
  AssignFile(F,DM1.tImpressoraEndereco.AsString);
  ReWrite(F);
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  DM1.tCReceber.First;
  while not DM1.tCReceber.Eof do
    begin
      DM1.tCReceberParc.First;
      while not DM1.tCReceberParc.Eof do
        begin
          Case RadioGroup2.ItemIndex of
            0 : Imprime_Dup2;
            1 : Imprime_Dup;
          end;
          Grava_Historico('DUPLICATA EMITIDA');
          DM1.tCReceberParc.Next;
        end;
      DM1.tCReceber.Edit;
      DM1.tCReceberDuplicataImp.AsBoolean := True;
      DM1.tCReceber.Post;
    end;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
end;

procedure TfPrevDuplicatas2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevDuplicatas2.BitBtn2Click(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  RadioGroup2.ItemIndex := 1;
  RadioGroup1.SetFocus;
end;

procedure TfPrevDuplicatas2.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevDuplicatas2.RadioGroup1Click(Sender: TObject);
begin
//  Panel3.Enabled := not(Panel3.Enabled);
  case RadioGroup1.ItemIndex of
    0 : begin
          Panel4.Enabled        := False;
          CurrencyEdit1.Enabled := False;
          CurrencyEdit2.Enabled := True;
          CurrencyEdit3.Enabled := True;
          Panel3.Enabled        := True;
          RxDBLookupCombo1.Enabled := False;
        end;
    1 : begin
          Panel4.Enabled        := False;
          CurrencyEdit1.Enabled := True;
          CurrencyEdit2.Enabled := True;
          CurrencyEdit3.Enabled := True;
          Panel3.Enabled        := True;
          RxDBLookupCombo1.Enabled := False;
        end;
    2 : begin
          Panel4.Enabled        := True;
          Panel3.Enabled        := False;
          RxDBLookupCombo1.Enabled := False;
        end;
    3 : begin
          Panel4.Enabled        := True;
          Panel3.Enabled        := False;
          RxDBLookupCombo1.Enabled := True;
        end;
  end;
end;

procedure TfPrevDuplicatas2.BitBtn1Enter(Sender: TObject);
begin
 if CurrencyEdit3.Value = 0 then
   CurrencyEdit3.Value := 99999;
end;

procedure TfPrevDuplicatas2.FormCreate(Sender: TObject);
begin
  RadioGroup1Click(Sender);
end;

procedure TfPrevDuplicatas2.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevDuplicatas2.RxDBLookupCombo1Exit(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Codigo';
end;

procedure TfPrevDuplicatas2.MSDOS1Click(Sender: TObject);
var
  Texto : String;
begin
  if RadioGroup1.ItemIndex = 0 then
    begin
      DM1.tCReceber.Filtered := False;
      DM1.tCReceber.Filter   := 'DuplicataImp <> True and Cancelado <> True';
      DM1.tCReceber.Filtered := True;
      if DM1.tCReceber.RecordCount > 0 then
        Imprimir;
      DM1.tCReceber.Filtered := False;
    end
  else
  if RadioGroup1.ItemIndex = 3 then
    begin
      if (RxDBLookupCombo1.Text <> '') and (DateEdit1.Date > 1) and (DateEdit2.Date > 1) then
        begin
          DM1.tCReceber.Filtered := False;
          DM1.tCReceber.Filter   := 'Cancelado <> True and CodCli = ''' +IntToStr(RxDBLookupCombo1.KeyValue)+ '''and DtGerado >= '''+DateEdit1.Text+''' and DtGerado <= '''+DateEdit2.Text+'''';
          DM1.tCReceber.Filtered := True;
          if DM1.tCReceber.RecordCount > 0 then
            begin
              vVlrTotal := 0;
              Dm1.tCReceber.First;
              DM1.tCReceberParc.First;
              vData := Dm1.tCReceberParcDtVencCReceber.AsDateTime;
              vNumNota := Dm1.tCReceberNumNota.AsInteger;
              while not Dm1.tCReceber.Eof do
                begin
                  vNotas := vNotas + ' ' + Dm1.tCReceberNumNota.AsString;
                  vVlrTotal := vVlrTotal + Dm1.tCReceberVlrTotal.AsFloat;
                  Dm1.tCReceberParc.First;
                  while not Dm1.tCReceberParc.Eof do
                    begin
                      tCReceberParcHistIns.Refresh;
                      tCReceberParcHistIns.Last;
                      DM1.tCReceberParcHist.Insert;
                      DM1.tCReceberParcHistNumCReceber.AsInteger   := DM1.tCReceberParcNumCReceber.AsInteger;
                      DM1.tCReceberParcHistParcCReceber.AsInteger  := DM1.tCReceberParcParcCReceber.AsInteger;
                      DM1.tCReceberParcHistItem.AsInteger          := tCReceberParcHistInsItem.AsInteger + 1;
                      DM1.tCReceberParcHistDtHistorico.AsDateTime  := Date;
                      DM1.tCReceberParcHistCodHistorico.AsCurrency := 0;
                      DM1.tCReceberParcHistHistorico.AsString      := 'DUPLICATA EMITIDA AGRUPADA PELA DATA '+ DateEdit1.Text + ' ATE ' + DateEdit2.Text;
                      DM1.tCReceberParcHist.Post;
                      Dm1.tCReceberParc.Next;
                    end;
                  DM1.tCReceber.Edit;
                  DM1.tCReceberDuplicataImp.AsBoolean := True;
                  DM1.tCReceber.Post;
                  Dm1.tCReceber.Next;
                end;
              fEscImpressora := TfEscImpressora.Create(Self);
              fEscImpressora.ShowModal;
              AssignFile(F,DM1.tImpressoraEndereco.AsString);
              ReWrite(F);
              Write(F,#15);
              DM1.tCReceber.First;
              DM1.tCReceberParc.First;
              Imprime_Dup;
              CloseFile(F);
              if DM1.tImpressoraVisualizar.AsBoolean then
                begin
                  Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
                  WinExec(PChar(Texto),SW_MAXIMIZE);
                end;
            end;
          vVlrTotal := 0;
          vNotas    := '';
          DM1.tCReceber.Filtered := False;
        end
      else
        ShowMessage('Deve haver data inicial, data final e cliente para efetuar a impressão do relatório!');
    end
  else
  if RadioGroup1.ItemIndex = 1 then
    begin
      if CurrencyEdit2.Value > CurrencyEdit3.Value then
        begin
          ShowMessage('Parcela inicial maior que final');
          CurrencyEdit2.SetFocus;
        end
      else
      if (CurrencyEdit1.Value = 0) or (CurrencyEdit3.Value = 0) then
        begin
          ShowMessage('Nº da nota ou o nº da parcela final não podem ser zeros!');
          CurrencyEdit1.SetFocus;
        end
      else
        begin
          if DM1.tCReceber.Locate('NumNota;Serie',VarArrayOf([CurrencyEdit1.AsInteger,ComboBox1.Text]),[locaseinsensitive]) then
            begin
              fEscImpressora := TfEscImpressora.Create(Self);
              fEscImpressora.ShowModal;
              AssignFile(F,DM1.tImpressoraEndereco.AsString);
              ReWrite(F);
              Write(F,#15);
              DM1.tCReceberParc.First;
              while not DM1.tCReceberParc.Eof do
                begin
                  if (DM1.tCReceberParcParcCReceber.AsInteger >= CurrencyEdit2.AsInteger) and (DM1.tCReceberParcParcCReceber.AsInteger <= CurrencyEdit3.AsInteger) then
                    begin
                      Case RadioGroup2.ItemIndex of
                        0 : Imprime_Dup2;
                        1 : Imprime_Dup;
                      end;
                    end;
                  Grava_Historico('DUPLICATA EMITIDA');
                  DM1.tCReceberParc.Next;
                end;
              CloseFile(F);
              DM1.tCReceber.Edit;
              DM1.tCReceberDuplicataImp.AsBoolean := True;
              DM1.tCReceber.Post;
              if DM1.tImpressoraVisualizar.AsBoolean then
                begin
                  Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
                  WinExec(PChar(Texto),SW_MAXIMIZE);
                end;
            end;
          BitBtn2.Click;
        end;
    end
  else
  if RadioGroup1.ItemIndex = 2 then
    begin
      Dm1.tCReceber.Filtered := False;
      Dm1.tCReceber.Filter   := 'DtGerado >= ''' + DateEdit1.Text + ''' and DtGerado <= ''' + DateEdit2.Text + ''' and Cancelado <> True and DuplicataImp <> True';
      Dm1.tCReceber.Filtered := True;
      if DM1.tCReceber.RecordCount > 0 then
        Imprimir;
      Dm1.tCReceber.Filtered := False;
    end;
  BitBtn4.SetFocus;
end;

procedure TfPrevDuplicatas2.Windows1Click(Sender: TObject);
var
  Texto : String;
begin
  if RadioGroup1.ItemIndex = 0 then
    begin
      DM1.tCReceber.Filtered := False;
      DM1.tCReceber.Filter   := 'DuplicataImp <> True and Cancelado <> True';
      DM1.tCReceber.Filtered := True;
      if DM1.tCReceber.RecordCount > 0 then
        begin
          fRelDuplicata2 := TfRelDuplicata2.Create(Self);
          fRelDuplicata2.QuickRep1.Preview;
          fRelDuplicata2.QuickRep1.Free;
        end;
      DM1.tCReceber.Filtered := False;
    end
  else
  if RadioGroup1.ItemIndex = 3 then
    begin
      if (RxDBLookupCombo1.Text <> '') and (DateEdit1.Date > 1) and (DateEdit2.Date > 1) then
        begin
          DM1.tCReceber.Filtered := False;
          DM1.tCReceber.Filter   := 'Cancelado <> True and CodCli = ''' +IntToStr(RxDBLookupCombo1.KeyValue)+ '''and DtGerado >= '''+DateEdit1.Text+''' and DtGerado <= '''+DateEdit2.Text+'''';
          DM1.tCReceber.Filtered := True;
          if DM1.tCReceber.RecordCount > 0 then
            begin
              vVlrTotal := 0;
              Dm1.tCReceber.First;
              DM1.tCReceberParc.First;
              vData := Dm1.tCReceberParcDtVencCReceber.AsDateTime;
              vNumNota := Dm1.tCReceberNumNota.AsInteger;
              while not Dm1.tCReceber.Eof do
                begin
                  vNotas := vNotas + ' ' + Dm1.tCReceberNumNota.AsString;
                  vVlrTotal := vVlrTotal + Dm1.tCReceberVlrTotal.AsFloat;
                  DM1.tCReceber.Edit;
                  DM1.tCReceberDuplicataImp.AsBoolean := True;
                  DM1.tCReceber.Post;
                  Dm1.tCReceber.Next;
                end;
              DM1.tCReceber.First;
              fRelDuplicata2 := TfRelDuplicata2.Create(Self);
              fRelDuplicata2.QuickRep1.Preview;
              fRelDuplicata2.QuickRep1.Free;
              DM1.tCReceber.First;
              DM1.tCReceberParc.First;
            end;
          vVlrTotal := 0;
          vNotas    := '';
          DM1.tCReceber.Filtered := False;
        end
      else
        ShowMessage('Deve haver data inicial, data final e cliente para efetuar a impressão do relatório!');
    end
  else
  if RadioGroup1.ItemIndex = 1 then
    begin
      if CurrencyEdit2.Value > CurrencyEdit3.Value then
        begin
          ShowMessage('Parcela inicial maior que final');
          CurrencyEdit2.SetFocus;
        end
      else
      if (CurrencyEdit1.Value = 0) or (CurrencyEdit3.Value = 0) then
        begin
          ShowMessage('Nº da nota ou o nº da parcela final não podem ser zeros!');
          CurrencyEdit1.SetFocus;
        end
      else
        begin
          DM1.tCReceber.Filtered := False;
          DM1.tCReceber.Filter   := 'NumNota = ''' +CurrencyEdit1.Text+ '''and Serie = '''+ComboBox1.Text+'''';
          DM1.tCReceber.Filtered := True;
          if DM1.tCReceber.RecordCount > 0 then
            begin
              fRelDuplicata2 := TfRelDuplicata2.Create(Self);
              fRelDuplicata2.QuickRep1.Preview;
              fRelDuplicata2.QuickRep1.Free;
              DM1.tCReceber.Edit;
              DM1.tCReceberDuplicataImp.AsBoolean := True;
              DM1.tCReceber.Post;
            end;
          DM1.tCReceber.Filtered := False;
          BitBtn2.Click;
        end;
    end
  else
  if RadioGroup1.ItemIndex = 2 then
    begin
      Dm1.tCReceber.Filtered := False;
      Dm1.tCReceber.Filter   := 'DtGerado >= ''' + DateEdit1.Text + ''' and DtGerado <= ''' + DateEdit2.Text + ''' and Cancelado <> True and DuplicataImp <> True';
      Dm1.tCReceber.Filtered := True;
      if DM1.tCReceber.RecordCount > 0 then
        begin
          fRelDuplicata2 := TfRelDuplicata2.Create(Self);
          fRelDuplicata2.QuickRep1.Preview;
          fRelDuplicata2.QuickRep1.Free;
        end;
      Dm1.tCReceber.Filtered := False;
    end;
  BitBtn4.SetFocus;
end;

procedure TfPrevDuplicatas2.FormShow(Sender: TObject);
begin
  DM1.tFilial.Open;
  DM1.tCliente.Open;
  DM1.tCReceber.Open;
  DM1.tCReceberParc.Open;
  DM1.tCReceberParcHist.Open;
end;

end.
