object dtmCategoria: TdtmCategoria
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 323
  Width = 462
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from categoria')
    Left = 192
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 192
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    AfterDelete = ClientDataSet1AfterDelete
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 192
    Top = 184
    object ClientDataSet1idcat: TAutoIncField
      FieldName = 'idcat'
      Origin = 'idcat'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClientDataSet1catnome: TStringField
      FieldName = 'catnome'
      Origin = 'catnome'
      Size = 95
    end
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from categoria')
    Left = 272
    Top = 64
    object FDQuery2idcat: TFDAutoIncField
      FieldName = 'idcat'
      Origin = 'idcat'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery2catnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'catnome'
      Origin = 'catnome'
      Size = 95
    end
  end
end
