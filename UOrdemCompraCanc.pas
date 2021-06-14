unit UOrdemCompraCanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, RXCtrls, ExtCtrls, ToolEdit, CurrEdit,
  Buttons, Grids, DBGrids, RXDBCtrl, DBVGrids, DB, DBTables, RxLookup;

type
  TfOrdemCompraCanc = class(TForm)
    RxLabel1: TRxLabel;
    DBEdit1: TDBEdit;
    RxLabel2: TRxLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel3: TRxLabel;
    DBEdit4: TDBEdit;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    RxLabel6: TRxLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxLabel7: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel8: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel9: TRxLabel;
    Edit1: TEdit;
    RxLabel10: TRxLabel;
    DateEdit1: TDateEdit;
    Bevel3: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    BitBtn4: TBitBtn;
    Bevel4: TBevel;
    VDBGrid1: TVDBGrid;
    RxLabel11: TRxLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    qTamanho: TQuery;
    dsqTamanho: TDataSource;
    qTamanhoFilial: TIntegerField;
    qTamanhoCodGrade: TIntegerField;
    qTamanhoPosicao: TIntegerField;
    qTamanhoCodigo: TIntegerField;
    qTamanhoItem: TIntegerField;
    qTamanhoQtd: TFloatField;
    qTamanhoQtdRestante: TFloatField;
    qTamanhoQtdEntregue: TFloatField;
    qTamanhoQtdCancelada: TFloatField;
    qTamanhoTamanho: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrdemCompraCanc: TfOrdemCompraCanc;

implementation

uses UDM1;

{$R *.dfm}

procedure TfOrdemCompraCanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qTamanho.Close;
  Action := Cafree;
end;

procedure TfOrdemCompraCanc.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfOrdemCompraCanc.BitBtn2Click(Sender: TObject);
begin
  CurrencyEdit1.Clear;
  Edit1.Clear;
  DateEdit1.Date := Date;
end;

procedure TfOrdemCompraCanc.FormShow(Sender: TObject);
begin
  DateEdit1.Date := Date;
  DM1.tOrdemCompraCanc.Refresh;
  qTamanho.Close;
  qTamanho.Params[0].AsInteger := DM1.tOrdemCompraItemFilial.AsInteger;
  qTamanho.Params[1].AsInteger := DM1.tOrdemCompraItemCodigo.AsInteger;
  qTamanho.Params[2].AsInteger := DM1.tOrdemCompraItemItem.AsInteger;
  qTamanho.Open;
end;

