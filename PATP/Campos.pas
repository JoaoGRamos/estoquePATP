unit Campos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadCat = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    ID: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCat: TfrmCadCat;

implementation

{$R *.dfm}

uses dmCategorias, dmCompra;

procedure TfrmCadCat.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmCadCat.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
