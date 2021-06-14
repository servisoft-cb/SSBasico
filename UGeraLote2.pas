unit UGeraLote2;

interface

uses              
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, SMDBGrid, DBCtrls, StdCtrls,
  ExtCtrls, DBVGrids, Buttons, Mask, ToolEdit, CurrEdit, ALed;

type
  TfGeraLote2 = class(TForm)
    SMDBGrid2: TSMDBGrid;
    mTalao: TClientDataSet;
    mTalaoPedido: TIntegerField;
    mTalaoItem: TIntegerField;
    mTalaoLote: TIntegerField;
    mTalaoQtd: TFloatField;
    mTalaoDtEntrega: TDateField;
    mTalaoDtReprogramacao: TDateField;
    mTalaoReprogramacao: TBooleanField;
    dsmTalao: TDataSource;
    mTalaoGrade: TClientDataSet;
    mTalaoGradePedido: TIntegerField;
    mTalaoGradeItem: TIntegerField;
    mTalaoGradeLote: TIntegerField;
    mTalaoGradeCodGrade: TIntegerField;
    mTalaoGradePosicao: TIntegerField;
    mTalaoGradeQtd: TFloatField;
    mTalaoGradeTamanho: TStringField;
    dsmTalaoGrade: TDataSource;
    mGrade: TClientDataSet;
    mGradePedido: TIntegerField;
    mGradeItem: TIntegerField;
    mGradeCodGrade: TIntegerField;
    mGradePosicao: TIntegerField;
    mGradeTamanho: TStringField;
    mGradeQtd: TFloatField;
    mGradeQtdOriginal: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    VDBGrid1: TVDBGrid;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn3: TBitBtn;
    mTalaoNumSeq: TIntegerField;
    mTalaoGradeNumSeq: TIntegerField;
    VDBGrid2: TVDBGrid;
    mTalaoNumOS: TStringField;
    StaticText1: TStaticText;
    ALed1: TALed;
    Label9: TLabel;
    ALed2: TALed;
    Label10: TLabel;
    ALed3: TALed;
    Label11: TLabel;
    mTalaoDtBaixa: TDateField;
    mTalaoHoraBaixa: TDateField;
    mTalaoQtdFaturada: TFloatField;
    mTalaoQtdRestante: TFloatField;
    mTalaoCancelado: TBooleanField;
    BitBtn10: TBitBtn;
    mTalaoDtCancelado: TDateField;
    mTalaoMotivoCancelado: TStringField;
    ALed4: TALed;
    Label12: TLabel;
    BitBtn5: TBitBtn;
    mInfLote: TClientDataSet;
    mInfLoteQtdLote: TIntegerField;
    mInfLoteQtdPares: TFloatField;
    dsmInfLote: TDataSource;
    mTalaoPlano: TStringField;
    mTalaoFabrica: TStringField;
    BitBtn14: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mTalaoNewRecord(DataSet: TDataSet);
    procedure mTalaoGradeNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure mGradeNewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn10Click(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure mInfLoteBeforePost(DataSet: TDataSet);
    procedure mTalaoBeforePost(DataSet: TDataSet);
    procedure BitBtn14Click(Sender: TObject);
    procedure VDBGrid2Enter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure mTalaoGradeAfterPost(DataSet: TDataSet);
    procedure mTalaoGradeBeforePost(DataSet: TDataSet);
    procedure VDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vGerar : Boolean;
    vQtd : Real;
    vQtdOriginal : Real;
    vContador : Integer;
    vNumSeq   : Integer;
    procedure Monta_mGrade;
    procedure Monta_LoteAux;
    procedure Limpa_Memos;
    procedure Monta_Memos;
    procedure Verifica_mTalao;
    procedure Grava_Lote;
    procedure Desconta_Pedido;
    procedure Soma_Pedido;
    procedure Ajusta_mTalao;
    procedure Excluir_Talao;
  public
    { Public declarations }
    procedure Cancela_Talao;
  end;

var
  fGeraLote2: TfGeraLote2;

implementation

uses UDM1, UDtReprogTalao, UCancelaLote, UConsPedidoPendLotes, ULoteQtd,
  UConsLote;

{$R *.dfm}

procedure TfGeraLote2.Cancela_Talao;
var
  vTipo : String;
begin
  vTipo := '';
  if (mTalaoDtCancelado.AsDateTime > 0) and (DM1.tTalaoDtCancelado.AsDateTime < 1) then
    vTipo := 'D'
  else
  if (mTalaoDtCancelado.AsDateTime < 1) and (DM1.tTalaoDtCancelado.AsDateTime > 0) then
    vTipo := 'S';
  DM1.tTalaoCancelado.AsBoolean        := mTalaoCancelado.AsBoolean;
  if mTalaoDtCancelado.AsDateTime > 1 then
    DM1.tTalaoDtCancelado.AsDateTime     := mTalaoDtCancelado.AsDateTime
  else
    DM1.tTalaoDtCancelado.Clear;
  DM1.tTalaoMotivoCancelado.AsString   := mTalaoMotivoCancelado.AsString;
  if vTipo = 'D' then
    Desconta_Pedido
  else
  if vTipo = 'S' then
    Soma_Pedido;
end;

procedure TfGeraLote2.Excluir_Talao;
begin
  if DM1.tTalao.Locate('Talao',mTalaoLote.AsInteger,[loCaseInsensitive]) then
    begin
      DM1.tTalaoGrade.First;
      while not DM1.tTalaoGrade.Eof do
        DM1.tTalaoGrade.Delete;
      DM1.tTalao.Delete;
    end;
end;

procedure TfGeraLote2.Desconta_Pedido;
var
  vNumero, vNumeroCanc : Integer;
begin
  DM1.tPedidoItem.Edit;
  DM1.tPedidoItemQtdParesCanc.AsFloat := DM1.tPedidoItemQtdParesCanc.AsFloat + DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoItemQtdPares.AsFloat     := DM1.tPedidoItemQtdPares.AsFloat - DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat - DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoItem.Post;

  DM1.tPedido.Edit;
  DM1.tPedidoQtdPares.AsFloat           := DM1.tPedidoQtdPares.AsFloat - DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoQtdParesRest.AsFloat       := DM1.tPedidoQtdParesRest.AsFloat - DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoQtdParesCanc.AsFloat       := DM1.tPedidoQtdParesCanc.AsFloat + DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedido.Post;

  DM1.tPedidoCanc.Refresh;
  DM1.tPedidoCanc.Last;
  vNumero := DM1.tPedidoCancItem.AsInteger;
  DM1.tPedidoCanc.Insert;
  DM1.tPedidoCancPedido.AsInteger  := DM1.tPedidoPedido.AsInteger;
  DM1.tPedidoCancItemPed.AsInteger := DM1.tPedidoItemItem.AsInteger;
  DM1.tPedidoCancItem.AsInteger    := vNumero + 1;
  DM1.tPedidoCancData.AsDateTime   := DM1.tTalaoDtCancelado.AsDateTime;
  DM1.tPedidoCancMotivo.AsString   := DM1.tTalaoMotivoCancelado.AsString;
  DM1.tPedidoCancQtd.AsFloat       := DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoCancNumLote.AsInteger := DM1.tTalaoTalao.AsInteger;
  DM1.tPedidoCanc.Post;

  DM1.tTalaoGrade.First;
  while not DM1.tTalaoGrade.Eof do
    begin
      if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tTalaoGradeCodGrade.AsInteger,DM1.tTalaoGradePosicao.AsInteger]),[locaseinsensitive]) then
        begin
          DM1.tPedidoGrade.Edit;
          DM1.tPedidoGradeQtdParesCanc.AsFloat := DM1.tPedidoGradeQtdParesCanc.AsFloat + DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoGradeQtd.AsFloat          := DM1.tPedidoGradeQtd.AsFloat - DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat - DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoGrade.Post;

          vNumeroCanc := vNumeroCanc + 1;
          DM1.tPedidoCancGrade.Insert;
          DM1.tPedidoCancGradePedido.AsInteger   := DM1.tPedidoCancPedido.AsInteger;
          DM1.tPedidoCancGradeItemPed.AsInteger  := DM1.tPedidoCancItemPed.AsInteger;
          DM1.tPedidoCancGradeItem.AsInteger     := vNumeroCanc;
          //DM1.tPedidoCancGradeItem.AsInteger     := DM1.tPedidoCancItem.AsInteger;
          DM1.tPedidoCancGradeCodGrade.AsInteger := DM1.tTalaoGradeCodGrade.AsInteger;
          DM1.tPedidoCancGradePosicao.AsInteger  := DM1.tTalaoGradePosicao.AsInteger;
          DM1.tPedidoCancGradeQtd.AsFloat        := DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoCancGrade.Post;
        end;
      DM1.tTalaoGrade.Next;
    end;
  vNumeroCanc := 0;
