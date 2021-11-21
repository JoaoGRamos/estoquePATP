object DataModule5: TDataModule5
  OldCreateOrder = False
  Height = 292
  Width = 400
  object FDQuery1: TFDQuery
    Active = True
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from unidademedida')
    Left = 168
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 168
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 168
    Top = 184
    object ClientDataSet1idumedida: TAutoIncField
      FieldName = 'idumedida'
      ReadOnly = True
    end
    object ClientDataSet1umedida: TStringField
      FieldName = 'umedida'
      Size = 95
    end
  end
end
