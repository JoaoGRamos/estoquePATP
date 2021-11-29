object dtmVenda: TdtmVenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 354
  Width = 404
  object FDQuery1: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from venda')
    Left = 64
    Top = 48
    object FDQuery1idvenda: TIntegerField
      FieldName = 'idvenda'
      Required = True
    end
    object FDQuery1datavenda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object FDQuery1precototal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery1idcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    BeforeUpdateRecord = DataSetProvider1BeforeUpdateRecord
    Left = 64
    Top = 152
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    BeforeDelete = ClientDataSet1BeforeDelete
    AfterDelete = ClientDataSet1AfterDelete
    OnNewRecord = ClientDataSet1NewRecord
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 56
    Top = 232
    object ClientDataSet1idvenda: TAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientDataSet1datavenda: TDateField
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object ClientDataSet1precototal: TStringField
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object ClientDataSet1idcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object ClientDataSet1FDQuery2: TDataSetField
      FieldName = 'FDQuery2'
    end
    object ClientDataSet1NomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = FDQuery3
      LookupKeyFields = 'idcliente'
      LookupResultField = 'nome'
      KeyFields = 'idcliente'
      Size = 95
      Lookup = True
    end
  end
  object FDQuery2: TFDQuery
    Active = True
    MasterSource = DataSource1
    MasterFields = 'idvenda'
    DetailFields = 'idvenda'
    Connection = dtmConexao.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from itensvenda i '
      'where i.idvenda = :idvenda')
    Left = 152
    Top = 48
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 7
      end>
    object FDQuery2idvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2qtde: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQuery2valorunitario: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object FDQuery2valortotal: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object FDQuery2idproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object FDQuery3: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from cliente'
      'order by nome')
    Left = 224
    Top = 56
    object FDQuery3idcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery3nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery3cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 95
    end
    object FDQuery3fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'fone'
      Size = 95
    end
  end
  object FDQuery4: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select ifnull(max(v.idvenda)+1, 1) proximo_id'
      'from venda v')
    Left = 152
    Top = 120
    object FDQuery4proximo_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'proximo_id'
      Origin = 'proximo_id'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQuery5: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produto'
      'order by nome')
    Left = 224
    Top = 120
    object FDQuery5idproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery5nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery5qtde: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQuery5idumedida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idumedida'
      Origin = 'idumedida'
    end
    object FDQuery5idcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcat'
      Origin = 'idcat'
    end
    object FDQuery5valorunitario: TSingleField
      FieldName = 'valorunitario'
    end
  end
  object FDQuery6: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select v.*, c.nome, count(*) produto'
      'from venda v '
      '     inner join cliente c on c.idcliente = v.idcliente'
      '     left join itensvenda i on i.idvenda = v.idvenda'
      'group by v.idvenda '
      'order by v.datavenda, v.idvenda')
    Left = 224
    Top = 192
    object FDQuery6idvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery6datavenda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object FDQuery6precototal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery6idcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object FDQuery6nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
    object FDQuery6produto: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ClientDataSet1FDQuery2
    Params = <>
    BeforeEdit = ClientDataSet2BeforeEdit
    BeforePost = ClientDataSet2BeforePost
    BeforeDelete = ClientDataSet2BeforeDelete
    OnNewRecord = ClientDataSet2NewRecord
    OnReconcileError = ClientDataSet2ReconcileError
    Left = 144
    Top = 232
    object ClientDataSet2idvenda: TIntegerField
      DisplayWidth = 10
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet2idproduto: TIntegerField
      DisplayWidth = 10
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = ClientDataSet2idprodutoChange
    end
    object ClientDataSet2NomeProduto: TStringField
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FDQuery5
      LookupKeyFields = 'idproduto'
      LookupResultField = 'nome'
      KeyFields = 'idproduto'
      Size = 95
      Lookup = True
    end
    object ClientDataSet2valorunitario: TLargeintField
      DisplayWidth = 15
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      OnChange = ClientDataSet2valorunitarioChange
    end
    object ClientDataSet2valortotal: TLargeintField
      DisplayWidth = 15
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object ClientDataSet2qtde: TIntegerField
      DisplayWidth = 10
      FieldName = 'qtde'
      Origin = 'qtde'
      OnChange = ClientDataSet2qtdeChange
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 64
    Top = 104
  end
  object FDQuery7: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'update produto p '
      'set p.qtde = p.qtde + :qtantigo - :qt'
      'where p.idproduto = :id ')
    Left = 296
    Top = 192
    ParamData = <
      item
        Name = 'QTANTIGO'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'QT'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQuery8: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select i.qtde from itensvenda i'
      'where idvenda = :idv'
      'and idproduto = :idp')
    Left = 352
    Top = 192
    ParamData = <
      item
        Name = 'IDV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery8qtde: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'qtde'
    end
  end
end
