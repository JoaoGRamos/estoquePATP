unit EdFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls;

type
  TEdtFornecedores = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DataSource1: TDataSource;
    BtSalvar: TButton;
    BtCancelar: TButton;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EdtFornecedores: TEdtFornecedores;

implementation

{$R *.dfm}

uses dmFornecedores, formFornecedores;

procedure TEdtFornecedores.BtCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TEdtFornecedores.BtSalvarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
