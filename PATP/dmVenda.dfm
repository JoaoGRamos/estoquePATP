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
    Active = True
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
  end
  object FDQuery2: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from venda')
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
  end
end
