unit uRelPedido3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, DB, DBTables, RLBarcode, jpeg;

type
  TfRelPedido3 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    rlVendedor: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    rldbVendedor: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel26: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText31: TRLDBText;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    Tam1: TRLLabel;
    Tam2: TRLLabel;
    Tam3: TRLLabel;
    Tam4: TRLLabel;
    Tam5: TRLLabel;
    Tam6: TRLLabel;
    Tam8: TRLLabel;
    Tam7: TRLLabel;
    Tam9: TRLLabel;
    Tam14: TRLLabel;
    Tam10: TRLLabel;
    Tam13: TRLLabel;
    Tam12: TRLLabel;
    Tam11: TRLLabel;
    Par1: TRLLabel;
    Par2: TRLLabel;
    Par11: TRLLabel;
    Par10: TRLLabel;
    Par9: TRLLabel;
    Par8: TRLLabel;
    Par7: TRLLabel;
    Par6: TRLLabel;
    Par5: TRLLabel;
    Par4: TRLLabel;
    Par3: TRLLabel;
    Par14: TRLLabel;
    Par13: TRLLabel;
    Par12: TRLLabel;
    RLBand7: TRLBand;
    RLDraw7: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel40: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText27: TRLDBText;
    rlNomeEmpresa: TRLLabel;
    rlCidadeCli: TRLLabel;
    RLLabel14: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw8: TRLDraw;
    rlTipoFrete: TRLLabel;
    RLLabel16: TRLLabel;
    rlMarca: TRLLabel;
    rlPreco: TRLLabel;
    rlVlrTotal: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel18: TRLLabel;
    rlEmailNFe: TRLLabel;
    RLLabel28: TRLLabel;
    rlFornecedor: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    rlEndereco: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    rlNomeEntrega: TRLLabel;
    rlEndEntrega: TRLLabel;
    rlBaiEntrega: TRLLabel;
    rlCidEntrega: TRLLabel;
    rlFoneEntrega: TRLLabel;
    rlCepEntrega: TRLLabel;
    rlUFEntrega: TRLLabel;
    rlCNPJEntrega: TRLLabel;
    rlInscEntrega: TRLLabel;
    RLLabel50: TRLLabel;
    RLBand5: TRLBand;
    RLLabel56: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    rlComplemento: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel61: TRLLabel;
    rlComplementoEnt: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPedido3: TfRelPedido3;

implementation

uses UDM1, UPedido;

{$R *.dfm}

procedure TfRelPedido3.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fPedido.RadioGroup3.ItemIndex = 0 then
    RLDBText22.DataField  := 'QtdPares'
  else
    RLDBText22.DataField  := 'QtdParesRest';
end;

