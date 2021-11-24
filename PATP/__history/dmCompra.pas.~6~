unit dmCompra;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet, Dialogs,
  FireDAC.Comp.Client;

type
  TdtmCompra = class(TDataModule)
    FDQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    FDQuery2: TFDQuery;
    FDQuery2idcompra: TFDAutoIncField;
    FDQuery2datacompra: TDateField;
    FDQuery2precototal: TStringField;
    FDQuery2idfornecedor: TIntegerField;
    ClientDataSet1idcompra: TAutoIncField;
    ClientDataSet1datacompra: TDateField;
    ClientDataSet1precototal: TStringField;
    ClientDataSet1idfornecedor: TIntegerField;
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCompra: TdtmCompra;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

procedure TdtmCompra.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmCompra.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmCompra.ClientDataSet1ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
  Action := raCancel;
end;

procedure TdtmCompra.DataModuleCreate(Sender: TObject);
begin
  FDQuery2.Open;
  ClientDataSet1.Open;
end;

end.
