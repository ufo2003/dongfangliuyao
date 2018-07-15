unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GIFImg;


const
   CACHE = 128;
   //  CACHE= 8192;
   start_msg_cn2=Wm_user+2010;
type
  INC_Thread = class(TThread)
  protected
    procedure Execute; override;
  end;

  TForm2 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button25: TButton;
    Button26: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button27: TButton;
    Label13: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button28: TButton;
    Label14: TLabel;
    Button29: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    CheckBox1: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Button1: TButton;
    Timer1: TTimer;
    Button3: TButton;
    Label15: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Memo2: TMemo;
    Button5: TButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CheckBox2: TCheckBox;
    GroupBox2: TGroupBox;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox3: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label24: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label25: TLabel;
    ComboBox3: TComboBox;
    Label26: TLabel;
    ComboBox4: TComboBox;
    Label27: TLabel;
    Edit4: TEdit;
    Label28: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button6: TButton;
    GroupBox1: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Panel1: TPanel;
    Button7: TButton;
    Label35: TLabel;
    Image4: TImage;
    Button8: TButton;
    Button9: TButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label36: TLabel;
    Edit10: TEdit;
    Label37: TLabel;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    Button10: TButton;
    CheckBox4: TCheckBox;
    RadioButton15: TRadioButton;
    Memo3: TMemo;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label29MouseEnter(Sender: TObject);
    procedure Label29MouseLeave(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label32Click(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure Label34Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button10Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit6Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
  private
    { Private declarations }
    cpu随机可用: boolean;
    伪随机可用: boolean;
    网络已经初始化: boolean;
    网络计数: integer; //每次取得16个随机数
    procedure 设定排卦方式;
    function qg:integer;
    function get_gz_date(const y,r: string): tdate;
    procedure guaming_fenxi(const z,b: string);
    procedure show_guaming; //根据摇的内容显示卦名
    procedure QInit;
    procedure start_show(var msg:Tmessage); message start_msg_cn2;
    procedure 随机日期;
    function 取得随机数(k: integer): integer;
    procedure save_gua; //保存卦
    function 取得卦编号: string;
    procedure CreateParams(var Para:TCreateParams);override;
    procedure copy_value; //复制常用功能数据到高级页
    function shuizhiqigua: string;
  public
    { Public declarations }
    function get_guaming(const s: integer): string;

    function QRand: integer;
  end;

   function RdRand_isSupported: boolean;
   function rdrand_16: dword; //取得一个16位的随机数
   function Thread_inc: integer;
  {
  function defineCache(cacheSize: Cardinal): integer; cdecl; external 'RNDDLL.DLL';
  function defineServer(server: PansiChar; port: Cardinal): integer; cdecl; external 'RNDDLL.DLL';
  function defineUser(username, password: PansiChar): integer; cdecl; external 'RNDDLL.DLL';
  function getDouble: double; cdecl; external 'RNDDLL.DLL';
  function getDoubles(buffer: PDouble; size: Integer) : Integer; cdecl; external 'RNDDLL.DLL';     }


var
  Form2: TForm2;
   G_count: integer;

implementation

uses Unit1, Unit4, Unit3,login_unit;

{$R *.dfm}
function Thread_inc: integer;
var i: int64;
begin
i:= 0;
  while G_count<>-1 do
   begin
    inc(i);
   end;

 result:= i mod 8;
end;

function TForm2.取得卦编号: string;
var i: integer;
    ss: string;
begin
   result:= datetostr(g_date);
     while pos('-',result)>0 do
        delete(result,pos('-',result),1);
     if pos('/',result)>0 then
      begin
        //2014/6/2
        for I := 1 to 9 do
         result:= StringReplace(result,'/'+inttostr(i)+'/','0'+inttostr(i),[]);
        if length(result)=7 then
         insert('0',result,7);
      end;

     for i := 0 to 5 do
       result:= result+ inttostr(liuyao1[i].yaogua);

     if form1.排卦方式='京房式' then
        ss:=''
        else
         ss:= '藏山卜';
     result:= result+ ss +'T:'+timetostr(G_time);

end;

function TForm2.取得随机数(k: integer): integer;
begin
  if cpu随机可用 then
   result:= rdrand_16 mod k
   else
     if 伪随机可用 then
       begin
        result:= Random(999999) mod k;

       end else result:= -1;
end;

procedure TForm2.设定排卦方式;
begin
   with form1 do
   begin
    Memo1.Lines.Clear;
    Memo3.Lines.Clear;
    button28.Enabled:= false;
    button29.Enabled:= false;
    button30.Enabled:= false;
    end;

  if radiobutton12.Checked then
   begin
    if qg<=3 then
     form1.排卦方式:= '京房式'
      else form1.排卦方式:= '藏山卜';
   end else if radiobutton13.Checked then
              begin
               form1.排卦方式:= '京房式';
              end else form1.排卦方式:= '藏山卜';

 if form1.排卦方式= '京房式' then
      form1.RadioButton13.Checked:= true
      else
        form1.RadioButton14.Checked:= true;


end;

//cpu 随机数 ****************************
function GetCpuId(): UINT;
var
  bException: BOOL;
  //szCpu: array [0 .. 15] of BYTE;
  uCpuID: UINT;
begin
  Result := 0;
 // ZeroMemory(@szCpu, sizeof(szCpu));
  uCpuID := 0;
  bException := true;

  try
    asm
      mov eax, 1
      cpuid
   {   mov dword ptr szCpu[0], ebx
      mov dword ptr szCpu[4], edx
      mov dword ptr szCpu[8], ecx
      mov eax, 1
      cpuid  }
      mov uCpuID, ecx
    end;
  except
    bException := false;
  end;

  if bException then
    Result := uCpuID;
end;

function GetCpuName(): string;
var
  bException: BOOL;
  szCpu: array [0 .. 15] of BYTE;
 // uCpuID: UINT;
begin
  Result := '';
  ZeroMemory(@szCpu, sizeof(szCpu));
 // uCpuID := 0;
  bException := true;

  try
    asm
      mov eax, 0
      //cpuid
      db 0fh,0a2h
      mov dword ptr szCpu[0], ebx
      mov dword ptr szCpu[4], edx
      mov dword ptr szCpu[8], ecx
    //  mov eax, 1
    //  cpuid
   //   mov uCpuID, edx
    end;
  except
    bException := false;
  end;

  if bException then
   begin
    Result := StrPas(PAnsiChar(@szCpu));

   end;
end;

function RdRand_isSupported: boolean;
var info: dword;
    ss: string;
begin
  ss:= GetCpuName;
  if pos('Intel',ss)=0 then
   begin
     result:= false;
     exit;
   end;

	info:= GetCpuId;

  //   showmessage(INTTOSTR(info));

	if info and $40000000=$40000000 then
    result:= true
    else
     result:= false;

end;

function rdrand_16: dword; //取得一个16位的随机数
//var
// _ax:word;
//begin
asm
db $0f, $c7, $f0
{ db $0f
db $C7
db $F0 }
//mov word ptr  _ax , ax
//end;
end;


//***********************************

procedure TForm2.Button10Click(Sender: TObject);
begin
  if radiobutton7.Checked then
    button6.Click
    else
  if radiobutton11.Checked then
    button2.Click
    else
        begin
          //根据数字起卦
          edit1.Text:=shuizhiqigua;
          button4click(sender);
         copy_value;
         button26click(sender);
         end;


end;

procedure TForm2.Button1Click(Sender: TObject);
begin
   if radiobutton6.Checked then
     button26.Click;

   if radiobutton5.Checked then
     radiobutton6.Checked:= true;
   if radiobutton4.Checked then
     radiobutton5.Checked:= true;
   if radiobutton3.Checked then
     radiobutton4.Checked:= true;
    if radiobutton2.Checked then
     radiobutton3.Checked:= true;
  if radiobutton1.Checked then
     radiobutton2.Checked:= true;


  if label16.Caption='' then
      show_guaming;

end;

procedure TForm2.Button25Click(Sender: TObject);
var i: integer;
    ss: string;
begin
     for i := 7 to 12 do
       begin
        with tlabel( self.FindComponent('label'+inttostr(i))) do
         begin
            caption:= '一';
            tag:= 1;
         end;
       end;
     radiobutton1.Checked:= true;
    radiobutton1.tag:= 1;
    radiobutton2.tag:= 1;
    radiobutton3.tag:= 1;
    radiobutton4.tag:= 1;
    radiobutton5.tag:= 1;
    radiobutton6.tag:= 1;

    image1.tag:= 1;
    image2.tag:= 0;
    image3.tag:= 0;

    ss:= ExtractFilePath(application.ExeName)+'data\';;
    if checkbox1.Checked then
     begin
      image1.Picture.LoadFromFile(ss+'y2.bmp');
      image2.Picture.LoadFromFile(ss+'y1.bmp');
      image3.Picture.LoadFromFile(ss+'y1.bmp');

     end else begin
        image1.Picture.LoadFromFile(ss+'q2.bmp');
      image2.Picture.LoadFromFile(ss+'q1.bmp');
      image3.Picture.LoadFromFile(ss+'q1.bmp');
     end;
end;

procedure TForm2.Button26Click(Sender: TObject);
begin

设定排卦方式;
if edit1.Text<>'' then
 begin
   Button4Click(button26);
 end;

fillchar(liuyao1,sizeof(liuyao1),#0);
 if   (label12.Tag=0)
    or(label11.Tag=0)
    or(label10.Tag=0)
    or(label9.Tag=0)
    or(label8.Tag=0)
    or(label7.Tag=0)then
     begin
       showmessage('请全部爻选择完毕。');
       exit;
     end;
screen.Cursor:= crhourglass;
   liuyao1[0].yaogua:= label12.Tag;
   liuyao1[1].yaogua:= label11.Tag;
   liuyao1[2].yaogua:= label10.Tag;
   liuyao1[3].yaogua:= label9.Tag;
   liuyao1[4].yaogua:= label8.Tag;
   liuyao1[5].yaogua:= label7.Tag;

    if checkbox2.Checked then
    begin
    label17.Caption:= '生成随机日期，请耐心等待……';
      label17.Update;
    随机日期;
    end;

    g_date:= self.DateTimePicker1.Date;
   g_time:= self.DateTimePicker2.Time;

screen.Cursor:= crdefault;
      //保存起卦
if (edit3.Text<>'') and (pos('(',edit3.Text)=0) then
   edit3.Text:= '(手摇)'+ edit3.Text;
       save_gua;

   self.ModalResult:= mrok;

end;

function Ticker : int64; register;    //返回cpu周期
var

  TimeStamp         : record

    case byte of

      1: (Whole: int64);

      2: (Lo, Hi: LongInt);

  end;

begin

    asm

    push EAX

    push EDX

    db $0f,$31

     mov        [TimeStamp.Lo],eax        // the low dword
     mov        [TimeStamp.Hi],edx        // the high dword

    pop EDX

    pop EAX

    end;
  Result := TimeStamp.Whole;

end;
 {
function getDouble2: single;
begin
  result:= 0.6 * getDouble+0.2;
end;
       }
procedure TForm2.Button27Click(Sender: TObject);
begin
//   QRand;
  // exit;

{var str: Tstringlist;
  I: Integer;
   i64: int64;
begin
    str:= tstringlist.Create;
     for I := 0 to 99 do
      begin
        sleep(10);
self.Repaint;
   QueryPerformanceCounter(i64);

  str.Add(inttostr(i64 mod 1000));
      end;
  str.SaveToFile('e:\a.txt');
    str.Free;  }

    //cheshi
   {  if RdRand_isSupported then
     begin

     end else begin
               showmessage('您的电脑不支持硬件随机数，需要2012年产的22纳米的ivy架构的intel cpu才支持。');
               exit;
              end;  }

 {    form1.ADOConnection1.Execute('delete from 随机测试');
    for j := 0 to 1000 do
      begin
 //  i64:= Ticker;
  //  sleep(10);

  //i:= Ticker -i64;
  //i:= QRand;
   //**********************蓍草模拟

  i:= round(getDouble2 * 49);
  k:= 49-i;

 dec(i);

     if i mod 4 =0 then
      i:= i-4
      else
        i:= i-(i mod 4);

     if k mod 4=0 then
      k:= k-4
      else
       k:= k-(k mod 4); //一变
 // L:= i+k+1;

  i:= i+k;
  k:= i- round(i * getDouble2);
  i:= i -k;
    dec(i);

  if i mod 4 =0 then
      i:= i-4
      else
        i:=i-( i mod 4);
     if k mod 4=0 then
      k:=k- 4
      else
       k:=k-( k mod 4); //er变
  // L:= L+ i+k;

   i:= i+k;
  k:= i- round(i * getDouble2);
  i:= i -k;
   dec(i);

  if i mod 4 =0 then
      i:= i-4
      else
        i:= i-(i mod 4);
     if k mod 4=0 then
      k:= k-4
      else
       k:= k-(k mod 4); // //3变

 // i:= 49-L-i-k;
 i:= i+k;
   //*****************模拟结束

  // i:= rdrand_16 mod 8;

 form1.ADOConnection1.Execute('insert into 随机测试(随机值) values('+inttostr(i)+')');
      end;
    ss:= '';
    with form1.ADOQuery1 do
     begin
       close;
       sql.Clear;
       sql.Add('select 随机值,count(随机值) from 随机测试 group by 随机值');
       open;
       while not eof do
        begin
          ss:= ss+ fields[0].AsString+':'+fields[1].AsString+', ';
         next;
        end;
     end;
       showmessage(ss);
       exit;                 }
    //*********  随机测试结束

    if (cpu随机可用=false) and  (伪随机可用=false) then
       begin
        showmessage('您的电脑不支持硬件真随机数，也无法通过网络获取随机数，cpu真随机数需要2012年产的22纳米的ivy架构的intel cpu才支持。如果网络通畅，可重启程序试试。');
        exit;
       end;

 screen.Cursor:= crhourglass;
    设定排卦方式;

    if checkbox2.Checked then
    begin
    label17.Caption:= '生成随机日期，请耐心等待……';
      label17.Update;
    随机日期;
    end;

   fillchar(liuyao1,sizeof(liuyao1),#0);
   if 伪随机可用 then
    begin
      label17.Caption:= '正在取初爻，请耐心等待……';
      label17.Update;
    end;

   liuyao1[5].yaogua:= qg;
   { radiobutton1.Checked:= true;
    radiobutton1.Tag:= liuyao1[5].yaogua;
    case liuyao1[5].yaogua of
     1: begin
        image1.Tag:= 1;
        Image1Click(image1);
        self.Update;
        end;
     2: begin
         image2.Tag:= 1;
         Image1Click(image2);
         self.Update;
        end;
     3: begin
          image2.Tag:= 1;
         Image1Click(image2);
          image3.Tag:= 1;
         Image1Click(image3);
         self.Update;
        end;
     4: begin
          image1.Tag:= 0;
        Image1Click(image1);
        self.Update;
        end;
    end;
              }
    if 伪随机可用 then
    begin
      label17.Caption:= '正在取二爻，请耐心等待……';
      label17.Update;
    end;
   liuyao1[4].yaogua:= qg;
    if 伪随机可用 then
    begin
      label17.Caption:= '正在取三爻，请耐心等待……';
      label17.Update;
    end;
   liuyao1[3].yaogua:= qg;
     if 伪随机可用 then
    begin
      label17.Caption:= '正在取四爻，请耐心等待……';
      label17.Update;
    end;
   liuyao1[2].yaogua:= qg;
     if 伪随机可用 then
    begin
      label17.Caption:= '正在取五爻，请耐心等待……';
      label17.Update;
    end;
   liuyao1[1].yaogua:= qg;
      if 伪随机可用 then
    begin
      label17.Caption:= '正在取上爻，请耐心等待……';
      label17.Update;
    end;
   liuyao1[0].yaogua:= qg ;


screen.Cursor:= crdefault;
    if 伪随机可用 then
      label17.Caption:= '电脑伪随机数可用。';

   g_date:= self.DateTimePicker1.Date;
   g_time:= self.DateTimePicker2.Time;

   label12.Tag:= liuyao1[0].yaogua;
   label11.Tag:= liuyao1[1].yaogua;
   label10.Tag:= liuyao1[2].yaogua;
   label9.Tag := liuyao1[3].yaogua;
   label8.Tag := liuyao1[4].yaogua;
   label7.Tag := liuyao1[5].yaogua;


   //保存起卦
    show_guaming;  //显示卦名在label16.caption
    if (edit3.Text<>'') and (pos('电脑卦',edit3.Text)=0) then
       edit3.Text:= '(电脑卦)'+ edit3.Text;
    save_gua;

   self.ModalResult:= mrok;
end;

procedure TForm2.Button28Click(Sender: TObject);
begin
  g_time:= self.DateTimePicker2.Time;
close;
end;

procedure TForm2.Button29Click(Sender: TObject);
begin
  if form4.ShowModal=mrok then
   begin
     DateTimePicker1.Date:= g_date;
     DateTimePicker1Change(sender);
   end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  copy_value;
  if 伪随机可用 then
    if Random(100)<62 then
        Randomize;  //一定概率重新初始化

  button27click(sender);

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
close;
 Form1.Button10Click(Sender);
end;

procedure TForm2.Button4Click(Sender: TObject);
var ss: string;
begin
 if edit1.Text='' then
  begin
    showmessage('请输入卦例id或者卦名，卦例ID是一个14位长的数字串。');
  // Button26.Click;
   exit;
  end;

  ss:= edit1.Text;
    if (length(edit1.Text)=14) and (ss[1] in ['0'..'9']) then
    begin
     form1.Edit1.Text:= ss;
     form1.Button8Click(sender);
     close;
    end else begin
             memo2.Lines.Text:= ss;
             memo2.Tag:=1;
             FormShow(button4);

    end;
end;

procedure TForm2.Button5Click(Sender: TObject);
   function in_dizhi(const s: char): boolean;
    begin
      result:= pos(s,'子丑寅卯辰巳午未申酉戌亥')>0;

    end;
var ss,y,r: string;
  I: Integer;
begin
   ss:= inputbox('请输入干支月和日','请输入','');
   y:= '';
   r:= '';
   if ss<>'' then
    begin
    ss:= '  '+ss;
      for I := 1 to length(ss) do
        if y='' then
         begin
           if in_dizhi(ss[i]) then
              y:= ss[i-1]+ss[i];
         end else begin
                   if in_dizhi(ss[i]) then
                       r:= ss[i-1]+ss[i];
                  end;

       if (y<>'') and(r<>'') then
         begin
          datetimepicker1.Date:= get_gz_date(y,r); //从干支取得时间
          DateTimePicker1Change(sender)
          end;
    end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
 if label29.Caption='初爻请鼠标点击选择' then
  begin
    //showmessage('“第一次摇得”位置请用鼠标点击来更改爻值。');
    showmessage('“初爻”位置请用鼠标点击一次为阳，点两次为阴三次为老阳四次为老阴或按“模拟摇卦”按钮来更改爻值。');
    exit;
  end;
 if label30.caption='二爻请鼠标点击选择' then
  begin
    showmessage('“二爻”位置请用鼠标点击一次为阳，点两次为阴三次为老阳四次为老阴或按“模拟摇卦”按钮来更改爻值。');
    exit;
  end;
  if label31.caption='三爻请鼠标点击选择' then
  begin
    showmessage('“三爻”位置请用鼠标点击一次为阳，点两次为阴三次为老阳四次为老阴或按“模拟摇卦”按钮来更改爻值。');
    exit;
  end;
  if label32.caption='四爻请鼠标点击选择' then
  begin
    showmessage('“四爻”位置请用鼠标点击一次为阳，点两次为阴三次为老阳四次为老阴或按“模拟摇卦”按钮来更改爻值。');
    exit;
  end;
  if label33.Caption='五爻请鼠标点击选择' then
  begin
    showmessage('“五爻”位置请用鼠标点击一次为阳，点两次为阴三次为老阳四次为老阴或按“模拟摇卦”按钮来更改爻值。');
    exit;
  end;
  if label34.Caption='上爻请鼠标点击选择' then
  begin
    showmessage('“上爻”位置请用鼠标点击一次为阳，点两次为阴三次为老阳四次为老阴或按“模拟摇卦”按钮来更改爻值。');
    exit;
  end;

  copy_value;
  button26click(sender);
  button9click(sender); //清空
end;

function get_shuzigua(s,x,d: integer): string;
var ss: string;
   procedure a(w: integer);
    begin
      case w mod 8 of
      0: ss:= ss+'222';
      1: ss:= ss+'111';
      2: ss:= ss+'211';
      3: ss:= ss+'121';
      4: ss:= ss+'221';
      5: ss:= ss+'112';
      6: ss:= ss+'212';
      7: ss:= ss+'122';
     end;
    end;
begin
ss:= '';
  a(s);   //取得上卦
  a(x);    //取得下卦

  result:= Form2.get_guaming(strtoint(ss));
   if d<0 then
     exit;

    d:= d mod 6;
    if d=0 then
     d:= 6;

     d:= 7-d;
   if ss[d]='1' then
     ss[d]:='2'
     else
      ss[d]:= '1';

      result:= result+'之'+ Form2.get_guaming(strtoint(ss));
end;

procedure TForm2.Button7Click(Sender: TObject);
 {
var str1: tstringlist;
  I,k,shang,xia,dong: Integer;
   ss: string; }
begin

 close;
   //报数起卦数据均匀性统计
{   str1:= tstringlist.Create;
   radiobutton8.Checked:= true;
     for I := 1000 to 9999 do
       begin
         ss:= inttostr(i);
         shang:= strtoint(ss[1]);
          xia:=  strtoint(ss[2])+ strtoint(ss[3]);
          dong:= shang+ xia+strtoint(ss[4]);
          ss:=get_shuzigua(shang,xia,dong);
         k:= str1.IndexOfName(ss);
         if k>=0 then
          begin
           str1.ValueFromIndex[k]:= inttostr(strtoint(str1.ValueFromIndex[k])+1);
          end else str1.Add(ss+'=1');

       end;
     str1.Add(inttostr(str1.Count));
     str1.SaveToFile('e:\abc10000.txt');
   str1.Free;  }
end;

procedure TForm2.Button8Click(Sender: TObject);
var k: integer;
 function y: integer;
  begin
    if (button8.Caption='开始摇卦') or (button8.Caption='模拟摇卦') then
    begin
       button8.Caption:='停止摇卦';
       image4.Visible:= true;
       TGIFImage(image4.Picture.Graphic).AnimationSpeed := 420;
       TGIFImage(image4.Picture.Graphic).Animate := True;
       G_count:= 0;
       INC_Thread.Create(false);
       result:= -1;
     end else begin
               g_count:= -1;
               TGIFImage(image4.Picture.Graphic).Animate := false;
               image4.Visible:= false;
               button8.Caption:='开始摇卦';

               result:= abs(g_count);
               //showmessage(inttostr(result));
               //showmessage(inttostr(LL));
              end;

  end;
 procedure labelclk(t:tlabel; k2: integer);
  var a: integer;
      s2: string;
  begin
   s2:= '';
    if k2=0 then
    a:= 4
    else if k2=7 then
    a:= 3
    else if (k2=1) or (k2=2) or (k2= 4) then   //按钱币的布局方式定阴阳
    a:= 1
    else a:= 2;

          case a of
            1: s2:= '一';
            2: s2:= '- -';
            3: s2:= 'o';
            4: s2:= 'x';
           end;
    while t.Caption<>s2 do
       t.OnClick(sender);
  end;
begin
 if label29.Caption='初爻请鼠标点击选择' then
  begin
   k:= y;
    if k>-1 then
       labelclk(label29,k);

    exit;
  end;
 if label30.caption='二爻请鼠标点击选择' then
  begin
    k:= y;
    if k>-1 then
       labelclk(label30,k);
    exit;
  end;
  if label31.caption='三爻请鼠标点击选择' then
  begin
    k:= y;
    if k>-1 then
       labelclk(label31,k);
    exit;
  end;
  if label32.caption='四爻请鼠标点击选择' then
  begin
    k:= y;
    if k>-1 then
       labelclk(label32,k);
    exit;
  end;
  if label33.Caption='五爻请鼠标点击选择' then
  begin
    k:= y;
    if k>-1 then
       labelclk(label33,k);
    exit;
  end;
  if label34.Caption='上爻请鼠标点击选择' then
  begin
    k:= y;
    if k>-1 then
      begin
       labelclk(label34,k);
       //button6.Click; //全部摇完，起卦
      end;
    exit;
  end;

  button6.Click; //全部摇完，起卦
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
   if sender=button9 then
     begin
       if messagebox(handle,'是否清空？','提示',mb_yesno or MB_ICONQUESTION)=mrno then
         exit;
     end;

  label29.Caption:='初爻请鼠标点击选择';
  label30.caption:='二爻请鼠标点击选择';
  label31.caption:='三爻请鼠标点击选择';
  label32.caption:='四爻请鼠标点击选择';
  label33.Caption:='五爻请鼠标点击选择';
  label34.Caption:='上爻请鼠标点击选择';
  label35.Caption:= '';
  Button25Click(Sender);
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
var ss: string;
begin
   ss:= ExtractFilePath(application.ExeName)+'data\';
    if checkbox1.Checked then
     begin
      image1.Picture.LoadFromFile(ss+'y'+inttostr(image1.tag+1)+'.bmp');
      image2.Picture.LoadFromFile(ss+'y'+inttostr(image2.tag+1)+'.bmp');
      image3.Picture.LoadFromFile(ss+'y'+inttostr(image3.tag+1)+'.bmp');

     end else begin
        image1.Picture.LoadFromFile(ss+'q'+inttostr(image1.tag+1)+'.bmp');
      image2.Picture.LoadFromFile(ss+'q'+inttostr(image2.tag+1)+'.bmp');
      image3.Picture.LoadFromFile(ss+'q'+inttostr(image3.tag+1)+'.bmp');
     end;
end;

procedure TForm2.CheckBox3Click(Sender: TObject);
begin
   if checkbox3.Checked then
   checkbox4.Checked:= true
    else
      checkbox4.Checked:= false;
end;

procedure TForm2.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked then
   checkbox3.Checked:= true
    else
      checkbox3.Checked:= false;
end;

procedure TForm2.CheckBox6Click(Sender: TObject);
begin
if checkbox6.Checked then
 begin

     memo3.Visible:= false;
     CheckBox6.Visible:= false;

 end;

end;

procedure TForm2.copy_value;
var ss,ss2: string;
begin
ss:= '';
 if checkbox5.Checked then
    ss2:='加时辰'
    else ss2:= '';

  DateTimePicker1.Date:= DateTimePicker3.Date;
  DateTimePicker2.Time:= DateTimePicker4.Time;
  combobox1.ItemIndex:= combobox3.ItemIndex;
  combobox2.ItemIndex:= combobox4.ItemIndex;
  edit2.Text:= edit4.Text;
    if radiobutton8.Checked then
     ss:= '(单数'+ edit6.Text+ss2 +')'
     else if radiobutton9.Checked then
     ss:= '(双数'+ edit7.Text +' '+ edit8.Text+ss2 +')'
     else if radiobutton10.Checked then
     ss:= '(时间'+ edit9.Text +' '+ edit10.Text+ss2 +')'
     else if radiobutton15.Checked then
     ss:= '(当前年月日时'+ss2 +')';

  edit3.Text:= ss+ edit5.Text;
end;

procedure TForm2.CreateParams(var Para: TCreateParams);
begin
  inherited  CreateParams(Para);
  Para.WndParent:=Form1.Handle;

end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
var Year,Month,Day: word;
begin
  G_date:=self.DateTimePicker1.Date ;
  G_time:=self.DateTimePicker2.Time;
  label14.Caption:= form1.get_tiangandizhi(g_date);
    DecodeDate(DateTimePicker1.Date,Year,Month,Day);//
  label19.Caption:= form4.get_jieqi(Year,Month,Day);
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
      key:= #0;
      button4.Click;
    end;
end;

procedure TForm2.Edit6Click(Sender: TObject);
begin
  checkbox5.Visible:= true;
  if checkbox6.Checked=false then
    begin
     memo3.Visible:= true;
     CheckBox6.Visible:= true;
    end;

   if sender=edit6 then
    begin
     radiobutton8.Checked:= true;

    end
     else if (sender=edit7) or (sender=edit8) then
     radiobutton9.Checked:= true
     else if (sender=edit9) or (sender=edit10) then
     radiobutton10.Checked:= true;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if button8.Caption='停止摇卦' then
    button8.Click;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 {
SetWindowLong(Edit1.Handle, GWL_STYLE,
                  GetWindowLong(Edit1.Handle, GWL_STYLE) or
                  ES_NUMBER);   }
  setwindowlong(edit2.Handle,gwl_style,getwindowlong(edit2.Handle,gwl_style) or es_number);
 setwindowlong(edit4.Handle,gwl_style,getwindowlong(edit4.Handle,gwl_style) or es_number);
 setwindowlong(edit6.Handle,gwl_style,getwindowlong(edit6.Handle,gwl_style) or es_number);
 setwindowlong(edit7.Handle,gwl_style,getwindowlong(edit7.Handle,gwl_style) or es_number);
 setwindowlong(edit8.Handle,gwl_style,getwindowlong(edit8.Handle,gwl_style) or es_number);
 setwindowlong(edit9.Handle,gwl_style,getwindowlong(edit9.Handle,gwl_style) or es_number);
 setwindowlong(edit10.Handle,gwl_style,getwindowlong(edit10.Handle,gwl_style) or es_number);

  if RdRand_isSupported= false then
   begin
     //启动网络随机数
     cpu随机可用:= false;
     try
       //  QInit;
         伪随机可用:= true;
         label17.Caption:= '电脑伪随机数可用';
         label17.Font.Color:= clFuchsia;
      except
         伪随机可用:= false;
         label17.Caption:= '电脑起卦不可用';
         label17.Font.Color:= clred;
      end;

   end else begin
             cpu随机可用:= true;
           //  button7.Visible:= true;
              label17.Caption:= 'CPU硬件真随机数可用';
              label17.Font.Color:= clPurple;
            end;

  case form1.getFirstInteger('select value15 from zhi where id=86') of
    0: radiobutton12.Checked:= true;
    1: radiobutton13.Checked:= true;
    2: radiobutton14.Checked:= true;
  end;

end;

function 补全卦名(var s8: string): boolean;
begin
       result:= false;
       if pos('乾',s8)>0 then
        begin
          s8:= StringReplace(s8,'乾','乾为天',[rfReplaceAll]);
          result:= true;
        end;
       if pos('夬',s8)>0 then
        begin
          s8:= StringReplace(s8,'夬','泽天夬',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大有',s8)>0 then
        begin
          s8:= StringReplace(s8,'大有','火天大有',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大壮',s8)>0 then
        begin
          s8:= StringReplace(s8,'大壮','雷天大壮',[rfReplaceAll]);
          result:= true;
        end;
       if pos('小畜',s8)>0 then
        begin
          s8:= StringReplace(s8,'小畜','风天小畜',[rfReplaceAll]);
          result:= true;
        end;
       if pos('需',s8)>0 then
        begin
          s8:= StringReplace(s8,'需','水天需',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大畜',s8)>0 then
        begin
          s8:= StringReplace(s8,'大畜','山天大畜',[rfReplaceAll]);
          result:= true;
        end;
       if pos('泰',s8)>0 then
        begin
          s8:= StringReplace(s8,'泰','地天泰',[rfReplaceAll]);
          result:= true;
        end;
       if pos('履',s8)>0 then
        begin
          s8:= StringReplace(s8,'履','天泽履',[rfReplaceAll]);
          result:= true;
        end;
       if pos('兑',s8)>0 then
        begin
          s8:= StringReplace(s8,'兑','兑为泽',[rfReplaceAll]);
          result:= true;
        end;
       if pos('睽',s8)>0 then
        begin
          s8:= StringReplace(s8,'睽','火泽睽',[rfReplaceAll]);
          result:= true;
        end;
       if pos('归妹',s8)>0 then
        begin
          s8:= StringReplace(s8,'归妹','雷泽归妹',[rfReplaceAll]);
          result:= true;
        end;
       if pos('中孚',s8)>0 then
        begin
          s8:= StringReplace(s8,'中孚','风泽中孚',[rfReplaceAll]);
          result:= true;
        end;
       if pos('节',s8)>0 then
        begin
          s8:= StringReplace(s8,'节','水泽节',[rfReplaceAll]);
          result:= true;
        end;
       if pos('损',s8)>0 then
        begin
          s8:= StringReplace(s8,'损','山泽损',[rfReplaceAll]);
          result:= true;
        end;
       if pos('临',s8)>0 then
        begin
          s8:= StringReplace(s8,'临','地泽临',[rfReplaceAll]);
          result:= true;
        end;
       if pos('同人',s8)>0 then
        begin
          s8:= StringReplace(s8,'同人','天火同人',[rfReplaceAll]);
          result:= true;
        end;
       if pos('革',s8)>0 then
        begin
          s8:= StringReplace(s8,'革','泽火革',[rfReplaceAll]);
          result:= true;
        end;
       if pos('离',s8)>0 then
        begin
          s8:= StringReplace(s8,'离','离为火',[rfReplaceAll]);
          result:= true;
        end;
       if pos('丰',s8)>0 then
        begin
          s8:= StringReplace(s8,'丰','雷火丰',[rfReplaceAll]);
          result:= true;
        end;
       if pos('家人',s8)>0 then
        begin
          s8:= StringReplace(s8,'家人','风火家人',[rfReplaceAll]);
          result:= true;
        end;
       if pos('既济',s8)>0 then
        begin
          s8:= StringReplace(s8,'既济','水火既济',[rfReplaceAll]);
          result:= true;
        end;
       if pos('贲',s8)>0 then
        begin
          s8:= StringReplace(s8,'贲','山火贲',[rfReplaceAll]);
          result:= true;
        end;
       if pos('明夷',s8)>0 then
        begin
          s8:= StringReplace(s8,'明夷','地火明夷',[rfReplaceAll]);
          result:= true;
        end;
       if pos('无妄',s8)>0 then
        begin
          s8:= StringReplace(s8,'无妄','天雷无妄',[rfReplaceAll]);
          result:= true;
        end;
       if pos('随',s8)>0 then
        begin
          s8:= StringReplace(s8,'随','泽雷随',[rfReplaceAll]);
          result:= true;
        end;
       if pos('噬嗑',s8)>0 then
        begin
          s8:= StringReplace(s8,'噬嗑','火雷噬嗑',[rfReplaceAll]);
          result:= true;
        end;
       if pos('震',s8)>0 then
        begin
          s8:= StringReplace(s8,'震','震为雷',[rfReplaceAll]);
          result:= true;
        end;
       if pos('益',s8)>0 then
        begin
          s8:= StringReplace(s8,'益','风雷益',[rfReplaceAll]);
          result:= true;
        end;
       if pos('屯',s8)>0 then
        begin
          s8:= StringReplace(s8,'屯','水雷屯',[rfReplaceAll]);
          result:= true;
        end;
       if pos('颐',s8)>0 then
        begin
          s8:= StringReplace(s8,'颐','山雷颐',[rfReplaceAll]);
          result:= true;
        end;
       if pos('复',s8)>0 then
        begin
          s8:= StringReplace(s8,'复','地雷复',[rfReplaceAll]);
          result:= true;
        end;
       if pos('姤',s8)>0 then
        begin
          s8:= StringReplace(s8,'姤','天风姤',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大过',s8)>0 then
        begin
          s8:= StringReplace(s8,'大过','泽风大过',[rfReplaceAll]);
          result:= true;
        end;
       if pos('鼎',s8)>0 then
        begin
          s8:= StringReplace(s8,'鼎','火风鼎',[rfReplaceAll]);
          result:= true;
        end;
       if pos('恒',s8)>0 then
        begin
          s8:= StringReplace(s8,'恒','雷风恒',[rfReplaceAll]);
          result:= true;
        end;
       if pos('巽',s8)>0 then
        begin
          s8:= StringReplace(s8,'巽','巽为风',[rfReplaceAll]);
          result:= true;
        end;
       if pos('井',s8)>0 then
        begin
          s8:= StringReplace(s8,'井','水风井',[rfReplaceAll]);
          result:= true;
        end;
       if pos('蛊',s8)>0 then
        begin
          s8:= StringReplace(s8,'蛊','山风蛊',[rfReplaceAll]);
          result:= true;
        end;
       if pos('升',s8)>0 then
        begin
          s8:= StringReplace(s8,'升','地风升',[rfReplaceAll]);
          result:= true;
        end;
       if pos('讼',s8)>0 then
        begin
          s8:= StringReplace(s8,'讼','天水讼',[rfReplaceAll]);
          result:= true;
        end;
       if pos('困',s8)>0 then
        begin
          s8:= StringReplace(s8,'困','泽水困',[rfReplaceAll]);
          result:= true;
        end;
       if pos('未济',s8)>0 then
        begin
          s8:= StringReplace(s8,'未济','火水未济',[rfReplaceAll]);
          result:= true;
        end;
       if pos('解',s8)>0 then
        begin
          s8:= StringReplace(s8,'解','雷水解',[rfReplaceAll]);
          result:= true;
        end;
       if pos('涣',s8)>0 then
        begin
          s8:= StringReplace(s8,'涣','风水涣',[rfReplaceAll]);
          result:= true;
        end;
       if pos('坎',s8)>0 then
        begin
          s8:= StringReplace(s8,'坎','坎为水',[rfReplaceAll]);
          result:= true;
        end;
       if pos('蒙',s8)>0 then
        begin
          s8:= StringReplace(s8,'蒙','山水蒙',[rfReplaceAll]);
          result:= true;
        end;
       if pos('师',s8)>0 then
        begin
          s8:= StringReplace(s8,'师','地水师',[rfReplaceAll]);
          result:= true;
        end;
       if pos('遁',s8)>0 then
        begin
          s8:= StringReplace(s8,'遁','天山遁',[rfReplaceAll]);
          result:= true;
        end;
       if pos('咸',s8)>0 then
        begin
          s8:= StringReplace(s8,'咸','泽山咸',[rfReplaceAll]);
          result:= true;
        end;
       if pos('旅',s8)>0 then
        begin
          s8:= StringReplace(s8,'旅','火山旅',[rfReplaceAll]);
          result:= true;
        end;
       if pos('小过',s8)>0 then
        begin
          s8:= StringReplace(s8,'小过','雷山小过',[rfReplaceAll]);
          result:= true;
        end;
       if pos('渐',s8)>0 then
        begin
          s8:= StringReplace(s8,'渐','风山渐',[rfReplaceAll]);
          result:= true;
        end;
       if pos('蹇',s8)>0 then
        begin
          s8:= StringReplace(s8,'蹇','水山蹇',[rfReplaceAll]);
          result:= true;
        end;
       if pos('艮',s8)>0 then
        begin
          s8:= StringReplace(s8,'艮','艮为山',[rfReplaceAll]);
          result:= true;
        end;
       if pos('谦',s8)>0 then
        begin
          s8:= StringReplace(s8,'谦','地山谦',[rfReplaceAll]);
          result:= true;
        end;
       if pos('否',s8)>0 then
        begin
          s8:= StringReplace(s8,'否','天地否',[rfReplaceAll]);
          result:= true;
        end;
       if pos('萃',s8)>0 then
        begin
          s8:= StringReplace(s8,'萃','泽地萃',[rfReplaceAll]);
          result:= true;
        end;
       if pos('晋',s8)>0 then
        begin
          s8:= StringReplace(s8,'晋','火地晋',[rfReplaceAll]);
          result:= true;
        end;
       if pos('豫',s8)>0 then
        begin
          s8:= StringReplace(s8,'豫','雷地豫',[rfReplaceAll]);
          result:= true;
        end;
       if pos('观',s8)>0 then
        begin
          s8:= StringReplace(s8,'观','风地观',[rfReplaceAll]);
          result:= true;
        end;
       if pos('比',s8)>0 then
        begin
          s8:= StringReplace(s8,'比','水地比',[rfReplaceAll]);
          result:= true;
        end;
       if pos('剥',s8)>0 then
        begin
          s8:= StringReplace(s8,'剥','山地剥',[rfReplaceAll]);
          result:= true;
        end;
       if pos('坤',s8)>0 then
        begin
          s8:= StringReplace(s8,'坤','坤为地',[rfReplaceAll]);
          result:= true;
        end;
end;

procedure TForm2.FormShow(Sender: TObject);
   function in_dizhi(const s: char): boolean;
    begin
      result:= pos(s,'子丑寅卯辰巳午未申酉戌亥')>0;

    end;
   function in_64gua(const s: string): boolean;
    begin
      result:= pos(s,'乾为天泽天夬火天大有雷天大壮风天小畜水天需山天大畜地天泰'
                     +'天泽履兑为泽火泽睽雷泽归妹风泽中孚水泽节山泽损地泽临'
                     +'天火同人泽火革离为火雷火丰风火家人水火既济山火贲地火明夷'
                     +'天雷无妄泽雷随火雷噬嗑震为雷风雷益水雷屯山雷颐地雷复'
                     +'天风姤泽风大过火风鼎雷风恒巽为风水风井山风蛊地风升'
                     +'天水讼泽水困火水未济雷水解风水涣坎为水山水蒙地水师'
                     +'天山遁泽山咸火山旅雷山小过风山渐水山蹇艮为山地山谦'
                    +'天地否泽地萃火地晋雷地豫风地观水地比山地剥坤为地')>0;

    end;
var
  i,c: Integer;
  ss,y,r,z,b,tmp: string;
  j: Integer;
 label pp;
begin
 if DateTimePicker1.Tag=0 then
  begin
   self.DateTimePicker1.Date:= date;
   self.DateTimePicker2.Time:= time;
   self.DateTimePicker3.Date:= date;
   self.DateTimePicker4.Time:= time;
   DateTimePicker1.Tag:= 1;
  end;

 label14.Caption:= form1.get_tiangandizhi(g_date);

   Button25Click(Sender);

   //读取剪贴板
    label16.Caption:= '';
   y:= '';
   r:= '';
   z:= ''; //主卦
   b:= ''; //变卦

   if memo2.Tag=0 then
    begin
     memo2.Lines.Clear;
    // memo2.PasteFromClipboard;  读取剪贴板禁用了
    end else memo2.Tag:=0;

   if memo2.Lines.Count>0 then
    begin
      for i := 0 to memo2.Lines.Count - 1 do
       begin
        ss:= memo2.Lines.Strings[i];
          if pos('年',ss)>0 then
           delete(ss,1,pos('年',ss));
          ss:= '  '+ss;
      for c := 1 to length(ss) do
        if y='' then
         begin
           if in_dizhi(ss[c]) then
              y:= ss[c-1]+ss[c];
         end else begin
                   if (r='') and in_dizhi(ss[c]) then
                       r:= ss[c-1]+ss[c];
                  end;

         if (y<>'') and (r<>'') then
          begin
            if length(trim(y))=1 then
             begin
               y:= '甲'+ trim(y);
                 if get_gz_date(y,r)=0 then
                   y[1]:='乙';
                 if get_gz_date(y,r)=0 then
                   y[1]:='丙';
                 if get_gz_date(y,r)=0 then
                   y[1]:='丁';
                 if get_gz_date(y,r)=0 then
                   y[1]:='戊';
                 if get_gz_date(y,r)=0 then
                   y[1]:='己';
                 if get_gz_date(y,r)=0 then
                   y[1]:='庚';
                 if get_gz_date(y,r)=0 then
                   y[1]:='辛';
                 if get_gz_date(y,r)=0 then
                   y[1]:='壬';
                 if get_gz_date(y,r)=0 then
                   y[1]:='癸';

              end;

            datetimepicker1.Date:= get_gz_date(y,r); //从干支取得时间
            DateTimePicker1Change(sender);
            label16.Caption:= datetostr(datetimepicker1.Date);
          end else begin
                    y:= '';
                    r:= '';
                   end;
         //卦分析
         ss:=ss+'U';

          pp:
          j:=3;
         while j <= length(ss)-1 do
           begin
             tmp:= ss[j-2]+ss[j-1]+ss[j];
             if in_64gua(tmp) then
              begin
                if in_64gua(tmp+ss[j+1]) then
                   tmp:= tmp+ss[j+1]; //测试是否4个字的卦名
                if z='' then
                 begin
                 z:= tmp;
                  inc(j,2);
                 end else if b='' then
                       b:= tmp;
              end;
            inc(j);
           end; // end j

         if (z='') and 补全卦名(ss)  then
          goto pp;


         if z<>'' then
         begin
         screen.Cursor:= crhourglass;
         label16.Caption:= label16.Caption+ ' 本卦：'+z;
         if b<>'' then
           label16.Caption:= label16.Caption+ ' 变卦：'+b;
          guaming_fenxi(z,b);
         screen.Cursor:= crdefault;
          break;
         end else begin
                  // if 伪随机可用 then
                   //  postmessage(handle,start_msg_cn2,0,0);
                  end;
       end;
    end;

   postmessage(handle,start_msg_cn2,0,0);
end;

function TForm2.get_guaming(const s: integer): string;
begin
result:= '';

if s=111111 then begin result:= '乾为天'; exit; end;
if s=111112 then begin result:= '天风姤'; exit; end;
if s=111121 then begin result:= '天火同人'; exit; end;
if s=111122 then begin result:= '天山遁'; exit; end;
if s=111211 then begin result:= '天泽履'; exit; end;
if s=111212 then begin result:= '天水讼'; exit; end;
if s=111221 then begin result:= '天雷无妄'; exit; end;
if s=111222 then begin result:= '天地否'; exit; end;
if s=112111 then begin result:= '风天小畜'; exit; end;
if s=112112 then begin result:= '巽为风'; exit; end;
if s=112121 then begin result:= '风火家人'; exit; end;
if s=112122 then begin result:= '风山渐'; exit; end;
if s=112211 then begin result:= '风泽中孚'; exit; end;
if s=112212 then begin result:= '风水涣'; exit; end;
if s=112221 then begin result:= '风雷益'; exit; end;
if s=112222 then begin result:= '风地观'; exit; end;
if s=121111 then begin result:= '火天大有'; exit; end;
if s=121112 then begin result:= '火风鼎'; exit; end;
if s=121121 then begin result:= '离为火'; exit; end;
if s=121122 then begin result:= '火山旅'; exit; end;
if s=121211 then begin result:= '火泽睽'; exit; end;
if s=121212 then begin result:= '火水未济'; exit; end;
if s=121221 then begin result:= '火雷噬嗑'; exit; end;
if s=121222 then begin result:= '火地晋'; exit; end;
if s=122111 then begin result:= '山天大畜'; exit; end;
if s=122112 then begin result:= '山风蛊'; exit; end;
if s=122121 then begin result:= '山火贲'; exit; end;
if s=122122 then begin result:= '艮为山'; exit; end;
if s=122211 then begin result:= '山泽损'; exit; end;
if s=122212 then begin result:= '山水蒙'; exit; end;
if s=122221 then begin result:= '山雷颐'; exit; end;
if s=122222 then begin result:= '山地剥'; exit; end;
if s=211111 then begin result:= '泽天夬'; exit; end;
if s=211112 then begin result:= '泽风大过'; exit; end;
if s=211121 then begin result:= '泽火革'; exit; end;
if s=211122 then begin result:= '泽山咸'; exit; end;
if s=211211 then begin result:= '兑为泽'; exit; end;
if s=211212 then begin result:= '泽水困'; exit; end;
if s=211221 then begin result:= '泽雷随'; exit; end;
if s=211222 then begin result:= '泽地萃'; exit; end;
if s=212111 then begin result:= '水天需'; exit; end;
if s=212112 then begin result:= '水风井'; exit; end;
if s=212121 then begin result:= '水火既济'; exit; end;
if s=212122 then begin result:= '水山蹇'; exit; end;
if s=212211 then begin result:= '水泽节'; exit; end;
if s=212212 then begin result:= '坎为水'; exit; end;
if s=212221 then begin result:= '水雷屯'; exit; end;
if s=212222 then begin result:= '水地比'; exit; end;
if s=221111 then begin result:= '雷天大壮'; exit; end;
if s=221112 then begin result:= '雷风恒'; exit; end;
if s=221121 then begin result:= '雷火丰'; exit; end;
if s=221122 then begin result:= '雷山小过'; exit; end;
if s=221211 then begin result:= '雷泽归妹'; exit; end;
if s=221212 then begin result:= '雷水解'; exit; end;
if s=221221 then begin result:= '震为雷'; exit; end;
if s=221222 then begin result:= '雷地豫'; exit; end;
if s=222111 then begin result:= '地天泰'; exit; end;
if s=222112 then begin result:= '地风升'; exit; end;
if s=222121 then begin result:= '地火明夷'; exit; end;
if s=222122 then begin result:= '地山谦'; exit; end;
if s=222211 then begin result:= '地泽临'; exit; end;
if s=222212 then begin result:= '地水师'; exit; end;
if s=222221 then begin result:= '地雷复'; exit; end;
if s=222222 then  result:= '坤为地';


end;

function TForm2.get_gz_date(const y, r: string): tdate;
begin
  result:= form1.get_date_by_tiangandizhi(y,r);
end;

procedure TForm2.guaming_fenxi(const z, b: string);
var zz,bb: array[0..5] of integer;
    ss: string;
  I: Integer;
begin
  for I := 0 to 5 do
    begin
      zz[i]:= 0;
      bb[i]:= 0;
    end;

   with form1.ADOQuery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select value2 from bagua where gm='''+ z+'''');
      open;
       ss:= fields[0].AsString;
       if length(ss)=6 then
        begin
          for I := 0 to 5 do
               zz[i]:= strtoint(ss[i+1]);
        end;

        if b<>'' then
         begin
           close;
          sql.Clear;
          sql.Add('select value2 from bagua where gm='''+ b+'''');
          open;
           ss:= fields[0].AsString;
           if length(ss)=6 then
            begin
              for I := 0 to 5 do
                   bb[i]:= strtoint(ss[i+1]);
            end;
         end;
     close;
    end;

  for I := 0 to 5 do
    begin
      if (b<>'') and (zz[i]<>bb[i]) then
        zz[i]:= zz[i]+2;

      with tlabel(self.FindComponent('label'+ inttostr(5-i+7))) do
       begin
           case zz[i] of
            1: caption:= '一';
            2: caption:= '- -';
            3: caption:= 'o';
            4: caption:= 'x';
           end;
       tag:= zz[i];
       end;
    end;



end;

procedure TForm2.Image1Click(Sender: TObject);
var i,k: integer;
begin
  if timage(sender).Tag=0 then
     timage(sender).Tag:=1
     else
      timage(sender).Tag:=0;


    if checkbox1.Checked then
      timage(sender).Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\y'+inttostr(timage(sender).tag+1)+'.bmp')
     else
       timage(sender).Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\q'+inttostr(timage(sender).tag+1)+'.bmp');

     k:= image1.Tag+ image2.Tag+ image3.Tag;
      if k=0 then
        k:= 4;
  for i := 0 to 5 do
    begin
   if tradiobutton(self.FindComponent('radiobutton'+ inttostr(i+1))).Checked then
    begin
      tradiobutton(self.FindComponent('radiobutton'+ inttostr(i+1))).tag:= k;
      with tlabel(self.FindComponent('label'+ inttostr(i+7))) do
       begin
           case k of
            1: caption:= '一';
            2: caption:= '- -';
            3: caption:= 'o';
            4: caption:= 'x';
           end;
       tag:= k;
       end;
    end;
     end;
 show_guaming;
end;

procedure show_img;
begin
 with form2 do
  begin
     if checkbox1.Checked then
      image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\y'+inttostr(image1.tag+1)+'.bmp')
     else
       image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\q'+inttostr(image1.tag+1)+'.bmp');

   if checkbox1.Checked then
      image2.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\y'+inttostr(image2.tag+1)+'.bmp')
     else
       image2.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\q'+inttostr(image2.tag+1)+'.bmp');

   if checkbox1.Checked then
      image3.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\y'+inttostr(image3.tag+1)+'.bmp')
     else
       image3.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\q'+inttostr(image3.tag+1)+'.bmp');
  end;
end;

procedure dianjigaibian(a: tradiobutton; b:tlabel);
begin
 with form2 do
 begin
 edit1.Text:= '';

  a.Checked:= true;
  if b.Caption='一' then
     begin
       image1.Tag:= 0; //在imageclick内会被置反
       image2.Tag:= 1;
       image3.Tag:= 0;
      // tlabel(sender).Caption:= '- -';
     end else if b.Caption='- -' then
     begin
       image1.Tag:= 0;
       image2.Tag:= 1;
       image3.Tag:= 1;
      // tlabel(sender).Caption:= 'o';
     end else if b.Caption='o' then
     begin
       image1.Tag:= 1;
       image2.Tag:= 0;
       image3.Tag:= 0;
       // tlabel(sender).Caption:= 'x';
     end else if b.Caption='x' then
     begin
       image1.Tag:= 0;
       image2.Tag:= 0;
       image3.Tag:= 0;
      // tlabel(sender).Caption:= '一';
     end;

   image1click(image1);
 end;
   show_img;
end;

procedure TForm2.Label10Click(Sender: TObject);
begin
  dianjigaibian(radiobutton4,label10);
end;

procedure TForm2.Label11Click(Sender: TObject);
begin
  dianjigaibian(radiobutton5,label11);
end;

procedure TForm2.Label12Click(Sender: TObject);
begin
  dianjigaibian(radiobutton6,label12);
end;

procedure TForm2.Label29Click(Sender: TObject);
begin
  if pos('爻',label29.Caption)>0 then
   begin
    label7.Caption:= 'x';
    label29.Font.Size:=16;
    label29.Font.Name:='黑体';
    //label29.Font.Style:=[fsBold];
   end;


  dianjigaibian(radiobutton1,label7);
  label29.Caption:= label7.Caption;
  radiobutton7.Checked:= true;

  checkbox5.Visible:= false;
  memo3.Visible:= false;
end;

procedure TForm2.Label29MouseEnter(Sender: TObject);
begin
   Tlabel(sender).Font.Color:= clHighlight;
end;

procedure TForm2.Label29MouseLeave(Sender: TObject);
begin
Tlabel(sender).Font.Color:= clwindowText;
end;

procedure TForm2.Label30Click(Sender: TObject);
begin
    if pos('爻',label30.Caption)>0 then
    begin
    label8.Caption:= 'x';
    label30.Font.Size:=16;
    label30.Font.Name:='黑体';
    end;

 dianjigaibian(radiobutton2,label8);
  label30.Caption:= label8.Caption;
end;

procedure TForm2.Label31Click(Sender: TObject);
begin
   if pos('爻',label31.Caption)>0 then
   begin
    label9.Caption:= 'x';
    label31.Font.Size:=16;
    label31.Font.Name:='黑体';
   end;
  dianjigaibian(radiobutton3,label9);
  label31.Caption:= label9.Caption;
end;

procedure TForm2.Label32Click(Sender: TObject);
begin
   if pos('爻',label32.Caption)>0 then
   begin
    label10.Caption:= 'x';
    label32.Font.Size:=16;
    label32.Font.Name:='黑体';
   end;
  dianjigaibian(radiobutton4,label10);
  label32.Caption:= label10.Caption;
end;

procedure TForm2.Label33Click(Sender: TObject);
begin
   if pos('爻',label33.Caption)>0 then
   begin
    label11.Caption:= 'x';
    label33.Font.Size:=16;
    label33.Font.Name:='黑体';
   end;
  dianjigaibian(radiobutton5,label11);
  label33.Caption:= label11.Caption;
end;

procedure TForm2.Label34Click(Sender: TObject);
begin
   if pos('爻',label34.Caption)>0 then
   begin
    label12.Caption:= 'x';
    label34.Font.Size:=16;
    label34.Font.Name:='黑体';
   end;
 dianjigaibian(radiobutton6,label12);
  label34.Caption:= label12.Caption;
end;

procedure TForm2.Label7Click(Sender: TObject);
begin
  dianjigaibian(radiobutton1,label7);
end;

procedure TForm2.Label8Click(Sender: TObject);
begin
  dianjigaibian(radiobutton2,label8);
end;

procedure TForm2.Label9Click(Sender: TObject);
begin
  dianjigaibian(radiobutton3,label9);
end;

function TForm2.qg: integer;
var i: integer;

begin

sleep(10);
 // i:= Ticker;
 if cpu随机可用 then
   i:= rdrand_16 mod 8
   else
     if 伪随机可用 then
       begin

          i:= QRand;


       end else i:= 0;

   if i=0 then
    result:= 4
    else if i=7 then
    result:= 3
    else if (i=1) or (i=2) or (i= 4) then   //按钱币的布局方式定阴阳
    result:= 1
    else result:= 2;
end;

procedure TForm2.QInit;
begin
{  defineCache(CACHE);
   defineServer('random.irb.hr', 1227);
   defineUser('ufo2003', '2003ufo');    }
   //showmessage('ok');
end;

function TForm2.QRand: integer;   //返回0到7的随机数
//var db: double;
begin
 {  inc(网络计数);
   if 网络计数=17 then
      网络计数:= 1;

   db:= getDouble;
   result:= Trunc(8 * db);   }
   result:= Random(8);
end;

procedure TForm2.RadioButton11Click(Sender: TObject);
begin
 checkbox5.Visible:= false;
 checkbox6.Visible:= false;
  memo3.Visible:= false;
  button10.Hint:= '电脑全自动用随机数模拟摇钱方式起卦排盘';
end;

procedure TForm2.RadioButton12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var ss: string;
begin
ss:= '0';
  if radiobutton12.Checked then
    ss:= '0';
  if radiobutton13.Checked then
    ss:= '1';
  if radiobutton14.Checked then
    ss:= '2';
  form1.ADOConnection1.Execute('update zhi set value15='+ss+' where id=86');
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
var ss: string;
begin
  ss:= ExtractFilePath(application.ExeName)+'data\';
  if checkbox1.Checked then
    ss:= ss+'y'
    else
     ss:= ss+'q';

  case tradiobutton(Sender).Tag of
     1: begin
         image1.Picture.LoadFromFile(ss+'2.bmp');
         image2.Picture.LoadFromFile(ss+'1.bmp');
         image3.Picture.LoadFromFile(ss+'1.bmp');
         image1.tag:= 1;
         image2.tag:= 0;
         image3.tag:= 0;
        end;
     2: begin
         image1.Picture.LoadFromFile(ss+'2.bmp');
         image2.Picture.LoadFromFile(ss+'2.bmp');
         image3.Picture.LoadFromFile(ss+'1.bmp');
         image1.tag:= 1;
         image2.tag:= 1;
         image3.tag:= 0;
        end;
     3: begin
         image1.Picture.LoadFromFile(ss+'2.bmp');
         image2.Picture.LoadFromFile(ss+'2.bmp');
         image3.Picture.LoadFromFile(ss+'2.bmp');
         image1.tag:= 1;
         image2.tag:= 1;
         image3.tag:= 1;
        end;
     4: begin
         image1.Picture.LoadFromFile(ss+'1.bmp');
         image2.Picture.LoadFromFile(ss+'1.bmp');
         image3.Picture.LoadFromFile(ss+'1.bmp');
         image1.tag:= 0;
         image2.tag:= 0;
         image3.tag:= 0;
        end;
  end;

 if label16.Caption='' then
      show_guaming;
end;

procedure TForm2.RadioButton7Click(Sender: TObject);
begin
  checkbox5.Visible:= false;
  memo3.Visible:= false;
  CheckBox6.Visible:= false;
  button10.Hint:= '按手摇选好的内容排出卦象';
end;

procedure TForm2.RadioButton8Click(Sender: TObject);
begin
   checkbox5.Visible:= true;
   if checkbox6.Checked=false then
    begin
     memo3.Visible:= true;
     CheckBox6.Visible:= true;
    end;
  button10.Hint:= '按单数双数或者时间起卦排出卦象';
end;

procedure TForm2.save_gua;
var Year, Month, Day: word;
  str1: Tstringlist;
  ss,ben: string;
  b: boolean;
  k: integer;
begin
//保存卦到本地或者服务器
 ss:= '';
 b:= true;
  if combobox4.Text<>'未知' then
     ss:= '性别:'+combobox4.Text +' ';
   if edit2.Text<>'' then
    ss:= '出生:'+ edit2.Text+ ' ';
form1.事由:= ss+'占事:'+edit3.Text;
 gua_weiyi_bianhao_g:= 取得卦编号;

   

  DecodeDate(g_date, Year, Month, Day);
  save_gua_ming:= label16.Caption;
  save_gua_bianhao:= gua_weiyi_bianhao_g;
  save_lei_id:= form1.getFirstString('select max(lei_id) from fenlei_table where lei_mingcheng='''+ combobox1.Text+'''');
  save_nian:= inttostr(year);
  save_yue:= inttostr(Month);
  save_ri:= inttostr(Day);
  save_xingbie:=combobox2.Text;
  save_chusheng:= edit2.Text;
  save_shiyou:=edit3.Text;

  if checkbox3.Checked then
    begin
      checkbox3.Checked:= false;
      checkbox4.Checked:= false;
      exit; //本次不保存
    end;

 if 是否使用网络=1 then
  begin
    //保存卦到网络
    screen.Cursor:= crhourglass;
    str1:= Tstringlist.Create;
    str1.Add('nm='+ aes_encrypt(user_name));
    str1.Add('save_gua_ming='+ aes_encrypt(label16.Caption));
    str1.Add('save_gua_bianhao='+ aes_encrypt(save_gua_bianhao));
    str1.Add('save_lei_id='+save_lei_id);
    str1.Add('save_nian='+save_nian);
    str1.Add('save_yue='+save_yue);
    str1.Add('save_ri='+save_ri);
    str1.Add('save_xingbie='+save_xingbie);
    str1.Add('save_chusheng='+save_chusheng);
    str1.Add('save_shiyou='+save_shiyou);

    ss:= form1.post_http('http://'+http_host+'/baiduliuyao/savegua.php',str1);
   str1.Free;
   screen.Cursor:= crdefault;
    if pos('ok',ss)=1 then
     begin
      k:= pos(';',ss);
     if k >0 then
        shuzi_id:= copy(ss,3,k-3);
     end else begin
                b:= false;
                showmessage('网络保存失败，错误信息：'+ss +' 。然后写点断语反馈后重新保存即可。一般过一两分钟网络即可恢复。');
              end;
  end;

  if b and (是否使用网络=1) then
    ben:= '0'
    else begin
     ben:= '1';
     form1.CheckBox6.Checked:= true;
     form3.CheckBox6.Checked:= true;
    end;
 //保存卦到本地
  form1.ADOConnection1.Execute('insert into gua_table(gua_ming,gua_bianhao,lei_id,nian,yue,ri,'+
                   'xingbie,chusheng,shiyou,ben) select '''+
                   label16.Caption+''','''+
                   gua_weiyi_bianhao_g+''',max(lei_id),'+
                   inttostr(year)+','+
                   inttostr(Month)+','+
                   inttostr(Day)+','''+
                   combobox2.Text+''','''+
                   edit2.Text+''','''+
                   edit3.Text+''','+ ben+'  from fenlei_table where lei_mingcheng='''+
                   combobox1.Text+'''');

   //本地存储的卦id
    gua_id_g:= form1.getFirstInteger('SELECT @@IDENTITY AS id from gua_table');
    gua_shangxia.Add(inttostr(gua_id_g)+'(本地)');
    inc(gua_index_g);


end;

procedure TForm2.show_guaming;
var i: integer;
   ss: string;
   b: boolean;
begin
ss:= '';
b:= false;

  for i := 5 downto 0 do
    begin
      with tlabel(self.FindComponent('label'+ inttostr(i+7))) do
       begin
        case tag of
          1:ss:= ss+'1';
          2:ss:= ss+'2';
          3: begin
              ss:= ss+'1';
              b:= true;
          end;
          4: begin
             ss:= ss+'2';
             b:= true;
          end;
        end;
       end;
     end; //end for i


        label16.Caption:= get_guaming(strtoint(ss));


    if b then
    begin
      label16.Caption:='主卦：'+ label16.Caption+' 变卦：';
      ss:= '';
      for i := 5 downto 0 do
        begin
          with tlabel(self.FindComponent('label'+ inttostr(i+7))) do
           begin
            case tag of
              1:ss:= ss+'1';
              2:ss:= ss+'2';
              3:
                  ss:= ss+'2';

              4:
                 ss:= ss+'1';
            end;
           end;
         end; //end for i

            label16.Caption:=label16.Caption+ get_guaming(strtoint(ss));

    end;

  label35.Caption:= label16.Caption;
end;
function get_dz_xs(const c: char): integer;
begin
result:= 0;
  case c of
  '子': result:= 1;
  '丑': result:= 2;
  '寅': result:= 3;
  '卯': result:= 4;
  '辰': result:= 5;
  '巳': result:= 6;
  '午': result:= 7;
  '未': result:= 8;
  '申': result:= 9;
  '酉': result:= 10;
  '戌': result:= 11;
  '亥': result:= 12;
  end;
end;
function get_dz_xs2(const c: char): integer;
begin
result:= 0;
  case c of
  '子': result:= 11;
  '丑': result:= 12;
  '寅': result:= 1;
  '卯': result:= 2;
  '辰': result:= 3;
  '巳': result:= 4;
  '午': result:= 5;
  '未': result:= 6;
  '申': result:= 7;
  '酉': result:= 8;
  '戌': result:= 9;
  '亥': result:= 10;
  end;
end;
procedure get_dizhishijian_qigua(var s: integer;var x: integer;var d: integer);
var ss: string;
begin
  ss:= Form2.label14.Caption;

    s:= get_dz_xs(ss[pos('年',ss)-1]);
    s:= s+ get_dz_xs2(ss[pos('月',ss)-1]);
    s:= s+ get_dz_xs(ss[pos('日',ss)-1]);
    x:= x+ get_dz_xs(ss[pos('时',ss)+4]);
    d:= s+ x;
end;

function TForm2.shuizhiqigua: string;
var ss1,ss2: string;
    shang,xia,dong : integer;
  I,sc: Integer;
begin
  result:= '';
  shang:= 0;
  xia:= 0;
  dong:= 0;
  sc:= 0;
  if checkbox5.Checked then
   begin
     ss1:= Form2.label14.Caption;
      if radiobutton10.Checked or radiobutton15.Checked then
         sc:= get_dz_xs(ss1[pos('刻',ss1)+3])
         else
          sc:= get_dz_xs(ss1[pos('时',ss1)+4]);
   end;

  if radiobutton8.Checked then
   begin
    if edit6.Text='' then
       begin
         showmessage('请输入1个或者多个数字。');
         exit;
       end;
   ss1:= edit6.Text;
    case length(ss1) of
      1: begin
         shang:= strtoint(ss1);
          xia:= shang;
          result:=get_shuzigua(shang,xia,-1);
          end;
      2: begin
           shang:= strtoint(ss1[1]);
          xia:= strtoint(ss1[2]);
          dong:= shang+ xia +sc;
          result:=get_shuzigua(shang,xia,dong);

        end;
      3: begin
          shang:= strtoint(ss1[1]);
          xia:= strtoint(ss1[2])+strtoint(ss1[3]);
          dong:= shang+ xia +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      4: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2]);
          xia:=  strtoint(ss1[3])+ strtoint(ss1[4]);
          dong:= shang+ xia +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      5: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2]);
          xia:=  strtoint(ss1[3])+ strtoint(ss1[4]);
          dong:= shang+ xia+strtoint(ss1[5]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      6:  begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2]);
          xia:=  strtoint(ss1[3])+ strtoint(ss1[4])+strtoint(ss1[5]);
          dong:= shang+ xia+ strtoint(ss1[6]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      7: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3]);
          xia:=  strtoint(ss1[4])+ strtoint(ss1[5])+strtoint(ss1[6]);
          dong:= shang+ xia+strtoint(ss1[7]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      8: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3]);
          xia:=  strtoint(ss1[4])+ strtoint(ss1[5])+strtoint(ss1[6]);
          dong:= shang+ xia+strtoint(ss1[7])+strtoint(ss1[8]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      9: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4]);
          xia:=  strtoint(ss1[5])+ strtoint(ss1[6])+strtoint(ss1[7])+strtoint(ss1[8]);
          dong:= shang+ xia+strtoint(ss1[9]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      10: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4]);
          xia:=  strtoint(ss1[5])+ strtoint(ss1[6])+strtoint(ss1[7])+strtoint(ss1[8]);
          dong:= shang+ xia+strtoint(ss1[9])+strtoint(ss1[10]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
      11:begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4])+strtoint(ss1[5]);
          xia:=  strtoint(ss1[6])+ strtoint(ss1[7])+strtoint(ss1[8])+strtoint(ss1[9])+strtoint(ss1[10]);
          dong:= shang+ xia+strtoint(ss1[11]) +sc;
          result:=get_shuzigua(shang,xia,dong);
         end;
       else
        shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4])+strtoint(ss1[5]);
          xia:=  strtoint(ss1[6])+ strtoint(ss1[7])+strtoint(ss1[8])+strtoint(ss1[9])+strtoint(ss1[10]);
          dong:= shang+ xia+strtoint(ss1[11])+strtoint(ss1[12]) +sc;
          result:=get_shuzigua(shang,xia,dong);
    end;
   end;

    if radiobutton9.Checked then
      begin
       if (edit7.Text= '') or (edit8.Text='') then
        begin
         showmessage('请在两个输入框内输入两组数字。');
         exit;
        end;
        ss1:= edit7.Text;
        ss2:= edit8.Text;
        for I := 1 to length(ss1) do
           shang:= shang+ strtoint(ss1[i]);
        for I := 1 to length(ss2) do
           xia:= xia+ strtoint(ss2[i]);
        dong:= shang+ xia +sc;
        result:=get_shuzigua(shang,xia,dong);
      end;

     if radiobutton10.Checked then
      begin
       if (edit9.Text= '') or (edit10.Text='') then
        begin
         showmessage('请在两个输入框内分别输入小时和分钟数。');
         exit;
        end;
        ss1:= edit9.Text;
        ss2:= edit10.Text;
        for I := 1 to length(ss1) do
           shang:= shang+ strtoint(ss1[i]);
        for I := 1 to length(ss2) do
           xia:= xia+ strtoint(ss2[i]);
        dong:= shang+ xia +sc;
        result:=get_shuzigua(shang,xia,dong);
      end;

     if radiobutton15.Checked then
      begin
        get_dizhishijian_qigua(shang,xia,dong);
        result:=get_shuzigua(shang,xia,dong +sc);
      end;
end;

procedure TForm2.start_show(var msg: Tmessage);
begin
  if (login_form.Tag=1) and (msg.WParam=0) then
     exit;

  with form1.adoquery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from zhi where id=88');
      open;
       login_form.edit1.Text:= fieldbyname('value1').AsString;
       login_form.checkbox1.Checked:= fieldbyname('value4').AsString='1';
       if login_form.checkbox1.Checked then
         login_form.edit2.Text:= fieldbyname('value2').AsString;

      close;
    end;

  if login_form.ShowModal=mrok then
   begin
     //使用网络并登陆成功
     是否使用网络:= 1;
     user_name:= login_form.Edit1.Text;
     form1.Button18.Enabled:= true;
     form1.CheckBox6.Enabled:= true;
     form1.label18.Visible:= false;
     form1.button25.Hint:= '显示网上保存的最近20个卦例';
     form1.button25.Caption:= '查看最近20卦';
     form1.n501.Caption:= '查看最近20卦';
     form1.button10.Hint:= '查找网络上保存的卦例记录';
     form1.button30.Hint:= '同步保存到本机和网络';
     form1.button31.Enabled:= true;
   end else begin
             是否使用网络:= 0;
             form1.Button18.Enabled:= false;
             form1.CheckBox6.Enabled:= false;
             form1.label18.Visible:= true;
             form1.button25.Hint:= '显示本机的最近50个卦例';
             form1.button25.Caption:= '查看最近50卦';
             form1.n501.Caption:= '查看最近50卦';
             form1.button10.Hint:= '查找本机上保存的记录';
             form1.button30.Hint:= '离线时仅保存在本机';
             form1.button31.Enabled:= false;
            end;

  form1.getFirstItems('select lei_mingcheng from fenlei_table',combobox1.Items);
   combobox3.Items.Text:= combobox1.Items.Text;

     if  combobox1.Items.IndexOf('杂类')>0 then
      combobox1.ItemIndex:= combobox1.Items.IndexOf('杂类')
      else
       if combobox1.Items.Count>0 then
         combobox1.ItemIndex:= 0;
    combobox3.ItemIndex:= combobox1.ItemIndex;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin

button27.Click;
 timer1.Enabled:= false;
end;

procedure TForm2.随机日期;
var i: integer;
begin
i:= 0;
  if checkbox2.Checked then
      begin
        //使用随机日期
        if cpu随机可用 then
          i:= rdrand_16 mod 21901;

         if 伪随机可用 then
           begin


                  i:= Random(21900);


           end;
        DateTimePicker1.Date:= Date-i;
      end;
end;

{ INC_Thread }

procedure INC_Thread.Execute;
begin
  inherited;
   G_count:= Thread_inc;
end;

end.
