object dtmProdutos: TdtmProdutos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 354
  Width = 374
  object FDQuery1: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produto')
    Left = 88
    Top = 56
    object FDQuery1idproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery1valorunitario: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'V. unitario'
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object FDQuery1qtde: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade'
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQuery1idumedida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idumedida'
      Origin = 'idumedida'
    end
    object FDQuery1idcat: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'U. medida'
      FieldName = 'idcat'
      Origin = 'idcat'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 88
    Top = 112
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    AfterDelete = ClientDataSet1AfterDelete
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 88
    Top = 176
    object ClientDataSet1idproduto: TAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object ClientDataSet1qtde: TSingleField
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object ClientDataSet1idumedida: TIntegerField
      FieldName = 'idumedida'
      Origin = 'idumedida'
    end
    object ClientDataSet1idcat: TIntegerField
      FieldName = 'idcat'
      Origin = 'idcat'
    end
    object ClientDataSet1UnidadedeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'Unidade de Medida'
      LookupDataSet = FDQuery3
      LookupKeyFields = 'idumedida'
      LookupResultField = 'umedida'
      KeyFields = 'idumedida'
      Size = 95
      Lookup = True
    end
    object ClientDataSet1Categoria: TStringField
      FieldKind = fkLookup
      FieldName = 'Categoria'
      LookupDataSet = FDQuery5
      LookupKeyFields = 'idcat'
      LookupResultField = 'catnome'
      KeyFields = 'idcat'
      Size = 95
      Lookup = True
    end
    object ClientDataSet1valorunitario: TSingleField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorunitario'
      currency = True
    end
  end
  object FDQuery2: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select * '
      'from produto p '
      'inner join unidademedida u '
      'on p.idumedida = u.idumedida'
      'inner join categoria c '
      'on p.idcat = c.idcat '
      '')
    Left = 184
    Top = 64
    object FDQuery2idproduto: TFDAutoIncField
      AutoGenerateValue = arNone
      DisplayLabel = 'ID'
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object FDQuery2nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Produto'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 95
    end
    object FDQuery2qtde: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantiadade'
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQuery2idcat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcat'
      Origin = 'idcat'
      Visible = False
    end
    object FDQuery2umedida: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade de Medida'
      FieldName = 'umedida'
      Origin = 'umedida'
      ProviderFlags = []
      ReadOnly = True
      Size = 95
    end
    object FDQuery2catnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'catnome'
      Origin = 'catnome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery2valorunitario: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Unitario'
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
  end
  object FDQuery3: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select * '
      'from unidademedida')
    Left = 184
    Top = 136
    object FDQuery3idumedida: TFDAutoIncField
      FieldName = 'idumedida'
      Origin = 'idumedida'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery3umedida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'umedida'
      Origin = 'umedida'
      Size = 95
    end
  end
  object FDQuery5: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from categoria')
    Left = 256
    Top = 64
  end
end
