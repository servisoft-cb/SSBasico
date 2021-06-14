unit UBaixaTalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, Grids, DBGrids, RXDBCtrl,
  RxLookup, DBFilter, Db, DBTables;

type
  TfBaixaTalao = class(TForm)
    StaticText1: TStaticText;
    GroupBox1: TGroupBox;
    RxDBGrid1: TRxDBGrid;
    RxDBFilter1: TRxDBFilter;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vNumTalao : Integer;

    procedure Grava_Estoque;
    procedure Baixa_Talao;
  public
    { Public declarations }
  end;

var
  fBaixaTalao: TfBaixaTalao;

implementation

uses UDM1, UDM2, uIntegracao;

{$R *.DFM}

procedure TfBaixaTalao.Baixa_Talao;
begin
  Label1.Visible := True;
  if Length(Edit1.Text) >= 10 then
    vNumTalao := StrToInt(Copy(Edit1.Text,2,11))
  else
    vNumTalao := StrToInt(Edit1.Text);
  if not DM1.tTalao.Locate('Talao',vNumTalao,[loCaseInsensitive]) then
    Label1.Caption := 'Talão ' + IntToStr(vNumTalao) +  ' inexistente!'
  else
  if (DM1.tTalaoDtBaixa.AsDateTime > 0) then
    Label1.Caption := 'Talão ' + IntToStr(vNumTalao) + ' baixado!'
  else
    begin
      DM1.tTalao.Edit;
      DM1.tTalaoProduzido.AsBoolean := True;
      DM1.tTalaoDtBaixa.AsDateTime  := Date;
      DM1.tTalaoHrBaixa.AsDateTime  := Time;
      DM1.tTalao.Post;
      DM1.tTalao.Refresh;
      //Grava_Estoque;
      Label1.Caption := 'Talão ' + IntToStr(vNumTalao) +  ' baixado';
    end;
  Edit1.Clear;
end;

procedure TfBaixaTalao.Grava_Estoque;
begin
  DM1.tEstoqueMatMov.Refresh;
  DM2.tEstoqueMatMov2.Refresh;
  DM2.tEstoqueMatMov2.Last;
  DM1.tEstoqueMatMov.Insert;
  DM1.tEstoqueMatMovNumMov.AsInteger      := DM2.tEstoqueMatMov2NumMov.AsInteger + 1;
  DM1.tEstoqueMatMovCodMaterial.AsInteger := DM1.tTalaoCodProduto.AsInteger;
  DM1.tEstoqueMatMovCodCor.AsInteger      := DM1.tTalaoCodCor.AsInteger;
  DM1.tEstoqueMatMovLargura.AsString      := '';
  DM1.tEstoqueMatMovDtMov.AsDateTime      := Date;
  DM1.tEstoqueMatMovES.AsString           := 'E';
  DM1.tEstoqueMatMovTipoMov.AsString      := 'TAL';
  DM1.tEstoqueMatMovNumNota.AsInteger     := DM1.tTalaoTalao.AsInteger;
  DM1.tEstoqueMatMovCodCliForn.AsInteger  := DM1.tTalaoCodCliente.AsInteger;
  DM1.tProduto.IndexFieldNames := 'Codigo';
  DM1.tProduto.SetKey;
  DM1.tProdutoCodigo.AsInteger := DM1.tTalaoCodProduto.AsInteger;
  if DM1.tProduto.GotoKey then
    begin
      DM1.tEstoqueMatMovVlrUnitario.AsFloat := DM1.tProdutoPrecoCusto.AsFloat;
      DM1.tEstoqueMatMovUnidade.AsString    := DM1.tProdutoUnidade.AsString;
      DM1.tEstoqueMatMovPercIcms.AsFloat    := DM1.tProdutoAliqIcms.AsFloat;
      DM1.tEstoqueMatMovPercIpi.AsFloat     := DM1.tProdutoAliqIPI.AsFloat;
    end
  else
    begin
      DM1.tEstoqueMatMovVlrUnitario.AsFloat := 0;
      DM1.tEstoqueMatMovPercIcms.AsFloat    := 0;
      DM1.tEstoqueMatMovPercIpi.AsFloat     := 0;
    end;
  DM1.tEstoqueMatMovQtd.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tTalaoQuantidade.AsFloat));
  if DM1.tEstoqueMatMovES.AsString = 'E' then
    DM1.tEstoqueMatMovQtd2.AsFloat := StrToFloat(FormatFloat('0.00000',DM1.tTalaoQuantidade.AsFloat))
  else
    DM1.tEstoqueMatMovQtd2.AsFloat      := StrToFloat(FormatFloat('0.00000',DM1.tTalaoQuantidade.AsFloat * -1));
  DM1.tEstoqueMatMovVlrDesconto.AsFloat := 0;
  DM1.tEstoqueMatMov.Post;
  //02/05/2012
  if DM1.tParametrosUsaFB.AsBoolean then
    Prc_Gravar_Estoque_Mov_FB(dm1.tEstoqueMatMovFilial.AsInteger,dm1.tEstoqueMatMovNumMov.AsInteger);
  DM1.tEstoqueMatMov.Refresh;

  DM1.tTalao.Post;
  DM1.tTalao.Refresh;