procedure TfRelPedido3.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndereco.Caption := DM1.tClienteEndereco.AsString;
  if DM1.tClienteNumEnd.AsString <> '' then
    rlEndereco.Caption := rlEndereco.Caption + ', ' + DM1.tClienteNumEnd.AsString;
  rlComplemento.Caption := DM1.tClienteComplEndereco.AsString;

  rlNomeEntrega.Visible    := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlEndEntrega.Visible     := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlBaiEntrega.Visible     := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlCidEntrega.Visible     := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlFoneEntrega.Visible    := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlCepEntrega.Visible     := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlUFEntrega.Visible      := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlCNPJEntrega.Visible    := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlInscEntrega.Visible    := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  rlComplementoEnt.Visible := (Trim(DM1.tClienteEndEntrega.AsString) <> '');
  if Trim(DM1.tClienteEndEntrega.AsString) <> '' then
  begin
    rlNomeEntrega.Caption  := DM1.tClienteNomeEntrega.AsString;
    rlEndEntrega.Caption   := DM1.tClienteEndEntrega.AsString;
    if DM1.tClienteNumEndEntrega.AsString <> '' then
      rlEndEntrega.Caption := rlEndEntrega.Caption + ', ' + DM1.tClienteNumEndEntrega.AsString;
    rlBaiEntrega.Caption   := DM1.tClienteBairroEntrega.AsString;
    if DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidadeE.AsInteger,[loCaseInsensitive]) then
      rlCidEntrega.Caption := DM1.tCidadeNome.AsString;
    rlFoneEntrega.Caption    := DM1.tClienteFoneEntrega.AsString;
    rlCepEntrega.Caption     := DM1.tClienteCepEntrega.AsString;
    rlUFEntrega.Caption      := DM1.tClienteUfEntrega.AsString;
    rlCNPJEntrega.Caption    := DM1.tClienteCgcCpfEntrega.AsString;
    rlInscEntrega.Caption    := DM1.tClienteInscEntrega.AsString;
    rlComplementoEnt.Caption := DM1.tClienteComplEnderecoEntrega.AsString;
  end;

  RLLabel35.Caption := 'Pr.Unitário';
  RLLabel34.Caption := 'Pr.Total';
  if (fPedido.RadioGroup2.ItemIndex = 0) and (fpedido.ckVlrFabrica.Checked) then
  begin
    RLLabel35.Caption := RLLabel35.Caption + ' FB';
    RLLabel34.Caption := RLLabel34.Caption + ' FB';
  end;
  if DM1.tPedidoSituacao.AsInteger = 1 then
    RLLabel9.Caption := 'Normal'
  else if DM1.tPedidoSituacao.AsInteger = 2 then
    RLLabel9.Caption := 'C 200'
  else if DM1.tPedidoSituacao.AsInteger = 3 then
    RLLabel9.Caption := 'C 400';

  if FileExists(DM1.tFilialEndLogo.AsString) then
    RLImage1.Picture.LoadFromFile(DM1.tFilialEndLogo.AsString)
  else
     RLImage1.Picture := nil;
  RLLabel36.Visible := ((fPedido.ckDtEntrega.Checked) and (DM1.tParametrosTipoDtEntrega.AsString = 'I'));
  RLLabel59.Visible := ((fPedido.ckDtEntrega.Checked) and (DM1.tParametrosTipoDtEntrega.AsString = 'P'));
  RLLabel60.Visible := ((fPedido.ckDtEntrega.Checked) and (DM1.tParametrosTipoDtEntrega.AsString = 'P'));
  RLLabel60.Caption := DM1.tPedidoDtEmbarque.AsString;
  if DM1.tParametrosImpDtFabricaNaDesc.AsBoolean then
    RLLabel57.Caption := 'Dt.Fábrica:'
  else
    RLLabel57.Caption := 'Dt.Embarque:';
  RLLabel17.Caption := RLLabel57.Caption;
  RLLabel57.Visible := (DM1.tParametrosTipoDtEntrega.AsString = 'P');
  RLLabel58.Caption := DM1.tPedidoDtProducao.AsString;
  RLLabel58.Visible := (DM1.tParametrosTipoDtEntrega.AsString = 'P');
  RLLabel17.Visible := (DM1.tParametrosTipoDtEntrega.AsString = 'I');

  rlNomeEmpresa.Caption := '';
  if DM1.tFilial2.Locate('Codigo',DM1.tPedidoFilial.AsInteger,[loCaseInsensitive]) then
    rlNomeEmpresa.Caption := DM1.tFilial2Empresa.AsString;

  rlCidadeCli.Caption := '';
  rlEmailNFe.Caption  := '';
  if DM1.tCidade.Locate('Codigo',DM1.tClienteCodCidade.AsInteger,[loCaseInsensitive]) then
    rlCidadeCli.Caption := DM1.tCidadeNome.AsString;
  rlEmailNFe.Caption  := DM1.tClienteEmailNFe.AsString;
  rlVendedor.Visible        := fPedido.ckVendedor.Checked;
  rldbVendedor.Visible      := fPedido.ckVendedor.Checked;

  RLLabel34.Visible := (fPedido.RadioGroup2.ItemIndex = 0);
  RLLabel35.Visible := (fPedido.RadioGroup2.ItemIndex = 0);
  if DM1.tPedidoTipoFrete.AsString = 'C' then
    rlTipoFrete.Caption := 'CIF'
  else
  if DM1.tPedidoTipoFrete.AsString = 'F' then
    rlTipoFrete.Caption := 'FOB';

  rlMarca.Caption := '';
  if DM1.tCliente.Locate('Codigo',DM1.tPedidoCodRepresentada.AsInteger,[loCaseInsensitive]) then
    rlMarca.Caption := DM1.tClienteNome.AsString;
  rlFornecedor.Caption := '';
  if DM1.tPedidoCodFabrica.AsInteger > 0 then
    if DM1.tCliente.Locate('Codigo',DM1.tPedidoCodFabrica.AsInteger,[loCaseInsensitive]) then
      rlFornecedor.Caption := DM1.tClienteNome.AsString;

