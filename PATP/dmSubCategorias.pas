unit dmSubCategorias;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule4 = class(TDataModule)
    FDQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1idproduto: TAutoIncField;
    ClientDataSet1nome: TStringField;
    ClientDataSet1descricao: TStringField;
    ClientDataSet1qtde: TSingleField;
    ClientDataSet1idumedida: TIntegerField;
    ClientDataSet1idcat: TIntegerField;
    ClientDataSet1idsubcat: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

end.
