object frmCadCat: TfrmCadCat
  Left = 0
  Top = 0
  Caption = 'Cadastrar Categoria'
  ClientHeight = 192
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label2: TLabel
    Left = 32
    Top = 70
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Button1: TButton
    Left = 22
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 89
    Width = 121
    Height = 21
    DataField = 'catnome'
    DataSource = DataSource1
    TabOrder = 2
  end
  object ID: TDBEdit
    Left = 32
    Top = 35
    Width = 121
    Height = 21
    DataField = 'idcat'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = dtmCategoria.ClientDataSet1
    Left = 88
    Top = 152
  end
end
