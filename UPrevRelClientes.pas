unit UPrevRelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, DBTables, RXLookup, Menus,
  RXCtrls;

type
  TfPrevRelClientes = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dsCliente: TDataSource;
    tCliente: TTable;
    tClienteCodigo: TIntegerField;
    tClienteNome: TStringField;
    tClienteEndereco: TStringField;
    tClienteBairro: TStringField;
    tClienteCidade: TStringField;
    tClienteUf: TStringField;
    tClienteTelefone: TStringField;
    tClienteTelefone2: TStringField;
    tClienteFax: TStringField;
    tClientePessoa: TStringField;
    tClienteCgcCpf: TStringField;
    tClienteInscrEst: TStringField;
    tClienteContato: TStringField;
    tClienteObs: TMemoField;
    tClienteAprovCredito: TStringField;
    tClienteTipoAprov: TStringField;
    tClienteEndEntrega: TStringField;
    tClienteBairroEntrega: TStringField;
    tClienteCidEntrega: TStringField;
    tClienteUfEntrega: TStringField;
    tClienteCgcCpfEntrega: TStringField;
    tClienteInscEntrega: TStringField;
    tClienteEndPgto: TStringField;
    tClienteBairroPgto: TStringField;
    tClienteCidPgto: TStringField;
    tClienteUfPgto: TStringField;
    tClienteFantasia: TStringField;
    tClienteDtCadastro: TDateField;
    tClienteCodVendedor: TIntegerField;
    tClienteObsCtas: TMemoField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Bevel5: TBevel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label7: TLabel;
    tClienteLojas: TIntegerField;
    tClienteSelecionado: TBooleanField;
    tClienteCaixaPostal: TStringField;
    tClienteRg: TStringField;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    tClienteCep: TStringField;
    tClienteCepEntrega: TStringField;
    tClienteCepPgto: TStringField;
    tClienteCodCidade: TIntegerField;
    tClienteCodCidadeE: TIntegerField;
    tClienteCodCidadeP: TIntegerField;
    tClientelkCidade: TStringField;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    tClientelkNomeVendedor: TStringField;
    tClienteEmail: TStringField;
    tClientePercTransf: TFloatField;
    tClienteCodCondPgto: TIntegerField;
    tClienteDtNascContato: TDateField;
    tClienteNomeResp: TStringField;
    tClienteContatoCliente: TStringField;
    tClienteContatoModelagem: TStringField;
    tClienteImpItemNotaPorTam: TBooleanField;
    tClientelkNomeCondPgto: TStringField;
    tClientelkNomeCidadeP: TStringField;
    tClientelkNomeCidadeE: TStringField;
    RadioGroup3: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    linha, pagina : Integer;
    F: TextFile;
    procedure Imprimir;
    procedure Imprime_Cabecalho;
    procedure Imprime_Detalhe;
    procedure Imprime_Completo;
    procedure Imprime_Rodape;
  public
    { Public declarations }
  end;

var
  fPrevRelClientes: TfPrevRelClientes;

implementation

uses URelClientes, UDM1, Printers, UEscImpressora;

{$R *.DFM}
procedure TfPrevRelClientes.Imprime_Rodape;
begin
  while linha < 66 do
    begin
      Linha := Linha + 1;
      Writeln(F);
    end;
end;

procedure TfPrevRelClientes.Imprimir;
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

  tCliente.First;
  while not tCliente.Eof do
    begin
      case RadioGroup2.ItemIndex of
        0 : begin
              if linha > 61 then
                Imprime_Cabecalho;
              Imprime_Detalhe;
            end;
        1 : begin
              if linha > 56 then
                Imprime_Cabecalho;
              Imprime_Completo;
            end;
      end;
      tCliente.Next;
    end;
  Imprime_Rodape;
  CloseFile(F);
  if DM1.tImpressoraVisualizar.AsBoolean then
    begin
      Texto := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
      WinExec(PChar(Texto),SW_MAXIMIZE);
    end;
end;

procedure TfPrevRelClientes.Imprime_Completo;
var
  Texto1, Texto2 : String;
  I : Integer;