end;

procedure TfGeraLote2.Soma_Pedido;
begin
  DM1.tPedidoItem.Edit;
  DM1.tPedidoItemQtdParesCanc.AsFloat := DM1.tPedidoItemQtdParesCanc.AsFloat - DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoItemQtdPares.AsFloat     := DM1.tPedidoItemQtdPares.AsFloat + DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoItem.Post;

  DM1.tPedido.Edit;
  DM1.tPedidoQtdPares.AsFloat           := DM1.tPedidoQtdPares.AsFloat + DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoQtdParesRest.AsFloat       := DM1.tPedidoQtdParesRest.AsFloat + DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedidoQtdParesCanc.AsFloat       := DM1.tPedidoQtdParesCanc.AsFloat - DM1.tTalaoQtdRestante.AsFloat;
  DM1.tPedido.Post;

  if DM1.tPedidoCanc.Locate('Pedido;ItemPed;NumLote',VarArrayOf([DM1.tTalaoPedido.AsInteger,DM1.tTalaoItemPedido.AsInteger,DM1.tTalaoTalao.AsInteger]),[locaseinsensitive]) then
    begin
      DM1.tPedidoCancGrade.First;
      while not DM1.tPedidoCancGrade.Eof do
        DM1.tPedidoCancGrade.Delete;
      DM1.tPedidoCanc.Delete;
    end;

  DM1.tTalaoGrade.First;
  while not DM1.tTalaoGrade.Eof do
    begin
      if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tTalaoGradeCodGrade.AsInteger,DM1.tTalaoGradePosicao.AsInteger]),[locaseinsensitive]) then
        begin
          DM1.tPedidoGrade.Edit;
          DM1.tPedidoGradeQtdParesCanc.AsFloat := DM1.tPedidoGradeQtdParesCanc.AsFloat - DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoGradeQtd.AsFloat          := DM1.tPedidoGradeQtd.AsFloat + DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tTalaoGradeQtdRestante.AsFloat;
          DM1.tPedidoGrade.Post;
        end;
      DM1.tTalaoGrade.Next;
    end;
end;

procedure TfGeraLote2.Grava_Lote;
var
  vNumTalao : Integer;
  vTipo : String;
  vDtReprogramacao : TDateTime;
  vReprogramacao : Boolean;
