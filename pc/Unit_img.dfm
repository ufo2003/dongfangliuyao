object imgForm: TimgForm
  Left = 0
  Top = 0
  Caption = #26597#30475#22270#29255
  ClientHeight = 401
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    652
    401)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 378
    Width = 496
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #27880#65306#22270#29255#20840#37096#20445#23384#22312#26412#26426#65292#26381#21153#22120#26080#22791#20221#65292#35831#33258#34892#22791#20221' data'#25991#20214#22841#65292#22270#29255#30446#21069#20165#25903#25345'jpg'#26684#24335#12290
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Hint = #20174#21098#36148#26495#31896#36148#22270#29255
    Caption = #31896#36148#22270#29255
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 70
    Width = 113
    Height = 17
    Caption = #32553#25918#20197#36866#24212#31383#21475
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object ScrollBox1: TScrollBox
    Left = 128
    Top = 0
    Width = 523
    Height = 372
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object Image1: TImage
      Left = 3
      Top = 3
      Width = 513
      Height = 362
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
    end
  end
  object Button4: TButton
    Left = 24
    Top = 39
    Width = 75
    Height = 25
    Hint = #20174#25991#20214#25171#24320#22270#29255
    Caption = #25171#24320#25991#20214
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 24
    Top = 93
    Width = 75
    Height = 25
    Caption = #20445#23384#22270#29255
    TabOrder = 4
    OnClick = Button5Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 124
    Width = 114
    Height = 224
    ItemHeight = 13
    TabOrder = 5
    OnClick = ListBox1Click
  end
  object Button2: TButton
    Left = 24
    Top = 349
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 6
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'jpeg|*.jpg'
    Left = 232
    Top = 96
  end
end
