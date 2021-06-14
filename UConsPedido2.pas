unit UConsPedido2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, RxLookup, Buttons, Grids,
  DBGrids, SMDBGrid, DB, DBTables, DBClient, ComCtrls, comobj,
  OleServer, ExcelXP, RXCtrls, Menus;

type
  TfConsPedido2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    qPedido: TQuery;
    qPedidoPedido: TIntegerField;
    qPedidoCodCliente: TIntegerField;
    qPedidoDtEmissao: TDateField;
    qPedidoNomeCliente: TStringField;
    qPedidoCodProduto: TIntegerField;
    qPedidoReferencia: TStringField;
    qPedidoUnidade: TStringField;
    qPedidoNomeProduto: TStringField;
    qPedidoNumOS: TStringField;
    qPedidoDtReprogramacao: TDateField;
    qPedidoPreco: TFloatField;
    qPedidoVlrDesconto: TFloatField;
    qPedidoPercComissao: TFloatField;
    qPedidoCodVendedor: TIntegerField;
    qPedidoCodCidade: TIntegerField;
    qPedidoItem: TIntegerField;
    qPedidoCodCor: TIntegerField;
    qPedidoVlrTotal: TFloatField;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    dsqPedido: TDataSource;
    qPedidoPedidoCliente: TStringField;
    qPedidolkNomeCor: TStringField;
    qPedidoFantasia: TStringField;
    CheckBox1: TCheckBox;
    mPedido: TClientDataSet;
    mPedidoPedidoCliente: TStringField;
    mPedidoPedido: TIntegerField;
    mPedidoCodCliente: TIntegerField;
    mPedidoNomeCliente: TStringField;
    mPedidoFantasia: TStringField;
    mPedidoQtdPedido: TFloatField;
    mPedidoQtdFaturada: TFloatField;
    mPedidoQtdCancelada: TFloatField;
    mPedidoQtdRestante: TFloatField;
    mPedidoCodProduto: TIntegerField;
    mPedidoNomeProduto: TStringField;
    mPedidoReferencia: TStringField;
    mPedidoCodCor: TIntegerField;
    mPedidoNomeCor: TStringField;
    mPedidoNomeCidade: TStringField;
    mPedidoUF: TStringField;
    mPedidoCodVendedor: TIntegerField;
    mPedidoNomeVendedor: TStringField;
    mPedidoSituacao: TStringField;
    mPedidoItemPedido: TIntegerField;
    mPedidoDtEmissao: TDateField;
    mPedidoDtReprogramado: TDateField;
    mPedidoDtEntrega: TDateField;
    mPedidoUnidade: TStringField;
    mPedidoCodGrupo: TIntegerField;
    mPedidoNomeGrupo: TStringField;
    dsmPedido: TDataSource;
    qPedidolkNomeCidade: TStringField;
    qPedidoUf: TStringField;
    qPedidolkNomeVendedor: TStringField;
    qPedidoDtEmbarque: TDateField;
    mPedidoPreco: TFloatField;
    mPedidoVlrTotal: TFloatField;
    mPedidoNumOS: TStringField;
    mPedidoPlano: TStringField;
    mPedidoFabrica: TStringField;
    qPedidoPlano: TStringField;
    qPedidoFabrica: TStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label6: TLabel;
    Shape2: TShape;
    Label7: TLabel;
    qPedidoCodGrupo: TIntegerField;
    qPedidolkNomeGrupo: TStringField;
    qPedidoCodCondPgto: TIntegerField;
    qPedidolkNomeCondPgto: TStringField;
    mPedidoNomeCondPgto: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    qPedidoTalao: TIntegerField;
    qPedidoDtReprogramacaoTalao: TDateField;
    qPedidoQtdFaturada: TFloatField;
    qPedidoQtdRestante: TFloatField;
    qPedidoQuantidade: TFloatField;
    qPedidoCancelado: TBooleanField;
    qPedidoDtEntrega: TDateField;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    tNotaFiscalItens: TTable;
    tNotaFiscalItensFilial: TIntegerField;
    tNotaFiscalItensNumSeq: TIntegerField;
    tNotaFiscalItensItem: TSmallintField;
    tNotaFiscalItensNumTalao: TIntegerField;
    tNotaFiscalItensNumNota: TIntegerField;
    qPedidolkNumNota: TIntegerField;
    mPedidoNumNota: TIntegerField;
    CheckBox4: TCheckBox;
    mPedidoTalao: TIntegerField;
    qPedidoEntregue: TBooleanField;
    ProgressBar1: TProgressBar;
    mPedidoEntregue: TBooleanField;
    qPedidoQtdParesPedido: TFloatField;
    qPedidoQtdParesFatPedido: TFloatField;
    qPedidoQtdParesRestPedido: TFloatField;
    BitBtn7: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    RxSpeedButton2: TRxSpeedButton;
    mPedidoDtProducao: TDateField;
    qPedidoDtProducao: TDateField;
    Label8: TLabel;
    Label11: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ComboBox2Change(Sender: TObject);
    procedure mPedidoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
  private
    { Private declarations }
    vSql : String;
    procedure Monta_SqlqPedido;
    procedure Le_qPedido;
    procedure Grava_mPedido(Tipo : String);
  public
    { Public declarations }
  end;

