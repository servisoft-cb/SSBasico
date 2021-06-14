unit UConsLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DBVGrids, RxLookup, StdCtrls, Mask,
  ToolEdit, Buttons, DB, DBTables, ALed;

type
  TfConsLote = class(TForm)
    SMDBGrid1: TSMDBGrid;
    VDBGrid1: TVDBGrid;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qTalao: TQuery;
    qTalaoCodCliente: TIntegerField;
    qTalaoTalao: TIntegerField;
    qTalaoPedido: TIntegerField;
    qTalaoItemPedido: TIntegerField;
    qTalaoCodProduto: TIntegerField;
    qTalaoCodCor: TIntegerField;
    qTalaoCodGrade: TIntegerField;
    qTalaoPosicao: TIntegerField;
    qTalaoTamanho: TStringField;
    qTalaoQuantidade: TFloatField;
    qTalaoPedidoCliente: TStringField;
    qTalaoProduzido: TBooleanField;
    qTalaoDtBaixa: TDateField;
    qTalaoQtdFaturada: TFloatField;
    qTalaoQtdRestante: TFloatField;
    qTalaoDtEntrega: TDateField;
    qTalaoFilial: TIntegerField;
    qTalaoDtReprogramacao: TDateField;
    qTalaoReprogramacao: TBooleanField;
    qTalaoNomeCliente: TStringField;
    qTalaoReferencia: TStringField;
    qTalaoNomeProduto: TStringField;
    Label5: TLabel;
    ComboBox2: TComboBox;
    dsqTalao: TDataSource;
    qTalaolkNomeCor: TStringField;
    tTalaoGrade: TTable;
    tTalaoGradeTalao: TIntegerField;
    tTalaoGradeCodGrade: TIntegerField;
    tTalaoGradePosicao: TIntegerField;
    tTalaoGradeQuantidade: TFloatField;
    tTalaoGradeQtdFaturada: TFloatField;
    tTalaoGradeQtdRestante: TFloatField;
    tTalaoGradeTamanho: TStringField;
    dsTalaoGrade: TDataSource;
    Label6: TLabel;
    ComboBox3: TComboBox;
    ALed2: TALed;
    Label8: TLabel;
    ALed4: TALed;
    Label10: TLabel;
    ALed5: TALed;
    Label11: TLabel;
    ALed6: TALed;
    Label12: TLabel;
    qTalaoHrBaixa: TTimeField;
    qTalaoCancelado: TBooleanField;
    qTalaoNumOS: TStringField;
    qTalaoMotivoCancelado: TStringField;
    qTalaoDtCancelado: TDateField;
    qTalaolkObsTalao: TStringField;
    BitBtn3: TBitBtn;
    qTalaoPlano: TStringField;
    qTalaolkFabrica: TStringField;
    CheckBox1: TCheckBox;
    qTalaoImpMatTalao: TBooleanField;
    qTalaoTipo: TStringField;
    qTalaoclTipo: TStringField;
    qTalaoDtImpressao: TDateField;
    qTalaoHrImpressao: TTimeField;
    BitBtn4: TBitBtn;
    qTalaoFabrica: TStringField;
    qTalaoFantasia: TStringField;
    qTalaoDescMaterial: TStringField;
    qTalaoComplemento: TStringField;
    qTalaoCodCombinacao: TIntegerField;
    CheckBox2: TCheckBox;
    qTalaolkUnidade: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure qTalaoCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQLTalao;
    procedure Excluir_Faturamento;
  public
    vNumPedidoInt : Integer;
    vDtBaixaIniCons, vDtBaixaFinCons, vDtImpIniCons, vDtImpFinCons : TDate;
    vCodProdutoCons, vCodClienteCons, vCodCorCons : Integer;

    { Public declarations }
  end;

var
  fConsLote: TfConsLote;

implementation

uses UDM1, URelTalao2, URelTalao, UConsLoteMaisPesquisa, URelLotes,
  uConsLoteMateriais;

