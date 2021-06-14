unit uDmAux;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDmAux = class(TDataModule)
    qGrupoItemFD1: TQuery;
    qGrupoItemFD1CODSUBGRUPO: TIntegerField;
    qGrupoItemFD1NOME: TStringField;
    qGrupoItemFD2: TQuery;
    qGrupoItemFD2CODSUBGRUPO: TIntegerField;
    qGrupoItemFD2NOME: TStringField;
    qGrupoItemFD3: TQuery;
    qGrupoItemFD3CODSUBGRUPO: TIntegerField;
    qGrupoItemFD3NOME: TStringField;
    dsqGrupoItemFD3: TDataSource;
    dsqGrupoItemFD2: TDataSource;
    dsqGrupoItemFD1: TDataSource;
    qGrupoItemTP1: TQuery;
    qGrupoItemTP1CODSUBGRUPO: TIntegerField;
    qGrupoItemTP1NOME: TStringField;
    dsqGrupoItemTP1: TDataSource;
    qGrupoItemTP2: TQuery;
    qGrupoItemTP2CODSUBGRUPO: TIntegerField;
    qGrupoItemTP2NOME: TStringField;
    dsqGrupoItemTP2: TDataSource;
    dsqGrupoItemTP3: TDataSource;
    qGrupoItemTP3: TQuery;
    qGrupoItemTP3CODSUBGRUPO: TIntegerField;
    qGrupoItemTP3NOME: TStringField;
    qGrupoItemSP3: TQuery;
    qGrupoItemSP3CODSUBGRUPO: TIntegerField;
    qGrupoItemSP3NOME: TStringField;
    dsqGrupoItemSP3: TDataSource;
    dsqGrupoItemSP2: TDataSource;
    qGrupoItemSP2: TQuery;
    qGrupoItemSP2CODSUBGRUPO: TIntegerField;
    qGrupoItemSP2NOME: TStringField;
    qGrupoItemSP1: TQuery;
    qGrupoItemSP1CODSUBGRUPO: TIntegerField;
    qGrupoItemSP1NOME: TStringField;
    dsqGrupoItemSP1: TDataSource;
    qGrupo: TQuery;
    dsqGrupo: TDataSource;
    qMaterialFD1: TQuery;
    qMaterialFD1CODIGO: TIntegerField;
    qMaterialFD1NOME: TStringField;
    dsqMaterialFD1: TDataSource;
    dsqMaterialTP1: TDataSource;
    qMaterialTP1: TQuery;
    qMaterialTP1CODIGO: TIntegerField;
    qMaterialTP1NOME: TStringField;
    qMaterialSP1: TQuery;
    qMaterialSP1CODIGO: TIntegerField;
    qMaterialSP1NOME: TStringField;
    dsqMaterialSP1: TDataSource;
    dsqMaterialSP2: TDataSource;
    qMaterialSP2: TQuery;
    qMaterialSP2CODIGO: TIntegerField;
    qMaterialSP2NOME: TStringField;
    dsqMaterialSP3: TDataSource;
    qMaterialSP3: TQuery;
    qMaterialSP3CODIGO: TIntegerField;
    qMaterialSP3NOME: TStringField;
    dsqMaterialTP3: TDataSource;
    qMaterialTP3: TQuery;
    qMaterialTP3CODIGO: TIntegerField;
    qMaterialTP3NOME: TStringField;
    qMaterialTP2: TQuery;
    qMaterialTP2CODIGO: TIntegerField;
    qMaterialTP2NOME: TStringField;
    dsqMaterialTP2: TDataSource;
    dsqMaterialFD2: TDataSource;
    qMaterialFD2: TQuery;
    qMaterialFD2CODIGO: TIntegerField;
    qMaterialFD2NOME: TStringField;
    qMaterialFD3: TQuery;
    qMaterialFD3CODIGO: TIntegerField;
    qMaterialFD3NOME: TStringField;
    dsqMaterialFD3: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmAux: TDmAux;

implementation

{$R *.dfm}

end.
