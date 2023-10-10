object FrmResultado: TFrmResultado
  Left = 0
  Top = 0
  Caption = 'Resultado'
  ClientHeight = 228
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlResultado: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 228
    Align = alClient
    TabOrder = 0
    object GrpBx: TGroupBox
      Left = 15
      Top = 15
      Width = 394
      Height = 184
      Caption = 'Suas informa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LblAltura: TLabel
        Left = 41
        Top = 48
        Width = 117
        Height = 25
        Caption = 'Altura.........:'
      end
      object LblPeso: TLabel
        Left = 39
        Top = 79
        Width = 116
        Height = 25
        Caption = 'Peso...........:'
      end
      object LblSexo: TLabel
        Left = 40
        Top = 110
        Width = 117
        Height = 25
        Caption = 'Sexo...........:'
      end
      object LblIMC: TLabel
        Left = 41
        Top = 141
        Width = 116
        Height = 25
        Caption = 'IMC............:'
      end
      object LblAlturaDinamica: TLabel
        Left = 176
        Top = 48
        Width = 86
        Height = 25
        Caption = '<Altura>'
      end
      object LblPesoDinamico: TLabel
        Left = 176
        Top = 79
        Width = 73
        Height = 25
        Caption = '<Peso>'
      end
      object LblSexoDinamico: TLabel
        Left = 176
        Top = 110
        Width = 74
        Height = 25
        Caption = '<Sexo>'
      end
      object LblIMCDinamico: TLabel
        Left = 176
        Top = 141
        Width = 67
        Height = 25
        Caption = '<IMC>'
      end
    end
  end
end