{$R *.dfm}

procedure TfConsLote.Excluir_Faturamento;
begin
  DM1.tTalao.Edit;
  DM1.tTalaoQtdFaturada.AsFloat := 0;
  DM1.tTalaoQtdRestante.AsFloat := DM1.tTalaoQuantidade.AsFloat;
  DM1.tTalao.Post;

  DM1.tTalaoGrade.First;
  while not DM1.tTalaoGrade.Eof do
    begin
      DM1.tTalaoGrade.Edit;
      DM1.tTalaoGradeQtdFaturada.AsFloat := 0;
      DM1.tTalaoGradeQtdRestante.AsFloat := DM1.tTalaoGradeQuantidade.AsFloat;
      DM1.tTalaoGrade.Post;

      DM1.tTalaoGrade.Next;
    end;

  if DM1.tPedido.Locate('Pedido',DM1.tTalaoPedido.AsInteger,[loCaseInsensitive]) then
    begin
      DM1.tPedido.Edit;
      DM1.tPedidoQtdParesFat.AsFloat  := DM1.tPedidoQtdParesFat.AsFloat - DM1.tTalaoQuantidade.AsFloat;
      DM1.tPedidoQtdFatAut.AsFloat    := DM1.tPedidoQtdFatAut.AsFloat - DM1.tTalaoQuantidade.AsFloat;
      DM1.tPedidoQtdParesRest.AsFloat := DM1.tPedidoQtdParesRest.AsFloat + DM1.tTalaoQuantidade.AsFloat;
      DM1.tPedidoCopiado.AsBoolean    := False;
      DM1.tPedido.Post;

      if DM1.tPedidoItem.Locate('Item',DM1.tTalaoItemPedido.AsInteger,[loCaseInsensitive]) then
        begin
          DM1.tPedidoItem.Edit;
          DM1.tPedidoItemQtdFatAut.AsFloat    := DM1.tPedidoItemQtdFatAut.AsFloat - DM1.tTalaoQuantidade.AsFloat;
          DM1.tPedidoItemQtdParesFat.AsFloat  := DM1.tPedidoItemQtdParesFat.AsFloat - DM1.tTalaoQuantidade.AsFloat;
          DM1.tPedidoItemQtdParesRest.AsFloat := DM1.tPedidoItemQtdParesRest.AsFloat + DM1.tTalaoQuantidade.AsFloat;
          DM1.tPedidoItemCopiado.AsBoolean    := False;
          DM1.tPedidoItem.Post;

          DM1.tTalaoGrade.First;
          while not DM1.tTalaoGrade.Eof do
            begin
              if DM1.tPedidoGrade.Locate('CodGrade;Posicao',VarArrayOf([DM1.tTalaoGradeCodGrade.AsInteger,DM1.tTalaoGradePosicao.AsInteger]),[locaseinsensitive]) then
                begin
                  DM1.tPedidoGrade.Edit;
                  DM1.tPedidoGradeQtdParesFat.AsFloat  := DM1.tPedidoGradeQtdParesFat.AsFloat - DM1.tTalaoGradeQuantidade.AsFloat;
                  DM1.tPedidoGradeQtdParesAut.AsFloat  := DM1.tPedidoGradeQtdParesAut.AsFloat - DM1.tTalaoGradeQuantidade.AsFloat;
                  DM1.tPedidoGradeQtdParesRest.AsFloat := DM1.tPedidoGradeQtdParesRest.AsFloat + DM1.tTalaoGradeQuantidade.AsFloat;
                  DM1.tPedidoGrade.Post;
                end;
              DM1.tTalaoGrade.Next;
            end;
        end;
    end;
  ShowMessage('Excluído faturamento do talão e pedido!');
end;

