program DFLY;
  {$Define _DELPHI_STRING_ONE_BASED}
  {$ZEROBASEDSTRINGS OFF}
uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  untAES in 'untAES.pas',
  CnCalendar in 'CnCalendar.pas',
  Unit_jiaoshiyi in 'Unitjiaoshiyi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
