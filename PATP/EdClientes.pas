unit EdClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls;

type
  TEdCliente = class(TForm)
    ID: TDBEdit;
    Nome: TDBEdit;
    CPF: TDBEdit;
    Telefone: TDBEdit;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Salvar: TButton;
    Cancelar: TButton;
    procedure SalvarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EdCliente: TEdCliente;

implementation

{$R *.dfm}

uses dmClientes;

procedure TEdCliente.CancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel
end;

procedure TEdCliente.SalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
