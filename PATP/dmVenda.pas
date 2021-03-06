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
    ClientDataSet1idvenda: TAutoIncField;
    ClientDataSet1datavenda: TDateField;
    ClientDataSet1precototal: TStringField;
    ClientDataSet1idcliente: TIntegerField;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    FDQuery2idvenda: TIntegerField;
    FDQuery2idproduto: TIntegerField;
    FDQuery3idcliente: TIntegerField;
    FDQuery3nome: TStringField;
    FDQuery3cpf: TStringField;
    FDQuery3fone: TStringField;
    FDQuery1datavenda: TDateField;
    FDQuery1precototal: TStringField;
    FDQuery1idcliente: TIntegerField;
    FDQuery4proximo_id: TLargeintField;
    FDQuery5idproduto: TIntegerField;
    FDQuery5nome: TStringField;
    FDQuery5qtde: TSingleField;
    FDQuery5idumedida: TIntegerField;
    FDQuery5idcat: TIntegerField;
    FDQuery6idvenda: TIntegerField;
    FDQuery6datavenda: TDateField;
    FDQuery6precototal: TStringField;
    FDQuery6idcliente: TIntegerField;
    FDQuery6nome: TStringField;
    FDQuery6produto: TLargeintField;
    ClientDataSet1FDQuery2: TDataSetField;
    ClientDataSet1NomeCliente: TStringField;
    ClientDataSet2idvenda: TIntegerField;
    ClientDataSet2idproduto: TIntegerField;
    ClientDataSet2NomeProduto: TStringField;
    FDQuery5valorunitario: TSingleField;
    FDQuery2valorunitario: TLargeintField;
    FDQuery2valortotal: TLargeintField;
    FDQuery2qtde: TIntegerField;
    ClientDataSet2valorunitario: TLargeintField;
    ClientDataSet2valortotal: TLargeintField;
    ClientDataSet2qtde: TIntegerField;
    FDQuery1idvenda: TIntegerField;
    FDQuery7: TFDQuery;
    FDQuery8: TFDQuery;
    FDQuery8qtde: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ClientDataSet1BeforeDelete(DataSet: TDataSet);
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure ClientDataSet2BeforeDelete(DataSet: TDataSet);
    procedure ClientDataSet2BeforeEdit(DataSet: TDataSet);
    procedure ClientDataSet2BeforePost(DataSet: TDataSet);
    procedure ClientDataSet2NewRecord(DataSet: TDataSet);
    procedure DataSetProvider1BeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ClientDataSet2idprodutoChange(Sender: TField);
    procedure ClientDataSet2qtdeChange(Sender: TField);
    procedure ClientDataSet2valorunitarioChange(Sender: TField);
    procedure ClientDataSet2ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    totalantigo : Double;
    proximoId : Integer;
    function getProximoId : Integer;
    function getQtdeantigo(nota,produto : integer) : Double;
  public
    procedure AplicarMudancas;
    procedure SubtrairProduto(produto : integer; qtde: double; qtdeantigo: double);
  end;

var
  dtmVenda: TdtmVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmConexao;

{$R *.dfm}

procedure TdtmVenda.AplicarMudancas;
begin
  dtmConexao.FDConnection1.StartTransaction;
  try
    ClientDataSet1.ApplyUpdates(-1);
    dtmConexao.FDConnection1.CommitRetaining; // .Commit;
    if proximoId > 0 then
    begin
      ClientDataSet1.Close;
      ClientDataSet2.Close;
      ClientDataSet1.Open;
      ClientDataSet2.Open;
      ClientDataSet1.Locate('idvenda', proximoId, []);
    end;
  except
    on E: exception do
    begin
      dtmConexao.FDConnection1.RollbackRetaining; // .Rollback;
      ShowMessage('Mudan?as Canceladas. Ocorreu o erro: ' + E.message);
    end;
  end;
end;

procedure TdtmVenda.ClientDataSet1AfterDelete(DataSet: TDataSet); //CDS1 After Delete
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TdtmVenda.ClientDataSet1BeforeDelete(DataSet: TDataSet); // CDS1 Before Delete
begin
  ClientDataSet2.First;
  while not ClientDataSet2.eof do
  begin
    ClientDataSet2.Delete;
  end;
end;

procedure TdtmVenda.ClientDataSet1NewRecord(DataSet: TDataSet); //CDS1 New Record
begin
  ClientDataSet1idvenda.AsInteger  := 0;
  ClientDataSet1precototal.AsFloat := 0;
end;

procedure TdtmVenda.ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet; //CDS1 Reconcile Error
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
  Action := raCancel;
end;

procedure TdtmVenda.ClientDataSet2BeforeDelete(DataSet: TDataSet); // CDS2 Before Delete
begin
  ClientDataSet1precototal.AsFloat := ClientDataSet1precototal.AsFloat - ClientDataSet2valortotal.AsFloat;
