object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de '#205'ndice de Massa Corporal (IMC)'
  ClientHeight = 282
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlCorpo: TPanel
    Left = 0
    Top = 56
    Width = 487
    Height = 226
    Align = alClient
    TabOrder = 0
    object LblAltura: TLabel
      Left = 130
      Top = 23
      Width = 49
      Height = 23
      Caption = 'Altura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblPeso: TLabel
      Left = 141
      Top = 75
      Width = 38
      Height = 23
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblSexo: TLabel
      Left = 139
      Top = 125
      Width = 40
      Height = 23
      Caption = 'Sexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnTabela: TButton
      Left = 259
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Ver Tabela'
      TabOrder = 0
      OnClick = BtnTabelaClick
    end
    object BtnResultado: TButton
      Left = 147
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Resultado'
      TabOrder = 4
      OnClick = BtnResultadoClick
    end
    object EdtAltura: TEdit
      Left = 193
      Top = 23
      Width = 173
      Height = 27
      Hint = 'Digite sua altura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object EdtPeso: TEdit
      Left = 193
      Top = 75
      Width = 173
      Height = 27
      Hint = 'Digite seu peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object CmbBx: TComboBox
      Left = 193
      Top = 125
      Width = 173
      Height = 27
      Hint = 'Escolha o sexo'
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Items.Strings = (
        'Masc'
        'Fem')
    end
  end
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 56
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    object LblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 485
      Height = 54
      Align = alClient
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = 'Calculadora de IMC'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Layout = tlCenter
      ExplicitWidth = 206
      ExplicitHeight = 29
    end
  end
end
