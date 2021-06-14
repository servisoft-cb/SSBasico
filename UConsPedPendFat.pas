unit UConsPedPendFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, Db, DBTables, RXCtrls, SMDBGrid, StdCtrls,
  Buttons, ExtCtrls;

type
  TfConsPedPendFat = class(TForm)
    qPedPendente: TQuery;
    dsPedPendente: TDataSource;
    SMDBGrid1: TSMDBGrid;
    qPedPendentePedido: TIntegerField;
    qPedPendenteReferencia: TStringField;
    qPedPendenteNomeCliente: TStringField;
    qPedPendenteNomeCor: TStringField;
    qPedPendenteDtReprogramacao: TDateField;
    qPedPendenteQtdRestante: TFloatField;
    qPedPendentePedidoCliente: TStringField;
    qPedPendenteNumOS: TStringField;
    qPedPendenteItemPedido: TIntegerField;
    qPedPendenteCodProduto: TIntegerField;
    qPedPendentePlano: TStringField;
    qPedPendenteTalao: TIntegerField;
    qPedPendenteTipo: TStringField;
    qPedPendenteFantasia: TStringField;
    qPedPendenteCodCliente: TIntegerField;
    qPedPendenteDescMaterial: TStringField;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    RxLabel1: TRxLabel;
    qPedPendenteFabrica: TStringField;
    qPedPendenteCgcCpf: TStringField;
    qPedPendenteFilial: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsPedPendFat: TfConsPedPendFat;

implementation

uses UDM1;

{$R *.DFM}

procedure TfConsPedPendFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tTalao.Close;
  DM1.tTalaoGrade.Close;
  qPedPendente.Close;
  Action := Cafree;
end;

procedure TfConsPedPendFat.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;
  DM1.tTalao.Refresh;
  DM1.tTalaoGrade.Refresh;
  Screen.Cursor   := crHourGlass;
  qPedPendente.Open;
  Screen.Cursor   := crDefault;
end;

procedure TfConsPedPendFat.BitBtn1Click(Sender: TObject);
begin
  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;
  DM1.tTalao.Refresh;
  DM1.tTalaoGrade.Refresh;
  Screen.Cursor   := crHourGlass;
  qPedPendente.Close;
  qPedPendente.Open;
  Screen.Cursor   := crDefault;
end;

end.
