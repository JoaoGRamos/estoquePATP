object dtmFornecedores: TdtmFornecedores
  OldCreateOrder = False
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
    Left = 192
    Top = 232
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 192
    Top = 168
  end
end