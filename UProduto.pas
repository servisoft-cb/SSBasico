unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, ToolEdit,
  CurrEdit, ComCtrls, Db, DBTables, RXLookup, Grids, DBGrids, DBVGrids, MemTable, RxDBComb, ExtDlgs, DBFilter, JPEG, RXCtrls,
  Menus, RXDBCtrl, Variants, DBIProcs, SMDBGrid, RzDBCmbo, FMTBcd, DBClient, Provider, SqlExpr, DmdCadProduto;

type
  TfProduto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    tProdutoIns: TTable;
    SpeedButton4: TSpeedButton;
    tProdutoInsCodigo: TIntegerField;
    tProdutoInsCodGrupo: TIntegerField;
    tProdutoInsCodSubGrupo: TIntegerField;
    tProdutoInsNome: TStringField;
    tProdutoInsUnidade: TStringField;
    tProdutoInsCodSitTrib: TIntegerField;
    tProdutoInsQParTalao: TFloatField;
    tProdutoInsPesoLiquido: TFloatField;
    tProdutoInsPesoBruto: TFloatField;
    tProdutoInsCodClasFiscal: TStringField;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    tProdutoInsCodGrade: TIntegerField;
    GroupBox2: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    tProdutoMatIns: TTable;
    tProdutoMatInsCodProduto: TIntegerField;
    tProdutoMatInsItem: TIntegerField;
    tProdutoMatInsCodMaterial: TIntegerField;
    tProdutoMatInsCodGrade: TIntegerField;
    tProdutoMatInsCodCor: TIntegerField;
    tProdutoMatInsQtd: TFloatField;
    tProdutoMatInsVlrUnitario: TFloatField;
    tProdutoMatInsVlrTotal: TFloatField;
    tProdutoInsLancaGrade: TBooleanField;
    tProdutoInsInativo: TBooleanField;
    OpenPictureDialog1: TOpenPictureDialog;
    tProdutoMatInsCodCorProd: TIntegerField;
    tProdutoCorCop: TTable;
    dsProdutoCorCop: TDataSource;
    tProdutoCorCopCodProduto: TIntegerField;
    tProdutoCorCopCodCor: TIntegerField;
    tProdutoCorCoplkNomeCor: TStringField;
    Label16: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    SpeedButton7: TSpeedButton;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    StaticText1: TStaticText;
    BitBtn13: TBitBtn;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    tProdutoInsAliqIcms: TFloatField;
    tProdutoInsAliqIPI: TFloatField;
    tProdutoInsNomeExp: TStringField;
    tProdutoInsDescMaterial: TStringField;
    RxDBLookupCombo6: TRxDBLookupCombo;
    tProdutoInsVlrAtelier: TFloatField;
    Image1: TImage;
    Bevel5: TBevel;
    RxSpeedButton1: TRxSpeedButton;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    DBMemo1: TDBMemo;
    Label26: TLabel;
    OpenPictureDialog2: TOpenPictureDialog;
    TabSheet3: TTabSheet;
    BitBtn17: TBitBtn;
    BitBtn19: TBitBtn;
    GroupBox4: TGroupBox;
    RxDBGrid3: TRxDBGrid;
    tProdutoInsReferencia: TStringField;
    tProdutoInsNomeModelo: TStringField;
    tProdutoInsFotoJpeg: TBlobField;
    tProdutoInsObs: TMemoField;
    tProdutoInsEndEtiq: TStringField;
    tProdutoInsReferencia2: TStringField;
    DBCheckBox4: TDBCheckBox;
    RxDBFilter3: TRxDBFilter;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    qProduto: TQuery;
    qProdutoPedido: TIntegerField;
    qProdutoItem: TIntegerField;
    qProdutoCodProduto: TIntegerField;
    qProdutoCor: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    qProdutoCorCodCor: TIntegerField;
    StaticText13: TStaticText;
    DBEdit9: TDBEdit;
    StaticText14: TStaticText;
    DBEdit10: TDBEdit;
    StaticText15: TStaticText;
    DBEdit12: TDBEdit;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    VDBGrid1: TVDBGrid;
    RxDBGrid2: TRxDBGrid;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label21: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    BitBtn23: TBitBtn;
    tProdutoCor2: TTable;
    tProdutoCor2CodProduto: TIntegerField;
    tProdutoCor2CodCor: TIntegerField;
    tProdutoCor2PrCusto: TFloatField;
    tProdutoCor2lkNomeCor: TStringField;
    dsProdutoCor2: TDataSource;
    tProdutoCli2: TTable;
    dsProdutoCli2: TDataSource;
    tProdutoCli2CodProduto: TIntegerField;
    tProdutoCli2CodCor: TIntegerField;
    tProdutoCli2CodCliente: TIntegerField;
    tProdutoCli2CodProdCli: TStringField;
    tProdutoCli2CodGrade: TIntegerField;
    tProdutoCli2Posicao: TIntegerField;
    tProdutoCli2NomeProdCli: TStringField;
    tProdutoCli2TamProdCli: TStringField;
    tProdutoCli2lkNomeCliente: TStringField;
    tProdutoCli2lkNomeCor: TStringField;
    tProdutoCli2lkTamanho: TStringField;
    tProdutoCli2lkNomeGrade: TStringField;
    BitBtn18: TBitBtn;
    mProdutoCli: TMemoryTable;
    mProdutoCliCodCliente: TIntegerField;
    mProdutoCliNomeCliente: TStringField;
    mProdutoCliCodProdCli: TStringField;
    mProdutoCliCodGrade: TIntegerField;
    mProdutoCliPosicao: TIntegerField;
    mProdutoCliNomeProdCli: TStringField;
    mProdutoCliTamProdCli: TStringField;
    dsmProdutoCli: TDataSource;
    mProdutoCliTamanho: TStringField;
    tProdutoCli2CodCorCli: TIntegerField;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    StaticText20: TStaticText;
    CurrencyEdit6: TCurrencyEdit;
    qVerificaGrade: TQuery;
    qVerificaGradeCodProduto: TIntegerField;
    qVerificaGradeCodGrade: TIntegerField;
    tTabPreco: TTable;
    tTabPrecoCodCliente: TIntegerField;
    tTabPrecoCodProduto: TIntegerField;
    tTabPrecoCodCor: TIntegerField;
    tTabPrecoPreco: TFloatField;
    tTabPrecoDtPreco: TDateField;
    tTabPrecolkNomeCliente: TStringField;
    tTabPrecolkNomeCor: TStringField;
    RxSpeedButton2: TRxSpeedButton;
    StaticText23: TStaticText;
    tTabPrecoPrecoMObra: TFloatField;
    TabSheet8: TTabSheet;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    BitBtn24: TBitBtn;
    RxSpeedButton3: TRxSpeedButton;
    RxDBFilter4: TRxDBFilter;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label30: TLabel;
    DBEdit19: TDBEdit;
    Label17: TLabel;
    DBMemo2: TDBMemo;
    BitBtn16: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    tProdutoCli2lkFantasia: TStringField;
    tProdutoCli2lkCnpj: TStringField;
    SMDBGrid3: TSMDBGrid;
    Label7: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    Label25: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    BitBtn11: TBitBtn;
    tProdutoMatInsCodSetor: TIntegerField;
    tProdutoMatInsCodCombinacao: TIntegerField;
    tProdutoMatInsImpTalao: TStringField;
    tProdutoMatInsUnidade: TStringField;
    tProdutoMatInsConsumo: TStringField;
    tProdutoMatInsCodPosicao: TIntegerField;
    BitBtn30: TBitBtn;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    Label9: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    Label18: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    SpeedButton8: TSpeedButton;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label27: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    BitBtn10: TBitBtn;
    Label28: TLabel;
    DBEdit14: TDBEdit;
    Label33: TLabel;
    DBEdit20: TDBEdit;
    Label34: TLabel;
    DBEdit21: TDBEdit;
    Label35: TLabel;
    DBEdit24: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    RxDBLookupCombo11: TRxDBLookupCombo;
    SpeedButton5: TSpeedButton;
    Label8: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    TabSheet6: TTabSheet;
    tCBarra: TTable;
    tCBarraCodBarra: TStringField;
    tCBarraCodProduto: TIntegerField;
    tCBarraCodCor: TIntegerField;
    tCBarraCodGrade: TIntegerField;
    tCBarraPosicao: TIntegerField;
    tCBarraTamanho: TStringField;
    tCBarraCodPrincipal: TIntegerField;
    tCBarraCodSeq: TIntegerField;
    tCBarralkNomeCor: TStringField;
    dsCBarra: TDataSource;
    SMDBGrid1: TSMDBGrid;
    BitBtn12: TBitBtn;
    BitBtn14: TBitBtn;
    StaticText2: TStaticText;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    Label36: TLabel;
    RxDBLookupCombo12: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    Label37: TLabel;
    RxDBLookupCombo13: TRxDBLookupCombo;
    TabSheet7: TTabSheet;
    Panel9: TPanel;
    BitBtn15: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    SMDBGrid4: TSMDBGrid;
    RxDBFilter1: TRxDBFilter;
    BitBtn27: TBitBtn;
    TabSheet9: TTabSheet;
    Panel10: TPanel;
    Label38: TLabel;
    RxDBLookupCombo14: TRxDBLookupCombo;
    RxDBLookupCombo15: TRxDBLookupCombo;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit18: TDBEdit;
    Label41: TLabel;
    DBEdit25: TDBEdit;
    Label42: TLabel;
    DBEdit26: TDBEdit;
    Label43: TLabel;
    DBEdit27: TDBEdit;
    Label44: TLabel;
    DBEdit28: TDBEdit;
    Label45: TLabel;
    DBEdit29: TDBEdit;
    BitBtn28: TBitBtn;
    ckImpLogo: TCheckBox;
    BitBtn29: TBitBtn;
    SpeedButton12: TSpeedButton;
    CheckBox1: TCheckBox;
    TabSheet10: TTabSheet;
    Panel11: TPanel;
    Label46: TLabel;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn34: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    Label29: TLabel;
    BitBtn20: TBitBtn;
    DBEdit17: TDBEdit;
    BitBtn33: TBitBtn;
    DBCheckBox8: TDBCheckBox;
    Label47: TLabel;
    DBEdit30: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure DBCheckBox2Exit(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo2DropDown(Sender: TObject);
    procedure RxDBLookupCombo2CloseUp(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo6DropDown(Sender: TObject);
    procedure RxDBLookupCombo6CloseUp(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RxDBLookupCombo5Change(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure DBCheckBox2Enter(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RxDBLookupCombo7Enter(Sender: TObject);
    procedure VDBGrid1Enter(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure CurrencyEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit5Enter(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure tProdutoCor2AfterScroll(DataSet: TDataSet);
    procedure BitBtn18Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure RxDBGrid3DblClick(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure tProdutoCli2AfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure RxSpeedButton3Click(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn16Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Panel2Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure DBCheckBox4Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn11Click(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure RzDBLookupComboBox1DropDown(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RxDBLookupCombo11Enter(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton11Click(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure SMDBGrid4DblClick(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure FilenameEdit1Change(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
  private
    { Private declarations }
    vGravarAux : Boolean;
    texto1 : String;
    vCodControle : Integer;

    //Variáves para a Geração do Código de Barra EAN
    vCodPrincipal : Integer;
    vCodSeq   : Integer;
    vGeraCod  : Boolean;
    vDigito   : String;
    vCodMaximo : String;
    //***********************

    procedure Habilita;
    procedure Opcoes;
    procedure Opcoes2;
    procedure Posiciona_Foto;
    //procedure Verifica_Consumo;
    //procedure Le_Material;
    procedure Excluir_Registro;
    procedure Abre_PedAmostra;
    procedure Monta_AuxiliarAmostra;
    procedure Excluir_PedAmostra;
    procedure Abre_Produto_Ferramental;
    procedure Abre_Produto_Tempo;


    //Código de Barras
    procedure Verifica_CBarra(Codigo : Integer);
    procedure Gera_CodBarra;
    procedure Calcula_DigitoEAN13;
    procedure Grava_CBarra(CodCor, CodGrade,Posicao : Integer ; Tamanho : String);
    procedure Le_Grade_CBarra(CodCor : Integer);
    procedure Monta_CodMaximo;
    //**************

  public
    { Public declarations }

    vReferencia_Tipo : String;

    FDmCadProduto: TdmCadProduto;

    procedure Abre_Produto_Posicao;
    procedure Grava_Produto_Posicao;
    procedure Abre_Processo;

  end;

var
  fProduto: TfProduto;
  i2 : Integer;
  vFotoJpeg : string;
  vConfirma : String[1];

implementation

uses UGrupos, UDM1, UFornecedores, UGrade, UCor, UClasFiscal, UMaterial, URelFichaTecnica, UDM2, USetor, UProdutoConsumo, UCBarra,
  uCopiaProdCli, UTabPreco, UCopiaProdCliCor, UProdutoEdi, UCopiaProduto, UProdutoMat, USitTributaria, UTipoProcesso, UProdutoComb,
  UCSTIPI, UDMTabImposto, UOrigemProd, USitTributariaSimples, UDMMaterialFornecedor, uMaterialFornecedor, UConsProduto2,
  uIntegracao, UCliente, UDMSitTrib_CF, UDMPedAmostra, UPedAmostra,
  URelPedAmostra, UProdutoPosicao, UReferenciaInf, UDMProcesso,
  UProdutoFerramental, UProdutoTempo, uUtilPadrao, URelFichaTecnicaMet,
  DmdDatabase;

{$R *.DFM}

procedure TfProduto.Excluir_Registro;
var
  vCodAux: Integer;
begin
  if DM1.tParametrosUsaFB.AsBoolean then
  begin
    if DM1.tParametrosUsaPedAmostra.AsBoolean then
    begin
      Abre_PedAmostra;
      DMPedAmostra.cdsPedAmostra.First;
      while not DMPedAmostra.cdsPedAmostra.Eof do
        Excluir_PedAmostra;
    end;
  end;

  DM1.tProdutoCor.First;
  while not DM1.tProdutoCor.Eof do
    DM1.tProdutoCor.Delete;
  DM1.tProdutoComb.Filtered := False;
  DM1.tProdutoComb.First;
  while not DM1.tProdutoComb.Eof do
  begin
    DM1.tProdutoMat.First;
    while not DM1.tProdutoMat.Eof do
    begin
      DM1.tProdutoConsumo.First;
      while not DM1.tProdutoConsumo.Eof do
      begin
        DM1.tProdutoConsumoItem.First;
        while not DM1.tProdutoConsumoItem.Eof do
          DM1.tProdutoConsumoItem.Delete;
        DM1.tProdutoConsumo.Delete;
      end;
      DM1.tProdutoMat.Delete;
    end;
    DM1.tProdutoComb.Delete;
  end;
  DM1.tProdutoCli.First;
  while not DM1.tProdutoCli.Eof do
    DM1.tProdutoCli.Delete;
  DM1.tProdutoGrade.First;
  while not DM1.tProdutoGrade.Eof do
  begin
    DM1.tProdutoTam.First;
    while not DM1.tProdutoTam.Eof do
      DM1.tProdutoTam.Delete;
    DM1.tProdutoGrade.Delete;
  end;
  DMMaterialFornecedor.Excluir_MaterialFornecedor(DM1.tProdutoCodigo.AsInteger,0,0);
  vCodAux := DM1.tProdutoCodigo.AsInteger;
  DM1.tProduto.Delete;

  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Excluir_Produto_FB(vCodAux);
end;

{procedure TfProduto.Le_Material;
var
  vFlag: Boolean;
  texto2: String;
begin
  if DM1.tProdutoMat.RecordCount < 1 then
    texto1 := 'Não existe material para o consumo'
  else
    begin
      DM1.tProdutoMat.First;
      while not DM1.tProdutoMat.Eof do
        begin
          if (DM1.tProdutoMatConsumo.AsString = 'G') and (DM1.tProdutoMatQtd.AsFloat <= 0) then
            texto1 := 'Não existe consumo no material ' + DM1.tProdutoMatlkNomeMaterial.AsString
          else
          if (DM1.tProdutoMatConsumo.AsString = 'T') and (DM1.tProdutoConsumo.RecordCount < DM1.tProdutoGrade.RecordCount) then
            texto1 := 'Não existe consumo no material ' + DM1.tProdutoMatlkNomeMaterial.AsString + '  nas grades'
          else
          begin
            DM1.tProdutoConsumo.First;
            while not DM1.tProdutoConsumo.Eof do
            begin
              vFlag  := False;
              texto2 := '';
              DM1.tProdutoConsumoItem.First;
              while not DM1.tProdutoConsumoItem.Eof do
              begin
                if (DM1.tProdutoConsumoItemConsumo.AsFloat <= 0) and (vFlag = False) then
                  texto2 := 'Não existe consumo no material ' + DM1.tProdutoMatlkNomeMaterial.AsString
                else
                begin
                  vFlag  := True;
                  texto2 := '';
                  DM1.tProdutoConsumoItem.Last;
                end;
                //if texto1 <> '' then
                //  DM1.tProdutoConsumoItem.Last;
                DM1.tProdutoConsumoItem.Next;
              end;
              if texto2 <> '' then
                texto1 := texto1 + ' (Grade = ' + DM1.tProdutoConsumolkNomeGrade.AsString + '  ' + texto2 + ')';
                //DM1.tProdutoConsumo.Last;
              DM1.tProdutoConsumo.Next;
            end;
          end;
          if texto1 <> '' then
            DM1.tProdutoMat.Last;
          DM1.tProdutoMat.Next;
        end;
    end;
  if texto1 <> '' then
    if DM1.tProdutoCor.RecordCount > 0 then
      texto1 := texto1 + ' na cor ' + DM1.tProdutoCorlkNomeCor.AsString;
end;}

{procedure TfProduto.Verifica_Consumo;
begin
  DM1.tProdutoComb.Filtered := False;
  DM1.tProdutoComb.Refresh;
  DM1.tProdutoComb.First;
  texto1 := '';
  if DM1.tProdutoCor.RecordCount < 1 then
    Le_Material
  else
  if DM1.tProdutoCor.RecordCount > 0 then
  begin
    DM1.tProdutoCor.First;
    while not DM1.tProdutoCor.Eof do
    begin
      if not DM1.tProdutoCorInativo.AsBoolean then
        begin
          DM1.tProdutoComb.Filtered := False;
          DM1.tProdutoComb.Filter   := 'CodCor = '''+DM1.tProdutoCorCodCor.AsString+'''';
          DM1.tProdutoComb.Filtered := True;
          DM1.tProdutoComb.Refresh;
          DM1.tProdutoComb.First;
          if DM1.tProdutoMat.RecordCount < 1 then
          begin
            ShowMessage('Não existe material cadastrado na cor ' + DM1.tProdutoCorlkNomeCor.AsString);
            DM1.tProdutoCor.Last;
            vGravarAux := False;
            exit;
          end
          else
            Le_Material;
          //Verifica o preço
          if texto1 = '' then
          begin
            if not(tTabPreco.Locate('CodProduto;CodCor',VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tProdutoCorCodCor.AsString]),[loCaseInsensitive]))
               or ((tTabPrecoPreco.AsFloat <= 0) and ((tTabPrecoPrecoMObra.AsFloat <= 0))) then
              texto1 := 'Preço não informado na cor ' + DM1.tProdutoCorlkNomeCor.AsString;
          end;
        end;
      DM1.tProdutoCor.Next;
    end;
  end;
  if texto1 <> '' then
  begin
    vGravarAux := False;
    ShowMessage(texto1);
  end;
  DM1.tProdutoComb.Filtered := False;
end;}

procedure TfProduto.Habilita;
begin
  Panel2.Enabled            := not(Panel2.Enabled);
  Panel4.Enabled            := not(Panel4.Enabled);
  Panel6.Enabled            := not(Panel6.Enabled);
  Panel8.Enabled            := not(Panel8.Enabled);
  Panel9.Enabled            := not(Panel9.Enabled);
  Panel11.Enabled           := not(Panel11.Enabled);
  BitBtn1.Enabled           := not(BitBtn1.Enabled);
  BitBtn2.Enabled           := not(BitBtn2.Enabled);
  BitBtn3.Enabled           := not(BitBtn3.Enabled);
  BitBtn4.Enabled           := not(BitBtn4.Enabled);
  BitBtn5.Enabled           := not(BitBtn5.Enabled);
  BitBtn6.Enabled           := not(BitBtn6.Enabled);
  BitBtn7.Enabled           := not(BitBtn7.Enabled);
  BitBtn8.Enabled           := not(BitBtn8.Enabled);
  BitBtn9.Enabled           := not(BitBtn9.Enabled);
  BitBtn13.Enabled          := not(BitBtn13.Enabled);
  BitBtn11.Enabled          := not(BitBtn11.Enabled);
  BitBtn12.Enabled          := not(BitBtn12.Enabled);
  BitBtn14.Enabled          := not(BitBtn14.Enabled);
  BitBtn16.Enabled          := not(BitBtn16.Enabled);
  BitBtn17.Enabled          := not(BitBtn17.Enabled);
  BitBtn18.Enabled          := not(BitBtn18.Enabled);
  BitBtn19.Enabled          := not(BitBtn19.Enabled);
  BitBtn21.Enabled          := not(BitBtn21.Enabled);
  BitBtn22.Enabled          := not(BitBtn22.Enabled);
  BitBtn23.Enabled          := not(BitBtn23.Enabled);
  BitBtn33.Enabled          := not(BitBtn33.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  RxDBLookupCombo2.Enabled  := not(RxDBLookupCombo2.Enabled);
  RxDBLookupCombo7.Enabled  := not(RxDBLookupCombo7.Enabled);
  SpeedButton6.Enabled      := not(SpeedButton6.Enabled);
  SpeedButton7.Enabled      := not(SpeedButton7.Enabled);
  VDBGrid1.Columns[1].ReadOnly := not(VDBGrid1.Columns[1].ReadOnly);
  VDBGrid1.Columns[2].ReadOnly := not(VDBGrid1.Columns[2].ReadOnly);
  VDBGrid1.ReadOnly            := not(VDBGrid1.ReadOnly);

  SMDBGrid3.Columns[0].ReadOnly := True;
  SMDBGrid3.Columns[1].ReadOnly := True;
  SMDBGrid3.Columns[2].ReadOnly := not(SMDBGrid3.Columns[2].ReadOnly);
  SMDBGrid3.Columns[3].ReadOnly := True;
  SMDBGrid3.Columns[4].ReadOnly := True;
  SMDBGrid3.Columns[5].ReadOnly := True;
end;

procedure TfProduto.Opcoes2;
begin
  Posiciona_Foto;
  GroupBox1.Enabled         := DM1.tProdutoLancaCor.AsBoolean;
  TabSheet5.TabVisible      := DM1.tProdutoLancaGrade.AsBoolean;
  DM2.qGrupoItem.Close;
  if DM1.tProdutoCodGrupo.AsInteger > 0 then
  begin
    DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := DM1.tProdutoCodGrupo.AsInteger;
    DM2.qGrupoItem.Open;
  end;
  if DM1.tParametrosUsaPedAmostra.AsBoolean then
    DMPedAmostra.cdsPedAmostra.Close;
  FilenameEdit1.Text := DM1.tProdutoEndArquivoCNC.AsString;
end;

procedure TfProduto.Opcoes;
begin
  GroupBox1.Enabled         := DBCheckBox4.Checked;
  if (DBCheckBox3.Checked) or not(DBCheckBox4.Checked) then
    begin
      DBCheckBox7.Checked := False;
      DBCheckBox7.Enabled := False;
    end
  else
  if not(DBCheckBox3.Checked) and (DBCheckBox4.Checked) then
    DBCheckBox7.Enabled := True;

  DM2.qGrupoItem.Close;
  if DM1.tProdutoCodGrupo.AsInteger > 0 then
  begin
    DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := DM1.tProdutoCodGrupo.AsInteger;
    DM2.qGrupoItem.Open;
  end;
end;

procedure Grava_Imagem_JPEG(Tabela:TTable;Campo:TBlobField;Foto:TImage;Dialog:TOpenPictureDialog);
var
  BS : TBlobStream;
  MinhaImagem : TJPEGImage;
begin
  Dialog.InitialDir := 'C:\';
  Dialog.Execute;
  if Dialog.FileName <> '' then
    begin
      if not (DM1.tProduto.State in [dsEdit, dsInsert]) then
        DM1.tProduto.Edit;
      BS := TBlobStream.Create((Campo as TBlobField), BMWrite);
      MinhaImagem := TJPEGImage.Create;
      MinhaImagem.LoadFromFile(Dialog.FileName);
      MinhaImagem.SaveToStream(BS);
      Foto.Picture.Assign(MinhaImagem);
      BS.Free;
      MinhaImagem.Free;
    end;
end;

procedure Le_Imagem_JPEG(Campo:TBlobField;Foto:TImage);
var
  BS : TBlobStream;
  MinhaImagem : TJPEGImage;
begin
  if Campo.AsString <> '' then
    begin
      BS := TBlobStream.Create((Campo as TBlobField), BMRead);
      MinhaImagem := TJPEGImage.Create;
      MinhaImagem.LoadFromStream(BS);
      Foto.Picture.Assign(MinhaImagem);
      BS.Free;
      MinhaImagem.Free;
    end
  else
    Foto.Picture.LoadFromFile('C:\');
end;

procedure TfProduto.Posiciona_Foto;
begin
  if DM1.tProdutoFotoJpeg.IsNull then
    Image1.Picture := nil
  else
    Le_Imagem_JPEG(DM1.tProdutoFotoJpeg,Image1);
end;

procedure TfProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM2.qFabrica.Active      := False;
  DM2.qRepresentada.Active := False;
  
  DM2.qTipoProcesso.Close;
  qProduto.Close;
  qVerificaGrade.Close;
  qProdutoCor.Close;

  if Screen.FormCount < 3 then
  begin
    DM1.tProdutoComb.Close;
    DM1.tProdutoMat.Close;
    DM1.tProdutoTam.Close;
    DM1.tProdutoGrade.Close;
    DM1.tProdutoCor.Close;
    DM1.tProduto.Close;
    DM1.tGrupo.Close;
    DM1.tCor.Close;
    DM1.tClasFiscal.Close;
    DM1.tSitTributaria.Close;
    DM1.tGradeItem.Close;
    DM1.tGrade.Close;
    DM1.tTabPreco.Close;
    DM1.tCliente.Close;
    DM1.tFornecedores.Close;
    DM1.tUnidade.Close;
    DM1.tSetor.Close;
    DM1.tPosicao.Close;
    DM1.tCSTIPI.Close;
  end;

  vCodProdutoPos := 0;
  DM1.tProduto.Filtered := False;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProdutoMat.Filtered     := False;
  DM1.tProdutoComb.Filtered    := False;
                           
  RxDBFilter1.Active       := False;
  RxDBFilter3.Active       := False;
  RxDBFilter4.Active       := False;

  if DMTabImposto.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMTabImposto);
  if DMMaterialFornecedor.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMMaterialFornecedor);
  if DMSitTrib_CF.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMSitTrib_CF);
  if DMProcesso.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMProcesso);
  if DMCadProduto.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMCadProduto);
  FreeAndNil(FDMCadProduto);
  if DM1.tParametrosUsaPedAmostra.AsBoolean then
    if DMPedAmostra.Owner.ClassName = Self.ClassName then
      FreeAndNil(DMPedAmostra);

  Action := Cafree;
end;

procedure TfProduto.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfProduto.SpeedButton1Click(Sender: TObject);
begin
  if DM1.tUsuarioGrupos.AsBoolean then
    begin
      fGrupos := TfGrupos.Create(Self);
      fGrupos.ShowModal;
      DM1.tGrupo.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de grupos!');
end;

procedure TfProduto.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsProduto.AsBoolean then
  begin
    BitBtn2.Tag  := 0;
    DM1.tProduto.IndexFieldNames := 'Codigo';
    tProdutoIns.IndexFieldNames  := 'Codigo';
    tProdutoIns.Refresh;
    tProdutoIns.Last;
    DM1.tProduto.Refresh;
    DM1.tProduto.Insert;
    DM1.tProdutoCodigo.AsInteger       := tProdutoInsCodigo.AsInteger + 1;
    DM1.tProdutoProdMat.AsString       := 'P';
    DM1.tProdutoImpTabPreco.AsBoolean  := True;
    Dm1.tProdutoAliqIcms.AsFloat       := 17.00;
    DM1.tProdutoUnidade.AsString       := DM1.tParametrosUnidadePadrao.AsString;
    DM1.tProduto.Post;
    DM1.tProduto.Edit;
    vCodControle := DM1.tProdutoCodigo.AsInteger;
      
    TabSheet5.TabVisible  := DM1.tProdutoLancaGrade.AsBoolean;
    CurrencyEdit6.Enabled := False;
    Habilita;
    Opcoes;
    DBCheckBox2Exit(Sender);
    DBEdit1.SetFocus;
    PageControl1.ActivePage := TabSheet1;
    DBCheckBox4Click(Sender);

    if DM1.tParametrosUsaReferenciaEstruturada.AsBoolean then
      SpeedButton12Click(Sender);
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfProduto.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltProduto.AsBoolean then
  begin
    BitBtn2.Tag := 1;
    vFotoJpeg   := DM1.tProdutoFotoJpeg.AsString;
    DM1.tProduto.Edit;
    TabSheet5.TabVisible := DM1.tProdutoLancaGrade.AsBoolean;
    vCodControle := DM1.tProdutoCodigo.AsInteger;
    Habilita;
    DBEdit1.SetFocus;
    DBCheckBox4Click(Sender);
    DBCheckBox2Exit(Sender);
    CurrencyEdit6.Enabled := DM1.tProdutoPrecoCor.AsBoolean;

    tProdutoCli2.Filtered := False;
    if DM1.tProdutoLancaCor.AsBoolean then
      if tProdutoCor2CodCor.AsInteger > 0 then
      begin
        tProdutoCli2.Filter   := 'CodCor = '''+tProdutoCor2CodCor.AsString+'''';
        tProdutoCli2.Filtered := True;
      end;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfProduto.BitBtn4Click(Sender: TObject);
begin

  if BitBtn2.Tag = 1 then
    begin
      if DM1.tProduto.State in [dsbrowse] then
        DM1.tProduto.Edit;
      DM1.tProdutoComb.Filtered     := False;
      DM1.tProdutoFotoJpeg.AsString := vFotoJpeg;
      DM1.tProduto.Cancel;
      //Posiciona_Foto;

      if not DM1.tProdutoLancaGrade.AsBoolean then
      begin
        DM1.tProdutoGrade.First;
        while not DM1.tProdutoGrade.Eof do
        begin
          DM1.tProdutoTam.First;
          while not DM1.tProdutoTam.Eof do
            DM1.tProdutoTam.Delete;
          DM1.tProdutoGrade.Delete;
        end;
      end;
    end
  else
  if BitBtn2.Tag = 0 then
    begin
      if vCodControle = DM1.tProdutoCodigo.AsInteger then
        Excluir_Registro
      else
        DM1.tProduto.Cancel;
    end;

  Habilita;
  PageControl1.ActivePage := TabSheet1;
  BitBtn2.Tag := 0;
end;

procedure TfProduto.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcProduto.AsBoolean then
  begin
    if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      qProduto.Close;
      qProduto.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qProduto.Open;
      if qProduto.RecordCount > 0 then
        ShowMessage('Este produto já foi usado, não pode ser excluído!')
      else
      begin
        tTabPreco.Filtered := False;
        tTabPreco.Filter   := 'CodProduto = '''+DM1.tProdutoCodigo.AsString+'''';
        tTabPreco.Filtered := True;
        if tTabPreco.RecordCount > 0 then
          ShowMessage('Este produto está cadastrado na tabela de preço!')
        else
         Excluir_Registro;
      end;
      tTabPreco.Filtered := False;
      qProduto.Close;
    end
   end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfProduto.BitBtn5Click(Sender: TObject);
begin
  if Trim(DM1.tProdutoOrigemProd.AsString) = '' then
  begin
    ShowMessage('Falta informar a origem!');
    exit;
  end;
  if Trim(DM1.tProdutoReferencia.AsString) = '' then
  begin
    DM1.tProdutoReferencia.AsString := 'P.' + FormatFloat('000000',DM1.tProdutoCodigo.AsInteger);
    //ShowMessage('Falta informar a referência!');
    //exit;
  end;
  if DM1.tProdutoNome.AsString = '' then
  begin
    ShowMessage('Falta informar o nome!');
    exit;
  end;
  if (DM1.tProdutoLancaGrade.AsBoolean) and (DM1.tProdutoGrade.RecordCount <= 0) then
  begin
    ShowMessage('Falta lançar a grade!');
    exit;
  end;
  if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoCor.RecordCount <= 0) then
  begin
    ShowMessage('Falta lançar a cor!');
    exit;
  end;
  if Trim(DM1.tProdutoCodClasFiscal.AsString) = '' then
  begin
    ShowMessage('Classificação Fiscal não foi informada!');
    exit;
  end;
  if Trim(DM1.tProdutoUnidade.AsString) = '' then
  begin
    ShowMessage('Unidade de Medida não foi informada!');
    exit;
  end;

  vGravarAux := True;
  //Tirado dia 01/04/2009 por Cleomar
  //Verifica_Consumo;
  if not vGravarAux then
    if MessageDlg(texto1 +#13#13+
       'Confirma a gravação do produto?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
      exit;

  try
    if DM1.tProduto.State in [dsEdit,dsInsert] then
    begin
      DM1.tProdutoEndArquivoCNC.AsString := FilenameEdit1.Text;
      DM1.tProduto.Post;
      if DM1.tParametrosUsaFB.AsBoolean then
        Prc_Gravar_Produto_FB(DM1.tProdutoCodigo.AsInteger);
    end;

    if DM1.tProdutoLancaGrade.AsBoolean then
    begin
      if DM1.tProdutoGrade.RecordCount > 0 then
      begin
        DM1.tProdutoGrade.First;
        while not DM1.tProdutoGrade.Eof do
        begin
          DM1.tProdutoTam.First;
          if DM1.tProdutoTamPosicao.AsInteger < 1 then
            DM1.tProdutoTam.Delete;
          DM1.tProdutoGrade.Next;
        end;
      end;
    end;

    DM1.tProduto.Refresh;
    DM1.tProdutoGrade.Refresh;
    DM1.tProdutoTam.Refresh;
    Habilita;
    //BitBtn1.SetFocus;
    BitBtn2.SetFocus;
    BitBtn2.Tag := 0;
  except
    on E: Exception do
      ShowMessage('Não foi possível gravar, ' + E.Message);
  end;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfProduto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tProduto.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o produto antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfProduto.SpeedButton3Click(Sender: TObject);
begin
  if DM1.tUsuarioClasFiscal.AsBoolean then
    begin
      fClasFiscal := TfClasFiscal.Create(Self);
      fClasFiscal.ShowModal;
      DM1.tClasFiscal.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Clas.fiscal!');
end;

procedure TfProduto.BitBtn7Click(Sender: TObject);
begin
  if not (RxDBLookupCombo2.Text <> '') then
    ShowMessage('É obrigatório informar o nome da cor!')
  else
    begin
      DM1.tProdutoCor.SetKey;
      DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      if RxDBLookupCombo2.Text <> '' then
        DM1.tProdutoCorCodCor.AsInteger     := RxDBLookupCombo2.KeyValue;
      if DM1.tProdutoCor.GotoKey then
        begin
          ShowMessage('Esta cor já esta lançada para a referência!');
          RxDBLookupCombo2.ClearValue;
          RxDBLookupCombo2.SetFocus;
        end
      else
        begin
          DM1.tProdutoCor.Insert;
          DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          if RxDBLookupCombo2.Text <> '' then
            DM1.tProdutoCorCodCor.AsInteger := RxDBLookupCombo2.KeyValue;
          if DM1.tProdutoPrecoCor.AsBoolean then
            DM1.tProdutoCorVlrVenda.AsFloat   := CurrencyEdit6.Value
          else
            DM1.tProdutoCorVlrVenda.AsFloat   := 0;
          DM1.tProdutoCor.Post;
          DM1.tProdutoCor.Refresh;
          RxDBLookupCombo2.ClearValue;
        end;
    end;
end;

procedure TfProduto.BitBtn8Click(Sender: TObject);
begin
  RxDBLookupCombo2.ClearValue;
  RxDBLookupCombo2.SetFocus;
  CurrencyEdit6.Clear;
end;

procedure TfProduto.BitBtn9Click(Sender: TObject);
begin
  if not DM1.tProdutoCor.IsEmpty then
  begin
    if MessageDlg('Deseja realmente excluir esta cor?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      qProdutoCor.Close;
      qProdutoCor.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qProdutoCor.Params[1].AsInteger := DM1.tProdutoCorCodCor.AsInteger;
      qProdutoCor.Open;
      if qProdutoCor.RecordCount > 0 then
        ShowMessage('Cor já foi usada, não pode ser excluída!')
      else
      begin
        tTabPreco.Open;
        tTabPreco.Filtered := False;
        tTabPreco.Filter   := 'CodProduto = '''+IntToStr(Dm1.tProdutoCodigo.AsInteger)+''' and CodCor = '''+DM1.tProdutoCorCodCor.AsString+'''';
        tTabPreco.Filtered := True;
        if tTabPreco.RecordCount > 0 then
          ShowMessage('Esta cor esta cadastrada dentro da tabela de preço!')
        else
        begin
          DM1.tProdutoMat.First;
          while not DM1.tProdutoMat.Eof do
          begin
            DM1.tProdutoConsumo.First;
            while not DM1.tProdutoConsumo.Eof do
            begin
              DM1.tProdutoConsumoItem.First;
              while not DM1.tProdutoConsumoItem.Eof do
                DM1.tProdutoConsumoItem.Delete;
              DM1.tProdutoConsumo.Delete;
            end;
            DM1.tProdutoMat.Delete;
          end;
          DM1.tProdutoCli.Filtered := False;
          DM1.tProdutoCli.Filter   := 'CodCor = '''+Dm1.tProdutoCorCodCor.AsString+'''';
          DM1.tProdutoCli.Filtered := True;
          DM1.tProdutoCli.First;
          while not DM1.tProdutoCli.Eof do
            DM1.tProdutoCli.Delete;
          DM1.tProdutoCli.Filtered := False;

          DMMaterialFornecedor.Excluir_MaterialFornecedor(DM1.tProdutoCodigo.AsInteger,DM1.tProdutoCorCodCor.AsInteger,0);
          DM1.tProdutoCor.Delete;
        end;
        tTabPreco.Filtered := False;
        tTabPreco.Close;
      end;
    end;
  end
  else
    ShowMessage('Não há registro p/ ser excluído!');
end;

procedure TfProduto.GroupBox2Exit(Sender: TObject);
begin
  Opcoes;
end;

procedure TfProduto.DBCheckBox2Exit(Sender: TObject);
begin
  DBCheckBox3.Enabled       := DBCheckBox2.Checked;
  TabSheet5.TabVisible      := DBCheckBox2.Checked;
end;

procedure TfProduto.BitBtn13Click(Sender: TObject);
begin
  Grava_Imagem_JPEG(DM1.tProduto,DM1.tProdutoFotoJpeg,Image1,OpenPictureDialog1);
end;

procedure TfProduto.FormShow(Sender: TObject);
begin
  //NFe 2.0
  if not Assigned(DMTabImposto) then
    DMTabImposto := TDMTabImposto.Create(Self);
  if not Assigned(DMMaterialFornecedor) then
    DMMaterialFornecedor := TDMMaterialFornecedor.Create(Self);
  if not Assigned(DMSitTrib_CF) then
    DMSitTrib_CF := TDMSitTrib_CF.Create(Self);
  if not Assigned(DMProcesso) then
    DMProcesso := TDMProcesso.Create(Self);

  BitBtn30.Visible := DM1.tEmpresaNivel.AsInteger  >= 101;

  TabSheet8.TabVisible  := False;
  TabSheet3.TabVisible  := ((DM1.tEmpresaNivel.AsInteger <> 99) and (DM1.tEmpresaNivel.AsInteger <> 909)
                            and (DM1.tParametrosTipoEmpresa.AsString <> 'C'));
  DBCheckBox10.Visible := (DM1.tParametrosTipoEmpresa.AsString <> 'C');
  Label23.Visible      := (DM1.tParametrosTipoEmpresa.AsString <> 'C');
  DBEdit3.Visible      := (DM1.tParametrosTipoEmpresa.AsString <> 'C');

  Label5.Visible            := (DM1.tParametrosTipoEmpresa.AsString <> 'I');
  RxDBLookupCombo11.Visible := (DM1.tParametrosTipoEmpresa.AsString <> 'I');
  SpeedButton5.Visible      := (DM1.tParametrosTipoEmpresa.AsString <> 'I');

  GroupBox3.Visible         := (DM1.tParametrosTipoEmpresa.AsString <> 'I');

  Label9.Visible            := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  RxDBLookupCombo1.Visible  := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  SpeedButton2.Visible      := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  SpeedButton10.Visible     := DM1.tParametrosMostrarSitTribProduto.AsBoolean;

  Label18.Visible           := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  RxDBLookupCombo5.Visible  := DM1.tParametrosMostrarSitTribProduto.AsBoolean;
  SpeedButton8.Visible      := DM1.tParametrosMostrarSitTribProduto.AsBoolean;

  SpeedButton12.Visible     := DM1.tParametrosUsaReferenciaEstruturada.AsBoolean;

  BitBtn30.Visible          := (DM1.tParametrosTipoEmpresa.AsString = 'I');

  Label37.Visible           := DM1.tParametrosUsaFB.AsBoolean;
  RxDBLookupCombo13.Visible := DM1.tParametrosUsaFB.AsBoolean;
  if DM1.tParametrosUsaFB.AsBoolean then
  begin
    DMSitTrib_CF.cdsSitTrib_CF.Close;
    DMSitTrib_CF.cdsSitTrib_CF.Open;
  end;

  DM1.tGrupo.Open;
  DM1.tGrupoItem.Open;
  DM1.tCor.Open;
  DM1.tClasFiscal.Open;
  DM1.tCliente.Open;
  DM1.tSitTributaria.Open;
  DM1.tGrade.Open;
  DM1.tGradeItem.Open;
  DM1.tGradeItemlk.Open;
  DM1.tTabPreco.Open;
  DM1.tTabPrecoHist.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  DM1.tProdutoCli.Open;
  DM1.tProdutoConsumo.Open;
  DM1.tProdutoConsumoItem.Open;
  DM1.tProdutoGrade.Open;
  DM1.tProdutoTam.Open;
  DM1.tProduto2.Open;
  Dm1.tFornecedores.Open;
  DM1.tCliente.Open;
  DM1.tUnidade.Open;
  DM1.tSetor.Open;
  DM1.tPosicao.Open;
  DM1.tCSTIPI.Open;
  DM1.tCBarra.Open;
  DM1.tParametros.Open;
  DM1.tParametrosPosicao.Open;

  tCBarra.Open;
  tProdutoIns.Open;
  tProdutoCor2.Open;
  tProdutoCli2.Open;
  tTabPreco.Open;
  tProdutoMatIns.Open;

  DM2.qTipoProcesso.Open;

  RxDBFilter3.Active      := True;
  if vCodProdutoPos > 0 then
    DM1.tProduto.Locate('Codigo',vCodProdutoPos,[loCaseInsensitive]);
  Le_Imagem_JPEG(DM1.tProdutoFotoJpeg,Image1);

  TabSheet5.TabVisible := DM1.tProdutoLancaGrade.AsBoolean;

  DBEdit3.Visible := False;
  Label23.Visible := False;
  if ((dm1.tParametrosTipoEmpresa.AsString = 'I') or (dm1.tParametrosTipoEmpresa.AsString = 'A')) and (not dm1.tParametrosCartonagem.AsBoolean) then
  begin
    DBEdit3.Visible := True;
    Label23.Visible := True;
  end;

  DM2.qGrupoItem.Close;
  if DM1.tProdutoCodGrupo.AsInteger > 0 then
  begin
    DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := DM1.tProdutoCodGrupo.AsInteger;
    DM2.qGrupoItem.Open;
  end;

  Label38.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
  Label39.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
  RxDBLookupCombo14.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;
  RxDBLookupCombo15.Visible := DM1.tParametrosUsaRepresentada.AsBoolean;

  DM2.qFabrica.Active      := DM1.tParametrosUsaRepresentada.AsBoolean;
  DM2.qRepresentada.Active := DM1.tParametrosUsaRepresentada.AsBoolean;
  RxDBFilter1.Active       := DM1.tParametrosUsaRepresentada.AsBoolean;

  if DM1.tParametrosUsaPedAmostra.AsBoolean then
  begin
    if not Assigned(DMPedAmostra) then
      DMPedAmostra := TDMPedAmostra.Create(Self);
  end;

  TabSheet7.TabVisible  := DM1.tParametrosUsaPedAmostra.AsBoolean;
  BitBtn27.Enabled      := DM1.tUsuarioPedAmostra.AsBoolean;
  BitBtn15.Enabled      := DM1.tUsuarioInsPedAmostra.AsBoolean;
  BitBtn25.Enabled      := DM1.tUsuarioExcPedAmostra.AsBoolean;
  BitBtn26.Enabled      := DM1.tUsuarioAltPedAmostra.AsBoolean;
  TabSheet9.TabVisible  := DM1.tParametrosUsaRepresentada.AsBoolean;
  TabSheet10.TabVisible := DM1.tParametrosMetalurgica.AsBoolean;

  Label28.Visible  := DM1.tParametrosMostrarPrecoProdFinal.AsBoolean;
  DBEdit14.Visible := DM1.tParametrosMostrarPrecoProdFinal.AsBoolean;
  Label32.Visible  := DM1.tParametrosMostrarPrecoProdFinal.AsBoolean;
  DBEdit23.Visible := DM1.tParametrosMostrarPrecoProdFinal.AsBoolean;

  DBCheckBox8.Visible := DM1.tUsuarioGerarCodBarra.AsBoolean;
  DBCheckBox8.Enabled := DM1.tUsuarioInsGerarCodBarra.AsBoolean;
end;

procedure TfProduto.RxDBLookupCombo2DropDown(Sender: TObject);
begin
  DM1.tCor.IndexFieldNames := 'Nome';
end;

procedure TfProduto.RxDBLookupCombo2CloseUp(Sender: TObject);
begin
  DM1.tCor.IndexFieldNames := 'Codigo';
end;

procedure TfProduto.RxDBLookupCombo4Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfProduto.DBEdit1Exit(Sender: TObject);
//var
  //Texto1 : String[1];
  //i : Integer;
begin
  //Tirado para a Pollytex dia 01/09/2008, porque podem digitar referências com espaços
  {i := 0;
  while i <= Length(DM1.tProdutoReferencia.AsString) do
    begin
      inc(i);
      Texto1 := Copy(DM1.tProdutoReferencia.AsString,i,1);
      if Texto1 = ' ' then
        begin
          ShowMessage('O código da referência não pode conter espaços');
          i := Length(DM1.tProdutoReferencia.AsString) + 1;
          DM1.tProdutoReferencia.Clear;
          DBEdit1.SetFocus;
        end;
    end;}
  if not(DM1.tParametrosReferenciaAceitarDupl.AsBoolean) then
  begin
    if DM1.tProdutoReferencia.AsString <> '' then
    begin
      if tProdutoIns.Locate('Referencia',DM1.tProdutoReferencia.AsString,[loCaseInsensitive]) then
      begin
        if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
        begin
          ShowMessage('Referência cadastrada no código ' + tProdutoInsCodigo.AsString);
          DM1.tProdutoReferencia.Clear;
          DBEdit1.SetFocus;
        end;
      end;
    end;
    if DM1.tProdutoReferencia.AsString <> '' then
    begin
      if tProdutoIns.Locate('Referencia2',DM1.tProdutoReferencia.AsString,[loCaseInsensitive]) then
      begin
        if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
        begin
          ShowMessage('Referência cadastrada como R.C200!');
          DM1.tProdutoReferencia.Clear;
          DBEdit1.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure TfProduto.RxDBLookupCombo6DropDown(Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Nome';
end;

procedure TfProduto.RxDBLookupCombo6CloseUp(Sender: TObject);
begin
  DM1.tGrupo.IndexFieldNames := 'Codigo';
end;

procedure TfProduto.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Opcoes2;
end;

procedure TfProduto.RxDBLookupCombo5Change(Sender: TObject);
begin
  Opcoes2;
end;

procedure TfProduto.Image1DblClick(Sender: TObject);
begin
  if DM1.tProdutoFotoJpeg.AsString <> '' then
    if MessageDlg('Deseja realmente excluir esta figura?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
      begin
        Image1.Picture.Assign(nil);
        DM1.tProdutoFotoJpeg.Clear;
      end;
end;

procedure TfProduto.DBEdit11Exit(Sender: TObject);
begin
  //Foi tirado dia 29/09/2008, pq foi liberada a digitação das referências para a Pollytex
  {if tProdutoIns.Locate('Referencia;DescMaterial',VarArrayOf([DM1.tProdutoReferencia.AsString,DM1.tProdutoDescMaterial.AsString]),[loCaseInsensitive]) then
    begin
      if tProdutoInsCodigo.AsInteger <> DM1.tProdutoCodigo.AsInteger then
        begin
          ShowMessage('Referência com este material já cadastrada');
          DM1.tProdutoDescMaterial.Clear;
          DBEdit11.SetFocus;
        end;
    end;}
end;

procedure TfProduto.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  DM1.tProdutoEndEtiq.AsString := OpenPictureDialog2.FileName;
end;

procedure TfProduto.BitBtn19Click(Sender: TObject);
var
  vFlag : Boolean;
begin
  if not tProdutoCli2.IsEmpty then
    begin
      vFlag := False;
      if DM1.tUsuarioUsuario.AsString = 'CAROL' then
        vFlag := True
      else
      if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        vFlag := True;
      if vFlag then
        begin
          DM1.tProdutoCor.SetKey;
          DM1.tProdutoCorCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          DM1.tProdutoCorCodCor.AsInteger     := tProdutoCli2CodCor.AsInteger;
          if DM1.tProdutoCor.GotoKey then
            begin
              DM1.tProdutoCli.SetKey;
              DM1.tProdutoCliCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoCliCodCor.AsInteger     := tProdutoCli2CodCor.AsInteger;
              DM1.tProdutoCliCodCliente.AsInteger := tProdutoCli2CodCliente.AsInteger;
              DM1.tProdutoCliCodProdCli.AsString  := tProdutoCli2CodProdCli.AsString;
              DM1.tProdutoCliCodGrade.AsInteger   := tProdutoCli2CodGrade.AsInteger;
              DM1.tProdutoCliPosicao.AsInteger    := tProdutoCli2Posicao.AsInteger;
              if DM1.tProdutoCli.GotoKey then
                DM1.tProdutoCli.Delete;
            end;
          DM1.tProdutoCli.Refresh;
          tProdutoCli2.Refresh;
        end;
    end
  else
    ShowMessage('Não há registro para ser excluído!');
end;

procedure TfProduto.RxSpeedButton1Click(Sender: TObject);
var
  vProd : Integer;
  vCodCorAux : Integer;
begin
  try
    vProd := DM1.tProdutoCodigo.AsInteger;
    DM1.tProduto.Filtered := False;
    DM1.tProduto.Filter   := 'Codigo = '''+IntToStr(vProd)+'''';
    DM1.tProduto.Filtered := True;
    if DM1.tParametrosMetalurgica.AsBoolean then
    begin
      DM1.tProdutoCor.First;
      if DM1.tProdutoLancaCor.AsBoolean then
        vCodCorAux := DM1.tProdutoCorCodCor.AsInteger
      else
        vCodCorAux := 0;
      DM1.tProdutoComb.Filtered := False;
      DM1.tProdutoComb.Filter   := 'CodCor = '''+IntToStr(vCodCorAux)+'''';
      DM1.tProdutoComb.Filtered := True;

      DM1.tProdutoMat.Filtered := False;
      DM1.tProdutoMat.Filter   := 'Tipo = '''+'MAT'+'''';
      DM1.tProdutoMat.Filtered := True;

      Abre_Produto_Tempo;
      Abre_Produto_Ferramental;

      fRelFichaTecnicaMet := TfRelFichaTecnicaMet.Create(Self);
      fRelFichaTecnicaMet.RLReport1.Preview;
      fRelFichaTecnicaMet.RLReport1.Free;

    end
    else
    begin
      fRelFichaTecnica      := TfRelFichaTecnica.Create(Self);
      fRelFichaTecnica.QuickRep1.Preview;
      fRelFichaTecnica.QuickRep1.Free;
    end;
  finally
    DM1.tProdutoMat.Filtered     := False;
    DM1.tProdutoComb.Filtered    := False;
    DM1.tProduto.Filtered        := False;
    DM1.tProduto.IndexFieldNames := 'Codigo';
    DM1.tProduto.FindKey([vProd]);
    DM1.tProdutoComb.Filtered := False;
  end;
end;

procedure TfProduto.DBCheckBox4Click(Sender: TObject);
begin
  Opcoes;
end;

procedure TfProduto.TabSheet3Enter(Sender: TObject);
begin
  DM1.tProdutoCor.Refresh;
  tProdutoCor2.Open;
  tProdutoCli2.Filtered := False;
  if (DM1.tProdutoLancaCor.AsBoolean) and (tProdutoCli2CodCor.AsInteger > 0) then
  begin
    tProdutoCli2.Filter   := 'CodCor = '''+tProdutoCor2CodCor.AsString+'''';
    tProdutoCli2.Filtered := True;
  end;
end;

procedure TfProduto.TabSheet3Exit(Sender: TObject);
begin
  tProdutoCli2.Filtered := False;
end;

procedure TfProduto.BitBtn21Click(Sender: TObject);
begin
  if RxDBLookupCombo7.Text <> '' then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.SetKey;
      DM1.tGradeCodigo.AsInteger := RxDBLookupCombo7.KeyValue;
      if DM1.tGrade.GotoKey then
        begin
          DM1.tProdutoGrade.SetKey;
          DM1.tProdutoGradeCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          DM1.tProdutoGradeCodGrade.AsInteger   := DM1.tGradeCodigo.AsInteger;
          if DM1.tProdutoGrade.GotoKey then
            ShowMessage('Grade já existe, só vai incluir tamanhos!')
          else
            begin
              DM1.tProdutoGrade.Insert;
              DM1.tProdutoGradeCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoGradeCodGrade.AsInteger   := DM1.tGradeCodigo.AsInteger;
              DM1.tProdutoGrade.Post;
            end;
          DM1.tGradeItem.First;
          while not DM1.tGradeItem.Eof do
            begin
              DM1.tProdutoTam.SetKey;
              DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
              DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
              if not DM1.tProdutoTam.GotoKey then
                begin
                  DM1.tProdutoTam.Insert;
                  DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
                  DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
                  DM1.tProdutoTamTamanho.AsString     := DM1.tGradeItemTamanho.AsString;
                  DM1.tProdutoTam.Post;
                end;
              DM1.tGradeItem.Next;
            end;
        end;
    end;
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo7.SetFocus;
end;

procedure TfProduto.VDBGrid1ColEnter(Sender: TObject);
begin
  if VDBGrid1.SelectedIndex < 1 then
    VDBGrid1.SelectedIndex := 1;
end;

procedure TfProduto.VDBGrid1CellClick(Column: TColumn);
begin
  if VDBGrid1.SelectedIndex < 1 then
    VDBGrid1.SelectedIndex := 1;
end;

procedure TfProduto.DBCheckBox2Enter(Sender: TObject);
begin
  if DM1.tProdutoGrade.RecordCount > 0 then
    DBCheckBox2.ReadOnly := True
  else
    DBCheckBox2.ReadOnly := False;
end;

procedure TfProduto.BitBtn22Click(Sender: TObject);
begin
  if DM1.tProdutoTamCodGrade.AsInteger > 0 then
    begin
      if MessageDlg('Deseja excluir a grade?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          qVerificaGrade.Close;
          qVerificaGrade.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
          qVerificaGrade.Params[1].AsInteger := DM1.tProdutoTamCodGrade.AsInteger;
          qVerificaGrade.Open;
          if qVerificaGrade.RecordCount > 0 then
            ShowMessage('Esta grade já foi usada, não pode ser excluída!')
          else
            begin
              DM1.tProdutoTam.First;
              while not DM1.tProdutoTam.Eof do
                DM1.tProdutoTam.Delete;
              DMMaterialFornecedor.Excluir_MaterialFornecedor(DM1.tProdutoCodigo.AsInteger,0,DM1.tProdutoGradeCodGrade.AsInteger);
              DM1.tProdutoGrade.Delete;
            end;
        end;
    end;
end;

procedure TfProduto.SpeedButton6Click(Sender: TObject);
begin
  if DM1.tUsuarioGrade.AsBoolean then
  begin
    fGrade := TfGrade.Create(Self);
    fGrade.ShowModal;
    DM1.tGrade.IndexFieldNames := 'Nome';
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir cadastro de grades!');
end;

procedure TfProduto.RxDBLookupCombo7Enter(Sender: TObject);
begin
  DM1.tGrade.IndexFieldNames := 'Nome';
end;

procedure TfProduto.VDBGrid1Enter(Sender: TObject);
begin
  if VDBGrid1.SelectedIndex < 1 then
    VDBGrid1.SelectedIndex := 1;
end;

procedure TfProduto.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfProduto.DBCheckBox3Click(Sender: TObject);
begin
  if DBCheckBox3.Checked then
    DBCheckBox7.Checked := False;
  DBCheckBox7.Enabled := not(DBCheckBox3.Checked);
end;

procedure TfProduto.DBCheckBox7Click(Sender: TObject);
begin
  if DBCheckBox7.Checked then
    DBCheckBox3.Checked := False;
  DBCheckBox3.Enabled := not(DBCheckBox7.Checked);
  CurrencyEdit6.Enabled := DBCheckBox7.Checked;
end;

procedure TfProduto.SpeedButton7Click(Sender: TObject);
begin
  if DM1.tUsuarioCor.AsBoolean then
    begin
      fCor := TfCor.Create(Self);
      fCor.ShowModal;
      DM1.tCor.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Sit.Tributaria!');
end;

procedure TfProduto.CurrencyEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([CurrencyEdit5.AsInteger]);
      Opcoes2;
    end;
end;

procedure TfProduto.CurrencyEdit5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
end;

procedure TfProduto.BitBtn23Click(Sender: TObject);
begin
  if DM1.tProdutoGradeCodGrade.AsInteger > 0 then
    begin
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.SetKey;
      DM1.tGradeCodigo.AsInteger := DM1.tProdutoGradeCodGrade.AsInteger;
      if DM1.tGrade.GotoKey then
        begin
          DM1.tGradeItem.First;
          while not DM1.tGradeItem.Eof do
            begin
              DM1.tProdutoTam.SetKey;
              DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
              DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
              DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
              if not DM1.tProdutoTam.GotoKey then
                begin
                  DM1.tProdutoTam.Insert;
                  DM1.tProdutoTamCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
                  DM1.tProdutoTamCodGrade.AsInteger   := DM1.tGradeItemCodGrade.AsInteger;
                  DM1.tProdutoTamPosicao.AsInteger    := DM1.tGradeItemPosicao.AsInteger;
                  DM1.tProdutoTamTamanho.AsString     := DM1.tGradeItemTamanho.AsString;
                  DM1.tProdutoTam.Post;
                end;
              DM1.tGradeItem.Next;
            end;
        end;
    end;
end;

procedure TfProduto.tProdutoCor2AfterScroll(DataSet: TDataSet);
begin
  tProdutoCli2.Filtered := False;
  if DM1.tProdutoLancaCor.AsBoolean then
    begin
      if tProdutoCor2CodCor.AsInteger > 0 then
      begin
        tProdutoCli2.Filter   := 'CodCor = '''+tProdutoCor2CodCor.AsString+'''';
        tProdutoCli2.Filtered := True;
      end;
    end;
  tProdutoCor2lkNomeCor.AsString;
end;

procedure TfProduto.BitBtn18Click(Sender: TObject);
begin
  fCopiaProdCli := TfCopiaProdCli.Create(Self);
  fCopiaProdCli.Tag := 2;
  fCopiaProdCli.ShowModal;
end;

procedure TfProduto.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return;
end;

procedure TfProduto.RxSpeedButton2Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;

procedure TfProduto.RxDBGrid3DblClick(Sender: TObject);
begin
  if DM1.tProduto.State in [dsEdit] then
    begin
      fCopiaProdCliCor := TfCopiaProdCliCor.Create(Self);
      fCopiaProdCliCor.ShowModal;
    end;
end;

procedure TfProduto.RxDBLookupCombo6Exit(Sender: TObject);
begin
  DM2.qGrupoItem.Close;
  if RxDBLookupCombo6.Text <> '' then
  begin
    DM2.qGrupoItem.ParamByName('CodGrupo').AsInteger := RxDBLookupCombo6.KeyValue;
    DM2.qGrupoItem.Open;
  end;
end;

procedure TfProduto.tProdutoCli2AfterPost(DataSet: TDataSet);
begin
  DBISaveChanges(tProdutoCli2.Handle);
end;

procedure TfProduto.FormCreate(Sender: TObject);
begin
  if not Assigned(DMCadProduto) then
    dmCadProduto := TdmCadProduto.Create(Self);

  FDmCadProduto := TdmCadProduto.Create(nil);
  
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfProduto.BitBtn17Click(Sender: TObject);
begin
  fProdutoEdi := TfProdutoEdi.Create(Self);
  fProdutoEdi.vCodCorEdi := tProdutoCor2CodCor.AsInteger;
  fProdutoEdi.Tag := 2;
  fProdutoEdi.ShowModal;
end;

procedure TfProduto.RxDBLookupCombo4Change(Sender: TObject);
begin
  Opcoes2;
end;

procedure TfProduto.BitBtn24Click(Sender: TObject);
begin
  if BitBtn2.Tag = 1 then
    ShowMessage('Só pode usar esta opção na inserção do produto!')
  else
  begin
    fCopiaProduto := TfCopiaProduto.Create(Self);
    fCopiaProduto.ShowModal;
  end;
end;

procedure TfProduto.RxSpeedButton3Click(Sender: TObject);
begin
  if RxDBFilter4.Active then
    RxSpeedButton3.Caption := 'Ocultar Inativos'
  else
    RxSpeedButton3.Caption := 'Mostrar Inativos';
  RxDBFilter4.Active := not(RxDBFilter4.Active);
end;

procedure TfProduto.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  //esse if ridiculo aqui não é para tirar de jeito maneira, com esse if
  //eu livro uma dor de cabeça danada, quem ler essa mensagem não tem a noção
  //do trabalho que passei até descobri que tudo era por falta desse if aqui
  //vo ti conta o que me faz anda  26/11/2008  (sou eu Cleomar, já to loco mesmo)
  //IF BLINDADO A PROVA DE QUALQUER MEXIDA
  if Key = #13 then
    Key := ' ';
  //**************************************************
  Key := UpCase(Key);
end;

procedure TfProduto.BitBtn16Click(Sender: TObject);
var
  vTexto : String;
begin
  if DM1.tProdutoCorCodCor.AsInteger < 1 then
    exit;

  if DM1.tProdutoCorInativo.AsBoolean then
    vTexto := 'Ativar a Cor'
  else
    vTexto := 'Desativar a Cor';

  if MessageDlg('Deseja ' + vTexto + '?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  DM1.tProdutoCor.Edit;
  DM1.tProdutoCorInativo.AsBoolean := not(DM1.tProdutoCorInativo.AsBoolean);
  DM1.tProdutoCor.Post;
end;

procedure TfProduto.SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tProdutoCorInativo.AsBoolean then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfProduto.Panel2Enter(Sender: TObject);
begin
  DM1.tProduto.Refresh;
end;

procedure TfProduto.RxDBLookupCombo5Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfProduto.BitBtn30Click(Sender: TObject);
begin
  if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoCorCodCor.AsInteger < 1) then
  begin
    ShowMessage('Falta informar a cor!');
    exit;
  end;
  DM1.tProdutoComb.Filtered := False;
  if DM1.tProdutoLancaCor.AsBoolean then
  begin
    DM1.tProdutoComb.Filter   := 'CodCor = '''+DM1.tProdutoCorCodCor.AsString+'''';
    DM1.tProdutoComb.Filtered := True;
  end;
  DM1.tProdutoComb.First;
  fProdutoComb  := TfProdutoComb.Create(Self);
  fProdutoComb.ShowModal;
  DM1.tProdutoComb.Filtered := False;
end;

procedure TfProduto.DBCheckBox4Enter(Sender: TObject);
begin
  if (DM1.tProdutoCor.RecordCount > 0) or (DM1.tProdutoComb.RecordCount > 0) then
    DBCheckBox4.ReadOnly := True
  else
    DBCheckBox4.ReadOnly := False;
end;

procedure TfProduto.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
      DM1.tSitTributaria.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Clas.fiscal!');
end;

procedure TfProduto.RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tProdutoGradeInativo.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end;
end;

procedure TfProduto.BitBtn11Click(Sender: TObject);
var
  vTexto : String;
begin
  if DM1.tProdutoGradeCodGrade.AsInteger < 1 then
    exit;

  if DM1.tProdutoGradeInativo.AsBoolean then
    vTexto := 'Ativar a Grade'
  else
    vTexto := 'Desativar a Grade';
  if MessageDlg('Deseja ' + vTexto + '?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;
  DM1.tProdutoGrade.Edit;
  DM1.tProdutoGradeInativo.AsBoolean := not(DM1.tProdutoGradeInativo.AsBoolean);
  DM1.tProdutoGrade.Post;
end;

procedure TfProduto.GroupBox2Enter(Sender: TObject);
begin
  if (DM1.tProdutoCor.RecordCount > 0) or (DM1.tProdutoComb.RecordCount > 0) then
    DBCheckBox4.ReadOnly := True
  else
    DBCheckBox4.ReadOnly := False;
end;

procedure TfProduto.RzDBLookupComboBox1DropDown(Sender: TObject);
begin
  Opcoes2;
end;

procedure TfProduto.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfProduto.SpeedButton8Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fCSTIPI := TfCSTIPI.Create(Self);
      fCSTIPI.ShowModal;
      DM1.tCSTIPI.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Clas.fiscal!');
end;

procedure TfProduto.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioRegimeTrib.AsBoolean then
    begin
      fOrigemProd := TfOrigemProd.Create(Self);
      fOrigemProd.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir o formulário!');
end;

procedure TfProduto.SpeedButton10Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributariaSimples := TfSitTributariaSimples.Create(Self);
      fSitTributariaSimples.ShowModal;
      DM1.tSitTributaria.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de Clas.fiscal!');
end;

procedure TfProduto.BitBtn10Click(Sender: TObject);
begin
  if DM1.tProdutoCodigo.AsInteger > 0 then
  begin
    fMaterialFornecedor := TfMaterialFornecedor.Create(Self);
    fMaterialFornecedor.vCodProduto := DM1.tProdutoCodigo.AsInteger;
    fMaterialFornecedor.vTabela     := DM1.tProduto;
    fMaterialFornecedor.ShowModal;
  end;
end;

procedure TfProduto.SpeedButton5Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
  begin
    fFornecedores := TfFornecedores.Create(Self);
    fFornecedores.ShowModal;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir formulário de fornecedores!');
end;

procedure TfProduto.RxDBLookupCombo11Enter(Sender: TObject);
begin
  DM1.tFornecedores.IndexFieldNames := 'NomeForn';
end;

procedure TfProduto.BitBtn12Click(Sender: TObject);
begin
  if not DM1.tUsuarioInsGerarCodBarra.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString  + ' não autorizado!');
    exit;
  end;

  fCBarra := TfCBarra.Create(Self);
  fCBarra.ShowModal;
  tCBarra.Refresh;
end;

procedure TfProduto.BitBtn14Click(Sender: TObject);
begin
  if not DM1.tUsuarioExcGerarCodBarra.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString  + ' não autorizado!');
    exit;
  end;

  if tCBarra.IsEmpty then
    exit;

  if tCBarraCodPrincipal.AsInteger > 0 then
  begin
    ShowMessage('Cód. Não pode ser excluído!');
    exit;
  end;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    if DM1.tCBarra.Locate('CodBarra',tCBarraCodBarra.AsString,[loCaseInsensitive]) then
      DM1.tCBarra.Delete;
    DM1.tCBarra.Refresh;
    tCBarra.Refresh;
  end;
end;

procedure TfProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) and (DM1.tProduto.State in [dsBrowse]) then
  begin
    fConsProduto2 := TfConsProduto2.Create(Self);
    fConsProduto2.vProdMat := 'P';
    fConsProduto2.ShowModal;
  end;
  if (Shift = [ssCtrl]) and (Key = 87) then  begin
    ckImpLogo.Visible := not(ckImpLogo.Visible);
    CheckBox1.Visible := not(CheckBox1.Visible);
  end;
end;

procedure TfProduto.SpeedButton11Click(Sender: TObject);
begin
  fCliente := TfCliente.Create(Self);
  fCliente.ShowModal;
end;

procedure TfProduto.RxDBLookupCombo12Enter(Sender: TObject);
begin
  dm1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfProduto.Abre_PedAmostra;
begin
  DMPedAmostra.cdsPedAmostra.Close;
  DMPedAmostra.sdsPedAmostra.CommandText := ctPedAmostra
                                          + ' WHERE CODPRODUTO = ' + DM1.tProdutoCodigo.AsString;
  DMPedAmostra.cdsPedAmostra.Open;
end;

procedure TfProduto.BitBtn15Click(Sender: TObject);
begin
  if DM1.tProdutoCodRepresentada.AsInteger < 1 then
  begin
    ShowMessage('É obrigatório informar a Representada!');
    exit;
  end;

  if not DMPedAmostra.cdsPedAmostra.Active then
    Abre_PedAmostra;
  DMPedAmostra.Inserir_PedAmostra(DM1.tProdutoCodigo.AsInteger);
  fPedAmostra := TfPedAmostra.Create(Self);
  fPedAmostra.ShowModal;
end;

procedure TfProduto.BitBtn26Click(Sender: TObject);
begin
  if not(DMPedAmostra.cdsPedAmostra.Active) or (DMPedAmostra.cdsPedAmostra.IsEmpty) then
  begin
    ShowMessage('Não existe pedido de amostra para alterar ou não foi feita a consulta!');
    exit;
  end;

  //DMPedAmostra.cdsPedAmostra.Edit;

  fPedAmostra := TfPedAmostra.Create(Self);
  fPedAmostra.ShowModal;
end;

procedure TfProduto.BitBtn27Click(Sender: TObject);
begin
  Abre_PedAmostra;
end;

procedure TfProduto.BitBtn25Click(Sender: TObject);
begin
  if DMPedAmostra.cdsPedAmostra.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o pedido de amostra?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  Excluir_PedAmostra;
end;

procedure TfProduto.SMDBGrid4DblClick(Sender: TObject);
begin
  if not(DMPedAmostra.cdsPedAmostra.Active) or (DMPedAmostra.cdsPedAmostra.IsEmpty) then
    exit;

  fPedAmostra := TfPedAmostra.Create(Self);
  fPedAmostra.BitBtn1.Enabled  := False;
  fPedAmostra.Panel2.Enabled   := False;
  fPedAmostra.VDBGrid1.Enabled := False;
  fPedAmostra.ShowModal;                


end;

procedure TfProduto.BitBtn28Click(Sender: TObject);
begin
  if not(DMPedAmostra.cdsPedAmostra.Active) or (DMPedAmostra.cdsPedAmostra.IsEmpty) then
  begin
    ShowMessage('Não existe pedido de amostra para alterar ou não foi feita a consulta!');
    exit;
  end;

  Abre_Produto_Posicao;
  if FDmCadProduto.cdsProduto_Posicao.IsEmpty then
    Grava_Produto_Posicao;

  DMPedAmostra.mMaterial.Filtered := False;
  DM1.tProdutoComb.Filtered       := False;

  Monta_AuxiliarAmostra;

  fRelPedAmostra := TfRelPedAmostra.Create(Self);
  fRelPedAmostra.RLReport1.Preview;
  fRelPedAmostra.RLReport1.Free;
end;

procedure TfProduto.Monta_AuxiliarAmostra;
var
 vCodCorAux : Integer;
 vOrdemImp : Integer;
begin
  DM1.tPosicao.IndexFieldNames := 'Codigo';

  DMPedAmostra.mMaterial.First;
  while not DMPedAmostra.mMaterial.Eof do
  begin
    DMPedAmostra.mGrade.First;
    while not DMPedAmostra.mGrade.Eof do
      DMPedAmostra.mGrade.Delete;
    DMPedAmostra.mMaterial.Delete;
  end;

  DMPedAmostra.cdsPedAmostra_Item.First;
  while not DMPedAmostra.cdsPedAmostra_Item.Eof do
  begin
    vCodCorAux := 0;
    if DMPedAmostra.cdsPedAmostra_ItemCODCOR.AsInteger > 0 then
      vCodCorAux := DMPedAmostra.cdsPedAmostra_ItemCODCOR.AsInteger;
    if not DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([vCodCorAux,DMPedAmostra.cdsPedAmostra_ItemCODCOMBINACAO.AsInteger]),[locaseinsensitive]) then
      ShowMessage('Combinação não encontrada!');

    vOrdemImp := 0;
    FDmCadProduto.cdsProduto_Posicao.First;
    while not FDmCadProduto.cdsProduto_Posicao.Eof do
    begin
      if DM1.tProdutoMat.Locate('CodPosicao',FDmCadProduto.cdsProduto_PosicaoCODPOSICAO.AsInteger ,[loCaseInsensitive]) then
      begin
        vOrdemImp := vOrdemImp + 1;
        DMPedAmostra.mMaterial.Insert;
        DMPedAmostra.mMaterialItem.AsInteger       := DMPedAmostra.cdsPedAmostra_ItemITEM.AsInteger;
        DMPedAmostra.mMaterialOrdemImp.AsInteger   := vOrdemImp;
        DMPedAmostra.mMaterialNomePosicao.AsString := FDmCadProduto.cdsProduto_PosicaoNOMEPOSICAO.AsString;
        if FDmCadProduto.cdsProduto_PosicaoIMPMATERIAL.AsString = 'S' then
        begin
          DMPedAmostra.mMaterialNomeMaterial.AsString := DM1.tProdutoMatlkNomeMaterial.AsString;
          DMPedAmostra.mMaterialCodigo.AsInteger      := DM1.tProdutoMatCodMaterial.AsInteger;
        end;
        if FDmCadProduto.cdsProduto_PosicaoIMPCOR.AsString = 'S' then
          DMPedAmostra.mMaterialNomeCor.AsString      := DM1.tProdutoMatlkNomeCor.AsString;
        DMPedAmostra.mMaterial.Post;
      end;
      FDmCadProduto.cdsProduto_Posicao.Next;
    end;

    {DM1.tParametrosPosicao.First;
    while not DM1.tParametrosPosicao.Eof do
    begin
      if DM1.tProdutoMat.Locate('CodPosicao',DM1.tParametrosPosicaoCodPosicao.AsInteger ,[loCaseInsensitive]) then
      begin
        DMPedAmostra.mMaterial.Insert;
        DMPedAmostra.mMaterialItem.AsInteger       := DMPedAmostra.cdsPedAmostra_ItemITEM.AsInteger;
        DMPedAmostra.mMaterialNomePosicao.AsString := DM1.tParametrosPosicaolkPosicao.AsString;
        if DM1.tParametrosPosicaoImpMaterial.AsBoolean then
        begin
          DMPedAmostra.mMaterialNomeMaterial.AsString := DM1.tProdutoMatlkNomeMaterial.AsString;
          DMPedAmostra.mMaterialCodigo.AsInteger      := DM1.tProdutoMatCodMaterial.AsInteger;
        end;
        if DM1.tParametrosPosicaoImpCor.AsBoolean then
          DMPedAmostra.mMaterialNomeCor.AsString      := DM1.tProdutoMatlkNomeCor.AsString;
        DMPedAmostra.mMaterial.Post;
      end;
      DM1.tParametrosPosicao.Next;
    end;}

    DMPedAmostra.cdsPedAmostra_Grade.First;
    while not DMPedAmostra.cdsPedAmostra_Grade.Eof do
    begin
      if DMPedAmostra.cdsPedAmostra_GradeQTD.AsInteger > 0 then
      begin
        DMPedAmostra.mGrade.Insert;
        DMPedAmostra.mGradeItem.AsInteger   := DMPedAmostra.cdsPedAmostra_GradeITEM.AsInteger;
        DMPedAmostra.mGradeTamanho.AsString := DMPedAmostra.cdsPedAmostra_GradeTAMANHO.AsString;
        DMPedAmostra.mGradeQtd.AsInteger    := DMPedAmostra.cdsPedAmostra_GradeQTD.AsInteger;
        DMPedAmostra.mGrade.Post;
      end;
      DMPedAmostra.cdsPedAmostra_Grade.Next;
    end;

    DMPedAmostra.cdsPedAmostra_Item.Next;
  end;

end;

procedure TfProduto.Abre_Produto_Posicao;
begin
  FDmCadProduto.cdsProduto_Posicao.Close;
  FDmCadProduto.sdsProduto_Posicao.ParamByName('CODIGO').AsInteger := DM1.tProdutoCodigo.AsInteger;
  FDmCadProduto.cdsProduto_Posicao.Open;
end;

procedure TfProduto.Abre_Processo;
begin
  DmProcesso.cdsProcesso.Close;
  DmProcesso.sdsProcesso.CommandText := ctProcesso;
  DmProcesso.cdsProcesso.Open;
end;

procedure TfProduto.Grava_Produto_Posicao;
var
  i : Integer;
begin
  i := 0;
  DM1.tParametrosPosicao.First;
  while not DM1.tParametrosPosicao.Eof do
  begin
    i := i + 1;
    FDmCadProduto.cdsProduto_Posicao.Insert;
    FDmCadProduto.cdsProduto_PosicaoCODIGO.AsInteger     := DM1.tProdutoCodigo.AsInteger;
    FDmCadProduto.cdsProduto_PosicaoITEM.AsInteger       := i;
    FDmCadProduto.cdsProduto_PosicaoCODPOSICAO.AsInteger := DM1.tParametrosPosicaoCodPosicao.AsInteger;
    if DM1.tParametrosPosicaoImpMaterial.AsBoolean then
      FDmCadProduto.cdsProduto_PosicaoIMPMATERIAL.AsString := 'S'
    else
      FDmCadProduto.cdsProduto_PosicaoIMPMATERIAL.AsString := 'N';
    if DM1.tParametrosPosicaoImpCor.AsBoolean then
      FDmCadProduto.cdsProduto_PosicaoIMPCOR.AsString := 'S'
    else
      FDmCadProduto.cdsProduto_PosicaoIMPCOR.AsString := 'N';
    FDmCadProduto.cdsProduto_Posicao.Post;

    DM1.tParametrosPosicao.Next;
  end;

  FDmCadProduto.cdsProduto_Posicao.ApplyUpdates(0);
end;

procedure TfProduto.BitBtn29Click(Sender: TObject);
begin
  Abre_Produto_Posicao;
  if FDmCadProduto.cdsProduto_Posicao.IsEmpty then
    Grava_Produto_Posicao;

  fProdutoPosicao := TfProdutoPosicao.Create(Self);
  fProdutoPosicao.ShowModal;
end;

procedure TfProduto.Excluir_PedAmostra;
begin
  DMPedAmostra.cdsPedAmostra_Item.First;
  while not DMPedAmostra.cdsPedAmostra_Item.Eof do
  begin
    DMPedAmostra.cdsPedAmostra_Grade.First;
    while not DMPedAmostra.cdsPedAmostra_Grade.Eof do
      DMPedAmostra.cdsPedAmostra_Grade.Delete;
    DMPedAmostra.cdsPedAmostra_Item.Delete;
  end;
  DMPedAmostra.cdsPedAmostra.Delete;
  DMPedAmostra.cdsPedAmostra.ApplyUpdates(0);
end;

procedure TfProduto.SpeedButton12Click(Sender: TObject);
begin
  if DM1.tUsuarioFornecedores.AsBoolean then
  begin
    fReferenciaInf := TfReferenciaInf.Create(Self);
    vReferencia_Tipo := DM1.tProdutoReferencia.AsString;
    fReferenciaInf.ShowModal;
    DM1.tProdutoReferencia.AsString := vReferencia_Tipo;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir o formulário!');
end;

procedure TfProduto.Abre_Produto_Ferramental;
begin
  DmCadProduto.cdsProduto_Ferramental.Close;
  DmCadProduto.sdsProduto_Ferramental.ParamByName('CODPRODUTO').AsInteger := DM1.tProdutoCodigo.AsInteger;
  DmCadProduto.cdsProduto_Ferramental.Open;
end;

procedure TfProduto.Abre_Produto_Tempo;
begin                                 
  DmCadProduto.cdsProduto_Tempo.Close;
  DmCadProduto.sdsProduto_Tempo.ParamByName('CODPRODUTO').AsInteger := DM1.tProdutoCodigo.AsInteger;
  DmCadProduto.cdsProduto_Tempo.Open;
end;

procedure TfProduto.BitBtn31Click(Sender: TObject);
begin
  Abre_Produto_Ferramental;
  fProdutoFerramental := TfProdutoFerramental.Create(Self);
  fProdutoFerramental.ShowModal;
end;

procedure TfProduto.BitBtn32Click(Sender: TObject);
begin
  Abre_Produto_Tempo;
  Abre_Processo;
  fProdutoTempo := TfProdutoTempo.Create(Self);
  fProdutoTempo.ShowModal;
end;

procedure TfProduto.BitBtn34Click(Sender: TObject);
begin
  if DM1.tProdutoEndArquivoCNC.AsString <> '' then
    AbreArquivo(DM1.tProdutoEndArquivoCNC.AsString);
end;

procedure TfProduto.FilenameEdit1Change(Sender: TObject);
begin
  if DM1.tProduto.State in [dsEdit,dsInsert] then
    DM1.tProdutoEndArquivoCNC.AsString := FilenameEdit1.Text;
end;

procedure TfProduto.BitBtn33Click(Sender: TObject);
begin
  if not DM1.tUsuarioInsGerarCodBarra.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString  + ' não autorizado!');
    exit;
  end;

  if MessageDlg('Confirma a geração dos Códigos de Barra?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    if (DM1.tEmpresaNumCodBarra1.AsString = '') and (DM1.tEmpresaNumCodBarra2.AsString = '') then
      ShowMessage('Não existe código EAN para a empresa!')
    else
    begin
      Verifica_CBarra(DM1.tEmpresaNumCodBarra1.AsInteger);
      if vGeraCod then
        Gera_CodBarra
      else
      if not(vGeraCod) and (DM1.tEmpresaNumCodBarra2.AsString <> '') then
      begin
        Verifica_CBarra(DM1.tEmpresaNumCodBarra2.AsInteger);
        if not vGeraCod then
          ShowMessage('Código EAN 2 já preenchido, necessita requisição de novo EAN para a empresa!')
        else
          Gera_CodBarra;
      end
      else
      if not(vGeraCod) then
        ShowMessage('Código EAN 1 já preenchido, necessita requisição de novo EAN para a empresa!');
    end;
  end;
  DM1.tCBarra.Refresh;
  tCBarra.Refresh;
end;

procedure TfProduto.Monta_CodMaximo;
var
  i : Integer;
begin
  vCodMaximo := '';
  for i := 1 to (12 - Length(IntToStr(vCodPrincipal))) do
    vCodMaximo := vCodMaximo + '9';
  if vCodMaximo = '' then
    vCodMaximo := '0';
end;

procedure TfProduto.Grava_CBarra(CodCor, CodGrade,Posicao : Integer ; Tamanho : String);
var
  i : Integer;
  vTexto1 : String;
begin
  inc(vCodSeq);
  Monta_CodMaximo;
  //if vCodSeq = 9999 then
  vGeraCod := True;
  //if (vCodSeq = StrToInt(vCodMaximo)) or ((vCodSeq > StrToInt(vCodMaximo))) then
  if ((vCodSeq > StrToInt(vCodMaximo))) then
  begin
    if vCodPrincipal = DM1.tEmpresaNumCodBarra2.AsInteger then
    begin
      ShowMessage('Código EAN 2 já preenchido, necessita requisição de novo EAN para a empresa!');
      vGeraCod := False;
      exit;
    end
    else
    begin
      vCodPrincipal := DM1.tEmpresaNumCodBarra2.AsInteger;
      Monta_CodMaximo;
      DM2.qIncBarra.Close;
      DM2.qIncBarra.Params[0].AsInteger := vCodPrincipal;
      DM2.qIncBarra.Open;
      vCodSeq       := DM2.qIncBarraCodSeq.AsInteger + 1;
      DM2.qIncBarra.Close;
      if (vCodSeq > StrToInt(vCodMaximo)) then
      begin
        ShowMessage('Código EAN 2 já preenchido, necessita requisição de novo EAN para a empresa!');
        vGeraCod := False;
        exit;
      end
    end;
  end;
  if vGeraCod then
  begin
    Calcula_DigitoEAN13;
    vTexto1 := IntToStr(vCodSeq);
    for i := 1 to (Length(vCodMaximo) - Length(vTexto1)) do
      vTexto1 := '0' + vTexto1;
    DM1.tCBarra.Insert;
    //DM1.tCBarraCodBarra.AsString      := IntToStr(vCodPrincipal) + FormatFloat('00000',vCodSeq) + vDigito;
    DM1.tCBarraCodBarra.AsString      := IntToStr(vCodPrincipal) + vTexto1 + vDigito;
    DM1.tCBarraCodProduto.AsInteger   := DM1.tProdutoCodigo.AsInteger;
    DM1.tCBarraCodCor.AsInteger       := CodCor;
    DM1.tCBarraCodGrade.AsInteger     := CodGrade;
    DM1.tCBarraPosicao.AsInteger      := Posicao;
    DM1.tCBarraTamanho.AsString       := Tamanho;
    DM1.tCBarraCodPrincipal.AsInteger := vCodPrincipal;
    DM1.tCBarraCodSeq.AsInteger       := vCodSeq;
    DM1.tCBarra.Post;
  end;
end;

procedure TfProduto.Le_Grade_CBarra(CodCor : Integer);
begin
  vGeraCod := True;
  DM1.tProdutoGrade.First;
  while not DM1.tProdutoGrade.Eof do
    begin
      //if not DM1.tProdutoGradeInativo.AsBoolean then
      //  begin
          DM1.tProdutoTam.First;
          while not DM1.tProdutoTam.Eof do
            begin
              if not DM1.tCBarra.Locate('CodProduto;CodCor;CodGrade;Posicao',
                 VarArrayOf([DM1.tProdutoCodigo.AsInteger,CodCor,DM1.tProdutoTamCodGrade.AsInteger,DM1.tProdutoTamPosicao.AsInteger]),[locaseinsensitive]) then
                begin
                  Grava_CBarra(CodCor,DM1.tProdutoTamCodGrade.AsInteger,DM1.tProdutoTamPosicao.AsInteger,DM1.tProdutoTamTamanho.AsString);
                  if not vGeraCod then
                    exit;
                end;
              DM1.tProdutoTam.Next;
            end;
      //  end;
      DM1.tProdutoGrade.Next;
    end;
end;

procedure TfProduto.Verifica_CBarra(Codigo : Integer);
var
  i : Integer;
begin
  vCodMaximo := '';
  for i := 1 to (12 - Length(IntToStr(Codigo))) do
    vCodMaximo := vCodMaximo + '9';
  if vCodMaximo = '' then
    vCodMaximo := '0';
  vCodPrincipal := 0;
  vCodSeq       := 0;
  DM2.qIncBarra.Close;
  DM2.qIncBarra.Params[0].AsInteger := Codigo;
  DM2.qIncBarra.Open;
  //if qIncBarraCodSeq.AsInteger = 99999 then
  if (DM2.qIncBarraCodSeq.AsInteger = StrToInt(vCodMaximo)) or ((DM2.qIncBarraCodSeq.AsInteger > StrToInt(vCodMaximo))) then
    vGeraCod := False
  else
  begin
    vGeraCod      := True;
    vCodPrincipal := Codigo;
    vCodSeq       := DM2.qIncBarraCodSeq.AsInteger;
  end;
end;

procedure TfProduto.Gera_CodBarra;
begin
  if DM1.tProdutoCor.RecordCount > 0 then
  begin
    DM1.tProdutoCor.First;
    while not DM1.tProdutoCor.Eof do
    begin
      vGeraCod := True;
      if DM1.tProdutoGrade.RecordCount > 0 then
        Le_Grade_CBarra(DM1.tProdutoCorCodCor.AsInteger)
      else
      if not DM1.tCBarra.Locate('CodProduto;CodCor;CodGrade;Posicao',
         VarArrayOf([DM1.tProdutoCodigo.AsInteger,DM1.tProdutoCorCodCor.AsInteger,0,0]),[locaseinsensitive]) then
      begin
        Grava_CBarra(DM1.tProdutoCorCodCor.AsInteger,0,0,'');
        if not vGeraCod then
          Exit;
      end;
      if not vGeraCod then
        Exit;
      DM1.tProdutoCor.Next;
    end;
  end
  else
  if DM1.tProdutoGrade.RecordCount > 0 then
    Le_Grade_CBarra(0)
  else
  if not DM1.tCBarra.Locate('CodProduto;CodCor;CodGrade;Posicao',
     VarArrayOf([DM1.tProdutoCodigo.AsInteger,0,0,0]),[locaseinsensitive]) then
    Grava_CBarra(0,0,0,'');
end;

procedure TfProduto.Calcula_DigitoEAN13;
var
  vCodAux : String;
  i : Integer;
  vSoma : Integer;
  vSoma2 : Integer;
begin
  vSoma   := 0;
  //vCodAux := IntToStr(vCodPrincipal) + FormatFloat('00000',vCodSeq);
  vCodAux := IntToStr(vCodSeq);
  for i := 1 to (Length(vCodMaximo) - Length(vCodAux)) do
    vCodAux := '0' + vCodAux;
  vCodAux := IntToStr(vCodPrincipal) + vCodAux;
  for i := 1 to 12 do
    begin
      if i mod 2 > 0 then  //Quando for impar multiplica por 1 se for par multiplica por 3
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 1)
      else
        vSoma := vSoma + (StrToInt(Copy(vCodAux,i,1)) * 3);
    end;
  vSoma2 := vSoma div 10;
  vSoma2 := (vSoma2 + 1) * 10;
  vSoma  := vSoma2 - vSoma;
  if vSoma = 10 then
    vDigito := '0'
  else
    vDigito := FloatToStr(vSoma);
end;

procedure TfProduto.DBEdit30Exit(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  //Lei 12.741/12
  if trim(DBEdit30.Text) = '' then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := ' SELECT * FROM TAB_IBPT '
                     + ' WHERE CODIGO = ' + QuotedStr(RxDBLookupCombo8.Text)
                     + '   AND EX = ' + QuotedStr(DBEdit30.Text);
  sds.Open;
  if sds.IsEmpty then
  begin
    MessageDlg('*** Excessão não encontrada na NCM, favor verificar!', mtError, [mbOk], 0);
    DBEdit30.SetFocus;
  end;
  FreeAndNil(sds);
end;

end.
