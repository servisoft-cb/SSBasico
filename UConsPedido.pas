unit UConsPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, CurrEdit, StdCtrls, Mask, ToolEdit, RXLookup, Buttons,
  ExtCtrls, RXDBCtrl, ALed, db, dbTables, DBCtrls;

type
  TfConsPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    RxDBGrid1: TRxDBGrid;
    Bevel2: TBevel;
    ALed3: TALed;
    Label4: TLabel;
    ALed1: TALed;
    Label5: TLabel;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    RxDBGrid2: TRxDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    qPedido: TQuery;
    qPedidoPedido: TIntegerField;
    qPedidoCodCliente: TIntegerField;
    qPedidoNomeCliente: TStringField;
    qPedidoDtEmissao: TDateField;
    qPedidoCodVendedor: TIntegerField;
    qPedidoCodNatOper: TIntegerField;
    qPedidoQtdPares: TFloatField;
    qPedidoQtdParesFat: TFloatField;
    qPedidoQtdParesRest: TFloatField;
    qPedidoPedidoCliente: TStringField;
    qPedidoUsuario: TStringField;
    qPedidoDtCad: TDateField;
    qPedidoHrCad: TTimeField;
    qPedidoBairro: TStringField;
    qPedidoCidade: TStringField;
    qPedidoUf: TStringField;
    qPedidoCep: TStringField;
    dsqPedido: TDataSource;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qPedidolkNomeVendedor: TStringField;
    qPedidoVlrTotal: TFloatField;
    ALed2: TALed;
    Label7: TLabel;
    qPedidoCancelado: TBooleanField;
    tPedidoItem: TTable;
    dsPedidoItem: TDataSource;
    tPedidoItemPedido: TIntegerField;
    tPedidoItemItem: TIntegerField;
    tPedidoItemCodProduto: TIntegerField;
    tPedidoItemCodCor: TIntegerField;
    tPedidoItemCodGrade: TIntegerField;
    tPedidoItemQtdPares: TFloatField;
    tPedidoItemQtdParesFat: TFloatField;
    tPedidoItemQtdParesRest: TFloatField;
    tPedidoItemPreco: TFloatField;
    tPedidoItemVlrTotal: TFloatField;
    tPedidoItemCopiado: TBooleanField;
    tPedidoItemQtdParesCanc: TFloatField;
    tPedidoItemVlrDesconto: TFloatField;
    tPedidoItemSitTrib: TSmallintField;
    tPedidoItemQtdFatAut: TFloatField;
    tPedidoItemQtdFatMan: TFloatField;
    tPedidoItemReposicao: TBooleanField;
    tPedidoItemObsLote: TStringField;
    tPedidoItemNumOS: TStringField;
    tPedidoItemDtEmbarque: TDateField;
    tPedidoItemCodCia: TIntegerField;
    tPedidoItemDtReprogramacao: TDateField;
    tPedidoItemReprogramacao: TBooleanField;
    tPedidoItemDtBaixa: TDateField;
    tPedidoItemHrBaixa: TTimeField;
    tPedidoItemFabrica: TStringField;
    tPedidoItemQtdLote: TFloatField;
    tPedidoItemCodProdutoCli: TStringField;
    tPedidoItemProdCliPorTamanho: TBooleanField;
    tPedidoItemProducaoVenda: TStringField;
    tPedidoItemPosicao: TIntegerField;
    tPedidoItemTamanho: TStringField;
    tPedidoItemPercComissao: TFloatField;
    qPedidoCodCidade: TIntegerField;
    qPedidolkNomeCidade: TStringField;
    tPedidoItemlkReferencia: TStringField;
    tPedidoItemlkNomeProduto: TStringField;
    tPedidoItemlkNomeCor: TStringField;
    qPedidoFilial: TIntegerField;
    qPedidolkFilial: TStringField;
    qPedidoFantasia: TStringField;
    qPedidoEndereco: TStringField;
    qPedidoCgcCpf: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fConsPedido: TfConsPedido;

implementation

uses UDM1, UConsPedidoNota;

{$R *.DFM}

