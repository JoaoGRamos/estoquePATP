object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  Caption = 'frmFornecedores'
  ClientHeight = 375
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDblClick = FormDblClick
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = -1
    Top = 104
    Width = 754
    Height = 272
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idfornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 200
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 49
    TabOrder = 1
    object Cadastro: TLabel
      Left = 14
      Top = 3
      Width = 48
      Height = 13
      Caption = 'Cadastro:'
    end
    object DBNavigator1: TDBNavigator
      Left = 360
      Top = 17
      Width = 190
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object Novo: TButton
      Left = 80
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = NovoClick
    end
    object Editar: TButton
      Left = 174
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = EditarClick
    end
    object Deletar: TButton
      Left = 271
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 3
      OnClick = DeletarClick
    end
    object Fechar: TButton
      Left = 600
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = FecharClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 753
    Height = 56
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 6
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
    object Label2: TLabel
      Left = 69
      Top = 18
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 319
      Top = 18
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object pNome: TEdit
      Left = 108
      Top = 15
      Width = 157
      Height = 21
      TabOrder = 0
    end
    object Pesquisar: TButton
      Left = 600
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = PesquisarClick
    end
    object pCNPJ: TEdit
      Left = 358
      Top = 15
      Width = 163
      Height = 21
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = dtmFornecedores.FDQuery2
    Left = 488
    Top = 232
  end
end
