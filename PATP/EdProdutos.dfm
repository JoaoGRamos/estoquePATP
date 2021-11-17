object EdtProdutos: TEdtProdutos
  Left = 0
  Top = 0
  Caption = 'Editar produtos'
  ClientHeight = 296
  ClientWidth = 295
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
    Top = 21
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 32
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 32
    Top = 161
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label4: TLabel
    Left = 32
    Top = 115
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    DataField = 'idproduto'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 88
    Width = 121
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 134
    Width = 121
    Height = 21
    DataField = 'qtde'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 180
    Width = 121
    Height = 21
    DataField = 'descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object BtSalvar: TButton
    Left = 40
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BtSalvarClick
  end
  object BtCancelar: TButton
    Left = 136
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BtCancelarClick
  end
  object DataSource1: TDataSource
    DataSet = dtmProdutos.ClientDataSet1
    Left = 232
    Top = 144
  end
end