procedure TfConsPedido.Consulta;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Add('SELECT Dbpedido.Pedido, Dbpedido.CodCliente, Dbcliente.Nome NomeCliente, Dbpedido.DtEmissao,');
  qPedido.SQL.Add(' Dbpedido.CodVendedor, Dbpedido.CodNatOper, Dbpedido.QtdPares, Dbpedido.QtdParesFat,');
  qPedido.SQL.Add(' Dbpedido.QtdParesRest, Dbpedido.PedidoCliente, Dbpedido.Usuario, Dbpedido.DtCad,');
  qPedido.SQL.Add(' Dbpedido.HrCad, Dbcliente.Bairro, Dbcliente.Cidade, Dbcliente.Uf, Dbcliente.Cep, Dbpedido.VlrTotal, Dbpedido.Cancelado, Dbcliente.CodCidade, Dbpedido.Filial, ');
  qPedido.SQL.Add(' Dbcliente.Fantasia, Dbcliente.Endereco, Dbcliente.CgcCpf ');
  qPedido.SQL.Add('FROM "dbPedido.DB" Dbpedido');
  qPedido.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente ON (Dbpedido.CodCliente = Dbcliente.Codigo)');
  qPedido.SQL.Add('WHERE (0=0)');
  if Edit3.Text <> '' then
    begin
      qPedido.SQL.Add(' AND ((Dbcliente.Nome LIKE ''%' + Edit3.Text + '%'')');
      qPedido.SQL.Add(' OR (Dbcliente.Fantasia LIKE ''%' + Edit3.Text + '%''))');
    end;
  if Edit2.Text <> '' then
      qPedido.SQL.Add(' AND Dbpedido.PedidoCliente LIKE ''%' + Edit2.Text + '%''');
  if (DateEdit1.Date > 1) or (DateEdit2.Date > 1) then
    begin
      if DateEdit1.Date < 1 then
        DateEdit1.Text := DateEdit2.Text;
      if DateEdit2.Date < 1 then
        DateEdit2.Text := DateEdit1.Text;
      qPedido.SQL.Add(' AND Dbpedido.DtEmissao BETWEEN :DataI AND :DataF');
      qPedido.ParamByName('DataI').AsDate := DateEdit1.Date;
      qPedido.ParamByName('DataF').AsDate := DateEdit2.Date;
    end;
  if RxDBLookupCombo1.Text <> '' then
    qPedido.SQL.Add(' AND Dbpedido.CodVendedor = ' + IntToStr(RxDBLookupCombo1.KeyValue));
  qPedido.Open;
end;

procedure TfConsPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qPedido.Active then
    begin
      if qPedidoPedido.AsInteger > 0 then
        begin
          DM1.tPedido.IndexFieldNames := 'Pedido';
          DM1.tPedido.FindKey([qPedidoPedido.AsInteger]);
        end;
    end;
  qPedido.Close;
  Action := Cafree;
end;

procedure TfConsPedido.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedido.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if qPedidoQtdParesFat.AsFloat > 0 then
    begin
      if qPedidoQtdParesRest.AsFloat > 0 then
        begin
          BackGround  := clAqua;
          AFont.Color := clBlack;
        end
      else
        begin
          BackGround  := $006FDD00;
          AFont.Color := clBlack;
        end
    end
  else
  if qPedidoCancelado.AsBoolean then
    begin
      BackGround  := clRed;
      AFont.Color := clBlack;
    end;
end;

procedure TfConsPedido.RxDBGrid1DblClick(Sender: TObject);
begin
  if qPedidoQtdParesFat.AsInteger > 0 then
    begin
      DM1.tPedido.IndexFieldNames := 'Pedido';
      DM1.tPedido.SetKey;
      DM1.tPedidoPedido.AsInteger := qPedidoPedido.AsInteger;
      if DM1.tPedido.GotoKey then
        begin
          fConsPedidoNota := TfConsPedidoNota.Create(Self);
          fConsPedidoNota.ShowModal;
        end;
    end;
end;

procedure TfConsPedido.BitBtn1Click(Sender: TObject);
begin
  RxDBGrid2.DataSource := dsPedidoItem;
  Consulta;
end;

procedure TfConsPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F5 then
    BitBtn1Click(Sender);
end;

procedure TfConsPedido.RxDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if tPedidoItemQtdParesFat.AsFloat > 0 then
    begin
      if tPedidoItemQtdParesRest.AsFloat > 0 then
        begin
          BackGround  := clAqua;
          AFont.Color := clBlack;
        end
      else
        begin
          BackGround  := $006FDD00;
          AFont.Color := clBlack;
        end
    end
  else
  if tPedidoItemQtdPares.AsFloat <= 0 then
    begin
      BackGround  := clRed;
      AFont.Color := clBlack;
    end;
end;

procedure TfConsPedido.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Return  then
    Close;
end;

end.
