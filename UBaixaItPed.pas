unit UBaixaItPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBVGrids, ExtCtrls, StdCtrls, Buttons, Db, DBTables;

type
  TfBaixaItPed = class(TForm)
    Panel1: TPanel;
    VDBGrid1: TVDBGrid;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure VDBGrid1DblClick(Sender: TObject);
    procedure VDBGrid1CellClick(Column: TColumn);
    procedure VDBGrid1ColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vQtdFat : Integer;
  end;

var
  fBaixaItPed: TfBaixaItPed;

implementation

uses UDM1, UBaixaPedido, UBaixaItPedQtd;

{$R *.DFM}

procedure TfBaixaItPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fBaixaItPed.vQtdFat > 0 then
    fBaixaPedido.Grava_PedidoNota(vQtdFat);
  Action := Cafree;
end;

procedure TfBaixaItPed.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaItPed.VDBGrid1DblClick(Sender: TObject);
begin
  fBaixaItPedQtd := TfBaixaItPedQtd.Create(Self);
  fBaixaItPedQtd.ShowModal;
end;

procedure TfBaixaItPed.VDBGrid1CellClick(Column: TColumn);
begin
  vDBGrid1.SelectedIndex := 1;
end;

procedure TfBaixaItPed.VDBGrid1ColEnter(Sender: TObject);
begin
  vDBGrid1.SelectedIndex := 1;
end;

procedure TfBaixaItPed.FormShow(Sender: TObject);
begin
  vQtdFat := 0;
  vDBGrid1.SelectedIndex := 1;
end;

procedure TfBaixaItPed.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if fBaixaPedido.tPedidoGradePosicao.AsInteger > 0 then
        begin
          fBaixaItPedQtd := TfBaixaItPedQtd.Create(Self);
          fBaixaItPedQtd.ShowModal;
        end;
    end;
end;

procedure TfBaixaItPed.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
