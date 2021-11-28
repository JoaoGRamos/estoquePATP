unit EdVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TEditVenda = class(TForm)
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditVenda: TEditVenda;

implementation

{$R *.dfm}

uses dmVenda;

procedure TEditVenda.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TEditVenda.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel
end;
end.