procedure TfConsLote.Monta_SQLTalao;
begin
  qTalao.Close;
  qTalao.SQL.Clear;
  qTalao.SQL.Add('SELECT Dbtalao.CodCliente, Dbtalao.Talao, Dbtalao.Pedido, Dbtalao.ItemPedido, Dbtalao.CodProduto, ');
  qTalao.SQL.Add(' Dbtalao.CodCor, Dbtalao.CodGrade, Dbtalao.Posicao, Dbtalao.Tamanho, Dbtalao.Quantidade, Dbtalao.PedidoCliente, ');
  qTalao.SQL.Add(' Dbtalao.Produzido, Dbtalao.DtBaixa, Dbtalao.QtdFaturada, Dbtalao.QtdRestante, Dbtalao.DtEntrega, ');
  qTalao.SQL.Add(' Dbtalao.Filial, Dbtalao.DtReprogramacao, Dbtalao.Reprogramacao, Dbcliente.Nome NomeCliente, ');
  qTalao.SQL.Add(' Dbproduto.Referencia, Dbproduto.Nome NomeProduto, Dbtalao.HrBaixa, Dbtalao.Cancelado, Dbtalao.NumOS, ');
  qTalao.SQL.Add(' Dbtalao.MotivoCancelado, Dbtalao.DtCancelado, dbTalao.Plano, dbProduto.ImpMatTalao, dbTalao.Tipo,  ');
  qTalao.SQL.Add(' dbTalao.DtImpressao, dbTalao.HrImpressao, dbTalao.Fabrica, dbProduto.Frequencia, ');
  qTalao.SQL.Add(' dbCliente.Fantasia, dbProduto.DescMaterial, Dbproduto.Complemento, dbTalao.CodCombinacao ');
  qTalao.SQL.Add('FROM "dbTalao.DB" Dbtalao');
  qTalao.SQL.Add('   INNER JOIN "dbCliente.DB" Dbcliente');
  qTalao.SQL.Add('   ON  (Dbtalao.CodCliente = Dbcliente.Codigo)');
  qTalao.SQL.Add('   INNER JOIN "dbProduto.DB" Dbproduto');
  qTalao.SQL.Add('   ON  (Dbtalao.CodProduto = Dbproduto.Codigo)');
  qTalao.SQL.Add('WHERE (0=0)');
  if vNumPedidoInt > 0 then
    begin
      qTalao.SQL.Add('  AND (dbTalao.Pedido = :Pedido)');
      qTalao.ParamByName('Pedido').AsInteger := vNumPedidoInt;
      qTalao.SQL.Add('  AND (dbTalao.DtImpressao is Null)');
    end;
  if RxDBLookupCombo1.Text <> '' then
    begin
      qTalao.SQL.Add(' AND (dbTalao.Filial = :Filial)');
      qTalao.ParamByName('Filial').AsInteger := RxDBLookupCombo1.KeyValue;
    end;
  if DateEdit1.Date > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.DtReprogramacao >= :DtInicial)');
      qTalao.ParamByName('DtInicial').AsDate := DateEdit1.Date;
    end;
  if DateEdit2.Date > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.DtReprogramacao <= :DtFinal)');
      qTalao.ParamByName('DtFinal').AsDate := DateEdit2.Date;
    end;
  case ComboBox2.ItemIndex of
    0 : qTalao.SQL.Add(' AND (Reprogramacao = False) ');
    1 : qTalao.SQL.Add(' AND (Reprogramacao = True) ');
  end;
  case ComboBox1.ItemIndex of
    0 : qTalao.SQL.Add(' AND (QtdRestante > 0) ');
    1 : qTalao.SQL.Add(' AND (QtdFaturada > 0) ');
  end;

  if vDtBaixaIniCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.DtBaixa >= :DtBaixaIni)');
      qTalao.ParamByName('DtBaixaIni').AsDate := vDtBaixaIniCons;
    end;
  if vDtBaixaFinCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.DtBaixa <= :DtBaixaFin)');
      qTalao.ParamByName('DtBaixaFin').AsDate := vDtBaixaFinCons;
    end;

  if vDtImpIniCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.DtImpressao >= :DtImpIni)');
      qTalao.ParamByName('DtImpIni').AsDate := vDtImpIniCons;
    end;
  if vDtImpFinCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.DtImpressao <= :DtImpFin)');
      qTalao.ParamByName('DtImpFin').AsDate := vDtImpFinCons;
    end;
  if vCodProdutoCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.CodProduto = :CodProduto)');
      qTalao.ParamByName('CodProduto').AsInteger := vCodProdutoCons;
    end;
  if vCodCorCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.CodCor = :CodCor)');
      qTalao.ParamByName('CodCor').AsInteger := vCodCorCons;
    end;
  if vCodClienteCons > 0 then
    begin
      qTalao.SQL.Add(' AND (dbTalao.CodCliente = :CodCliente)');
      qTalao.ParamByName('CodCliente').AsInteger := vCodClienteCons;
    end;
  case ComboBox3.ItemIndex of
    0 : qTalao.SQL.Add('ORDER BY dbTalao.Talao');
    1 : qTalao.SQL.Add('ORDER BY dbTalao.PedidoCliente, dbProduto.Referencia, dbTalao.Codcor');
    2 : qTalao.SQL.Add('ORDER BY dbProduto.Referencia, dbTalao.CodCor, dbTalao.PedidoCliente');
    3 : qTalao.SQL.Add('ORDER BY dbTalao.DtReprogramacao, dbTalao.PedidoCliente, dbProduto.Referencia');
  end;
  qTalao.Open;

  if vNumPedidoInt > 0 then
    SMDBGrid1.SelectAllClick(SMDBGrid1.SelectedRows);
  //SMDBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TfConsLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qTalao.Close;
  vNumPedidoInt := 0;
  if Screen.FormCount < 3 then
    begin
      DM1.tTalao.Close;
      DM1.tTalaoGrade.Close;
      DM1.tProduto.Close;
      DM1.tProdutoCor.Close;
      DM1.tProdutoComb.Close;
      DM1.tPedido.Close;
      DM1.tPedidoItem.Close;
      DM1.tPedidoGrade.Close;
    end;
  Action := Cafree;
