unit dmVenda;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Dialogs,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdtmVenda = class(TDataModule)
    FDQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    FDQuery2: TFDQuery;
    FDQuery2idvenda: TFDAutoIncField;
    FDQuery2datavenda: TDateField;
    FDQuery2precototal: TStringField;
    FDQuery2idcliente: TIntegerField;
    ClientDataSet1idvenda: TAutoIncField;
    ClientDataSet1datavenda: TDateField;
    ClientDataSet1precototal: TStringField;
    ClientDataSet1idcliente: TIntegerField;
    FDQuery3: TFDQuery;
    ClientDataSet1NomeProduto: TStringField;
    FDQuery2idproduto: TIntegerField;
    FDQuery2nome: TStringField;
    FDQuery2descricao: TStringField;
    FDQuery2qtde: TSingleField;
    FDQuery2idumedida: TIntegerField;
    FDQuery2idcat: TIntegerField;
    FDQuery2idsubcat: TIntegerField;
    FDQuery3idvenda: TFDAutoIncField;
    FDQuery3datavenda: TDateField;
    FDQuery3precototal: TStringField;
    FDQuery3idcliente: TIntegerField;
    FDQuery3idproduto: TIntegerField;
    FDQuery3nome: TStringField;
    FDQuery3descricao: TStringField;
    FDQuery3qtde: TSingleField;
    FDQuery3idumedida: TIntegerField;
    FDQuery3idcat: TIntegerField;
    FDQuery3idsubcat: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
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
  dtmVenda: TdtmVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

procedure TdtmVenda.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmVenda.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if ClientDataSet1.ChangeCount > 0 then
  ClientDataSet1.ApplyUpdates(0);
end;

procedure TdtmVenda.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
  Action := raCancel;
end;

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
  FDQuery2.Open;
  ClientDataSet1.Open;
end;

end.
