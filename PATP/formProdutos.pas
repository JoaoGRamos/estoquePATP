unit formProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TfrmProdutos = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Novo: TButton;
    Editar: TButton;
    Deletar: TButton;
    Fechar: TButton;
    Panel1: TPanel;
    Cadastro: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdNome: TEdit;
    Button1: TButton;
    procedure FecharClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro(novo: Boolean);
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses dmProdutos, EdProdutos;

procedure TfrmProdutos.AbrirCadastro(novo: boolean);
begin
  EdtProdutos := TEdtProdutos.Create(Self);
  try
    if novo then
      dtmProdutos.ClientDataSet1.Append
    else
    begin
      dtmProdutos.ClientDataSet1.Locate('idproduto', dtmProdutos.FDQuery2idproduto.AsInteger, []);
      dtmProdutos.ClientDataSet1.Edit;
    end;

    if EdProdutos.EdtProdutos.ShowModal = mrOk then
      dtmProdutos.ClientDataSet1.Post
    else
      dtmProdutos.ClientDataSet1.Cancel;
    dtmProdutos.FDQuery2.Refresh;
  finally
    FreeAndNil(EdtProdutos);
  end;
end;

procedure TfrmProdutos.Button1Click(Sender: TObject);
begin
    with dtmProdutos.FDQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from produto p');
    SQL.Add('inner join unidademedida u ');
    SQL.Add('on p.idumedida = u.idumedida');
    SQL.Add('where (1=1)');

    if trim(EdNome.Text) <> '' then
    begin
      SQL.Add('and p.nome like ' +
        QuotedStr('%' + EdNome.Text + '%'));

    end;
    SQL.Add('order by p.nome and p.idproduto');
      Open;
    end;
end;

procedure TfrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
  AbrirCadastro(dtmProdutos.FDQuery2.IsEmpty);
end;

procedure TfrmProdutos.DeletarClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('Confirma exclus?o desse registro?'), pchar('Exclus?o'), mb_yesno) = IDYES then
    if dtmProdutos.ClientDataSet1.Locate('idproduto', dtmProdutos.FDQuery2idproduto.AsInteger, []) then
    begin
      dtmProdutos.ClientDataSet1.Delete;
      dtmProdutos.FDQuery2.Refresh;
    end
end;

procedure TfrmProdutos.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmProdutos.FDQuery2.IsEmpty);
end;

procedure TfrmProdutos.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProdutos.NovoClick(Sender: TObject);
begin
  AbrirCadastro(True);
end;

end.
