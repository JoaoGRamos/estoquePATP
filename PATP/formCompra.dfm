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
    Left = 8
    Top = 152
    Width = 593
    Height = 297
    DataSource = DataSource1
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
    Width = 745
    Height = 66
    Caption = 'Panel1'
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 292
      Top = 15
      Width = 165
      Height = 26
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object Deletar: TButton
      Left = 194
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 1
    end
    object Editar: TButton
      Left = 113
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = EditarClick
    end
    object Novo: TButton
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = NovoClick
    end
    object Fechar: TButton
      Left = 478
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = FecharClick
    end
  end
  object DataSource1: TDataSource
    DataSet = dtmCompra.FDQuery2
    Left = 704
    Top = 384
  end
end