begin
  DM1.tTalao.Refresh;
  DM1.tTalao.Last;
  vNumTalao      := DM1.tTalaoTalao.AsInteger;
  vReprogramacao := False;
  mTalao.First;
  while not mTalao.Eof do
    begin
      if Tag = 1 then
        DM1.tPedidoItem.Locate('Item',mTalaoItem.AsInteger,[loCaseInsensitive]);
      if mTalaoQtdFaturada.AsFloat <= 0 then
        begin
          if mTalaoLote.AsInteger > 0 then
            begin
              if DM1.tTalao.Locate('Talao',mTalaoLote.AsInteger,[loCaseInsensitive]) then
                DM1.tTalao.Edit
              else
                begin
                  DM1.tTalao.Insert;
                  DM1.tTalaoTalao.AsInteger      := mTalaoLote.AsInteger;
                end
            end
          else
            begin
              DM1.tTalao.Insert;
              vNumTalao := vNumTalao + 1;
              DM1.tTalaoTalao.AsInteger := vNumTalao;
            end;
          //vTipo := '';
          //if (mTalaoDtCancelado.AsDateTime > 0) and (DM1.tTalaoDtCancelado.AsDateTime < 1) then
          //  vTipo := 'D'
          //else
          //if (mTalaoDtCancelado.AsDateTime < 1) and (DM1.tTalaoDtCancelado.AsDateTime > 0) then
          //  vTipo := 'S';
          DM1.tTalaoPedido.AsInteger           := DM1.tPedidoPedido.AsInteger;
          DM1.tTalaoItemPedido.AsInteger       := DM1.tPedidoItemItem.AsInteger;
          DM1.tTalaoCodProduto.AsInteger       := DM1.tPedidoItemCodProduto.AsInteger;
          DM1.tTalaoCodCor.AsInteger           := DM1.tPedidoItemCodCor.AsInteger;
          DM1.tTalaoCodGrade.AsInteger         := DM1.tPedidoItemCodGrade.AsInteger;
          DM1.tTalaoPosicao.AsInteger          := DM1.tPedidoItemPosicao.AsInteger;
          DM1.tTalaoTamanho.AsString           := DM1.tPedidoItemTamanho.AsString;
          DM1.tTalaoCodCliente.AsInteger       := DM1.tPedidoCodCliente.AsInteger;
          DM1.tTalaoPedidoCliente.AsString     := DM1.tPedidoPedidoCliente.AsString;
          DM1.tTalaoDtEntrega.AsDateTime       := mTalaoDtEntrega.AsDateTime;
          DM1.tTalaoDtReprogramacao.AsDateTime := mTalaoDtReprogramacao.AsDateTime;
          DM1.tTalaoReprogramacao.AsBoolean    := mTalaoReprogramacao.AsBoolean;
          DM1.tTalaoFilial.AsInteger           := DM1.tPedidoFilial.AsInteger;
          DM1.tTalaoQuantidade.AsFloat         := mTalaoQtd.AsFloat;
          DM1.tTalaoQtdRestante.AsFloat        := mTalaoQtd.AsFloat;
          DM1.tTalaoNumOS.AsString             := mTalaoNumOS.AsString;
          DM1.tTalaoPlano.AsString             := mTalaoPlano.AsString;
          DM1.tTalaoFabrica.AsString           := mTalaoFabrica.AsString;
          DM1.tTalaoCancelado.AsBoolean        := mTalaoCancelado.AsBoolean;
          if mTalaoDtCancelado.AsDateTime > 1 then
            DM1.tTalaoDtCancelado.AsDateTime     := mTalaoDtCancelado.AsDateTime
          else
            DM1.tTalaoDtCancelado.Clear;
          DM1.tTalaoMotivoCancelado.AsString   := mTalaoMotivoCancelado.AsString;
          if mTalaoDtBaixa.AsDateTime > 1 then
            DM1.tTalaoDtBaixa.AsDateTime         := mTalaoDtBaixa.AsDateTime
          else
            DM1.tTalaoDtBaixa.Clear;
          DM1.tTalaoTipo.AsString  := DM1.tPedidoTipo.AsString;
          DM1.tTalaoCodCombinacao.AsInteger := DM1.tPedidoItemCodCombinacao.AsInteger;
          DM1.tTalao.Post;
          mTalaoGrade.First;
          while not mTalaoGrade.Eof do
            begin
              if DM1.tTalaoGrade.Locate('CodGrade;Posicao',VarArrayOf([mTalaoGradeCodGrade.AsInteger,mTalaoGradePosicao.AsInteger]),[locaseinsensitive]) then
                DM1.tTalaoGrade.Edit
              else
                begin
                  DM1.tTalaoGrade.Insert;
                  DM1.tTalaoGradeTalao.AsInteger     := DM1.tTalaoTalao.AsInteger;
                  DM1.tTalaoGradeCodGrade.AsInteger  := mTalaoGradeCodGrade.AsInteger;
                  DM1.tTalaoGradePosicao.AsInteger   := mTalaoGradePosicao.AsInteger;
                end;
              DM1.tTalaoGradeQuantidade.AsFloat  := mTalaoGradeQtd.AsFloat;
              DM1.tTalaoGradeQtdRestante.AsFloat := mTalaoGradeQtd.AsFloat;
              DM1.tTalaoGradeTamanho.AsString    := mTalaoGradeTamanho.AsString;
              DM1.tTalaoGrade.Post;
              mTalaoGrade.Next;
            end;
          //if vTipo = 'D' then
          //  Desconta_Pedido
          //else
          //if vTipo = 'S' then
          //  Soma_Pedido;
        end;
      if Tag = 1 then
        begin
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemTalaoGerado.AsBoolean   := True;
          DM1.tPedidoItemQtdLote.AsInteger       := 1;
          DM1.tPedidoItemReprogramacao.AsBoolean := mTalaoReprogramacao.AsBoolean;
          if mTalaoReprogramacao.AsBoolean then
            DM1.tPedidoItemDtReprogramacao.AsDateTime := mTalaoDtReprogramacao.AsDateTime
          else
            DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
          DM1.tPedidoItem.Post;
        end
      else
      if mTalaoReprogramacao.AsBoolean then
        begin
          if vDtReprogramacao < mTalaoDtReprogramacao.AsDateTime then
            vDtReprogramacao := mTalaoDtReprogramacao.AsDateTime;
          vReprogramacao := True;
        end;
      mTalao.Next;
    end;
  if Tag <> 1 then
    begin
      DM1.tPedidoItem.Edit;
      DM1.tPedidoItemTalaoGerado.AsBoolean      := True;
      DM1.tPedidoItemQtdLote.AsInteger          := CurrencyEdit1.AsInteger;
      DM1.tPedidoItemReprogramacao.AsBoolean    := vReprogramacao;
      if vReprogramacao then
        DM1.tPedidoItemDtReprogramacao.AsDateTime := vDtReprogramacao
      else
        DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;
      DM1.tPedidoItem.Post;
    end;
