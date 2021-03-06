unit formVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmVenda = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Cadastro: TLabel;
    DBNavigator1: TDBNavigator;
    Novo: TButton;
    Editar: TButton;
    Fechar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    c: TLabel;
    pNome: TEdit;
    Pesquisar: TButton;
    DataSource1: TDataSource;
    dpData1: TDateTimePicker;
    dpData2: TDateTimePicker;
    Label2: TLabel;
    chkUsardata: TCheckBox;
    procedure EditarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure chkUsardataClick(Sender: TObject);
    procedure PesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCadastro (Novo: Boolean);
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.dfm}

uses dmVenda, EdVenda;

procedure TfrmVenda.AbrirCadastro(Novo: Boolean);
begin
  EditVenda := TEditVenda.Create(Self);
  try
    if novo then
      dtmvenda.ClientDataSet1.Append
    else
    begin
      dtmvenda.ClientDataSet1.Locate('idvenda', dtmvenda.FDQuery6idvenda.AsInteger, []);
      dtmvenda.ClientDataSet1.Edit;
    end;
    if EditVenda.ShowModal = mrOk then
    begin
      dtmVenda.ClientDataSet1.Post;
      try
        if dtmVenda.ClientDataSet2.State in dsEditModes then
          dtmVenda.ClientDataSet2.Post;
      except
        dtmVenda.ClientDataSet2.Cancel;
      end;
      dtmVenda.AplicarMudancas;
    end
    else
      dtmVenda.ClientDataSet1.Cancel;
  finally
    FreeAndNil(EditVenda);
  end;
end;

procedure TfrmVenda.chkUsardataClick(Sender: TObject);
begin
  dpData1.Enabled := chkUsardata.Checked;
  dpData2.Enabled := chkUsardata.Checked;
end;

procedure TfrmVenda.DBGrid1DblClick(Sender: TObject);
begin
  AbrirCadastro(dtmVenda.FDQuery6.IsEmpty);
end;

procedure TfrmVenda.EditarClick(Sender: TObject);
begin
  AbrirCadastro(dtmVenda.FDQuery6.IsEmpty);
end;

procedure TfrmVenda.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVenda.FormDblClick(Sender: TObject);
begin
  AbrirCadastro(dtmVenda.FDQuery6.IsEmpty);
end;

procedure TfrmVenda.NovoClick(Sender: TObject);
begin
  AbrirCadastro(True);
end;

procedure TfrmVenda.PesquisarClick(Sender: TObject);
var
  data1, data2: string;
begin
  with dtmVenda.FDQuery6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select v.*, c.nome, count(*) produto');
    SQL.Add('from venda v');
    SQL.Add('inner join cliente c on c.idcliente = v.idcliente');
    SQL.Add('left join itensvenda i on i.idvenda = v.idvenda);');
    SQL.Add('where (1=1)');

    if trim(pNome.Text) <> ' ' then
    begin
      SQL.Add('and cliente.nome like ' + QuotedStr(pNome.Text + '%'));
    end;

    if chkUsarData.Checked then
    begin
      data1 := FormatDateTime('yyyy-mm-dd',dpData1.Date);
      data2 := FormatDateTime('yyyy-mm-dd',dpData2.Date);
      SQL.Add('and venda.datavenda between ' +
           QuotedStr(data1) + ' and ' + QuotedStr(data2));
    end;
  end;
end;

end.

