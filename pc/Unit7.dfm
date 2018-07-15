object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 303
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 344
    Height = 303
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #36755#20837#25163#26426
      TabVisible = False
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitWidth = 0
      ExplicitHeight = 275
      object Label1: TLabel
        Left = 96
        Top = 40
        Width = 72
        Height = 13
        Caption = #35831#36755#20837#25163#26426#21495
      end
      object Edit1: TEdit
        Left = 80
        Top = 72
        Width = 161
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 96
        Top = 112
        Width = 129
        Height = 25
        Caption = #21457#36865#30701#20449#39564#35777#30721
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #36755#20837#39564#35777#30721
      ImageIndex = 1
      TabVisible = False
      object Label2: TLabel
        Left = 40
        Top = 48
        Width = 48
        Height = 13
        Caption = #39564#35777#30721#65306
      end
      object Label3: TLabel
        Left = 40
        Top = 88
        Width = 48
        Height = 13
        Caption = #26032#23494#30721#65306
      end
      object Label4: TLabel
        Left = 10
        Top = 128
        Width = 96
        Height = 13
        Caption = #20877#27425#36755#20837#26032#23494#30721#65306
      end
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 216
        Height = 13
        Caption = #22914#26524#19977#20998#38047#20869#27809#25910#21040#30701#20449#65292#28857#27492#37325#26032#21457#36865
        OnClick = Label5Click
      end
      object Edit2: TEdit
        Left = 112
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 112
        Top = 88
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 112
        Top = 125
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
      end
      object Button2: TButton
        Left = 112
        Top = 176
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
end
