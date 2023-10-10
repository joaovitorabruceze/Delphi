inherited FrmTela2: TFrmTela2
  Caption = 'FrmTela2'
  ClientHeight = 184
  ClientWidth = 415
  ExplicitWidth = 431
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 13
  object PnlCadastro: TPanel [0]
    Left = 0
    Top = 0
    Width = 415
    Height = 184
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 288
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object BtnCadastrar: TButton
      Left = 176
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 3
    end
    object LblEdtUser: TLabeledEdit
      Left = 32
      Top = 64
      Width = 153
      Height = 21
      EditLabel.Width = 135
      EditLabel.Height = 13
      EditLabel.Caption = 'Escolha um nome de usu'#225'rio'
      TabOrder = 0
    end
    object LblEdtSenha: TLabeledEdit
      Left = 240
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 91
      EditLabel.Height = 13
      EditLabel.Caption = 'Escolha uma senha'
      TabOrder = 1
    end
    object LblEdtConfSenha: TLabeledEdit
      Left = 240
      Top = 82
      Width = 121
      Height = 21
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = 'Confirme a senha'
      TabOrder = 2
    end
  end
  inherited FadeIn: TTimer
    Left = 16
    Top = 136
  end
  inherited FadeOut: TTimer
    Left = 64
    Top = 136
  end
end
