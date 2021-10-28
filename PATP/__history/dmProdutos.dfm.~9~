object dtmProdutos: TdtmProdutos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 354
  Width = 374
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produto')
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
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 88
    Top = 176
    object ClientDataSet1idproduto: TAutoIncField
      DisplayWidth = 10
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object ClientDataSet1nome: TStringField
      DisplayWidth = 8
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object ClientDataSet1descricao: TStringField
      DisplayWidth = 11
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 95
    end
    object ClientDataSet1qtde: TSingleField
      DisplayWidth = 10
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object ClientDataSet1idumedida: TIntegerField
      DisplayWidth = 10
      FieldName = 'idumedida'
      Origin = 'idumedida'
    end
    object ClientDataSet1idcat: TIntegerField
      DisplayWidth = 10
      FieldName = 'idcat'
      Origin = 'idcat'
    end
    object ClientDataSet1idsubcat: TIntegerField
      DisplayWidth = 10
      FieldName = 'idsubcat'
      Origin = 'idsubcat'
    end
  end
end
