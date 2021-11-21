unit EdProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls;

type
  TEdtProdutos = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtSalvar: TButton;
    BtCancelar: TButton;
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EdtProdutos: TEdtProdutos;

implementation

{$R *.dfm}

uses dmProdutos;

procedure TEdtProdutos.BtCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TEdtProdutos.BtSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
