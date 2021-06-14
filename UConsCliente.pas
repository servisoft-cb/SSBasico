unit UConsCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids,
  RXDBCtrl, SMDBGrid;

type
  TfConsCliente = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsqCliente: TDataSource;
    qCliente: TQuery;
    qClienteCodigo: TIntegerField;
    qClienteEndereco: TStringField;
    qClienteNomeCliente: TStringField;
    qClienteBairro: TStringField;
    qClienteUf: TStringField;
    qClienteCep: TStringField;
    qClienteTelefone: TStringField;
    qClienteTelefone2: TStringField;
    qClienteFax: TStringField;
    qClientePessoa: TStringField;
    qClienteCgcCpf: TStringField;
    qClienteInscrEst: TStringField;
    qClienteContato: TStringField;
    qClienteFantasia: TStringField;
    qClienteNomeVendedor: TStringField;
    qClienteNomeCidade: TStringField;
    StaticText1: TStaticText;
    BitBtn3: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    qClienteEmail: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Edit2: TEdit;
    Edit3: TEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    ComboBox1: TComboBox;
    qClienteCliente: TBooleanField;
    qClienteFabrica: TBooleanField;
    qClienteRepresentada: TBooleanField;
    qClienteEmailNFe: TStringField;
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_SQL;
  public
    { Public declarations }
  end;

var
  fConsCliente: TfConsCliente;

implementation

uses UDM1, URelClientes3;

{$R *.DFM}

procedure TfConsCliente.Monta_SQL;
begin
  qCliente.Close;
  qCliente.SQL.Clear;
  qCliente.SQL.Add('Select dbCliente.Codigo, Dbcliente.Endereco, Dbcliente.Nome NomeCliente, Dbcliente.Bairro, ');
  qCliente.SQL.Add(' Dbcliente.Uf, Dbcliente.Cep, Dbcliente.Telefone, Dbcliente.Telefone2, Dbcliente.Fax, Dbcliente.Pessoa,  ');
  qCliente.SQL.Add(' Dbcliente.CgcCpf, Dbcliente.InscrEst, Dbcliente.Contato, Dbcliente.Fantasia, dbVendedor.Nome NomeVendedor, dbCidade.Nome NomeCidade, ');
  qCliente.SQL.Add(' dbCliente.Email, Dbcliente.Cliente, Dbcliente.Fabrica, Dbcliente.Representada, dbCliente.EmailNFe ');
  qCliente.SQL.Add('FROM "dbCliente.DB" Dbcliente');
  qCliente.SQL.Add('   LEFT JOIN "DBCIDADE.DB" Dbcidade');
  qCliente.SQL.Add('   ON  (Dbcliente.CodCidade = Dbcidade.Codigo)');
  qCliente.SQL.Add('   LEFT JOIN "dbVendedor.DB" Dbvendedor');
  qCliente.SQL.Add('   ON  (Dbcliente.CodVendedor = Dbvendedor.Codigo)');
  qCliente.SQL.Add('WHERE (0=0)');
  if Edit1.Text <> '' then
    qCliente.SQL.Add(' AND ((dbCliente.Nome LIKE  + ''%' + Edit1.Text + '%'') OR (dbCliente.Fantasia LIKE + ''%' + Edit1.Text + '%''))');
  if Edit2.Text <> '' then
    qCliente.SQL.Add('  AND (dbCliente.Endereco LIKE ''%' + Edit2.Text + '%'')');
  if Edit3.Text <> '' then
    qCliente.SQL.Add('  AND (dbCliente.Bairro LIKE ''%' + Edit3.Text + '%'')');
  if RxDBLookupCombo1.Text <> '' then
  begin
    qCliente.SQL.Add('  AND (dbCliente.CodCidade = :CodCidade)');
    qCliente.ParamByName('CodCidade').AsInteger := RxDBLookupCombo1.KeyValue;
  end;
  if RxDBLookupCombo2.Text <> '' then
  begin
    qCliente.SQL.Add('  AND (dbCliente.CodVendedor = :CodVendedor)');
    qCliente.ParamByName('CodVendedor').AsInteger := RxDBLookupCombo2.KeyValue;
  end;

  case ComboBox1.ItemIndex of
    0 : qCliente.SQL.Add('  AND (dbCliente.Cliente = True)');
    1 : qCliente.SQL.Add('  AND (dbCliente.Representada = True)');
    2 : qCliente.SQL.Add('  AND (dbCliente.Fabrica = True)');
  end;

  Case ComboBox2.ItemIndex of
    0 : qCliente.SQL.Add('ORDER BY dbcliente.Codigo');
    1 : qCliente.SQL.Add('ORDER BY dbcliente.Nome, dbcidade.Nome');
    2 : qCliente.SQL.Add('ORDER BY dbcidade.Nome, dbcliente.Nome');
    3 : qCliente.SQL.Add('ORDER BY dbcliente.Endereco, dbcliente.Nome');
  end;
  qCliente.Open;
end;

procedure TfConsCliente.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tCidade.IndexFieldNames := 'Nome';
end;

procedure TfConsCliente.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tVendedor.IndexFieldNames := 'Nome';
end;

procedure TfConsCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qCliente.Close;
  Action := Cafree;
end;

procedure TfConsCliente.BitBtn1Click(Sender: TObject);
begin
  Monta_SQL;
end;

procedure TfConsCliente.BitBtn3Click(Sender: TObject);
begin
  SMDBGrid2.DisableScroll;
  fRelClientes3 := TfRelClientes3.Create(Self);
  if RxDBLookupCombo2.Text = '' then
    fRelClientes3.RLBand3.Visible := False;
  fRelClientes3.RLBand4.Visible := CheckBox1.Checked;
  fRelClientes3.RLDraw4.Visible := not(CheckBox1.Checked);
  fRelClientes3.RLReport1.Preview;
  fRelClientes3.RLReport1.Free;
  FreeAndNil(fRelClientes3);
  SMDBGrid2.EnableScroll;
end;

procedure TfConsCliente.SMDBGrid2DblClick(Sender: TObject);
begin
  if qClienteCodigo.AsInteger > 0 then
    DM1.tCliente.Locate('Codigo',qClienteCodigo.AsInteger,[loCaseInsensitive]);
  Close;
end;

procedure TfConsCliente.SMDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      if qClienteCodigo.AsInteger > 0 then
      DM1.tCliente.Locate('Codigo',qClienteCodigo.AsInteger,[loCaseInsensitive]);
      Key := #0;
    Close;
    end;
end;

procedure TfConsCliente.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
end;

procedure TfConsCliente.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.

