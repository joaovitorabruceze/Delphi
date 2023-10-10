object FrmBase: TFrmBase
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 0
  ClientHeight = 188
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FadeIn: TTimer
    Enabled = False
    Interval = 25
    OnTimer = FadeInTimer
    Left = 8
    Top = 144
  end
  object FadeOut: TTimer
    Enabled = False
    Interval = 25
    OnTimer = FadeOutTimer
    Left = 56
    Top = 144
  end
end
