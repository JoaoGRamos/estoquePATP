object EdCliente: TEdCliente
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 272
  ClientWidth = 263
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
    Top = 13
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 32
    Top = 61
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 32
    Top = 109
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label4: TLabel
    Left = 33
    Top = 157
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object ID: TDBEdit
    Left = 32
    Top = 34
    Width = 121
    Height = 21
    DataField = 'idcliente'
    DataSource = DataSource1
    TabOrder = 0
  end
  object Nome: TDBEdit
    Left = 32
    Top = 80
    Width = 121
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object CPF: TDBEdit
    Left = 32
    Top = 128
    Width = 121
    Height = 21
    DataField = 'cpf'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Telefone: TDBEdit
    Left = 32
    Top = 176
    Width = 121
    Height = 21
    DataField = 'fone'
    DataSource = DataSource1
    TabOrder = 3
  end
  object Salvar: TButton
    Left = 33
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = SalvarClick
  end
  object Cancelar: TButton
    Left = 136
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = CancelarClick
  end
  object DataSource1: TDataSource
    DataSet = dtmClientes.ClientDataSet1
    Left = 200
    Top = 32
  end
end
