unit pasPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Produto1: TMenuItem;
    Categoria1: TMenuItem;
    Subcategoria1: TMenuItem;
    UnidadedeMedida1: TMenuItem;
    N1: TMenuItem;
    Cliente1: TMenuItem;
    Frornecedor1: TMenuItem;
    Consulta1: TMenuItem;
    Movimentao1: TMenuItem;
    Produtos1: TMenuItem;
    Forncedores1: TMenuItem;
    Clientes1: TMenuItem;
    Venda1: TMenuItem;
    Compra1: TMenuItem;
    procedure Produto1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Subcategoria1Click(Sender: TObject);
    procedure UnidadedeMedida1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Frornecedor1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Forncedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses pasCAcliente, pasCAfornecedor, pasCAproduto, pasCategoria, pasCOcliente,
  pasCOfornecedor, pasCompra, pasCOproduto, pasSubcat, pasUmedida, pasVenda;

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
  frmCategoria := TfrmCategoria.Create(Self);
  frmCategoria.ShowModal;
  try

  finally
    FreeAndNil(frmCategoria);
  end;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  frmCAcliente := TfrmCAcliente.Create(Self);
  frmCAcliente.ShowModal;
  try

  finally
    FreeAndNil(frmCAcliente);
  end;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  frmCOcliente := TfrmCOcliente.Create(Self);
  frmCOcliente.ShowModal;
  try

  finally
    FreeAndNil(frmCOcliente);
  end;
end;

procedure TfrmPrincipal.Compra1Click(Sender: TObject);
begin
  frmCompra := TfrmCompra.Create(Self);
  frmCompra.ShowModal;
  try

  finally
    FreeAndNil(frmCompra);
  end;
end;

procedure TfrmPrincipal.Forncedores1Click(Sender: TObject);
begin
  frmCOfornecedor := TfrmCOfornecedor.Create(Self);
  frmCOfornecedor.ShowModal;
  try

  finally
    FreeAndNil(frmCOfornecedor);
  end;
end;

procedure TfrmPrincipal.Frornecedor1Click(Sender: TObject);
begin
  frmCAfornecedor := TfrmCAfornecedor.Create(Self);
  frmCAfornecedor.ShowModal;
  try

  finally
    FreeAndNil(frmCAfornecedor);
  end;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
  frmCAproduto := TfrmCAproduto.Create(Self);
  frmCAproduto.ShowModal;
  try

  finally
    FreeAndNil(frmCAproduto);
  end;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmCOproduto := TfrmCOproduto.Create(Self);
  frmCOproduto.ShowModal;
  try

  finally
    FreeAndNil(frmCOproduto);
  end;
end;

procedure TfrmPrincipal.Subcategoria1Click(Sender: TObject);
begin
  frmSubcat := TfrmSubcat.Create(Self);
  frmSubcat.ShowModal;
  try

  finally
    FreeAndNil(frmSubcat);
  end;
end;

procedure TfrmPrincipal.UnidadedeMedida1Click(Sender: TObject);
begin
  frmUmedida := TfrmUmedida.Create(Self);
  frmUmedida.ShowModal;
  try

  finally
    FreeAndNil(frmUmedida);
  end;
end;

procedure TfrmPrincipal.Venda1Click(Sender: TObject);
begin
  frmVenda := TfrmVenda.Create(Self);
  frmVenda.ShowModal;
  try

  finally
    FreeAndNil(frmVenda);
  end;
end;

end.