end;

procedure TfRelPedido3.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
var posicao: integer;
begin
  if DM1.tPedidoGrade.RecordCount > 0 then
    begin
      PrintIt := True;
      for posicao := 1 to 14 do
        begin
          TRLLabel(FindComponent('Tam' + IntToStr(Posicao))).Visible := False;
          TRLLabel(FindComponent('Par' + IntToStr(Posicao))).Visible := False;
        end;
      DM1.tGrade.IndexFieldNames := 'Codigo';
      DM1.tGrade.FindKey([DM1.tPedidoItemCodGrade.AsInteger]);
      DM1.tPedidoGrade.First;
      Posicao := 0;
      while not DM1.tPedidoGrade.EOF do
        begin
          Inc(Posicao);
          if Posicao > 14 then
            begin
              ShowMessage('Imprime no máximo 20 tamanhos por item, favor verificar!');
              DM1.tPedidoGrade.Last;
            end
          else
            begin
              TRLLabel(FindComponent('Tam' + IntToStr(Posicao))).Visible := True;
              TRLLabel(FindComponent('Tam' + IntToStr(Posicao))).Caption := DM1.tPedidoGradelkTamanho.AsString;
              TRLLabel(FindComponent('Par' + IntToStr(Posicao))).Visible := True;
              TRLLabel(FindComponent('Par' + IntToStr(Posicao))).Caption := DM1.tPedidoGradeQtd.AsString;
            end;
          DM1.tPedidoGrade.Next;
        end;
    end
  else
    PrintIt := False;
end;

procedure TfRelPedido3.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
  vDesc: string;
begin
  vDesc := ' ';
  DM1.tPedidoDesconto.First;
  while not DM1.tPedidoDesconto.EOF do
  begin
    if vDesc = ' ' then
      begin
        vDesc := vDesc + DM1.tPedidoDescontoPercDesconto.AsString;
        DM1.tPedidoDesconto.Next;
      end
    else
      begin
        vDesc := vDesc + '+' + DM1.tPedidoDescontoPercDesconto.AsString;
        DM1.tPedidoDesconto.Next;
      end;
  end;
  RLLabel43.Caption  := vDesc;
  RLLabel40.Visible  := (fPedido.RadioGroup2.ItemIndex = 0);
  RLLabel44.Visible  := (fPedido.RadioGroup2.ItemIndex = 0);
  RLLabel42.Visible  := (fPedido.RadioGroup2.ItemIndex = 0);
  RLLabel43.Visible  := (fPedido.RadioGroup2.ItemIndex = 0);
  RLLabel45.Visible  := (fPedido.RadioGroup2.ItemIndex = 0);
  RLDBText34.Visible := (fPedido.RadioGroup2.ItemIndex = 0);
  RLDBText33.Visible := (fPedido.RadioGroup2.ItemIndex = 0);
  RLDBText32.Visible := (fPedido.RadioGroup2.ItemIndex = 0);
  if fPedido.ckVlrFabrica.Checked then
  begin
    RLDBText32.DataField := 'VlrMercadoriaFabrica';
    RLDBText34.DataField := 'VlrTotalFabrica';
  end;
end;

procedure TfRelPedido3.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := DM1.tPedidoObs.Value;
end;

