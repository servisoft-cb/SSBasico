unit UNotaEntrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask,
  DBTables, ToolEdit, RXDBCtrl, RXLookup, MemTable, Grids, DBGrids, RXCtrls, RxCalc, CurrEdit, DBFilter, Menus, Printers, RxDBComb,
  Variants, DBClient, RzDBCmbo, Db;

type
  TfNotaEntrada = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel4: TRxLabel;
    DBEdit4: TDBEdit;
    RxCalculator1: TRxCalculator;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    Panel4: TPanel;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label2: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    PopupMenu2: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    tNEntradaParcIns: TTable;
    tNEntradaParcInsCodForn: TIntegerField;
    tNEntradaParcInsNumNEntr: TIntegerField;
    tNEntradaParcInsParcela: TSmallintField;
    tNEntradaParcInsDtVenc: TDateField;
    tNEntradaParcInsVlrVenc: TFloatField;
    tNEntradaParcInsBanco: TStringField;
    tNEntradaParcInsCheque: TStringField;
    tNEntradaIns: TTable;
    tNEntradaInsNumNEntr: TIntegerField;
    tNEntradaInsCodForn: TIntegerField;
    tNEntradaInsSerie: TStringField;
    tNEntradaInsNumOC: TIntegerField;
    tNEntradaInsCondPgto: TStringField;
    tNEntradaInsDtEmissaoNEntr: TDateField;
    tNEntradaInsDtEntrada: TDateField;
    tNEntradaInsVlrTotalNEntr: TFloatField;
    tNEntradaInsBaseIcms: TFloatField;
    tNEntradaInsVlrIcms: TFloatField;
    tNEntradaInsVlrIpi: TFloatField;
    tNEntradaInsCodNatOper: TSmallintField;
    tNEntradaInsIcmsIpi: TBooleanField;
    tNEntradaInsPlanoContas: TIntegerField;
    tNEntradaItensMObraIns: TTable;
    tNEntradaItensMObraInsCodForn: TIntegerField;
    tNEntradaItensMObraInsNumNEntr: TIntegerField;
    tNEntradaItensMObraInsItem: TSmallintField;
    tNEntradaItensMObraInsCodigo: TSmallintField;
    tNEntradaItensMObraInsDescricao: TStringField;
    tNEntradaItensMObraInsQtd: TFloatField;
    tNEntradaItensMObraInsAliquota: TFloatField;
    tNEntradaItensMObraInsVlrUnit: TFloatField;
    tNEntradaItensMObraInsVlrTotal: TFloatField;
    tNEntradaItensMObraInsVlrIssqn: TFloatField;
    tNEntradaItensMObraInsInss: TFloatField;
    tNEntradaItensMObraInsIrf: TFloatField;
    tNEntradaParcInsNroDuplicata: TIntegerField;
    tNEntradaInsNroDuplicata: TIntegerField;
    dsAuxNEntradaGrade: TDataSource;
    BitBtn8: TBitBtn;
    DBEdit5: TDBEdit;
    RxLabel5: TRxLabel;
    DBEdit7: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Bevel2: TBevel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel4: TBevel;
    Label9: TLabel;
    Label26: TLabel;
    Label10: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label22: TLabel;
    Label24: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn2: TBitBtn;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    Bevel5: TBevel;
    SpeedButton11: TSpeedButton;
    DBGrid2: TDBGrid;
    tCPagarParc: TTable;
    dsCPagarParc: TDataSource;
    tCPagarParcNumCPagar: TIntegerField;
    tCPagarParcParcCPagar: TIntegerField;
    tCPagarParcDtVencCPagar: TDateField;
    tCPagarParcVlrParcCPagar: TFloatField;
    tCPagarParcQuitParcCPagar: TBooleanField;
    tCPagarParcDtPagParcCPagar: TDateField;
    tCPagarParcJurosParcCPagar: TFloatField;
    tCPagarParcCodForn: TIntegerField;
    tCPagarParcNumNotaEnt: TIntegerField;
    tCPagarParcDesconto: TFloatField;
    tCPagarParcPgtoParcial: TFloatField;
    tCPagarParcRestParcela: TFloatField;
    tCPagarParcBanco: TStringField;
    tCPagarParcPlanoContas: TIntegerField;
    tCPagarParcNroDuplicata: TIntegerField;
    tCPagarParcDespesas: TFloatField;
    tCPagarParcAbatimentos: TFloatField;
    tCPagarParcCodConta: TIntegerField;
    tCPagarParcDiasAtraso: TFloatField;
    tCPagarParcJurosPagos: TFloatField;
    tCPagarParcCodTipoCobranca: TIntegerField;
    tCPagarParclkBanco: TStringField;
    SpeedButton2: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo9: TRxDBLookupCombo;
    RxDBComboBox1: TRxDBComboBox;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SpeedButton9: TSpeedButton;
    Label11: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    SpeedButton17: TSpeedButton;
    Label25: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    BitBtn7: TBitBtn;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    BitBtn16: TBitBtn;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn9: TBitBtn;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit12: TCurrencyEdit;
    CheckBox1: TCheckBox;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo13: TRxDBLookupCombo;
    RxSpeedButton1: TRxSpeedButton;
    DBMemo1: TDBMemo;
    Label32: TLabel;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    Label12: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxLabel6: TRxLabel;
    DBEdit8: TDBEdit;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label30: TLabel;
    SpeedButton12: TSpeedButton;
    Label36: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    SpeedButton16: TSpeedButton;
    tNEntradaParcInsFilial: TIntegerField;
    tNEntradaParcInsCodBco: TIntegerField;
    tNEntradaInsFilial: TIntegerField;
    tNEntradaInsCodNatOper2: TIntegerField;
    tNEntradaInsOutrasDesp: TFloatField;
    tNEntradaInsTotalParcelas: TIntegerField;
    tNEntradaInsObsPagamento: TMemoField;
    tNEntradaInsNroFatura: TIntegerField;
    tNEntradaInsDtFatura: TDateField;
    tNEntradaInsDevolvida: TBooleanField;
    tNEntradaInsCodAtelier: TIntegerField;
    tNEntradaInsDevolucao: TBooleanField;
    tNEntradaInsModelo: TIntegerField;
    tNEntradaInsCodCondPagto: TIntegerField;
    tNEntradaInsVlrTotalDuplicata: TFloatField;
    tNEntradaInsVlrFrete: TFloatField;
    tNEntradaInsCodPlanoContasItens: TIntegerField;
    RxLabel7: TRxLabel;
    DBEdit9: TDBEdit;
    tNEntradaItensMObraInsFilial: TIntegerField;
    tNEntradaItensMObraInsCodNatOper: TIntegerField;
    tNEntradaItensMObraInsGeraDupl: TBooleanField;
    tCPagarParcFilial: TIntegerField;
    Panel6: TPanel;
    CurrencyEdit14: TCurrencyEdit;
    RxDBLookupCombo11: TRxDBLookupCombo;
    Label31: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton10: TSpeedButton;
    BitBtn11: TBitBtn;
    dsmSelecionado: TDataSource;
    mSelecionado: TClientDataSet;
    mSelecionadoFilial: TIntegerField;
    mSelecionadoNumNota: TIntegerField;
    mSelecionadoItem: TIntegerField;
    mSelecionadoCodCliente: TIntegerField;
    mSelecionadoCodMaterial: TIntegerField;
    mSelecionadoCodCor: TIntegerField;
    mSelecionadoQtdRestante: TFloatField;
    mSelecionadoQtd: TFloatField;
    mSelecionadoNomeMaterial: TStringField;
    mSelecionadoNomeCor: TStringField;
    mSelecionadoUnidade: TStringField;
    mSelecionadoVlrUnitario: TFloatField;
    mSelecionadoVlrTotal: TFloatField;
    SpeedButton13: TSpeedButton;
    RxLabel8: TRxLabel;
    DBEdit10: TDBEdit;
    RadioGroup1: TRadioGroup;
    mSelecionadoNumSeq: TIntegerField;
    RxDBFilter1: TRxDBFilter;
    RxDBLookupCombo15: TRxDBLookupCombo;
    RxDBFilter2: TRxDBFilter;
    tAuxNEntradaGrade: TClientDataSet;
    tAuxNEntradaGradeCodGrade: TIntegerField;
    tAuxNEntradaGradePosicao: TIntegerField;
    tAuxNEntradaGradeQtd: TFloatField;
    tAuxNEntradaGradeVlrUnitario: TFloatField;
    tAuxNEntradaGradeVlrTotal: TFloatField;
    tAuxNEntradaGradeTamanho: TStringField;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label23: TLabel;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RxLabel9: TRxLabel;
    DBEdit11: TDBEdit;
    Label34: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo12: TRxDBLookupCombo;
    Label35: TLabel;
    Edit1: TEdit;
    Label28: TLabel;
    BitBtn10: TBitBtn;
    Label29: TLabel;
    DBEdit12: TDBEdit;
    Label37: TLabel;
    DBEdit13: TDBEdit;
    Label38: TLabel;
    BitBtn12: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure CurrencyEdit7Exit(Sender: TObject);
    procedure CurrencyEdit9Exit(Sender: TObject);
    procedure CurrencyEdit10Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CurrencyEdit12Exit(Sender: TObject);
    procedure CurrencyEdit12Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure CurrencyEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit14Exit(Sender: TObject);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure RxDBLookupCombo10Exit(Sender: TObject);
    procedure RxDBLookupCombo11Change(Sender: TObject);
    procedure Panel6Exit(Sender: TObject);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CurrencyEdit3Enter(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure CurrencyEdit7Enter(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure RxDBLookupCombo14Enter(Sender: TObject);
    procedure RxDBLookupCombo5DropDown(Sender: TObject);
    procedure tAuxNEntradaGradeBeforeInsert(DataSet: TDataSet);
    procedure tAuxNEntradaGradeBeforePost(DataSet: TDataSet);
    procedure Panel8Enter(Sender: TObject);
    procedure RzDBLookupComboBox1DropDown(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure RzDBLookupComboBox1Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    { Private declarations }
    vCodEstoqueMat, vCodEstoqueCor, vNumMovEst: Integer;
    vVlrFrete, vVlrFreteInd, vVlrDescTot: Real;
    vCodProduto: Integer;

    procedure Grava_Pgto;
    procedure Habilita;
    procedure Calcula_ICMS;
    procedure Calcula_IPI;
    procedure Cancela_Pgto;
    procedure Compara_Valor_Parcelas;
    procedure Monta_Grade;
    procedure Soma_Estoque;
    procedure Diminui_Estoque;
    procedure Atualiza_Precos;
    procedure Move_Itens;
    procedure Grava_Itens(Qtd,Valor : Real);
    procedure Grava_Estoque(Tamanho : String; Qtd, QtdPacote : Real);
    procedure Ajusta_Estoque;
    procedure Volta_NotaFiscal;
    procedure Desfaz_DescontoICMS;
    procedure CalculaRateio;
    procedure Baixa_OC;

  public
    vQtdPacote : Real;

    procedure Limpa_Edit;
    procedure Verifica_UF;
    procedure Verifica_Parcelas;
    procedure Verifica_Natureza(Codigo : String);
    
    { Public declarations }
  end;

var
  fNotaEntrada : TfNotaEntrada;
  vBaseICMS, vValorICMS, vValorIPI, vAliqICMS: Real;
  vSiglaUF : string[2];
  vValorParcelas, vOutrasDesp : Currency;
  vValorParcelaTot : String;
  vNumOC, vItemOC, vItem : Integer;
  vVlrDuplicata : Real;
  F  : TextFile;
  vNatureza : Boolean;


implementation

uses UDM1, UFornecedores, URelNotaEntrada,
  UNatOperacao, UConsNotaEnt, UPlanoContas, UMaterial, UNotaEntradaGrade,
  USitTributaria, UBuscaOC, UDM2, UMaoDeObra, UProduto, UEscFilial,
  UCondPgto, UEscNotaFiscalDevolPorItem2, UEscImpressora, UNotaEntradaQtd,
  uIntegracao;

{$R *.DFM}

procedure TfNotaEntrada.Volta_NotaFiscal;
begin
  DM1.tNotaFiscal.IndexFieldNames      := 'Filial;NumSeq';
  DM1.tNotaFiscalItens.IndexFieldNames := 'Filial;NumSeq;Item';
  DM1.tNEntradaNDevolvida.First;
  while not DM1.tNEntradaNDevolvida.Eof do
    begin
      DM1.tNotaFiscal.SetKey;
      DM1.tNotaFiscalFilial.AsInteger  := DM1.tFilialCodigo.AsInteger;
      DM1.tNotaFiscalNumNota.AsInteger := DM1.tNEntradaNDevolvidaNumSeqNotaSaida.AsInteger;
      if DM1.tNotaFiscal.GotoKey then
        begin
          DM1.tNotaFiscalItens.SetKey;
          DM1.tNotaFiscalItensFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
          DM1.tNotaFiscalItensNumNota.AsInteger  := DM1.tNEntradaNDevolvidaNumSeqNotaSaida.AsInteger;
          DM1.tNotaFiscalItensItem.AsInteger     := DM1.tNEntradaNDevolvidaItemNotaSaida.AsInteger;
          if DM1.tNotaFiscalItens.GotoKey then
            begin
              DM1.tNotaFiscalItens.Edit;
              DM1.tNotaFiscalItensQtdRestante.AsFloat  := DM1.tNotaFiscalItensQtdRestante.AsFloat + DM1.tNEntradaNDevolvidaQtd.AsFloat;
              DM1.tNotaFiscalItensQtdDevolvida.AsFloat := DM1.tNotaFiscalItensQtdDevolvida.AsFloat - DM1.tNEntradaNDevolvidaQtd.AsFloat;
              DM1.tNotaFiscalItens.Post;
            end;
        end;
      DM1.tNEntradaNDevolvida.Delete;
    end;
end;

procedure TfNotaEntrada.Ajusta_Estoque;
var
  vFilialAux, vNumMovAux : Integer;
begin
  DM1.tEstoqueMatMov.Filtered := False;
  DM1.tEstoqueMatMov.Filter   := 'NumNota = '''+DM1.tNEntradaNumNEntr.AsString+''' and TipoMov = '''+'NTE'+''' and Filial = '''+Dm1.tNEntradaFilial.AsString+''' and CodCliForn = '''+Dm1.tNEntradaCodForn.AsString+'''';
  DM1.tEstoqueMatMov.Filtered := True;
  DM1.tEstoqueMatMov.First;
  while not DM1.tEstoqueMatMov.Eof do
  begin
    vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
    vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

    DM1.tEstoqueMatMov.Delete;
    //02/05/2012
    if DM1.tParametrosUsaFB.AsBoolean then
      Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);
  end;
  DM1.tEstoqueMatMov.Filtered := False;
end;

procedure TfNotaEntrada.Verifica_Natureza(Codigo : String);
begin
  vNatureza := True;
  if Codigo <> '' then
    begin
      if ((Copy(Codigo,1,1) = '5') or (Copy(Codigo,1,1) = '6') or (Copy(Codigo,1,1) = '7')) then
        begin
          ShowMessage('Natureza é de saída!');
          vNatureza := False;
        end
      else
      if RxDBLookupCombo1.Text <> '' then
        begin
          if (vSiglaUF <> DM1.tEmpresaEstado.AsString) and ((Copy(Codigo,1,1) = '1')) then
            begin
              ShowMessage('Natureza inválida para o estado!');
              vNatureza := False;
            end
          else
          if ((vSiglaUF = DM1.tEmpresaEstado.AsString) and (Copy(Codigo,1,1) <> '1')) then
            begin
              ShowMessage('Natureza inválida para o estado!');
              vNatureza := False;
            end;
        end;
    end;
end;

procedure TfNotaEntrada.Grava_Estoque(Tamanho : String; Qtd, QtdPacote : Real);
var
  vVlrUnitAux, vQtdAux : Real;
  vDescOrigAux, vDescAux : Real;
begin
  vVlrUnitAux := DM1.tNEntradaItensVlrUnit.AsFloat;
  vQtdAux     := Qtd;

  if DM1.tProdutoCodigo.AsInteger <> DM1.tNEntradaItensCodMaterial.AsInteger then
  begin
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.FindKey([DM1.tNEntradaItensCodMaterial.AsInteger]);
  end;

  if (DM1.tProdutoUnidade.AsString <> DM1.tNEntradaItensUnidade.AsString) and (QtdPacote > 0) then
  begin
    vQtdAux     := QtdPacote;
    if (StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensVlrUnit.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',vQtdAux)) > 0) and
       (StrToFloat(FormatFloat('0.00000',Qtd)) > 0) then
      vVlrUnitAux := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensVlrUnit.AsFloat / (vQtdAux / Qtd)));
  end;

  vDescAux     := 0;
  vDescOrigAux := 0;
  if StrToFloat(FormatFloat('0.0000',DM1.tNEntradaItensVlrDesc.AsFloat)) > 0 then
  begin
    vDescAux     := DM1.tNEntradaItensVlrDesc.AsFloat / vQtdAux;
    vDescOrigAux := DM1.tNEntradaItensVlrDesc.AsFloat / Qtd;
  end;

  DM1.tEstoqueMatMov.Refresh;
  vCodEstoqueMat := DM1.tNEntradaItensCodMaterial.AsInteger;
  vCodEstoqueCor := DM1.tNEntradaItensCodCor.AsInteger;
  if vNumMovEst > 0 then
  begin
    DM1.tEstoqueMatMov.SetKey;
    DM1.tEstoqueMatMovFilial.AsInteger := DM1.tNEntradaFilial.AsInteger;
    DM1.tEstoqueMatMovNumMov.AsInteger := vNumMovEst;
    if DM1.tEstoqueMatMov.GotoKey then
    begin
      DM2.tEstoqueMatMov2.Refresh;
      DM2.tEstoqueMatMov2.Last;
      vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
    end;
  end
  else
  begin
    DM2.tEstoqueMatMov2.Refresh;
    DM2.tEstoqueMatMov2.Last;
    vNumMovEst := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
  end;
  DM1.tEstoqueMatMov.Insert;
  DM1.tEstoqueMatMovFilial.AsInteger      := DM1.tNEntradaItensFilial.AsInteger;
  DM1.tEstoqueMatMovNumMov.AsInteger      := vNumMovEst;
  DM1.tEstoqueMatMovCodMaterial.AsInteger := vCodEstoqueMat;
  DM1.tEstoqueMatMovCodCor.AsInteger      := vCodEstoqueCor;
  DM1.tEstoqueMatMovTamanho.AsString      := Tamanho;
  DM1.tEstoqueMatMovLargura.AsString      := DM1.tNEntradaItenslkLargura.AsString;
  DM1.tEstoqueMatMovDtMov.AsDateTime      := DM1.tNEntradaDtEntrada.AsDateTime;
  DM1.tEstoqueMatMovES.AsString           := 'E';
  DM1.tEstoqueMatMovTipoMov.AsString      := 'NTE';
  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tNEntradaNumNEntr.AsInteger;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tNEntradaCodForn.AsInteger;
  //DM1.tEstoqueMatMovVlrUnitario.AsFloat   := DM1.tNEntradaItensVlrUnit.AsFloat;
  DM1.tEstoqueMatMovVlrUnitario.AsFloat   := StrToFloat(FormatFloat('0.00000',vVlrUnitAux));

  //DM1.tEstoqueMatMovQtd.AsFloat           := Qtd;
  //DM1.tEstoqueMatMovQtd2.AsFloat          := Qtd;
  DM1.tEstoqueMatMovQtd.AsFloat           := StrToFloat(FormatFloat('0.00000',vQtdAux));
  DM1.tEstoqueMatMovQtd2.AsFloat          := StrToFloat(FormatFloat('0.00000',vQtdAux));
  //DM1.tEstoqueMatMovUnidade.AsString      := DM1.tNEntradaItensUnidade.AsString;
  DM1.tEstoqueMatMovUnidade.AsString      := DM1.tProdutoUnidade.AsString;
  DM1.tEstoqueMatMovPercIcms.AsFloat      := DM1.tNEntradaItensIcms.AsFloat;
  DM1.tEstoqueMatMovPercIpi.AsFloat       := DM1.tNEntradaItensIpi.AsFloat;
  //DM1.tEstoqueMatMovVlrDesconto.AsFloat   := (DM1.tNEntradaItensVlrDesc.AsFloat / DM1.tNEntradaItensQtd.AsFloat);
  DM1.tEstoqueMatMovVlrDesconto.AsFloat   := StrToFloat(FormatFloat('0.00000',vDescAux));
  if DM1.tNEntradaItensSitTrib.AsInteger > 0 then
    DM1.tEstoqueMatMovPercTributacao.AsFloat := DM1.tNEntradaItenslkPercSitTrib.AsFloat
  else
  if DM1.tNEntradaItensIcms.AsFloat > 0 then
    DM1.tEstoqueMatMovPercTributacao.AsFloat := 100;
  DM1.tEstoqueMatMovVlrFrete.AsFloat := StrToFloat(FormatFloat('0.00',vVlrFreteInd));
  DM1.tEstoqueMatMovCodNatOper.AsInteger := DM1.tNEntradaItensCodNatOper.AsInteger;

  DM1.tEstoqueMatMovUnidadeOrig.AsString    := DM1.tNEntradaItensUnidade.AsString;
  DM1.tEstoqueMatMovVlrUnitarioOrig.AsFloat := DM1.tNEntradaItensVlrUnit.AsFloat;
  DM1.tEstoqueMatMovQtdOrig.AsFloat         := Qtd;
  DM1.tEstoqueMatMovVlrDescontoOrig.AsFloat := StrToFloat(FormatFloat('0.00000',vDescOrigAux));

  DM1.tEstoqueMatMov.Post;
  //02/05/2012
  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Gravar_Estoque_Mov_FB(dm1.tEstoqueMatMovFilial.AsInteger,dm1.tEstoqueMatMovNumMov.AsInteger);
end;

procedure TfNotaEntrada.Grava_Itens(Qtd,Valor : Real);
var
  vNumAux : Integer;
begin
  CurrencyEdit3.Value := Qtd;
  CurrencyEdit7.Value := Valor;

  if CurrencyEdit5.Value > 0 then
    begin
      CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
      CurrencyEdit8.Value := StrToCurr(FormatFloat('0.00',CurrencyEdit8.Value + CurrencyEdit8.Value * CurrencyEdit5.Value / 100));
    end
  else
    CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
  CurrencyEdit9Exit(fNotaEntrada);
  CurrencyEdit10Exit(fNotaEntrada);

  DM1.tNEntradaItens.IndexFieldNames := 'Filial;CodForn;NumNEntr;Item';
  DM1.tNEntradaItens.Refresh;
  DM1.tNEntradaItens.Last;
  vNumAux := DM1.tNEntradaItensItem.AsInteger;
  DM1.tNEntradaItens.Insert;
  DM1.tNEntradaItensFilial.AsInteger      := Dm1.tNEntradaFilial.AsInteger;
  if BitBtn16.Tag = 1 then
    DM1.tNEntradaItensItem.AsInteger      := vItem
  else
    DM1.tNEntradaItensItem.AsInteger      := vNumAux + 1;
  DM1.tNEntradaItensCodMaterial.AsInteger := RZDBLookupComboBox1.KeyValue;
  if RxDBLookupCombo2.Text <> '' then
    DM1.tNEntradaItensCodCor.AsInteger    := RxDBLookupCombo2.KeyValue;
  DM1.tNEntradaItensReferencia.AsString   := DM1.tProdutoReferencia.AsString;
  DM1.tNEntradaItensCodNatOper.AsInteger  := RxDBLookupCombo10.KeyValue;
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
  DM1.tNatOperacao.SetKey;
  DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo10.KeyValue;
  if DM1.tNatOperacao.GotoKey then
    DM1.tNEntradaItensGeraDupl.AsBoolean := DM1.tNatOperacaoGeraDuplicata.AsBoolean
  else
    DM1.tNEntradaItensGeraDupl.AsBoolean := False;
  DM1.tNEntradaItensNomeMaterial.AsString := RZDBLookupComboBox1.Text;
  DM1.tNEntradaItensQtd.AsFloat           := CurrencyEdit3.Value;
  if vQtdPacote > 0 then
    DM1.tNEntradaItensQtdPacote.AsFloat := StrToFloat(FormatFloat('0.00000',vQtdPacote * CurrencyEdit3.Value));
  if mSelecionado.IsEmpty then
    begin
      DM1.tNEntradaItensQtdRestante.AsFloat := DM1.tNEntradaItensQtd.AsFloat;
      DM1.tNEntradaItensDevolucao.AsBoolean := False;
    end
  else
    begin
      DM1.tNEntradaItensQtdRestante.AsFloat := 0;
      DM1.tNEntradaItensDevolucao.AsBoolean := True;
    end;
  DM1.tNEntradaItensUnidade.AsString      := RxDBLookupCombo15.Value;
  DM1.tNEntradaItensICMS.AsFloat          := CurrencyEdit4.Value;
  DM1.tNEntradaItensIPI.AsFloat           := CurrencyEdit5.Value;
  DM1.tNEntradaItensVlrUnit.AsFloat       := CurrencyEdit7.Value;
  DM1.tNEntradaItensVlrTotalItens.AsFloat := CurrencyEdit8.Value;
  DM1.tNEntradaItensDesc.AsFloat          := CurrencyEdit9.Value;
  DM1.tNEntradaItensVlrDesc.AsFloat       := CurrencyEdit10.Value;
  if RxDBLookupCombo13.Text <> '' then
    DM1.tNEntradaItensSitTrib.AsInteger   := RxDBLookupCombo13.KeyValue;
  DM1.tNEntradaItensIcmsIpi.AsBoolean     := DM1.tNEntradaIcmsIpi.AsBoolean;
  Dm1.tNEntradaItensNumOC.AsInteger       := CurrencyEdit11.AsInteger;
  Dm1.tNEntradaItensItemOC.AsInteger      := CurrencyEdit12.AsInteger;
  Dm1.tNEntradaItensSomaEstoque.AsBoolean := CheckBox1.Checked;
  Dm1.tNEntradaItensMatProd.AsString      := DM1.tProdutoProdMat.AsString;
  Calcula_IPI;
  DM1.tNEntradaItensVlrIPI.AsFloat        := vValorIPI;
  vBaseIcms  := 0;
  vValorIcms := 0;
  if CurrencyEdit4.Value > 0 then
    Calcula_ICMS;
  DM1.tNEntradaItensBaseICMS.AsFloat      := vBaseICMS;
  DM1.tNEntradaItensVlrICMS.AsFloat       := vValorICMS;
  DM1.tNEntradaBaseICMS.AsFloat           := DM1.tNEntradaBaseICMS.AsFloat + vBaseICMS;
  DM1.tNEntradaVlrICMS.AsFloat            := DM1.tNEntradaVlrICMS.AsFloat + vValorICMS;
  DM1.tNEntradaVlrIPI.AsFloat             := DM1.tNEntradaVlrIPI.AsFloat + vValorIPI;
  if DM1.tNEntradaItensGeraDupl.AsBoolean then
    DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat + CurrencyEdit8.Value;
  DM1.tNEntradaVlrTotalNEntr.AsFloat      := DM1.tNEntradaVlrTotalNEntr.AsFloat + CurrencyEdit8.Value;
  if DM1.tNatOperacaoDeduzirFat.AsBoolean then
    DM1.tNEntradaVlrDevolucao.AsFloat     := DM1.tNEntradaVlrDevolucao.AsFloat + CurrencyEdit8.Value;
  //Cleomar 16/10/2008
  //if (tAuxNEntradaGrade.RecordCount > 0) and not(DM1.tParametrosImpItemNotaPorTam.AsBoolean) and not(DM1.tProdutoPrecoGrade.AsBoolean) then
  if (tAuxNEntradaGrade.RecordCount > 0) and not(DM1.tProdutoPrecoGrade.AsBoolean) then
    DM1.tNEntradaItensCodGrade.AsInteger := tAuxNEntradaGradeCodGrade.AsInteger
  else
  if (BitBtn16.Tag < 1) and (tAuxNEntradaGrade.RecordCount > 0) then
    begin
      DM1.tNEntradaItensCodGrade.AsInteger := tAuxNEntradaGradeCodGrade.AsInteger;
      DM1.tNEntradaItensPosicao.AsInteger  := tAuxNEntradaGradePosicao.AsInteger;
      DM1.tNEntradaItensTamanho.AsString   := tAuxNEntradaGradeTamanho.AsString;
    end
  else
  if (RxDBLookupCombo8.Text <> '') and (RxDBLookupCombo12.Text <> '') then
    begin
      DM1.tNEntradaItensCodGrade.AsInteger := RxDBLookupCombo8.KeyValue;
      DM1.tNEntradaItensPosicao.AsInteger  := RxDBLookupCombo12.KeyValue;
      DM1.tNEntradaItensTamanho.AsString   := RxDBLookupCombo12.Text;
    end;
  DM1.tNEntradaItensNumPedCliente.AsString := Edit1.Text;
  DM1.tNEntradaItens.Post;

  //Grava a grade
  if (DM1.tProdutoLancaGrade.AsBoolean) and (DM1.tNEntradaItensPosicao.AsInteger < 1) then
    begin
      tAuxNEntradaGrade.First;
      while not tAuxNEntradaGrade.IsEmpty do
        begin
          DM1.tNEntradaItensGrade.Insert;
          DM1.tNEntradaItensGradeCodForn.AsInteger   := DM1.tNEntradaCodForn.AsInteger;
          DM1.tNEntradaItensGradeNumNEntr.AsInteger  := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tNEntradaItensGradeItem.AsInteger      := DM1.tNEntradaItensItem.AsInteger;
          DM1.tNEntradaItensGradeCodGrade.AsInteger  := tAuxNEntradaGradeCodGrade.AsInteger;
          DM1.tNEntradaItensGradePosicao.AsInteger   := tAuxNEntradaGradePosicao.AsInteger;
          DM1.tNEntradaItensGradeQtd.AsInteger       := tAuxNEntradaGradeQtd.AsInteger;
          DM1.tNEntradaItensGradeVlrUnitario.AsFloat := tAuxNEntradaGradeVlrUnitario.AsFloat;
          DM1.tNEntradaItensGradeVlrTotal.AsFloat    := tAuxNEntradaGradeQtd.AsInteger * tAuxNEntradaGradeVlrUnitario.AsFloat;
          DM1.tNEntradaItensGrade.Post;
          tAuxNEntradaGrade.Delete;
        end;
    end;

  //*** Baixa a Ordem de Compra
  Baixa_OC;
end;

procedure TfNotaEntrada.Move_Itens;
begin
  CurrencyEdit14.AsInteger := DM1.tProdutoCodigo.AsInteger;
  RxDBLookupCombo15.Value  := DM1.tProdutoUnidade.AsString;
  if BitBtn16.Tag < 1 then
    begin
      CurrencyEdit4.Clear;
      CurrencyEdit5.Clear;
    end;
  if (RxDBLookupCombo10.Text <> '') and (BitBtn16.Tag < 1) then
    begin
      DM1.tNatOperacao.IndexFieldNames := 'Codigo';
      DM1.tNatOperacao.SetKey;
      DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo10.KeyValue;
      if DM1.tNatOperacao.GotoKey then
        begin
          if DM1.tNatOperacaoIcms.AsBoolean then
            begin
              if vAliqICMS > 0 then
                CurrencyEdit4.Value := vAliqICMS
              else
                CurrencyEdit4.Value := DM1.tProdutoAliqICMS.AsFloat;
            end;
          if DM1.tNatOperacaoIpi.AsBoolean then
            CurrencyEdit5.Value := DM1.tProdutoAliqIPI.AsFloat;
          if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
            RxDBLookupCombo13.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger;
        end;
    end;

  //if vAliqICMS > 0 then
  //  CurrencyEdit4.Value      := vAliqICMS
  //else
  //  CurrencyEdit4.Value      := DM1.tProdutoAliqIcms.AsCurrency;
  if RxDBLookupCombo13.Text = '' then
    if DM1.tProdutoCodSitTrib.AsInteger > 0 then
      RxDBLookupCombo13.KeyValue := DM1.tProdutoCodSitTrib.AsInteger;
  if (CurrencyEdit12.Value < 1) and (BitBtn16.Tag < 1) and (mSelecionado.IsEmpty) then
    Begin
      CurrencyEdit7.Value        := DM1.tProdutoPrecoCusto.AsCurrency;
      CurrencyEdit3.Value        := 1;
      CurrencyEdit8.Value        := DM1.tProdutoPrecoCusto.AsCurrency;
      if DM1.tProdutoPrecoGrade.AsBoolean then
        begin
          CurrencyEdit7.Value    := 0;
          CurrencyEdit8.Value    := 0;
        end;
    end;
  if BitBtn8.Tag = 0 then
    begin
      //CheckBox1.Checked := DM1.tProdutoEstoque.AsBoolean;
      //CheckBox1.Enabled := DM1.tProdutoEstoque.AsBoolean;
      CheckBox1.Checked := True;
      CheckBox1.Enabled := False;
    end;
end;

procedure TfNotaEntrada.Atualiza_Precos;
var
  vVlrAux : Real;
begin
//*** Esta atualizando o preço de compra, antes era o preço de custo
  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensVlrUnit.AsFloat));
    if StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdPacote.AsFloat)) > 0 then
      vVlrAux := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensVlrUnit.AsFloat / (DM1.tNEntradaItensQtdPacote.AsFloat / DM1.tNEntradaItensQtd.AsFloat)));
    if DM1.tNEntradaItensGeraDupl.AsBoolean then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := DM1.tNEntradaItensCodMaterial.AsInteger;
      if DM1.tProduto.GotoKey then
      begin
        if DM1.tProdutoPrecoCor.AsBoolean then
        begin
          if DM1.tProdutoCor.Locate('CodProduto;CodCor',VarArrayOf([DM1.tNEntradaItensCodMaterial.AsInteger,DM1.tNEntradaItensCodCor.AsInteger]),[locaseinsensitive]) then
          begin
            //if DM1.tNEntradaItensVlrUnit.AsFloat > DM1.tProdutoCorPrCusto.AsFloat then
              //begin
                DM1.tProdutoCor.Edit;
                //DM1.tProdutoCorPrCusto.AsFloat := DM1.tNEntradaItensVlrUnit.AsFloat;
                DM1.tProdutoCorPrCusto.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
                //DM1.tProdutoCorPrecoCompra.AsFloat := DM1.tNEntradaItensVlrUnit.AsFloat;
                DM1.tProdutoCor.Post;
              //end;
          end;
        end
        else
        begin
          //if DM1.tNEntradaItensVlrUnit.AsFloat > DM1.tProdutoPrecoCusto.AsFloat then
            //begin
              DM1.tProduto.Edit;
              //DM1.tProdutoPrecoCusto.AsFloat := DM1.tNEntradaItensVlrUnit.AsFloat;
              DM1.tProdutoPrecoCusto.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
              DM1.tProduto.Post;
              if DM1.tParametrosUsaFB.AsBoolean then
                Prc_Gravar_Produto_FB(DM1.tProdutoCodigo.AsInteger);

            //end;
        end;
      end;
    end;
    DM1.tNEntradaItens.Next;
  end;
end;

procedure TfNotaEntrada.Monta_Grade;
begin
  if BitBtn16.Tag < 1 then
    begin
      tAuxNEntradaGrade.First;
      while not tAuxNEntradaGrade.Eof do
        tAuxNEntradaGrade.delete;
      DM1.tOrdemCompraItemGrade.First;
      while not DM1.tOrdemCompraItemGrade.Eof do
        begin
          tAuxNEntradaGrade.Insert;
          tAuxNEntradaGradeCodGrade.AsInteger  := DM1.tOrdemCompraItemGradeCodGrade.AsInteger;
          tAuxNEntradaGradePosicao.AsInteger   := DM1.tOrdemCompraItemGradePosicao.AsInteger;
          tAuxNEntradaGradeQtd.AsString        := DM1.tOrdemCompraItemGradeQtdRestante.AsString;
          tAuxNEntradaGradeVlrUnitario.AsFloat := DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat;
          tAuxNEntradaGradeVlrTotal.AsFloat    := DM1.tOrdemCompraItemGradeVlrUnitario.AsFloat * DM1.tOrdemCompraItemQtdRestante.AsFloat;
          tAuxNEntradaGradeTamanho.AsString    := DM1.tOrdemCompraItemGradelkTamanho.AsString;
          tAuxNEntradaGrade.Post;
          DM1.tOrdemCompraItemGrade.Next;
        end;
    end;
end;

procedure TfNotaEntrada.Limpa_Edit;
begin
  RZDBLookupComboBox1.Enabled := True;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  CurrencyEdit7.Clear;
  CurrencyEdit8.Clear;
  CurrencyEdit9.Clear;
  CurrencyEdit10.Clear;
  CurrencyEdit12.Clear;
  CurrencyEdit14.Clear;
  RxDBLookupCombo15.ClearValue;
  RxDBLookupCombo2.ClearValue;
  RZDBLookupComboBox1.ClearKeyValue;
  RxDBLookupCombo8.ClearValue;
  RxDBLookupCombo11.ClearValue;
  RxDBLookupCombo12.ClearValue;
  RxDBLookupCombo13.ClearValue;
  CheckBox1.Checked := True;
  mSelecionado.EmptyDataSet;
  Edit1.Clear;
  vQtdPacote := 0;
end;

procedure TfNotaEntrada.Calcula_ICMS;
var
  vValorDesc : Real;
begin
  vBaseICMS  := 0;
  vValorICMS := 0;
  //vValorIPI  := 0;
  if RxDBLookupCombo13.Text = '' then
    begin
      if CurrencyEdit5.Text <> '' then
        begin
          if DM1.tNEntradaItensIcmsIpi.AsBoolean then
            begin
              if CurrencyEdit9.Value > 0 then
                begin
                  vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vValorDesc := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit9.Value / 100));
                  vValorIPI  := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100));
                  vBaseICMS  := vBaseICMS - vValorDesc + vValorIPI;
                end
              else
              if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                begin
                  vBaseICMS := (CurrencyEdit3.Value * CurrencyEdit7.Value);
                  vValorIPI := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100));
                  vBaseICMS := vBaseICMS - CurrencyEdit10.Value + vValorIPI;
                end
              else
                begin
                  vValorIPI := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100));
                  vBaseICMS := (CurrencyEdit3.Value * CurrencyEdit7.Value) + vValorIPI;
                end;
            end
          else
          if not DM1.tNEntradaItensIcmsIpi.AsBoolean then
            begin
              if CurrencyEdit9.Value > 0 then
                begin
                  vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vValorDesc := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit9.Value / 100));
                  vBaseICMS  := vBaseICMS - vValorDesc;
                end
              else
              if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                begin
                  vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vBaseICMS := vBaseICMS - CurrencyEdit10.Value;
                end
              else
                vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
            end;
        end
      else
        begin
          if CurrencyEdit9.Value > 0 then
            begin
              vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
              vValorDesc := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit9.Value / 100));
              vBaseICMS  := vBaseICMS - vValorDesc;
            end
          else
          if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
            begin
              vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
              vBaseICMS := vBaseICMS - CurrencyEdit10.Value;
            end
          else
            vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
        end;
      if CurrencyEdit4.Value <= 0 then
        vValorICMS := StrToCurr(FormatFloat('0.00',vBaseICMS * vAliqICMS / 100))
      else
        vValorICMS := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit4.Value / 100));
    end
  else
    begin
      DM1.tSitTributaria.SetKey;
      DM1.tSitTributariaCodigo.AsInteger := RxDBLookupCombo13.KeyValue;
      if DM1.tSitTributaria.GotoKey then
        begin
          if CurrencyEdit5.Text <> '' then
            begin
              if DM1.tNEntradaItensIcmsIpi.AsBoolean then
                begin
                  if CurrencyEdit9.Value > 0 then
                    begin
                      vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vValorDesc := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit9.Value / 100));
                      vValorIPI  := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100));
                      vBaseICMS  := StrToCurr(FormatFloat('0.00',(vBaseICMS - vValorDesc) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                      vBaseICMS  := vBaseICMS + vValorIPI;
                    end
                  else
                  if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                    begin
                      vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vValorIPI := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100));
                      vBaseICMS := StrToCurr(FormatFloat('0.00',(vBaseICMS - CurrencyEdit10.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                      vBaseICMS := vBaseICMS + vValorIPI;
                    end
                  else
                    begin
                      vValorIPI := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * CurrencyEdit5.Value / 100));
                      vBaseICMS := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                      vBaseICMS := vBaseICMS + vValorIPI;
                    end
                end
              else
              if not DM1.tNEntradaItensIcmsIpi.AsBoolean then
                begin
                  if CurrencyEdit9.Value > 0 then
                    begin
                      vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vValorDesc := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit9.Value / 100));
                      vBaseICMS  := StrToCurr(FormatFloat('0.00',(vBaseICMS - vValorDesc) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                    end
                  else
                  if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                    begin
                      vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                      vBaseICMS := StrToCurr(FormatFloat('0.00',(vBaseICMS - CurrencyEdit10.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                    end
                  else
                    vBaseICMS := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                end;
            end
          else
            begin
              if CurrencyEdit9.Value > 0 then
                begin
                  vBaseICMS  := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vValorDesc := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit9.Value / 100));
                  vBaseICMS  := StrToCurr(FormatFloat('0.00',vBaseICMS - vValorDesc * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                end
              else
              if (CurrencyEdit9.Value <= 0) and (CurrencyEdit10.Value > 0) then
                begin
                  vBaseICMS := CurrencyEdit3.Value * CurrencyEdit7.Value;
                  vBaseICMS := vBaseICMS - StrToCurr(FormatFloat('0.00',CurrencyEdit10.Value * DM1.tSitTributariaSitTributaria.AsFloat / 100));
                end
              else
                vBaseICMS := StrToCurr(FormatFloat('0.00',(CurrencyEdit3.Value * CurrencyEdit7.Value) * DM1.tSitTributariaSitTributaria.AsFloat / 100));
            end;
          if CurrencyEdit4.Value <= 0 then
            vValorICMS := StrToCurr(FormatFloat('0.00',vBaseICMS * vAliqICMS / 100))
          else
            vValorICMS := StrToCurr(FormatFloat('0.00',vBaseICMS * CurrencyEdit4.Value / 100));
        end
      else
        ShowMessage('Sit. Tributária não encontrada! ICMS não será calculado!');
    end;
end;

procedure TfNotaEntrada.Calcula_IPI;
var
  vAux : Real;
begin
  vValorIPI := 0;
  if CurrencyEdit5.Value > 0 then
    begin
      vAux := (CurrencyEdit3.Value * CurrencyEdit7.Value);
      vAux := vAux - CurrencyEdit10.Value;
      vValorIPI := StrToCurr(FormatFloat('0.00',vAux * CurrencyEdit5.Value / 100));
    end;
end;

procedure TfNotaEntrada.Verifica_UF;
begin
  DM1.tUF.SetKey;
  DM1.tUFSigla.AsString := DM1.tNEntradalkUF.AsString;
  if DM1.tUF.GotoKey then
    vAliqICMS := DM1.tUFPercentual.AsFloat;
  vSiglaUF := DM1.tNEntradalkUF.AsString;
end;

procedure TfNotaEntrada.Habilita;
begin
  Panel3.Enabled         := not(Panel3.Enabled);
  BitBtn1.Enabled        := not(BitBtn1.Enabled);
  BitBtn3.Enabled        := not(BitBtn3.Enabled);
  BitBtn4.Enabled        := not(BitBtn4.Enabled);
  BitBtn5.Enabled        := not(BitBtn5.Enabled);
  BitBtn6.Enabled        := not(BitBtn6.Enabled);
  BitBtn8.Enabled        := not(BitBtn8.Enabled);
  TabSheet1.Enabled      := not(TabSheet1.Enabled);
  TabSheet2.Enabled      := not(TabSheet2.Enabled);
  Panel7.Enabled         := not(Panel7.Enabled);
  DBNavigator1.Enabled   := not(DBNavigator1.Enabled);
  RxSpeedButton1.Enabled := not RxSpeedButton1.Enabled;
end;

procedure TfNotaEntrada.Grava_Pgto;
var
  vNumAux : Integer;
begin
  DM1.tCPagar.IndexFieldNames := 'Filial;NumCPagar';
  DM1.tCPagar.Refresh;
  DM1.tCPagar.Last;
  vNumAux := DM1.tCPagarNumCPagar.AsInteger;
  if DM1.tNEntradaCondPgto.AsString = 'P' then
    begin
      DM1.tCPagar.Insert;
      DM1.tCPagarFilial.AsInteger       := DM1.tNEntradaFilial.AsInteger;
      DM1.tCPagarNumCPagar.AsInteger    := vNumAux + 1;
      DM1.tCPagarCodForn.AsInteger      := DM1.tNEntradaCodForn.AsInteger;
      DM1.tCPagarNumNotaEnt.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
      DM1.tCPagarNroDuplicata.AsInteger := DM1.tNEntradaNroDuplicata.AsInteger;
      DM1.tCPagarTipoDoc.AsString       := 'NE';
      DM1.tCPagarDtGerado.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
      DM1.tCPagarCodAtelier.AsInteger   := DM1.tNEntradaCodAtelier.AsInteger;
      DM1.tCPagarQuitado.AsBoolean      := False;
      DM1.tCPagarSerie.AsString         := DM1.tNEntradaSerie.AsString;
      DM1.tCPagar.Post;
      DM1.tNEntradaParc.First;
      while not DM1.tNEntradaParc.Eof do
        begin
          DM1.tCPagarParc.Insert;
          DM1.tCPagarParcFilial.AsInteger              := DM1.tCPagarFilial.AsInteger;
          DM1.tCPagarParcNumCPagar.AsInteger           := DM1.tCPagarNumCPagar.AsInteger;
          DM1.tCPagarParcParcCPagar.AsInteger          := DM1.tNEntradaParcParcela.AsInteger;
          DM1.tCPagarParcNroDuplicata.AsInteger        := DM1.tNEntradaParcNroDuplicata.AsInteger;
          DM1.tCPagarParcVlrParcCPagar.AsFloat         := DM1.tNEntradaParcVlrVenc.AsFloat;
          DM1.tCPagarParcRestParcela.AsFloat           := DM1.tNEntradaParcVlrVenc.AsFloat;
          DM1.tCPagarParcDtVencCPagar.AsDateTime       := DM1.tNEntradaParcDtVenc.AsDateTime;
          DM1.tCPagarParcCodForn.AsInteger             := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarParcNumNotaEnt.AsInteger          := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarParcPlanoContas.AsInteger         := DM1.tNEntradaPlanoContas.AsInteger;
          DM1.tCPagarParcCodPlanoContasItens.AsInteger := DM1.tNEntradaCodPlanoContasItens.AsInteger;
          DM1.tCPagarParcCodConta.AsInteger            := DM1.tNEntradaParcCodBco.AsInteger;
          DM1.tCPagarParcCodAtelier.AsInteger          := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarParcDtGerado.AsDateTime           := DM1.tNEntradaDtEntrada.AsDateTime;
          DM1.tCPagarParcSerie.AsString                := DM1.tNEntradaSerie.AsString;
          DM1.tCPagarParc.Post;
          DM1.GravaEnt_tCPagarParcHist;
          DM1.tNEntradaParc.Next;
        end;
    end
  else
  if DM1.tNEntradaCondPgto.AsString = 'V' then
    begin
      if DM1.tNEntradaParc.RecordCount > 0 then
        begin
          DM1.tCPagar.Insert;
          DM1.tCPagarFilial.AsInteger       := DM1.tNEntradaFilial.AsInteger;
          DM1.tCPagarNumCPagar.AsInteger    := vNumAux + 1;
          DM1.tCPagarCodForn.AsInteger      := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarNumNotaEnt.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarNroDuplicata.AsInteger := DM1.tNEntradaNroDuplicata.AsInteger;
          DM1.tCPagarTipoDoc.AsString       := 'NE';
          DM1.tCPagarDtGerado.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
          DM1.tCPagarCodAtelier.AsInteger   := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarQuitado.AsBoolean      := False;
          DM1.tCPagarSerie.AsString         := DM1.tNEntradaSerie.AsString;
          DM1.tCPagar.Post;

          DM1.tNEntradaParc.First;
          while not DM1.tNEntradaParc.Eof do
            begin
              DM1.tCPagarParc.Insert;
              DM1.tCPagarParcFilial.AsInteger              := DM1.tCPagarFilial.AsInteger;
              DM1.tCPagarParcNumCPagar.AsInteger           := DM1.tCPagarNumCPagar.AsInteger;
              DM1.tCPagarParcParcCPagar.AsInteger          := DM1.tNEntradaParcParcela.AsInteger;
              DM1.tCPagarParcNroDuplicata.AsInteger        := DM1.tNEntradaParcNroDuplicata.AsInteger;
              DM1.tCPagarParcVlrParcCPagar.AsFloat         := DM1.tNEntradaParcVlrVenc.AsFloat;
              DM1.tCPagarParcRestParcela.AsFloat           := DM1.tNEntradaParcVlrVenc.AsFloat;
              DM1.tCPagarParcDtVencCPagar.AsDateTime       := DM1.tNEntradaParcDtVenc.AsDateTime;
              DM1.tCPagarParcCodForn.AsInteger             := DM1.tNEntradaCodForn.AsInteger;
              DM1.tCPagarParcNumNotaEnt.AsInteger          := DM1.tNEntradaNumNEntr.AsInteger;
              DM1.tCPagarParcPlanoContas.AsInteger         := DM1.tNEntradaPlanoContas.AsInteger;
              DM1.tCPagarParcCodPlanoContasItens.AsInteger := DM1.tNEntradaCodPlanoContasItens.AsInteger;
              DM1.tCPagarParcCodConta.AsInteger            := DM1.tNEntradaParcCodBco.AsInteger;
              DM1.tCPagarParcCodAtelier.AsInteger          := DM1.tNEntradaCodAtelier.AsInteger;
              DM1.tCPagarParcQuitParcCPagar.AsBoolean      := False;
              DM1.tCPagarParcDtGerado.AsDateTime           := DM1.tNEntradaDtEntrada.AsDateTime;
              DM1.tCPagarParcSerie.AsString                := DM1.tNEntradaSerie.AsString;
              DM1.tCPagarParc.Post;
              DM1.GravaEnt_tCPagarParcHist;

              DM1.tNEntradaParc.Next;
            end;
          DM1.tCPagar.Refresh;
          DM1.tCPagarParc.Refresh;
          DM1.tCPagarParcHist.Refresh;
        end
      else
        begin
          DM1.tCPagar.Insert;
          DM1.tCPagarFilial.AsInteger       := DM1.tNEntradaFilial.AsInteger;
          DM1.tCPagarNumCPagar.AsInteger    := vNumAux + 1;
          DM1.tCPagarCodForn.AsInteger      := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarNumNotaEnt.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarNroDuplicata.AsInteger := DM1.tNEntradaNroDuplicata.AsInteger;
          DM1.tCPagarTipoDoc.AsString       := 'NE';
          DM1.tCPagarDtGerado.AsDateTime    := DM1.tNEntradaDtEntrada.AsDateTime;
          DM1.tCPagarCodAtelier.AsInteger   := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarQuitado.AsBoolean      := False;
          DM1.tCPagarSerie.AsString         := DM1.tNEntradaSerie.AsString;
          DM1.tCPagar.Post;

          DM1.tCPagarParc.Insert;
          DM1.tCPagarParcFilial.AsInteger              := DM1.tCPagarFilial.AsInteger;
          DM1.tCPagarParcNumCPagar.AsInteger           := DM1.tCPagarNumCPagar.AsInteger;
          DM1.tCPagarParcParcCPagar.AsInteger          := 1;
          DM1.tCPagarParcNroDuplicata.AsInteger        := DM1.tNEntradaNroDuplicata.AsInteger;
          DM1.tCPagarParcVlrParcCPagar.AsFloat         := DM1.tNEntradaVlrTotalDuplicata.AsFloat;
          DM1.tCPagarParcRestParcela.AsFloat           := DM1.tNEntradaVlrTotalDuplicata.AsFloat;
          DM1.tCPagarParcDtVencCPagar.AsDateTime       := DM1.tNEntradaDtEmissaoNEntr.AsDateTime;
          DM1.tCPagarParcCodForn.AsInteger             := DM1.tNEntradaCodForn.AsInteger;
          DM1.tCPagarParcNumNotaEnt.AsInteger          := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tCPagarParcPlanoContas.AsInteger         := DM1.tNEntradaPlanoContas.AsInteger;
          DM1.tCPagarParcCodPlanoContasItens.AsInteger := DM1.tNEntradaCodPlanoContasItens.AsInteger;
          DM1.tCPagarParcQuitParcCPagar.AsBoolean      := False;
          DM1.tCPagarParcCodConta.AsInteger            := 1;
          if DM1.tNEntradaCodAtelier.AsInteger > 0 then
            DM1.tCPagarParcCodAtelier.AsInteger := DM1.tNEntradaCodAtelier.AsInteger;
          DM1.tCPagarParcDtGerado.AsDateTime           := DM1.tNEntradaDtEntrada.AsDateTime;
          DM1.tCPagarParcSerie.AsString                := DM1.tNEntradaSerie.AsString;
          DM1.tCPagarParc.Post;
          DM1.GravaEnt_tCPagarParcHist;
          DM1.tCPagar.Refresh;
          DM1.tCPagarParc.Refresh;
          DM1.tCPagarParcHist.Refresh;
        end;
    end;
end;

procedure TfNotaEntrada.Verifica_Parcelas;
var
  vValorTotalStr : String;
begin
  if (DM1.tNEntradaParcDtVenc.AsString = '') or (DM1.tNEntradaParcVlrVenc.AsString = '') then
   begin
      DM1.tNEntradaParc.Cancel;
      vValorTotalStr := FormatFloat('0.00',DM1.tNEntradaParcParcela.AsFloat);
      Compara_Valor_Parcelas;
      if vValorParcelaTot <> vValorTotalStr then
        ShowMessage('Valor das Parcelas não confere com Total da Nota!');
      Abort;
   end
  else
    begin
      if DM1.tNEntradaParc.State = dsInsert then
        begin
          tNEntradaParcIns.Refresh;
          tNEntradaParcIns.Last;
          DM1.tNEntradaParcParcela.AsInteger := tNEntradaParcInsParcela.AsInteger + 1;
       end;
    end;
end;

procedure TfNotaEntrada.Compara_Valor_Parcelas;
begin
  vValorParcelas := 0;
  if DM1.tNEntradaParc.State in [dsEdit,dsInsert] then
    DM1.tNEntradaParc.Post;
  DM1.tNEntradaParc.First;
  while not DM1.tNEntradaParc.Eof do
    begin
      vValorParcelas := vValorParcelas + DM1.tNEntradaParcVlrVenc.AsFloat;
      DM1.tNEntradaParc.Next;
    end;
  vValorParcelaTot := FormatFloat('0.00',vValorParcelas);
end;

procedure TfNotaEntrada.Cancela_Pgto;
begin
  //apaga o contas a pagar e as parcelas dele
  DM1.tCPagar.Filtered := False;
  DM1.tCPagar.Filter   := 'NumNotaEnt = '''+DM1.tNEntradaNumNEntr.AsString+''' and codForn = '''+DM1.tNEntradaCodForn.AsString+'''';
  DM1.tCPagar.Filtered := True;
  DM1.tCPagar.First;
  while not DM1.tCPagar.Eof do
    begin
      if DM1.tCPagarTipoDoc.AsString = 'NE' then
        begin
          DM1.tCPagarParc.First;
          while not DM1.tCPagarParc.Eof do
            begin
              DM1.tCPagarParcHist.First;
              while not DM1.tCPagarParcHist.Eof do
                DM1.tCPagarParcHist.Delete;
              DM1.tCPagarParc.Delete;
            end;
          DM1.tCPagar.Delete;
        end
      else
        DM1.tCPagar.Next;
    end;
  DM1.tCPagar.Filtered := False;
end;

procedure TfNotaEntrada.Soma_Estoque;
var
  vAux, vTotalAux : Real;
begin
  vVlrFrete := StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrFrete.AsFloat));
  vTotalAux := StrToFloat(FormatFloat('0.00',DM1.tNEntradaVlrTotalNEntr.AsFloat - DM1.tNEntradaVlrFrete.AsFloat));
  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
    begin
      //Calcula o frete
      if StrToFloat(FormatFloat('0.00',vVlrFrete)) > 0 then
        begin
          if DM1.tNEntradaItens.RecordCount = DM1.tNEntradaItens.RecNo then
            vAux := vVlrFrete
          else
            begin
              vAux := (DM1.tNEntradaItensVlrTotalItens.AsFloat / vTotalAux) * 100;
              vAux := StrToFloat(FormatFloat('0.00',(DM1.tNEntradaVlrFrete.AsFloat * vAux / 100)));
            end;
          vVlrFrete := StrToFloat(FormatFloat('0.00',vVlrFrete)) - StrToFloat(FormatFloat('0.00',vAux));
          DM1.tNEntradaItens.Edit;
          DM1.tNEntradaItensVlrFrete.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
          DM1.tNEntradaItens.Post;
        end;
      //*** Grava movimento do estoque
        vVlrFreteInd := 0;
        if StrToFloat(FormatFloat('0.00',DM1.tNEntradaItensVlrFrete.AsFloat)) > 0 then
          vVlrFreteInd := StrToFloat(FormatFloat('0.00',DM1.tNEntradaItensVlrFrete.AsFloat / DM1.tNEntradaItensQtd.AsFloat));
        if DM1.tNEntradaItensGrade.RecordCount > 0 then
          begin
            DM1.tNEntradaItensGrade.First;
            while not DM1.tNEntradaItensGrade.Eof do
              begin
                if DM1.tNEntradaItensGradeQtd.AsFloat > 0 then
                  begin
                    vNumMovEst := DM1.tNEntradaItensGradeNumMovEst.AsInteger;
                    Grava_Estoque(DM1.tNEntradaItensGradelkTamanho.AsString,DM1.tNEntradaItensGradeQtd.AsFloat,0);
                    DM1.tNEntradaItensGrade.Edit;
                    DM1.tNEntradaItensGradeNumMovEst.AsInteger := vNumMovEst;
                    DM1.tNEntradaItensGrade.Post;
                  end;
                DM1.tNEntradaItensGrade.Next;
              end;
          end
        else
          begin
            vNumMovEst := DM1.tNEntradaItensNumMovEst.AsInteger;
            Grava_Estoque(DM1.tNEntradaItensTamanho.AsString,DM1.tNEntradaItensQtd.AsFloat,DM1.tNEntradaItensQtdPacote.AsFloat);
            DM1.tNEntradaItens.Edit;
            DM1.tNEntradaItensNumMovEst.AsInteger := vNumMovEst;
            DM1.tNEntradaItens.Post;
          end;
      DM1.tNEntradaItens.Next;
    end;
end;

procedure TfNotaEntrada.Diminui_Estoque;
var
  vFilialAux, vNumMovAux : Integer;
begin
  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
    begin
      //*** Exclui o movimento do estoque
      //if Dm1.tNEntradaItensSomaEstoque.AsBoolean then
        //begin
          if DM1.tNEntradaItensGrade.RecordCount > 0 then
            begin
              DM1.tNEntradaItensGrade.First;
              while not DM1.tNEntradaItensGrade.Eof do
                begin
                  DM1.tEstoqueMatMov.SetKey;
                  DM1.tEstoqueMatMovFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
                  DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNEntradaItensGradeNumMovEst.AsInteger;
                  if DM1.tEstoqueMatMov.GotoKey then
                  begin
                    vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
                    vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

                    DM1.tEstoqueMatMov.Delete;

                    //02/05/2012
                    if DM1.tParametrosUsaFB.AsBoolean then
                      Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

                  end;
                  DM1.tNEntradaItensGrade.Next;
                end
            end
          else
            begin
              DM1.tEstoqueMatMov.SetKey;
              DM1.tEstoqueMatMovFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
              DM1.tEstoqueMatMovNumMov.AsInteger := DM1.tNEntradaItensNumMovEst.AsInteger;
              if DM1.tEstoqueMatMov.GotoKey then
              begin
                vFilialAux := DM1.tEstoqueMatMovFilial.AsInteger;
                vNumMovAux := DM1.tEstoqueMatMovNumMov.AsInteger;

                DM1.tEstoqueMatMov.Delete;

                //02/05/2012
                if DM1.tParametrosUsaFB.AsBoolean then
                  Prc_Excluir_Estoque_Mov_FB(vFilialAux,vNumMovAux);

              end;
            end;
        //end;
      DM1.tNEntradaItens.Next;
    end;
end;

procedure TfNotaEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vNumNotaEntPos := 0;
  vCodFornPos    := 0;
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  if Screen.FormCount < 3 then
    begin
      Dm1.tOrdemCompraItemGrade.Close;
      Dm1.tCondPgtoItem.Close;
      Dm1.tCPagar.Close;
      Dm1.tCPagarParc.Close;
      Dm1.tCPagarParcHist.Close;
      Dm1.tMaoDeObra.Close;
      Dm1.tOrdemCompra.Close;
      Dm1.tOrdemCompraItem.Close;
      DM1.tNEntrada.Close;
      DM1.tNEntradaItens.Close;
      DM1.tNEntradaItensGrade.Close;
      DM1.tNEntradaItensMobra.Close;
      DM1.tNEntradaParc.Close;
      DM1.tNEntradaNDevolvida.Close;

      DM1.tFornecedores.Close;
      DM1.tProduto.Close;
      Dm1.tProdutoCor.Close;
      DM1.tProdutoCli.Close;
      DM1.tProdutoConsumo.Close;
      DM1.tProdutoConsumoItem.Close;
      DM1.tProdutoGrade.Close;
      DM1.tProdutoMat.Close;
      DM1.tProdutoTam.Close;
      DM1.tProdutoComb.Close;

      DM1.tEstoqueMatMov.Close;
      DM1.tCondPgto.Close;
      DM1.tCondPgto2.Close;

      DM1.tNatOperacao.Close;
      DM1.tPlanoContas.Close;
      DM1.tPlanoContasItens.Close;
      DM1.tTabPreco.Close;

      DM1.tNotaFiscal.Close;
      DM1.tNotaFiscalItens.Close;

      DM1.tUnidade.Close;

    end;
  Action := Cafree;
end;

procedure TfNotaEntrada.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
  begin
    fFornecedores := TfFornecedores.Create(Self);
    fFornecedores.ShowModal;
    DM1.tFornecedores.IndexFieldNames := 'NomeForn';
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfNotaEntrada.SpeedButton4Click(Sender: TObject);
begin
  if DM1.tUsuarioMaterial.AsBoolean then
    begin
      RxDBFilter1.Active := False;
      RxDBFilter2.Active := False;
      fMaterial := TfMaterial.Create(Self);
      fMaterial.ShowModal;
      if RxDBLookupCombo11.Text <> ''  then
        DM1.tProduto.Locate('Codigo',RxDBLookupCombo11.KeyValue,[loCaseInsensitive]);
      RxDBFilter1.Active := True;
      RxDBFilter2.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de materiais!');
end;

procedure TfNotaEntrada.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaEntrada.BitBtn1Click(Sender: TObject);
begin
  if DM1.tEmpresaNivel.AsInteger < 100 then
  begin
    ShowMessage('Não liberado!');
    exit;
  end;
  BitBtn8.Tag := 0;
  if DM1.tUsuarioInsNotaEnt.AsBoolean then
    begin
      vQtdPacote := 0;
      Habilita;
      fEscFilial := TfEscFilial.Create(Self);
      fEscFilial.ShowModal;
      fNotaEntrada.Caption := 'Nota de Compra ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
      DM1.tNEntrada.IndexFieldNames          := 'Filial;NumNEntr;CodForn';
      DM1.tNEntrada.Insert;
      DM1.tNEntradaFilial.AsInteger          := DM1.tFilialCodigo.AsInteger;
      DM1.tNEntradaTotalParcelas.AsInteger   := 3;
      DBEdit1.SetFocus;
      DM1.tNEntradaDtEmissaoNEntr.AsDateTime := Date;
      DM1.tNEntradaDtEntrada.AsDateTime      := Date;
      DM1.tNEntradaIcmsIpi.AsBoolean         := DM1.tParametrosIcmsIpi.AsBoolean;
      DBRadioGroup4.Enabled                  := True;
      DM1.tNEntradaSerie.AsString            := 'UN';
      PageControl1.ActivePage                := TabSheet4;
      Dm1.tNEntradaDevolucao.AsBoolean       := False;
      DM1.tNEntradaPlanoContas.Clear;
      RxDBComboBox1.ItemIndex := 0;
      DM1.tNEntradaVlrIcms.AsFloat           := 0;
      DM1.tNEntradaVlrIpi.AsFloat            := 0;
      DM1.tNEntradaVlrTotalNEntr.AsFloat     := 0;
      DM1.tNEntradaBaseIcms.AsFloat          := 0;
      DM1.tNEntradaVlrTotalDuplicata.AsFloat := 0;
      DM1.tNEntradaCondPgto.AsString         := 'V';
      vItem := 0;
      BitBtn8.Tag := 0;
      tAuxNEntradaGrade.First;
      while not tAuxNEntradaGrade.Eof do
        tAuxNEntradaGrade.Delete;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfNotaEntrada.BitBtn5Click(Sender: TObject);
begin
  vItem := 0;
  CurrencyEdit11.Clear;
  CurrencyEdit12.Clear;
  Limpa_Edit;
  if BitBtn8.Tag = 0 then
    begin
      DM1.tNEntradaItens.First;
      while not DM1.tNEntradaItens.IsEmpty do
        begin
          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              Dm1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
              DM1.tOrdemCompra.SetKey;
              DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
              DM1.tOrdemCompraCodigo.AsInteger := DM1.tNEntradaItensNumOC.AsInteger;
              if DM1.tOrdemCompra.GotoKey then
                begin
                  DM1.tOrdemCompra.Edit;
                  DM1.tOrdemCompraEntregue.AsBoolean := False;
                  DM1.tOrdemCompra.Post;

                  Dm1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
                  Dm1.tOrdemCompraItem.SetKey;
                  DM1.tOrdemCompraItemFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
                  Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                  if DM1.tOrdemCompraItem.GotoKey then
                    begin
                      Dm1.tOrdemCompraItem.Edit;
                      Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      if DM1.tOrdemCompraItemQtdRestante.AsFloat > DM1.tOrdemCompraItemQtd.AsFloat then
                        DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                      Dm1.tOrdemCompraItem.Post;
                    end;
                end;
            end;
          while not Dm1.tNEntradaItensGrade.IsEmpty do
            begin
              Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Filial;Codigo;Item;CodGrade;Posicao';
              Dm1.tOrdemCompraItemGrade.SetKey;
              DM1.tOrdemCompraItemGradeFilial.AsInteger   := DM1.tNEntradaItensFilial.AsInteger;
              Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
              Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
              Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
              Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
              if Dm1.tOrdemCompraItemGrade.GotoKey then
                begin
                  Dm1.tOrdemCompraItemGrade.Edit;
                  Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat)) -
                                                                  StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                  Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat)) +
                                                                  StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                  if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                    DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemGradeQtd.AsFloat));
                  Dm1.tOrdemCompraItemGrade.Post;
                end;
              Dm1.tNEntradaItensGrade.Delete;
            end;
          Volta_NotaFiscal;
          DM1.tNEntradaItens.Delete;
        end;
      DM1.tNEntradaParc.First;
      if not DM1.tNEntradaParc.IsEmpty then
        while not DM1.tNEntradaParc.Eof do
          DM1.tNEntradaParc.Delete;
      DM1.tNEntradaItensMobra.First;
      if not DM1.tNEntradaItensMobra.IsEmpty then
        while not DM1.tNEntradaItensMobra.EOF do
          DM1.tNEntradaItensMobra.Delete;
      DM1.tNEntrada.Cancel;
    end
  else
  if BitBtn8.Tag = 1 then
    begin
      DM1.tNEntrada.Cancel;
      Ajusta_Estoque;
      Soma_Estoque;
      Grava_Pgto;
    end;
  tAuxNEntradaGrade.First;
  while not tAuxNEntradaGrade.Eof do
    tAuxNEntradaGrade.Delete;
  Habilita;
  DBRadioGroup4.Enabled := True;
  BitBtn8.Tag := 0;
end;

procedure TfNotaEntrada.BitBtn6Click(Sender: TObject);
var
  vValorTotalStr : string;
  vValorTotal    : Currency;
begin
  if DM1.tNEntradaParc.State in [dsEdit,dsInsert] then
    begin
      if DM1.tNEntradaParcVlrVenc.AsFloat > 0 then
        DM1.tNEntradaParc.Post
      else
        DM1.tNEntradaParc.Cancel;
    end;
  if (Trim(DM1.tNEntradaNFeChaveAcesso.AsString) <> '') and (Length(Trim(DM1.tNEntradaNFeChaveAcesso.AsString)) < 44) then
  begin
    ShowMessage('Chave de acesso incompleta, não foi informado os 44 digitos!');
    exit;
  end;

  if (DM1.tNEntradaCodForn.AsString = '') or (RxDBLookupCombo1.Text = '') then
    begin
      ShowMessage('Você deve preencher o fornecedor!');
      exit;
    end;
  if DM1.tNEntradaNumNEntr.AsString = '' then
    begin
      ShowMessage('Você deve preencher o número da nota!');
      exit;
    end;
  if RxDBLookupCombo6.Text = '' then
    begin
      ShowMessage('Deve haver uma natureza de operação!');
      exit;
    end;
  if (DBRadioGroup2.Value = 'N') and (DM1.tNEntradaParc.RecordCount > 0) then
    begin
      ShowMessage('A cond.de pagamento escolhida não pode ter parcelas!');
      exit;
    end;
  if (DBRadioGroup2.Value = 'P') and (DM1.tNEntradaParc.RecordCount < 1 ) then
    begin
      ShowMessage('Falta informar as parcelas!');
      exit;
    end;
  if ((DBRadioGroup2.Value = 'V') or (DM1.tNEntradaCondPgto.AsString = 'V')) and
     (DM1.tNEntradaVlrTotalDuplicata.AsFloat <= 0) then
    begin
      ShowMessage('Não existe valor da duplicata para gerar parcela à vista!');
      exit;
    end;

  if DM1.tNEntradaParc.RecordCount > 0 then
    begin
      vVlrDuplicata := DM1.tNEntradaVlrTotalDuplicata.AsFloat;
      Compara_Valor_Parcelas;
      if vValorParcelaTot <> FormatFloat('0.00',DM1.tNEntradaVlrTotalDuplicata.AsFloat) then
        begin
          ShowMessage('Valor das parcelas não confere com total da nota!');
          exit;
        end;
    end;
  DM1.tNEntradaParc.First;

  if DM1.tNEntradaParc.RecordCount > 0 then
    DM1.tNEntradaNroDuplicata.AsInteger := DM1.tNEntradaParcNroDuplicata.AsInteger
  else
    DM1.tNEntradaNroDuplicata.AsInteger := DM1.tNEntradaNumNEntr.AsInteger;

  if DM1.tNEntradaVlrDesc.AsFloat > 0 then
    begin
      if DM1.tNEntradaVlrTotalDuplicata.AsFloat > 0 then
        vValorTotal := DM1.tNEntradaVlrTotalDuplicata.AsCurrency
      else
        vValorTotal := DM1.tNEntradaVlrTotalNEntr.AsFloat;
      DM1.tNEntradaPercDesc.AsFloat := StrToFloat(FormatFloat('0.000000',(DM1.tNEntradaVlrDesc.AsCurrency / vValorTotal) * 100));
    end;

  DM1.tNEntrada.Post;
  if DM1.tNEntradaItens.State in [dsEdit,dsInsert] then
    DM1.tNEntradaItens.Post;

  CalculaRateio;
    
  Ajusta_Estoque;
  Soma_Estoque;
  Grava_Pgto;
  if (BitBtn8.Tag = 0) and (DM1.tParametrosPrecoAutomatico.AsBoolean) then
    Atualiza_Precos;
  BitBtn8.Tag := 0;
  Habilita;
  DM1.tNEntrada.Refresh;
  DM1.tNEntradaItens.Refresh;
  DM1.tNEntradaParc.Refresh;
  CurrencyEdit11.Clear;
  tAuxNEntradaGrade.First;
  while not tAuxNEntradaGrade.Eof do
    tAuxNEntradaGrade.Delete;
  if not DM1.tCPagar.Locate('CodForn;NumNotaEnt',VarArrayOf([DM1.tNEntradaCodForn.AsInteger,DM1.tNEntradaNumNEntr.AsInteger]),[locaseinsensitive]) then
    ShowMessage('A nota não gerou contas a pagar!');
end;

procedure TfNotaEntrada.BitBtn7Click(Sender: TObject);
begin
  if (CurrencyEdit11.AsInteger < 1) and (CurrencyEdit12.AsInteger < 1) then
    begin
      CurrencyEdit11.Clear;
      CurrencyEdit12.Clear;
    end;
  if RxDBLookupCombo10.Text = '' then
    begin
      ShowMessage('Falta informar a natureza de operação no item!');
      RxDBLookupCombo10.SetFocus;
    end
  else
  if (CurrencyEdit3.Value <= 0) or (DBEdit1.Text = '') or
     (RZDBLookupComboBox1.Text = '' ) or (RxDBLookupCombo1.Text = '') or (CurrencyEdit8.Value <= 0) then
    begin
      ShowMessage(' Há campos requeridos em branco, você deve acertar p/gravar' + #13 +
                  '"Quant.", "Valor Unitário", "Material", "Fornecedor" ou "Nº nota"');
      BitBtn6.SetFocus;
    end
  else
    begin
      if not DM1.tProduto.Locate('Codigo',RZDBLookupComboBox1.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Produto não cadastrado!')
      else
      if (DM1.tProdutoCor.RecordCount > 0) and (RxDBLookupCombo2.Text = '')then
        begin
          ShowMessage('Não pode ser confirmado este item s/ "Cor"!');
          RxDBLookupCombo2.SetFocus;
        end
      else
      if (BitBtn16.Tag = 1) and (CurrencyEdit7.Value <= 0) then
        ShowMessage('Falta informar o valor!')
      else
      if (BitBtn16.Tag = 1) and not(DM1.tProdutoPrecoGrade.AsBoolean) and (CurrencyEdit7.Value <= 0) then
        ShowMessage('Falta informar o valor!')
      else
        begin
          if (vQtdPacote <= 0) and (DM1.tProdutoUnidade.AsString <> RxDBLookupCombo15.Text) then
          begin
            vQtdPacote := 0;
            fNotaEntradaQtd := TfNotaEntradaQtd.Create(Self);
            fNotaEntradaQtd.ShowModal;
          end;

          if BitBtn16.Tag = 1 then
            Grava_Itens(CurrencyEdit3.Value,CurrencyEdit7.Value)
          else
          if tAuxNEntradaGrade.RecordCount < 1 then
            Grava_Itens(CurrencyEdit3.Value,CurrencyEdit7.Value)
          else
            begin
              if not(DM1.tParametrosImpItemNotaPorTam.AsBoolean) and not(DM1.tProdutoPrecoGrade.AsBoolean) then
                Grava_Itens(CurrencyEdit3.Value,CurrencyEdit7.Value)
              else
                begin
                  tAuxNEntradaGrade.First;
                  while not tAuxNEntradaGrade.Eof do
                    begin
                      if tAuxNEntradaGradeQtd.AsFloat > 0 then
                        begin
                          if DM1.tProdutoPrecoGrade.AsBoolean then
                            Grava_Itens(tAuxNEntradaGradeQtd.AsFloat,tAuxNEntradaGradeVlrUnitario.AsFloat)
                          else
                            Grava_Itens(tAuxNEntradaGradeQtd.AsFloat,CurrencyEdit7.Value);
                        end;
                      tAuxNEntradaGrade.Delete;
                    end;
                end;
            end;

          DM1.tNotaFiscal.IndexFieldNames      := 'Filial;NumSeq';
          DM1.tNotaFiscalItens.IndexFieldNames := 'Filial;NumSeq;Item';
          if not mSelecionado.IsEmpty then
            begin
              mSelecionado.First;
              while not mSelecionado.Eof do
                begin
                  DM1.tNEntradaNDevolvida.Insert;
                  DM1.tNEntradaNDevolvidaFilial.AsInteger          := DM1.tFilialCodigo.AsInteger;
                  DM1.tNEntradaNDevolvidaCodForn.AsInteger         := DM1.tNEntradaCodForn.AsInteger;
                  DM1.tNEntradaNDevolvidaNumNEntr.AsInteger        := DM1.tNEntradaNumNEntr.AsInteger;
                  DM1.tNEntradaNDevolvidaItem.AsInteger            := DM1.tNEntradaItensItem.AsInteger;
                  DM1.tNEntradaNDevolvidaNumNotaSaida.AsInteger    := mSelecionadoNumNota.AsInteger;
                  DM1.tNEntradaNDevolvidaItemNotaSaida.AsInteger   := mSelecionadoItem.AsInteger;
                  DM1.tNEntradaNDevolvidaQtd.AsFloat               := mSelecionadoQtd.AsFloat;
                  DM1.tNEntradaNDevolvidaDtEmissao.AsDateTime      := DM1.tNEntradaDtEmissaoNEntr.AsDateTime;
                  DM1.tNEntradaNDevolvidaDtEntrada.AsDateTime      := DM1.tNEntradaDtEntrada.AsDateTime;
                  DM1.tNEntradaNDevolvidaNumSeqNotaSaida.AsInteger := mSelecionadoNumSeq.AsInteger;
                  DM1.tNEntradaNDevolvida.Post;

                  DM1.tNotaFiscal.SetKey;
                  DM1.tNotaFiscalFilial.AsInteger  := DM1.tFilialCodigo.AsInteger;
                  //DM1.tNotaFiscalNumNota.AsInteger := mSelecionadoNumNota.AsInteger;
                  DM1.tNotaFiscalNumSeq.AsInteger := mSelecionadoNumSeq.AsInteger;
                  if DM1.tNotaFiscal.GotoKey then
                    begin
                      DM1.tNotaFiscalItens.SetKey;
                      DM1.tNotaFiscalItensFilial.AsInteger := DM1.tFilialCodigo.AsInteger;
                      DM1.tNotaFiscalItensNumSeq.AsInteger := mSelecionadoNumSeq.AsInteger;
                      DM1.tNotaFiscalItensItem.AsInteger   := mSelecionadoItem.AsInteger;
                      if DM1.tNotaFiscalItens.GotoKey then
                        begin
                          DM1.tNotaFiscalItens.Edit;
                          DM1.tNotaFiscalItensQtdRestante.AsFloat  := DM1.tNotaFiscalItensQtdRestante.AsFloat - mSelecionadoQtd.AsFloat;
                          DM1.tNotaFiscalItensQtdDevolvida.AsFloat := DM1.tNotaFiscalItensQtdDevolvida.AsFloat + mSelecionadoQtd.AsFloat;
                          DM1.tNotaFiscalItens.Post;
                        end;
                    end;
                  mSelecionado.Delete;
                end;
            end;
          //**************************

          Limpa_Edit;
          CurrencyEdit11.Enabled := True;
          CurrencyEdit12.Enabled := True;
          CurrencyEdit14.Enabled    := True;
          if CurrencyEdit11.AsInteger > 0 then
            CurrencyEdit12.SetFocus
          else
            begin
              RxDBLookupCombo11.Enabled := True;
              RZDBLookupComboBox1.Enabled  := True;
              RxDBLookupCombo2.Enabled  := True;
              RxDBLookupCombo8.Enabled  := True;
              RxDBLookupCombo12.Enabled := True;
              CurrencyEdit14.SetFocus;
            end;
          BitBtn16.Tag := 0;
          vItem := 0;
        end;
    end;
  if not DM1.tNEntradaItens.IsEmpty then
    DBRadioGroup4.Enabled := False;
end;

procedure TfNotaEntrada.SpeedButton3Click(Sender: TObject);
begin
  CurrencyEdit14.Enabled    := True;
  RxDBLookupCombo11.Enabled := True;
  RZDBLookupComboBox1.Enabled  := True;
  RxDBLookupCombo2.Enabled  := True;
  RxDBLookupCombo8.Enabled  := True;
  RxDBLookupCombo12.Enabled := True;
  Limpa_Edit;
  RxDBLookupCombo11.SetFocus;
  vItem := 0;
  BitBtn16.Tag := 0;
  mSelecionado.EmptyDataSet;
  vQtdPacote   := 0;
end;

procedure TfNotaEntrada.SpeedButton9Click(Sender: TObject);
begin
  if not DM1.tNEntradaItens.IsEmpty then
    begin
      if DM1.tNEntradaItensQtdDevolvida.AsFloat > 0 then
        ShowMessage('Este item já possui quantidade devolvida para o cliente!')
      else
        begin
          if MessageDlg('Deseja realmente excluir este material da nota?',mtConfirmation,
             [mbOK,mbNo],0) = mrOK then
            begin
              DM1.tNEntradaBaseICMS.AsFloat      := DM1.tNEntradaBaseICMS.AsFloat -
                                                    DM1.tNEntradaItensBaseICMS.AsFloat;
              DM1.tNEntradaVlrICMS.AsFloat       := DM1.tNEntradaVlrICMS.AsFloat -
                                                    DM1.tNEntradaItensVlrICMS.AsFloat;
              DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat -
                                                    DM1.tNEntradaItensVlrTotalItens.AsFloat;
              if DM1.tNEntradaItensGeraDupl.AsBoolean then
                DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat - DM1.tNEntradaItensVlrTotalItens.AsFloat;
              if DM1.tNEntradaItenslkDeduzirFat.AsBoolean then
                DM1.tNEntradaVlrDevolucao.AsFloat := DM1.tNEntradaVlrDevolucao.AsFloat -
                                                      DM1.tNEntradaItensVlrTotalItens.AsFloat;

              DM1.tNEntradaVlrIPI.AsFloat        := DM1.tNEntradaVlrIPI.AsFloat -
                                                    DM1.tNEntradaItensVlrIPI.AsFloat;

              if DM1.tNEntradaItensNumOC.AsInteger > 0 then
                begin
                  Dm1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
                  DM1.tOrdemCompra.SetKey;
                  DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
                  DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  if DM1.tOrdemCompra.GotoKey then
                    begin
                      DM1.tOrdemCompra.Edit;
                      DM1.tOrdemCompraEntregue.AsBoolean := False;
                      DM1.tOrdemCompra.Post;

                      Dm1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
                      Dm1.tOrdemCompraItem.SetKey;
                      DM1.tOrdemCompraItemFilial.AsInteger := Dm1.tNEntradaItensFilial.AsInteger;
                      Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                      Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                      if DM1.tOrdemCompraItem.GotoKey then
                        begin
                          Dm1.tOrdemCompraItem.Edit;
                          Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                     StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                          Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                     StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                          if DM1.tOrdemCompraItemQtdRestante.AsFloat > DM1.tOrdemCompraItemQtd.AsFloat then
                            DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                          Dm1.tOrdemCompraItem.Post;
                        end;
                    end;
                end;
              while not Dm1.tNEntradaItensGrade.IsEmpty do
                begin
                  Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Filial;Codigo;Item;CodGrade;Posicao';
                  Dm1.tOrdemCompraItemGrade.SetKey;
                  DM1.tOrdemCompraItemGradeFilial.AsInteger   := DM1.tNEntradaItensFilial.AsInteger;
                  Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
                  Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
                  Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
                  if Dm1.tOrdemCompraItemGrade.GotoKey then
                    begin
                      Dm1.tOrdemCompraItemGrade.Edit;
                      Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat)) -
                                                                      StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                      Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat)) +
                                                                      StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
                      if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                        DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemGradeQtd.AsFloat));
                      Dm1.tOrdemCompraItemGrade.Post;
                    end;
                  Dm1.tNEntradaItensGrade.Delete;
                end;

              //Deleta a tabela dbNEntradaNDevolvida
              Volta_NotaFiscal;
              //**************************
              DM1.tNEntradaItens.Delete;
            end;
        end;
    end
  else
    ShowMessage('Não há o que apagar da nota!');
  if DM1.tNEntradaItens.IsEmpty then
    DBRadioGroup4.Enabled := True;
end;

procedure TfNotaEntrada.SpeedButton11Click(Sender: TObject);
begin
  RxCalculator1.Execute;
end;

procedure TfNotaEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tNEntrada.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve cancelar ou confirmar nota de entrada antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfNotaEntrada.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  if DM1.tUsuarioExcNotaEnt.AsBoolean then
    begin
      vExcluir := True;
      DM1.tNEntradaParc.First;
      while not DM1.tNEntradaParc.Eof do
        begin
          if tCPagarParc.Locate('Filial;ParcCPagar;CodForn;NumNotaEnt',VarArrayOf([Dm1.tNEntradaParcFilial.AsInteger,DM1.tNEntradaParcParcela.AsInteger,
                                                                                   DM1.tNEntradaParcCodForn.AsInteger,DM1.tNEntradaParcNumNEntr.AsInteger]),[locaseinsensitive]) then
            begin
              if (tCPagarParcNumNotaEnt.AsInteger <> DM1.tNEntradaParcNumNEntr.AsInteger) or (tCPagarParcParcCPagar.AsInteger <> DM1.tNEntradaParcParcela.AsInteger) or
                 (tCPagarParcDtVencCPagar.AsDateTime <> DM1.tNEntradaParcDtVenc.AsDateTime) or (tCPagarParcVlrParcCPagar.AsFloat <> DM1.tNEntradaParcVlrVenc.AsFloat) or
                 (tCPagarParcCodConta.AsInteger <> DM1.tNEntradaParcCodBco.AsInteger) or (tCPagarParcPgtoParcial.AsFloat > 0) then
                vExcluir := False;
            end;
          DM1.tNEntradaParc.Next;
        end;
      if vExcluir = False then
        ShowMessage('Esta nota já foi alterada no contas a pagar!')
      else
        begin
          //*** Verifica se algum item da nota já foi baixado pelo código de barra
          if vExcluir then
            begin
              DM1.tNEntradaItens.First;
              while not DM1.tNEntradaItens.Eof do
                begin
                  if (DM1.tNEntradaItensNumMovEstBaixa.AsInteger > 0) or (DM1.tNEntradaItensQtdDevolvida.AsFloat > 0) then
                    vExcluir := False;
                  DM1.tNEntradaItens.Next;
                end;
              if vExcluir = False then
                ShowMessage('Esta nota já possui material devolvido para o cliente ou já foi dado baixa no estoque!');
            end;
        end;
      if (vExcluir) and (MessageDlg('Deseja realmente excluir esta Nota?',mtConfirmation,[mbOK,mbNO],0) = mrOK) then
        begin
          // apaga os itens da nota de entrada
          Diminui_Estoque;
          Ajusta_Estoque;
          DM1.tNEntradaItens.First;
          while not DM1.tNEntradaItens.IsEmpty do
            begin
              if DM1.tNEntradaItensNumOC.AsInteger > 0 then
                begin
                  Dm1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
                  DM1.tOrdemCompra.SetKey;
                  DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
                  DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  if DM1.tOrdemCompra.GotoKey then
                    begin
                      DM1.tOrdemCompra.Edit;
                      DM1.tOrdemCompraEntregue.AsBoolean := False;
                      DM1.tOrdemCompra.Post;

                      Dm1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
                      Dm1.tOrdemCompraItem.SetKey;
                      DM1.tOrdemCompraItemFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
                      Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                      Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                      if DM1.tOrdemCompraItem.GotoKey then
                        begin
                          Dm1.tOrdemCompraItem.Edit;
                          Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                     StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                          Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                     StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                          if DM1.tOrdemCompraItemQtdRestante.AsFloat > DM1.tOrdemCompraItemQtd.AsFloat then
                            DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                          Dm1.tOrdemCompraItem.Post;
                        end;
                    end;
                end;
              DM1.tNEntradaItensGrade.First;
              while not Dm1.tNEntradaItensGrade.Eof do
                begin
                  Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Filial;Codigo;Item;CodGrade;Posicao';
                  Dm1.tOrdemCompraItemGrade.SetKey;
                  DM1.tOrdemCompraItemGradeFilial.AsInteger   := DM1.tNEntradaItensFilial.AsInteger;
                  Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
                  Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
                  Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
                  if Dm1.tOrdemCompraItemGrade.GotoKey then
                    begin
                      Dm1.tOrdemCompraItemGrade.Edit;
                      Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat -
                                                                      Dm1.tNEntradaItensGradeQtd.AsFloat;
                      Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat +
                                                                      Dm1.tNEntradaItensGradeQtd.AsFloat;
                      if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                        DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := DM1.tOrdemCompraItemGradeQtd.AsFloat;
                      Dm1.tOrdemCompraItemGrade.Post;
                    end;
                  Dm1.tNEntradaItensGrade.Delete;
                end;

              //Deleta a tabela dbNEntradaNDevolvida
              Volta_NotaFiscal;
              //**************************
              DM1.tNEntradaItens.Delete;
            end;
          // apaga as parcelas da nota de entrada
          while not DM1.tNEntradaParc.IsEmpty do
            DM1.tNEntradaParc.Delete;
          // apaga o contas a pagar ou o caixa
          Cancela_Pgto;
          // apaga os itens da mão-de-obra
          if not DM1.tNEntradaItensMObra.IsEmpty then
            while not DM1.tNEntradaItensMObra.Eof do
              DM1.tNEntradaItensMObra.Delete;
          // apaga a nota de entrada
          DM1.tNEntrada.Delete;
        end;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a fazer exclusão!');
end;

procedure TfNotaEntrada.FormShow(Sender: TObject);
begin
  Dm1.tOrdemCompraItemGrade.Open;
  Dm1.tCondPgtoItem.Open;
  Dm1.tCPagar.Open;
  Dm1.tCPagarParc.Open;
  Dm1.tCPagarParcHist.Open;
  Dm1.tMaoDeObra.Open;

  DM1.tProduto.Open;
  Dm1.tProdutoCor.Open;
  DM1.tProdutoCli.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoTam.Open;

  DM1.tNEntrada.Open;
  DM1.tNEntradaItens.Open;
  DM1.tNEntradaItensGrade.Open;
  DM1.tNEntradaItensMobra.Open;
  DM1.tNEntradaParc.Open;
  DM1.tNEntradaNDevolvida.Open;

  DM1.tFornecedores.Open;
  DM1.tEstoqueMatMov.Open;
  DM1.tCondPgto.Open;
  DM1.tCondPgto2.Open;

  DM1.tNatOperacao.Open;
  DM1.tPlanoContas.Open;
  DM1.tPlanoContasItens.Open;
  Dm1.tOrdemCompra.Open;
  Dm1.tOrdemCompraItem.Open;
  DM1.tTabPreco.Open;

  DM1.tNotaFiscal.Open;
  DM1.tNotaFiscalItens.Open;

  DM1.tUnidade.Open;

  tNEntradaParcIns.Open;
  tNEntradaIns.Open;
  tNEntradaItensMObraIns.Open;
  tCPagarParc.Open;

  RxDBFilter2.Active := True;

  fNotaEntrada.Caption := 'Nota de Compra ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
  if vNumNotaEntPos > 0 then
    DM1.tNEntrada.Locate('Filial;CodForn;NumNEntr',VarArrayOf([DM1.tFilialCodigo.AsInteger,vCodFornPos,vNumNotaEntPos]),[locaseinsensitive]);
end;

procedure TfNotaEntrada.RxDBLookupCombo1Exit(Sender: TObject);
begin
  Verifica_UF;
  if BitBtn8.Tag <> 1 then
    begin
      if RXDBLookupCombo1.Text <> '' then
        begin
          if Dm1.tFornecedoresCodCondPgto.AsInteger > 0 then
            Dm1.tNEntradaCodCondPagto.AsInteger := Dm1.tFornecedoresCodCondPgto.AsInteger;
          tNEntradaIns.First;
          tNEntradaIns.SetKey;
          tNEntradaInsFilial.AsInteger  := DM1.tFilialCodigo.AsInteger;
          tNEntradaInsNumNEntr.AsString := DBEdit1.Text;
          tNEntradaInsCodForn.AsString  := RXDBLookupCombo1.KeyValue;
          if tNEntradaIns.GotoKey then
            begin
              ShowMessage('Já foi dada entrada desta nota!');
              DM1.tNEntrada.Cancel;
              Habilita;
              BitBtn1.SetFocus;
            end
          else
            begin
              if RxDBLookupCombo6.Text = '' then
                begin
                  ShowMessage('Falta informar a natureza de operação!');
                  RxDBLookupCombo6.SetFocus;
                end
              else
                RxDBLookupCombo10.KeyValue := RxDBLookupCombo6.KeyValue;
            end;
          Verifica_Natureza(RxDBLookupCombo6.Text);
          if not vNatureza then
            begin
              RxDBLookupCombo6.ClearValue;
              RxDBLookupCombo6.SetFocus;
            end;
        end
      else
        RxDBLookupCombo10.KeyValue := RxDBLookupCombo6.KeyValue;
    end;
end;

procedure TfNotaEntrada.DBEdit1Exit(Sender: TObject);
begin
  if BitBtn8.Tag <> 1 then
    begin
      if RXDBLookupCombo1.Text <> '' then
        begin
          tNEntradaIns.First;
          tNEntradaIns.SetKey;
          tNEntradaInsFilial.AsInteger  := DM1.tFilialCodigo.AsInteger;
          tNEntradaInsNumNEntr.AsString := DBEdit1.Text;
          tNEntradaInsCodForn.AsInteger := RXDBLookupCombo1.KeyValue;
          if tNEntradaIns.GotoKey then
            begin
              ShowMessage('Já foi dada entrada desta nota!');
              DM1.tNEntrada.Cancel;
              DM1.tNEntrada.Insert;
              DM1.tNEntradaFilial.AsInteger := DM1.tFilialCodigo.AsInteger;
              DBEdit1.SetFocus;
            end;
        end;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfNotaEntrada.CurrencyEdit3Exit(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      if CurrencyEdit3.Value <= 0 then
        begin
          if MessageDlg('Quantidade não pode ser "0" ou inferior' +#13+
                        'Deseja cancelar a inserção deste item ?', mtConfirmation,
                        [mbOK,mbNO],0) = mrOK then
            begin
              Limpa_Edit;
              RxDBLookupCombo11.SetFocus;
            end
          else
            CurrencyEdit3.SetFocus;
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit7Exit(Sender: TObject);
var
  vAux : Real;
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([RZDBLookupComboBox1.KeyValue]);
      if (DM1.tProdutoPrecoGrade.AsBoolean) and (BitBtn16.Tag < 1) and (CurrencyEdit12.Value < 1) then
        CurrencyEdit7.Clear
      else
        begin
          if CurrencyEdit7.Value <= 0 then
            begin
              if MessageDlg('Valor Unitário não pode ser "0" ou menor' +#13+
                         'Deseja cancelar a inserção deste item ?', mtConfirmation,
                         [mbOK,mbNO],0) = mrOK then
                begin
                  Limpa_Edit;
                  RxDBLookupCombo11.SetFocus;
                end
              else
                CurrencyEdit7.SetFocus;
            end
          else
            begin
              CurrencyEdit9Exit(Sender);
              CurrencyEdit10Exit(Sender);
              if CurrencyEdit5.Value > 0 then
                begin
                  vAux := (CurrencyEdit3.Value * CurrencyEdit7.Value);
                  vAux := vAux - CurrencyEdit10.Value;
                  CurrencyEdit8.Value := vAux;
                  CurrencyEdit8.Value := CurrencyEdit8.Value + StrToCurr(FormatFloat('0.00',CurrencyEdit8.Value * CurrencyEdit5.Value / 100));
                end
              else
                CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
            end;
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit9Exit(Sender: TObject);
begin
  if CurrencyEdit9.Value > 0 then
    begin
      CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
      CurrencyEdit10.Value := StrToCurr(FormatFloat('0.00',CurrencyEdit8.Value * CurrencyEdit9.Value / 100));
      CurrencyEdit8.Value  := CurrencyEdit8.Value - CurrencyEdit10.Value;
      if CurrencyEdit5.Value > 0 then
        CurrencyEdit8.Value := CurrencyEdit8.Value + StrToCurr(FormatFloat('0.00',CurrencyEdit8.Value * CurrencyEdit5.Value / 100));
    end;
end;

procedure TfNotaEntrada.CurrencyEdit10Exit(Sender: TObject);
begin
  if (CurrencyEdit9.Value = 0) and (CurrencyEdit10.Value > 0) then
    begin
      CurrencyEdit8.Value := CurrencyEdit3.Value * CurrencyEdit7.Value;
      CurrencyEdit8.Value := CurrencyEdit8.Value - CurrencyEdit10.Value;
      if CurrencyEdit5.Value > 0 then
        CurrencyEdit8.Value := CurrencyEdit8.Value + StrToCurr(FormatFloat('0.00',CurrencyEdit8.Value * CurrencyEdit5.Value / 100));
    end;
end;

procedure TfNotaEntrada.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioNatOper.AsBoolean then
    begin
      fNatOperacao := TfNatOperacao.Create(Self);
      fNatOperacao.ShowModal;
      DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de natureza de operação!');
end;

procedure TfNotaEntrada.BitBtn2Click(Sender: TObject);
begin
  if DBEdit1.Text <> '' then
    begin
      if (CurrencyEdit6.Value > 0) and (RxDBLookupCombo9.Text <> '') and (CurrencyEdit1.Value > 0) and (CurrencyEdit2.Value > 0) and (RxDBLookupCombo4.Text <> '') then
        begin                                        
          tNEntradaItensMObraIns.Refresh;
          tNEntradaItensMObraIns.Last;
          DM1.tNEntradaItensMObra.Insert;
          DM1.tNEntradaItensMObraFilial.AsInteger     := DM1.tNEntradaFilial.AsInteger;
          DM1.tNEntradaItensMobraCodNatOper.AsInteger := RxDBLookupCombo4.KeyValue;
          DM1.tNEntradaItensMObraCodForn.AsInteger    := DM1.tNEntradaCodForn.AsInteger;
          DM1.tNEntradaItensMObraNumNEntr.AsInteger   := DM1.tNEntradaNumNEntr.AsInteger;
          DM1.tNEntradaItensMObraItem.AsInteger       := tNEntradaItensMObraInsItem.AsInteger + 1;
          DM1.tNEntradaItensMObraQtd.AsString         := CurrencyEdit6.Text;
          Dm1.tNEntradaItensMobraCodigo.AsInteger     := RxDBLookupCombo9.KeyValue;
          DM1.tNEntradaItensMObraDescricao.AsString   := RxDBLookupCombo9.Text;
          DM1.tNEntradaItensMobraVlrUnit.AsFloat      := CurrencyEdit1.Value;
          DM1.tNEntradaItensMObraVlrTotal.AsFloat     := CurrencyEdit2.Value;
          DM1.tNEntradaVlrTotalNEntr.AsCurrency       := DM1.tNEntradaVlrTotalNEntr.AsCurrency +
                                                         DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
          DM1.tNatOperacao.IndexFieldNames := 'Codigo';
          DM1.tNatOperacao.SetKey;
          DM1.tNatOperacaoCodigo.AsInteger := RxDBLookupCombo4.KeyValue;
          if DM1.tNatOperacao.GotoKey then
            begin
              DM1.tNEntradaItensMobraGeraDupl.AsBoolean := DM1.tNatOperacaoGeraDuplicata.AsBoolean;
              if DM1.tNatOperacaoDeduzirFat.AsBoolean then
                DM1.tNEntradaVlrDevolucao.AsCurrency := DM1.tNEntradaVlrDevolucao.AsCurrency +
                                                        DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
            end
          else
            DM1.tNEntradaItensMobraGeraDupl.AsBoolean := False;
          if DM1.tNEntradaItensMobraGeraDupl.AsBoolean then
            DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat + DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
          DM1.tNEntradaItensMObra.Post;
          SpeedButton6.Click;
          RxDBLookupCombo9.SetFocus;
        end
      else
        begin
          ShowMessage('Deve haver: Mão-de-obra, quantidade mínima de 1 Valor Unítário, valor Total e Natureza de Operação!');
          RxDBLookupCombo9.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Deve haver nº nota!');
      DBEdit1.SetFocus;
    end;
end;

procedure TfNotaEntrada.SpeedButton6Click(Sender: TObject);
begin
  RxDBLookupCombo9.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit6.Clear;
end;

procedure TfNotaEntrada.SpeedButton7Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este serviço da nota?',mtConfirmation,
     [mbOK,mbNo],0) = mrOK then
    begin
      DM1.tNEntradaVlrTotalNEntr.AsCurrency := DM1.tNEntradaVlrTotalNEntr.AsCurrency -
                                               DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
      if DM1.tNEntradaItensMobraGeraDupl.AsBoolean then
        DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat -
                                                  DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
      if (DM1.tNatOperacao.Locate('Codigo',DM1.tNEntradaItensMobraCodNatOper.AsInteger,[loCaseInsensitive])) and
         (DM1.tNatOperacaoDeduzirFat.AsBoolean) then
        DM1.tNEntradaVlrDevolucao.AsFloat := DM1.tNEntradaVlrDevolucao.AsFloat -
                                             DM1.tNEntradaItensMObraVlrTotal.AsCurrency;
      DM1.tNEntradaItensMObra.Delete;
    end;
end;

procedure TfNotaEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tNEntrada.State in [dsBrowse]) then
    begin
      fConsNotaEnt := TfConsNotaEnt.Create(Self);
      fConsNotaEnt.ShowModal;
      fNotaEntrada.Caption := 'Nota de Compra ' + Dm1.tFilialEmpresa.AsString + ' - ' + DM1.tFilialCNPJ.AsString;
    end;
end;

procedure TfNotaEntrada.Imprimir1Click(Sender: TObject);
var
  vNumNE, vCliente : integer;
begin
  vNumNE                            := DM1.tNEntradaNumNEntr.AsInteger;
  vCliente                          := DM1.tNEntradaCodForn.AsInteger;
  DM1.tNEntrada.Filtered            := False;
  DM1.tNEntrada.Filter              := 'NumNEntr = '''+IntToStr(vNumNE)+''' and CodForn = '''+IntToStr(vCliente)+'''';
  DM1.tNEntrada.Filtered            := True;
  fRelNotaEntrada                   := TfRelNotaEntrada.Create(Self);
  fRelNotaEntrada.QuickRep1.Print;
  fRelNotaEntrada.QuickRep1.Free;
  DM1.tNEntrada.Filtered            := False;
  //DM1.tNEntrada.FindKey([vNumNE,vCliente]);
  DM1.tNEntrada.Locate('Filial;NumNEntr;CodForn',VarArrayOf([DM1.tFilialCodigo.AsInteger,vNumNE,vCliente]),[loCaseInsensitive]);
end;

procedure TfNotaEntrada.Visualizar1Click(Sender: TObject);
var
  vNumNE, vCliente : integer;
begin
  vNumNE                            := DM1.tNEntradaNumNEntr.AsInteger;
  vCliente                          := DM1.tNEntradaCodForn.AsInteger;
  DM1.tNEntrada.Filtered            := False;
  DM1.tNEntrada.Filter              := 'NumNEntr = '''+IntToStr(vNumNE)+''' and CodForn = '''+IntToStr(vCliente)+'''';
  DM1.tNEntrada.Filtered            := True;
  fRelNotaEntrada                   := TfRelNotaEntrada.Create(Self);
  fRelNotaEntrada.QuickRep1.Preview;
  fRelNotaEntrada.QuickRep1.Free;
  DM1.tNEntrada.Filtered            := False;
  //DM1.tNEntrada.FindKey([DM1.tFilialCodigo.AsInteger,vNumNE,vCliente]);
  DM1.tNEntrada.Locate('Filial;NumNEntr;CodForn',VarArrayOf([DM1.tFilialCodigo.AsInteger,vNumNE,vCliente]),[loCaseInsensitive]);
end;

procedure TfNotaEntrada.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioMaoDeObra.AsBoolean then
  begin
    fMaodeObra := TfMaodeObra.Create(Self);
    fMaodeObra.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaEntrada.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tPlanoContas.IndexFieldNames := 'Descricao';
end;

procedure TfNotaEntrada.BitBtn16Click(Sender: TObject);
var
 vAux : Real;
begin
  if not DM1.tNEntradaItens.IsEmpty then
    begin
      if DM1.tNEntradaNDevolvida.RecordCount > 0 then
        ShowMessage('Item de devolução, não pode ser alterado!')
      else
      if DM1.tNEntradaItensQtdDevolvida.AsFloat > 0 then
        ShowMessage('Item com quantidade devolvida para o cliente!')
      else
      if RZDBLookupComboBox1.Text = '' then
        begin
          CurrencyEdit14.AsInteger     := DM1.tNEntradaItensCodMaterial.AsInteger;
          RxDBLookupCombo11.KeyValue   := DM1.tNEntradaItensCodMaterial.AsInteger;
          RZDBLookupComboBox1.KeyValue    := DM1.tNEntradaItensCodMaterial.AsInteger;
          vCodProduto                  := DM1.tNEntradaItensCodMaterial.AsInteger;
          DM1.tProduto.IndexFieldNames := 'Codigo';
          DM1.tProduto.SetKey;
          DM1.tProdutoCodigo.AsInteger := DM1.tNEntradaItensCodMaterial.AsInteger;
          DM1.tProduto.GotoKey;
          RxDBLookupCombo10.KeyValue   := Dm1.tNEntradaItensCodNatOper.AsInteger;
          RZDBLookupComboBox1.KeyValue    := DM1.tNEntradaItensCodMaterial.AsInteger;
          if (DM1.tNEntradaItensCodGrade.AsInteger > 0) and (DM1.tNEntradaItensPosicao.AsInteger > 0)  then
            begin
              RxDBLookupCombo8.KeyValue  := DM1.tNEntradaItensCodGrade.AsInteger;
              RxDBLookupCombo12.KeyValue := DM1.tNEntradaItensPosicao.AsInteger;
            end;
          vAux                         := 0;
          BitBtn16.Tag                 := 1;
          vItem                        := DM1.tNEntradaItensItem.AsInteger;
          if DM1.tNEntradaItensCodCor.AsInteger > 0 then
            RxDBLookupCombo2.KeyValue        := DM1.tNEntradaItensCodCor.AsInteger;
          RxDBLookupCombo15.Value            := DM1.tNEntradaItensUnidade.AsString;
          CurrencyEdit3.Value                := DM1.tNEntradaItensQtd.AsFloat;
          CurrencyEdit4.Value                := DM1.tNEntradaItensIcms.AsFloat;
          CurrencyEdit5.Value                := DM1.tNEntradaItensIpi.AsFloat;
          if DM1.tNEntradaItensSitTrib.AsInteger > 0 then
            RxDBLookupCombo13.KeyValue       := DM1.tNEntradaItensSitTrib.AsInteger;
          CurrencyEdit7.Value                := DM1.tNEntradaItensVlrUnit.AsFloat;
          CurrencyEdit8.Value                := DM1.tNEntradaItensVlrTotalItens.AsFloat;
          CurrencyEdit9.Value                := DM1.tNEntradaItensDesc.AsFloat;
          CurrencyEdit10.Value               := DM1.tNEntradaItensVlrDesc.AsFloat;
          CurrencyEdit11.Value               := DM1.tNEntradaItensNumOC.AsInteger;
          CurrencyEdit12.Value               := DM1.tNEntradaItensItemOC.AsInteger;
          DM1.tNEntradaBaseICMS.AsFloat      := DM1.tNEntradaBaseICMS.AsFloat -
                                                DM1.tNEntradaItensBaseICMS.AsFloat;
          DM1.tNEntradaVlrICMS.AsFloat       := DM1.tNEntradaVlrICMS.AsFloat -
                                                DM1.tNEntradaItensVlrICMS.AsFloat;
          DM1.tNEntradaVlrIPI.AsFloat        := DM1.tNEntradaVlrIPI.AsFloat -
                                                DM1.tNEntradaItensVlrIPI.AsFloat;
          DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat - DM1.tNEntradaItensVlrTotalItens.AsFloat;
          if DM1.tNEntradaItensGeraDupl.AsBoolean then
            DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat - DM1.tNEntradaItensVlrTotalItens.AsFloat;

          if (DM1.tNatOperacao.Locate('Codigo',DM1.tNEntradaItensCodNatOper.AsInteger,[loCaseInsensitive])) and
             (DM1.tNatOperacaoDeduzirFat.AsBoolean) then
            DM1.tNEntradaVlrDevolucao.AsFloat := DM1.tNEntradaVlrDevolucao.AsFloat - DM1.tNEntradaItensVlrTotalItens.AsFloat;

          CheckBox1.Checked                  := Dm1.tNEntradaItensSomaEstoque.AsBoolean;
          Edit1.Text                         := DM1.tNEntradaItensNumPedCliente.AsString;
          tAuxNEntradaGrade.First;
          while not tAuxNEntradaGrade.EOF do
            tAuxNEntradaGrade.Delete;
          if DM1.tNEntradaItensCodGrade.AsInteger > 0 then
            begin
              DM1.tGrade.IndexFieldNames := 'Codigo';
              DM1.tGrade.FindKey([DM1.tNEntradaItensCodGrade.AsInteger]);
            end;
          DM1.tNEntradaItensGrade.First;
          //*** Volta a Ordem de Compra
          if DM1.tNEntradaItensNumOC.AsInteger > 0 then
            begin
              Dm1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
              DM1.tOrdemCompra.SetKey;
              DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
              DM1.tOrdemCompraCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
              if DM1.tOrdemCompra.GotoKey then
                begin
                  DM1.tOrdemCompra.Edit;
                  DM1.tOrdemCompraEntregue.AsBoolean := False;
                  DM1.tOrdemCompra.Post;

                  Dm1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
                  Dm1.tOrdemCompraItem.SetKey;
                  DM1.tOrdemCompraItemFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
                  Dm1.tOrdemCompraItemCodigo.AsInteger := Dm1.tNEntradaItensNumOC.AsInteger;
                  Dm1.tOrdemCompraItemItem.AsInteger   := Dm1.tNEntradaItensItemOC.AsInteger;
                  if DM1.tOrdemCompraItem.GotoKey then
                    begin
                      Dm1.tOrdemCompraItem.Edit;
                      Dm1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) +
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      Dm1.tOrdemCompraItemQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) -
                                                                 StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensQtd.AsFloat));
                      if StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtdRestante.AsFloat)) > StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat)) then
                        DM1.tOrdemCompraItemQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tOrdemCompraItemQtd.AsFloat));
                      Dm1.tOrdemCompraItem.Post;
                    end;
                end;
            end;
          while not DM1.tNEntradaItensGrade.EOF do
            begin
              tAuxNEntradaGrade.Insert;
              tAuxNEntradaGradeCodGrade.AsInteger  := DM1.tNEntradaItensGradeCodGrade.AsInteger;
              tAuxNEntradaGradePosicao.AsInteger   := DM1.tNEntradaItensGradePosicao.AsInteger;
              tAuxNEntradaGradeQtd.asFloat         := DM1.tNEntradaItensGradeQtd.AsFloat;
              tAuxNEntradaGradeVlrUnitario.AsFloat := DM1.tNEntradaItensGradeVlrUnitario.AsFloat;
              tAuxNEntradaGradeVlrTotal.AsFloat    := DM1.tNEntradaItensGradeVlrUnitario.AsFloat * DM1.tNEntradaItensGradeQtd.AsFloat;
              tAuxNEntradaGradeTamanho.AsString    := DM1.tNEntradaItensGradelkTamanho.AsString;
              vAux := vAux + DM1.tNEntradaItensGradeQtd.AsFloat;
              tAuxNEntradaGrade.Post;
              Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Filial;Codigo;Item;CodGrade;Posicao';
              Dm1.tOrdemCompraItemGrade.SetKey;
              DM1.tOrdemCompraItemGradeFilial.AsInteger   := DM1.tNEntradaItensFilial.AsInteger;
              Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := Dm1.tNEntradaItensNumOC.AsInteger;
              Dm1.tOrdemCompraItemGradeItem.AsInteger     := Dm1.tNEntradaItensItemOC.AsInteger;
              Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := Dm1.tNEntradaItensGradeCodGrade.AsInteger;
              Dm1.tOrdemCompraItemGradePosicao.AsInteger  := Dm1.tNEntradaItensGradePosicao.AsInteger;
              if Dm1.tOrdemCompraItemGrade.GotoKey then
                begin
                  Dm1.tOrdemCompraItemGrade.Edit;
                  Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat -
                                                                  Dm1.tNEntradaItensGradeQtd.AsFloat;
                  Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat +
                                                                  Dm1.tNEntradaItensGradeQtd.AsFloat;
                  if DM1.tOrdemCompraItemGradeQtdRestante.AsFloat > DM1.tOrdemCompraItemGradeQtd.AsFloat then
                    DM1.tOrdemCompraItemGradeQtdRestante.AsFloat := DM1.tOrdemCompraItemGradeQtd.AsFloat;
                  Dm1.tOrdemCompraItemGrade.Post;
                end;
              DM1.tNEntradaItensGrade.Delete;
            end;
          if vAux > 0 then
            CurrencyEdit3.Value := vAux;
          DM1.tNEntradaItens.Delete;
          CurrencyEdit14.SetFocus;

          if CurrencyEdit11.AsInteger > 0 then
            begin
              CurrencyEdit11.Enabled    := False;
              CurrencyEdit12.Enabled    := False;
              CurrencyEdit14.Enabled    := False;
              RxDBLookupCombo11.Enabled := False;
              RZDBLookupComboBox1.Enabled  := False;
              RxDBLookupCombo2.Enabled  := False;
            end
          else
            begin
              CurrencyEdit11.Enabled    := True;
              CurrencyEdit12.Enabled    := True;
              CurrencyEdit14.Enabled    := True;
              RxDBLookupCombo11.Enabled := True;
              RZDBLookupComboBox1.Enabled  := True;
              RxDBLookupCombo2.Enabled  := True;
            end;
        end
      else
        ShowMessage('Há um item pendente, você deve confirmar ou cancelar antes de alterar outro item!');
    end
  else
    ShowMessage('Não há registro p/ ser alterado!');
end;

procedure TfNotaEntrada.BitBtn8Click(Sender: TObject);
var
  Altera : Boolean;
begin
  if DM1.tEmpresaNivel.AsInteger < 100 then
  begin
    ShowMessage('Não liberado!');
    exit;
  end;

  if DM1.tUsuarioAltNotaEnt.AsBoolean then
    begin
      BitBtn8.Tag := 1;
      vItem       := 0;
      Altera      := True;
      DM1.tNEntradaParc.First;
      while not DM1.tNEntradaParc.EOF do
        begin
          if tCPagarParc.Locate('Filial;ParcCPagar;CodForn;NumNotaEnt',VarArrayOf([Dm1.tNEntradaParcFilial.AsInteger,DM1.tNEntradaParcParcela.AsInteger,
                                                                                   DM1.tNEntradaParcCodForn.AsInteger,DM1.tNEntradaParcNumNEntr.AsInteger]),[locaseinsensitive]) then
            begin
              if (tCPagarParcDtVencCPagar.AsDateTime <> DM1.tNEntradaParcDtVenc.AsDateTime) or (tCPagarParcVlrParcCPagar.AsFloat <> DM1.tNEntradaParcVlrVenc.AsFloat) or
                 (tCPagarParcPgtoParcial.AsFloat > 0) then
                Altera := False;
             end;
          DM1.tNEntradaParc.Next;
        end;
      if not Altera then
        ShowMessage('Esta Nota já foi alterada no Ctas. a Pagar!');
      //*** Verifica se algum item da nota já foi baixado pelo código de barra
      if Altera then
        begin
          DM1.tNEntradaItens.First;
          while not DM1.tNEntradaItens.Eof do
            begin
              if DM1.tNEntradaItensNumMovEstBaixa.AsInteger > 0 then
                Altera := False;
              DM1.tNEntradaItens.Next;
            end;
          if Altera = False then
            ShowMessage('Esta nota já foi baixada pelo código de barra no estoque!');
        end;
      //***********************
      if (Altera) and (DM1.tNEntradaDevolvida.AsBoolean) then
        begin
          ShowMessage('Nota foi devolvida não pode ser alterada');
          Altera := False;
        end;
      if Altera = True then
        begin
          Verifica_UF;
          Habilita;
          Cancela_Pgto;
          DM1.tNEntrada.Edit;
          Diminui_Estoque;
          Ajusta_Estoque;
        end;
      tAuxNEntradaGrade.First;
      while not tAuxNEntradaGrade.Eof do
        tAuxNEntradaGrade.Delete;
    end
  else
    ShowMessage('Usuário "'+DM1.tUsuarioUsuario.AsString+'" não autorizado a fazer alteração!');
end;

procedure TfNotaEntrada.DBEdit7Enter(Sender: TObject);
begin
  vOutrasDesp := DM1.tNEntradaOutrasDesp.AsFloat;
end;

procedure TfNotaEntrada.DBEdit7Exit(Sender: TObject);
begin
  DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat - vOutrasDesp + DM1.tNEntradaOutrasDesp.AsFloat;
  if DBRadioGroup2.ItemIndex <> 2 then
    DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat  - vOutrasDesp + DM1.tNEntradaOutrasDesp.AsFloat;
end;

procedure TfNotaEntrada.CurrencyEdit1Exit(Sender: TObject);
begin
  CurrencyEdit2.Value := CurrencyEdit1.Value * CurrencyEdit6.Value; 
end;

procedure TfNotaEntrada.BitBtn9Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaEntrada.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_F2 then
    begin
      if RxDBLookupCombo1.LookupDisplay = 'NomeForn' then
        begin
           RxDBLookupCombo1.CloseUp(True);
           RxDBLookupCombo1.LookupDisplay    := 'Fantasia';
           DM1.tFornecedores.IndexFieldNames := 'Fantasia';
           DM1.tFornecedores.Refresh;
           Label23.Caption := 'Fantasia';
        end
      else
      if RxDBLookupCombo1.LookupDisplay = 'Fantasia' then
        begin
          RxDBLookupCombo1.CloseUp(True);
          RxDBLookupCombo1.LookupDisplay    := 'NomeForn';
          DM1.tFornecedores.IndexFieldNames := 'NomeForn';
          DM1.tFornecedores.Refresh;
          Label23.Caption := 'Nome';
        end;
    end;
end;

procedure TfNotaEntrada.DBGrid2Enter(Sender: TObject);
begin
  if DM1.tNEntradaNumNEntr.AsString = '' then
    begin
      ShowMessage('É obrigatório informar nº da nota!');
      DBEdit1.SetFocus;
    end;
end;

procedure TfNotaEntrada.SpeedButton17Click(Sender: TObject);
begin
  fBuscaOC := TfBuscaOC.Create(Self);
  if CurrencyEdit11.Value > 0 then
    fBuscaOC.Edit2.Text := CurrencyEdit11.Text;
  if CurrencyEdit12.Value > 0 then
    fBuscaOC.Edit1.Text := CurrencyEdit12.Text;
  Dm1.tOrdemCompra.Filter   := 'CodFornecedor = ' + QuotedStr(IntToStr(RxDBLookupCombo1.KeyValue));
  Dm1.tOrdemCompra.Filtered := True;
  fBuscaOC.Edit2Change(Sender);
  if (fBuscaOC.Edit2.Text <> '') and (fBuscaOC.Edit2.Text <> '') then
    fBuscaOC.Edit1Exit(Sender);
  fBuscaOC.ShowModal;
  Dm1.tOrdemCompra.Filtered := False;
  CurrencyEdit12.SetFocus;
end;

procedure TfNotaEntrada.CurrencyEdit12Exit(Sender: TObject);
begin
  RxDBLookupCombo8.Enabled  := False;
  RxDBLookupCombo12.Enabled := False;
  if (CurrencyEdit12.AsInteger > 0) and (CurrencyEdit11.AsInteger > 0) then
    begin
      CurrencyEdit14.Enabled    := False;
      RxDBLookupCombo11.Enabled := False;
      RZDBLookupComboBox1.Enabled  := False;
      RxDBLookupCombo2.Enabled  := False;
      Edit1.Enabled             := False;
    end
  else
    begin
      Edit1.Enabled             := True;
      CurrencyEdit11.Clear;
      CurrencyEdit12.Clear;
      CurrencyEdit14.Enabled    := True;
      RxDBLookupCombo11.Enabled := True;
      RZDBLookupComboBox1.Enabled  := True;
      RxDBLookupCombo2.Enabled  := True;  //aqui 2
      if DM1.tParametrosImpItemNotaPorTam.AsBoolean then
        begin
          RxDBLookupCombo8.Enabled  := True;
          RxDBLookupCombo12.Enabled := True;
        end;
    end;
  if BitBtn16.Tag = 0 then
    begin
      if (CurrencyEdit11.AsInteger > 0) and (CurrencyEdit12.AsInteger > 0) then
        begin
          DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
          DM1.tOrdemCompra.SetKey;
          DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaFilial.AsInteger;
          DM1.tOrdemCompraCodigo.AsInteger := CurrencyEdit11.AsInteger;
          if (DM1.tOrdemCompra.GotoKey) and (DM1.tOrdemCompraEntregue.AsBoolean <> True) and
             (DM1.tOrdemCompraCodFornecedor.AsInteger = DM1.tNEntradaCodForn.AsInteger) then
            begin
              if DM1.tOrdemCompraItem.Locate('Filial;Codigo;Item',VarArrayOf([DM1.tNEntradaFilial.AsInteger,CurrencyEdit11.AsInteger,CurrencyEdit12.AsInteger]),[locaseinsensitive]) then
                begin
                  if (DM1.tProduto.Locate('Codigo',DM1.tOrdemCompraItemCodMaterial.AsInteger,[loCaseInsensitive])) and
                     (DM1.tOrdemCompraItemQtdRestante.AsFloat > 0) then
                    begin
                      CurrencyEdit14.AsInteger   := DM1.tOrdemCompraItemCodMaterial.AsInteger;
                      RxDBLookupCombo11.KeyValue := DM1.tOrdemCompraItemCodMaterial.AsString;
                      RZDBLookupComboBox1.KeyValue  := DM1.tOrdemCompraItemCodMaterial.AsString;
                      Move_Itens;
                      CheckBox1.Checked := True;
                      CurrencyEdit5.Value := DM1.tOrdemCompraItemAliqIPI.AsFloat;
                      if DM1.tOrdemCompraItemCodCor.AsInteger > 0 then
                        RxDBLookupCombo2.KeyValue := DM1.tOrdemCompraItemCodCor.AsInteger;
                      RxDBLookupCombo15.Value     := DM1.tOrdemCompraItemUnidade.AsString;
                      CurrencyEdit3.Value := DM1.tOrdemCompraItemQtdRestante.AsFloat;
                      CurrencyEdit7.Value := DM1.tOrdemCompraItemVlrUnitario.AsFloat;
                      if CurrencyEdit7.Value > 0 then
                        CurrencyEdit7Exit(Sender);
                      if (DM1.tOrdemCompraItemCodGrade.AsInteger > 0) and (DM1.tOrdemCompraItemPosicao.AsInteger > 0) then
                        begin
                          DM1.tGrade.IndexFieldNames := 'Codigo';
                          DM1.tGrade.FindKey([DM1.tOrdemCompraItemCodGrade.AsInteger]);
                          RxDBLookupCombo8.KeyValue  := DM1.tOrdemCompraItemCodGrade.AsInteger;
                          RxDBLookupCombo12.KeyValue := DM1.tOrdemCompraItemPosicao.AsInteger;
                          RxDBLookupCombo15.SetFocus;
                        end
                      else
                      if DM1.tOrdemCompraItemGrade.RecordCount > 0 then
                        begin
                          RxDBLookupCombo8.ClearValue;
                          RxDBLookupCombo12.ClearValue;
                          DM1.tGrade.IndexFieldNames := 'Codigo';
                          DM1.tGrade.FindKey([DM1.tOrdemCompraItemCodGrade.AsInteger]);
                          Monta_Grade;
                          BitBtn10.SetFocus;
                        end
                      else
                        begin
                          RxDBLookupCombo8.ClearValue;
                          RxDBLookupCombo12.ClearValue;
                          RxDBLookupCombo15.SetFocus;
                        end;
                    end
                  else
                    begin
                      ShowMessage('Este item da ordem de compra já foi entregue!');
                      CurrencyEdit12.AsInteger := 0;
                      CurrencyEdit12.SetFocus;
                    end
                end
              else
                begin
                  ShowMessage('Item não cadastrado');
                  CurrencyEdit12.AsInteger := 0;
                  CurrencyEdit12.SetFocus;
                end;
            end;
        end;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit12Enter(Sender: TObject);
begin
  if CurrencyEdit11.Value < 1 then
    CurrencyEdit14.SetFocus;
end;

procedure TfNotaEntrada.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir esta parcela da nota?',mtConfirmation,[mbOK,mbNo],0) = mrOK then
    DM1.tNEntradaParc.Delete;
end;

procedure TfNotaEntrada.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaEntrada.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  DM1.tNEntrada.Refresh;
end;

procedure TfNotaEntrada.DBCheckBox1Click(Sender: TObject);
begin
  CurrencyEdit11.Enabled := not(DBCheckBox1.Checked);
  CurrencyEdit12.Enabled := not(DBCheckBox1.Checked);
  SpeedButton17.Enabled  := not(DBCheckBox1.Checked);
end;

procedure TfNotaEntrada.DBCheckBox1Enter(Sender: TObject);
begin
  DBCheckBox1.ReadOnly := not Dm1.tNEntradaItens.IsEmpty;
end;

procedure TfNotaEntrada.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo11.KeyValue;
      if DM1.tProduto.GotoKey then
        begin
          if DM1.tProdutoCor.RecordCount < 1 then
            begin
              RxDBLookupCombo2.ClearValue;
              BitBtn10.SetFocus;
            end;
        end
      else
        RxDBLookupCombo11.SetFocus;
    end
  else
    RxDBLookupCombo11.SetFocus;
end;

procedure TfNotaEntrada.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (BitBtn16.Tag < 1) and (CurrencyEdit12.Value < 1) and (RxDBLookupCombo2.Text <> '') then
    begin
      if RxDBLookupCombo2.Text <> '' then
        if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) then
          CurrencyEdit7.Value := DM1.tProdutoCorPrCusto.AsFloat;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfNotaEntrada.CurrencyEdit14KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit14.AsInteger > 0 then
        RZDBLookupComboBox1.SetFocus
      else
        RxDBLookupCombo11.SetFocus;
    end;
end;

procedure TfNotaEntrada.CurrencyEdit14Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit14.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit14.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RxDBLookupCombo11.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RZDBLookupComboBox1.KeyValue  := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto/Material não cadastrado!');
          CurrencyEdit14.SetFocus;
          CurrencyEdit14.Clear;
        end;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo8Enter(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
  if (BitBtn16.Tag < 1) or (RxDBLookupCombo8.Text = '') then
    RxDBLookupCombo15.SetFocus;
end;

procedure TfNotaEntrada.RxDBLookupCombo12Enter(Sender: TObject);
begin
  if BitBtn16.Tag < 1 then
    RxDBLookupCombo15.SetFocus
  else
    begin
      if RxDBLookupCombo8.Text <> '' then
        begin
          DM1.tGrade.IndexFieldNames := 'Codigo';
          DM1.tGrade.FindKey([RxDBLookupCombo8.KeyValue]);
          RxDBLookupCombo12.ReadOnly := False;
        end
      else
        begin
          RxDBLookupCombo12.ClearValue;
          RxDBLookupCombo12.ReadOnly := True;
        end;
    end;
end;

procedure TfNotaEntrada.BitBtn10Click(Sender: TObject);
begin
  if DM1.tProdutoLancaGrade.AsBoolean then
    begin
      if not DM1.tParametrosImpItemNotaPorTam.AsBoolean then
        begin
          if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo2.Text = '') then
            begin
              ShowMessage('Falta informar a cor!');
              RxDBLookupCombo2.SetFocus;
            end
          else
            begin
              if RZDBLookupComboBox1.Text <>  '' then
                Dm1.tProduto.Locate('Codigo',RZDBLookupComboBox1.KeyValue,([LocaseInsensitive]));
              fNotaEntradaGrade := tfNotaEntradaGrade.Create(Self);
              fNotaEntradaGrade.ShowModal;
              if DM1.tProdutoPrecoGrade.AsBoolean then
                begin
                  CurrencyEdit8.Clear;
                  tAuxNEntradaGrade.First;
                  while not tAuxNEntradaGrade.Eof do
                    begin
                      CurrencyEdit8.Value := CurrencyEdit3.Value + tAuxNEntradaGradeVlrTotal.AsFloat;
                      tAuxNEntradaGrade.Next;
                    end;
                end;
            end;
        end;
    end
  else
    ShowMessage('Este produto não tem grade!');
end;

procedure TfNotaEntrada.SpeedButton10Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
    begin
      RxDBFilter1.Active := False;
      RxDBFilter2.Active := False;
      fProduto := TfProduto.Create(Self);
      fProduto.ShowModal;
      if RxDBLookupCombo11.Text <> ''  then
        DM1.tProduto.Locate('Codigo',RxDBLookupCombo11.KeyValue,[loCaseInsensitive]);
      RxDBFilter1.Active := True;
      RxDBFilter2.Active := True;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Produtos!');
end;

procedure TfNotaEntrada.DBEdit8Enter(Sender: TObject);
begin
  vVlrFrete := DM1.tNEntradaVlrFrete.AsFloat;
end;

procedure TfNotaEntrada.DBEdit8Exit(Sender: TObject);
begin
  DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat - vVlrFrete + DM1.tNEntradaVlrFrete.AsFloat;
  if DBRadioGroup2.ItemIndex <> 2 then
    DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat - vVlrFrete + DM1.tNEntradaVlrFrete.AsFloat;
end;

procedure TfNotaEntrada.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text = '' then
    RxDBLookupCombo7.ClearValue;
end;

procedure TfNotaEntrada.RxDBLookupCombo7Enter(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    RxDBLookupCombo7.ReadOnly := False
  else
    RxDBLookupCombo7.ReadOnly := True;
end;

procedure TfNotaEntrada.SpeedButton12Click(Sender: TObject);
var
  vValorDividir, vValorPrest, vValorVariavel : Currency;
  vValorVarTotal, vValorNotaTotal : string;
  vParcela : Integer;
begin
  if RxDBLookupCombo14.Text = '' then
    ShowMessage('Deve haver um prazo de pagamento escolhido!')
  else
    begin
      if DM1.tCondPgtoPrazoVista.AsString = 'V' then
        ShowMessage('Esta condição não pode gerar contas!')
      else
        begin
          DM1.tCondPgto.Locate('Codigo',RxDBLookupCombo14.KeyValue,[loCaseInsensitive]);
          DM1.tNEntradaParc.First;
          while not DM1.tNEntradaParc.Eof do
            DM1.tNEntradaParc.Delete;
          //vValorDividir := DM1.tNEntradaVlrTotalNEntr.AsCurrency;
          vValorDividir := DM1.tNEntradaVlrTotalDuplicata.AsCurrency;
          vValorPrest   := vValorDividir / DM1.tCondPgtoItem.RecordCount;
          DM1.tCondPgtoItem.First;
          vParcela := 0;
          while not DM1.tCondPgtoItem.EOF do
            begin
              DM1.tNEntradaParc.Insert;
              Inc(vParcela);
              DM1.tNEntradaParcFilial.AsInteger       := DM1.tNEntradaFilial.AsInteger;
              DM1.tNEntradaParcNumNEntr.AsInteger     := DM1.tNEntradaNumNEntr.AsInteger;
              DM1.tNEntradaParcParcela.AsInteger      := vParcela;
              DM1.tNEntradaParcVlrVenc.AsString       := FormatFloat('0.00',vValorPrest);
              DM1.tNEntradaParcDtVenc.AsDateTime      := DM1.tNEntradaDtEmissaoNEntr.AsDateTime + DM1.tCondPgtoItemQtdDias.AsInteger;
              Dm1.tNEntradaParcNroDuplicata.AsInteger := DM1.tNEntradaNumNEntr.AsInteger;
              DM1.tNEntradaParc.Post;
              DM1.tCondPgtoItem.Next;
            end;
          vValorVariavel := 0;
          DM1.tNEntradaParc.First;
          while not DM1.tNEntradaParc.Eof do
            begin
              vValorVariavel := vValorVariavel + DM1.tNEntradaParcVlrVenc.AsCurrency;
              DM1.tNEntradaParc.Next;
            end;
          vValorVarTotal  := FormatFloat('0.00',vValorVariavel);
          vValorNotaTotal := FormatFloat('0.00',vValorDividir);
          vValorVariavel  := StrToFloat(vValorNotaTotal) - StrToFloat(vValorVarTotal);
          // Verifica parcelas C200
          DM1.tNEntradaParc.Last;
          DM1.tNEntradaParc.Edit;
          DM1.tNEntradaParcVlrVenc.AsCurrency := DM1.tNEntradaParcVlrVenc.AsCurrency + vValorVariavel;
          DM1.tNEntradaParc.Post;
        end;
    end;
end;

procedure TfNotaEntrada.SpeedButton16Click(Sender: TObject);
begin
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowMOdal;
  DM1.tCondPgto2.Refresh;
end;

procedure TfNotaEntrada.RxDBLookupCombo6Exit(Sender: TObject);
begin
  Verifica_Natureza(RxDBLookupCombo6.Text);
  if not vNatureza then
    begin
      RxDBLookupCombo6.ClearValue;
      RxDBLookupCombo6.SetFocus;
    end
  else
  if RxDBLookupCombo6.Text <> '' then
    RxDBLookupCombo10.KeyValue := RxDBLookupCombo6.KeyValue;
end;

procedure TfNotaEntrada.RxDBLookupCombo10Exit(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    begin
      Verifica_Natureza(RxDBLookupCombo10.Text);
      if not vNatureza then
        begin
          RxDBLookupCombo10.ClearValue;
          RxDBLookupCombo10.SetFocus;
        end;
    end;
end;

procedure TfNotaEntrada.RxDBLookupCombo11Change(Sender: TObject);
begin
  if RxDBLookupCombo11.Text <> '' then
    begin
      RZDBLookupComboBox1.KeyValue := RxDBLookupCombo11.KeyValue;
      CurrencyEdit14.AsInteger  := RxDBLookupCombo11.KeyValue;
    end;
end;

procedure TfNotaEntrada.Panel6Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if RxDBLookupCombo11.Text <> '' then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo11.KeyValue;
      if DM1.tProduto.GotoKey then
        Move_itens
      else
        begin
          ShowMessage('Produto não cadastrado!');
          CurrencyEdit14.SetFocus;
        end;
    end;
  if vCodProduto <> CurrencyEdit14.AsInteger then
    RxDBLookupCombo2.ClearValue;
end;

procedure TfNotaEntrada.RxDBLookupCombo5Change(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
    begin
      RxDBLookupCombo11.KeyValue := RZDBLookupComboBox1.KeyValue;
      CurrencyEdit14.AsInteger   := RZDBLookupComboBox1.KeyValue;
    end;                         
end;

procedure TfNotaEntrada.DBGrid1DblClick(Sender: TObject);
var
  vTag : Integer;
begin
  if (DM1.tNEntradaItensGrade.RecordCount > 0) and (BitBtn16.Tag <> 1) then
    begin
      tAuxNEntradaGrade.First;
      while not tAuxNEntradaGrade.Eof do
        tAuxNEntradaGrade.Delete;
      vTag := BitBtn16.Tag;
      BitBtn16.Tag := 2;
      DM1.tNEntradaItensGrade.First;
      while not DM1.tNEntradaItensGrade.Eof do
        begin
          tAuxNEntradaGrade.Insert;
          tAuxNEntradaGradeCodGrade.AsInteger  := DM1.tNEntradaItensGradeCodGrade.AsInteger;
          tAuxNEntradaGradePosicao.AsInteger   := DM1.tNEntradaItensGradePosicao.AsInteger;
          tAuxNEntradaGradeQtd.AsFloat         := DM1.tNEntradaItensGradeQtd.AsFloat;
          tAuxNEntradaGradeVlrUnitario.AsFloat := DM1.tNEntradaItensGradeVlrUnitario.AsFloat;
          tAuxNEntradaGradeVlrTotal.AsFloat    := DM1.tNEntradaItensGradeVlrTotal.AsFloat;
          tAuxNEntradaGradeTamanho.AsString    := DM1.tNEntradaItensGradelkTamanho.AsString;
          tAuxNEntradaGrade.Post;
          DM1.tNEntradaItensGrade.Next;
        end;
      fNotaEntradaGrade := tfNotaEntradaGrade.Create(Self);
      fNotaEntradaGrade.ShowModal;
      BitBtn16.Tag := vTag;
    end
  else
  if (DM1.tNEntradaItensGrade.RecordCount > 0) and (BitBtn16.Tag = 1) then
    ShowMessage('Existe item pendente para confirmar!');
end;

procedure TfNotaEntrada.CurrencyEdit3Enter(Sender: TObject);
begin
  CurrencyEdit3.ReadOnly := False;
  if CurrencyEdit14.AsInteger > 0 then
    if (DM1.tProdutoLancaGrade.AsBoolean) and not(DM1.tParametrosImpItemNotaPorTam.AsBoolean)
      and (CurrencyEdit12.AsInteger < 1) then
      CurrencyEdit3.ReadOnly := True;
end;

procedure TfNotaEntrada.Panel6Enter(Sender: TObject);
begin
  if CurrencyEdit14.AsInteger > 0 then
    vCodProduto := CurrencyEdit14.AsInteger
  else
    vCodProduto := 0;
end;

procedure TfNotaEntrada.CurrencyEdit7Enter(Sender: TObject);
begin
  if (DM1.tProdutoPrecoGrade.AsBoolean) and (BitBtn16.Tag < 1) and (CurrencyEdit12.AsInteger = 0) then
    CurrencyEdit8.SetFocus;
end;

procedure TfNotaEntrada.BitBtn11Click(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    begin
      fEscNotaFiscalDevolPorItem2 := TfEscNotaFiscalDevolPorItem2.Create(Self);
      fEscNotaFiscalDevolPorItem2.ShowModal;
      CurrencyEdit11.Enabled := mSelecionado.IsEmpty;
      CurrencyEdit12.Enabled := mSelecionado.IsEmpty;
      SpeedButton17.Enabled  := mSelecionado.IsEmpty;
    end
  else
    ShowMessage('Falta informar a natureza de operação!');
end;

procedure TfNotaEntrada.RxDBLookupCombo6Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfNotaEntrada.RxDBLookupCombo10Enter(Sender: TObject);
begin
  DM1.tNatOperacao.IndexFieldNames := 'CodNatOper';
end;

procedure TfNotaEntrada.SpeedButton13Click(Sender: TObject);
begin
  if DM1.tUsuarioCondPgto.AsBoolean then
    begin
      fPlanoContas := TfPlanoContas.Create(Self);
      fPlanoContas.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfNotaEntrada.RxDBLookupCombo14Enter(Sender: TObject);
begin
  DM1.tCondPgto.IndexFieldNames := 'Nome';
end;

procedure TfNotaEntrada.RxDBLookupCombo5DropDown(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaEntrada.tAuxNEntradaGradeBeforeInsert(DataSet: TDataSet);
var
 icount : integer;
begin
  i2 := 0;
  icount := tAuxNEntradaGrade.RecordCount;
  if icount >= DM1.tGradeItem.RecordCount then
    begin
      fNotaEntradaGrade.BitBtn5.SetFocus;
      Abort;
    end;
end;

procedure TfNotaEntrada.tAuxNEntradaGradeBeforePost(DataSet: TDataSet);
begin
  if CurrencyEdit11.AsInteger > 0 then
    begin
      DM1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
      DM1.tOrdemCompra.SetKey;
      DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaFilial.AsInteger;
      DM1.tOrdemCompraCodigo.AsInteger := CurrencyEdit11.AsInteger;
      if (DM1.tOrdemCompra.GotoKey) and (DM1.tOrdemCompraEntregue.AsBoolean <> True) and
         (DM1.tOrdemCompraCodFornecedor.AsInteger = DM1.tNEntradaCodForn.AsInteger) then
        begin
          DM1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
          DM1.tOrdemCompraItem.SetKey;
          DM1.tOrdemCompraItemFilial.AsInteger := DM1.tNEntradaFilial.AsInteger;
          DM1.tOrdemCompraItemCodigo.AsInteger := CurrencyEdit11.AsInteger;
          DM1.tOrdemCompraItemItem.AsInteger   := CurrencyEdit12.AsInteger;
          if DM1.tOrdemCompraItem.GotoKey then
            DM1.tOrdemCompraItemGradeCodigo.AsInteger
        end;
    end;
  tAuxNEntradaGradeVlrTotal.AsFloat := tAuxNEntradaGradeVlrUnitario.AsFloat * tAuxNEntradaGradeQtd.AsFloat;
end;

procedure TfNotaEntrada.Panel8Enter(Sender: TObject);
var
  vFlag : Boolean;
begin
  vFlag := False;
  if DM1.tNEntradaItens.RecordCount > 0 then
    vFlag := True
  else
  if DM1.tNEntradaItensMobra.RecordCount > 0 then
    vFlag := True
  else
  if DM1.tNEntradaParc.RecordCount > 0 then
    vFlag := True;

  DBEdit1.ReadOnly          := vFlag;
  DBEdit6.ReadOnly          := vFlag;
  RxDBLookupCombo1.ReadOnly := vFlag;
end;

procedure TfNotaEntrada.RzDBLookupComboBox1DropDown(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';

   if RZDBLookupComboBox1.Text <> '' then
    begin
      RxDBLookupCombo11.KeyValue := RZDBLookupComboBox1.KeyValue;
      CurrencyEdit14.AsInteger   := RZDBLookupComboBox1.KeyValue;
    end;
end;

procedure TfNotaEntrada.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfNotaEntrada.RzDBLookupComboBox1Exit(Sender: TObject);
begin
  if RZDBLookupComboBox1.Text <> '' then
   begin
     RxDBLookupCombo11.KeyValue := RZDBLookupComboBox1.KeyValue;
     CurrencyEdit14.AsInteger   := RZDBLookupComboBox1.KeyValue;
   end;
end;

procedure TfNotaEntrada.DBEdit11Exit(Sender: TObject);
var
  vPercentual : Real;
begin
  if DM1.tNEntradaVlrDesc.AsFloat > 0 then
    begin
      DM1.tNEntradaVlrTotalNEntr.AsFloat     := DM1.tNEntradaVlrTotalNEntr.AsFloat - DM1.tNEntradaVlrDesc.AsFloat;
      if DBRadioGroup2.ItemIndex <> 2 then
        DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat - DM1.tNEntradaVlrDesc.AsFloat;

      vPercentual := DM1.tNEntradaVlrDesc.AsCurrency * 100 / Dm1.tNEntradaBaseIcms.AsFloat;

      Dm1.tNEntradaBaseIcms.AsFloat := Dm1.tNEntradaBaseIcms.AsFloat - StrToFloat(FormatFloat('0.00',(Dm1.tNEntradaBaseIcms.AsFloat * vPercentual / 100)));
      Dm1.tNEntradaVlrIcms.AsFloat  := Dm1.tNEntradaVlrIcms.AsFloat - StrToFloat(FormatFloat('0.00',(Dm1.tNEntradaVlrIcms.AsFloat * vPercentual / 100)));
    end;
end;

procedure TfNotaEntrada.DBEdit11Enter(Sender: TObject);
begin
  if DM1.tNEntradaVlrDesc.AsFloat > 0 then
    begin
      DM1.tNEntradaVlrTotalNEntr.AsFloat := DM1.tNEntradaVlrTotalNEntr.AsFloat + DM1.tNEntradaVlrDesc.AsFloat;
      if DBRadioGroup2.ItemIndex <> 2 then
        DM1.tNEntradaVlrTotalDuplicata.AsFloat := DM1.tNEntradaVlrTotalDuplicata.AsFloat + DM1.tNEntradaVlrDesc.AsFloat;
      Desfaz_DescontoICMS;
      vVlrDescTot := Dm1.tNEntradaVlrDesc.AsFloat;
    end;
end;

procedure TfNotaEntrada.Desfaz_DescontoICMS;
begin
  DM1.tNEntradaBaseIcms.AsFloat := 0;
  DM1.tNEntradaVlrIcms.AsFloat  := 0;
  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
    begin
      DM1.tNEntradaBaseIcms.AsFloat := DM1.tNEntradaBaseIcms.AsFloat + DM1.tNEntradaItensBaseIcms.AsFloat;
      DM1.tNEntradaVlrIcms.AsFloat  := DM1.tNEntradaVlrIcms.AsFloat + DM1.tNEntradaItensVlrIcms.AsFloat;
      DM1.tNEntradaItens.Next;
    end;
end;

procedure TfNotaEntrada.CalculaRateio;
var
  ValorDup,
    ValorNota,
    ValorDifDup,
    ValorDifNota: Real;
  PercDup,
    PercNota,
    TotalDifDup,
    TotalDifNota: Real;
begin
  if (DM1.tNEntradaItens.RecordCount < 1) or (DM1.tNEntradaItens.IsEmpty) then
    Exit;
  ValorNota := 0;
  ValorDup  := 0;

  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
  begin
    if DM1.tNEntradaItensItem.AsInteger < 1 then
      DM1.tNEntradaItens.Delete
    else
      begin
        if DM1.tNEntradaItensGeraDupl.AsBoolean then
          ValorDup := StrToFloat(FormatFloat('0.00',ValorDup + DM1.tNEntradaItensVlrTotalItens.AsFloat));
        ValorNota := StrToFloat(FormatFloat('0.00',ValorNota + DM1.tNEntradaItensVlrTotalItens.AsFloat));
        DM1.tNEntradaItens.Next;
      end;
  end;

  if (DM1.tNEntradaItens.RecordCount < 1) or (DM1.tNEntradaItens.IsEmpty) then
    Exit;

  ValorDifDup  := StrToFloat(FormatFloat('0.00',(ValorDup  - DM1.tNEntradaVlrTotalDuplicata.AsFloat)));
  ValorDifNota := StrToFloat(FormatFloat('0.00',(ValorNota - DM1.tNEntradaVlrTotalNEntr.AsFloat)));

  TotalDifDup  := ValorDifDup;
  TotalDifNota := ValorDifNota;

  DM1.tNEntradaItens.First;
  while not DM1.tNEntradaItens.Eof do
  begin
    PercDup  := 0;
    PercNota := 0;

    if (ValorDifDup <> 0) and (ValorDup<>0) then
      PercDup := StrToFloat(FormatFloat('0.00000',((DM1.tNEntradaItensVlrTotalItens.AsFloat / ValorDup) * 100 )));

    if (ValorDifNota <> 0) and (ValorNota<>0) then
      PercNota := StrToFloat(FormatFloat('0.00000',((DM1.tNEntradaItensVlrTotalItens.AsFloat / ValorNota) * 100)));

    if (PercDup <> 0) or (PercNota <> 0) then
    begin
      DM1.tNEntradaItens.Edit;

      if PercDup <> 0 then
        DM1.tNEntradaItensVlrRateioDupl.AsFloat := StrToFloat(FormatFloat('0.00', (ValorDifDup  * PercDup)/100 ));

      if PercNota <> 0 then
        DM1.tNEntradaItensVlrRateioNota.AsFloat := StrTofloat(FormatFloat('0.00',(ValorDifNota * PercNota)/100));

      DM1.tNEntradaItens.Post;

      TotalDifDup  := StrToFloat(FormatFloat('0.00',TotalDifDup  - DM1.tNEntradaItensVlrRateioDupl.AsFloat));
      TotalDifNota := StrToFloat(FormatFloat('0.00',TotalDifNota - DM1.tNEntradaItensVlrRateioNota.AsFloat));
    end;
    DM1.tNEntradaItens.Next;
  end;

  if (TotalDifDup <> 0) or (TotalDifNota <> 0) then
  begin
    DM1.tNEntradaItens.Edit;
    DM1.tNEntradaItensVlrRateioDupl.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNEntradaItensVlrRateioDupl.AsFloat + TotalDifDup ));
    DM1.tNEntradaItensVlrRateioNota.AsFloat := StrToFloat(FormatFloat('0.00',DM1.tNEntradaItensVlrRateioNota.AsFloat + TotalDifNota));
    DM1.tNEntradaItens.Post;
  end;
end;

procedure TfNotaEntrada.BitBtn12Click(Sender: TObject);
begin
  fNotaEntradaQtd := TfNotaEntradaQtd.Create(Self);
  fNotaEntradaQtd.ShowModal;
end;

procedure TfNotaEntrada.Baixa_OC;
var
  vQtdAux : Real;
  vEntregue : Boolean;
begin
  if DM1.tNEntradaItensNumOC.AsInteger <= 0 then
    exit;

  Dm1.tOrdemCompra.IndexFieldNames := 'Filial;Codigo';
  DM1.tOrdemCompra.SetKey;
  DM1.tOrdemCompraFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
  DM1.tOrdemCompraCodigo.AsInteger := DM1.tNEntradaItensNumOC.AsInteger;
  if DM1.tOrdemCompra.GotoKey then
  begin
    Dm1.tOrdemCompraItem.IndexFieldNames := 'Filial;Codigo;Item';
    Dm1.tOrdemCompraItem.SetKey;
    DM1.tOrdemCompraItemFilial.AsInteger := DM1.tNEntradaItensFilial.AsInteger;
    DM1.tOrdemCompraItemCodigo.AsInteger := DM1.tNEntradaItensNumOC.AsInteger;
    DM1.tOrdemCompraItemItem.AsInteger   := DM1.tNEntradaItensItemOC.AsInteger;
    if DM1.tOrdemCompraItem.GotoKey then
    begin
      Dm1.tOrdemCompraItem.Edit;
      if StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdPacote.AsFloat)) > 0 then
        vQtdAux := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtdPacote.AsFloat))
      else
        vQtdAux := StrToFloat(FormatFloat('0.00000',DM1.tNEntradaItensQtd.AsFloat));
      Dm1.tOrdemCompraItemQtdRestante.AsFloat      := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdRestante.AsFloat)) -
                                                      StrToFloat(FormatFloat('0.00000',vQtdAux));
      if Dm1.tOrdemCompraItemQtdRestante.AsFloat < 0 then
        Dm1.tOrdemCompraItemQtdRestante.AsFloat := 0;
      Dm1.tOrdemCompraItemQtdEntregue.AsFloat      := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemQtdEntregue.AsFloat)) +
                                                      StrToFloat(FormatFloat('0.00000',vQtdAux));
      Dm1.tOrdemCompraItem.Post;

      //Baixa as grades da ordem de compra
      DM1.tNEntradaItensGrade.First;
      while not DM1.tNEntradaItensGrade.Eof do
      begin
        Dm1.tOrdemCompraItemGrade.IndexFieldNames   := 'Filial;Codigo;Item;CodGrade;Posicao';
        Dm1.tOrdemCompraItemGrade.SetKey;
        DM1.tOrdemCompraItemGradeFilial.AsInteger   := DM1.tFilialCodigo.AsInteger;
        Dm1.tOrdemCompraItemGradeCodigo.AsInteger   := CurrencyEdit11.AsInteger;
        Dm1.tOrdemCompraItemGradeItem.AsInteger     := CurrencyEdit12.AsInteger;
        Dm1.tOrdemCompraItemGradeCodGrade.AsInteger := DM1.tNEntradaItensGradeCodGrade.AsInteger;
        Dm1.tOrdemCompraItemGradePosicao.AsInteger  := DM1.tNEntradaItensGradePosicao.AsInteger;
        if Dm1.tOrdemCompraItemGrade.GotoKey then
        begin
          Dm1.tOrdemCompraItemGrade.Edit;
          Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat)) -
                                                          StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
          Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat := StrToFloat(FormatFloat('0.00000',Dm1.tOrdemCompraItemGradeQtdEntregue.AsFloat)) +
                                                          StrToFloat(FormatFloat('0.00000',Dm1.tNEntradaItensGradeQtd.AsFloat));
          if Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat < 0 then
            Dm1.tOrdemCompraItemGradeQtdRestante.AsFloat := 0;
          Dm1.tOrdemCompraItemGrade.Post;
        end;
        DM1.tNEntradaItensGrade.Next;
      end;
    end;
    vEntregue := True;
    DM1.tOrdemCompraItem.First;
    while not DM1.tOrdemCompraItem.Eof do
    begin
      if DM1.tOrdemCompraItemQtdRestante.AsFloat > 0 then
        vEntregue := False;
      DM1.tOrdemCompraItem.Next;
    end;
    DM1.tOrdemCompra.Edit;
    DM1.tOrdemCompraEntregue.AsBoolean := vEntregue;
    DM1.tOrdemCompra.Post;
    if vEntregue then
      CurrencyEdit11.Clear;
  end;
end;

end.



