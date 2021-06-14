unit UConsPedidoBRTam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  SMDBGrid;

type
  TfConsPedidoBRTam = class(TForm)
    mProduto: TClientDataSet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mProdutoCodProduto: TIntegerField;
    mProdutoNomeProduto: TStringField;
    mProdutoReferencia: TStringField;
    mProdutoTamanho: TStringField;
    mProdutoQtd: TIntegerField;
    mProdutoVlrTotal: TFloatField;
    SMDBGrid1: TSMDBGrid;
    dsmProduto: TDataSource;
    mProdutoVlrTotalFabrica: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mProdutoNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Montar_mProduto;
  public
    { Public declarations }
  end;

var
  fConsPedidoBRTam: TfConsPedidoBRTam;

implementation

uses UConsPedidoBR, rsExcelExporta;

{$R *.dfm}

procedure TfConsPedidoBRTam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsPedidoBRTam.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsPedidoBRTam.FormShow(Sender: TObject);
begin
  Montar_mProduto;
end;

procedure TfConsPedidoBRTam.Montar_mProduto;
var
  vAux : Real;
begin
  fConsPedidoBR.qConsulta.First;
  while not fConsPedidoBR.qConsulta.Eof do
  begin
    fConsPedidoBR.tPedidoGrade.First;
    while not fConsPedidoBR.tPedidoGrade.Eof do
    begin
      if mProduto.FindKey([fConsPedidoBR.qConsultaCodProduto.AsInteger,fConsPedidoBR.tPedidoGradelkTamanho.AsString]) then
        mProduto.Edit
      else
      begin
        mProduto.Insert;
        mProdutoCodProduto.AsInteger := fConsPedidoBR.qConsultaCodProduto.AsInteger;
        mProdutoNomeProduto.AsString := fConsPedidoBR.qConsultaNomeProduto.AsString;
        mProdutoReferencia.AsString  := fConsPedidoBR.qConsultaReferencia.AsString;
        mProdutoTamanho.AsString     := fConsPedidoBR.tPedidoGradelkTamanho.AsString;
      end;                                                                           
      mProdutoQtd.AsInteger           := mProdutoQtd.AsInteger + fConsPedidoBR.tPedidoGradeQtd.AsInteger;
      vAux := StrToFloat(FormatFloat('0.00',fConsPedidoBR.qConsultaPreco.AsFloat * fConsPedidoBR.tPedidoGradeQtd.AsFloat));
      mProdutoVlrTotal.AsFloat        := StrToFloat(FormatFloat('0.00',mProdutoVlrTotal.AsFloat + vAux));

      vAux := StrToFloat(FormatFloat('0.00',fConsPedidoBR.qConsultaPrecoFabrica.AsFloat * fConsPedidoBR.tPedidoGradeQtd.AsFloat));
      mProdutoVlrTotalFabrica.AsFloat := StrToFloat(FormatFloat('0.00',mProdutoVlrTotalFabrica.AsFloat + vAux));

      mProduto.Post;
      fConsPedidoBR.tPedidoGrade.Next;
    end;
    
    fConsPedidoBR.qConsulta.Next;
  end;
end;

procedure TfConsPedidoBRTam.mProdutoNewRecord(DataSet: TDataSet);
begin
  mProdutoQtd.AsInteger           := 0;
  mProdutoVlrTotal.AsFloat        := 0;
  mProdutoVlrTotalFabrica.AsFloat := 0;
end;

procedure TfConsPedidoBRTam.BitBtn1Click(Sender: TObject);
begin
  ExcelExporta('SMDBGrid1',fConsPedidoBRTam);
end;

end.
