object PagesDlg: TPagesDlg
  Left = 195
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Tabbed Notebook Dialog'
  ClientHeight = 300
  ClientWidth = 471
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 266
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    ExplicitWidth = 427
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 461
      Height = 256
      ActivePage = tabRuntime
      Align = alClient
      TabOrder = 0
      object tabRuntime: TTabSheet
        Caption = 'Runtime Calculator'
        ExplicitLeft = 44
        ExplicitTop = 40
        object Panel3: TPanel
          Left = 0
          Top = 46
          Width = 451
          Height = 115
          AutoSize = True
          BevelOuter = bvNone
          Caption = 'Panel3'
          Locked = True
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentColor = True
          TabOrder = 0
          object input: TGroupBox
            Left = 5
            Top = 5
            Width = 265
            Height = 81
            Caption = 'Input'
            Color = clGradientActiveCaption
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object current: TLabel
              Left = 15
              Top = 51
              Width = 102
              Height = 13
              Caption = 'Current Load in amps'
            end
            object batt: TLabel
              Left = 15
              Top = 24
              Width = 115
              Height = 13
              Caption = 'Battery Capacity in mah'
            end
            object battIN: TEdit
              Left = 136
              Top = 21
              Width = 121
              Height = 21
              Color = clGradientInactiveCaption
              TabOrder = 0
              Text = '0'
            end
            object loadIN: TEdit
              Left = 136
              Top = 48
              Width = 121
              Height = 21
              Color = clGradientInactiveCaption
              TabOrder = 1
              Text = '0'
            end
          end
          object run: TButton
            Left = 276
            Top = 5
            Width = 169
            Height = 41
            Caption = 'Calculate'
            Style = bsCommandLink
            TabOrder = 1
            OnClick = runClick
          end
          object GroupBox1: TGroupBox
            Left = 276
            Top = 52
            Width = 170
            Height = 58
            Caption = 'GroupBox1'
            Color = clGradientActiveCaption
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object runtime: TLabel
              Left = 16
              Top = 28
              Width = 90
              Height = 13
              Caption = 'Runtime in minutes'
            end
            object runtimeOUT: TLabel
              Left = 120
              Top = 24
              Width = 31
              Height = 13
              AutoSize = False
              Caption = '--------'
              Color = clGradientInactiveCaption
              ParentColor = False
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ExplicitWidth = 409
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ExplicitWidth = 409
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 471
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 427
    object OKBtn: TButton
      Left = 187
      Top = 2
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelBtn: TButton
      Left = 267
      Top = 2
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object HelpBtn: TButton
      Left = 347
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Help'
      TabOrder = 2
    end
  end
end
