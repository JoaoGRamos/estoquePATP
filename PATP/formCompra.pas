unit formCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCompra = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Novo: TButton;
    Editar: TButton;
    Deletar: TButton;
    Fechar: TButton;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FecharClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro(Novo: Boolean);
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

uses dmCompra, EdCompra;

procedure TfrmCompra.AbrirCadastro(Novo: Boolean);
begin
  EditCompra := TEditCompra.Create(Self);
  try
    if Novo then
      dtmCompra.ClientDataSet1.Append
    else
    begin
      dtmCompra.ClientDataSet1.Locate('idcompra',
        dtmCompra.FDQuery2idcompra.AsInteger, []);
      dtmCompra.ClientDataSet1.Edit;
    end;

    if EditCompra.ShowModal = mrOk then
      dtmCompra.ClientDataSet1.Post
    else
      dtmCompra.ClientDataSet1.Cancel;
    dtmCompra.FDQuery2.Refresh;
  finally
    FreeAndNil(EditCompra);
  end;
end;

procedure TfrmCompra.DBGrid1DblClick(Sender: TObject);
begin
  AbrirCadastro(dtmCompra.FDQuery2.IsEmpty);
end;

procedure TfrmCompra.DeletarClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('Confirma exclus�o desse registro?'), pchar('Exclus�o'), mb_yesno) = IDYES then
    if dtmCompra.ClientDataSet1.Locate('idcompra', dtmCompra.FDQuery2idcompra.AsInteger, []) then
    begin
      dtmCompra.ClientDataSet1.Delete;
      dtmCompra.FDQuery2.Refresh;
    end;

end;

procedure TfrmCompra.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmCompra.FDQuery2.IsEmpty);
end;

procedure TfrmCompra.FecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmCompra.NovoClick(Sender: TObject);
begin
  AbrirCadastro(True);
end;

end.
