object EdtFornecedores: TEdtFornecedores
  Left = 0
  Top = 0
  Caption = 'Fornecedores'
  ClientHeight = 316
  ClientWidth = 347
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
    Top = 8
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 24
    Top = 53
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 24
    Top = 99
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label4: TLabel
    Left = 24
    Top = 147
    Width = 32
    Height = 13
    Caption = 'E-mail:'
  end
  object Label5: TLabel
    Left = 24
    Top = 195
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    DataField = 'idfornecedor'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 120
    Width = 121
    Height = 21
    DataField = 'fone'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 168
    Width = 121
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 216
    Width = 121
    Height = 21
    DataField = 'cnpj'
    DataSource = DataSource1
    TabOrder = 4
  end
  object BtSalvar: TButton
    Left = 56
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = BtSalvarClick
  end
  object BtCancelar: TButton
    Left = 168
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = BtCancelarClick
  end
  object DataSource1: TDataSource
    DataSet = dtmFornecedores.ClientDataSet1
    Left = 272
    Top = 72
  end
end
