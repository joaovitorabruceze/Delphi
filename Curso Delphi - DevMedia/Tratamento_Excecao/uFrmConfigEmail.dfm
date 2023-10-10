object FrmConfigEmail: TFrmConfigEmail
  Left = 427
  Top = 266
  Caption = 'Configurar Email'
  ClientHeight = 224
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LblHost: TLabeledEdit
    Left = 40
    Top = 32
    Width = 200
    Height = 21
    DragMode = dmAutomatic
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Host'
    TabOrder = 0
  end
  object LblUsuario: TLabeledEdit
    Left = 40
    Top = 80
    Width = 200
    Height = 21
    EditLabel.Width = 81
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do Usu'#225'rio'
    TabOrder = 1
  end
  object LblSenha: TLabeledEdit
    Left = 40
    Top = 133
    Width = 200
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha'
    PasswordChar = '*'
    TabOrder = 2
  end
  object LblEmail: TLabeledEdit
    Left = 296
    Top = 80
    Width = 200
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Email'
    TabOrder = 3
  end
  object LblRemetente: TLabeledEdit
    Left = 296
    Top = 32
    Width = 200
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Remetente'
    TabOrder = 4
  end
  object BtBtnOk: TBitBtn
    Left = 421
    Top = 176
    Width = 75
    Height = 25
    TabOrder = 5
    OnClick = BtBtnOkClick
    Kind = bkOK
  end
end
