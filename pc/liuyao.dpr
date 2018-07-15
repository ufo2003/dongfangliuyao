program liuyao;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit_str_cn in 'Unit_str_cn.pas',
  login_Unit in 'login_Unit.pas' {login_Form},
  gaimi_Unit in 'gaimi_Unit.pas' {gaimi_Form},
  dlg_Unit in 'dlg_Unit.pas' {dlg_Form},
  Unit_jiaoshiyi in 'Unit_jiaoshiyi.pas',
  untAES in 'untAES.pas',
  Unit7 in 'Unit7.pas' {Form7},
  Unit_img in 'Unit_img.pas' {imgForm};

{$R *.res}

begin
  Application.Initialize;
    form6:= TForm6.Create(application);
    form6.Show;
    form6.Update;
  Application.MainFormOnTaskbar := false;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(Tlogin_Form, login_Form);
  Application.CreateForm(Tgaimi_Form, gaimi_Form);
  Application.CreateForm(Tdlg_Form, dlg_Form);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TimgForm, imgForm);
  form6.Free;
  Application.Run;

end.
