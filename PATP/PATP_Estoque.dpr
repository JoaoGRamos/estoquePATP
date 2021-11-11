program PATP_Estoque;

uses
  Vcl.Forms,
  formPrincipal in 'formPrincipal.pas' {frmPrincipal},
  dmConexao in 'dmConexao.pas' {dtmConexao: TDataModule},
  dmProdutos in 'dmProdutos.pas' {dtmProdutos: TDataModule},
  dmCategorias in 'dmCategorias.pas' {dtmCategoria: TDataModule},
  dmSubCategorias in 'dmSubCategorias.pas' {DataModule4: TDataModule},
  dmUnidades in 'dmUnidades.pas' {DataModule5: TDataModule},
  dmClientes in 'dmClientes.pas' {dtmClientes: TDataModule},
  dmFornecedores in 'dmFornecedores.pas' {dtmFornecedores: TDataModule},
  formProdutos in 'formProdutos.pas' {frmProdutos},
  formFornecedores in 'formFornecedores.pas' {frmFornecedores},
  dmVenda in 'dmVenda.pas' {DataModule1: TDataModule},
  dmCompra in 'dmCompra.pas' {dtmCompra: TDataModule},
  formClientes in 'formClientes.pas' {frmClientes},
  frmCategoria in 'frmCategoria.pas' {formCategoria},
  Campos in 'Campos.pas' {frmCadCat},
  formCompra in 'formCompra.pas' {frmCompra},
  EdCompra in 'EdCompra.pas' {EditCompra},
  EdClientes in 'EdClientes.pas' {EdCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TEdCliente, EdCliente);
  Application.Run;
end.
