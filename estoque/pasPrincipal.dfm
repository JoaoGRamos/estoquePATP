object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Controle de estoque'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 56
    object Cadastro: TMenuItem
      Caption = 'Cadastro'
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
      object Categoria1: TMenuItem
        Caption = 'Categoria'
        OnClick = Categoria1Click
      end
      object Subcategoria1: TMenuItem
        Caption = 'Subcategoria'
        OnClick = Subcategoria1Click
      end
      object UnidadedeMedida1: TMenuItem
        Caption = 'Unidade de Medida'
        OnClick = UnidadedeMedida1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object Frornecedor1: TMenuItem
        Caption = 'Frornecedor'
        OnClick = Frornecedor1Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Forncedores1: TMenuItem
        Caption = 'Forncedores'
        OnClick = Forncedores1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object Venda1: TMenuItem
        Caption = 'Venda'
        OnClick = Venda1Click
      end
      object Compra1: TMenuItem
        Caption = 'Compra'
        OnClick = Compra1Click
      end
    end
  end
end