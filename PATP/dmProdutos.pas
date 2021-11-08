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
    FDQuery2idumedida: TIntegerField;
    FDQuery2idcat: TIntegerField;
    FDQuery2idsubcat: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
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

procedure TdtmProdutos.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
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
  ClientDataSet1.Open;
end;

end.