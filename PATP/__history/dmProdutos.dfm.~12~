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
  end
  object FDQuery2: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produto')
    Left = 184
    Top = 64
    object FDQuery2idproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQuery2nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery2descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 95
    end
    object FDQuery2qtde: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQuery2idumedida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idumedida'
      Origin = 'idumedida'
    end
    object FDQuery2idcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcat'
      Origin = 'idcat'
    end
    object FDQuery2idsubcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idsubcat'
      Origin = 'idsubcat'
    end
  end
end
