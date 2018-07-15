object login_Form: Tlogin_Form
  Left = 0
  Top = 0
  Caption = #30331#38470#32593#32476
  ClientHeight = 296
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 60
    Height = 16
    Caption = #29992#25143#21517#65306
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 45
    Height = 16
    Caption = #23494#30721#65306
  end
  object Label3: TLabel
    Left = 48
    Top = 190
    Width = 75
    Height = 16
    Cursor = crHandPoint
    Caption = #27880#20876#26032#29992#25143
    OnClick = Label3Click
    OnMouseEnter = Label3MouseEnter
    OnMouseLeave = Label3MouseLeave
  end
  object Label4: TLabel
    Left = 48
    Top = 218
    Width = 135
    Height = 16
    Cursor = crHandPoint
    Caption = #24536#35760#23494#30721#65292#25214#22238#23494#30721
    OnClick = Label4Click
    OnMouseEnter = Label3MouseEnter
    OnMouseLeave = Label3MouseLeave
  end
  object Label10: TLabel
    Left = 40
    Top = 160
    Width = 176
    Height = 19
    Caption = #27491#22312#19979#36733#65292#35831#31561#24453#20960#20998#38047
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 48
    Top = 240
    Width = 209
    Height = 48
    AutoSize = False
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 94
    Top = 29
    Width = 121
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 94
    Top = 61
    Width = 121
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 72
    Top = 96
    Width = 143
    Height = 17
    Caption = #35760#20303#29992#25143#21517#21644#23494#30721
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object Button1: TButton
    Left = 40
    Top = 129
    Width = 90
    Height = 25
    Hint = #30331#24405#32593#32476#20197#20351#29992#22312#32447#20445#23384#21151#33021#65292#22312#19981#21516#30005#33041#30331#24405#21516#19968#20010#29992#25143#21487#30475#21040#22312#32447#20445#23384#30340#21350#20363#12290
    Caption = #30331#38470#32593#32476
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 128
    Width = 91
    Height = 25
    Hint = #31163#32447#19981#30331#24405#32593#32476#20351#29992#65292#37027#20040#25968#25454#21482#22312#26412#26426#20445#23384#65292#19981#20250#20445#23384#21040#30334#24230#20113#25968#25454#26381#21153#22120#19978#12290
    Caption = #31163#32447#20351#29992
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 280
    Top = 24
    Width = 257
    Height = 233
    Caption = #27880#20876#26032#29992#25143
    TabOrder = 5
    Visible = False
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 60
      Height = 16
      Caption = #29992#25143#21517#65306
    end
    object Label6: TLabel
      Left = 16
      Top = 62
      Width = 45
      Height = 16
      Caption = #23494#30721#65306
    end
    object Label7: TLabel
      Left = 16
      Top = 92
      Width = 75
      Height = 16
      Caption = #37325#22797#23494#30721#65306
    end
    object Label8: TLabel
      Left = 16
      Top = 122
      Width = 60
      Height = 16
      Caption = #25163#26426#21495#65306
    end
    object Label9: TLabel
      Left = 16
      Top = 152
      Width = 45
      Height = 16
      Caption = #37038#31665#65306
    end
    object Edit3: TEdit
      Left = 82
      Top = 32
      Width = 121
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 82
      Top = 62
      Width = 121
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 82
      Top = 92
      Width = 121
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 82
      Top = 122
      Width = 172
      Height = 24
      Hint = #24536#35760#23494#30721#26102#21487#30701#20449#39564#35777#21462#22238#23494#30721
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 82
      Top = 152
      Width = 172
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
      TextHint = #26242#19981#25903#25345#37038#31665
    end
    object Button3: TButton
      Left = 64
      Top = 192
      Width = 75
      Height = 25
      Caption = #31435#21363#27880#20876
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 232
    Top = 176
  end
end
