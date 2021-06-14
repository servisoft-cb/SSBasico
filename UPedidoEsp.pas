unit UPedidoEsp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, ComCtrls,
  Db, DBTables, RXLookup, Grids, DBGrids, RXDBCtrl, MemTable,
  Menus, RXCtrls, DBFilter;

type
  TfPedidoEsp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBDateEdit1: TDBDateEdit;
    Label8: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    SpeedButton7: TSpeedButton;
    DBRadioGroup2: TDBRadioGroup;
    RxSpeedButton2: TRxSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label18: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Edit1: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText9: TStaticText;
    BitBtn16: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    Edit3: TEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label19: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    DBText6: TDBText;
    DBText12: TDBText;
    Bevel8: TBevel;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    StaticText6: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    Edit5: TEdit;
    DBCheckBox1: TDBCheckBox;
    Bevel1: TBevel;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure RxDBLookupCombo5Exit(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo9CloseUp(Sender: TObject);
    procedure RxDBLookupCombo9DropDown(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure DBRadioGroup2Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure GroupBox3Enter(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure Habilita;
    procedure Habilita_Item;
    procedure Imprime_Pedido;
    procedure Imprime_Cab;
    procedure Imprime_Det;
    procedure Imprime_Rod;
    procedure Grava_CReceber;
    procedure Exclui_CReceber;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPedidoEsp: TfPedidoEsp;
  F : TextFile;
  Linha, Pagina, vItem : integer;
  vVlrTotal : Currency;
  vExcluirCReceber : Boolean;

implementation

uses UDM1, UCliente, UCondPgto, UVendedor, UNatOperacao, Printers, UEscImpressora,
  UProduto, UDM2, UConsPedidoEsp, UEmissaoNotaFiscal;

{$R *.DFM}

procedure TfPedidoEsp.Habilita_Item;
begin
  BitBtn9.Enabled  := not(BitBtn9.Enabled);
  BitBtn16.Enabled := not(BitBtn16.Enabled);
end;

procedure TfPedidoEsp.Habilita;
begin
  GroupBox1.Enabled      := not(GroupBox1.Enabled);
  GroupBox3.Enabled      := not(GroupBox3.Enabled);
  Panel2.Enabled         := not(Panel2.Enabled);
  Panel4.Enabled         := not(Panel4.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn2.Enabled        := not(BitBtn2.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  RxSpeedButton2.Enabled := not(RxSpeedButton2.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
end;

procedure TfPedidoEsp.Grava_CReceber;
var
  vNumAux : Integer;
begin
  if DM1.tPedidoEsplkPrazoVista.AsString = 'P' then
    begin
      DM1.tCReceber.IndexFieldNames  := 'Filial;NumCReceber';
      DM1.tCReceber.Refresh;
      DM1.tCReceber.Last;
      vNumAux := DM1.tCReceberNumCReceber.AsInteger;

      DM1.tCReceber.Insert;
      DM1.tCReceberNumCReceber.AsInteger  := vNumAux + 1;
      DM1.tCReceberNumNota.AsInteger      := DM1.tPedidoEspNumPed.AsInteger;
      DM1.tCReceberCodCli.AsInteger       := DM1.tPedidoEspCodCliente.AsInteger;
      DM1.tCReceberTipoDoc.AsString       := 'PE';
      DM1.tCReceberDtGerado.AsDateTime    := DM1.tPedidoEspDtEmissao.AsDateTime;
      DM1.tCReceberCancelado.AsBoolean    := False;

      DM1.tPedidoEspParc.First;
      while not DM1.tPedidoEspParc.Eof do
        begin
          DM1.tCReceberParc.Insert;
          DM1.tCReceberParcDtGerado.AsDateTime        := DM1.tCReceberDtGerado.AsDateTime;
          DM1.tCReceberParcNumCReceber.AsInteger      := DM1.tCReceberNumCReceber.AsInteger;
          DM1.tCReceberParcParcCReceber.AsInteger     := DM1.tPedidoEspParcParcela.AsInteger;
          DM1.tCReceberParcVlrParcCReceber.AsFloat    := DM1.tPedidoEspParcVlrVecto.AsFloat;
          DM1.tCReceberParcRestParcela.AsFloat        := DM1.tPedidoEspParcVlrVecto.AsFloat;
          DM1.tCReceberParcDtVencCReceber.AsDateTime  := DM1.tPedidoEspParcDtVecto.AsDateTime;
          DM1.tCReceberParcCodCli.AsInteger           := DM1.tPedidoEspCodCliente.AsInteger;
          DM1.tCReceberParcNumNota.AsInteger          := DM1.tPedidoEspParcNumPed.AsInteger;
          DM1.tCReceberParcCodVendedor.AsInteger      := DM1.tPedidoEspCodVendedor.AsInteger;
          DM1.tCReceberParcPercComissao.AsCurrency    := DM1.tPedidoEspPercComissao.AsCurrency;
          DM1.tCReceberParcVlrComissao.AsCurrency     := (DM1.tPedidoEspParcVlrVecto.AsFloat * DM1.tPedidoEspPercComissao.AsCurrency) / 100;
          DM1.tCReceberParcPlanoContas.AsInteger      := 0;
          DM1.tCReceberParcCancelado.AsBoolean        := False;
          DM1.tCReceberParcTitProtestado.AsBoolean    := False;
          DM1.tCReceberParcTipoDoc.AsString           := 'PE';
          DM1.tCReceberParc.Post;
          DM1.GravaEnt_tCReceberParcHist('ENT'); //Novo, vai gravar a entrada  (Cleomar 01/04/2008)

          DM1.tPedidoEspParc.Next;
        end;
      DM1.tCReceber.Post;
    end
  else
  if DM1.tPedidoEsplkPrazoVista.AsString = 'V' then
    begin
      DM1.tCReceber.IndexFieldNames  := 'Filial;NumCReceber';
      DM1.tCReceber.Refresh;
      DM1.tCReceber.Last;
      vNumAux := DM1.tCReceberNumCReceber.AsInteger;

      DM1.tCReceber.Insert;
      DM1.tCReceberNumCReceber.AsInteger  := vNumAux + 1;
      DM1.tCReceberNumNota.AsInteger      := DM1.tPedidoEspNumPed.AsInteger;
      DM1.tCReceberCodCli.AsInteger       := DM1.tPedidoEspCodCliente.AsInteger;;
      DM1.tCReceberTipoDoc.AsString       := 'PE';
      DM1.tCReceberDtGerado.AsDateTime    := DM1.tPedidoEspDtEmissao.AsDateTime;
      DM1.tCReceberQuitado.AsBoolean      := False;
      DM1.tCReceberCancelado.AsBoolean    := False;
      DM1.tCReceberParc.Insert;
      DM1.tCReceberParcDtGerado.AsDateTime        := DM1.tCReceberDtGerado.AsDateTime;
      DM1.tCReceberParcNumCReceber.AsInteger      := DM1.tCReceberNumCReceber.AsInteger;
      DM1.tCReceberParcParcCReceber.AsInteger     := 1;
      DM1.tCReceberParcVlrParcCReceber.AsCurrency := DM1.tPedidoEspVlrTotal.AsCurrency;
      DM1.tCReceberParcRestParcela.AsFloat        := DM1.tPedidoEspVlrTotal.AsFloat;
      DM1.tCReceberParcCodCli.AsInteger           := DM1.tPedidoEspCodCliente.AsInteger;
      DM1.tCReceberParcNumNota.AsInteger          := DM1.tPedidoEspNumPed.AsInteger;
      DM1.tCReceberParcDtVencCReceber.AsDateTime  := DM1.tPedidoEspDtEmissao.AsDateTime;
      DM1.tCReceberParcQuitParcCReceber.AsBoolean := False;
      DM1.tCReceberParcCodVendedor.AsInteger      := DM1.tPedidoEspCodVendedor.AsInteger;
      DM1.tCReceberParcPercComissao.AsCurrency    := DM1.tPedidoEspPercComissao.AsCurrency;
      DM1.tCReceberParcVlrComissao.AsCurrency     := (DM1.tPedidoEspParcVlrVecto.AsFloat * DM1.tPedidoEspPercComissao.AsCurrency) / 100;
      DM1.tCReceberParcPlanoContas.AsInteger      := 0;
      DM1.tCReceberParcCancelado.AsBoolean        := False;
      DM1.tCReceberParcTitProtestado.AsBoolean    := False;
      DM1.tCReceberParcTipoDoc.AsString           := 'PE';
      DM1.tCReceberParc.Post;
      DM1.GravaEnt_tCReceberParcHist('ENT'); //Novo, vai gravar a entrada  (Cleomar 01/04/2008)

      DM1.tCReceber.Post;
(* Fim do bloco de teste do Contas a Receber *)
    end;
end;

procedure TfPedidoEsp.Exclui_CReceber;
begin
//  cancela o contas a receber e as parcelas dele
  vExcluirCReceber := True;
  DM1.tCReceber.Filtered := False;
  DM1.tCReceber.Filter   := 'NumNota = '''+DM1.tPedidoEspNumPed.AsString+''' and TipoDoc = '''+'PE'+'''';
  DM1.tCReceber.Filtered := True;
  if (BitBtn2.Tag = 1) or (BitBtn3.Tag = 1) then
    begin
      DM1.tCReceberParc.First;
      while not DM1.tCReceberParc.Eof do
        begin
          if DM1.tCReceberParcDtPagParcCReceber.AsDateTime > 0 then
            vExcluirCReceber := False;
          DM1.tCReceberParc.Next;
        end;
    end;
  if not vExcluirCReceber then
    ShowMessage('Pedido possui parcela do contas já quitadas')
  else
    begin
      if not DM1.tCReceber.IsEmpty then
        begin
          DM1.tCReceberParc.First;
          while not DM1.tCReceberParc.Eof do
            begin
              DM1.tCReceberParcHist.First;
              while not DM1.tCReceberParcHist.Eof do
                DM1.tCReceberParcHist.Delete;
              DM1.tCReceberParc.Delete;
            end;
          DM1.tCReceber.Delete;
        end;
    end;
  DM1.tCReceber.Filtered := False;
end;

procedure TfPedidoEsp.Imprime_Cab;
var
  i, i2, vLinhaAux : Integer;
  Texto1, Texto2 : String;
begin
  Linha := 0;
  Pagina := Pagina + 1;
  if Pagina > 1 then
    begin
      if linha > 33 then
        vLinhaAux := 66
      else
        vLinhaAux := 33;
      while linha < vLinhaAux do
        begin
          Linha := Linha + 1;
          Writeln(F);
        end;
    end;
  if not DM1.tImpressoraVisualizar.AsBoolean then
    Write(F,#15);
  DM1.tEmpresa.First;
  Texto1 := DM1.tEmpresaEmpresa.AsString;
  for i := 1 to 114 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'Pagina: ' + IntToStr(Pagina);
  Writeln(F,Texto1);

  Texto1 := DM1.tEmpresaEndereco.AsString;
  Writeln(F,Texto1);
  Texto1 := DM1.tEmpresaCep.AsString;
  for i := 1 to 9 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto2 := DM1.tEmpresaCidade.AsString;
  for i := 1 to 30 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + ' ' + Texto2 + '  -  ';
  Texto2 := DM1.tEmpresaEstado.AsString;
  for i := 1 to 2 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '    CNPJ: ';
  Texto2 := DM1.tEmpresaCgc.AsString;
  for i := 1 to 18 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '   Insc.Estadual: ' + DM1.tEmpresaInscr.AsString;
  Writeln(F,Texto1);

  Texto1 := 'Pedido No: ' + DM1.tPedidoEspNumPed.AsString;
  for i := 1 to 18 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + '       Dt.Emissao: ' + DM1.tPedidoEspDtEmissao.AsString;
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  //*** Dados do cliente
  Texto1 := 'Cliente........: ' + DM1.tPedidoEspCodCliente.AsString;
  for i := 1 to 23 - Length(Texto1) do
    Texto1 := Texto1 + ' ';
  DM1.tCliente.IndexFieldNames := 'Codigo';
  DM1.tCliente.SetKey;
  DM1.tClienteCodigo.AsInteger := DM1.tPedidoEspCodCliente.AsInteger;
  if DM1.tCliente.GotoKey then
    begin
      Texto2 := DM1.tClienteNome.AsString;
      for i := 1 to 40 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + ' - ' + Texto2 + '     Telefone..: ';
      Texto2 := DM1.tClienteTelefone.AsString;
      for i := 1 to 15 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 + '      FAX: ';
      Texto2 := DM1.tClienteFax.AsString;
      for i := 1 to 15 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2;
      Writeln(F,Texto1);

      Texto1 := 'Endereco.......: ' + DM1.tClienteEndereco.AsString;
      for i := 1 to 57 - Length(Texto1) do
        Texto1 := Texto1 + ' ';
      Texto1 := Texto1 + '  -  ';
      Texto2 := DM1.tClienteBairro.AsString;
      for i := 1 to 25 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 + '  -  ' + DM1.tClienteCep.AsString;
      Writeln(F,Texto1);

      Texto2 := 'Cidade.........: ' + DM1.tClienteCidade.AsString;
      for i := 1 to 47 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto2 + ' - ';
      Texto2 := DM1.tClienteUf.AsString;
      for i := 1 to 2 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 + '                   CNPJ.......: ';
      Texto2 := DM1.tClienteCgcCpf.AsString;
      for i := 1 to 18 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 + '   Insc.Est.: ' + DM1.tClienteInscrEst.AsString;
      Writeln(F,Texto1);
    end
  else
    begin
      Texto1 := Texto1 + '***    Cliente não cadastrado   ***';
      Writeln(F);
      Writeln(F);
      Writeln(F);
    end;
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');

  Texto1 := 'Vendedor.......: ' + DM1.tPedidoEsplkNomeVendedor.AsString;
  for i := 1 to 68 - Length(Texto2) do
    Texto1 := Texto1 + ' ';
  Texto1 := Texto1 + 'Nat.Operacao: ' + DM1.tPedidoEsplkNomeNatOperacao.AsString;
  Writeln(F,Texto1);

  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');

  Linha := 11;
  //*** Imprime as parcelas
  i      := 0;
  Texto1 := '';
  DM1.tPedidoEspParc.First;
  while not DM1.tPedidoEspParc.Eof do
    begin
      inc(i);
      if i > 2 then
        begin
          Writeln(F,Texto1);
          Linha  := Linha + 1; 
          i      := 1;
          Texto1 := '';
        end;
      if i > 1 then
        Texto1 := Texto1 + '-  ';
      Texto2 := 'Parcela: ' + DM1.tPedidoEspParcParcela.AsString;
      for i2 := 1 to 11 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 + '     Vecto: ' + DM1.tPedidoEspParcDtVecto.AsString + '     Valor: ';
      Texto2 := FormatFloat('###,###,##0.00',DM1.tPedidoEspParcVlrVecto.AsFloat);
      for i2 := 1 to 14 - Length(Texto2) do
        Texto2 := Texto2 + ' ';
      Texto1 := Texto1 + Texto2 + '  ';
      DM1.tPedidoEspParc.Next;
    end;
  if i > 0 then
    begin
      Writeln(F,Texto1);
      Linha  := Linha + 1;
    end;
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Writeln(F,'Item-Descricao-----------------------------------------------------Quantidade----Vlr.Unitario--------Vlr.Total');
  Linha  := Linha + 2;
end;

procedure TfPedidoEsp.Imprime_Det;
var
  i : Integer;
  Texto1, Texto2 : String;
begin
  Texto2 := DM1.tPedidoEspItemItem.AsString;
  for i := 1 to 3 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto2 + '  ';
  Texto2 := DM1.tPedidoEspItemDescricao.AsString;
  for i := 1 to 60 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto1 := Texto1 + Texto2 + '   ';
  Texto2 := FormatFloat('0000000',DM1.tPedidoEspItemQtd.AsInteger);
  Texto1 := Texto1 + Texto2 + '    ';
  Texto2 := FormatFloat('###,###,##0.00',DM1.tPedidoEspItemVlrUnitario.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2 + '   ';
  Texto2 := FormatFloat('###,###,##0.00',DM1.tPedidoEspItemVlrTotal.AsFloat);
  for i := 1 to 14 - Length(Texto2) do
    Texto2 := ' ' + Texto2;
  Texto1 := Texto1 + Texto2;
  Writeln(F,Texto1);
  Linha := Linha + 1;
  vVlrTotal := vVlrTotal + DM1.tPedidoEspItemVlrTotal.AsFloat;
end;

procedure TfPedidoEsp.Imprime_Rod;
var
  i, vLinhaAux : Integer;
  Texto1 : String;
begin
  Writeln(F,'------------------------------------------------------------------------------------------------------------------------------------');
  Texto1 := FormatFloat('##,###,###,##0.00',vVlrTotal);
  for i := 1 to 17 - Length(Texto1) do
    Texto1 := ' ' + Texto1;
  Texto1 := '                                                                            Total do Pedido: ' + Texto1;
  Writeln(F,Texto1);
  Linha := Linha + 2;
  vVlrTotal := 0;

  if Linha > 30 then
    vLinhaAux := 66
  else
    vLinhaAux := 33;
  while linha < vLinhaAux do
    begin
      if linha = (vLinhaAux - 3) then
        begin
          Writeln(F,'Recebido.: ______/______/_____   ______________________________________________________________');
          Writeln(F,'====================================================================================================================================');
          Linha := Linha + 2;
        end
      else
        begin
          Writeln(F);
          Linha := Linha + 1;
        end;
    end;
end;

procedure TfPedidoEsp.Imprime_Pedido;
var
  Texto2 : string;
begin
  if MessageDlg('Deseja imprimir este pedido?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      fEscImpressora := TfEscImpressora.Create(Self);
      fEscImpressora.ShowModal;
      AssignFile(F,DM1.tImpressoraEndereco.AsString);
      ReWrite(F);
      Pagina := 0;
      Imprime_Cab;
      DM1.tPedidoEspItem.First;
      while not DM1.tPedidoEspItem.Eof do
        begin
          if linha > 63 then
            Imprime_Cab;
          Imprime_Det;
          DM1.tPedidoEspItem.Next;
        end;
      Imprime_Rod;
      CloseFile(F);
      if DM1.tImpressoraVisualizar.AsBoolean then
        begin
          Texto2 := DM1.tImpressoraPrograma.AsString + '.EXE ' + DM1.tImpressoraEndereco.AsString;
          WinExec(PChar(Texto2),SW_MAXIMIZE);
        end;
    end;
end;

procedure TfPedidoEsp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tPedidoEsp.Close;
      DM1.tPedidoEspItem.Close;
      DM1.tPedidoEspParc.Close;
      DM1.tNotaFiscal.Close;
      DM1.tNotaFiscalParc.Close;
      DM1.tCondPgto.Close;
      DM1.tCliente.Close;
      DM1.tNatOperacao.Close;
      DM1.tCReceber.Close;
      DM1.tCReceberParc.Close;
      DM1.tCReceberParcHist.Close;
    end;
  Action := Cafree;
end;

procedure TfPedidoEsp.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfPedidoEsp.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioClientes.AsBoolean then
    begin
      fCliente := TfCliente.Create(Self);
      fCliente.ShowModal;
      DM1.tCliente.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfPedidoEsp.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
begin
  BitBtn2.Tag := 0;
  BitBtn3.Tag := 0;
  vItem       := 0;
  if DM1.tUsuarioInsPedidoEsp.AsBoolean then
    begin
      DM1.tPedidoEsp.IndexFieldNames  := 'NumPed';
      DM1.tPedidoEsp.Refresh;
      DM1.tPedidoEsp.Last;
      vNumAux := DM1.tPedidoEspNumPed.AsInteger;

      DM1.tPedidoEsp.Refresh;
      DM1.tPedidoEsp.Insert;
      DM1.tPedidoEspNumPed.AsInteger     := vNumAux + 1;
      DM1.tPedidoEspNotaPedido.AsString  := 'N';
      DM1.tPedidoEspGeraContas.AsBoolean := False;
      DM1.tPedidoEsp.Post;
      DM1.tPedidoEsp.Edit;
      DM1.tPedidoEspVlrTotal.AsFloat     := 0;
      DBCheckBox1.ReadOnly := True;
      DM1.tPedidoEspDtEmissao.AsDateTime := Date();
      Habilita;
      BitBtn9.Enabled  := True;
      BitBtn16.Enabled := True;
      RxDBLookupCombo4.SetFocus;
      PageControl1.ActivePage := TabSheet1;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfPedidoEsp.BitBtn2Click(Sender: TObject);
begin
  DM1.tPedidoEsp.IndexFieldNames := 'NumPed';
  BitBtn2.Tag := 1;
  vItem       := 0;
  PageControl1.ActivePage := TabSheet1;
  if DM1.tUsuarioAltPedidoEsp.AsBoolean then
    begin
      vExcluirCReceber := True;
      if (DM1.tPedidoEspNotaPedido.AsString = 'P') and (DM1.tPedidoEspGeraContas.AsBoolean) then
        Exclui_CReceber;
      if vExcluirCReceber then
        begin
          DM1.tPedidoEsp.Edit;
          Habilita;
          BitBtn9.Enabled  := True;
          BitBtn16.Enabled := True;
          RxDBLookupCombo4.SetFocus;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfPedidoEsp.BitBtn4Click(Sender: TObject);
begin
  if BitBtn2.Tag = 1 then
    begin
      DM1.tPedidoEsp.Cancel;
      BitBtn2.Tag := 0;
      Habilita;
      Edit1.Clear;
      Edit5.Clear;
      CurrencyEdit1.Clear;
      CurrencyEdit2.Clear;
      CurrencyEdit3.Clear;
      CurrencyEdit4.Clear;
      Habilita_Item;
    end
  else
  if BitBtn2.Tag = 0 then
    begin
      DM1.tPedidoEspItem.First;
      while not DM1.tPedidoEspItem.Eof do
        DM1.tPedidoEspItem.Delete;
      DM1.tPedidoEspParc.First;
      while not DM1.tPedidoEspParc.Eof do
        DM1.tPedidoEspParc.Delete;
      DM1.tPedidoEsp.Delete;
      DM1.tPedidoEsp.Refresh;
      DM1.tPedidoEspItem.Refresh;
      DM1.tPedidoEspParc.Refresh;
      Habilita;
    end;
end;

procedure TfPedidoEsp.BitBtn3Click(Sender: TObject);
begin
  BitBtn2.Tag := 0;
  BitBtn3.Tag := 1;
  if DM1.tUsuarioExcPedidoEsp.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          vExcluirCReceber := True;
          if (DM1.tPedidoEspNotaPedido.AsString = 'P') and (DM1.tPedidoEspGeraContas.AsBoolean) then
            Exclui_CReceber;
          if vExcluirCReceber then
            begin
              DM1.tPedidoEspItem.First;
              while not DM1.tPedidoEspItem.Eof do
                DM1.tPedidoEspItem.Delete;
              DM1.tPedidoEspParc.First;
              while not DM1.tPedidoEspParc.Eof do
                DM1.tPedidoEspParc.Delete;
              if (DM1.tPedidoEspNotaPedido.AsString = 'P') and (DM1.tPedidoEspGeraContas.AsBoolean) then
                Exclui_CReceber;
              DM1.tPedidoEsp.Delete;
              DM1.tPedidoEsp.Refresh;
              DM1.tPedidoEspItem.Refresh;
              DM1.tPedidoEspParc.Refresh;
              DBGrid3.Refresh;
            end;
        end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
  BitBtn3.Tag := 0;
end;

procedure TfPedidoEsp.BitBtn5Click(Sender: TObject);
var
 vVlrParc : Real;
begin
  BitBtn2.Tag := 0;
  PageControl1.ActivePage := TabSheet1;
  if DM1.tPedidoEsp.State in [dsEdit,dsInsert] then
    begin
      if DM1.tPedidoEsplkPrazoVista.AsString = 'P' then
        begin
          if (DM1.tPedidoEsplkPrazoVista.AsString = 'P') and (DM1.tPedidoEspParc.IsEmpty) then
            ShowMessage('Parcelas de Pagamento não geradas!')
          else
            begin
              // Verifica o valor das parcelas de pagamento
              DM1.tPedidoEspParc.First;
              vVlrParc := 0;
              while not DM1.tPedidoEspParc.EOF do
                begin
                  vVlrParc := vVlrParc + DM1.tPedidoEspParcVlrVecto.AsFloat;
                  DM1.tPedidoEspParc.Next;
                end;
              if formatfloat('0.00',vVlrParc) <> formatfloat('0.00',DM1.tPedidoEspVlrTotal.AsFloat) then
                ShowMessage('Soma das parcelas é diferente do total do pedido!')
              else
                begin
                  DM1.tPedidoEsp.Post;
                  Habilita;
                  BitBtn1.SetFocus;
                end;
              if (DM1.tPedidoEspNotaPedido.AsString = 'P') and (DM1.tPedidoEspGeraContas.AsBoolean) then
                Grava_CReceber;
            end;
        end
      else
      if DM1.tPedidoEsplkPrazoVista.AsString = 'V' then
        begin
          DM1.tPedidoEsp.Post;
          if (DM1.tPedidoEspNotaPedido.AsString = 'P') and (DM1.tPedidoEspGeraContas.AsBoolean) then
            Grava_CReceber;
          Habilita;
          BitBtn1.SetFocus;
        end;
    end;
end;

procedure TfPedidoEsp.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fCondPgto := TfCondPgto.Create(Self);
      fCondPgto.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de cond.pagto.!');
end;

procedure TfPedidoEsp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tPedidoEsp.State in [dsBrowse]) then
    begin
      fConsPedidoEsp := TfConsPedidoEsp.Create(Self);
      fConsPedidoEsp.ShowModal;
    end;
end;

procedure TfPedidoEsp.BitBtn7Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if (Edit1.Text = '') or (Edit5.Text = '') or (CurrencyEdit1.Value = 0) or (CurrencyEdit2.Value = 0)then
    ShowMessage('Há campos em branco!')
  else
    begin
      DM1.tPedidoEspItem.Refresh;
      DM1.tPedidoEspItem.Last;
      vItemAux := DM1.tPedidoEspItemItem.AsInteger; 

      DM1.tPedidoEspItem.Refresh;
      DM1.tPedidoEspItem.Insert;
      DM1.tPedidoEspItemNumPed.AsInteger      := DM1.tPedidoEspNumPed.AsInteger;
      if vItem < 1 then
        DM1.tPedidoEspItemItem.AsInteger      := vItemAux + 1
      else
        DM1.tPedidoEspItemItem.AsInteger      := vItem;
      if DM1.tPedidoEspNotaPedido.AsString = 'N' then
        begin
          DM1.tPedidoEspItemNumNota.AsString    := Edit1.Text;
          DM1.tPedidoEspItemNumPedido.Clear;
        end
      else
        begin
          DM1.tPedidoEspItemNumPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
          DM1.tPedidoEspItemNumNota.Clear;
        end;
      DM1.tPedidoEspItemItemPedido.AsInteger  := CurrencyEdit4.AsInteger;
      DM1.tPedidoEspItemDescricao.AsString    := Edit5.Text;
      DM1.tPedidoEspItemQtd.AsFloat           := CurrencyEdit1.Value;
      DM1.tPedidoEspItemVlrUnitario.AsFloat   := CurrencyEdit2.Value;
      DM1.tPedidoEspItemVlrTotal.AsFloat      := CurrencyEdit1.Value * CurrencyEdit2.Value;
      DM1.tPedidoEspVlrTotal.AsFloat          := DM1.tPedidoEspVlrTotal.AsFloat + DM1.tPedidoEspItemVlrTotal.AsFloat;
      DM1.tPedidoEspItem.Post;
      BitBtn8Click(Sender);
    end;
end;

procedure TfPedidoEsp.BitBtn8Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit5.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  Edit1.SetFocus;
  BitBtn9.Enabled  := True;
  BitBtn16.Enabled := True;
  vItem            := 0;
end;

procedure TfPedidoEsp.BitBtn9Click(Sender: TObject);
begin
  if not DM1.tPedidoEspItem.IsEmpty then
    begin
      if MessageDlg('Deseja realmente excluir este item?',mtConfirmation,
         [mbOK,mbNo],0) = mrOK then
        begin
          DM1.tPedidoEspVlrTotal.AsFloat := DM1.tPedidoEspVlrTotal.AsFloat - DM1.tPedidoEspItemVlrTotal.AsFloat;
          DM1.tPedidoEspItem.Delete;
        end;
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfPedidoEsp.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text <> '' then
    begin
      if DM1.tPedidoEspNotaPedido.AsString = 'N' then
        begin
          DM1.tNotaFiscal.IndexFieldNames := 'Filial;NumNota';
          DM1.tNotaFiscal.SetKey;
          DM1.tNotaFiscalFilial.AsInteger  := DM1.tFilialCodigo.AsInteger;
          DM1.tNotaFiscalNumNota.AsInteger := StrToInt(Edit1.Text);
          if DM1.tNotaFiscal.GotoKey then
            begin
              Edit5.Text          := 'Nota Fiscal numero ' + Edit1.Text;
              CurrencyEdit1.Value := 1;
              CurrencyEdit2.Value := DM1.tNotaFiscalVlrTotalNota.AsFloat;
              CurrencyEdit3.Value := DM1.tNotaFiscalVlrTotalNota.AsFloat;
            end
          else
            begin
              ShowMessage('Nota não cadastrada');
              Edit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfPedidoEsp.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit3.Value := CurrencyEdit2.Value * CurrencyEdit1.Value;
end;

procedure TfPedidoEsp.BitBtn11Click(Sender: TObject);
var
 QtdParcela, vParcela : Integer;
 VlrPrest, VlrFinal : Currency;
 ValorVarTotal, ValorTotalPed, VlrPrest2 : String;
begin
  DM1.tCondPgtoItem.First;
  QtdParcela      := DM1.tCondPgtoItem.RecordCount;
  VlrPrest        := DM1.tPedidoEspVlrTotal.AsFloat / QtdParcela;
  VlrPrest2       := FormatFloat('0.00',VlrPrest);
  ValorTotalPed   := FormatFloat('0.00',DM1.tPedidoEspVlrTotal.AsFloat);
  VlrFinal        := StrToFloat(VlrPrest2) * QtdParcela;
  ValorVarTotal   := FormatFloat('0.00',VlrFinal);
  VlrFinal        := StrToFloat(ValorTotalPed) - StrToFloat(ValorVarTotal);
  vParcela        := 0;
  DM1.tPedidoEspParc.First;
  if not DM1.tPedidoEspParc.IsEmpty then
    ShowMessage('Já foram geradas as parcelas')
  else
    begin
      while not DM1.tCondPgtoItem.Eof do
        begin
          DM1.tPedidoEspParc.Insert;
          vParcela := vParcela + 1;
          DM1.tPedidoEspParcParcela.AsInteger  := vParcela;
          DM1.tPedidoEspParcDtVecto.AsDateTime := DM1.tPedidoEspDtEmissao.AsDateTime +
                                                  DM1.tCondPgtoItemQtdDias.AsInteger;
          DM1.tPedidoEspParcVlrVecto.AsString  := FormatFloat('0.00',VlrPrest);
          DM1.tPedidoEspParc.Post;
          DM1.tCondPgtoItem.Next;
        end;
      DM1.tPedidoEspParc.Last;
      DM1.tPedidoEspParc.Edit;
      DM1.tPedidoEspParcVlrVecto.AsCurrency := DM1.tPedidoEspParcVlrVecto.AsCurrency +
                                               VlrFinal;
      DM1.tPedidoEspParc.Post;
    end;
end;

procedure TfPedidoEsp.BitBtn12Click(Sender: TObject);
begin
  DM1.tPedidoEspParc.Delete;
end;

procedure TfPedidoEsp.GroupBox3Exit(Sender: TObject);
var
 VlrTotal : Real;
 VlrTotal2 : String;
begin
  VlrTotal := 0;
  DM1.tPedidoEspParc.First;
  while not DM1.tPedidoEspParc.Eof do
    begin
      VlrTotal := VlrTotal + DM1.tPedidoEspParcVlrVecto.AsFloat;
      DM1.tPedidoEspParc.Next
    end;
  VlrTotal2 := FormatFloat('0.00',VlrTotal);
  if VlrTotal2 <> FormatFloat('0.00',DM1.tPedidoEspVlrTotal.AsFloat) then
    begin
      ShowMessage('Vlr.das parcelas diferente do vlr.total!');
      GroupBox3.SetFocus;
    end;
end;

procedure TfPedidoEsp.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioVendedor.AsBoolean then
    begin
      fVendedor := TfVendedor.Create(Self);
      fVendedor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de vendedor!');
end;

procedure TfPedidoEsp.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioTransp.AsBoolean then
    begin
      fNatOperacao := TfNatOperacao.Create(Self);
      fNatOperacao.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de transportadora!');
end;

procedure TfPedidoEsp.FormCreate(Sender: TObject);
begin
  DM1.tPedidoEsp.open;
  DM1.tPedidoEsp.Refresh;
  DM1.tPedidoEsp.Last;
end;

procedure TfPedidoEsp.FormShow(Sender: TObject);
var
 i, vParcela : Integer;
 vTotal : Real;
 vItemAux : Integer;
begin
  DM1.tPedidoEsp.Open;
  DM1.tPedidoEspItem.Open;
  DM1.tPedidoEspParc.Open;

  if Screen.FormCount < 3 then
    begin
      DM1.tNotaFiscal.Open;
      DM1.tNotaFiscalParc.Open;
      DM1.tCondPgto.Open;
      DM1.tCliente.Open;
      DM1.tNatOperacao.Open;
      DM1.tCReceber.Open;
      DM1.tCReceberParc.Open;
      DM1.tCReceberParcHist.Open;
    end;

  PageControl1.ActivePage := TabSheet1;
  Tag := 0;
  for i := 0 to Screen.FormCount - 1 do
    begin
      if (Screen.Forms[i] is TfEmissaoNotaFiscal) and (fEmissaoNotaFiscal.Showing) and (Tag = 0) then
        begin
          Tag := 1;
          BitBtn1Click(Sender);
          //*** Insere as parcelas e verifica o total do pedido especial pelo total das parcelas
          vTotal   := 0;
          vParcela := 0;
          DM1.tNotaFiscalParc.First;
          while not DM1.tNotaFiscalParc.Eof do
            begin
              if DM1.tNotaFiscalParcParcela.AsInteger > 09 then
                begin
                  DM1.tPedidoEspParc.Insert;
                  vParcela := vParcela + 1;
                  DM1.tPedidoEspParcParcela.AsInteger  := vParcela;
                  DM1.tPedidoEspParcDtVecto.AsDateTime := DM1.tNotaFiscalParcDtVenc.AsDateTime;
                  DM1.tPedidoEspParcVlrVecto.AsFloat   := DM1.tNotaFiscalParcVlrVenc.AsFloat;
                  DM1.tPedidoEspParc.Post;
                  vTotal := vTotal + DM1.tNotaFiscalParcVlrVenc.AsFloat;
                end;
              DM1.tNotaFiscalParc.Next;
            end;

          //*** Insere o Pedido
          DM1.tPedidoEspCodCliente.AsInteger  := DM1.tNotaFiscalCodCli.AsInteger;
          DM1.tPedidoEspCodCondPgto.AsInteger := DM1.tNotaFiscalPrazoPgto.AsInteger;
          DM1.tPedidoEspNotaPedido.AsString   := 'N';
          DM1.tPedidoEspCodVendedor.AsInteger := DM1.tNotaFiscalCodVendedor.AsInteger;
          DM1.tPedidoEspPercComissao.AsFloat  := DM1.tNotaFiscalPercComissao.AsInteger;
          if vTotal > 0 then
            DM1.tPedidoEspVlrTotal.AsFloat    := vTotal
          else
            DM1.tPedidoEspVlrTotal.AsFloat    := DM1.tNotaFiscalVlrTotalNota.AsFloat;
          DM1.tPedidoEspCodNatureza.AsInteger := DM1.tNotaFiscalCodNatOper.AsInteger;
          DM1.tPedidoEspGeraContas.AsBoolean  := False;

          //*** Insere o Iten
          DM1.tPedidoEspItem.Refresh;
          DM1.tPedidoEspItem.Last;
          vItemAux := DM1.tPedidoEspItemItem.AsInteger;

          DM1.tPedidoEspItem.Insert;
          DM1.tPedidoEspItemNumPed.AsInteger  := DM1.tPedidoEspNumPed.AsInteger;
          DM1.tPedidoEspItemItem.AsInteger    := vItemAux + 1;
          DM1.tPedidoEspItemNumNota.AsInteger := DM1.tNotaFiscalNumNota.AsInteger;
          DM1.tPedidoEspItemNumPedido.Clear;
          DM1.tPedidoEspItemItemPedido.Clear;
          DM1.tPedidoEspItemDescricao.AsString    := 'Nota Fiscal numero ' + DM1.tNotaFiscalNumNota.AsString;
          DM1.tPedidoEspItemQtd.AsFloat           := 1;
          DM1.tPedidoEspItemVlrUnitario.AsFloat   := DM1.tPedidoEspVlrTotal.AsFloat;
          DM1.tPedidoEspItemVlrTotal.AsFloat      := DM1.tPedidoEspVlrTotal.AsFloat;
          DM1.tPedidoEspItem.Post;
        end;
    end;
end;

procedure TfPedidoEsp.BitBtn16Click(Sender: TObject);
begin
  if not DM1.tPedidoEspItem.IsEmpty then
    begin
      if (Edit1.Text <> '') or (Edit5.Text <> '') or (CurrencyEdit1.Value > 0) or
        (CurrencyEdit2.Value > 0) or (CurrencyEdit3.Value > 0) or (CurrencyEdit4.Value > 0) then
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!')
      else
        begin
          vItem      := DM1.tPedidoEspItemItem.AsInteger;
          if DM1.tPedidoEspNotaPedido.AsString = 'N' then
            Edit1.Text := DM1.tPedidoEspItemNumNota.AsString
          else
            Edit1.Text := DM1.tPedidoEspItemlkPedidoCliente.AsString;
          CurrencyEdit4.AsInteger := DM1.tPedidoEspItemItemPedido.AsInteger;
          Edit5.Text              := DM1.tPedidoEspItemDescricao.AsString;
          CurrencyEdit1.AsInteger := DM1.tPedidoEspItemQtd.AsInteger;
          CurrencyEdit2.Value     := DM1.tPedidoEspItemVlrUnitario.AsFloat;
          CurrencyEdit3.Value     := DM1.tPedidoEspItemVlrTotal.AsFloat;
          DM1.tPedidoEspVlrTotal.AsFloat := DM1.tPedidoEspVlrTotal.AsFloat - DM1.tPedidoEspItemVlrTotal.AsFloat;
          DM1.tPedidoEspItem.Delete;
          Habilita_Item;
          Edit1.SetFocus;
        end;
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfPedidoEsp.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tPedidoEsp.IndexFieldNames := 'NumPed';
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedidoEsp.RxDBLookupCombo1Exit(Sender: TObject);
begin
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedidoEsp.Edit3Change(Sender: TObject);
begin
  try
    DM1.tPedidoEsp.IndexFieldNames := 'NumPed';
    DM1.tPedidoEsp.FindNearest([Edit3.Text]);
  except
    ShowMessage('Digite apenas números aqui!');
  end;
end;

procedure TfPedidoEsp.RxDBLookupCombo1Change(Sender: TObject);
begin
  Edit3.Text := RxDBLookupCombo1.Text;
end;

procedure TfPedidoEsp.DBDateEdit1Exit(Sender: TObject);
begin
  if DM1.tPedidoEspDtEmissao.AsString = '' then
    begin
      ShowMessage('Data de emissão não pode ser vazia!');
      DBDateEdit1.SetFocus;
      DBDateEdit1.Date := Date;
    end;
end;

procedure TfPedidoEsp.RxDBLookupCombo4Exit(Sender: TObject);
begin
  Dm1.tCliente.IndexFieldNames := 'Codigo';
  PageControl1.ActivePage := TabSheet1;
  RxDBLookupCombo4.LookupDisplay := 'Nome';
  Label19.Caption := RxDBLookupCombo4.LookupDisplay;
end;

procedure TfPedidoEsp.RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo4.LookupDisplay = 'Nome' then
        begin
           RxDBLookupCombo4.CloseUp(True);
           RxDBLookupCombo4.LookupDisplay := 'Fantasia';
           Dm1.tCliente.IndexFieldNames   := 'Fantasia';
           Dm1.tCliente.Refresh;
        end
      else
        begin
          RxDBLookupCombo4.CloseUp(True);
          RxDBLookupCombo4.LookupDisplay := 'Nome';
          Dm1.tCliente.IndexFieldNames   := 'Nome';
          Dm1.tCliente.Refresh;
        end;
      Label19.Caption := RxDBLookupCombo4.LookupDisplay;
    end;
end;

procedure TfPedidoEsp.RxDBLookupCombo4Change(Sender: TObject);
begin
  if RxDBLookupCombo4.LookupDisplay = 'Nome' then
    DM1.tCliente.IndexFieldNames := 'Nome'
  else
    Dm1.tCliente.IndexFieldNames := 'Fantasia';
end;

procedure TfPedidoEsp.RxDBLookupCombo5Exit(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
end;

procedure TfPedidoEsp.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfPedidoEsp.RxDBLookupCombo6Exit(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Codigo';
end;

procedure TfPedidoEsp.RxDBLookupCombo6Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfPedidoEsp.RxDBLookupCombo9CloseUp(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Codigo';
end;

procedure TfPedidoEsp.RxDBLookupCombo9DropDown(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfPedidoEsp.DBRadioGroup2Click(Sender: TObject);
begin
  if DM1.tPedidoEspNotaPedido.AsString = 'N' then
    begin
      DM1.tPedidoEspGeraContas.AsBoolean := False;
      DBCheckBox1.ReadOnly               := True;
      StaticText1.Caption                := 'Nota';
      CurrencyEdit4.ReadOnly             := True;
      CurrencyEdit4.TabStop              := False;
    end
  else
    begin
      DM1.tPedidoEspGeraContas.AsBoolean := False;
      DBCheckBox1.ReadOnly               := False;
      StaticText1.Caption                := 'Pedido';
      CurrencyEdit4.ReadOnly             := False;
      CurrencyEdit4.TabStop              := True;
    end;
end;

procedure TfPedidoEsp.DBRadioGroup2Enter(Sender: TObject);
begin
  if DM1.tPedidoEspItem.RecordCount > 0 then
    begin
      ShowMessage('Quando o item já foi digitado não pode mais ser alterado');
      RxDBLookupCombo6.SetFocus;
    end;
end;

procedure TfPedidoEsp.Edit4Exit(Sender: TObject);
begin
  if Edit1.Text <> '' then
    begin
      if DM1.tPedidoEspNotaPedido.AsString = 'P' then
        begin
          DM1.tPedido.IndexFieldNames := 'PedidoCliente';
          DM1.tPedido.SetKey;
          DM1.tPedidoPedidoCliente.AsString := Edit1.Text;
          if DM1.tPedido.GotoKey then
            Edit5.Text := 'Pedido numero ' + Edit1.Text
          else
            begin
              ShowMessage('Pedido não cadastrado');
              Edit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfPedidoEsp.CurrencyEdit4Exit(Sender: TObject);
begin
  if DM1.tPedidoEspNotaPedido.AsString = 'P' then
    begin
      DM1.tPedidoItem.SetKey;
      DM1.tPedidoItemPedido.AsInteger := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoItemItem.AsInteger   := CurrencyEdit4.AsInteger;
      if DM1.tPedidoItem.GotoKey then
        begin
          Edit5.Text          := 'Pedido numero ' + Edit1.Text + ' item ' + CurrencyEdit4.Text;
          CurrencyEdit1.Value := DM1.tPedidoItemQtdParesRest.AsInteger;
          CurrencyEdit2.Value := DM1.tPedidoItemPreco.AsFloat - DM1.tPedidoItemVlrDesconto.AsFloat;
          CurrencyEdit3.Value := DM1.tPedidoItemVlrTotal.AsFloat;
        end;
    end;
end;

procedure TfPedidoEsp.RxSpeedButton2Click(Sender: TObject);
begin
  vVlrTotal := 0;
  Imprime_Pedido;
end;

procedure TfPedidoEsp.GroupBox3Enter(Sender: TObject);
begin
  if DM1.tPedidoEsplkPrazoVista.AsString = 'V' then
    ShowMessage('Condição de pagamento é à vista');
end;

procedure TfPedidoEsp.DBCheckBox1Exit(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  Edit1.SetFocus;
end;

procedure TfPedidoEsp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tPedidoEsp.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o Pedido Especial antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

end.
