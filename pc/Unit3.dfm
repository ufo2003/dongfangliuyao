object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #35835#21462
  ClientHeight = 543
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1063
    543)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 433
    Top = 12
    Width = 60
    Height = 16
    Caption = #20851#38190#23383#65306
  end
  object Label2: TLabel
    Left = 8
    Top = 514
    Width = 4
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = ' '
  end
  object Label3: TLabel
    Left = 443
    Top = 44
    Width = 12
    Height = 16
    Caption = '   '
  end
  object Label4: TLabel
    Left = 963
    Top = 44
    Width = 15
    Height = 16
    Caption = #39029
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 3
    Width = 206
    Height = 62
    Caption = #25968#25454#26469#28304
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 3
      Top = 24
      Width = 102
      Height = 17
      Caption = #32593#32476#20113#23384#20648
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 115
      Top = 24
      Width = 89
      Height = 17
      Caption = #26412#26426#25968#25454
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object Edit1: TEdit
    Left = 495
    Top = 9
    Width = 121
    Height = 24
    Hint = #25628#32034#26368#22810#26174#31034'100'#20010#21350#65292#22914#32467#26524#36807#22810#35831#26356#25913#20851#38190#23383
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 621
    Top = 7
    Width = 75
    Height = 25
    Caption = #25628#32034
    TabOrder = 2
    OnClick = Button1Click
  end
  object ListBox4: TListBox
    Left = 374
    Top = 71
    Width = 681
    Height = 368
    Hint = #21333#20987#26174#31034#26029#35821#21644#21453#39304#65292#21452#20987#36733#20837#27492#21350#65292#34013#33394#26174#31034#30340#34920#31034#27492#21350#27809#26377#21453#39304#25968#25454
    Style = lbOwnerDrawVariable
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 19
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = ListBox4Click
    OnDblClick = ListBox4DblClick
    OnDrawItem = ListBox4DrawItem
    OnMeasureItem = ListBox4MeasureItem
  end
  object ListBox3: TListBox
    Left = 278
    Top = 71
    Width = 90
    Height = 433
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 19
    ParentFont = False
    TabOrder = 4
    OnClick = ListBox3Click
  end
  object ListBox2: TListBox
    Left = 159
    Top = 71
    Width = 113
    Height = 434
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 19
    ParentFont = False
    TabOrder = 5
    OnClick = ListBox2Click
  end
  object ListBox1: TListBox
    Left = 3
    Top = 71
    Width = 150
    Height = 434
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 19
    ParentFont = False
    TabOrder = 6
    OnClick = ListBox1Click
  end
  object GroupBox2: TGroupBox
    Left = 216
    Top = 3
    Width = 210
    Height = 62
    Caption = #26597#30475#26041#24335
    TabOrder = 7
    object RadioButton3: TRadioButton
      Left = 10
      Top = 24
      Width = 89
      Height = 17
      Caption = #25353#20998#31867#26597#30475
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 111
      Top = 24
      Width = 89
      Height = 17
      Caption = #25353#26102#38388#26597#30475
      TabOrder = 1
      OnClick = RadioButton4Click
    end
  end
  object Memo1: TMemo
    Left = 374
    Top = 446
    Width = 564
    Height = 89
    Anchors = [akLeft, akRight, akBottom]
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object Button2: TButton
    Left = 953
    Top = 456
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #35835#21462#27492#21350
    TabOrder = 9
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 3
    Top = 511
    Width = 128
    Height = 24
    Anchors = [akLeft, akBottom]
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 10
  end
  object Button3: TButton
    Left = 137
    Top = 511
    Width = 99
    Height = 25
    Hint = #22312#36755#20837#26694#20869#36755#20837#26032#21517#31216#65292#28982#21518#28857#27492#25353#38062#26356#25913#31867#21035#21517#31216
    Anchors = [akLeft, akBottom]
    Caption = #26356#25913#20998#31867#21517#31216
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 712
    Top = 7
    Width = 75
    Height = 25
    Caption = #26174#31034#20840#37096
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 700
    Top = 41
    Width = 49
    Height = 25
    Caption = #19978#19968#39029
    TabOrder = 13
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 748
    Top = 41
    Width = 49
    Height = 25
    Caption = #19979#19968#39029
    TabOrder = 14
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 847
    Top = 41
    Width = 75
    Height = 25
    Caption = #36339#36716#21040#31532
    TabOrder = 15
    OnClick = Button7Click
  end
  object Edit3: TEdit
    Left = 925
    Top = 42
    Width = 32
    Height = 24
    TabOrder = 16
    Text = '1'
    OnExit = Edit3Exit
    OnKeyPress = Edit3KeyPress
  end
  object Button8: TButton
    Left = 653
    Top = 41
    Width = 49
    Height = 25
    Caption = #31532#19968#39029
    TabOrder = 17
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 796
    Top = 41
    Width = 49
    Height = 25
    Caption = #26368#21518#39029
    TabOrder = 18
    OnClick = Button9Click
  end
  object CheckBox6: TCheckBox
    Left = 795
    Top = 13
    Width = 190
    Height = 17
    Hint = #21246#36873#27492#39033#65292#26597#30475#26368#36817'50'#21350#26102#20250#21516#26102#26816#32034#27809#26377#21516#27493#21040#32593#32476#30340#21350#65292#20445#23384#19968#19979#21363#21487#21516#27493#21040#32593#32476#65292#24314#35758#26377#32593#32476#20445#23384#19981#25104#21151#26102#21246#36873#27492#39033#12290
    Caption = #26174#31034#27809#26377#21516#27493#21040#32593#32476#30340#21350
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
  end
  object Button10: TButton
    Left = 981
    Top = 9
    Width = 74
    Height = 25
    Hint = #23548#20986#32593#19978#30340#20840#37096#21350#20363#25968#25454#20026#25991#26412#25991#20214#65292#20197#20415#22791#20221#20445#23384
    Caption = #23548#20986#20840#37096
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 981
    Top = 35
    Width = 74
    Height = 25
    Hint = #23548#20986#24403#21069#39029#30340#21350#20363#25968#25454#20026#25991#26412#25991#20214#65292#20197#20415#22791#20221#20445#23384
    Caption = #23548#20986#24403#21069#39029
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 242
    Top = 511
    Width = 126
    Height = 25
    Hint = #28857#27492#25353#38062#26174#31034#27599#20010#20998#31867#19979#20445#23384#30340#21350#20363#25968#37327
    Caption = #21047#26032#20998#31867#21350#25968#37327
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = Button12Click
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = #25991#26412#25991#20214'|*.txt'
    Left = 480
    Top = 88
  end
end
