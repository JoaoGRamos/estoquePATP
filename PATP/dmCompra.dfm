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
    Left = 152
    Top = 48
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 152
    Top = 104
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    AfterDelete = ClientDataSet1AfterDelete
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 152
    Top = 168
  end
  object FDQuery2: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from compra')
    Left = 232
    Top = 48
    object FDQuery2idcompra: TFDAutoIncField
      FieldName = 'idcompra'
      Origin = 'idcompra'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery2datacompra: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacompra'
      Origin = 'datacompra'
    end
    object FDQuery2precototal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'precototal'
      Origin = 'precototal'
      Size = 95
    end
    object FDQuery2idfornecedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
  end
end