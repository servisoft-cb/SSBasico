unit UConsLoteMaisPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, RxLookup, RXCtrls, ExtCtrls, Buttons, DB;

type
  TfConsLoteMaisPesquisa = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    DateEdit3: TDateEdit;
    Label4: TLabel;
    DateEdit4: TDateEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel2: TRxLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsLoteMaisPesquisa: TfConsLoteMaisPesquisa;

implementation

uses UDM1, StrUtils, UConsLote;

{$R *.dfm}

procedure TfConsLoteMaisPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsLoteMaisPesquisa.RxDBLookupCombo1Enter(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    DM1.tProdutoCor.Locate('CodProduto',RxDBLookupCombo2.KeyValue,[loCaseInsensitive])
  else
    RxDBLookupCombo2.SetFocus;
end;

procedure TfConsLoteMaisPesquisa.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tProduto.IndexFieldNames := 'Referencia';
end;

procedure TfConsLoteMaisPesquisa.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tCliente.IndexFieldNames := 'Nome';
end;

procedure TfConsLoteMaisPesquisa.BitBtn3Click(Sender: TObject);
begin
  fConsLote.vDtBaixaIniCons := 0;
  fConsLote.vDtBaixaFinCons := 0;
  fConsLote.vDtImpIniCons   := 0;
  fConsLote.vDtImpFinCons   := 0;
  fConsLote.vCodProdutoCons := 0;
  fConsLote.vCodClienteCons := 0;
  fConsLote.vCodCorCons     := 0;

  Close;
end;

procedure TfConsLoteMaisPesquisa.BitBtn1Click(Sender: TObject);
begin
  fConsLote.vCodProdutoCons := 0;
  fConsLote.vCodCorCons     := 0;
  fConsLote.vCodClienteCons := 0;

  fConsLote.vDtBaixaIniCons := DateEdit1.Date;
  fConsLote.vDtBaixaFinCons := DateEdit2.Date;
  fConsLote.vDtImpIniCons   := DateEdit3.Date;
  fConsLote.vDtImpFinCons   := DateEdit4.Date;

  if RxDBLookupCombo2.Text <> '' then
    fConsLote.vCodProdutoCons := RxDBLookupCombo2.KeyValue;
  if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
    fConsLote.vCodCorCons := RxDBLookupCombo1.KeyValue;
  if RxDBLookupCombo3.Text <> '' then
    fConsLote.vCodClienteCons := RxDBLookupCombo3.KeyValue;

  Close;    
end;

end.
