unit UConvPrecoMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBClient;

type
  TfConvPrecoMaterial = class(TForm)
    qPreco: TQuery;
    qPrecoVlrUnitario: TFloatField;
    qPrecoES: TStringField;
    qPrecoDtMov: TDateField;
    qPrecoCodForn: TIntegerField;
    qPrecoNomeForn: TStringField;
    qPrecoCodCor: TIntegerField;
    qPrecoCodMaterial: TIntegerField;
    mAjuste: TClientDataSet;
    mAjusteCodMaterial: TIntegerField;
    mAjusteCodCor: TIntegerField;
    mAjusteNomeMaterial: TStringField;
    mAjusteNomeCor: TStringField;
    mAjustePrecoAnt: TFloatField;
    mAjustePrecoNovo: TFloatField;
    dsmAjuste: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConvPrecoMaterial: TfConvPrecoMaterial;

implementation

uses UDM1;

{$R *.dfm}

procedure TfConvPrecoMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
