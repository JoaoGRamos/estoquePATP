object frmCompra: TfrmCompra
  Left = 0
  Top = 0
  Caption = 'Compra'
  ClientHeight = 484
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
    Left = -2
    Top = 112
    Width = 747
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
    Columns = <
      item
        Expanded = False
        FieldName = 'idcompra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precototal'
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 301
        Visible = True
      end>
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
    object Editar: TButton
      Left = 201
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = EditarClick
    end
    object Novo: TButton
      Left = 112
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
      OnClick = NovoClick
    end
    object Fechar: TButton
      Left = 566
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 3
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
    object label3: TLabel
      Left = 55
      Top = 22
      Width = 102
      Height = 13
      Caption = 'Nome do fornecedor:'
    end
    object Label4: TLabel
      Left = 500
      Top = 21
      Width = 6
      Height = 13
      Caption = #224
    end
    object eNome: TEdit
      Left = 164
      Top = 18
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object dpData1: TDateTimePicker
      Left = 396
      Top = 17
      Width = 89
      Height = 21
      Date = 44524.000000000000000000
      Time = 0.598295625000901100
      Enabled = False
      TabOrder = 1
    end
    object dpData2: TDateTimePicker
      Left = 520
      Top = 17
      Width = 89
      Height = 21
      Date = 44524.000000000000000000
      Time = 0.598295625000901100
      Enabled = False
      TabOrder = 2
    end
    object chkUsardata: TCheckBox
      Left = 313
      Top = 19
      Width = 77
      Height = 17
      Caption = 'Usar data?'
      TabOrder = 3
      OnClick = chkUsardataClick
    end
    object Button1: TButton
      Left = 639
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = dtmCompra.FDQuery6
    Left = 688
    Top = 392
  end
end
