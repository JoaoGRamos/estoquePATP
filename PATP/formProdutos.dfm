object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'frmProdutos'
  ClientHeight = 394
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 251
    Top = 8
    Width = 165
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 489
    Height = 306
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Novo: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
  end
  object Editar: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
  end
  object Deletar: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 4
  end
  object Fechar: TButton
    Left = 422
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = dtmProdutos.FDQuery2
    Left = 32
    Top = 344
  end
end