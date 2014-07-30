object PrinForm: TPrinForm
  Left = 0
  Top = 0
  ClientHeight = 318
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelBlink1: TLabelBlink
    Left = 128
    Top = 128
    Width = 397
    Height = 116
    Caption = #9484'( '#3232'_'#3232')'#9496
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -96
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
    Blinking = True
    Interval = 300
    FirstColor = clBlue
    SecondColor = clYellow
    ThridColor = clBlack
    FourthColor = clWhite
    FifthColor = clLime
  end
  object LbDebug: TLabel
    Left = 40
    Top = 88
    Width = 41
    Height = 33
    Caption = 'UH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CbSetBlink: TCheckBox
    Left = 40
    Top = 32
    Width = 81
    Height = 17
    Caption = 'Piscar'
    TabOrder = 0
    OnClick = CbSetBlinkClick
  end
  object EdInterval: TEdit
    Left = 248
    Top = 30
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '200'
    OnChange = EdIntervalChange
  end
  object UdChangeInterval: TUpDown
    Left = 369
    Top = 30
    Width = 17
    Height = 21
    Associate = EdInterval
    Min = 200
    Max = 2000
    Increment = 10
    Position = 200
    TabOrder = 2
    Thousands = False
  end
  object Timer: TTimer
    Interval = 100
    OnTimer = TimerTimer
    Left = 584
    Top = 32
  end
end
