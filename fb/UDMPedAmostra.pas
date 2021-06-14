unit UDMPedAmostra;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMPedAmostra = class(TDataModule)
    sdsPedAmostra: TSQLDataSet;
    dspPedAmostra: TDataSetProvider;
    cdsPedAmostra: TClientDataSet;
    dsPedAmostra: TDataSource;
    sdsPedAmostraID: TIntegerField;
    sdsPedAmostraNUMPEDIDO: TIntegerField;
    sdsPedAmostraDTENCAMINHADA: TDateField;
    sdsPedAmostraDTENTREGA: TDateField;
    sdsPedAmostraCODCLIENTE: TIntegerField;
    sdsPedAmostraCODFABRICA: TIntegerField;
    sdsPedAmostraQTDTOTAL: TIntegerField;
    cdsPedAmostraID: TIntegerField;
    cdsPedAmostraNUMPEDIDO: TIntegerField;
    cdsPedAmostraDTENCAMINHADA: TDateField;
    cdsPedAmostraDTENTREGA: TDateField;
    cdsPedAmostraCODFABRICA: TIntegerField;
    cdsPedAmostraCODCLIENTE: TIntegerField;
    cdsPedAmostraQTDTOTAL: TIntegerField;
    sdsPedAmostraNOMEFABRICA: TStringField;
    cdsPedAmostraNOMEFABRICA: TStringField;
    dsPedAmostra_Mestre: TDataSource;
    sdsPedAmostra_Item: TSQLDataSet;
    sdsPedAmostra_ItemID: TIntegerField;
    sdsPedAmostra_ItemITEM: TIntegerField;
    sdsPedAmostra_ItemCODCOR: TIntegerField;
    sdsPedAmostra_ItemCODCOMBINACAO: TIntegerField;
    sdsPedAmostra_ItemQTD: TIntegerField;
    cdsPedAmostrasdsPedAmostra_Item: TDataSetField;
    cdsPedAmostra_Item: TClientDataSet;
    cdsPedAmostra_ItemID: TIntegerField;
    cdsPedAmostra_ItemITEM: TIntegerField;
    cdsPedAmostra_ItemCODCOR: TIntegerField;
    cdsPedAmostra_ItemCODCOMBINACAO: TIntegerField;
    cdsPedAmostra_ItemQTD: TIntegerField;
    dsPedAmostra_Item: TDataSource;
    sdsPedAmostraCODPRODUTO: TIntegerField;
    sdsPedAmostraUSUARIO: TStringField;
    sdsPedAmostraDTCADASTRO: TDateField;
    sdsPedAmostraHRCADASTRO: TTimeField;
    cdsPedAmostraCODPRODUTO: TIntegerField;
    cdsPedAmostraUSUARIO: TStringField;
    cdsPedAmostraDTCADASTRO: TDateField;
    cdsPedAmostraHRCADASTRO: TTimeField;
    sdsPedAmostra_ItemNOMECOR: TStringField;
    sdsPedAmostra_ItemNOMECOMBINACAO: TStringField;
    cdsPedAmostra_ItemNOMECOR: TStringField;
    cdsPedAmostra_ItemNOMECOMBINACAO: TStringField;
    sdsPedAmostra_Grade: TSQLDataSet;
    dsPedAmostra_MestreItem: TDataSource;
    cdsPedAmostra_ItemsdsPedAmostra_Grade: TDataSetField;
    cdsPedAmostra_Grade: TClientDataSet;
    dsPedAmostra_Grade: TDataSource;
    sdsPedAmostra_GradeID: TIntegerField;
    sdsPedAmostra_GradeITEM: TIntegerField;
    sdsPedAmostra_GradeTAMANHO: TStringField;
    sdsPedAmostra_GradeQTD: TIntegerField;
    cdsPedAmostra_GradeID: TIntegerField;
    cdsPedAmostra_GradeITEM: TIntegerField;
    cdsPedAmostra_GradeTAMANHO: TStringField;
    cdsPedAmostra_GradeQTD: TIntegerField;
    sdsPedAmostraFICHA: TStringField;
    sdsPedAmostraCARIMBOSOLA: TStringField;
    cdsPedAmostraFICHA: TStringField;
    cdsPedAmostraCARIMBOSOLA: TStringField;
    sdsPedAmostraCARIMBOPALMILHA: TStringField;
    cdsPedAmostraCARIMBOPALMILHA: TStringField;
    sdsPedAmostraOBS: TMemoField;
    cdsPedAmostraOBS: TMemoField;
    mMaterial: TClientDataSet;
    mMaterialCodigo: TIntegerField;
    mMaterialNomeMaterial: TStringField;
    mMaterialNomeCor: TStringField;
    mMaterialItem: TIntegerField;
    dsmMaterial: TDataSource;
    mGrade: TClientDataSet;
    mGradeItem: TIntegerField;
    mGradeTamanho: TStringField;
    mGradeQtd: TIntegerField;
    mMaterialNomePosicao: TStringField;
    dsGrade: TDataSource;
    sdsPedAmostraETIQUETA: TStringField;
    cdsPedAmostraETIQUETA: TStringField;
    mMaterialOrdemImp: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPedAmostra_GradeBeforePost(DataSet: TDataSet);
    procedure dspPedAmostraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inserir_PedAmostra(CodProduto : Integer);
    procedure Inserir_PedAmostra_Item;
  end;