end;

procedure TfConsLote.BitBtn1Click(Sender: TObject);
begin
  vNumPedidoInt := 0;
  Monta_SQLTalao;
  VDBGrid1.DataSource := dsTalaoGrade;
end;

procedure TfConsLote.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  AFont.Color  := clBlack;
  if (qTalaoQtdFaturada.AsFloat > 0) and (qTalaoQtdRestante.AsFloat <= 0) then
    begin
      Background  := clTeal;
      AFont.Color := clWhite;
    end
  else
  if qTalaoCancelado.AsBoolean then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end
  else
  if qTalaoDtBaixa.AsDateTime > 0 then
    Background := clYellow
  else
  if qTalaoReprogramacao.AsBoolean then
    Background := clAqua
  else
    Background := clWhite;

end;

procedure TfConsLote.BitBtn3Click(Sender: TObject);
begin
  if qTalao.Active then
    begin
      DM1.tProduto.IndexFieldNames := 'Codigo';
      DM1.tProduto.FindKey([qTalaoCodProduto.AsInteger ]);
      SMDBGrid1.DisableScroll;
      if CheckBox1.Checked then
        begin
          fRelTalao2 := tfRelTalao2.Create(Self);
          fRelTalao2.QuickRep1.Preview;
          fRelTalao2.QuickRep1.Free;
        end
      else
        begin
          fRelTalao := TfRelTalao.Create(Self);
          fRelTalao.RLReport1.Preview;
          fRelTalao.RLReport1.Free;
          FreeAndNil(fRelTalao);
        end;
      SMDBGrid1.EnableScroll;
    end;
end;

