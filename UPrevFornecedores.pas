unit UPrevFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables, RXLookup, Menus,
  RXCtrls, DBFilter;

type
  TfPrevFornecedores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    tFornecedores: TTable;
    dsFornecedores: TDataSource;
    tFornecedoresCodForn: TIntegerField;
    tFornecedoresNomeForn: TStringField;
    tFornecedoresEndForn: TStringField;
    tFornecedoresBairroForn: TStringField;
    tFornecedoresCidadeForn: TStringField;
    tFornecedoresCEPForn: TStringField;
    tFornecedoresEstadoForn: TStringField;
    tFornecedoresTel1Forn: TStringField;
    tFornecedoresTel2Forn: TStringField;
    tFornecedoresFaxForn: TStringField;
    tFornecedoresCGC: TStringField;
    tFornecedoresInsc: TStringField;
    tFornecedoresContatoForn: TStringField;
    tFornecedoresDataCadastroForn: TDateField;
    tFornecedoresObsForn: TMemoField;
    tFornecedoresRamal: TStringField;
    tFornecedoresEmail: TStringField;
    tFornecedoresHomePage: TStringField;
    tFornecedoresCodCondPgto: TIntegerField;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    Panel2: TPanel;
    RxSpeedButton2: TRxSpeedButton;
    Bevel1: TBevel;
    RadioGroup2: TRadioGroup;
    RxDBFilter1: TRxDBFilter;
    tFornecedoresFantasia: TStringField;
    tFornecedoresFornecedorOutros: TStringField;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    tFornecedoresCodCidade: TIntegerField;
    tFornecedoresCustoFixo: TBooleanField;
    tFornecedoresUsuario: TStringField;
    tFornecedoresDtCad: TDateField;
    tFornecedoresHrCad: TTimeField;
    tFornecedoresCliente: TBooleanField;
    tFornecedoresEndComplemento: TStringField;
    tFornecedoresDDDFone1: TIntegerField;
    tFornecedoresDDDFone2: TIntegerField;
    tFornecedoresDDDFax: TIntegerField;
    tFornecedoresCodAnt: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Controle_Impressao(Tipo : String);
  public
    { Public declarations }
  end;

var
  fPrevFornecedores: TfPrevFornecedores;

implementation

uses UDM1, URelFornecedores, Printers;

{$R *.DFM}

procedure TfPrevFornecedores.Controle_Impressao(Tipo : String);
begin
  RxDBFilter1.Active := False;
  case RadioGroup2.ItemIndex of
    0 : RxDBFilter1.Filter.Text := 'FornecedorOutros = ''F''';
    1 : RxDBFilter1.Filter.Text := 'FornecedorOutros = ''1''';
    2 : RxDBFilter1.Filter.Text := 'FornecedorOutros = ''2''';
    3 : RxDBFilter1.Filter.Text := 'FornecedorOutros = ''3''';
    4 : RxDBFilter1.Filter.Text := 'FornecedorOutros = ''4''';
  end;
  case RadioGroup2.ItemIndex of
    0,1,2,3,4 : RxDBFilter1.Active := True;
  end;

  tFornecedores.Filtered := False;
  case RadioGroup1.ItemIndex of
    0 : begin
          if (RxDBLookupCombo1.Text <> '') and (RxDBLookupCombo2.Text <> '') then
            begin
              tFornecedores.Filter   := 'NomeForn >= '''+RxDBLookupCombo1.Text+''' and NomeForn <= '''+RxDBLookupCombo2.Text+'''';
              tFornecedores.Filtered := True;
            end;
        end;
    1 : begin
          if (Edit1.Text <> '') and (Edit2.Text <> '') then
            begin
              if StrToInt(Edit1.Text) <= StrToInt(Edit2.Text) then
                begin
                  tFornecedores.Filter   := 'CodForn >= '''+Edit1.Text+''' and CodForn <= '''+Edit2.Text+'''';
                  tFornecedores.Filtered := True;
                end;
            end
        end;
  end;
  fRelFornecedores       := TfRelFornecedores.Create(Self);
  if Tipo = 'V' then
    fRelFornecedores.QuickRep1.Preview
  else
    fRelFornecedores.QuickRep1.Print;
  fRelFornecedores.QuickRep1.Free;
  tFornecedores.Filtered := False;
  RxDBFilter1.Active     := False;
end;

procedure TfPrevFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RxDBFilter1.Active     := False;
  DM1.tFornecedores.Close;
  Action := Cafree;
end;

procedure TfPrevFornecedores.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
        tFornecedores.IndexFieldNames := 'NomeForn';
        RxDBLookupCombo1.Enabled := True;
        RxDBLookupCombo2.Enabled := True;
        RxDBLookupCombo1.SetFocus;
        Edit1.Enabled := False;
        Edit1.Clear;
        Edit2.Enabled := False;
        Edit2.Clear;
        end;
    1 : begin
        tFornecedores.IndexFieldNames := 'CodForn';
        Edit1.Enabled := True;
        Edit1.SetFocus;
        Edit2.Enabled := True;
        RxDBLookupCombo1.Enabled := False;
        RxDBLookupCombo1.ClearValue;
        RxDBLookupCombo2.Enabled := False;
        RxDBLookupCombo2.ClearValue;
        end;
  end;
end;

procedure TfPrevFornecedores.BitBtn2Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
  RxDBLookupCombo2.ClearValue;
  Edit1.Clear;
  Edit2.Clear;
  RadioGroup1.ItemIndex      := 0;
  RadioGroup2.ItemIndex      := 0;
end;

procedure TfPrevFornecedores.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrevFornecedores.Visualizar1Click(Sender: TObject);
begin
  Controle_Impressao('V');
end;

procedure TfPrevFornecedores.Imprimir1Click(Sender: TObject);
begin
  Controle_Impressao('I');
end;

procedure TfPrevFornecedores.FormShow(Sender: TObject);
begin
  DM1.tFornecedores.Open;
  RxDBFilter1.Active := False;
  tFornecedores.IndexFieldNames := 'NomeForn';
  RxDBLookupCombo1.Enabled := True;
  RxDBLookupCombo2.Enabled := True;
  RxDBLookupCombo1.SetFocus;
  Edit1.Enabled := False;
  Edit1.Clear;
  Edit2.Enabled := False;
  Edit2.Clear;
end;

procedure TfPrevFornecedores.RxDBLookupCombo1Enter(Sender: TObject);
begin
  tFornecedores.IndexFieldNames := 'NomeForn';
end;

end.
