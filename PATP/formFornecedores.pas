unit formFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmFornecedores = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Cadastro: TLabel;
    DBNavigator1: TDBNavigator;
    Novo: TButton;
    Editar: TButton;
    Deletar: TButton;
    Fechar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pNome: TEdit;
    Pesquisar: TButton;
    Label3: TLabel;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses dmFornecedores;

end.