end;

procedure TfGeraLote2.Ajusta_mTalao;
begin
  vQtd := 0;
  if Tag = 1 then
    begin
      mGrade.EmptyDataSet;
      DM1.tPedidoItem.Locate('Pedido;Item',VarArrayOf([mTalaoPedido.AsInteger,mTalaoItem.AsInteger]),[locaseinsensitive]);
    end;
  mTalaoGrade.First;
  if (mTalaoGrade.RecordCount > 0) and (mTalaoGradeCodGrade.AsInteger > 0) then
    begin
      while not mTalaoGrade.Eof do
        begin
          vQtd := vQtd + mTalaoGradeQtd.AsFloat;
          if mGrade.Locate('CodGrade;Posicao',VarArrayOf([mTalaoGradeCodGrade.AsInteger,mTalaoGradePosicao.AsInteger]),[locaseinsensitive]) then
            mGrade.Edit
          else
            begin
              mGrade.Insert;
              mGradePedido.AsInteger    := DM1.tPedidoItemPedido.AsInteger;
              mGradeItem.AsInteger      := DM1.tPedidoItemItem.AsInteger;
              mGradeCodGrade.AsInteger  := mTalaoGradeCodGrade.AsInteger;
              mGradePosicao.AsInteger   := mTalaoGradePosicao.AsInteger;
              mGradeTamanho.AsString    := mTalaoGradeTamanho.AsString;
            end;
          mGradeQtd.AsFloat         := mGradeQtd.AsFloat +  mTalaoGradeQtd.AsFloat;
          mGradeQtdOriginal.AsFloat := mGradeQtd.AsFloat;
          mGrade.Post;
          mTalaoGrade.Next;
        end;
      mTalao.Edit;
      mTalaoQtd.AsFloat := vQtd;
      mTalao.Post;
      if Tag = 1 then
        begin
          mGrade.First;
          while not mGrade.Eof do
            begin
              if (DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([mGradeCodGrade.AsInteger,mGradePosicao.AsInteger]),[locaseinsensitive])) and
                 ((DM1.tPedidoGradeQtd.AsFloat + DM1.tPedidoGradeQtdParesCanc.AsFloat) <> mGradeQtd.AsFloat) then
                begin
                  ShowMessage('Tamanho ' + mGradeTamanho.AsString + ', a quantidade está diferente do pedido!');
                  mGrade.Last;
                  vGerar := False;
                end;
              mGrade.Next;
            end;
        end;
    end;
end;

procedure TfGeraLote2.Verifica_mTalao;
var
  vTipo : String;
begin
  if mTalao.RecordCount > 0 then
    vGerar := True
  else
    vGerar := False;
  mGrade.EmptyDataSet;
  mTalao.First;
  while not mTalao.Eof do
    begin
      Ajusta_mTalao;
      if not vGerar then
        mTalao.Last;
      mTalao.Next;
    end;
  if Tag <> 1 then
    begin
      mGrade.First;
      while not mGrade.Eof do
        begin
          if (DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([mGradeCodGrade.AsInteger,mGradePosicao.AsInteger]),[locaseinsensitive])) and
             ((DM1.tPedidoGradeQtd.AsFloat + DM1.tPedidoGradeQtdParesCanc.AsFloat) <> mGradeQtd.AsFloat) then
            begin
              ShowMessage('Tamanho ' + mGradeTamanho.AsString + ', a quantidade está diferente do pedido!');
              mGrade.Last;
              vGerar := False;
            end;
          mGrade.Next;
        end;
    end;
end;

procedure TfGeraLote2.Limpa_Memos;
begin
  mTalao.First;
  while not mTalao.Eof do
    begin
      mTalaoGrade.First;
      while not mTalaoGrade.Eof do
        mTalaoGrade.Delete;
      mTalao.Delete;
    end;
end;

