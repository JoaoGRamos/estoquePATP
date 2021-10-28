object DataModule3: TDataModule3
  OldCreateOrder = False
  Height = 323
  Width = 462
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produto')
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
    Left = 192
    Top = 184
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
