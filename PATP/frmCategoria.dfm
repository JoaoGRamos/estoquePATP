object formCategoria: TformCategoria
  Left = 0
  Top = 0
  Caption = 'Cadastro de Categoria'
  ClientHeight = 376
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 657
    Height = 280
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 42
    TabOrder = 1
    object Novo: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = NovoClick
    end
    object Fechar: TButton
      Left = 517
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = FecharClick
    end
    object Excluir: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = ExcluirClick
    end
    object Editar: TButton
      Left = 119
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 3
      OnClick = EditarClick
    end
    object DBNavigator1: TDBNavigator
      Left = 329
      Top = 7
      Width = 150
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 657
    Height = 47
    TabOrder = 2
    object Label1: TLabel
      Left = 35
      Top = 6
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
    object Label2: TLabel
      Left = 120
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object EdNome: TEdit
      Left = 157
      Top = 13
      Width = 171
      Height = 21
      TabOrder = 0
    end
  end
  object BtPesquisa: TButton
    Left = 340
    Top = 53
    Width = 75
    Height = 23
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = BtPesquisaClick
  end
  object DataSource1: TDataSource
    DataSet = dtmCategoria.FDQuery2
    Left = 616
    Top = 40
  end
end
