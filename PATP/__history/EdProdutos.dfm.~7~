object EdtProdutos: TEdtProdutos
  Left = 0
  Top = 0
  Caption = 'Editar produtos'
  ClientHeight = 350
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
    Left = 16
    Top = 5
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 16
    Top = 145
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label4: TLabel
    Left = 16
    Top = 99
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label5: TLabel
    Left = 16
    Top = 200
    Width = 95
    Height = 13
    Caption = 'Unidade de Medida:'
  end
  object Label6: TLabel
    Left = 16
    Top = 246
    Width = 51
    Height = 13
    Caption = 'Categoria:'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    DataField = 'idproduto'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 72
    Width = 121
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 118
    Width = 121
    Height = 21
    DataField = 'qtde'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 164
    Width = 121
    Height = 21
    DataField = 'valorunitario'
    DataSource = DataSource1
    TabOrder = 3
  end
  object BtSalvar: TButton
    Left = 16
    Top = 303
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BtSalvarClick
  end
  object BtCancelar: TButton
    Left = 112
    Top = 303
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BtCancelarClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 219
    Width = 121
    Height = 21
    DataField = 'Unidade de Medida'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 265
    Width = 121
    Height = 21
    DataField = 'Categoria'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = dtmProdutos.ClientDataSet1
    Left = 240
    Top = 128
  end
end