end;

procedure TfBaixaTalao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DM1.tEstoqueMatMov.Close;
      DM1.tProduto.Close;
      DM1.tTalao.Close;
      DM1.tPedido.Close;
      DM1.tPedidoItem.Close;
    end;
  RxDBFilter1.Active := False;
  Action := Cafree;
end;

procedure TfBaixaTalao.FormShow(Sender: TObject);
begin
  DM1.tEstoqueMatMov.Open;
  DM1.tProduto.Open;
  DM1.tTalao.Open;
  DM1.tPedido.Open;
  DM1.tPedidoItem.Open;

  RxDBFilter1.Active := True;

  BitBtn2.Visible := DM1.tUsuarioExcluirTalao.AsBoolean;
end;

procedure TfBaixaTalao.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DM1.tTalaoProduzido.AsBoolean then
    begin
      Background  := clTeal;;
      AFont.Color := clWhite;
    end;
end;

procedure TfBaixaTalao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfBaixaTalao.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Edit1.Text <> '') then
    begin
      if (Length(Edit1.Text) < 11) and (not DM1.tUsuarioTalaoBaixaManual.AsBoolean) then
        ShowMessage('Baixa do talão pode ser feita só pelo código de barras!')
      else
        Baixa_Talao;
    end;
end;

procedure TfBaixaTalao.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
    Label1.Caption := '';
end;

procedure TfBaixaTalao.BitBtn2Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
    begin
      RxDBGrid1.DataSource := nil;
      RxDBFilter1.Active   := False;
      if Length(Edit1.Text) >= 10 then
        vNumTalao := StrToInt(Copy(Edit1.Text,2,11))
      else
        vNumTalao := StrToInt(Edit1.Text);
      if MessageDlg('Deseja excluir a baixa do talão ' + IntToStr(vNumTalao) +  '? ', mtConfirmation,[mbOk,mbNo],0)=mrOk then
        begin
          if (DM1.tTalao.Locate('Talao',vNumTalao,[loCaseInsensitive])) and
             (DM1.tTalaoDtBaixa.AsDateTime > 1)  then
            begin
              DM1.tTalao.Edit;
              DM1.tTalaoProduzido.AsBoolean := False;
              DM1.tTalaoDtBaixa.Clear;
              DM1.tTalaoHrBaixa.Clear;
              DM1.tTalao.Post;
              DM1.tTalao.Refresh;
              Label1.Visible := True;
              Label1.Caption := 'Talão ' + IntToStr(vNumTalao) +  ', baixa excluída!';
              Edit1.Clear;
              Edit1.SetFocus;
            end;
        end;
      RxDBFilter1.Active   := True;
      RxDBGrid1.DataSource := DM1.dsTalao;
    end;
end;

end.