var
  DMPedAmostra: TDMPedAmostra;
  ctPedAmostra : String;

implementation

uses DmdDatabase, uIntegracao, UDM1;

{$R *.dfm}

procedure TDMPedAmostra.DataModuleCreate(Sender: TObject);
begin
  ctPedAmostra := sdsPedAmostra.CommandText;
end;

procedure TDMPedAmostra.Inserir_PedAmostra(CodProduto: Integer);
var
  vNumAux : Integer;
begin
  if CodProduto < 1 then
    exit;

  vNumAux := ProximaSequencia('PEDAMOSTRA',0);

  cdsPedAmostra.Insert;
  cdsPedAmostraID.AsInteger             := vNumAux;
  cdsPedAmostraCODCLIENTE.AsInteger     := DM1.tProdutoCodCliente.AsInteger;
  cdsPedAmostraCODFABRICA.AsInteger     := DM1.tProdutoCodFabrica.AsInteger;
  cdsPedAmostraCODPRODUTO.AsInteger     := CodProduto;
  cdsPedAmostraDTCADASTRO.AsDateTime    := Date;
  cdsPedAmostraHRCADASTRO.AsDateTime    := Now;
  cdsPedAmostraUSUARIO.AsString         := DM1.tUsuarioUsuario.AsString;
  cdsPedAmostraFICHA.AsString           := DM1.tProdutoFicha.AsString;
  cdsPedAmostraCARIMBOPALMILHA.AsString := DM1.tProdutoCarimboPalmilha.AsString;
  cdsPedAmostraCARIMBOSOLA.AsString     := DM1.tProdutoCarimboSola.AsString;
end;

procedure TDMPedAmostra.Inserir_PedAmostra_Item;
var
  vItemAux : Integer;
begin
  DMPedAmostra.cdsPedAmostra_Item.Last;
  vItemAux := DMPedAmostra.cdsPedAmostra_ItemITEM.AsInteger;

  DMPedAmostra.cdsPedAmostra_Item.Insert;
  //DMPedAmostra.cdsPedAmostra_ItemID.AsInteger   := DMPedAmostra.cdsPedAmostraID.AsInteger;
  DMPedAmostra.cdsPedAmostra_ItemITEM.AsInteger := vItemAux + 1;
end;

procedure TDMPedAmostra.cdsPedAmostra_GradeBeforePost(DataSet: TDataSet);
begin
  if Trim(cdsPedAmostra_GradeTAMANHO.AsString) = '' then
    cdsPedAmostra_Grade.Cancel;
end;

procedure TDMPedAmostra.dspPedAmostraUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
