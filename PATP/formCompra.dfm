object frmCompra: TfrmCompra
  Left = 0
  Top = 0
  Caption = 'Compra'
  ClientHeight = 483
  ClientWidth = 743
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
    Top = 112
    Width = 740
    Height = 369
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 66
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 9
      Width = 48
      Height = 13
      Caption = 'Cadastro:'
    end
    object DBNavigator1: TDBNavigator
      Left = 380
      Top = 15
      Width = 165
      Height = 26
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object Deletar: TButton
      Left = 290
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 1
      OnClick = DeletarClick
    end
    object Editar: TButton
      Left = 201
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = EditarClick
    end
    object Novo: TButton
      Left = 112
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = NovoClick
    end
    object Fechar: TButton
      Left = 566
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = FecharClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 745
    Height = 49
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
  end
  object DataSource1: TDataSource
    DataSet = dtmCompra.FDQuery2
    Left = 688
    Top = 392
  end
end
