unit UPedidoItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ToolEdit, Buttons, RxLookup, Mask, CurrEdit, Db,
  DBTables, DBFilter, DBCtrls, RzDBCmbo, Variants;

type
  TfPedidoItem = class(TForm)
    StaticText5: TStaticText;
    DateEdit1: TDateEdit;
    StaticText3: TStaticText;
    CurrencyEdit1: TCurrencyEdit;
    RadioGroup3: TRadioGroup;
    Edit4: TEdit;
    StaticText7: TStaticText;
    CurrencyEdit2: TCurrencyEdit;
    StaticText4: TStaticText;
    Edit5: TEdit;
    StaticText6: TStaticText;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText9: TStaticText;
    SpeedButton10: TSpeedButton;
    RxDBLookupCombo12: TRxDBLookupCombo;
    StaticText2: TStaticText;
    BitBtn12: TBitBtn;
    Panel1: TPanel;
    SpeedButton7: TSpeedButton;
    BitBtn6: TBitBtn;
    qCorRef: TQuery;
    qCorRefCodCor: TIntegerField;
    qCorRefNome: TStringField;
    dsqCorRef: TDataSource;
    RxDBFilter2: TRxDBFilter;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    StaticText13: TStaticText;
    CurrencyEdit4: TCurrencyEdit;
    StaticText14: TStaticText;
    CurrencyEdit5: TCurrencyEdit;
    StaticText15: TStaticText;
    Panel2: TPanel;
    SpeedButton9: TSpeedButton;
    CurrencyEdit3: TCurrencyEdit;
    StaticText10: TStaticText;
    StaticText1: TStaticText;
    StaticText8: TStaticText;
    RxDBLookupCombo10: TRxDBLookupCombo;
    CurrencyEdit6: TCurrencyEdit;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    StaticText19: TStaticText;
    Edit6: TEdit;
    RxDBLookupCombo15: TRxDBLookupCombo;
    RxDBFilter1: TRxDBFilter;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    tNEntradaItens2: TTable;
    tNEntradaItens2Filial: TIntegerField;
    tNEntradaItens2CodForn: TIntegerField;
    tNEntradaItens2NumNEntr: TIntegerField;
    tNEntradaItens2NumPedCliente: TStringField;
    qCombinacao: TQuery;
    qCombinacaoCodCombinacao: TIntegerField;
    qCombinacaoNome: TStringField;
    dsqCombinacao: TDataSource;
    StaticText11: TStaticText;
    DateEdit2: TDateEdit;
    CheckBox1: TCheckBox;
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo10Enter(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure RxDBLookupCombo12Enter(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure RxDBLookupCombo10Change(Sender: TObject);
    procedure CurrencyEdit2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RzDBLookupComboBox1Enter(Sender: TObject);
    procedure RzDBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    vCodProduto : Integer;
    vCodCor : Integer;
    vCodFornecedor : Integer;
    procedure Move_Itens;
    procedure Grava_Itens;
    procedure Monta_SQLCombinacao;
  public
    { Public declarations }
  end;

var
  fPedidoItem: TfPedidoItem;
  vItemPedAux : Integer;
  
implementation

uses UDM1, UPedidoGrade, UPedido, UProduto, USitTributaria, UTabPreco,
  USenhaAlt, UConsNotaBeneficiamento;

{$R *.DFM}

procedure TfPedidoItem.Monta_SQLCombinacao;
var
  vCodCorAux : Integer;
begin
  vCodCorAux := 0;
  if DM1.tProdutoLancaCor.AsBoolean then
    vCodCorAux := RxDBLookupCombo3.KeyValue;
  qCombinacao.Close;
  qCombinacao.ParamByName('CodProduto').AsInteger := RxDBLookupCombo10.KeyValue;
  qCombinacao.ParamByName('CodCor').AsInteger     := vCodCorAux;
  qCombinacao.Open;
end;

procedure TfPedidoItem.Grava_Itens;
var
  vQtdAux : Real;
  vAux : Currency;
  vItemAux : Integer;
begin
  fPedido.tAuxPedidoGrade.First;
  while not fPedido.tAuxPedidoGrade.Eof do
    begin
      if fPedido.tAuxPedidoGradeQtd.AsFloat > 0 then
        begin
          DM1.tPedidoItem.Last;
          vItemPedAux := DM1.tPedidoItemItem.AsInteger + 1;
          DM1.tPedidoItem.Insert;
          DM1.tPedidoItemPedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
          DM1.tPedidoItemItem.AsInteger       := vItemPedAux;
          DM1.tPedidoItemCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
          DM1.tPedidoItemCodGrade.AsInteger   := fPedido.tAuxPedidoGradeCodGrade.AsInteger;
          DM1.tPedidoItemPosicao.AsInteger    := fPedido.tAuxPedidoGradePosicao.AsInteger;
          DM1.tPedidoItemTamanho.AsString     := fPedido.tAuxPedidoGradelkTamanho.AsString;
          if DM1.tProdutoLancaCor.AsBoolean then
            DM1.tPedidoItemCodCor.AsInteger      := RxDBLookupCombo3.KeyValue
          else
            DM1.tPedidoItemCodCor.AsInteger      := 0;
          if RxDBLookupCombo12.Text <> '' then
            DM1.tPedidoItemSitTrib.AsInteger := RxDBLookupCombo12.KeyValue
          else
            DM1.tPedidoItemSitTrib.AsInteger := 0;
          vQtdAux := fPedido.tAuxPedidoGradeQtd.AsFloat;
          DM1.tPedidoItemQtdPares.AsFloat           := fPedido.tAuxPedidoGradeQtd.AsFloat;
          DM1.tPedidoItemReposicao.AsBoolean        := False;
          DM1.tPedidoItemQtdParesRest.AsFloat       := fPedido.tAuxPedidoGradeQtd.AsFloat;
          DM1.tPedidoItemPreco.AsFloat              := CurrencyEdit2.Value;
          DM1.tPedidoItemReprogramacao.AsBoolean    := vReprogramacao;
          DM1.tPedidoItemFabrica.AsString           := Edit4.Text;
          DM1.tPedidoItemUnidade.AsString           := RxDBLookupCombo15.Value;
          DM1.tPedidoItemDtEmbarque.AsDateTime      := DateEdit1.Date;
          DM1.tPedidoItemDtReprogramacao.AsDateTime := DateEdit1.Date;
          DM1.tPedidoItemNumOS.AsString             := Edit5.Text;
          DM1.tPedidoItemPlano.AsString             := Edit6.Text;
          DM1.tPedidoItemPercComissao.AsFloat       := CurrencyEdit4.Value;
          DM1.tPedidoItemObsTalao.AsString          := Edit2.Text;
          if DM1.tPedidoItemReposicao.AsBoolean then
            DM1.tPedidoQtdParesRep.AsFloat := DM1.tPedidoQtdParesRep.AsFloat + fPedido.tAuxPedidoGradeQtd.AsFloat
          else
            begin
              DM1.tPedidoQtdPares.AsFloat          := DM1.tPedidoQtdPares.AsFloat + fPedido.tAuxPedidoGradeQtd.AsFloat;
              DM1.tPedidoQtdParesRest.AsFloat      := DM1.tPedidoQtdParesRest.AsFloat + fPedido.tAuxPedidoGradeQtd.AsFloat;
              DM1.tPedidoPesoBruto.AsFloat         := DM1.tPedidoPesoBruto.AsFloat + DM1.tPedidoItemlkPesoBruto.AsFloat *
                                                      vQtdAux;
              DM1.tPedidoPesoLiquido.AsFloat       := DM1.tPedidoPesoLiquido.AsFloat + DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                                      vQtdAux;
            end;
          fPedido.Calc_desc_Item;
          //Identifica se o item do pedido é <P> Vai ser produzido pela empresa  <V> a empresa não produz vende direta
          case RadioGroup3.ItemIndex of
            0 : DM1.tPedidoItemProducaoVenda.AsString := 'P';
            1 : DM1.tPedidoItemProducaoVenda.AsString := 'V';
          end;
          vAux   := StrToCurr(FormatFloat('0.0000',DM1.tPedidoItemPreco.AsCurrency)) * vQtdAux;
          DM1.tPedidoVlrMercadoria.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency + vAux));
          DM1.tPedidoItemCodCombinacao.AsInteger := 1;
          DM1.tPedidoItemGerarTalao.AsBoolean    := CheckBox1.Checked;
          DM1.tPedidoItem.Post;

          // Grava os materiais da referência
          //DM1.tProduto.IndexFieldNames := 'Codigo';
          {DM1.tProdutoMat.Filtered     := False;
          DM1.tProdutoMat.Filter       := 'CodCorProd = '''+DM1.tPedidoItemCodCor.AsString+'''';
          DM1.tProdutoMat.Filtered     := True;}
          if DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemCodCombinacao.AsInteger]),[locaseinsensitive]) then
            begin
              DM1.tProdutoMat.First;
              while not DM1.tProdutoMat.EOF do
                begin
                  DM1.tPedidoMaterial.Refresh;
                  DM1.tPedidoMaterial.Refresh;
                  DM1.tPedidoMaterial.Last;
                  vItemAux := DM1.tPedidoMaterialOrdem.AsInteger;

                  DM1.tPedidoMaterial.Insert;
                  DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
                  DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
                  DM1.tPedidoMaterialOrdem.AsInteger       := vItemAux + 1;
                  DM1.tPedidoMaterialCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
                  DM1.tPedidoMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
                  DM1.tPedidoMaterialConsumoPr.AsFloat     := DM1.tProdutoMatQtd.AsFloat;
                  DM1.tPedidoMaterialImpTalao.AsString     := DM1.tProdutoMatImpTalao.AsString;
                  DM1.tPedidoMaterialTipoConsumo.AsString  := DM1.tProdutoMatConsumo.AsString;
                  if DM1.tProdutoMatConsumo.AsString = 'T' then
                    begin
                      DM1.tProdutoConsumo.SetKey;
                      DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoMatCodProduto.AsInteger;
                      DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoMatCodCorProd.AsInteger;
                      DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
                      DM1.tProdutoConsumoCodGrade.AsInteger      := DM1.tPedidoItemCodGrade.AsInteger;
                      if DM1.tProdutoConsumo.GotoKey then
                        begin
                          DM1.tProdutoConsumoItem.First;
                          while not DM1.tProdutoConsumoItem.Eof do
                            begin
                              DM1.tPedidoConsumo.Insert;
                              DM1.tPedidoConsumoPedido.AsInteger    := DM1.tPedidoPedido.AsInteger;
                              DM1.tPedidoConsumoItemPed.AsInteger   := DM1.tPedidoItemItem.AsInteger;
                              DM1.tPedidoConsumoOrdem.AsInteger     := DM1.tPedidoMaterialOrdem.AsInteger;
                              DM1.tPedidoConsumoCodGrade.AsInteger  := DM1.tProdutoConsumoItemCodGrade.AsInteger;
                              DM1.tPedidoConsumoPosicao.AsInteger   := DM1.tProdutoConsumoItemPosicao.AsInteger;
                              DM1.tPedidoConsumoConsumo.AsFloat     := DM1.tProdutoConsumoItemConsumo.AsFloat;
                              DM1.tPedidoConsumoTamanhoMat.AsString := DM1.tProdutoConsumoItemTamanhoMat.AsString;
                              DM1.tPedidoConsumo.Post;
                              DM1.tProdutoConsumoItem.Next;
                            end;
                        end;
                    end;
                  DM1.tPedidoMaterial.Post;
                  DM1.tProdutoMat.Next
                end;
            end;
        end;
      fPedido.tAuxPedidoGrade.Delete;
    end;
end;

procedure TfPedidoItem.Move_Itens;
begin
  CurrencyEdit3.AsInteger    := DM1.tProdutoCodigo.AsInteger;
  RxDBLookupCombo10.KeyValue := DM1.tProdutoCodigo.AsInteger;
  RzDBLookupComboBox1.KeyValue := DM1.tProdutoCodigo.AsInteger;

  if (fPedido.BitBtn14.Tag = 1) and (vCodProduto <> CurrencyEdit3.AsInteger) then
    begin
      fPedido.tAuxPedidoGrade.First;
      while not fPedido.tAuxPedidoGrade.Eof do
        fPedido.tAuxPedidoGrade.Delete;
      fPedido.tAuxPedidoGrade.Refresh;
      CurrencyEdit1.Clear;
    end;

  CurrencyEdit1.ReadOnly     := DM1.tProdutoLancaGrade.AsBoolean;
  if (DM1.tClienteImpItemNotaPorTam.AsBoolean) and (fPedido.BitBtn14.Tag > 0) then
    CurrencyEdit1.ReadOnly := False;

  // monta a query da cor da referência
  qCorRef.Close;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo3.ReadOnly := not(DM1.tProdutoLancaCor.AsBoolean);
  RxDBLookupCombo3.TabStop  := DM1.tProdutoLancaCor.AsBoolean;
  if DM1.tProdutoLancaCor.AsBoolean then
    begin
      DM1.tProdutoCor.Refresh;
      qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qCorRef.Open;
      if fPedido.BitBtn14.Tag = 1 then
        RxDBLookupCombo3.KeyValue := Cor;
    end;
  DM1.tNatOperacao.IndexFieldNames := 'Codigo';
  DM1.tNatOperacao.SetKey;
  DM1.tNatOperacaoCodigo.AsInteger := DM1.tPedidoCodNatOper.AsInteger;
  if DM1.tNatOperacao.GotoKey then
    begin
      if (fPedido.BitBtn14.Tag <> 1) or (vCodProduto <> CurrencyEdit3.AsInteger) then
        begin
          if DM1.tNatOperacaoCalcComissao.AsBoolean  then
            begin
              if DM1.tParametrosTipoComissao.AsString = 'G' then
                CurrencyEdit4.Value := DM1.tPedidoPercComissao.AsFloat
              else
              if DM1.tPedidoPercComissao.AsFloat > 0 then
                CurrencyEdit4.Value := DM1.tPedidoPercComissao.AsFloat
              else
              if DM1.tProdutoPercComissaoVend.AsFloat > 0 then
                CurrencyEdit4.Value := DM1.tProdutoPercComissaoVend.AsFloat;
              if DM1.tParametrosTipoComissao.AsString = 'G' then
                CurrencyEdit6.Value := DM1.tPedidoPercComissao2.AsFloat
              else
              if DM1.tPedidoPercComissao2.AsFloat > 0 then
                CurrencyEdit6.Value := DM1.tPedidoPercComissao2.AsFloat
              else
              if DM1.tProdutoPercComissaoVend2.AsFloat > 0 then
                CurrencyEdit6.Value := DM1.tProdutoPercComissaoVend2.AsFloat;
            end;
          if (DM1.tPedidolkUf.AsString = 'RS') and (DM1.tProdutoCodSitTrib.AsInteger > 0) then
            RxDBLookupCombo12.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
          else
          if DM1.tNatOperacaoCodSitTrib.AsInteger > 0 then
            begin
              RxDBLookupCombo12.KeyValue := DM1.tNatOperacaoCodSitTrib.AsInteger;
              vCodSitTrib                := DM1.tNatOperacaoCodSitTrib.AsInteger;
            end
          else
          if DM1.tProdutoCodSitTrib.AsInteger > 0 then
            RxDBLookupCombo12.KeyValue := DM1.tProdutoCodSitTrib.AsInteger
          else
          //NFe 2.00
          if DM1.tFilialCodSitTrib.AsInteger > 0 then
            RxDBLookupCombo12.KeyValue := DM1.tFilialCodSitTrib.AsInteger;
        end;
    end;

  //Quando não existe cor procura o preço por aqui
  if (fPedido.BitBtn14.Tag <> 1) or (vCodProduto <> CurrencyEdit3.AsInteger) then
  begin
    if DM1.tProdutoProdMat.AsString = 'M' then
    begin
      if DM1.tPedidoTipo.AsString <> 'E' then
        CurrencyEdit2.Value := DM1.tProdutoPrecoCusto.AsFloat;
      RxDBLookupCombo15.Value := DM1.tProdutoUnidade.AsString;
    end
    else
    begin
      CurrencyEdit2.Value := 0;
      DM1.tProdutoCor.First;
      if DM1.tPedidoTipo.AsString = 'A' then
      begin
        DM1.tGrupo.IndexFieldNames := 'Codigo';
        DM1.tGrupo.SetKey;
        DM1.tGrupoCodigo.AsInteger := DM1.tProdutoCodGrupo.AsInteger;
        if DM1.tGrupo.GotoKey then
          CurrencyEdit2.Value := DM1.tGrupoPrecoAmostra.AsFloat;
      end;
      if (CurrencyEdit2.Value = 0) and (DM1.tPedidoTipo.AsString <> 'E') then
      begin
        CurrencyEdit2.Value := DM1.tProdutoVlrVenda.AsFloat;
        DM1.tTabPreco.SetKey;
        DM1.tTabPrecoCodCliente.AsInteger := DM1.tPedidoCodCliente.AsInteger;
        DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
        if (DM1.tProdutoLancaCor.AsBoolean) and not(DM1.tProdutoPrecoCor.AsBoolean) then
          DM1.tTabPrecoCodCor.AsInteger   := DM1.tProdutoCorCodCor.AsInteger
        else
        if not DM1.tProdutoLancaCor.AsBoolean then
          DM1.tTabPrecoCodCor.AsInteger := 0;
        if DM1.tTabPreco.GotoKey then
        begin
          if DM1.tNatOperacaoMaoObra.AsBoolean then
          begin
            if DM1.tTabPrecoPrecoMObra.AsFloat > 0 then
              CurrencyEdit2.Value := DM1.tTabPrecoPrecoMObra.AsFloat
            else
              CurrencyEdit2.Value := DM1.tTabPrecoPreco.AsFloat
          end
          else
          begin
            if DM1.tTabPrecoPreco.AsFloat > 0 then
              CurrencyEdit2.Value := DM1.tTabPrecoPreco.AsFloat
            else
              CurrencyEdit2.Value := DM1.tTabPrecoPrecoMObra.AsFloat;
          end;
        end;
      end;
      if CurrencyEdit2.Value <= 0 then
        CurrencyEdit2.Value := DM1.tProdutoVlrVenda.AsFloat;
      CurrencyEdit1.Clear;
      RxDBLookupCombo15.Value := DM1.tProdutoUnidade.AsString;
    end;
  end;
  if fPedido.BitBtn14.Tag = 1 then
    Monta_SQLCombinacao;
end;

procedure TfPedidoItem.CurrencyEdit3Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if CurrencyEdit3.AsInteger > 0 then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := CurrencyEdit3.AsInteger;
      if DM1.tProduto.GotoKey then
        begin
          RzDBLookupComboBox1.KeyValue := DM1.tProdutoCodigo.AsInteger;
          RxDBLookupCombo10.KeyValue   := DM1.tProdutoCodigo.AsInteger;
        end
      else
        begin
          ShowMessage('Produto não cadastrado!');
          CurrencyEdit3.SetFocus;
          CurrencyEdit3.Clear;
          RxDBLookupCombo10.ClearValue;
          RzDBLookupComboBox1.ClearKeyValue;
        end;
    end;
end;

procedure TfPedidoItem.CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    begin
      if CurrencyEdit3.AsInteger > 0 then
        RxDBLookupCombo10.SetFocus
      else
        RzDBLookupComboBox1.SetFocus;
    end;
end;

procedure TfPedidoItem.RxDBLookupCombo10Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Nome';
end;

procedure TfPedidoItem.BitBtn12Click(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    begin
      if DM1.tProdutoLancaGrade.AsBoolean then
        begin
          fPedidoGrade := TfPedidoGrade.Create(Self);
          fPedidoGrade.ShowModal;
        end
      else
        ShowMessage('Produto não possui grade!');
    end;
end;

procedure TfPedidoItem.RxDBLookupCombo12Enter(Sender: TObject);
begin
  DM1.tSitTributaria.IndexFieldNames := 'CodSit;SitTributaria';
end;

procedure TfPedidoItem.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if (RxDBLookupCombo3.Text <> '') and (RxDBLookupCombo10.Text <> '') and (DM1.tPedidoTipo.AsString <> 'E')  then
  begin
    if DM1.tProdutoProdMat.AsString = 'M' then
      CurrencyEdit2.Value := DM1.tProdutoPrecoCusto.AsFloat
    else
    if DM1.tPedidoTipo.AsString <> 'A' then
    begin
      DM1.tTabPreco.SetKey;
      DM1.tTabPrecoCodCliente.AsInteger := DM1.tPedidoCodCliente.AsInteger;
      DM1.tTabPrecoCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
      DM1.tTabPrecoCodCor.AsInteger     := RxDBLookupCombo3.KeyValue;
      if DM1.tTabPreco.GotoKey then
      begin
        if ((fPedido.BitBtn14.Tag <> 1) or (RxDBLookupCombo3.KeyValue <> vCodCor)) then
        begin
          if DM1.tNatOperacaoMaoObra.AsBoolean then
          begin
            if DM1.tTabPrecoPrecoMObra.AsFloat > 0 then
              CurrencyEdit2.Value := DM1.tTabPrecoPrecoMObra.AsFloat
            else
              CurrencyEdit2.Value := DM1.tTabPrecoPreco.AsFloat;
          end
          else
          begin
            if DM1.tTabPrecoPreco.AsFloat > 0 then
              CurrencyEdit2.Value := DM1.tTabPrecoPreco.AsFloat
            else
              CurrencyEdit2.Value := DM1.tTabPrecoPrecoMObra.AsFloat;
          end;
        end;
      end;
      if CurrencyEdit2.Value = 0 then
      begin
        if (DM1.tProdutoLancaCor.AsBoolean) and (DM1.tProdutoPrecoCor.AsBoolean) then
          CurrencyEdit2.Value := DM1.tProdutoCorVlrVenda.AsFloat
        else
          CurrencyEdit2.Value := DM1.tProdutoVlrVenda.AsFloat;
      end;
    end;
  end;
end;

procedure TfPedidoItem.Edit5Exit(Sender: TObject);
var
 i : Integer;
begin
  i := 0;
  while i <= Length(Edit5.Text) do
    begin
      inc(i);
      if Copy(Edit5.Text,i,1) = ' ' then
        begin
          ShowMessage('O campo não pode conter espaços entre os caracteres');
          Edit5.SetFocus;
          Edit5.Clear;
          i := Length(Edit5.Text) + 1;
        end;
    end;
end;

procedure TfPedidoItem.FormCreate(Sender: TObject);
begin
  if vItemPedAux > 0 then
    BitBtn12.Enabled := False;
end;

procedure TfPedidoItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  RxDBFilter2.Active := False;
  SpeedButton7Click(Sender);
  qCorRef.Close;
  qCombinacao.Close;
  Action := Cafree;
end;

procedure TfPedidoItem.SpeedButton9Click(Sender: TObject);
begin
  if DM1.tUsuarioProduto.AsBoolean then
  begin
    RxDBFilter2.Active := False;
    RxDBFilter1.Active := False;
    RxDBFilter2.Active := True;
    RxDBFilter1.Active := True;

    fProduto := TfProduto.Create(Self);
    fProduto.ShowModal;

    DM1.tProduto.Refresh;
    DM1.tProdutoCor.Refresh;
    DM1.tProdutoMat.Refresh;
    if (RxDBLookupCombo10.Text <> '') and (fPedido.BitBtn14.Tag <> 1) then
    begin
      DM1.tProduto.Locate('Codigo',RxDBLookupCombo10.KeyValue,[loCaseInsensitive]);
      qCorRef.Active              := False;
      qCorRef.Params[0].AsInteger := DM1.tProdutoCodigo.AsInteger;
      qCorRef.Active              := True;
    end;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfPedidoItem.FormShow(Sender: TObject);
var
  vAux : Integer;
  i : Integer;
begin
  if DM1.tParametrosTipoComissao.AsString = 'G' then
    begin
      CurrencyEdit4.ReadOnly := True;
      CurrencyEdit6.ReadOnly := True;
    end
  else
    begin
      CurrencyEdit4.ReadOnly := False;
      CurrencyEdit6.ReadOnly := False;
    end;
  RxDBFilter2.Active := True;
  RxDBFilter1.Active := True;
  DM1.tCliente.Locate('Codigo',DM1.tPedidoCodCliente.AsInteger,[loCaseInsensitive]);

  vCodFornecedor := 0;
  if CurrencyEdit3.AsInteger > 0 then
    DM1.tProduto.Locate('Codigo',DM1.tPedidoItemCodProduto.AsInteger,[loCaseInsensitive]);
  vCodProduto := CurrencyEdit3.AsInteger;
  CheckBox1.Visible := DM1.tParametrosMetalurgica.AsBoolean;

  StaticText5.Visible  := (DM1.tParametrosTipoDtEntrega.AsString = 'I');
  DateEdit1.Visible    := (DM1.tParametrosTipoDtEntrega.AsString = 'I');
  StaticText11.Visible := (DM1.tParametrosTipoDtEntrega.AsString = 'I');
  DateEdit2.Visible    := (DM1.tParametrosTipoDtEntrega.AsString = 'I');

  vAux := 4;
  if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
    vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  CurrencyEdit2.DecimalPlaces := vAux;
  CurrencyEdit2.DisplayFormat := '0.';
  for i := 1 to vAux do
    CurrencyEdit2.DisplayFormat := CurrencyEdit2.DisplayFormat + '0'; 
end;

procedure TfPedidoItem.SpeedButton10Click(Sender: TObject);
begin
  if DM1.tUsuarioSitTrib.AsBoolean then
    begin
      fSitTributaria := TfSitTributaria.Create(Self);
      fSitTributaria.ShowModal;
      DM1.tSitTributaria.Refresh;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfPedidoItem.BitBtn6Click(Sender: TObject);
var
  vQtdAux : Real;
  vAux : Currency;
  vItemAux : Integer;
begin
  if RxDBLookupCombo15.Value = '' then
  begin
    ShowMessage('Falta informar a unidade!');
    exit;
  end;
  if Trim(RxDBLookupCombo10.Text) = '' then
  begin
    ShowMessage('Falta informar o produto!');
    exit;
  end;
  if CurrencyEdit1.Value <= 0 then
  begin
    ShowMessage('Falta informar a quantidade!');
    exit;
  end;
  if (DM1.tParametrosTipoDtEntrega.AsString = 'I') and (DateEdit1.Date < 10) then
  begin
    ShowMessage('Falta informar a data de embarque!');
    exit;
  end;
  if DM1.tParametrosTipoDtEntrega.AsString = 'P' then
  begin
    DateEdit1.Date := DM1.tPedidoDtEmbarque.AsDateTime;
    DateEdit2.Date := DM1.tPedidoDtProducao.AsDateTime;
  end;

  DM1.tProduto.IndexFieldNames := 'Codigo';
  if not DM1.tProduto.FindKey([RxDBLookupCombo10.KeyValue]) then
  begin
    ShowMessage('Produto não encontrado!');
    exit;
  end;
  if (DM1.tProdutoLancaCor.AsBoolean) and (RxDBLookupCombo3.Text = '') then
  begin
    ShowMessage('Este produto é obrigatório informar a cor!');
    exit;
  end;
  if (CurrencyEdit2.Value <= 0) and (DM1.tPedidoTipo.AsString <> 'E') then
  begin
    ShowMessage('Falta informar o preço!');
    exit;
  end;
  if (CurrencyEdit2.Value = 0) and (RxDBLookupCombo3.Text <> '') and (DM1.tPedidoTipo.AsString <> 'E') then
    RxDBLookupCombo3Exit(Sender);

  fPedido.tAuxPedidoGrade.First;
  if (DM1.tProdutoLancaGrade.AsBoolean) and (fPedido.BitBtn14.Tag = 0) and (DM1.tPedidoImpTamPorItem.AsBoolean) then
  begin
    DM1.tPedidoItem.Refresh;
    DM1.tPedidoItem.Last;
    Grava_Itens;
    SpeedButton7Click(Sender);
    CurrencyEdit3.SetFocus;
  end
  else
  begin
    vQtdAux := CurrencyEdit1.Value;
    if vItemPedAux = 0 then
    begin
      DM1.tPedidoItem.Refresh;
      DM1.tPedidoItem.Last;
      vItemPedAux := DM1.tPedidoItemItem.AsInteger + 1;
      DM1.tPedidoItem.Insert;
      DM1.tPedidoItemPedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
      DM1.tPedidoItemItem.AsInteger       := vItemPedAux;
    end
    else
    begin
      DM1.tPedidoItem.Locate('Item',vItemPedAux,[loCaseInsensitive]);
      DM1.tPedidoItem.Edit;
      if DM1.tPedidoItemReposicao.AsBoolean then
      begin
        DM1.tPedidoQtdParesRep.AsFloat  := DM1.tPedidoQtdParesRep.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
        DM1.tPedidoVlrReposicao.AsFloat := DM1.tPedidoVlrReposicao.AsFloat - DM1.tPedidoItemVlrTotal.AsFloat;
      end
      else
      begin
        DM1.tPedidoQtdPares.AsFloat      := DM1.tPedidoQtdPares.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
        DM1.tPedidoQtdParesRest.AsFloat  := DM1.tPedidoQtdParesRest.AsFloat - DM1.tPedidoItemQtdPares.AsFloat;
        DM1.tPedidoPesoBruto.AsFloat     := DM1.tPedidoPesoBruto.AsFloat - (DM1.tPedidoItemlkPesoBruto.AsFloat *
                                            vQtdAux);
        DM1.tPedidoPesoLiquido.AsFloat   := DM1.tPedidoPesoLiquido.AsFloat - (DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                            vQtdAux);

        vAux   := StrToCurr(FormatFloat('0.0000',DM1.tPedidoItemPreco.AsCurrency)) * vQtdAux;
        DM1.tPedidoVlrMercadoria.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - vAux));
        DM1.tPedidoVlrTotal.AsCurrency   := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrTotal.AsCurrency - DM1.tPedidoItemVlrTotal.AsCurrency));
        if DM1.tPedidoDesconto.RecordCount > 0 then
          DM1.tPedidoVlrDesconto.AsCurrency := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - DM1.tPedidoVlrTotal.AsCurrency))
        else
          DM1.tPedidoVlrDesconto.AsCurrency := 0;
      end;
      DM1.tPedidoGrade.First;
      while not DM1.tPedidoGrade.Eof do
        DM1.tPedidoGrade.Delete;
      DM1.tPedidoMaterial.First;
      while not DM1.tPedidoMaterial.Eof do
      begin
        DM1.tPedidoConsumo.First;
        while not DM1.tPedidoConsumo.Eof do
          DM1.tPedidoConsumo.Delete;
        DM1.tPedidoMaterial.Delete;
      end;
    end;
    DM1.tPedidoItemCodProduto.AsInteger := DM1.tProdutoCodigo.AsInteger;
    if (DM1.tProdutoLancaGrade.AsBoolean) and not(DM1.tPedidoImpTamPorItem.AsBoolean) then
      DM1.tPedidoItemCodGrade.AsInteger := fPedido.tAuxPedidoGradeCodGrade.AsInteger
    else
      DM1.tPedidoItemCodGrade.AsInteger := 0;
    if DM1.tProdutoLancaCor.AsBoolean then
      DM1.tPedidoItemCodCor.AsInteger      := RxDBLookupCombo3.KeyValue
    else
      DM1.tPedidoItemCodCor.AsInteger      := 0;
    if RxDBLookupCombo12.Text <> '' then
      DM1.tPedidoItemSitTrib.AsInteger := RxDBLookupCombo12.KeyValue
    else
      DM1.tPedidoItemSitTrib.AsInteger := 0;
    DM1.tPedidoItemQtdPares.AsFloat      := CurrencyEdit1.Value;
    DM1.tPedidoItemReposicao.AsBoolean   := False;
    DM1.tPedidoItemQtdParesRest.AsFloat  := CurrencyEdit1.Value;
    DM1.tPedidoItemPreco.AsFloat         := CurrencyEdit2.Value;
    DM1.tPedidoItemReprogramacao.AsBoolean  := vReprogramacao;
    DM1.tPedidoItemFabrica.AsString         := Edit4.Text;
    DM1.tPedidoItemUnidade.AsString         := RxDBLookupCombo15.Value;
    DM1.tPedidoItemPercComissao.AsFloat     := CurrencyEdit4.Value;
    DM1.tPedidoItemObsTalao.AsString        := Edit2.Text;
    if DateEdit1.Date > 1 then
      DM1.tPedidoItemDtEmbarque.AsDateTime := DateEdit1.Date;
    if fPedido.BitBtn14.Tag = 1 then
    begin
      if vDtReprogramacao = vDtEmbarque then
        DM1.tPedidoItemDtReprogramacao.AsDateTime := DateEdit1.Date
      else
        DM1.tPedidoItemDtReprogramacao.AsDateTime := vDtReprogramacao;
    end
    else
      DM1.tPedidoItemDtReprogramacao.AsDateTime := DateEdit1.Date;
    if DM1.tPedidoItemDtEmbarque.AsDateTime > DM1.tPedidoItemDtReprogramacao.AsDateTime then
      DM1.tPedidoItemDtReprogramacao.AsDateTime := DM1.tPedidoItemDtEmbarque.AsDateTime;

    DM1.tPedidoItemNumOS.AsString        := Edit5.Text;
    DM1.tPedidoItemPlano.AsString        := Edit6.Text;

    if DM1.tPedidoItemReposicao.AsBoolean then
      DM1.tPedidoQtdParesRep.AsFloat := DM1.tPedidoQtdParesRep.AsFloat + CurrencyEdit1.Value
    else
    begin
      DM1.tPedidoQtdPares.AsFloat          := DM1.tPedidoQtdPares.AsFloat + CurrencyEdit1.Value;
      DM1.tPedidoQtdParesRest.AsFloat      := DM1.tPedidoQtdParesRest.AsFloat + CurrencyEdit1.Value;
      DM1.tPedidoPesoBruto.AsFloat         := DM1.tPedidoPesoBruto.AsFloat + DM1.tPedidoItemlkPesoBruto.AsFloat *
                                              vQtdAux;
      DM1.tPedidoPesoLiquido.AsFloat       := DM1.tPedidoPesoLiquido.AsFloat + DM1.tPedidoItemlkPesoLiquido.AsFloat *
                                              vQtdAux;
    end;
    fPedido.Calc_Desc_Item;
    //Identifica se o item do pedido é <P> Vai ser produzido pela empresa  <V> a empresa não produz vende direta
    if DM1.tProdutoProdMat.AsString = 'M' then
    begin
      DM1.tPedidoItemProducaoVenda.AsString := 'V';
      DM1.tPedidoItemMateriaPrima.AsBoolean := True;
    end
    else
    begin
      DM1.tPedidoItemMateriaPrima.AsBoolean := False;
      case RadioGroup3.ItemIndex of
        0 : DM1.tPedidoItemProducaoVenda.AsString := 'P';
        1 : DM1.tPedidoItemProducaoVenda.AsString := 'V';
      end;
    end;
    vAux   := StrToCurr(FormatFloat('0.0000',DM1.tPedidoItemPreco.AsCurrency)) * vQtdAux;
    DM1.tPedidoVlrMercadoria.AsCurrency  := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency + vAux));
    if DM1.tPedidoDesconto.RecordCount > 0 then
      DM1.tPedidoVlrDesconto.AsCurrency := StrToCurr(FormatFloat('0.00',DM1.tPedidoVlrMercadoria.AsCurrency - DM1.tPedidoVlrTotal.AsCurrency))
    else
      DM1.tPedidoVlrDesconto.AsCurrency := 0;
    DM1.tPedidoItemCodCombinacao.AsInteger := 1;
    if DateEdit2.Date > 0 then
      DM1.tPedidoItemDtProducao.AsDateTime := DateEdit2.Date
    else
      DM1.tPedidoItemDtProducao.AsDateTime := DateEdit1.Date;
    DM1.tPedidoItemGerarTalao.AsBoolean    := CheckBox1.Checked;
    DM1.tPedidoItem.Post;
    // grava a grade nos itens
    if (DM1.tProdutoLancaGrade.AsBoolean) and not(DM1.tPedidoImpTamPorItem.AsBoolean) then
    begin
      fPedido.tAuxPedidoGrade.First;
      while not fPedido.tAuxPedidoGrade.Eof do
      begin
        DM1.tPedidoGrade.Insert;
        DM1.tPedidoGradePedido.AsInteger     := DM1.tPedidoPedido.AsInteger;
        DM1.tPedidoGradeItemPed.AsInteger    := DM1.tPedidoItemItem.AsInteger;
        DM1.tPedidoGradeCodGrade.AsInteger   := fPedido.tAuxPedidoGradeCodGrade.AsInteger;
        DM1.tPedidoGradePosicao.AsInteger    := fPedido.tAuxPedidoGradePosicao.AsInteger;
        DM1.tPedidoGradeQtd.AsFloat          := fPedido.tAuxPedidoGradeQtd.asFloat;
        DM1.tPedidoGradeQtdParesRest.AsFloat := fPedido.tAuxPedidoGradeQtd.asFloat;
        DM1.tPedidoGradeVlrUnitario.AsFloat  := fPedido.tAuxPedidoGradeVlrUnitario.asFloat;
        DM1.tPedidoGradeVlrTotal.AsCurrency  := fPedido.tAuxPedidoGradeQtd.AsFloat * fPedido.tAuxPedidoGradeVlrUnitario.AsCurrency;
        DM1.tPedidoGrade.Post;
        fPedido.tAuxPedidoGrade.Next;
      end;
      fPedido.tAuxPedidoGrade.First;
      while not fPedido.tAuxPedidoGrade.Eof do
        fPedido.tAuxPedidoGrade.Delete;
    end;
    // Grava os materiais da referência
    if fPedido.BitBtn14.Tag = 1 then
    begin
      fPedido.tAuxPedidoMat.Refresh;
      fPedido.tAuxPedidoMat.First;
      while not fPedido.tAuxPedidoMat.EOF do
      begin
        DM1.tPedidoMaterial.Refresh;
        DM1.tPedidoMaterial.Last;
        vItemAux := DM1.tPedidoMaterialOrdem.AsInteger;
        DM1.tPedidoMaterial.Insert;
        DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
        DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
        DM1.tPedidoMaterialOrdem.AsInteger       := vItemAux + 1;
        DM1.tPedidoMaterialCodCor.AsInteger      := fPedido.tAuxPedidoMatCodCor.AsInteger;
        DM1.tPedidoMaterialCodMaterial.AsInteger := fPedido.tAuxPedidoMatCodMaterial.AsInteger;
        DM1.tPedidoMaterialConsumoPr.AsFloat     := fPedido.tAuxPedidoMatConsumoPr.AsFloat;
        DM1.tPedidoMaterialImpTalao.AsString     := fPedido.tAuxPedidoMatImpTalao.AsString;
        DM1.tPedidoMaterialTipoConsumo.AsString  := fPedido.tAuxPedidoMatTipoConsumo.AsString;
        if fPedido.tAuxPedidoMatTipoConsumo.AsString = 'T' then
        begin
          fPedido.tAuxPedMatCons.First;
          while not fPedido.tAuxPedMatCons.Eof do
          begin
            DM1.tPedidoConsumo.Insert;
            DM1.tPedidoConsumoPedido.AsInteger    := DM1.tPedidoPedido.AsInteger;
            DM1.tPedidoConsumoItemPed.AsInteger   := DM1.tPedidoItemItem.AsInteger;
            DM1.tPedidoConsumoOrdem.AsInteger     := DM1.tPedidoMaterialOrdem.AsInteger;
            DM1.tPedidoConsumoCodGrade.AsInteger  := DM1.tPedidoItemCodGrade.AsInteger;
            DM1.tPedidoConsumoPosicao.AsInteger   := fPedido.tAuxPedMatConsPosicao.AsInteger;
            DM1.tPedidoConsumoConsumo.AsFloat     := fPedido.tAuxPedMatConsConsumo.AsFloat;
            DM1.tPedidoConsumoTamanhoMat.AsString := fPedido.tAuxPedMatConsTamanhoMat.AsString;
            DM1.tPedidoConsumo.Post;
            fPedido.tAuxPedMatCons.Next;
          end;
        end;
        DM1.tPedidoMaterial.Post;
        fPedido.tAuxPedidoMat.Next;
      end;
    end
    else
    begin
      if DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemCodCombinacao.AsInteger]),[locaseinsensitive]) then
      begin
        DM1.tProdutoMat.First;
        while not DM1.tProdutoMat.EOF do
        begin
          DM1.tPedidoMaterial.Refresh;
          DM1.tPedidoMaterial.Last;
          vItemAux := DM1.tPedidoMaterialOrdem.AsInteger;

          DM1.tPedidoMaterial.Insert;
          DM1.tPedidoMaterialPedido.AsInteger      := DM1.tPedidoPedido.AsInteger;
          DM1.tPedidoMaterialItemPed.AsInteger     := DM1.tPedidoItemItem.AsInteger;
          DM1.tPedidoMaterialOrdem.AsInteger       := vItemAux + 1;
          DM1.tPedidoMaterialCodCor.AsInteger      := DM1.tProdutoMatCodCor.AsInteger;
          DM1.tPedidoMaterialCodMaterial.AsInteger := DM1.tProdutoMatCodMaterial.AsInteger;
          DM1.tPedidoMaterialConsumoPr.AsFloat     := DM1.tProdutoMatQtd.AsFloat;
          DM1.tPedidoMaterialImpTalao.AsString     := DM1.tProdutoMatImpTalao.AsString;
          DM1.tPedidoMaterialTipoConsumo.AsString  := DM1.tProdutoMatConsumo.AsString;
          if DM1.tProdutoMatConsumo.AsString = 'T' then
          begin
            DM1.tProdutoConsumo.SetKey;
            DM1.tProdutoConsumoCodProduto.AsInteger    := DM1.tProdutoMatCodProduto.AsInteger;
            DM1.tProdutoConsumoCodCorProduto.AsInteger := DM1.tProdutoMatCodCorProd.AsInteger;
            DM1.tProdutoConsumoItemMaterial.AsInteger  := DM1.tProdutoMatItem.AsInteger;
            DM1.tProdutoConsumoCodGrade.AsInteger      := DM1.tPedidoItemCodGrade.AsInteger;
            if DM1.tProdutoConsumo.GotoKey then
            begin
              DM1.tProdutoConsumoItem.First;
              while not DM1.tProdutoConsumoItem.Eof do
              begin
                DM1.tPedidoConsumo.Insert;
                DM1.tPedidoConsumoPedido.AsInteger    := DM1.tPedidoPedido.AsInteger;
                DM1.tPedidoConsumoItemPed.AsInteger   := DM1.tPedidoItemItem.AsInteger;
                DM1.tPedidoConsumoOrdem.AsInteger     := DM1.tPedidoMaterialOrdem.AsInteger;
                DM1.tPedidoConsumoCodGrade.AsInteger  := DM1.tProdutoConsumoItemCodGrade.AsInteger;
                DM1.tPedidoConsumoPosicao.AsInteger   := DM1.tProdutoConsumoItemPosicao.AsInteger;
                DM1.tPedidoConsumoConsumo.AsFloat     := DM1.tProdutoConsumoItemConsumo.AsFloat;
                DM1.tPedidoConsumoTamanhoMat.AsString := DM1.tProdutoConsumoItemTamanhoMat.AsString;
                DM1.tPedidoConsumo.Post;
                DM1.tProdutoConsumoItem.Next;
              end;
            end;
          end;
          DM1.tPedidoMaterial.Post;
          DM1.tProdutoMat.Next
        end;
      end;
    end;
    CurrencyEdit1.Value := 0;
    CurrencyEdit2.Value := 0;
    CurrencyEdit3.Value := 0;
    vDtEmbarque         := 0;
    vDtReprogramacao    := 0;
    vReprogramacao      := False;
    RxDBLookupCombo10.ClearValue;
    RxDBLookupCombo3.ClearValue;
    RxDBLookupCombo12.ClearValue;
    RzDBLookupComboBox1.ClearKeyValue;
    Edit5.Clear;
    Edit6.Clear;
    CurrencyEdit3.SetFocus;
    vItemPedAux := 0;
    SpeedButton7Click(Sender);
  end;

  if fPedido.BitBtn14.Tag = 1 then
  begin
    fPedido.BitBtn14.Tag := 0;
    Close;
  end;
end;

procedure TfPedidoItem.SpeedButton7Click(Sender: TObject);
begin
  vItemPedAux      := 0;
  vReprogramacao   := False;
  vDtEmbarque      := 0;
  vDtReprogramacao := 0;
  RxDBLookupCombo3.ClearValue;
  RxDBLookupCombo10.ClearValue;
  RxDBLookupCombo12.ClearValue;
  RzDBLookupComboBox1.ClearKeyValue;
  Edit5.Clear;
  Edit6.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit1.ReadOnly := True;
  fPedido.tAuxPedidoGrade.First;
  while not fPedido.tAuxPedidoGrade.Eof do
    fPedido.tAuxPedidoGrade.Delete;
  fPedido.tAuxPedidoMat.First;
  while not fPedido.tAuxPedidoMat.EOF do
    begin
      fPedido.tAuxPedMatCons.First;
      while not fPedido.tAuxPedMatCons.Eof do
        fPedido.tAuxPedMatCons.Delete;
      fPedido.tAuxPedidoMat.Delete;
    end;
  vSenhaAlt := '';
end;

procedure TfPedidoItem.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPedidoItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F10 then
    Close;
end;

procedure TfPedidoItem.BitBtn8Click(Sender: TObject);
begin
  fTabPreco := TfTabPreco.Create(Self);
  fTabPreco.ShowModal;
end;

procedure TfPedidoItem.Panel2Exit(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Codigo';
  if RxDBLookupCombo10.Text <> '' then
    begin
      DM1.tProduto.SetKey;
      DM1.tProdutoCodigo.AsInteger := RxDBLookupCombo10.KeyValue;
      if DM1.tProduto.GotoKey then
        Move_Itens
      else
        begin
          ShowMessage('Produto não cadastrado!');
          CurrencyEdit3.SetFocus;
        end;
    end;
end;

procedure TfPedidoItem.RxDBLookupCombo10Change(Sender: TObject);
begin
  if RxDBLookupCombo10.Text <> '' then
    begin
      RzDBLookupComboBox1.KeyValue := RxDBLookupCombo10.KeyValue;
      CurrencyEdit3.AsInteger      := RxDBLookupCombo10.KeyValue;
    end
  else
    begin
      RzDBLookupComboBox1.ClearKeyValue;
      CurrencyEdit3.Clear;
    end;
end;

procedure TfPedidoItem.CurrencyEdit2Enter(Sender: TObject);
begin
  if not DM1.tParametrosPedidoControlarAltPreco.AsBoolean then
    CurrencyEdit2.ReadOnly := False
  else
  if DM1.tParametrosPedidoControlarAltPreco.AsBoolean then
  begin
    if (CurrencyEdit2.Value = 0) or (vSenhaAlt = DM1.tParametrosSenhaAlt.AsString) then
      CurrencyEdit2.ReadOnly := False
    else
      CurrencyEdit2.ReadOnly := True;
  end;
end;

procedure TfPedidoItem.BitBtn2Click(Sender: TObject);
begin
  if CurrencyEdit2.Value > 0 then
  begin
    fSenhaAlt := TfSenhaAlt.Create(Self);
    fSenhaAlt.ShowModal;
    if (vSenhaAlt = '') or (vSenhaAlt <> DM1.tParametrosSenhaAlt.AsString) then
      ShowMessage('Senha inválida!');
  end;
  CurrencyEdit2.SetFocus;
end;

procedure TfPedidoItem.CurrencyEdit2Exit(Sender: TObject);
begin
  vSenhaAlt := '';
end;

procedure TfPedidoItem.RxDBLookupCombo3Enter(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
    vCodCor := RxDBLookupCombo3.KeyValue
  else
    vCodCor := 0;
end;

procedure TfPedidoItem.RzDBLookupComboBox1Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
  RzDBLookupComboBox1.DropDown;
end;

procedure TfPedidoItem.RzDBLookupComboBox1Exit(Sender: TObject);
begin
  if RzDBLookupComboBox1.Text <> '' then
    begin
      RxDBLookupCombo10.KeyValue := RzDBLookupComboBox1.KeyValue;
      CurrencyEdit3.AsInteger    := RzDBLookupComboBox1.KeyValue;
    end
  else
    begin
      RxDBLookupCombo10.ClearValue;
      CurrencyEdit3.Clear;
    end;
end;

end.

