unit formVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmVenda = class(TForm)
    DBGrid1: TDBGrid;
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
    DataSource1: TDataSource;
    procedure EditarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro (Novo: Boolean);
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses dmVenda, EdVenda;

procedure TfrmVenda.AbrirCadastro(Novo: Boolean);
begin
  EditVenda := TEditVenda.Create(Self);
  try
    if Novo then
      dtmVenda.ClientDataSet1.Append
    else
    begin
      dtmVenda.ClientDataSet1.Locate('idvenda',
        dtmVenda.FDQuery2idvenda.AsInteger, []);
      dtmVenda.ClientDataSet1.Edit;
    end;

    if EditVenda.ShowModal = mrOk then
      dtmVenda.ClientDataSet1.Post
    else
      dtmVenda.ClientDataSet1.Cancel;
    dtmVenda.FDQuery2.Refresh;
  finally
    FreeAndNil(EditVenda);
  end;
end;

procedure TfrmVenda.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmVenda.FDQuery2.IsEmpty);
end;

procedure TfrmVenda.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVenda.FormDblClick(Sender: TObject);
begin
  AbrirCadastro(dtmVenda.FDQuery2.IsEmpty);
end;

procedure TfrmVenda.NovoClick(Sender: TObject);
begin
  AbrirCadastro(True);
end;

end.

