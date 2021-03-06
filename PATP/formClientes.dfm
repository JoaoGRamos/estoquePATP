object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 379
  ClientWidth = 640
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
    Left = 0
    Top = 111
    Width = 642
    Height = 273
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
        FieldName = 'idcliente'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone'
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 641
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
      Left = 296
      Top = 18
      Width = 190
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object Novo: TButton
      Left = 37
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = NovoClick
    end
    object Editar: TButton
      Left = 118
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = EditarClick
    end
    object Deletar: TButton
      Left = 199
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 3
      OnClick = DeletarClick
    end
    object Fechar: TButton
      Left = 528
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
    Width = 641
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
    object pNome: TEdit
      Left = 108
      Top = 15
      Width = 157
      Height = 21
      TabOrder = 0
    end
    object Pesquisar: TButton
      Left = 296
      Top = 13
      Width = 89
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = PesquisarClick
    end
  end
  object DataSource1: TDataSource
    DataSet = dtmClientes.FDQuery2
    Left = 576
    Top = 328
  end
end
