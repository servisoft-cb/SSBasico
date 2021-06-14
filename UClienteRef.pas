unit UClienteRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, RxLookup, RzTabs, ToolEdit, RXDBCtrl,
  Buttons, DB, DBTables;

type
  TfClienteRef = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit12: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label11: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label14: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tClienteRef2: TTable;
    tClienteRef2CodCliente: TIntegerField;
    tClienteRef2Item: TIntegerField;
    tClienteRef2Tipo: TStringField;
    tClienteRef2Nome: TStringField;
    tClienteRef2Fone: TStringField;
    tClienteRef2Fax: TStringField;
    tClienteRef2Ramal: TStringField;
    tClienteRef2Setor: TStringField;
    tClienteRef2Endereco: TStringField;
    tClienteRef2CodCidade: TIntegerField;
    tClienteRef2UF: TStringField;
    tClienteRef2EMail: TStringField;
    tClienteRef2Agencia: TStringField;
    tClienteRef2DtNascimento: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vTipoRef : Integer;
  end;

var
  fClienteRef: TfClienteRef;

implementation

uses UDM1;

{$R *.dfm}

procedure TfClienteRef.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfClienteRef.FormShow(Sender: TObject);
var
  i : Integer;
begin
  RzPageControl1.ActivePageIndex := vTipoRef - 1;
  TabSheet1.TabVisible := (TabSheet1.PageIndex  = (vTipoRef - 1));
  TabSheet2.TabVisible := (TabSheet2.PageIndex  = (vTipoRef - 1));
  TabSheet3.TabVisible := (TabSheet3.PageIndex  = (vTipoRef - 1));
end;

procedure TfClienteRef.BitBtn1Click(Sender: TObject);
begin
  if DM1.tClienteRefNome.AsString = '' then
    begin
      ShowMessage('Cliente não cadastrado!');
      exit;
    end;
  if DM1.tClienteRef.State in [dsInsert] then
    begin
      tClienteRef2.Refresh;
      tClienteRef2.Last;
      DM1.tClienteRefItem.AsInteger := tClienteRef2Item.AsInteger + 1;
      DM1.tClienteRefTipo.AsString  := IntToStr(vTipoRef);
    end;
  DM1.tClienteRef.Post;
  DM1.tClienteRef.Refresh;
  Close;
end;

procedure TfClienteRef.BitBtn2Click(Sender: TObject);
begin
  DM1.tClienteRef.Cancel;
  Close;
end;

end.
