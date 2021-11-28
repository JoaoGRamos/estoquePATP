unit EdCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TEditCompra = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Salvar: TButton;
    Cancelar: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource2: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    procedure SalvarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditCompra: TEditCompra;

implementation

{$R *.dfm}

uses dmCompra;

procedure TEditCompra.CancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TEditCompra.SalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
