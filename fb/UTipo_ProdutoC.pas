unit UTipo_ProdutoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, FMTBcd, SqlExpr;

type
  TfTipo_ProdutoC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    BitBtn5: TBitBtn;
    qProximoCod: TSQLQuery;
    qProximoCodCODIGO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    vTipo : String;
    
    procedure Monta_sqlTipo_Produto(Tipo : String ; Codigo : Integer);
  public
    { Public declarations }

  end;

var
  fTipo_ProdutoC: TfTipo_ProdutoC;

implementation

uses UDMTipo_Produto, UDM1, UTipo_Produto, uIntegracao, DateUtils,
  DmdDatabase;

{$R *.dfm}

procedure TfTipo_ProdutoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMTipo_Produto.Owner.ClassName  = Self.ClassName then
    FreeAndNil(DMTipo_Produto);
  Action := Cafree;
end;

procedure TfTipo_ProdutoC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlTipo_Produto('C',0);
end;

procedure TfTipo_ProdutoC.Monta_sqlTipo_Produto(Tipo : String ; Codigo : Integer);
begin
  DMTipo_Produto.cdsTipo_Produto.Close;
  DMTipo_Produto.sdsTipo_Produto.CommandText := ctTipo_Produto
                                                + ' WHERE TIPO = ' + QuotedStr(vTipo);
  if (Tipo = 'I') or (Codigo > 0) then
    DMTipo_Produto.sdsTipo_Produto.CommandText := DMTipo_Produto.sdsTipo_Produto.CommandText
                                                  + ' AND ID >= ' + IntToStr(Codigo);

  DMTipo_Produto.sdsTipo_Produto.CommandText := DMTipo_Produto.sdsTipo_Produto.CommandText
                                                + ' ORDER BY CODIGO ';
  DMTipo_Produto.cdsTipo_Produto.Open;
end;

procedure TfTipo_ProdutoC.BitBtn2Click(Sender: TObject);
begin
  if DMTipo_Produto.cdsTipo_Produto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMTipo_Produto.cdsTipo_Produto.Delete;
  DMTipo_Produto.cdsTipo_Produto.ApplyUpdates(0);
end;


procedure TfTipo_ProdutoC.BitBtn1Click(Sender: TObject);
var
  vNumAux : Integer;
  vCodAux : Integer;
begin
  if not DM1.tUsuarioInsRefEstruturada_Tipos.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;

  if not DMTipo_Produto.cdsTipo_Produto.Active then
    Monta_sqlTipo_Produto('I',0);

  vNumAux := ProximaSequencia('TIPO_PRODUTO',0);

  qProximoCod.Close;
  qProximoCod.ParamByName('TIPO').AsString := vTipo;
  qProximoCod.Open;

  vCodAux := qProximoCodCODIGO.AsInteger + 1;

  DMTipo_Produto.cdsTipo_Produto.Insert;
  DMTipo_Produto.cdsTipo_ProdutoID.AsInteger     := vNumAux;
  DMTipo_Produto.cdsTipo_ProdutoTIPO.AsString    := vTipo;
  DMTipo_Produto.cdsTipo_ProdutoCODIGO.AsInteger := vCodAux;

  fTipo_Produto := TfTipo_Produto.Create(Self);
  fTipo_Produto.ShowModal;
end;

procedure TfTipo_ProdutoC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMTipo_Produto) then
    DMTipo_Produto := TDMTipo_Produto.Create(Self);

  Monta_sqlTipo_Produto('C',0);
  vTipo := IntToStr(Tag);
end;

procedure TfTipo_ProdutoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMTipo_Produto.cdsTipo_Produto.IsEmpty then
    exit;
  DMTipo_Produto.cdsTipo_Produto.Edit;
  fTipo_Produto := TfTipo_Produto.Create(Self);
  fTipo_Produto.ShowModal;
end;

procedure TfTipo_ProdutoC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