begin
  Write(F,#15);
  Texto1 := '';
  Texto2 := 'Cliente: ' + Copy(tClienteNome.AsString,1,40);
  for i := 1 to 49 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 := 'Telefone: ' + tClienteTelefone.AsString;
  for i := 1 to 25 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '     ';
  Texto2 := 'Fax: ' + tClienteFax.AsString;
  for i := 1 to 20 - length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  texto2 := 'End: ' + tClienteEndereco.AsString;
  for i := 1 to 51 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;
  Texto2 := 'Bairro: ' + tClienteBairro.AsString;
  for i := 1 to 33 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  Texto2 := 'Cidade: ' + tClientelkCidade.AsString;
  for i := 1 to 34 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;
  Texto2:= 'CEP: ' + tClienteCep.AsString;
  for i := 1 to 21 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := texto1 + Texto2;
  Texto2 := 'UF: ' + tClienteUf.AsString;
  for i := 1 to 11 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Texto2 := 'C.Postal: ' + tClienteCaixaPostal.AsString;
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  Texto2 := 'Vendedor: ' + tClientelkNomeVendedor.AsString;
  for i := 1 to 48 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;
  Texto2 := 'Cond.Pgto: ' + tClientelkNomeCondPgto.AsString;
  for i := 1 to 30 - Length(Texto2) do
    texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  Writeln(F,'E-mail: ' + tClienteEmail.AsString);
  Writeln(F);
  Writeln(F,'-----------------------------------------------------Endereco de Cobranca-----------------------------------------------------------');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Texto2 := '          End.: ' + tClienteEndPgto.AsString;
  for i := 1 to 50 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := texto2;
  Texto2 := 'Bairro: ' + tClienteBairroPgto.AsString;
  for i := 1 to 30 - Length(texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);

  Texto2 := '        Cidade: ' + tClientelkNomeCidadeP.AsString;
  for i := 1 to 34 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;
  Texto2:= 'CEP: ' + tClienteCepPgto.AsString;
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := texto1 + Texto2;
  Texto2 := 'UF: ' + tClienteUfPgto.AsString;
  for i := 1 to 11 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);
  Writeln(F,'-----------------------------------------------------Endereco de Entrega------------------------------------------------------------');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Texto2 := '          End.: ' + tClienteEndEntrega.AsString;
  for i := 1 to 50 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := texto2;
  Texto2 := 'Bairro: ' + tClienteBairroEntrega.AsString;
  for i := 1 to 30 - Length(texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F);

  Texto2 := '        Cidade: ' + tClientelkNomeCidadeE.AsString;
  for i := 1 to 34 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto2;
  Texto2:= 'CEP: ' + tClienteCepEntrega.AsString;
  for i := 1 to 20 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := texto1 + Texto2;
  Texto2 := 'UF: ' + tClienteUfEntrega.AsString;
  for i := 1 to 11 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  for i := 1 to 6 do
    Writeln(F);
  linha := linha + 28
end;

procedure TfPrevRelClientes.Imprime_Cabecalho;
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
  texto1 := '                                          RELACAO DOS FORNECEDORES                                               Emissao: ' + DateToStr(Date);
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Codigo                        Nome                                FONE           FAX                   CIDADE                       ');
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  linha := 5;
end;

procedure TfPrevRelClientes.Imprime_Detalhe;
var
 i: Integer;
 texto1, Texto2: string;
