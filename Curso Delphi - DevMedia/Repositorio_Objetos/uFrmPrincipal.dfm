object FrmPrincipal: TFrmPrincipal
  Left = 498
  Top = 59
  Caption = 'FrmPrincipal'
  ClientHeight = 153
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object PnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 239
    Height = 153
    Align = alClient
    TabOrder = 0
    ExplicitTop = 40
    ExplicitWidth = 447
    ExplicitHeight = 161
    object BtnTela1: TButton
      Left = 32
      Top = 65
      Width = 75
      Height = 25
      Caption = 'Tela 1'
      TabOrder = 0
      OnClick = BtnTela1Click
    end
    object BtnTela2: TButton
      Left = 128
      Top = 65
      Width = 75
      Height = 25
      Caption = 'Tela2'
      TabOrder = 1
      OnClick = BtnTela2Click
    end
  end
end
