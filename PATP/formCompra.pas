unit formCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

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
    label3: TLabel;
    eNome: TEdit;
    dpData1: TDateTimePicker;
    dpData2: TDateTimePicker;
    Label4: TLabel;
    chkUsardata: TCheckBox;
    Button1: TButton;
    procedure FecharClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure chkUsardataClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TfrmCompra.Button1Click(Sender: TObject);
var
  data1, data2: string;
begin
  with dtmCompra.FDQuery6 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select c.*, f.nome, count(*) produto');
    SQL.Add('from compra c');
    SQL.Add('inner join fornecedor f on f.idfornecedor = c.idfornecedor');
    SQL.Add('left join itenscompra i on i.idcompra = c.idcompra ');
    SQL.Add('where (1=1)');

    if trim(eNome.Text) <> ' ' then
    begin
      SQL.Add('and fornecedor.nome like ' + QuotedStr(eNome.Text + '%'));
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

procedure TfrmCompra.chkUsardataClick(Sender: TObject);
begin
  dpData1.Enabled := chkUsardata.Checked;
  dpData2.Enabled := chkUsardata.Checked;
end;

procedure TfrmCompra.DBGrid1DblClick(Sender: TObject);
begin
  AbrirCadastro(dtmCompra.FDQuery2.IsEmpty);
end;

procedure TfrmCompra.DeletarClick(Sender: TObject);
begin
  if Application.MessageBox(pchar('Confirma exclusão desse registro?'), pchar('Exclusão'), mb_yesno) = IDYES then
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
