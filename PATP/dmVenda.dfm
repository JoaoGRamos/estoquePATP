object dtmVenda: TdtmVenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 281
  Width = 361
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from venda')
    Left = 136
    Top = 48
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 136
    Top = 104
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    AfterDelete = ClientDataSet1AfterDelete
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 136
    Top = 168
    object ClientDataSet1idvenda: TAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object ClientDataSet1NomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FDQuery3
      LookupKeyFields = 'idcliente'
      LookupResultField = 'nome'
      KeyFields = 'idvenda'
      Size = 95
      Lookup = True
    end
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from venda v '
      'inner join produto p '
      'on v.idvenda = p.idproduto')
    Left = 224
    Top = 56
    object FDQuery2idvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery2datavenda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object FDQuery2precototal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery2idcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object FDQuery2idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery2nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
    object FDQuery2descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
    object FDQuery2qtde: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'qtde'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery2idumedida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idumedida'
      Origin = 'idumedida'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery2idcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcat'
      Origin = 'idcat'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery2idsubcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idsubcat'
      Origin = 'idsubcat'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQuery3: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from venda v '
      'inner join produto p '
      'on v.idvenda = p.idproduto')
    Left = 224
    Top = 120
    object FDQuery3idvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery3datavenda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object FDQuery3precototal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery3idcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object FDQuery3idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery3nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
    object FDQuery3descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
    object FDQuery3qtde: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'qtde'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery3idumedida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idumedida'
      Origin = 'idumedida'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery3idcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcat'
      Origin = 'idcat'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery3idsubcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idsubcat'
      Origin = 'idsubcat'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
