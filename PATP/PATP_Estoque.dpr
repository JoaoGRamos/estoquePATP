program PATP_Estoque;

uses
  Vcl.Forms,
  formPrincipal in 'formPrincipal.pas' {frmPrincipal},
  dmConexao in 'dmConexao.pas' {dtmConexao: TDataModule},
  dmProdutos in 'dmProdutos.pas' {dtmProdutos: TDataModule},
  dmCategorias in 'dmCategorias.pas' {DataModule3: TDataModule},
  dmSubCategorias in 'dmSubCategorias.pas' {DataModule4: TDataModule},
  dmUnidades in 'dmUnidades.pas' {DataModule5: TDataModule},
  dmClientes in 'dmClientes.pas' {DataModule6: TDataModule},
  dmFornecedores in 'dmFornecedores.pas' {DataModule7: TDataModule},
  formProdutos in 'formProdutos.pas' {frmProdutos},
  formFornecedores in 'formFornecedores.pas' {frmFornecedores},
  dmVenda in 'dmVenda.pas' {DataModule1: TDataModule},
  dmCompra in 'dmCompra.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
