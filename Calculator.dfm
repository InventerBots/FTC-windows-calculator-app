object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 191
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object calculator: TPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 191
    ActivePage = TabSheet1
    TabOrder = 0
    object tab1: TTabSheet
      Caption = 'Runtime Calculator'
      object GroupBox1: TGroupBox
        Left = 492
        Top = 50
        Width = 170
        Height = 71
        Caption = 'Output'
        Color = clGradientActiveCaption
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object runtime: TLabel
          Left = 16
          Top = 24
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
        object watsOUT: TLabel
          Left = 120
          Top = 43
          Width = 32
          Height = 13
          AutoSize = False
          Caption = '--------'
        end
        object Label12: TLabel
          Left = 16
          Top = 43
          Width = 25
          Height = 13
          Caption = 'Wats'
        end
      end
      object input: TGroupBox
        Left = 3
        Top = 3
        Width = 406
        Height = 105
        Caption = 'Input'
        Color = clGradientActiveCaption
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        object current: TLabel
          Left = 156
          Top = 50
          Width = 102
          Height = 13
          Caption = 'Current Load in amps'
        end
        object batt: TLabel
          Left = 156
          Top = 23
          Width = 115
          Height = 13
          Caption = 'Battery Capacity in mah'
        end
        object Label10: TLabel
          Left = 156
          Top = 75
          Width = 75
          Height = 13
          Caption = 'Battery voltage'
        end
        object battIN: TEdit
          Left = 277
          Top = 20
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 0
          Text = '0'
        end
        object loadIN: TEdit
          Left = 277
          Top = 47
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 1
          Text = '0'
        end
        object ComboBox2: TComboBox
          Left = 5
          Top = 20
          Width = 145
          Height = 22
          Cursor = crHandPoint
          AutoDropDown = True
          Style = csOwnerDrawVariable
          Color = clGradientInactiveCaption
          TabOrder = 2
          OnChange = ComboBox2Change
          Items.Strings = (
            'Custom battery'
            'FTC 3000mah')
        end
      end
      object voltsIN: TEdit
        Left = 280
        Top = 77
        Width = 121
        Height = 21
        Color = clGradientInactiveCaption
        TabOrder = 2
        Text = '0'
      end
      object run: TButton
        Left = 492
        Top = 3
        Width = 226
        Height = 41
        Cursor = crHandPoint
        Caption = 'Calculate'
        Style = bsCommandLink
        TabOrder = 3
        OnClick = runClick
      end
    end
    object Tab2: TTabSheet
      Caption = 'Speed Calculator'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 3
        Top = 3
        Width = 457
        Height = 157
        Caption = 'Input'
        Color = clGradientActiveCaption
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object Label1: TLabel
          Left = 192
          Top = 23
          Width = 129
          Height = 13
          Caption = 'Motor torque ounce/inches'
        end
        object Label2: TLabel
          Left = 192
          Top = 49
          Width = 49
          Height = 13
          Caption = 'Motor rpm'
        end
        object Label3: TLabel
          Left = 192
          Top = 76
          Width = 88
          Height = 13
          Caption = 'gearbox reduction'
        end
        object Label4: TLabel
          Left = 192
          Top = 103
          Width = 88
          Height = 13
          Caption = 'external reduction'
        end
        object Label5: TLabel
          Left = 192
          Top = 130
          Width = 108
          Height = 13
          Caption = 'Wheel diameter inches'
        end
        object MpowerIN: TEdit
          Left = 327
          Top = 20
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 0
          Text = '0'
        end
        object MrpmIN: TEdit
          Left = 327
          Top = 46
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 1
          Text = '0'
        end
        object MreductionIN: TEdit
          Left = 327
          Top = 73
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 2
          Text = '1'
        end
        object reductionIN: TEdit
          Left = 327
          Top = 100
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 3
          Text = '1'
        end
        object WdIN: TEdit
          Left = 327
          Top = 127
          Width = 121
          Height = 21
          Cursor = crIBeam
          Color = clGradientInactiveCaption
          TabOrder = 4
          Text = '0'
        end
        object ComboBox1: TComboBox
          Left = 3
          Top = 20
          Width = 170
          Height = 22
          Cursor = crHandPoint
          Style = csOwnerDrawVariable
          Color = clGradientInactiveCaption
          TabOrder = 5
          OnChange = ComboBox1Change
          Items.Strings = (
            'Custom motor'
            'REV HD Hex motor'
            'REV HD Hex no gearbox'
            'REV Core Hex motor'
            'Andymark Nevrest 20'
            'Andymark Nevrest 40'
            'Andymark Nevrest 60'
            'Andymark Nevrest custom'
            'TETRIX motor'
            'MATRIX motor')
        end
        object gearbox: TComboBox
          Left = 3
          Top = 73
          Width = 170
          Height = 22
          Style = csOwnerDrawVariable
          Color = clGradientInactiveCaption
          TabOrder = 6
          OnChange = gearboxChange
          Items.Strings = (
            'Custom gearbox'
            'BaneBot P60 3:1'
            'BaneBot P60 4:1'
            'BaneBot P60 5:1'
            'BaneBot P60 11:1'
            'BaneBot P60 13:1'
            'BaneBot P60 16:1'
            'BaneBot P60 17:1'
            'BaneBot P60 20:1'
            'BaneBot P60 26:1'
            'BaneBot P60 38:1'
            'BaneBot P60 45:1'
            'BaneBot P60 54:1'
            'BaneBot P60 58:1'
            'BaneBot P60 64:1'
            'BaneBot P60 69:1'
            'BaneBot P60 81:1'
            'BaneBot P60 87:1'
            'BaneBot P60 104:1'
            'BaneBot P60 129:1'
            'BaneBot P60 132:1'
            'BaneBot P60 153:1'
            'BaneBot P60 182:1'
            'BaneBot P60 195:1'
            'BaneBot P60 216:1'
            'BaneBot P60 231:1'
            'BaneBot P60 256:1'
            'BaneBot P60 274:1'
            'BaneBot P60 294:1'
            'BaneBot P60 326:1'
            'BaneBot P60 349:1'
            'BaneBot P60 415:1'
            'BaneBot P60 444:1'
            'BaneBot P60 528:1'
            'BaneBot P60 672:1')
        end
      end
      object output: TGroupBox
        Left = 492
        Top = 50
        Width = 226
        Height = 106
        Caption = 'Output'
        Color = clGradientActiveCaption
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        object Label6: TLabel
          Left = 11
          Top = 85
          Width = 100
          Height = 13
          Caption = 'Torque ounce/inches'
        end
        object Label7: TLabel
          Left = 11
          Top = 66
          Width = 48
          Height = 13
          Caption = 'Wheel fps'
        end
        object Label8: TLabel
          Left = 11
          Top = 44
          Width = 55
          Height = 13
          Caption = 'Output rpm'
          Color = clSilver
          ParentColor = False
        end
        object Label9: TLabel
          Left = 11
          Top = 24
          Width = 49
          Height = 13
          Caption = 'Motor rpm'
        end
        object MrpmOUT: TLabel
          Left = 116
          Top = 24
          Width = 100
          Height = 13
          AutoSize = False
          Caption = '-------------------------'
          Color = clGradientInactiveCaption
          ParentColor = False
          Transparent = False
        end
        object WrpmOUT: TLabel
          Left = 116
          Top = 44
          Width = 100
          Height = 13
          AutoSize = False
          Caption = '-------------------------'
          Color = clGradientInactiveCaption
          ParentColor = False
          Transparent = False
        end
        object WfpsOUT: TLabel
          Left = 116
          Top = 66
          Width = 100
          Height = 13
          AutoSize = False
          Caption = '-------------------------'
          Color = clGradientInactiveCaption
          ParentColor = False
          Transparent = False
        end
        object powerOUT: TLabel
          Left = 116
          Top = 85
          Width = 100
          Height = 13
          AutoSize = False
          Caption = '-------------------------'
          Color = clGradientInactiveCaption
          ParentColor = False
          Transparent = False
        end
      end
      object Button1: TButton
        Left = 492
        Top = 3
        Width = 226
        Height = 41
        Cursor = crHandPoint
        Caption = 'Calculate'
        Style = bsCommandLink
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object Tab3: TTabSheet
      Caption = 'Calculation Explanation guide'
      ImageIndex = 2
      inline explanation1: Texplanation
        Left = 0
        Top = 0
        Width = 721
        Height = 163
        VertScrollBar.Color = clBtnFace
        VertScrollBar.ParentColor = False
        VertScrollBar.Range = 50
        VertScrollBar.Smooth = True
        VertScrollBar.Size = 20
        VertScrollBar.Tracking = True
        TabOrder = 0
        inherited Memo1: TMemo
          Lines.Strings = (
            ''
            'lillkjlkjhlkjhkljlkjhlkjjh'
            ''
            'kjhlkjh'#39';i'
            'fer'
            'fkds'
            ';fd'
            'fo'
            ';asdko')
          ReadOnly = False
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 3
    end
  end
end
