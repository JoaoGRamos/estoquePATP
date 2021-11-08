unit EdCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TEditCompra = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Salvar: TButton;
    Cancelar: TButton;
    DataSource1: TDataSource;
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
