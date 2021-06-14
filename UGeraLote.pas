unit UGeraLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls, Grids,
  DBGrids, SMDBGrid, DB, DBClient, RxLookup, DBTables, DBVGrids, ALed;

type
  TfGeraLote = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    Shape1: TShape;
    VDBGrid1: TVDBGrid;
    ALed1: TALed;
    Label7: TLabel;
    ALed2: TALed;
    Label4: TLabel;
    Label5: TLabel;
    ALed3: TALed;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure SMDBGrid3EditRecord(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Posiciona_Pedido;
    procedure Posiciona_Pedido2;
  public
    { Public declarations }
  end;

var
  fGeraLote: TfGeraLote;

implementation

uses UDM1, Math, UGeraLote2, UConsPedidoPendLotes, UConsLote;

{$R *.dfm}

procedure TfGeraLote.Posiciona_Pedido;
begin
  if (CurrencyEdit1.AsInteger > 0) and (RxDBLookupCombo1.Text <> '') then
    begin
      if not DM1.tPedido.Locate('Pedido',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
        ShowMessage('Pedido não cadastrado!')
      else
      if DM1.tPedidoFilial.AsInteger <> RxDBLookupCombo1.KeyValue then
        ShowMessage('Filial diferente da informada!')
      else
        begin
          SMDBGrid1.DataSource := DM1.dsPedidoItem;
          VDBGrid1.DataSource  := DM1.dsPedidoGrade;
        end;
    end
  else
    ShowMessage('Falta informar a filial ou o nº do pedido!');
end;

procedure TfGeraLote.Posiciona_Pedido2;
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      if not DM1.tPedido.Locate('PedidoCliente',Edit1.Text,[loCaseInsensitive]) then
        ShowMessage('Pedido não cadastrado!')
      else
      if DM1.tPedidoFilial.AsInteger <> RxDBLookupCombo1.KeyValue then
        ShowMessage('Filial diferente da informada!')
      else
        begin
          CurrencyEdit1.AsInteger := DM1.tPedidoPedido.AsInteger;
          SMDBGrid1.DataSource    := DM1.dsPedidoItem;
          VDBGrid1.DataSource     := DM1.dsPedidoGrade;
        end;
    end
  else
    ShowMessage('Falta informar a filial ou o nº do pedido!');
end;

procedure TfGeraLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoGrade.Close;
  DM1.tTalao.Close;
  DM1.tTalaoGrade.Close;
  Action := Cafree;
end;

procedure TfGeraLote.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfGeraLote.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Posiciona_Pedido;
end;

procedure TfGeraLote.CurrencyEdit1Change(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  VDBGrid1.DataSource  := nil;
end;

procedure TfGeraLote.SMDBGrid3EditRecord(Sender: TObject);
begin
  ShowMessage('Edita o registro!')
end;

procedure TfGeraLote.FormShow(Sender: TObject);
begin
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;
end;

procedure TfGeraLote.SMDBGrid1DblClick(Sender: TObject);
begin
  if (CurrencyEdit1.AsInteger > 0) and (SMDBGrid1.DataSource <> nil) and (DM1.tPedidoItemItem.AsInteger > 0) then
    begin
      fGeraLote2     := TfGeraLote2.Create(Self);
      fGeraLote2.Tag := 0;
      fGeraLote2.ShowModal;
    end;
end;

procedure TfGeraLote.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  AFont.Color := clBlack;
  if ((SMDBGrid1.DataSource <> nil) and (DM1.tPedidoItemQtdParesRest.AsFloat <= 0) and
     (DM1.tPedidoItemQtdParesFat.AsFloat > 0)) or
     ((SMDBGrid1.DataSource <> nil) and (DM1.tPedidoItemDtBaixa.AsDateTime > 0) ) then
    Background  := clTeal
  else
  if (SMDBGrid1.DataSource <> nil) and (DM1.tPedidoItemQtdParesRest.AsFloat <= 0) and
     (DM1.tPedidoItemQtdParesCanc.AsFloat > 0) then
    Background  := clRed
  else
  if (SMDBGrid1.DataSource <> nil) and not(DM1.tPedidoItemTalaoGerado.AsBoolean) then
    Background  := clSilver;
end;

procedure TfGeraLote.BitBtn3Click(Sender: TObject);
begin
  fConsPedidoPendLotes := TfConsPedidoPendLotes.Create(Self);
  fConsPedidoPendLotes.ShowModal;
  CurrencyEdit1.SetFocus;
end;

procedure TfGeraLote.BitBtn1Click(Sender: TObject);
begin
  fConsLote := TfConsLote.Create(Self);
  if CurrencyEdit1.AsInteger > 0 then
    fConsLote.vNumPedidoInt := CurrencyEdit1.AsInteger;
  fConsLote.ShowModal;
end;

procedure TfGeraLote.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Edit1.Text <> '') then
    Posiciona_Pedido2;
end;

procedure TfGeraLote.Edit1Change(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
  VDBGrid1.DataSource  := nil;
end;

procedure TfGeraLote.BitBtn4Click(Sender: TObject);
begin
  if SMDBGrid1.DataSource <> nil then
    begin
      fGeraLote2 := TfGeraLote2.Create(Self);
      fGeraLote2.Tag := 1;
      fGeraLote2.ShowModal;
      fGeraLote2.Tag := 0;
    end;
end;

procedure TfGeraLote.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  vFlag : Boolean;
begin
  SMDBGrid1.DisableScroll;
  if SMDBGrid1.DataSource <> nil then
    begin
      vFlag := True;
      DM1.tPedidoItem.First;
      while not DM1.tPedidoItem.Eof do
        begin
          if not DM1.tPedidoItemTalaoGerado.AsBoolean then
            begin
              vFlag := False;
              DM1.tPedidoItem.Last;
            end;
          DM1.tPedidoItem.Next;
        end;
      SMDBGrid1.EnableScroll;
      if vFlag then
        CanClose := vFlag
      else
        begin
          if not(vFlag) and (MessageDlg('Pedido possui itens que não foram gerados lotes, sair?',mtconfirmation,[mbok,mbno],0)=mrok) then
            CanClose := True
          else
            CanClose := False;
        end;
    end;
end;

end.