procedure TfOrdemCompraCanc.BitBtn1Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if (CurrencyEdit1.Value = 0) or (Edit1.Text = '') or (DateEdit1.Date < 1) then
    begin
      ShowMessage('Falta informar a Quantidade, Motivo ou a Data!');
      CurrencyEdit1.SetFocus;
    end
  else
  if CurrencyEdit1.Value > StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemQtdRestante.AsCurrency)) then
    begin
      ShowMessage('Qtd.para cancelar é maior que a quantidade pendente!');
      CurrencyEdit1.SetFocus;
    end
  else
  if (DM1.tOrdemCompraItemGrade.RecordCount > 0) and (RxDBLookupCombo1.Text = '') then
    begin
      ShowMessage('Faltou informar o tamanho!');
      RxDBLookupCombo1.SetFocus;
    end
  else
    begin
      if (RxDBLookupCombo1.Text <> '') and (DM1.tOrdemCompraItemGrade.RecordCount > 0) then
        begin
          if (qTamanho.Locate('Tamanho',RxDBLookupCombo1.Text,[loCaseInsensitive])) and
             (CurrencyEdit1.Value > StrToCurr(FormatCurr('0.00000',qTamanhoQtdRestante.AsCurrency))) then
            begin
              ShowMessage('Qtd.para cancelar é maior que a quantidade pendente!');
              CurrencyEdit1.SetFocus;
              exit;
            end;
        end;

      DM1.tOrdemCompraCanc.Refresh;
      DM1.tOrdemCompraCanc.Last;
      vItemAux := DM1.tOrdemCompraCancItem.AsInteger;
      DM1.tOrdemCompraCanc.Insert;
      DM1.tOrdemCompraCancFilial.AsInteger     := DM1.tOrdemCompraItemFilial.AsInteger;
      DM1.tOrdemCompraCancCodigo.AsInteger     := DM1.tOrdemCompraItemCodigo.AsInteger;
      DM1.tOrdemCompraCancItem.AsInteger       := DM1.tOrdemCompraItemItem.AsInteger;
      DM1.tOrdemCompraCancItemCanc.AsInteger   := vItemAux + 1;
      DM1.tOrdemCompraCancData.AsDateTime      := DateEdit1.Date;
      DM1.tOrdemCompraCancMotivo.AsString      := Edit1.Text;
      DM1.tOrdemCompraCancQtd.AsFloat          := CurrencyEdit1.Value;
      if (RxDBLookupCombo1.Text <> '') and (DM1.tOrdemCompraItemGrade.RecordCount > 0) then
        begin
          if qTamanho.Locate('Tamanho',RxDBLookupCombo1.Text,[loCaseInsensitive]) then
            begin
              DM1.tOrdemCompraCancCodGrade.AsInteger := qTamanhoCodGrade.AsInteger;
              DM1.tOrdemCompraCancPosicao.AsInteger  := qTamanhoPosicao.AsInteger;
            end;
        end;
        
      DM1.tOrdemCompraCancDtUsuario.AsDateTime := Date;
      DM1.tOrdemCompraCancUsuario.AsString     := DM1.tUsuarioUsuario.AsString;
      DM1.tOrdemCompraCancHrUsuario.AsDateTime := Time;
      DM1.tOrdemCompraCanc.Post;

      DM1.tOrdemCompraItem.Edit;
      DM1.tOrdemCompraItemQtdCancelada.AsFloat := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemQtdCancelada.AsCurrency + CurrencyEdit1.Value));
      DM1.tOrdemCompraItemQtdRestante.AsFloat  := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemQtdRestante.AsCurrency - CurrencyEdit1.Value));
      DM1.tOrdemCompraItem.Post;

      if (DM1.tOrdemCompraCancCodGrade.AsInteger > 0) and
         (DM1.tOrdemCompraItemGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tOrdemCompraCancCodGrade.AsInteger,DM1.tOrdemCompraCancPosicao.AsString]),[locaseinsensitive])) then
        begin
          DM1.tOrdemCompraItemGrade.Edit;
          DM1.tOrdemCompraItemGradeQtdCancelada.AsFloat := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemGradeQtdCancelada.AsCurrency + CurrencyEdit1.Value)); 
          DM1.tOrdemCompraItemGradeQtdRestante.AsFloat  := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemGradeQtdRestante.AsCurrency - CurrencyEdit1.Value));
          DM1.tOrdemCompraItemGrade.Post;
        end;

      Close;

    end;
end;

procedure TfOrdemCompraCanc.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o cancelamento selecionado?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      DM1.tOrdemCompraItem.Edit;
      DM1.tOrdemCompraItemQtdCancelada.AsFloat := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemQtdCancelada.AsCurrency - DM1.tOrdemCompraCancQtd.AsCurrency));
      DM1.tOrdemCompraItemQtdRestante.AsFloat  := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemQtdRestante.AsCurrency + DM1.tOrdemCompraCancQtd.AsCurrency));
      DM1.tOrdemCompraItem.Post;

      if (DM1.tOrdemCompraCancCodGrade.AsInteger > 0) and
         (DM1.tOrdemCompraItemGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tOrdemCompraCancCodGrade.AsInteger,DM1.tOrdemCompraCancPosicao.AsString]),[locaseinsensitive])) then
        begin
          DM1.tOrdemCompraItemGrade.Edit;
          DM1.tOrdemCompraItemGradeQtdCancelada.AsFloat := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemGradeQtdCancelada.AsCurrency - DM1.tOrdemCompraCancQtd.AsCurrency));
          DM1.tOrdemCompraItemGradeQtdRestante.AsFloat  := StrToCurr(FormatCurr('0.00000',DM1.tOrdemCompraItemGradeQtdRestante.AsCurrency + DM1.tOrdemCompraCancQtd.AsCurrency));
          DM1.tOrdemCompraItemGrade.Post;
        end;

      DM1.tOrdemCompraCanc.Delete;

      DM1.tOrdemCompraItem.Refresh;
      DM1.tOrdemCompraCanc.Refresh;
    end;
end;

end.
