unit formPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Produtos1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses dmProdutos, formProdutos;

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

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
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

end.
