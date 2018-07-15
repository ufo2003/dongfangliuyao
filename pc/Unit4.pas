unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,CnCalendar, StdCtrls;

type
  TForm4 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function get_jieqi(y,m,d:integer): string;
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  g_date:= strtodate(inttostr(listbox1.Itemindex+1900)+'-'+ inttostr(listbox2.Itemindex+1)+
                  '-'+ inttostr(listbox3.Itemindex+1));
  form1.Label1.Caption:= form1.get_tiangandizhi(g_date);
  form1.Label9.Caption:= '';
  form1.zhuanggua(g_date);
  self.ModalResult:= mrok;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
 close;
end;

procedure TForm4.FormShow(Sender: TObject);
 var Y,M,D:Word;


  I: Integer;
begin
 listbox1.Items.Clear;
 form1.set_timestr;

   DeCodeDate(date,Y,M,D);
   for I := 1900 to 2049 do
     begin
      listbox1.Items.Add(inttostr(i)+'年 '+
       GetGanZhiFromNumber(GetGanZhiFromYear(i)));
     end;

  listbox1.Itemindex:= 138;
  listbox1.Itemindex:= y-1900;
  listbox1click(sender);

   listbox2.ItemIndex:= m-1;
    ListBox2Click(Sender);
   listbox3.ItemIndex:= d-1;
   ListBox3Click(Sender);

   {
    yue:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d));
    ri:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));
  result:= GetGanZhiFromNumber(GetGanZhiFromYear(y)) +'年 '+
     yue+'月 '+ri+'日（'+
     GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))
     +'） '+ datetostr(dt); }

end;

function TForm4.get_jieqi(y, m, d: integer): string;
var n,k: integer;
     AMonth: Integer;
   ADay: Integer;  AHour: Integer;  AMinitue: Integer;
begin
 result:= '';
 n:=GetJieQiFromDay(y,m,d);
 k:= 0;

  if n<>-1 then  //从小寒开始算起
  begin
     if n=22 then
      k:= 0
      else if n=23 then
           k:= 1
           else k:= n+2;

     GetJieQiInAYear(y,k,AMonth,ADay,AHour,AMinitue);
     result:= GetJieQiFromNumber(n)+ inttostr(AHour)+':'+ inttostr(AMinitue);
  end;
end;

procedure TForm4.ListBox1Click(Sender: TObject);
var

  I: Integer;
begin
 listbox2.Items.Clear;

   for I := 1 to 12 do
     begin
      listbox2.Items.add(inttostr(i)+'月 '+
      GetGanZhiFromNumber(GetGanZhiFromMonth(listbox1.Itemindex+1900,i,1))+'月-'+
      GetGanZhiFromNumber(GetGanZhiFromMonth(listbox1.Itemindex+1900,i,16))+'月');

     end;

  listbox2.Itemindex:= 0;
  listbox2click(sender);
   {
    yue:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d));
    ri:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));
  result:= GetGanZhiFromNumber(GetGanZhiFromYear(y)) +'年 '+
     yue+'月 '+ri+'日（'+
     GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))
     +'） '+ datetostr(dt); }

end;

function get_nongli(y,m,d: integer): string;
var
 LunarMonth, LunarDay: Integer; IsLeapMonth: Boolean;
begin
  GetLunarMonthDayFromDay(y,m,d,LunarMonth, LunarDay,IsLeapMonth);
  result:= GetLunarMonthFromNumber(LunarMonth,false)+GetLunarDayFromNumber(LunarDay);
  if IsLeapMonth then
   result:=  '(闰)'+result;
end;

procedure TForm4.ListBox2Click(Sender: TObject);
var
  days: array[1..7] of string;
  I,k: Integer;
begin
 listbox3.Items.Clear;
   days[1] := '星期日';
   days[2] := '星期一';
   days[3] := '星期二';
   days[4] := '星期三';
   days[5] := '星期四';
   days[6] := '星期五';
   days[7] := '星期六';

 case listbox2.Itemindex+1 of
    1: k:= 31;
    2: begin
       if GetIsLeapYear(listbox1.Itemindex+1900) then
        k:= 29
        else
        k:= 28;
       end;
    3: k:= 31;
    4: k:= 30;
    5: k:= 31;
    6: k:= 30;
    7: k:= 31;
    8: k:= 31;
    9: k:= 30;
    10:k:= 31;
    11:k:= 30;
    12:k:= 31;
 end;
   for I := 1 to k do
     begin
      listbox3.Items.add(inttostr(i)+'号 '+
      GetGanZhiFromNumber(GetGanZhiFromMonth(listbox1.Itemindex+1900,listbox2.Itemindex+1,i))+'月 '+
      GetGanZhiFromNumber(GetGanZhiFromDay(listbox1.Itemindex+1900,listbox2.Itemindex+1,i))+'日 '+
      days[DayOfWeek(strtodate(inttostr(listbox1.Itemindex+1900)+'-'+inttostr(listbox2.Itemindex+1)+'-'+inttostr(i)))]+
      ' '+get_nongli(listbox1.Itemindex+1900,listbox2.Itemindex+1,i)+
      ' '+ get_jieqi(listbox1.Itemindex+1900,listbox2.Itemindex+1,i)
       );

     end;

  listbox3.Itemindex:= 0;
   ListBox3Click(Sender);
end;

procedure TForm4.ListBox3Click(Sender: TObject);
begin
  label1.Caption:= '当前选择的公历为：'+inttostr(listbox1.Itemindex+1900)+'年'+ inttostr(listbox2.Itemindex+1)+
                  '月'+ inttostr(listbox3.Itemindex+1) +'日';
end;

end.
