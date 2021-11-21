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
    pCNPJ: TEdit;
    procedure PesquisarClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro(novo: Boolean);
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses dmFornecedores, EdFornecedores;

procedure TfrmFornecedores.AbrirCadastro(novo: boolean);
begin
  EdtFornecedores := TEdtFornecedores.Create(self);
  try
    if novo then
      dtmFornecedores.ClientDataSet1.Append
    else
    begin
      dtmFornecedores.ClientDataSet1.Locate('idfornecedor', dtmFornecedores.FDQuery2idfornecedor.AsInteger, []);
      dtmFornecedores.ClientDataSet1.Edit;
    end;

    if EdtFornecedores.ShowModal = mrOk then
      dtmFornecedores.ClientDataSet1.Post
    else
      dtmFornecedores.ClientDataSet1.Cancel;
    dtmFornecedores.FDQuery2.Refresh;
  finally
    FreeAndNil(EdtFornecedores);
  end;
end;

procedure TfrmFornecedores.DBGrid1DblClick(Sender: TObject);
begin
  AbrirCadastro(dtmFornecedores.FDQuery2.IsEmpty);
end;

procedure TfrmFornecedores.DeletarClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('Confirma exclusão desse registro?'), pchar('Exclusão'), mb_yesno) = IDYES then
    if dtmFornecedores.ClientDataSet1.Locate('idfornecedor', dtmFornecedores.FDQuery2idfornecedor.AsInteger, []) then
    begin
      dtmFornecedores.ClientDataSet1.Delete;
      dtmFornecedores.FDQuery2.Refresh;
    end
end;

procedure TfrmFornecedores.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmFornecedores.FDQuery2.IsEmpty);
end;

procedure TfrmFornecedores.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFornecedores.NovoClick(Sender: TObject);
begin
  AbrirCadastro(True);
end;

procedure TfrmFornecedores.PesquisarClick(Sender: TObject);
begin
  with dtmFornecedores.FDQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from fornecedor');
    SQL.Add('where (1=1)');

    if trim(pNome.Text) <> '' then
    begin
      SQL.Add(' and nome like ' +
    QuotedStr('%' + pNome.Text + '%'));

    end;

    if trim(pCNPJ.Text) <> '' then
    begin
      SQL.Add(' and cnpj like ' +
    QuotedStr('%' + pCNPJ.Text + '%'));

    end;

    SQL.Add(' order by fornecedor.nome and fornecedor.idfornecedor');
      Open;
    end;

end;

end.
