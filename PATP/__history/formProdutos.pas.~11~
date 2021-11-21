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
    Edit1: TEdit;
    Button1: TButton;
    procedure FecharClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
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

procedure TfrmProdutos.DeletarClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('Confirma exclusão desse registro?'), pchar('Exclusão'), mb_yesno) = IDYES then
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
