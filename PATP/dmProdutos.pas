unit dmProdutos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Dialogs;

type
  TdtmProdutos = class(TDataModule)
    FDQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    FDQuery2: TFDQuery;
    FDQuery2idproduto: TFDAutoIncField;
    FDQuery2nome: TStringField;
    FDQuery2descricao: TStringField;
    FDQuery2qtde: TSingleField;
    FDQuery2idcat: TIntegerField;
    FDQuery3: TFDQuery;
    FDQuery3idumedida: TFDAutoIncField;
    FDQuery3umedida: TStringField;
    FDQuery2umedida: TStringField;
    ClientDataSet1idproduto: TAutoIncField;
    ClientDataSet1nome: TStringField;
    ClientDataSet1descricao: TStringField;
    ClientDataSet1qtde: TSingleField;
    ClientDataSet1idumedida: TIntegerField;
    ClientDataSet1idcat: TIntegerField;
    ClientDataSet1UnidadedeMedida: TStringField;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    ClientDataSet1Categoria: TStringField;
    FDQuery2catnome: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmProdutos: TdtmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

procedure TdtmProdutos.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmProdutos.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmProdutos.ClientDataSet1ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := raCancel;
  ShowMessage(E.Message);
end;

procedure TdtmProdutos.DataModuleCreate(Sender: TObject);
begin
  FDQuery2.Open;
  FDQuery3.Open;
  ClientDataSet1.Open;
end;

end.
