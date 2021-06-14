unit UGeraLoteFB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, ExtCtrls, Grids,
  DBGrids, SMDBGrid, DB, DBClient, RxLookup, DBTables, DBVGrids, ALed,
  RzTabs;

type
  TfGeraLoteFB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure SMDBGrid3EditRecord(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    vNumTalao : Integer;

    procedure Posiciona_Pedido;
    procedure Le_PedidoItem;
    procedure Abre_Talao;
    procedure Gravar_Talao;
  public
    { Public declarations }
  end;

var
  fGeraLoteFB: TfGeraLoteFB;

implementation

uses UDM1, Math, UGeraLote2, UConsPedidoPendLotes, UConsLoteFB, UDMTalao;

{$R *.dfm}

procedure TfGeraLoteFB.Posiciona_Pedido;
begin
  if (CurrencyEdit1.AsInteger > 0) then
  begin
    RzPageControl1.ActivePage := TabSheet1;
    if not DM1.tPedido.Locate('Pedido',CurrencyEdit1.AsInteger,[loCaseInsensitive]) then
      ShowMessage('Pedido não cadastrado!')
    else
    begin
      BitBtn4.Enabled := (DM1.tPedidoItemNumTalao.AsInteger <= 0);
      if DM1.tPedidoItemNumTalao.AsInteger > 0 then
        ShowMessage('Lote/Talão/OS Já gerado!');
      SMDBGrid1.DataSource := DM1.dsPedidoItem;
    end;
  end
  else
    ShowMessage('Falta informar a filial ou o nº do pedido!');
end;

procedure TfGeraLoteFB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPedido.Close;
  DM1.tPedidoItem.Close;
  DM1.tPedidoGrade.Close;

  if DMTalao.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMTalao);

  Action := Cafree;
end;

procedure TfGeraLoteFB.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfGeraLoteFB.CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Posiciona_Pedido;
end;

procedure TfGeraLoteFB.CurrencyEdit1Change(Sender: TObject);
begin
  SMDBGrid1.DataSource := nil;
end;

procedure TfGeraLoteFB.SMDBGrid3EditRecord(Sender: TObject);
begin
  ShowMessage('Edita o registro!')
end;

procedure TfGeraLoteFB.FormShow(Sender: TObject);
begin
  if not Assigned(DMTalao) then
    DMTalao := TDMTalao.Create(Self);

  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;
  DM1.tPedidoGrade.Open;
end;

procedure TfGeraLoteFB.BitBtn1Click(Sender: TObject);
begin
  fConsLoteFB := TfConsLoteFB.Create(Self);
  if CurrencyEdit1.AsInteger > 0 then
    fConsLoteFB.vNumPedidoInt := CurrencyEdit1.AsInteger;
  fConsLoteFB.ShowModal;
end;

procedure TfGeraLoteFB.BitBtn4Click(Sender: TObject);
begin
  Abre_Talao;
  if SMDBGrid1.DataSource <> nil then
    Le_PedidoItem;
  BitBtn4.Enabled := False;
end;

procedure TfGeraLoteFB.Le_PedidoItem;
var
  vNumIni : Integer;
begin
  DMTalao.qProximoTalao.Close;
  DMTalao.qProximoTalao.Open;
  vNumTalao := DMTalao.qProximoTalaoTALAO.AsInteger;
  DMTalao.qProximoTalao.Close;
  vNumIni := vNumTalao;

  DM1.tPedidoItem.First;
  while not DM1.tPedidoItem.Eof do
  begin
    if not(DM1.tPedidoItemCancelado.AsBoolean) and (DM1.tPedidoItemGerarTalao.AsBoolean) and (DM1.tPedidoItemQtdParesRest.AsInteger > 0) then
      Gravar_Talao;
    DM1.tPedidoItem.Next;
  end;
  if vNumTalao = vNumIni then
    Label3.Caption := 'Não gerado OS'
  else
  begin
    vNumIni := vNumIni + 1;
    Label3.Caption := 'OS gerada: ' + IntToStr(vNumIni) + ' a ' + IntToStr(vNumTalao);
  end;
end;

procedure TfGeraLoteFB.Abre_Talao;
begin
  DMTalao.cdsTalao.Close;
  DMTalao.sdsTalao.CommandText := ctTalao
                                + ' WHERE TALAO = 0 ';
  DMTalao.cdsTalao.Open
end;

procedure TfGeraLoteFB.Gravar_Talao;
begin
  vNumTalao := vNumTalao + 1;
  DMTalao.cdsTalao.Insert;
  DMTalao.cdsTalaoTALAO.AsInteger          := vNumTalao;
  DMTalao.cdsTalaoCODPRODUTO.AsInteger     := DM1.tPedidoItemCodProduto.AsInteger;
  DMTalao.cdsTalaoCODCOR.AsInteger         := DM1.tPedidoItemCodCor.AsInteger;
  DMTalao.cdsTalaoTAMANHO.AsString         := DM1.tPedidoItemTamanho.AsString;
  DMTalao.cdsTalaoPEDIDO.AsInteger         := DM1.tPedidoItemPedido.AsInteger;
  DMTalao.cdsTalaoITEMPEDIDO.AsInteger     := DM1.tPedidoItemItem.AsInteger;
  DMTalao.cdsTalaoPEDIDOCLIENTE.AsString   := DM1.tPedidoPedidoCliente.AsString;
  DMTalao.cdsTalaoQTD.AsFloat              := DM1.tPedidoItemQtdParesRest.AsFloat;
  DMTalao.cdsTalaoCODCLIENTE.AsInteger     := DM1.tPedidoCodCliente.AsInteger;
  DMTalao.cdsTalaoPRODUZIDO.AsString       := 'N';
  DMTalao.cdsTalaoDTENTREGA.AsDateTime     := DM1.tPedidoItemDtReprogramacao.AsDateTime;
  DMTalao.cdsTalaoFILIAL.AsInteger         := DM1.tPedidoFilial.AsInteger;
  DMTalao.cdsTalaoNUMOSPEDIDO.AsString     := DM1.tPedidoItemNumOS.AsString;
  DMTalao.cdsTalaoCANCELADO.AsString       := 'N';
  DMTalao.cdsTalaoMOTIVOCANCELADO.AsString := '';
  DMTalao.cdsTalaoCODCOMBINACAO.AsInteger  := DM1.tPedidoItemCodCombinacao.AsInteger;
  DMTalao.cdsTalaoQTDPRODUZIDO.AsFloat     := 0;
  DMTalao.cdsTalaoNUMMOVEST.AsInteger      := 0;
  DMTalao.cdsTalaoDTGERADO.AsDateTime      := Date;
  DMTalao.cdsTalaoOBS.AsString             := DM1.tPedidoItemObsTalao.AsString;
  DMTalao.cdsTalao.Post;
  DMTalao.cdsTalao.ApplyUpdates(0);

  DM1.tPedidoItem.Edit;
  DM1.tPedidoItemTalaoGerado.AsBoolean := True;
  DM1.tPedidoItemNumTalao.AsInteger    := 0;
  DM1.tPedidoItem.Post;
end;

end.
