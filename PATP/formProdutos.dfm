object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'frmProdutos'
  ClientHeight = 376
  ClientWidth = 761
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
    Left = 2
    Top = 96
    Width = 759
    Height = 278
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idproduto'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idsubcat'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 46
    TabOrder = 1
    object Cadastro: TLabel
      Left = 19
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Cadastro:'
    end
    object Novo: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = NovoClick
    end
    object Fechar: TButton
      Left = 606
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = FecharClick
    end
    object Editar: TButton
      Left = 185
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = EditarClick
    end
    object Deletar: TButton
      Left = 282
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 3
      OnClick = DeletarClick
    end
    object DBNavigator1: TDBNavigator
      Left = 412
      Top = 8
      Width = 165
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 761
    Height = 54
    TabOrder = 2
    object Label1: TLabel
      Left = 19
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
    object Label2: TLabel
      Left = 96
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
  end
  object Edit1: TEdit
    Left = 134
    Top = 66
    Width = 147
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 363
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = dtmProdutos.FDQuery2
    Left = 376
    Top = 216
  end
end
