object EditVenda: TEditVenda
  Left = 0
  Top = 0
  Caption = 'EditVenda'
  ClientHeight = 466
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 13
    Width = 75
    Height = 13
    Caption = 'Data da Venda:'
  end
  object Label3: TLabel
    Left = 189
    Top = 13
    Width = 80
    Height = 13
    Caption = 'Nome do cliente:'
  end
  object Label4: TLabel
    Left = 482
    Top = 428
    Width = 58
    Height = 13
    Caption = 'Pre'#231'o Total:'
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 21
    DataField = 'datavenda'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit4: TDBEdit
    Left = 551
    Top = 425
    Width = 121
    Height = 21
    DataField = 'precototal'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 28
    Top = 423
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 122
    Top = 423
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 135
    Width = 697
    Height = 281
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 3
    Top = 93
    Width = 690
    Height = 36
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 189
    Top = 32
    Width = 145
    Height = 21
    DataField = 'NomeCliente'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = dtmVenda.ClientDataSet1
    Left = 632
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = dtmVenda.ClientDataSet2
    Left = 632
    Top = 360
  end
end
