object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 378
  ClientWidth = 632
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
    Top = 104
    Width = 633
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
        FieldName = 'idvenda'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datavenda'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precototal'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 279
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 633
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
      Left = 85
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = NovoClick
    end
    object Editar: TButton
      Left = 166
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = EditarClick
    end
    object Fechar: TButton
      Left = 528
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = FecharClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 633
    Height = 56
    TabOrder = 2
    object Label1: TLabel
      Left = 14
      Top = 6
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
    object c: TLabel
      Left = 11
      Top = 25
      Width = 80
      Height = 13
      Caption = 'Nome do cliente:'
    end
    object Label2: TLabel
      Left = 436
      Top = 25
      Width = 6
      Height = 13
      Caption = #224
    end
    object pNome: TEdit
      Left = 101
      Top = 21
      Width = 157
      Height = 21
      TabOrder = 0
    end
    object Pesquisar: TButton
      Left = 547
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = PesquisarClick
    end
    object dpData1: TDateTimePicker
      Left = 349
      Top = 21
      Width = 75
      Height = 21
      Date = 44524.000000000000000000
      Time = 0.576257627311861100
      Enabled = False
      TabOrder = 2
    end
    object dpData2: TDateTimePicker
      Left = 456
      Top = 21
      Width = 75
      Height = 21
      Date = 44524.000000000000000000
      Time = 0.576257627311861100
      Enabled = False
      TabOrder = 3
    end
    object chkUsardata: TCheckBox
      Left = 273
      Top = 22
      Width = 73
      Height = 17
      Caption = 'Usar data?'
      TabOrder = 4
      OnClick = chkUsardataClick
    end
  end
  object DataSource1: TDataSource
    DataSet = dtmVenda.FDQuery6
    Left = 576
    Top = 328
  end
end