end;

procedure TdtmVenda.ClientDataSet2BeforeEdit(DataSet: TDataSet); // CDS2 Before Edit
begin
  totalantigo := ClientDataSet2valortotal.AsFloat;
end;

procedure TdtmVenda.ClientDataSet2BeforePost(DataSet: TDataSet); // CDS2 Before Post
begin
  ClientDataSet1precototal.AsFloat := ClientDataSet1precototal.AsFloat - totalantigo + ClientDataSet2valortotal.AsFloat;
end;

procedure TdtmVenda.ClientDataSet2idprodutoChange(Sender: TField); // CDS2 produto On Change
begin
  if FDQuery5idproduto.AsInteger <> ClientDataSet2idproduto.AsInteger then
    FDQuery5.Locate('idproduto', ClientDataSet2idproduto.AsInteger, []);
  ClientDataSet2valorunitario.AsFloat := FDQuery5valorunitario.AsFloat;
end;

procedure TdtmVenda.ClientDataSet2NewRecord(DataSet: TDataSet); // CDS2 New Record
begin
  ClientDataSet2idvenda.AsInteger  := ClientDataSet1idvenda.AsInteger;
  ClientDataSet2valortotal.AsFloat := 0;
  totalantigo                      := 0;
end;

procedure TdtmVenda.ClientDataSet2qtdeChange(Sender: TField); // CDS2 qtde On Change
begin
  ClientDataSet2valortotal.AsFloat := ClientDataSet2valorunitario.AsFloat * ClientDataSet2qtde.AsFloat;
end;

procedure TdtmVenda.ClientDataSet2ReconcileError(DataSet: TCustomClientDataSet; // CDS2 Reconcile Error
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
  Action := raCancel;
end;

procedure TdtmVenda.ClientDataSet2valorunitarioChange(Sender: TField); // CDS2 valorunitario On Change
begin
  ClientDataSet2valortotal.AsFloat := ClientDataSet2valorunitario.AsFloat * ClientDataSet2qtde.AsFloat;
end;

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
  FDQuery6.Open;
  ClientDataSet1.Open;
  ClientDataSet2.Open;
end;

procedure TdtmVenda.DataSetProvider1BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean); // DSP Before Updade Record

var
  prox: integer;
begin
  if (UpdateKind = ukInsert) then
  begin
    if SourceDS.Name = FDQuery1.Name then
    begin
      proximoId := getProximoId;
      DeltaDS.Edit;
      DeltaDS.FieldByName('idvenda').Value := proximoId;
      DeltaDS.Post;
    end
    else
    begin
      if SourceDS.Name = FDQuery2.Name then
      begin
        if proximoId > 0 then
        begin
          DeltaDS.First;
          while not DeltaDS.eof do
          begin
            DeltaDS.Edit;
            DeltaDS.FieldByName('idvenda').Value := proximoId;
            DeltaDS.Post;
            SubtrairProduto(DeltaDS.FieldByName('idproduto').AsInteger, DeltaDS.FieldByName('qtde').AsFloat, 0);
            DeltaDS.Next;
          end;
        end;
      end;
    end;
  end
  else
  begin
     proximoId := 0;
     if (UpdateKind = ukDelete) then
     begin
       if SourceDS.Name = FDQuery2.Name then
         SubtrairProduto(DeltaDS.FieldByName('idproduto').AsInteger, -DeltaDS.FieldByName('qtde').AsFloat, 0);
     end
     else
     if (UpdateKind = ukModify) then
     begin
       if SourceDS.Name = FDQuery2.Name then
       begin
          SubtrairProduto(SourceDS.FieldByName('idproduto').AsInteger,
            DeltaDS.FieldByName('qtde').AsFloat,SourceDS.FieldByName('qtde').AsFloat);

       end;
     end;
  end;
end;

function TdtmVenda.getProximoId: integer;
begin
  FDQuery4.Close;
  FDQuery4.Open;
  result := FDQuery4proximo_id.AsInteger;
end;

function TdtmVenda.getQtdeantigo(nota,produto: integer): Double;
begin
  FDQuery8.Close;
  FDQuery8.ParamByName('idv').AsInteger := nota;
  FDQuery8.ParamByName('idp').AsInteger := produto;
  FDQuery8.Open;
  result := FDQuery8qtde.AsFloat;
end;

procedure TdtmVenda.SubtrairProduto(produto : integer; qtde: double; qtdeantigo: double);
begin
  FDQuery7.Close;
  FDQuery7.ParamByName('qt').AsFloat := qtde;
  FDQuery7.ParamByName('id').AsInteger := produto;
  FDQuery7.ParamByName('qtantigo').Asfloat := qtdeantigo;
  FDQuery7.ExecSQL;
end;

end.