procedure TfConsLote.qTalaoCalcFields(DataSet: TDataSet);
begin
  if qTalaoTipo.AsString = 'V' then
    qTalaoclTipo.AsString := 'Venda'
  else
  if qTalaoTipo.AsString = 'A' then
    qTalaoclTipo.AsString := 'Amostra'
  else
  if qTalaoTipo.AsString = 'R' then
    qTalaoclTipo.AsString := 'Reposição'
  else
  if qTalaoTipo.AsString = 'F' then
    qTalaoclTipo.AsString := 'Falta'
  else
  if qTalaoTipo.AsString = 'E' then
    qTalaoclTipo.AsString := 'Estoque'
  else
  if qTalaoTipo.AsString = 'M' then
    qTalaoclTipo.AsString := 'Mão de Obra';
end;

procedure TfConsLote.FormShow(Sender: TObject);
begin
  if vNumPedidoInt > 0 then
    Monta_SQLTalao;
  DM1.tTalao.Open;
  DM1.tTalaoGrade.Open;
  DM1.tProduto.Open;
  DM1.tProdutoCor.Open;
  DM1.tProdutoMat.Open;
  DM1.tProdutoComb.Open;
  if DM1.tUsuarioUsuario.AsString = 'CLEOMAR' then
    begin
      DM1.tPedido.Open;
      DM1.tPedidoItem.Open;
      DM1.tPedidoGrade.Open;
    end;

  vDtBaixaIniCons := 0;
  vDtBaixaFinCons := 0;
  vDtImpIniCons   := 0;
  vDtImpFinCons   := 0;
  vCodProdutoCons := 0;
  vCodClienteCons := 0;
  vCodCorCons     := 0;

  BitBtn3.Enabled := DM1.tUsuarioRelTalao.AsBoolean;
end;

procedure TfConsLote.BitBtn4Click(Sender: TObject);
begin
  fConsLoteMaisPesquisa := TfConsLoteMaisPesquisa.Create(Self);
  fConsLoteMaisPesquisa.DateEdit1.Date := vDtBaixaIniCons;
  fConsLoteMaisPesquisa.DateEdit2.Date := vDtBaixaFinCons;
  fConsLoteMaisPesquisa.DateEdit3.Date := vDtImpIniCons;
  fConsLoteMaisPesquisa.DateEdit4.Date := vDtImpFinCons;
  if vCodProdutoCons > 0 then
    fConsLoteMaisPesquisa.RxDBLookupCombo2.KeyValue := vCodProdutoCons;
  if vCodCorCons > 0 then
    fConsLoteMaisPesquisa.RxDBLookupCombo1.KeyValue := vCodCorCons;
  if vCodClienteCons > 0 then
    fConsLoteMaisPesquisa.RxDBLookupCombo3.KeyValue := vCodClienteCons;
  fConsLoteMaisPesquisa.ShowModal;
end;

procedure TfConsLote.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Não liberar para nenhum usuário
  if (Key = Vk_F5) and (qTalao.Active) and (DM1.tUsuarioUsuario.AsString = 'CLEOMAR') and (qTalaoTalao.AsInteger > 0) then
    begin
      if MessageDlg('Excluir o faturamento deste lote?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          if (DM1.tTalao.Locate('Talao',qTalaoTalao.AsInteger,[loCaseInsensitive])) and
             (DM1.tTalaoQtdFaturada.AsFloat > 0) then
            Excluir_Faturamento
          else
            ShowMessage('Talão não faturado!');
        end;
    end;
end;

procedure TfConsLote.BitBtn2Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  fRelLotes := TfRelLotes.Create(Self);
  fRelLotes.RLReport1.Preview;
  fRelLotes.RLReport1.Free;
  SMDBGrid1.EnableScroll;
end;

procedure TfConsLote.SMDBGrid1DblClick(Sender: TObject);
begin
  fConsLoteMateriais := TfConsLoteMateriais.Create(Self);
  fConsLoteMateriais.ShowModal;
end;

end.
