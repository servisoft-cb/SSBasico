unit UPrevPgtoJuros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, RXCtrls, Menus, Printers,
  Db, DBTables, DBFilter, RxLookup;

type
  TfPrevPgtoJuros = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    dsCPagarParc: TDataSource;
    RxDBFilter1: TRxDBFilter;
    qCPagarParc: TQuery;
    qCPagarParcDtVencCPagar: TDateField;
    qCPagarParcVlrParcCPagar: TFloatField;
    qCPagarParcDtPagParcCPagar: TDateField;
    qCPagarParcJurosParcCPagar: TFloatField;
    qCPagarParcCodForn: TIntegerField;
    qCPagarParcPgtoParcial: TFloatField;
    qCPagarParcNroDuplicata: TIntegerField;
    qCPagarParcDiasAtraso: TFloatField;
    qCPagarParcFantasia: TStringField;
    qCPagarParcCodConta: TIntegerField;
    qCPagarParcNomeConta: TStringField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    qCPagarParcFilial: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrevPgtoJuros: TfPrevPgtoJuros;

implementation

uses UDM1, URelPgtoJuros;

{$R *.DFM}

procedure TfPrevPgtoJuros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPrevPgtoJuros.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevPgtoJuros.BitBtn2Click(Sender: TObject);
begin
  DateEdit1.Clear;
  DateEdit2.Clear;
  DateEdit1.SetFocus;
end;

procedure TfPrevPgtoJuros.Imprimir1Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') and (RxDBLookupCombo1.Text <> '') then
    begin
      qCPagarParc.Filtered := False;
      qCPagarParc.Filter   := 'DtPagParcCPagar >= '''+DateEdit1.Text+''' and DtPagParcCPagar <= '''+DateEdit2.Text+''' and Filial = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
      qCPagarParc.Filtered := True;
      fRelPgtoJuros        := TfRelPgtoJuros.Create(Self);
      fRelPgtoJuros.QuickRep1.Print;
      fRelPgtoJuros.QuickRep1.Free;
      qCPagarParc.Filtered := False;
    end
  else
    begin
      ShowMessage('Deve haver Datas "Inicial", "Final" e "Filial" p/ executar este relatório!');
      DateEdit1.SetFocus;
    end;
end;

procedure TfPrevPgtoJuros.Visualizar1Click(Sender: TObject);
begin
  if (DateEdit1.Text <> '  /  /    ') and (DateEdit2.Text <> '  /  /    ') and (RxDBLookupCombo1.Text <> '') then
    begin
      qCPagarParc.Filtered := False;
      qCPagarParc.Filter   := 'DtPagParcCPagar >= '''+DateEdit1.Text+''' and DtPagParcCPagar <= '''+DateEdit2.Text+''' and Filial = '''+IntToStr(RxDBLookupCombo1.KeyValue)+'''';
      qCPagarParc.Filtered := True;
      fRelPgtoJuros        := TfRelPgtoJuros.Create(Self);
      fRelPgtoJuros.QuickRep1.Preview;
      fRelPgtoJuros.QuickRep1.Free;
      qCPagarParc.Filtered := False;
    end
  else
    begin
      ShowMessage('Deve haver Datas "Inicial", "Final" e "Filial" p/ executar este relatório!');
      DateEdit1.SetFocus;
    end;
end;

end.
