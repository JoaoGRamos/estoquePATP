object dtmFornecedores: TdtmFornecedores
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 349
  Width = 470
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from fornecedor')
    Left = 192
    Top = 96
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
    Top = 232
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 192
    Top = 168
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from fornecedor')
    Left = 280
    Top = 104
    object FDQuery2idfornecedor: TFDAutoIncField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery2nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery2cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 95
    end
    object FDQuery2fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'fone'
      Size = 95
    end
    object FDQuery2email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 95
    end
  end
end
