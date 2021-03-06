object dtmCompra: TdtmCompra
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 309
  Width = 393
  object FDQuery1: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from compra')
    Left = 48
    Top = 48
    object FDQuery1idcompra: TIntegerField
      FieldName = 'idcompra'
      Origin = 'idcompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1datacompra: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacompra'
      Origin = 'datacompra'
    end
    object FDQuery1precototal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery1idfornecedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    BeforeUpdateRecord = DataSetProvider1BeforeUpdateRecord
    Left = 48
    Top = 152
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    BeforeDelete = ClientDataSet1BeforeDelete
    AfterDelete = ClientDataSet1AfterDelete
    OnNewRecord = ClientDataSet1NewRecord
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 48
    Top = 208
    object ClientDataSet1idcompra: TAutoIncField
      FieldName = 'idcompra'
      Origin = 'idcompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientDataSet1datacompra: TDateField
      FieldName = 'datacompra'
      Origin = 'datacompra'
    end
    object ClientDataSet1precototal: TStringField
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object ClientDataSet1idfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
    object ClientDataSet1FDQuery2: TDataSetField
      FieldName = 'FDQuery2'
    end
    object ClientDataSet1NomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFornecedor'
      LookupDataSet = FDQuery3
      LookupKeyFields = 'idfornecedor'
      LookupResultField = 'nome'
      KeyFields = 'idfornecedor'
      Size = 95
      Lookup = True
    end
  end
  object FDQuery2: TFDQuery
    MasterSource = DataSource1
    MasterFields = 'idcompra'
    DetailFields = 'idcompra'
    Connection = dtmConexao.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from itenscompra i '
      'where i.idcompra = :idcompra'
      '')
    Left = 128
    Top = 48
    ParamData = <
      item
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FDQuery2idcompra: TIntegerField
      FieldName = 'idcompra'
      Origin = 'idcompra'
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
    object FDQuery2valortotal: TSingleField
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
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 48
    Top = 104
  end
  object FDQuery3: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from fornecedor'
      'order by nome')
    Left = 208
    Top = 48
    object FDQuery3idfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery3nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery3cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 95
    end
    object FDQuery3fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'fone'
      Size = 95
    end
    object FDQuery3email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 95
    end
  end
  object FDQuery4: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select ifnull(max(c.idcompra)+1, 1) proximo_id'
      'from compra c')
    Left = 128
    Top = 112
    object FDQuery4proximo_id: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'proximo_id'
      Origin = 'proximo_id'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQuery5: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produto'
      'order by nome')
    Left = 208
    Top = 112
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
    object FDQuery5valorunitario: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
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
  end
  object FDQuery6: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select c.*, f.nome, count(*) produto'
      'from compra c'
      '     inner join fornecedor f on f.idfornecedor = c.idfornecedor'
      '     left join itenscompra i on i.idcompra = c.idcompra '
      'group by c.idcompra'
      'order by c.datacompra , c.idcompra ')
    Left = 208
    Top = 184
    object FDQuery6idcompra: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'idcompra'
      Origin = 'idcompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery6produto: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID Produto'
      DisplayWidth = 15
      FieldName = 'produto'
      Origin = 'produto'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery6datacompra: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data da compra'
      DisplayWidth = 10
      FieldName = 'datacompra'
      Origin = 'datacompra'
    end
    object FDQuery6precototal: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pre'#231'o Total'
      DisplayWidth = 95
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery6idfornecedor: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
      Visible = False
    end
    object FDQuery6nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Fornecedor'
      DisplayWidth = 95
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    DataSetField = ClientDataSet1FDQuery2
    Params = <>
    BeforeEdit = ClientDataSet2BeforeEdit
    BeforePost = ClientDataSet2BeforePost
    BeforeDelete = ClientDataSet2BeforeDelete
    OnNewRecord = ClientDataSet2NewRecord
    OnReconcileError = ClientDataSet2ReconcileError
    Left = 128
    Top = 208
    object ClientDataSet2idcompra: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'idcompra'
      Origin = 'idcompra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet2idproduto: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = ClientDataSet2idprodutoChange
    end
    object ClientDataSet2NomeProduto: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FDQuery5
      LookupKeyFields = 'idproduto'
      LookupResultField = 'nome'
      KeyFields = 'idproduto'
      Size = 95
      Lookup = True
    end
    object ClientDataSet2qtde: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtde'
      Origin = 'qtde'
      OnChange = ClientDataSet2qtdeChange
    end
    object ClientDataSet2valorunitario: TLargeintField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
      OnChange = ClientDataSet2valorunitarioChange
    end
    object ClientDataSet2valortotal: TSingleField
      DisplayLabel = 'Valor Total'
      FieldName = 'valortotal'
      Origin = 'valortotal'
      currency = True
    end
  end
  object FDQuery7: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'update produto p '
      'set p.qtde = p.qtde - :qtantigo + :qt'
      'where p.idproduto = :id ')
    Left = 272
    Top = 184
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
      'select i.qtde from itenscompra i'
      'where idcompra = :idc'
      'and idproduto = :idp')
    Left = 328
    Top = 184
    ParamData = <
      item
        Name = 'IDC'
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