procedure TfRelPedido3.RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if DM1.tPedidoGrade.RecordCount > 0 then
    RLDraw7.Enabled := False
  else
    RLDraw7.Enabled := True;
end;

procedure TfRelPedido3.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed : Real;
  vTexto : String;
  vAux, I : Integer;
begin
  case fPedido.RadioGroup3.ItemIndex of
    0 : vQtdPed := DM1.tPedidoItemQtdPares.AsFloat;
    1 : vQtdPed := DM1.tPedidoItemQtdParesRest.AsFloat;
  end;
  RLDBText21.Visible := ((fPedido.ckDtEntrega.Checked) and (DM1.tParametrosTipoDtEntrega.AsString = 'I'));
  RLDBText1.Visible  := (DM1.tParametrosTipoDtEntrega.AsString = 'I');

  RLLabel27.Visible  := (Trim(DM1.tPedidoItemTamanho.AsString) <> '');

  rlPreco.Visible    := (fPedido.RadioGroup2.ItemIndex = 0);
  rlVlrTotal.Visible := (fPedido.RadioGroup2.ItemIndex = 0);
  vAux := 4;
  if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
    vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  if fPedido.RadioGroup2.ItemIndex = 0 then
  begin
    if fPedido.ckVlrFabrica.Checked then
    begin
      rlPreco.Caption    := FormatFloat(vTexto,DM1.tPedidoItemPrecoFabrica.AsFloat);
      rlVlrTotal.Caption := FormatFloat(vTexto,DM1.tPedidoItemVlrTotalFabrica.AsFloat);
    end
    else
    begin
      rlPreco.Caption    := FormatFloat(vTexto,DM1.tPedidoItemPreco.AsFloat);
      rlVlrTotal.Caption := FormatFloat(vTexto,DM1.tPedidoItemVlrTotal.AsFloat);
    end;
  end;
  {if fPedido.RadioGroup2.ItemIndex = 0 then
  begin
    if fPedido.ckVlrFabrica.Checked then
    begin
      rlPreco.Caption    := FormatFloat('0.0000',DM1.tPedidoItemPrecoFabrica.AsFloat);
      rlVlrTotal.Caption := FormatFloat('0.0000',DM1.tPedidoItemVlrTotalFabrica.AsFloat);
    end
    else
    begin
      rlPreco.Caption    := FormatFloat('0.0000',DM1.tPedidoItemPreco.AsFloat);
      rlVlrTotal.Caption := FormatFloat('0.0000',DM1.tPedidoItemVlrTotal.AsFloat);
    end;
  end;}
end;

procedure TfRelPedido3.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObsMaterial : String;
begin
  PrintIt := True;
  vObsMaterial := '';
  RLMemo2.Lines.Clear;
  if not DM1.tParametrosImpMaterialPedido.AsBoolean then
    PrintIt := False;
  if not DM1.tProduto.FindKey([DM1.tPedidoItemCodProduto.AsInteger]) then
    PrintIt := False;
  if not DM1.tProdutoComb.Locate('CodCor;CodCombinacao',VarArrayOf([DM1.tPedidoItemCodCor.AsInteger,DM1.tPedidoItemCodCombinacao.AsInteger]),[locaseinsensitive]) then
    PrintIt := False;
  if not PrintIt then
    exit;
  DM1.tProdutoMat.First;
  while not DM1.tProdutoMat.Eof do
  begin
    if DM1.tProdutoMatlkCabedal.AsBoolean then
    begin
      if vObsMaterial <> '' then
        vObsMaterial := vObsMaterial + ',';
      vObsMaterial := vObsMaterial + DM1.tProdutoMatlkNomeMaterial.AsString;
      if Trim(DM1.tProdutoMatlkNomeCor.AsString) <> '' then
        vObsMaterial := vObsMaterial + DM1.tProdutoMatlkNomeCor.AsString;
    end;
    DM1.tProdutoMat.Next;
  end;
  RLMemo2.Lines.Text := vObsMaterial;
end;

end.
