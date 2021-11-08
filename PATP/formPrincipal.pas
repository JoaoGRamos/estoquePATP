unit formPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses dmProdutos, formProdutos, dmCategorias, dmClientes, dmCompra, dmConexao,
  dmFornecedores, dmSubCategorias, dmUnidades, dmVenda, formClientes,
  formFornecedores, frmCategoria, Campos, EdCompra, formCompra;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  dtmProdutos := TdtmProdutos.Create(self);
  try
    frmProdutos := TfrmProdutos.Create(self);
    try
      frmProdutos.ShowModal;
    finally
      FreeAndNil(frmProdutos);
    end;
  finally
    FreeAndNil(dtmProdutos);
  end;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  dtmFornecedores := TdtmFornecedores.Create(self);
  try
    frmFornecedores := TfrmFornecedores.Create(self);
    try
      frmFornecedores.ShowModal;
    finally
      FreeAndNil(frmFornecedores);
    end;
  finally
    FreeAndNil(dtmFornecedores);
  end;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
  dtmCategoria := TdtmCategoria.Create(self);
  try
    formCategoria := TformCategoria.Create(self);
    try
      formCategoria.ShowModal;
    finally
      FreeAndNil(formCategoria);
    end;
  finally
    FreeAndNil(dtmCategoria);
  end;
end;

procedure TfrmPrincipal.Button9Click(Sender: TObject);
begin
  dtmCompra := TdtmCompra.Create(Self);
  try
    frmCompra := TfrmCompra.Create(Self);
    try
      frmCompra.ShowModal;
    finally
      FreeAndNil(frmCompra);
    end;
  finally
    FreeAndNil(dtmCompra);
  end;
end;

end.