var
  fConsPedido2: TfConsPedido2;

implementation

uses UDM1, URelPedidoProcesso, URelPedidoProcesso2;

{$R *.dfm}

procedure TfConsPedido2.Grava_mPedido(Tipo : String);
var
  vDtReprogramacao, vDtEntrega : TDateTime;
  vNumNota, vTalao : Integer;
begin
  //if (Tipo = 'T') and (mPedido.Locate('Pedido;ItemPedido;DtReprogramado',VarArrayOf([qPedidoPedido.AsInteger,qPedidoItem.AsInteger,DM1.tTalaoDtReprogramacao.AsDateTime]),[locaseinsensitive])) then
  if qPedidoTalao.AsInteger > 0 then
    begin
      vDtReprogramacao := qPedidoDtReprogramacaoTalao.AsDateTime;
      vDtEntrega       := qPedidoDtEntrega.AsDateTime
    end
  else
    begin
      vDtReprogramacao := qPedidoDtReprogramacao.AsDateTime;
      vDtEntrega       := qPedidoDtEmbarque.AsDateTime;
    end;
  vNumNota := 0;
  vTalao   := 0;
  if (CheckBox4.Checked) and (StrToFloat(FormatFloat('0.0000',qPedidoQtdFaturada.AsFloat)) > 0) and (qPedidolkNumNota.AsInteger > 0) then
    begin
      vNumNota := qPedidolkNumNota.AsInteger;
      if qPedidoTalao.AsInteger > 0 then
        vTalao   := qPedidoTalao.AsInteger;
    end;
  if (mPedido.Locate('Pedido;ItemPedido;DtReprogramado;NumNota;Talao',VarArrayOf([qPedidoPedido.AsInteger,qPedidoItem.AsInteger,vDtReprogramacao,vNumNota,vTalao]),[locaseinsensitive])) then
    mPedido.Edit
  else
    begin
      mPedido.Insert;
      mPedidoPedidoCliente.AsString := qPedidoPedidoCliente.AsString;
      mPedidoPedido.AsInteger       := qPedidoPedido.AsInteger;
      mPedidoCodCliente.AsInteger   := qPedidoCodCliente.AsInteger;
      mPedidoNomeCliente.AsString   := qPedidoNomeCliente.AsString;
      mPedidoFantasia.AsString      := qPedidoFantasia.AsString;
      mPedidoCodProduto.AsInteger   := qPedidoCodProduto.AsInteger;
      mPedidoNomeProduto.AsString   := qPedidoNomeProduto.AsString;
      mPedidoReferencia.AsString    := qPedidoReferencia.AsString;
      mPedidoCodCor.AsInteger       := qPedidoCodCor.AsInteger;
      mPedidoNomeCor.AsString       := qPedidolkNomeCor.AsString;
      mPedidoNomeCidade.AsString    := qPedidolkNomeCidade.AsString;
      mPedidoUF.AsString            := qPedidoUF.AsString;
      mPedidoCodVendedor.AsInteger  := qPedidoCodVendedor.AsInteger;
      mPedidoNomeVendedor.AsString  := qPedidolkNomeVendedor.AsString;
      mPedidoNumNota.AsInteger      := vNumNota;
      if (StrToFloat(FormatFloat('0.0000',qPedidoQtdFaturada.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',qPedidoQtdRestante.AsFloat)) > 0) then
        mPedidoSituacao.AsString := 'Fat.Parcial'
      else
      if (StrToFloat(FormatFloat('0.0000',qPedidoQtdFaturada.AsFloat)) > 0) then
        mPedidoSituacao.AsString := 'Faturado'
      else
      if qPedidoTalao.AsInteger < 1 then
        mPedidoSituacao.AsString := 'Nao Programado'
      else
        mPedidoSituacao.AsString := 'Pendente';
      if vNumNota > 0 then
        mPedidoSituacao.AsString := IntToStr(vNumNota);
      if vTalao > 0 then
        mPedidoTalao.AsInteger := vTalao;
      mPedidoItemPedido.AsInteger      := qPedidoItem.AsInteger;
      mPedidoDtEmissao.AsDateTime      := qPedidoDtEmissao.AsDateTime;
      mPedidoDtReprogramado.AsDateTime := vDtReprogramacao;
      mPedidoDtEntrega.AsDateTime      := vDtEntrega;
      mPedidoDtProducao.AsDateTime     := qPedidoDtProducao.AsDateTime;
      mPedidoUnidade.AsString          := qPedidoUnidade.AsString;
      mPedidoCodGrupo.AsInteger        := qPedidoCodGrupo.AsInteger;
      mPedidoNomeGrupo.AsString        := qPedidolkNomeGrupo.AsString;
      mPedidoPreco.AsFloat             := qPedidoPreco.AsFloat;
      mPedidoNumOS.AsString            := qPedidoNumOS.AsString;
      mPedidoPlano.AsString            := qPedidoPlano.AsString;
      mPedidoFabrica.AsString          := qPedidoFabrica.AsString;
      mPedidoNomeCondPgto.AsString     := qPedidolkNomeCondPgto.AsString;
    end;
  if qPedidoTalao.AsInteger > 0 then
    begin
      mPedidoQtdPedido.AsFloat         := mPedidoQtdPedido.AsFloat + qPedidoQuantidade.AsFloat;
      mPedidoQtdFaturada.AsFloat       := mPedidoQtdFaturada.AsFloat + qPedidoQtdFaturada.AsFloat;
      mPedidoQtdRestante.AsFloat       := mPedidoQtdRestante.AsFloat + qPedidoQtdRestante.AsFloat;
    end
  else
    begin
      mPedidoQtdPedido.AsFloat         := mPedidoQtdPedido.AsFloat + qPedidoQtdParesPedido.AsFloat;
      mPedidoQtdFaturada.AsFloat       := mPedidoQtdFaturada.AsFloat + qPedidoQtdParesFatPedido.AsFloat;
      mPedidoQtdRestante.AsFloat       := mPedidoQtdRestante.AsFloat + qPedidoQtdParesRestPedido.AsFloat;
    end;
  mPedidoVlrTotal.AsFloat          := StrToFloat(FormatFloat('0.00',(qPedidoPreco.AsFloat - qPedidoVlrDesconto.AsFloat) * mPedidoQtdRestante.AsFloat));
  if qPedidoEntregue.AsBoolean then
    mPedidoEntregue.AsBoolean      := True;
  mPedido.Post;
end;

procedure TfConsPedido2.Le_qPedido;
begin
  mPedido.EmptyDataSet;
  ProgressBar1.Max      := qPedido.RecordCount;
  ProgressBar1.Position := 0;
  qPedido.First;
  while not qPedido.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      {DM1.tTalao.Filtered := False;
      DM1.tTalao.Filter   := 'Pedido = '''+qPedidoPedido.AsString+''' and ItemPedido = '''+qPedidoItem.AsString+''' and Cancelado = False';
      DM1.tTalao.Filtered := True;
      if (DM1.tTalao.RecordCount > 0) and (DM1.tTalaoPedido.AsInteger > 0) then
        begin
          DM1.tTalao.First;
          while not DM1.tTalao.Eof do
            begin
              if ((ComboBox1.ItemIndex = 0) and (DM1.tTalaoQtdRestante.AsFloat > 0)) or
                 ((ComboBox1.ItemIndex = 1) and (DM1.tTalaoQtdFaturada.AsFloat > 0)) or
                 (ComboBox1.ItemIndex = 2) then
                Grava_mPedido('T');
              DM1.tTalao.Next;
            end;
        end
      else
        Grava_mPedido('P');}
      {if qPedidoPedido.AsInteger = 10756 then
        ShowMessage('aqui');
      if ((ComboBox1.ItemIndex = 0) and (qPedidoQtdRestante.AsFloat > 0)) or
         ((ComboBox1.ItemIndex = 1) and (qPedidoQtdFaturada.AsFloat > 0)) or
         (ComboBox1.ItemIndex = 2) then}
        Grava_mPedido('A');
      qPedido.Next;
    end;
  DM1.tTalao.Filtered := False;
end;

procedure TfConsPedido2.Monta_SqlqPedido;
begin
  qPedido.Close;
  qPedido.SQL.Clear;
  qPedido.SQL.Text := vSql;
  if RxDBLookupCombo2.Text <> '' then
    begin
      qPedido.SQL.Add(' AND (dbPedido.Filial = :Filial)');
      qPedido.ParamByName('Filial').AsInteger := RxDBLookupCombo2.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qPedido.SQL.Add(' AND (dbPedido.DtEmissao >= :DtInicial)');
      qPedido.ParamByName('DtInicial').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qPedido.SQL.Add(' AND (dbPedido.DtEmissao <= :DtFinal)');
      qPedido.ParamByName('DtFinal').AsDate := DateEdit2.Date;
    end;
  if DateEdit5.Date > 0 then
    begin
      qPedido.SQL.Add(' AND (dbPedido.DtProducao >= :DtProducaoIni)');
      qPedido.ParamByName('DtProducaoIni').AsDate := DateEdit5.Date;
    end;
  if DateEdit6.Date > 0 then
    begin
      qPedido.SQL.Add(' AND (dbPedido.DtProducao <= :DtProducaoFin)');
      qPedido.ParamByName('DtProducaoFin').AsDate := DateEdit6.Date;
    end;

  if DateEdit3.Date > 0 then
    begin
      //qPedido.SQL.Add(' AND ((dbTalao.DtReprogramacao is Null) OR (dbTalao.DtReprogramacao >= :DtReprogInicial)) ');
      qPedido.SQL.Add(' AND ((dbTalao.DtReprogramacao >= :DtReprogInicial) ');
      qPedido.SQL.Add(' OR ((dbTalao.DtReprogramacao is Null) AND (dbPedidoItem.DtReprogramacao >= :DtReprogInicialP)))');
      qPedido.ParamByName('DtReprogInicial').AsDate   := DateEdit3.Date;
      qPedido.ParamByName('DtReprogInicialP').AsDate  := DateEdit3.Date;
    end;
  if DateEdit4.Date > 0 then
    begin
      qPedido.SQL.Add(' AND ((dbTalao.DtReprogramacao <= :DtReprogFinal) ');
      qPedido.SQL.Add(' OR ((dbTalao.DtReprogramacao is Null) AND (dbPedidoItem.DtReprogramacao <= :DtReprogFinalP)))');
      qPedido.ParamByName('DtReprogFinal').AsDate  := DateEdit4.Date;
      qPedido.ParamByName('DtReprogFinalP').AsDate  := DateEdit4.Date;
    end;
  case ComboBox1.ItemIndex of
    0 : begin
          qPedido.SQL.Add(' AND (((dbPedidoItem.QtdParesRest > 0)');
          qPedido.SQL.Add(' AND (dbTalao.QtdRestante is null)) ');
          qPedido.SQL.Add('  OR (dbTalao.QtdRestante > 0)) ');
        end;
    1 : begin
          qPedido.SQL.Add(' AND (((dbPedidoItem.QtdParesFat > 0)');
          qPedido.SQL.Add(' AND (dbTalao.QtdFaturada is null)) ');
          qPedido.SQL.Add('  OR (dbTalao.QtdFaturada > 0)) ');
        end;
  end;
  qPedido.SQL.Add('ORDER BY dbPedido.Pedido, dbPedidoItem.Item, dbTalao.Talao');
  qPedido.Open;
end;

procedure TfConsPedido2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm1.GravaGrid(SMDBGrid1,Name);
  DM1.tTalao.Filtered := False;
  qPedido.Close;
  DM1.tCliente.Close;
  DM1.tCidade.Close;
  DM1.tTalao.Close;
  DM1.tGrupo.Close;
  DM1.tCondPgto.Close;

  Action := Cafree;
end;

procedure TfConsPedido2.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;

  vSql := qPedido.SQL.Text;

  DM1.tFilial.Open;
  DM1.tCliente.Open;
  DM1.tTalao.Open;
  DM1.tCidade.Open;
  DM1.tCor2.Open;
  DM1.tVendedor2.Open;
  DM1.tCliente2.Open;
  DM1.tGrupo.Open;
  DM1.tCondPgto.Open;
end;

procedure TfConsPedido2.BitBtn1Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to (SMDBGrid1.ColCount - 2) do
    SMDBGrid1.Columns[i].FilterValue := '';
  SMDBGrid1.DataSource := nil;
  Monta_SqlqPedido;
  Le_qPedido;
  case ComboBox2.ItemIndex of
    0 : mPedido.IndexFieldNames := 'NomeGrupo;DtEmissao;Fantasia;PedidoCliente';
    1 : mPedido.IndexFieldNames := 'NomeGrupo;Fantasia;DtEmissao;PedidoCliente';
    2 : mPedido.IndexFieldNames := 'NomeGrupo;PedidoCliente;Fantasia;NomeProduto';
    3 : mPedido.IndexFieldNames := 'NomeGrupo;UF;NomeCidade;DtEmissao;Fantasia;PedidoCliente';
    4 : mPedido.IndexFieldNames := 'NomeGrupo;DtReprogramado;Fantasia';
  end;
  //SMDBGrid1.EnableScroll;
  SMDBGrid1.DataSource := dsmPedido;
end;

procedure TfConsPedido2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.0000',mPedidoQtdFaturada.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',mPedidoQtdRestante.AsFloat)) <= 0) then
  begin
    if not mPedidoEntregue.AsBoolean then
    begin
      Background  := clMoneyGreen;
      AFont.Color := clBlack;
    end
    else
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end;
  end
  else
  if mPedidoSituacao.AsString = 'Nao Programado' then
    Background  := clYellow
  else
  if mPedidoDtReprogramado.AsDateTime <> mPedidoDtEntrega.AsDateTime then
    Background  := clAqua;
end;

procedure TfConsPedido2.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0 : mPedido.IndexFieldNames := 'NomeGrupo;DtEmissao;Fantasia;PedidoCliente';
    1 : mPedido.IndexFieldNames := 'NomeGrupo;Fantasia;DtEmissao;PedidoCliente';
    2 : mPedido.IndexFieldNames := 'NomeGrupo;PedidoCliente;Fantasia;NomeProduto';
    3 : mPedido.IndexFieldNames := 'NomeGrupo;UF;NomeCidade;DtEmissao;Fantasia;PedidoCliente';
    4 : mPedido.IndexFieldNames := 'NomeGrupo;DtReprogramado;Fantasia';
  end;
end;

procedure TfConsPedido2.mPedidoNewRecord(DataSet: TDataSet);
begin
  mPedidoQtdCancelada.AsFloat := 0;
  mPedidoQtdFaturada.AsFloat  := 0;
  mPedidoQtdPedido.AsFloat    := 0;
  mPedidoQtdRestante.AsFloat  := 0;
  mPedidoEntregue.AsBoolean   := False;
end;

procedure TfConsPedido2.FormCreate(Sender: TObject);
begin
  dm1.leGrid(SMDBGrid1,Name);
end;

procedure TfConsPedido2.BitBtn7Click(Sender: TObject);
var
  bm: TBookmark;
  col, row: Integer;
  sline: String;
  mem: TMemo;
  ExcelApp: Variant;
  NomeGrid : String;
begin
  Screen.Cursor := crHourglass;
  NomeGrid := 'SMDBGrid1';
  TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.DisableControls;
  bm := TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.GetBookmark;
  TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.First;
  //if toExcel then
    //begin
      ExcelApp := CreateOleObject('Excel.Application');
      ExcelApp.WorkBooks.Add(xlWBatWorkSheet);
      ExcelApp.WorkBooks[1].WorkSheets[1].Name := 'Grid Data';
    //end;
  mem := TMemo.Create(nil);
  mem.Visible := false;
  mem.Parent := fConsPedido2;
  mem.Clear;
  sline := '';
  for col := 0 to TSMDBGrid(FindComponent(NomeGrid)).FieldCount - 1 do
    if TSMDBGrid(FindComponent(NomeGrid)).Columns.Items[col].Visible then
      sline := sline + TSMDBGrid(FindComponent(NomeGrid)).Fields[col].DisplayLabel + #9;
  mem.Lines.Add(sline);
  for row := 0 to TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.RecordCount-1 do
    begin
      sline := '';
      for col := 0 to TSMDBGrid(FindComponent(NomeGrid)).FieldCount-1 do
        begin
          if TSMDBGrid(FindComponent(NomeGrid)).Columns.Items[col].Visible then
            sline := sline + TSMDBGrid(FindComponent(NomeGrid)).Fields[col].AsString + #9;
        end;
      mem.Lines.Add(sline);
      TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.Next;
    end;

  {if RzPageControl1.ActivePage = TabSheet1 then
    begin
      mem.Lines.Add('');
      mem.Lines.Add('   *** TOTAIS ***');
      mem.Lines.Add(Label7.Caption + #9 + CurrencyEdit1.Text + #9 + Label8.Caption + #9 + CurrencyEdit2.Text + #9 + Label9.Caption + #9 + CurrencyEdit3.Text);
    end;}

  mem.SelectAll;
  mem.CopyToClipboard;
  //if toExcel then
   // begin
      ExcelApp.Workbooks[1].WorkSheets['Grid Data'].Paste;
      ExcelApp.Visible := true;
    //end;
  //FreeAndNil(mem);
  //FreeAndNil(ExcelApp);
  TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.GotoBookmark(bm);
  TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.FreeBookmark(bm);
  TSMDBGrid(FindComponent(NomeGrid)).DataSource.DataSet.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfConsPedido2.Imprimir1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelPedidoProcesso := TfRelPedidoProcesso.Create(Self);
  fRelPedidoProcesso.RLReport1.Preview;
  fRelPedidoProcesso.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsPedido2.Visualizar1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelPedidoProcesso2 := TfRelPedidoProcesso2.Create(Self);
  fRelPedidoProcesso2.RLReport1.Preview;
  fRelPedidoProcesso2.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

end.
