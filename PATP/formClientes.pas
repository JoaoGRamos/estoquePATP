unit formClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmClientes = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Novo: TButton;
    Editar: TButton;
    Deletar: TButton;
    Fechar: TButton;
    Panel2: TPanel;
    Cadastro: TLabel;
    Label1: TLabel;
    pNome: TEdit;
    Label2: TLabel;
    Pesquisar: TButton;
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure PesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro(novo: Boolean);
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses  dmClientes, EdClientes;

procedure TfrmClientes.AbrirCadastro(novo: boolean);
begin
  EdCliente := TEdCliente.Create(Self);
  try
    if novo then
      dtmClientes.ClientDataSet1.Append
    else
    begin
      dtmClientes.ClientDataSet1.Locate('idcliente', dtmClientes.FDQuery2idcliente.AsInteger, []);
      dtmClientes.ClientDataSet1.Edit;
    end;

    if EdCliente.ShowModal = mrOk then
      dtmClientes.ClientDataSet1.Post
    else
      dtmClientes.ClientDataSet1.Cancel;
    dtmClientes.FDQuery2.Refresh;
  finally
    FreeAndNil(EdCliente);
  end;
end;

procedure TfrmClientes.DBGrid1DblClick(Sender: TObject);
begin
  AbrirCadastro(dtmClientes.FDQuery2.IsEmpty);
end;

procedure TfrmClientes.DeletarClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('Confirma exclusão desse registro?'), pchar('Exclusão'), mb_yesno) = IDYES then
    if dtmClientes.ClientDataSet1.Locate('idcliente', dtmClientes.FDQuery2idcliente.AsInteger, []) then
    begin
      dtmClientes.ClientDataSet1.Delete;
      dtmClientes.FDQuery2.Refresh;
    end
end;

procedure TfrmClientes.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmClientes.FDQuery2.IsEmpty);
end;

procedure TfrmClientes.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.FormDblClick(Sender: TObject);
begin
  AbrirCadastro(dtmClientes.FDQuery2.IsEmpty);
end;

procedure TfrmClientes.NovoClick(Sender: TObject);
begin
  AbrirCadastro(true);
end;

procedure TfrmClientes.PesquisarClick(Sender: TObject);
begin
  with dtmClientes.FDQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from cliente');
    SQL.Add('where (1=1)');

    if trim(pNome.Text) <> '' then
    begin
      SQL.Add('and cliente.nome like ' +
        QuotedStr('%' + pNome.Text + '%'));

    end;
    SQL.Add('order by cliente.nome and cliente.idcliente');
      Open;
    end;

end;

end.