procedure TfGeraLote2.Monta_Memos;
begin
  vNumSeq := 0;
  DM1.tTalao.Filtered := False;
  DM1.tTalao.Filter   := 'Pedido = '''+DM1.tPedidoItemPedido.AsString+''' and ItemPedido = '''+DM1.tPedidoItemItem.AsString+'''';
  DM1.tTalao.Filtered := True;
  DM1.tTalao.First;
  while not DM1.tTalao.Eof do
    begin
      inc(vNumSeq);
      mTalao.Insert;
      mTalaoPedido.AsInteger           := DM1.tTalaoPedido.AsInteger;
      mTalaoItem.AsInteger             := DM1.tTalaoItemPedido.AsInteger;
      mTalaoNumSeq.AsInteger           := vNumSeq;
      mTalaoLote.AsInteger             := DM1.tTalaoTalao.AsInteger;
      mTalaoQtd.AsFloat                := DM1.tTalaoQuantidade.AsFloat;
      mTalaoDtEntrega.AsDateTime       := DM1.tTalaoDtEntrega.AsDateTime;
      mTalaoDtReprogramacao.AsDateTime := DM1.tTalaoDtReprogramacao.AsDateTime;
      mTalaoReprogramacao.AsBoolean    := DM1.tTalaoReprogramacao.AsBoolean;
      mTalaoNumOS.AsString             := DM1.tTalaoNumOS.AsString;
      mTalaoPlano.AsString             := DM1.tTalaoPlano.AsString;
      mTalaoFabrica.AsString           := DM1.tTalaoFabrica.AsString;
      mTalaoCancelado.AsBoolean        := DM1.tTalaoCancelado.AsBoolean;
      mTalaoDtBaixa.AsDateTime         := DM1.tTalaoDtBaixa.AsDateTime;
      mTalaoHoraBaixa.AsDateTime       := DM1.tTalaoHrBaixa.AsDateTime;
      mTalaoQtdFaturada.AsFloat        := DM1.tTalaoQtdFaturada.AsFloat;
      mTalaoQtdRestante.AsFloat        := DM1.tTalaoQtdRestante.AsFloat;
      mTalaoDtCancelado.AsDateTime     := DM1.tTalaoDtCancelado.AsDateTime;
      mTalaoMotivoCancelado.AsString   := DM1.tTalaoMotivoCancelado.AsString;
      mTalao.Post;
      DM1.tTalaoGrade.First;
      while not DM1.tTalaoGrade.Eof do
        begin
          mTalaoGrade.Insert;
          mTalaoGradePedido.AsInteger   := DM1.tTalaoPedido.AsInteger;
          mTalaoGradeItem.AsInteger     := DM1.tTalaoItemPedido.AsInteger;
          mTalaoGradeNumSeq.AsInteger   := vNumSeq;
          mTalaoGradeLote.AsInteger     := DM1.tTalaoGradeTalao.AsInteger;
          mTalaoGradeCodGrade.AsInteger := DM1.tTalaoGradeCodGrade.AsInteger;
          mTalaoGradePosicao.AsInteger  := DM1.tTalaoGradePosicao.AsInteger;
          mTalaoGradeQtd.AsFloat        := DM1.tTalaoGradeQuantidade.AsFloat;
          mTalaoGradeTamanho.AsString   := DM1.tTalaoGradeTamanho.AsString;
          mTalaoGrade.Post;
          DM1.tTalaoGrade.Next;
        end;
      DM1.tTalao.Next;
    end;
  CurrencyEdit1.Value := DM1.tTalao.RecordCount;
  DM1.tTalao.Filtered := False;
end;

procedure TfGeraLote2.Monta_LoteAux;
var
  vQtdAux : Real;
begin
  inc(vNumSeq);
  mTalao.Insert;
  mTalaoPedido.AsInteger := DM1.tPedidoItemPedido.AsInteger;
  mTalaoItem.AsInteger   := DM1.tPedidoItemItem.AsInteger;
  mTalaoNumSeq.AsInteger := vNumSeq;
  mTalaoLote.AsInteger   := 0;
  mTalao.Post;
  mTalao.Edit;

  mTalaoDtEntrega.AsDateTime       := DM1.tPedidoItemDtReprogramacao.AsDateTime;
  mTalaoDtReprogramacao.AsDateTime := DM1.tPedidoItemDtReprogramacao.AsDateTime;
  mTalaoPlano.AsString             := DM1.tPedidoItemPlano.AsString;
  mTalaoFabrica.AsString           := DM1.tPedidoItemFabrica.AsString;
  mTalaoNumOS.AsString             := DM1.tPedidoItemNumOS.AsString;
  mTalaoCancelado.AsBoolean        := False;
  mTalaoDtBaixa.Clear;
  mTalaoHoraBaixa.Clear;
  mTalaoQtdFaturada.AsFloat        := 0;

  if Tag = 2 then //Quando incluir apenas um lote a mais (bitbtn14)
    begin
      vQtdAux := 0;
      DM1.tPedidoGrade.First;
      while not DM1.tPedidoGrade.Eof do
        begin
          if DM1.tPedidoGradeQtd.AsFloat > 0 then
            begin
              if (mGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tPedidoGradeCodGrade.AsInteger,DM1.tPedidoGradePosicao.AsInteger]),[locaseinsensitive])) and
                 (mGradeQtd.AsFloat < DM1.tPedidoGradeQtd.AsFloat) then
                begin
                  vQtd := DM1.tPedidoGradeQtd.AsFloat - mGradeQtd.AsFloat;
                  vQtdAux := vQtdAux + vQtd;
                  mTalaoGrade.Insert;
                  mTalaoGradePedido.AsInteger    := mTalaoPedido.AsInteger;
                  mTalaoGradeItem.AsInteger      := mTalaoItem.AsInteger;
                  mTalaoGradeNumSeq.AsInteger    := vNumSeq;
                  mTalaoGradeLote.AsInteger      := mTalaoLote.AsInteger;
                  mTalaoGradeCodGrade.AsInteger  := DM1.tPedidoGradeCodGrade.AsInteger;
                  mTalaoGradePosicao.AsInteger   := DM1.tPedidoGradePosicao.AsInteger;
                  mTalaoGradeQtd.AsFloat         := vQtd;
                  mTalaoGradeTamanho.AsString    := DM1.tPedidoGradelkTamanho.AsString;
                  mTalaoGrade.Post;
                end;
            end;
          DM1.tPedidoGrade.Next;
        end;
      if mTalao.State in [dsBrowse] then
        mTalao.Edit;  
      mTalaoQtd.AsFloat := vQtdAux;
      mTalao.Post;
    end
  else
  if Tag = 1 then
    begin
      vQtdAux := 0;
      DM1.tPedidoGrade.First;
      while not DM1.tPedidoGrade.Eof do
        begin
          if DM1.tPedidoGradeQtd.AsFloat > 0 then
            begin
              vQtd := DM1.tPedidoGradeQtd.AsFloat;
              mTalaoGrade.Insert;
              mTalaoGradePedido.AsInteger    := mTalaoPedido.AsInteger;
              mTalaoGradeItem.AsInteger      := mTalaoItem.AsInteger;
              mTalaoGradeNumSeq.AsInteger    := vNumSeq;
              mTalaoGradeLote.AsInteger      := mTalaoLote.AsInteger;
              mTalaoGradeCodGrade.AsInteger  := DM1.tPedidoGradeCodGrade.AsInteger;
              mTalaoGradePosicao.AsInteger   := DM1.tPedidoGradePosicao.AsInteger;
              mTalaoGradeQtd.AsFloat         := vQtd;
              mTalaoGradeTamanho.AsString    := DM1.tPedidoGradelkTamanho.AsString;
              mTalaoGrade.Post;
            end;
          DM1.tPedidoGrade.Next;
        end;
      if mTalao.State in [dsBrowse] then
        mTalao.Edit;
      mTalaoQtd.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat;
      mTalao.Post;
    end
  else
  if mGrade.RecordCount < 1 then
    begin
      if mInfLote.RecordCount > 0 then
        vQtd := mInfLoteQtdPares.AsFloat
      else
      if vContador = 1 then
        vQtd := vQtdOriginal
      else
        vQtd := StrToFloat(FormatFloat('0',vQtdOriginal / vContador));
      mTalaoQtd.AsFloat  := vQtd;
      mTalao.Post;
      vQtdOriginal := vQtdOriginal - vQtd;
    end
  else
    begin
      vQtdAux := 0;
      mGrade.First;
      while not mGrade.Eof do
        begin
          if mGradeQtd.AsFloat > 0 then
            begin
              if mInfLote.RecordCount > 0 then
                vQtd := mInfLoteQtdPares.AsFloat
              else
              if vContador = 1 then
                vQtd := mGradeQtd.AsFloat
              else
                vQtd := StrToFloat(FormatFloat('0',mGradeQtd.AsFloat / vContador));
              mTalaoGrade.Insert;
              mTalaoGradePedido.AsInteger    := mTalaoPedido.AsInteger;
              mTalaoGradeItem.AsInteger      := mTalaoItem.AsInteger;
              mTalaoGradeNumSeq.AsInteger    := vNumSeq;
              mTalaoGradeLote.AsInteger      := mTalaoLote.AsInteger;
              mTalaoGradeCodGrade.AsInteger  := mGradeCodGrade.AsInteger;
              mTalaoGradePosicao.AsInteger   := mGradePosicao.AsInteger;
              mTalaoGradeQtd.AsFloat         := vQtd;
              mTalaoGradeTamanho.AsString    := mGradeTamanho.AsString;
              mTalaoGrade.Post;
              mGrade.Edit;
              mGradeQtd.AsFloat := mGradeQtd.AsFloat - vQtd;
              mGrade.Post;      //aqui
              vQtdAux := vQtdAux + mTalaoGradeQtd.AsFloat;
            end;
          mGrade.Next;
        end;
      mTalao.Edit;
      mTalaoQtd.AsFloat := vQtdAux;
      mTalao.Post;
    end;
  mTalao.First;
  mTalaoGrade.First;
end;

procedure TfGeraLote2.Monta_mGrade;
begin
  mGrade.EmptyDataSet;
  DM1.tPedidoGrade.First;
  while not DM1.tPedidoGrade.Eof do
    begin
      if DM1.tPedidoGradeQtd.AsFloat > 0 then
        begin
          mGrade.Insert;
          mGradePedido.AsInteger    := DM1.tPedidoItemPedido.AsInteger;
          mGradeItem.AsInteger      := DM1.tPedidoItemItem.AsInteger;
          mGradeCodGrade.AsInteger  := DM1.tPedidoGradeCodGrade.AsInteger;
          mGradePosicao.AsInteger   := DM1.tPedidoGradePosicao.AsInteger;
          mGradeTamanho.AsString    := DM1.tPedidoGradelkTamanho.AsString;
          mGradeQtd.AsFloat         := DM1.tPedidoGradeQtd.AsFloat;
          mGradeQtdOriginal.AsFloat := DM1.tPedidoGradeQtd.AsFloat;
          mGrade.Post;
        end;
      DM1.tPedidoGrade.Next;
    end;
end;

procedure TfGeraLote2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPedidoCanc.Close;
  DM1.tPedidoCancGrade.Close;
  Action := Cafree;
end;

procedure TfGeraLote2.BitBtn4Click(Sender: TObject);
begin
  if mInfLote.RecordCount > 0 then
    CurrencyEdit1.Clear;
  if (CurrencyEdit1.AsInteger > 0) or (mInfLote.RecordCount > 0) then
    begin
      vQtdOriginal := DM1.tPedidoItemQtdPares.AsFloat;
      Limpa_Memos;
      vNumSeq := 0;
      if DM1.tPedidoGrade.RecordCount > 0 then
        Monta_mGrade;
    end;

  if CurrencyEdit1.AsInteger > 0 then
    begin
      if (DM1.tPedidoItemQtdPares.AsFloat > 0) and not(DM1.tPedidoItemTalaoGerado.AsBoolean) then
        begin
          vContador    := CurrencyEdit1.AsInteger;
          while vContador > 0 do
            begin
              Monta_LoteAux;
              Dec(vContador);
            end;
        end;
    end
  else
    begin
      mInfLote.First;
      while not mInfLote.Eof do
        begin
          vContador := mInfLoteQtdLote.AsInteger;
          while vContador > 0 do
            begin
              Monta_LoteAux;
              Dec(vContador);
            end;
          mInfLote.Next;
        end;
    end;
end;

procedure TfGeraLote2.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja fechar a tela atual?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    Close;
end;

procedure TfGeraLote2.FormShow(Sender: TObject);
begin
  DM1.tPedidoCanc.Open;
  DM1.tPedidoCancGrade.Open;

  mInfLote.EmptyDataSet;
  Limpa_Memos;

  if Tag = 1 then
    begin
      DM1.tPedidoItem.First;
      while not DM1.tPedidoItem.Eof do
        begin
          if DM1.tPedidoItemTalaoGerado.AsBoolean then
            Monta_Memos;
          DM1.tPedidoItem.Next;
        end;
    end
  else
  //if DM1.tPedidoItemTalaoGerado.AsBoolean then
    Monta_Memos;

  BitBtn4.Enabled  := (Tag = 0);
  BitBtn5.Enabled  := (Tag = 0);
  BitBtn14.Enabled := (Tag = 0);
  if Tag = 1 then
    begin
      DM1.tPedidoItem.First;
      while not DM1.tPedidoItem.Eof do
        begin
          if not(DM1.tPedidoItemTalaoGerado.AsBoolean) and
                (DM1.tPedidoItemQtdParesRest.AsFloat > 0) then
            Monta_LoteAux;
          DM1.tPedidoItem.Next;
        end;
    end;
end;

procedure TfGeraLote2.mTalaoNewRecord(DataSet: TDataSet);
begin
  mTalaoReprogramacao.AsBoolean := False;
  mTalaoQtd.AsFloat             := 0;
  mTalaoCancelado.AsBoolean     := False;
  mTalaoQtdFaturada.AsFloat     := 0;
  mTalaoQtdRestante.AsFloat     := 0;
end;

procedure TfGeraLote2.mTalaoGradeNewRecord(DataSet: TDataSet);
begin
  mTalaoGradeQtd.AsFloat := 0;
end;

procedure TfGeraLote2.BitBtn1Click(Sender: TObject);
begin
  Verifica_mTalao;
  if vGerar then
    begin
      Grava_Lote;
      ShowMessage('Lotes Gerados!');
      Limpa_Memos;

      fConsLote := TfConsLote.Create(Self);
      fConsLote.vNumPedidoInt := DM1.tPedidoPedido.AsInteger;
      fConsLote.ShowModal;

      Close;
    end;
end;

procedure TfGeraLote2.mGradeNewRecord(DataSet: TDataSet);
begin
  mGradeQtd.AsFloat := 0;
end;

procedure TfGeraLote2.BitBtn3Click(Sender: TObject);
var
  vExcluir : Boolean;
begin
  if Tag = 1 then
    begin
      mTalao.First;
      while not mTalao.Eof do
        begin
          if DM1.tPedidoItem.Locate('Item',mTalaoItem.AsInteger,[loCaseInsensitive]) then
            begin
              if DM1.tPedidoItemQtdParesFat.AsFloat > 0 then
                ShowMessage('Talão ' + mTalaoLote.AsString + ', já esta faturado!')
              else
              if mTalaoDtBaixa.AsDateTime > 0 then
                ShowMessage('Talão já baixado!')
              else
                begin
                  Excluir_Talao;
                  DM1.tPedidoItem.Edit;
                  DM1.tPedidoItemTalaoGerado.AsBoolean := False;
                  DM1.tPedidoItemQtdLote.AsInteger     := 0;
                  DM1.tPedidoItem.Post;
                end;
            end;
          mTalao.Next;
        end;
      Close;
    end
  else
  if DM1.tPedidoItemQtdParesFat.AsFloat > 0 then
    ShowMessage('Possui lotes já faturados, exclusão cancelada!')
  else
    begin
      vExcluir := False;
      mTalao.First;
      while not mTalao.Eof do
        begin
          if mTalaoDtBaixa.AsDateTime > 0 then
            begin
              vExcluir := True;
              mTalao.Last;
            end;
          mTalao.Next;
        end;

      if vExcluir then
        ShowMessage('Existe talão já baixado!')
      else
      if MessageDlg('Deseja excluir os talões?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          mTalao.First;
          while not mTalao.Eof do
            begin
              Excluir_Talao;
              mTalao.Next;
            end;
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemTalaoGerado.AsBoolean := False;
          DM1.tPedidoItemQtdLote.AsInteger     := 0;
          DM1.tPedidoItem.Post;

          Close;
        end;
    end;
end;

procedure TfGeraLote2.SMDBGrid2DblClick(Sender: TObject);
begin
  if (mTalaoItem.AsInteger > 0) and (mTalaoDtCancelado.AsDateTime > 0) then
    ShowMessage('Lote cancelado!')
  else
  if (mTalaoItem.AsInteger > 0) and (mTalaoDtBaixa.AsDateTime > 0) then
    ShowMessage('Lote baixado!')
  else
  if mTalaoLote.AsInteger > 0 then
    begin
      mTalao.Edit;
      fDtReprogTalao := TfDtReprogTalao.Create(Self);
      fDtReprogTalao.ShowModal;
    end;
end;

procedure TfGeraLote2.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  AFont.Color  := clBlack;
  if mTalaoQtdFaturada.AsFloat > 0 then
    Background := clTeal
  else
  if mTalaoCancelado.AsBoolean then
    Background := clRed
  else
  if mTalaoDtBaixa.AsDateTime > 0 then
    Background := clYellow
  else
  if mTalaoReprogramacao.AsBoolean then
    Background := clAqua
  else
    Background := clWhite;
end;

procedure TfGeraLote2.BitBtn10Click(Sender: TObject);
begin
  if mTalaoLote.AsInteger  <= 0 then
    ShowMessage('Lote não foi gerado, só pode ser cancelar quando o lote já está gravado!')
  else
  if (mTalaoLote.AsInteger > 0) and (mTalaoQtdFaturada.AsFloat > 0) then
    ShowMessage('Lote já foi faturado!')
  else
  if mTalaoDtBaixa.AsDateTime > 0 then
    ShowMessage('Talão baixado!')
  else
    begin
      //if ((mTalaoDtBaixa.AsDateTime > 0) and (MessageDlg('Lote já baixado, confirma o cancelamento?',mtConfirmation,[mbOK,mbNO],0) = mrOK)) or
      if mTalaoDtBaixa.AsDateTime <= 0 then
        begin
          fCancelaLote := TfCancelaLote.Create(Self);
          fCancelaLote.ShowModal;
        end;
    end;
end;

procedure TfGeraLote2.CurrencyEdit1Enter(Sender: TObject);
begin
  if mInfLote.RecordCount > 0 then
    CurrencyEdit1.ReadOnly := True
  else
    CurrencyEdit1.ReadOnly := False;
end;

procedure TfGeraLote2.BitBtn5Click(Sender: TObject);
begin
  if mTalaoGrade.RecordCount > 1 then
    ShowMessage('Item do pedido não pode gerar o lote pela quantidade!')
  else
    begin
      fLoteQtd := TfLoteQtd.Create(Self);
      fLoteQtd.ShowModal;
      if mInfLote.RecordCount > 0 then
        begin
          CurrencyEdit1.AsInteger := 0;
          CurrencyEdit1.ReadOnly  := True;
        end
      else
        CurrencyEdit1.ReadOnly  := False;
    end;
end;

procedure TfGeraLote2.mInfLoteBeforePost(DataSet: TDataSet);
begin
  if (mInfLoteQtdLote.AsInteger <= 0) or (mInfLoteQtdPares.AsInteger <= 0) then
    mInfLote.Cancel;
end;

procedure TfGeraLote2.mTalaoBeforePost(DataSet: TDataSet);
begin
  if mTalaoLote.AsInteger <= 0 then
    mTalaoDtReprogramacao.AsDateTime := mTalaoDtEntrega.AsDateTime
  else
  if mTalaoLote.AsInteger > 0 then
    if not mTalaoReprogramacao.AsBoolean then
      mTalaoDtReprogramacao.AsDateTime := mTalaoDtEntrega.AsDateTime;
end;

procedure TfGeraLote2.BitBtn14Click(Sender: TObject);
var
  i : Integer;
  vQtdAux : Real;
begin
  vQtdAux := 0;
  mGrade.EmptyDataSet;
  mTalao.First;
  while not mTalao.Eof do
    begin
      Ajusta_mTalao;
      vQtdAux := vQtdAux + mTalaoQtd.AsFloat;
      mTalao.Next;
    end;
  Tag := 2;
  if vQtdAux < DM1.tPedidoItemQtdPares.AsFloat then
    Monta_LoteAux;
  Tag := 0;
end;

procedure TfGeraLote2.VDBGrid2Enter(Sender: TObject);
begin
  if (mTalaoQtdFaturada.AsFloat > 0) or (mTalaoDtBaixa.AsDateTime > 10) then
    SMDBGrid2.SetFocus;
end;

procedure TfGeraLote2.BitBtn6Click(Sender: TObject);
begin
  if mTalaoQtdFaturada.AsFloat > 0 then
    ShowMessage('Lote já faturado!')
  else
  if mTalaoDtBaixa.AsFloat > 0 then
    ShowMessage('Lote já baixado!')
  else
    begin
      Excluir_Talao;
      DM1.tPedidoItem.Edit;
      DM1.tPedidoItemTalaoGerado.AsBoolean := False;
      DM1.tPedidoItemQtdLote.AsInteger     := 0;
      DM1.tPedidoItem.Post;
      mTalaoGrade.First;
      while not mTalaoGrade.Eof do
        mTalaoGrade.Delete;
      mTalao.Delete;
    end
end;

procedure TfGeraLote2.mTalaoGradeAfterPost(DataSet: TDataSet);
var
  vQtd: Real;
begin
  mTalaoGrade.First;
  vQtd := 0;
  while not mTalaoGrade.Eof do
  begin
    vQtd := vQtd + mTalaoGradeQtd.AsFloat;
    mTalaoGrade.Next;
  end;
  mTalao.Edit;
  mTalaoQtd.AsFloat := vQtd;
  mTalao.Post;
  mTalaoGrade.Tag := 0;
end;

procedure TfGeraLote2.mTalaoGradeBeforePost(DataSet: TDataSet);
begin
  if mTalaoGrade.State in [dsEdit] then
    mTalaoGrade.Tag := 1;
end;

procedure TfGeraLote2.VDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    if mTalaoGrade.State in [dsEdit] then
      mTalaoGrade.Post;
end;

end.
