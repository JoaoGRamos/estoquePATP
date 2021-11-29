object dtmClientes: TdtmClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 320
  Width = 461
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from cliente')
    Left = 88
    Top = 56
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 88
    Top = 112
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    AfterDelete = ClientDataSet1AfterDelete
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 88
    Top = 176
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from cliente')
    Left = 192
    Top = 64
    object FDQuery2idcliente: TFDAutoIncField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery2nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      DisplayWidth = 95
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery2cpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      DisplayWidth = 43
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 95
    end
    object FDQuery2fone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      DisplayWidth = 95
      FieldName = 'fone'
      Origin = 'fone'
      Size = 95
    end
  end
end
