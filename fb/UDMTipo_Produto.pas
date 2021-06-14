unit UDMTipo_Produto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMTipo_Produto = class(TDataModule)
    sdsTipo_Produto: TSQLDataSet;
    dspTipo_Produto: TDataSetProvider;
    cdsTipo_Produto: TClientDataSet;
    dsTipo_Produto: TDataSource;
    sdsTipo_ProdutoID: TIntegerField;
    sdsTipo_ProdutoTIPO: TStringField;
    sdsTipo_ProdutoCODIGO: TIntegerField;
    sdsTipo_ProdutoNOME: TStringField;
    cdsTipo_ProdutoID: TIntegerField;
    cdsTipo_ProdutoTIPO: TStringField;
    cdsTipo_ProdutoCODIGO: TIntegerField;
    cdsTipo_ProdutoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspTipo_ProdutoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTipo_Produto: TDMTipo_Produto;
  ctTipo_Produto : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMTipo_Produto.DataModuleCreate(Sender: TObject);
begin
  ctTipo_Produto := sdsTipo_Produto.CommandText;
end;

procedure TDMTipo_Produto.dspTipo_ProdutoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Response := rrAbort;
  raise exception.Create(E.Message);
end;

end.
