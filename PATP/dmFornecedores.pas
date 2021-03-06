unit dmFornecedores;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider, Dialogs,
  Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmFornecedores = class(TDataModule)
    FDQuery1: TFDQuery;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    FDQuery2: TFDQuery;
    FDQuery2idfornecedor: TFDAutoIncField;
    FDQuery2nome: TStringField;
    FDQuery2cnpj: TStringField;
    FDQuery2fone: TStringField;
    FDQuery2email: TStringField;
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
  dtmFornecedores: TdtmFornecedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

procedure TdtmFornecedores.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmFornecedores.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmFornecedores.ClientDataSet1ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := raCancel;
  ShowMessage(E.Message)
end;

procedure TdtmFornecedores.DataModuleCreate(Sender: TObject);
begin
  ClientDataSet1.Open;
end;

end.
