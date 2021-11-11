unit frmCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TformCategoria = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Novo: TButton;
    Editar: TButton;
    Excluir: TButton;
    Fechar: TButton;
    DBNavigator1: TDBNavigator;
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro(Novo: Boolean);
  public
    { Public declarations }
  end;

var
  formCategoria: TformCategoria;

implementation

{$R *.dfm}

uses dmCategorias, Campos;

{ TformCategoria }

procedure TformCategoria.AbrirCadastro(Novo: Boolean);
begin
  frmCadCat := TfrmCadCat.Create(self);
  try
    if Novo then
      dtmCategoria.ClientDataSet1.Append
    else
    begin
      dtmCategoria.ClientDataSet1.Locate('idcat',
        dtmCategoria.FDQuery2idcat.AsInteger, []);
      dtmCategoria.ClientDataSet1.Edit;
    end;

    if frmCadCat.ShowModal = mrOk then
      dtmCategoria.ClientDataSet1.Post
    else
      dtmCategoria.ClientDataSet1.Cancel;
    dtmCategoria.FDQuery2.Refresh;

  finally
    FreeAndNil(frmCadCat);
  end;
end;

procedure TformCategoria.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmCategoria.FDQuery2.IsEmpty);
end;

procedure TformCategoria.ExcluirClick(Sender: TObject);
begin
    if Application.MessageBox(pchar('Confirma exclusão desse registro?'), pchar('Exclusão'), mb_yesno) = IDYES then
    if dtmCategoria.ClientDataSet1.Locate('idcat', dtmCategoria.FDQuery2idcat.AsInteger, []) then
    begin
      dtmCategoria.ClientDataSet1.Delete;
      dtmCategoria.FDQuery2.Refresh;
    end
end;

procedure TformCategoria.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformCategoria.NovoClick(Sender: TObject);
begin
  AbrirCadastro(True);
end;

end.