begin
  Texto2 := tClienteCodigo.AsString;
  for i := 1 to 6 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  texto1 := texto2 + '     ';

  Texto2 := copy(tClienteNome.AsString,1,50);
  for i := 1 to 50 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2;

  Texto2 := tClienteTelefone.AsString;
  for i := 1 to 19 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  texto1 := texto1 + texto2;

  texto2 := tClienteFax.AsString;
  for i := 1 to 13 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2 + '    ';

  texto2 := tClientelkCidade.AsString;
  for i := 1 to 25 - Length(Texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;
  Writeln(F,Texto1);
  Linha := Linha + 1;
end;

procedure TfPrevRelClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.tCliente.Close;
  DM1.tVendedor.Close;
  Action := Cafree;
end;

procedure TfPrevRelClientes.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          tCliente.IndexFieldNames := 'Nome';
          RxDBLookupCombo3.Enabled := True;
          RxDBLookupCombo4.Enabled := True;
          RxDBLookupCombo3.SetFocus;
          Edit1.Enabled := False;
          Edit1.Clear;
          Edit2.Enabled := False;
          Edit2.Clear;
          RxDBLookupCombo5.Enabled := False;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo1.Enabled := False;
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo2.Enabled := False;
          RxDBLookupCombo2.ClearValue;
        end;
    1 : begin
          tCliente.IndexFieldNames := 'Codigo';
          Edit1.Enabled := True;
          Edit1.SetFocus;
          Edit2.Enabled := True;
          RxDBLookupCombo3.Enabled := False;
          RxDBLookupCombo3.ClearValue;
          RxDBLookupCombo4.Enabled := False;
          RxDBLookupCombo4.ClearValue;
          RxDBLookupCombo5.Enabled := False;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo1.Enabled := False;
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo2.Enabled := False;
          RxDBLookupCombo2.ClearValue;
        end;
    2 : begin
          RxDBLookupCombo5.Enabled := True;
          RxDBLookupCombo5.SetFocus;
          RxDBLookupCombo1.Enabled := True;
          RxDBLookupCombo3.Enabled := False;
          RxDBLookupCombo3.ClearValue;
          RxDBLookupCombo4.Enabled := False;
          RxDBLookupCombo4.ClearValue;
          Edit1.Enabled := False;
          Edit1.Clear;
          Edit2.Enabled := False;
          Edit2.Clear;
          RxDBLookupCombo2.ClearValue;
          RxDBLookupCombo2.Enabled := False;
        end;
    3 : begin
          RxDBLookupCombo5.Enabled := False;
          RxDBLookupCombo5.ClearValue;
          RxDBLookupCombo1.Enabled := False;
          RxDBLookupCombo1.ClearValue;
          RxDBLookupCombo3.Enabled := False;
          RxDBLookupCombo3.ClearValue;
          RxDBLookupCombo4.Enabled := False;
          RxDBLookupCombo4.ClearValue;
          Edit1.Enabled := False;
          Edit1.Clear;
          Edit2.Enabled := False;
          Edit2.Clear;
          RxDBLookupCombo2.ClearValue;
          RxDBLookupCombo2.Enabled := True;
          RxDBLookupCombo2.SetFocus;
        end;
  end;
end;

procedure TfPrevRelClientes.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo4.ClearValue;
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  Edit1.Clear;
  Edit2.Clear;
  RxDBLookupCombo5.ClearValue;
end;

procedure TfPrevRelClientes.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevRelClientes.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tUF.IndexFieldNames := 'Sigla';
end;

procedure TfPrevRelClientes.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPrevRelClientes.RxDBLookupCombo2Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfPrevRelClientes.RxDBLookupCombo3Enter(Sender: TObject);
begin
  tCliente.IndexFieldNames := 'Nome';
end;

procedure TfPrevRelClientes.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfPrevRelClientes.BitBtn1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          tCliente.Filtered := False;
          if (RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo4.Text <> '') then
            begin
              tCliente.Filter := 'Nome >= '''+RxDBLookupCombo3.Text+''' and Nome <= '''+RxDBLookupCombo4.Text+'''';
              tCliente.Filtered := True;
            end;
          fRelClientes := TfRelClientes.Create(Self);
          if RadioGroup2.ItemIndex = 0 then
            begin
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelClientes.QuickRep1.Preview;
                      fRelClientes.QuickRep1.Free;
                    end;
               end;       
            end
          else
            begin
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelClientes.QuickRep2.Preview;
                      fRelClientes.QuickRep2.Free;
                    end;
              end;        
            end;
          tCliente.Filtered := False;
        end;
    1 : begin
          if (Edit1.Text <> '') and (Edit2.Text <> '') then
            begin
              if StrToInt(Edit1.Text) <= StrToInt(Edit2.Text) then
                begin
                  tCliente.Filtered := False;
                  tCliente.Filter   := 'Codigo >= '''+Edit1.Text+''' and Codigo <= '''+Edit2.Text+'''';
                  tCliente.Filtered := True;
                  fRelClientes := TfRelClientes.Create(Self);
                  if RadioGroup2.ItemIndex = 0 then
                    begin
                      case RadioGroup3.ItemIndex of
                        0 : Imprimir;
                        1 : begin
                              fRelClientes.QuickRep1.Preview;
                              fRelClientes.QuickRep1.Free;
                            end;
                       end;
                    end
                  else
                    begin
                      case RadioGroup3.ItemIndex of
                        0 : Imprimir;
                        1 : begin
                              fRelClientes.QuickRep2.Preview;
                              fRelClientes.QuickRep2.Free;
                            end;
                      end;
                    end;
                  tCliente.Filtered := False;
                end
              else
              if StrToInt(Edit1.Text) > StrToInt(Edit2.Text) then
                begin
                  ShowMessage('Código inicial deve ser menor que o código final!');
                  Edit1.SetFocus;
                end;
            end
          else
            begin
              tCliente.Filtered := False;
              fRelClientes := TfRelClientes.Create(Self);
              if RadioGroup2.ItemIndex = 0 then
                begin
                  case RadioGroup3.ItemIndex of
                    0 : Imprimir;
                    1 : begin
                          fRelClientes.QuickRep1.Preview;
                          fRelClientes.QuickRep1.Free;
                        end;
                   end;
                end
              else
                begin
                  case RadioGroup3.ItemIndex of
                    0 : Imprimir;
                    1 : begin
                          fRelClientes.QuickRep2.Preview;
                          fRelClientes.QuickRep2.Free;
                        end;
                  end;
                end;
            end;
        end;
    2 : begin
          if (RxDBLookupCombo5.Text = '') and (RxDBLookupCombo1.Text = '') then
            ShowMessage('É obrigatório informar a cidade ou o estado')
          else
            begin
              tCliente.Filtered := False;
              if (RxDBLookupCombo5.Text <> '') and (RxDBLookupCombo1.Text <> '') then
                tCliente.Filter   := 'CodCidade = '''+IntToStr(RxDBLookupCombo5.KeyValue)+''' and Uf = '''+RxDBLookupCombo1.Text+''''
              else
              if (RxDBLookupCombo5.Text <> '') and (RxDBLookupCombo1.Text = '') then
                tCliente.Filter   := 'CodCidade = '''+IntToStr(RxDBLookupCombo5.KeyValue)+''''
              else
              if (RxDBLookupCombo5.Text = '') and (RxDBLookupCombo1.Text <> '') then
                tCliente.Filter   := 'Uf = '''+RxDBLookupCombo1.Text+'''';
              tCliente.Filtered := True;
              fRelClientes := TfRelClientes.Create(Self);
              if RadioGroup2.ItemIndex = 0 then
                begin
                  case RadioGroup3.ItemIndex of
                    0 : Imprimir;
                    1 : begin
                          fRelClientes.QuickRep1.Preview;
                          fRelClientes.QuickRep1.Free;
                        end;
                   end;
                end
              else
                begin
                  case RadioGroup3.ItemIndex of
                    0 : Imprimir;
                    1 : begin
                          fRelClientes.QuickRep2.Preview;
                          fRelClientes.QuickRep2.Free;
                        end;
                  end;
                end;
              tCliente.Filtered := False;
            end;
        end;
    3 : begin
          tCliente.IndexFieldNames := 'Nome';
          tCliente.Filtered := False;
          if RxDBLookupCombo2.Text <> '' then
            begin
              tCliente.Filter   := 'CodVendedor = '''+IntToStr(RxDBLookupCombo2.KeyValue)+'''';
              tCliente.Filtered := True;
            end;
          fRelClientes := TfRelClientes.Create(Self);
          if RadioGroup2.ItemIndex = 0 then
            begin
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelClientes.QuickRep1.Preview;
                      fRelClientes.QuickRep1.Free;
                    end;
               end;
            end
          else
            begin
              case RadioGroup3.ItemIndex of
                0 : Imprimir;
                1 : begin
                      fRelClientes.QuickRep2.Preview;
                      fRelClientes.QuickRep2.Free;
                    end;
              end;        
            end;
          tCliente.Filtered := False;
        end;
  end;
  tCliente.Filtered := False;
end;

procedure TfPrevRelClientes.FormShow(Sender: TObject);
begin
  DM1.tCliente.Open;
  DM1.tVendedor.Open;
end;

end.
