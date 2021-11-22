object EditVenda: TEditVenda
  Left = 0
  Top = 0
  Caption = 'EditVenda'
  ClientHeight = 301
  ClientWidth = 292
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
    Left = 24
    Top = 13
    Width = 63
    Height = 13
    Caption = 'ID da Venda:'
  end
  object Label2: TLabel
    Left = 24
    Top = 59
    Width = 75
    Height = 13
    Caption = 'Data da Venda:'
  end
  object Label3: TLabel
    Left = 24
    Top = 105
    Width = 64
    Height = 13
    Caption = 'ID do cliente:'
  end
  object Label4: TLabel
    Left = 24
    Top = 151
    Width = 58
    Height = 13
    Caption = 'Pre'#231'o Total:'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    DataField = 'idvenda'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 78
    Width = 121
    Height = 21
    DataField = 'datavenda'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 124
    Width = 121
    Height = 21
    DataField = 'idcliente'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 170
    Width = 121
    Height = 21
    DataField = 'precototal'
    DataSource = DataSource1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 40
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 208
    Width = 145
    Height = 21
    DataField = 'NomeProduto'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = dtmVenda.ClientDataSet1
    Left = 216
    Top = 216
  end
end
