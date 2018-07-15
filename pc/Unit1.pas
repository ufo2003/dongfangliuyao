unit Unit1;

//代码编写 傅铖荣 2018-7-14
//有任何问题可以联系 1145975039@qq.com 或者 ufo2003@126.com

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,CnCalendar, DB, ADODB, ImgList,shellapi,clipbrd,
  Menus, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,Unit_str_cn,IdHashMessageDigest,
  IdZLibCompressorBase, IdCompressorZLib,untAES, IdDNSResolver;
const
  hanggao=35;
  start_msg_cn= Wm_user+1010;
  cha_msg_cn= Wm_user+1011;
  app_v=11;
  lius: array[0..5] of string=('青龙','朱雀','勾陈','腾蛇','白虎','玄武');
type
 Tyao=record
   guaming: string[8];
   liushou: string[4];
   fushen: string[8];
   liuqin: string[4];
   nazhi: string[4];
   yaogua: integer;
   shiying: char;
   bianyao: string[8];
 end;
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Label1: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Label2: TLabel;
    ADOQuery2: TADOQuery;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button4: TButton;
    Label7: TLabel;
    Button5: TButton;
    Label8: TLabel;
    Button6: TButton;
    Label9: TLabel;
    Button7: TButton;
    Edit1: TEdit;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    ImageList1: TImageList;
    Label11: TLabel;
    Button11: TButton;
    Button12: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button13: TButton;
    Button14: TButton;
    Memo2: TMemo;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    CheckBox4: TCheckBox;
    Button19: TButton;
    Button20: TButton;
    Button24: TButton;
    Label12: TLabel;
    CheckBox5: TCheckBox;
    GroupBox2: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button25: TButton;
    ListBox1: TListBox;
    GroupBox4: TGroupBox;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Label13: TLabel;
    Button26: TButton;
    Button27: TButton;
    Label14: TLabel;
    Label15: TLabel;
    Memo3: TMemo;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button18: TButton;
    Button21: TButton;
    Label10: TLabel;
    Button22: TButton;
    Memo4: TMemo;
    IdCompressorZLib1: TIdCompressorZLib;
    Button23: TButton;
    Button31: TButton;
    Label16: TLabel;
    Label17: TLabel;
    Timer1: TTimer;
    CheckBox6: TCheckBox;
    MainMenu1: TMainMenu;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N501: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    Label18: TLabel;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    Button32: TButton;
    Button33: TButton;
    IdDNSResolver1: TIdDNSResolver;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Label11Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Label12MouseEnter(Sender: TObject);
    procedure Label12MouseLeave(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure RadioButton13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button27Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo3DblClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo3Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListBox1MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure Label10DblClick(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Memo4DblClick(Sender: TObject);
    procedure Button32Click(Sender: TObject);
  private
    { Private declarations }
    procedure start_show(var msg:Tmessage); message start_msg_cn;
    procedure power_set_timeStr(var msg:Tmessage); message WM_POWERBROADCAST;

    //function get_tiangandizhi(dt: tdate): string; //获得天干地支纪年

    function getNameByyaofu(const y: array of tyao): string; //根据爻符取回卦名
    procedure zhuangliushou(tg: char); //zhuang六兽
    procedure liushou_base(tg:string);
    procedure zhuangliuqinnajia(var y: array of tyao); //根据首条记录的卦名装六亲纳甲
    procedure hua(const y: array of tyao; d: tdate); //画出卦象
    procedure zhuangfushen;  //装伏神
    function fenxi(k,k2: integer): string;
    function xunkong(const s: string; d: tdate): string;
    function xunkong2(const s: string): string;
    function xunkong_shi(const s: string; d: tdate): string; //按时间推算的旬空
    function chukong(d: tdate): string; //返回出空时间
    function jintui(const a,b: string): string; //变爻进退生克
    function by_shengke(const a,b: string): string;
    procedure arrow(a1,a2,b1,b2 : integer; c: tcolor); //画箭头
    function shanhe: string; //返回是否三合局
    function cong(s: char): string; //返回冲的属性
    function hehe(s: char): string;  //返回合的属性
    function hedaicong(s: char): string;
    function banheDaiHe(s: char): string;
    function andong(i: integer): boolean; //是否暗动
    function wangxiang(const s: string): string; //返回旺相衰休
    function sheng(s: char): char;
    function keke(s: char): char;
    function shengwo(s: char): char;
    function kekewo(s: char): char;
    function deqi(s: char): boolean; //得气
    function guaneichonghe(s: char): boolean; //卦内冲和
    function zhuangbianyaoliuqin(s: string): string;
    procedure tian_tiangan(const gm: string; flag: integer); //填充天干，flag=1表示伏神，2=主卦，3=变卦
    function changsheng(s: char): char; //长生
    function jue(s: char): char; //绝
    function si(s: char): char; //死
    function mu(s: char): char; //墓
    function 返回颜色(i: integer): tcolor; //根据编号返回合冲颜色
    function 取得消息: ansistring; //取得网站消息
    procedure 画小卦象(s: char; img: timage); //画出小卦象
    function 取得八卦序数(s: char): string;
    function 取得八卦方位(s: char): string;
    function 取得主卦兄弟爻属性: char;
    function can_show_img: boolean;
  public
    { Public declarations }
    排卦方式: string;
    事由: string;
    伏神卦名: string;
    function getFirstString(const s: string): string;
    function getFirstInteger(const s: string): integer;
    function getFirstItems(const s: string; item: Tstrings):integer;
    function get_tiangandizhi(dt: tdate): string; //获得天干地支纪年
    procedure zhuanggua(d: tdate); //装卦
    function get_date_by_tiangandizhi(const yy,r: string): tdate;
    function get_guihun_youhun(const m: string): STRING;
    function get_tiangan_by_gua(const m: string): string; //根据卦名返回天干
    procedure set_timestr;
    function 保存断语和反馈(b: integer): boolean;  //1保存断语，2保存反馈，3 都保存
    function 根据id载入卦本地(id: integer):boolean;
    procedure 根据id载入卦网络(id: integer);
    function post_http(const url: string; t: tstringlist): string;
    function get_http(const url: string): string;
    function IdDecode(const s: string): string; //回复id的原先数字
  end;

   function md5string(const s: string): string;
   function benbian_quchu(const s: string): string;
   function aes_encrypt(const s: string): string;

var
  Form1: TForm1;
  G_date: tdate;
  g_time: ttime;
  是否使用网络: integer; //使用网络=1
  user_name: string;
  http_host: string;
  URL_G: string;
  //save_ 系列变量，用于载入卦后保存下来，供在保存短语时新增用
  save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou: string;
  gua_weiyi_bianhao_g,shuzi_id: string; //卦唯一编号是保存了卦编号，在网络单用户内和本机都是相同且唯一的，
  tiangan_kuan,gua_id_g,gua_index_g: integer;   //gua_id记录起卦的id gua_index 记录起卦或者查看过的stringlist数组的index
  liuyao1: array[0..5] of Tyao; //主
  liuyao2: array[0..5] of Tyao;  //变
  yue,ri,dangqian: string;
  tiangan1: array[0..5] of char;
  G_xunkong: array[0..1] of char; //当前旬空
  bianse: array[0..2,0..5] of integer; //  1表示合，2表示冲
  gua_shangxia: Tstringlist;
  Suiji_ID: integer;
implementation

uses Unit2, Unit3, Unit4, Unit5,gaimi_unit,dlg_unit,unit_jiaoshiyi,unit_img;

{$R *.dfm}



function aes_encrypt(const s: string): string;
var // ss: ansistring;
   ww: RawByteString;
begin
   ww:= Utf8Encode(s);
  //ss:= UTF8ToString(PAnsiChar(ss));
  //SetString(ss, PAnsiChar(ww), Length(ww));
  result:= EncryptString(ww,'ae87G0O3914Ww129');
end;

function benbian_quchu(const s: string): string;
begin
 result:= StringReplace(s,'本卦：','',[]);
 result:= StringReplace(result,'变卦：','之 ',[]);
 result:= StringReplace(result,'主卦：','',[]);
end;

function md5string(const s: string): string;
var md5: TIdHashMessageDigest5;
begin
   md5 := TIdHashMessageDigest5.Create;
   result := md5.HashStringAsHex(s);
   md5.Free;
end;

function changshan_tiangan(gua: string): string;
const
 乾上='庚丙戊';
 乾下='甲壬庚';
 坎上='丙戊甲';
 坎下='壬庚丙';
 艮上='戊甲壬';
 艮下='庚丙戊';
 震上='乙癸辛';
 震下='己丁乙';
 巽上='癸乙丁';
 巽下='己辛癸';
 离上='辛癸乙';
 离下='丁己辛';
 坤上='己辛癸';
 坤下='乙丁己';
 兑上='丁己辛';
 兑下='癸乙丁';
var
 a,b: string;
begin
    result:='此卦名称不对';
  if length(gua)<3 then
    exit;

    a:= '';
    b:= '';

  case gua[1] of
   '天': a:=乾上;
   '水': a:=坎上;
   '山': a:=艮上;
   '雷': a:=震上;
   '风': a:=巽上;
   '火': a:=离上;
   '地': a:=坤上;
   '泽': a:=兑上;
  end;
  case gua[2] of
   '天': b:=乾下;
   '水': b:=坎下;
   '山': b:=艮下;
   '雷': b:=震下;
   '风': b:=巽下;
   '火': b:=离下;
   '地': b:=坤下;
   '泽': b:=兑下;
  end;

  if a='' then
   begin
    case gua[3] of
   '天': result:=乾上+乾下;
   '水': result:=坎上+坎下;
   '山': result:=艮上+艮下;
   '雷': result:=震上+震下;
   '风': result:=巽上+巽下;
   '火': result:=离上+离下;
   '地': result:=坤上+坤下;
   '泽': result:=兑上+兑下;
    end;
   end else result:= a+b;

end;

function get_fendu(const tg: char;du: integer): string;
begin
  {
时/ 甲己 乙庚 丙辛 丁壬 戊癸
 子 甲子 丙子 戊子 庚子 壬子
 丑 乙丑 丁丑 己丑 辛丑 癸丑
 寅 丙寅 戊寅 庚寅 壬寅 甲寅
 卯 丁卯 己卯 辛卯 癸卯 乙卯
 辰 戊辰 庚辰 壬辰 甲辰 丙辰
 巳 己巳 辛巳 癸巳 乙巳 丁巳
 午 庚午 壬午 甲午 丙午 戊午
 未 辛未 癸未 乙未 丁未 己未
 申 壬申 甲申 丙申 戊申 庚申
 酉 癸酉 乙酉 丁酉 己酉 辛酉
 戌 甲戌 丙戌 戊戌 庚戌 壬戌
 亥 乙亥 丁亥 己亥 辛亥 癸亥
  }
result:= '';
  if (tg='甲') or (tg='己') then
   case du of
     1: result:= '甲子';
     2: result:= '乙丑';
     3: result:= '丙寅';
     4: result:= '丁卯';
     5: result:= '戊辰';
     6: result:= '己巳';
     7: result:= '庚午';
     8: result:= '辛未';
     9: result:= '壬申';
     10:result:= '癸酉';
     11:result:= '甲戌';
     12:result:= '乙亥';
   end;
    if (tg='乙') or (tg='庚') then
   case du of
     1: result:= '丙子';
     2: result:= '丁丑';
     3: result:= '戊寅';
     4: result:= '己卯';
     5: result:= '庚辰';
     6: result:= '辛巳';
     7: result:= '壬午';
     8: result:= '癸未';
     9: result:= '甲申';
     10:result:= '乙酉';
     11:result:= '丙戌';
     12:result:= '丁亥';
   end;
   if (tg='丙') or (tg='辛') then
   case du of
     1: result:= '戊子';
     2: result:= '己丑';
     3: result:= '庚寅';
     4: result:= '辛卯';
     5: result:= '壬辰';
     6: result:= '癸巳';
     7: result:= '甲午';
     8: result:= '乙未';
     9: result:= '丙申';
     10:result:= '丁酉';
     11:result:= '戊戌';
     12:result:= '己亥';
   end;
   if (tg='丁') or (tg='壬') then
   case du of
     1: result:= '庚子';
     2: result:= '辛丑';
     3: result:= '壬寅';
     4: result:= '癸卯';
     5: result:= '甲辰';
     6: result:= '乙巳';
     7: result:= '丙午';
     8: result:= '丁未';
     9: result:= '戊申';
     10:result:= '己酉';
     11:result:= '庚戌';
     12:result:= '辛亥';
   end;

   if (tg='戊') or (tg='癸') then
   case du of
     1: result:= '壬子';
     2: result:= '癸丑';
     3: result:= '甲寅';
     4: result:= '乙卯';
     5: result:= '丙辰';
     6: result:= '丁巳';
     7: result:= '戊午';
     8: result:= '己未';
     9: result:= '庚申';
     10:result:= '辛酉';
     11:result:= '壬戌';
     12:result:= '癸亥';
   end;

end;
function get_shifen(const tg: string;tm: ttime): string; //根据时间取得分钟度，10分钟为一度
var miao,fen,du: integer;
begin
  if tg[2]='子' then //起始分钟数
     miao:=-60
     else if tg[2]='丑' then
     miao:=60
     else if tg[2]='寅' then
     miao:=180
     else if tg[2]='卯' then
     miao:=300
     else if tg[2]='辰' then
     miao:=420
     else if tg[2]='巳' then
     miao:=540
     else if tg[2]='午' then
     miao:=660
     else if tg[2]='未' then
     miao:=780
     else if tg[2]='申' then
     miao:=900
     else if tg[2]='酉' then
     miao:=1020
     else if tg[2]='戌' then
     miao:=1140
     else
     miao:=1260;

 //取得当前过去的分钟数
   fen:= round(Frac(tm) /(1/24/60));
   if fen >=1380 then
      miao:= 1380;   //纠正子时交替

   du:= (fen-miao+10)div 10; //当前分钟减去标准分钟，再除以10，得到过了几个分度
   result:= get_fendu(tg[1],du);
end;

{ TForm1 }

function TForm1.andong(i: integer): boolean;
var ss: string;
begin
result:= false; //静爻得月令,旬空，得气等被冲为暗动
   if liuyao1[i].yaogua<3 then
    begin
     ss:= liuyao1[i].nazhi;
     if ((ss[2]=label5.Caption[2])
         or (sheng(label5.Caption[2])=ss[2])
          or ((g_xunkong[0]=ss[1]) or (g_xunkong[1]=ss[1]) )
          or deqi(ss[1])
        )
       and (cong(ri[2])=ss[1]) then
         result:= true;
    end;
end;

procedure TForm1.arrow(a1, a2, b1, b2: integer; c: tcolor);
var d,xa,ya,xb,yb: single;
    x0,x1,y0,y1: integer;
begin
  with paintbox1.Canvas do
   begin
     pen.Color:= c;
     moveto(a1,a2);
     lineto(b1,b2);
     X0 := a1;//PtStart是箭头的起点，PtEnd是终点，都是Tpoint型
     Y0 := a2;
     X1 := b1;
     Y1 := b2;

     D := Sqrt((Y1 - Y0) * (Y1 - Y0) + (X1 - X0) * (X1 - X0));
        if D > 0 then begin
          Xa := X1 + 10 * ((X0 - X1) + (Y0 - Y1) / 2) / D;
          Ya := Y1 + 10 * ((Y0 - Y1) - (X0 - X1) / 2) / D;
          Xb := X1 + 10 * ((X0 - X1) - (Y0 - Y1) / 2) / D;
          Yb := Y1 + 10 * ((Y0 - Y1) + (X0 - X1) / 2) / D;
          MoveTo(b1, b2);
          LineTo(Trunc(Xa), Trunc(Ya));
          MoveTo(b1, b2);
          LineTo(Trunc(Xb), Trunc(Yb));
                end;
   end;
end;

function TForm1.banheDaiHe(s: char): string;
var Y,M,D:Word;
    ss: string;
  I: Integer;
begin




result:= '';
     for I := 0 to 11 do
      begin
           DeCodeDate(g_date+i,Y,M,D);
       ss:= GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));
       if ss[2]=s then
         begin
          result:= datetostr(g_date+i)+ss+'成局';
          //break;
         end;
      end;

    DeCodeDate(g_date,Y,M,D);
    for I := 0 to 11 do
      begin
       m:= m+1;
       if m=13 then
        begin
         m:= 1;
         inc(y);
        end;
       ss:= GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d));
       if ss[2]=s then
         begin
          result:=result+' '+  inttostr(y)+'年'+inttostr(m)+'月'+ss+'成局';
          break;
         end;
      end;


end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if button28.Enabled or button29.Enabled then
  begin
    case dlg_form.ShowModal of
     mryes: begin
              if button28.Enabled then
                 button28.Click;
              if button29.Enabled then
                 button29.Click;
            end;
     mrcancel: exit;
    end;
  end;

 set_timestr;
  if form3.ShowModal=mrok then
    begin
      Button10.Tag:= 1;
      label1.Caption:= get_tiangandizhi(G_date);
     zhuanggua(G_date);
      Button10.Tag:= 0;
    // if getFirstString('select glid from fankui where glid='''+edit1.Text +'''')<>'' then
     //   button17.Click;
    end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 if trim(liuyao1[0].guaming)='' then
     exit;

 if sender=button11 then
    FillChar(bianse,sizeof(bianse),0);

 if  button2.Caption= '显示变卦' then
   hua(liuyao1,G_date)
   else
    hua(liuyao2,G_date);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 form4.Show;
end;

procedure TForm1.Button13Click(Sender: TObject);
  function get_shiying(c: char): string;
   begin
     if c='世' then
      result:= '世'
      else if  c='应' then
        result:= '应'
        else
         result:= ' ';
   end;
 function get_yao(i:integer): string;
  begin
    case i of
     0: result:= 'E';
     1: result:= '一';
     2: result:= '--';
     3: result:= 'o';
     4: result:= 'x';
      else
       result:= 'E';
    end;
  end;
  function fs(const s: string): string;
  begin
    if s='' then
     result:= ' '+#9
     else
      result:= s;
  end;
begin

 if liuyao1[0].yaogua=0 then
    exit;

   memo2.Clear;
     memo2.Lines.Add('卦例ID='+edit1.Text+' '+排卦方式);
     memo2.Lines.Add(label1.Caption);
     memo2.Lines.Add('免费六爻排盘软件 http://www.finer2.com/liuyao/');
     memo2.Lines.Add(label9.Caption);
     memo2.Lines.Add(label2.Caption);
     memo2.Lines.Add(label3.Caption+'       '+label4.Caption);

     memo2.Lines.Add('六兽'+#9+'伏神'+#9+'  六亲纳支  世应 爻像    变爻');

     memo2.Lines.Add(liuyao1[0].liushou+#9+fs(liuyao1[0].fushen)+'  '+liuyao1[0].liuqin+liuyao1[0].nazhi+
                     '  '+get_shiying(liuyao1[0].shiying)+#9+get_yao(liuyao1[0].yaogua)+#9+liuyao1[0].bianyao );

     memo2.Lines.Add(liuyao1[1].liushou+#9+fs(liuyao1[1].fushen)+'  '+liuyao1[1].liuqin+liuyao1[1].nazhi+
                     '  '+get_shiying(liuyao1[1].shiying)+#9+get_yao(liuyao1[1].yaogua)+#9+liuyao1[1].bianyao);

     memo2.Lines.Add(liuyao1[2].liushou+#9+fs(liuyao1[2].fushen)+'  '+liuyao1[2].liuqin+liuyao1[2].nazhi+
                     '  '+get_shiying(liuyao1[2].shiying)+#9+get_yao(liuyao1[2].yaogua)+#9+liuyao1[2].bianyao);

     memo2.Lines.Add(liuyao1[3].liushou+#9+fs(liuyao1[3].fushen)+'  '+liuyao1[3].liuqin+liuyao1[3].nazhi+
                     '  '+get_shiying(liuyao1[3].shiying)+#9+get_yao(liuyao1[3].yaogua)+#9+liuyao1[3].bianyao);

     memo2.Lines.Add(liuyao1[4].liushou+#9+fs(liuyao1[4].fushen)+'  '+liuyao1[4].liuqin+liuyao1[4].nazhi+
                     '  '+get_shiying(liuyao1[4].shiying)+#9+get_yao(liuyao1[4].yaogua)+#9+liuyao1[4].bianyao);

     memo2.Lines.Add(liuyao1[5].liushou+#9+fs(liuyao1[5].fushen)+'  '+liuyao1[5].liuqin+liuyao1[5].nazhi+
                     '  '+get_shiying(liuyao1[5].shiying)+#9+get_yao(liuyao1[5].yaogua)+#9+liuyao1[5].bianyao);
   memo2.SelectAll;
   memo2.CopyToClipboard;
   memo2.Clear;

end;

procedure TForm1.Button14Click(Sender: TObject);
var MyFormat : Word;
 Bitmap : TBitMap;
 AData : THandle;APalette :HPALETTE;    //////这儿改了一下
begin
 Bitmap := TBitmap.Create;
 try
   Bitmap.Width:= 680;
   bitmap.Height:= 425;
   bitmap.Canvas.CopyRect(rect(0,0,680,425),self.Canvas,rect(82,8,762,433));
   bitmap.Canvas.Font.Size:= 14;
   bitmap.Canvas.TextOut(44,360,'排盘 Http://www.finer2.com/liuyao/');
   Bitmap.SaveToClipBoardFormat(MyFormat,
   AData,
   APalette);
   ClipBoard.SetAsHandle(MyFormat,AData);
 finally
   Bitmap.Free;
 end;


end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 memo1.Lines.Clear;
 memo1.SetFocus;

end;

procedure TForm1.Button16Click(Sender: TObject);
begin
 if messagebox(handle,'是否保存本卦的反馈信息？','提示',mb_yesno)=mryes then
 begin
 ADOConnection1.Execute('delete from fankui where glid='''+edit1.Text+'''');
  ADOConnection1.Execute('insert into fankui(glid,neirong)values('''+edit1.Text+''','''+memo1.Text+''')');
 end;

end;

procedure TForm1.Button17Click(Sender: TObject);
begin
memo1.Clear;
 memo1.Lines.Text:= getfirststring('select neirong from fankui where glid='''+edit1.Text+'''');
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
 if 是否使用网络=1 then
    gaimi_form.Show
    else
     showmessage('非联网状态下不可用。');
end;

procedure TForm1.Button19Click(Sender: TObject);
var ss: string;
    i: integer;
begin


 if gua_index_g<=0 then
  begin
    showmessage('已经到最前面。');
    exit;
  end;

 gua_index_g:= gua_index_g-1;

 ss:= gua_shangxia.Strings[gua_index_g];
 if ss<>'' then
  begin
   i:= strtoint(copy(ss,1,pos('(',ss)-1));
    if pos('本地',ss)>0 then
        根据id载入卦本地(i)
        else
         根据id载入卦网络(i);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if button28.Enabled or button29.Enabled then
  begin
    case dlg_form.ShowModal of
     mryes: begin
              if button28.Enabled then
                 button28.Click;
              if button29.Enabled then
                 button29.Click;
            end;
     mrcancel: exit;
    end;
  end;

 set_timestr;
   form2.DateTimePicker1.Date:= date;
   form2.DateTimePicker2.Time:= time;
   form2.DateTimePicker3.Date:= date;
   form2.DateTimePicker4.Time:= time;
   if form2.ShowModal = mrok then
    begin
        button4.Caption:='显示综卦';
        label7.Visible:= false;
      // G_date:= date;
      label1.Caption:= get_tiangandizhi(G_date);
       zhuanggua(G_date);
    end;

end;

procedure TForm1.Button20Click(Sender: TObject);
var ss: string;
    i: integer;
begin


 if gua_index_g>=(gua_shangxia.Count-1) then
  begin
    showmessage('已经到最后面。');
    exit;
  end;

 gua_index_g:= gua_index_g+1;

 ss:= gua_shangxia.Strings[gua_index_g];
 if ss<>'' then
  begin
   i:= strtoint(copy(ss,1,pos('(',ss)-1));
    if pos('本地',ss)>0 then
        根据id载入卦本地(i)
        else
         根据id载入卦网络(i);
  end;
end;

procedure TForm1.Button21Click(Sender: TObject);
var s,s2: string;
begin

  s:= liuyao1[0].guaming;
  if s='' then
   exit;

  label10.Visible:= not label10.Visible;

  if label10.Visible=false then
    exit;

  if s='乾为天' then
   s:='乾';
 if s='坤为地' then
   s:='坤';
 if s='兑为泽' then
   s:='兑';
 if s='震为雷' then
   s:='震';
 if s='艮为山' then
   s:='艮';
 if s='巽为风' then
   s:='巽';
 if s='离为火' then
   s:='离';
 if s='坎为水' then
   s:='坎';

 if length(S)>1 then
  delete(s,1,2);

 if button2.Enabled then
    begin
    s2:= liuyao2[0].guaming;
     if s2='乾为天' then
    s2:='乾';
     if s2='坤为地' then
       s2:='坤';
     if s2='兑为泽' then
       s2:='兑';
     if s2='震为雷' then
       s2:='震';
     if s2='艮为山' then
       s2:='艮';
     if s2='巽为风' then
       s2:='巽';
     if s2='离为火' then
       s2:='离';
     if s2='坎为水' then
       s2:='坎';

     if length(s2)>1 then
     delete(s2,1,2);

     s:= s+'之'+s2;
    end;

 label10.Caption:= get_jiaochi(s);
end;

procedure TForm1.Button22Click(Sender: TObject);
const ss: array[0..63] of string=('乾','坤','屯','蒙','需','讼','师','比','小畜','履','泰','否','同人',
'大有','谦','豫','随','蛊','临','观','噬嗑','贲','剥','复','无妄','大畜','颐',
'大过','坎','离','咸','恒','遁','大壮','晋','明夷','家人','睽','蹇','解','损',
'益','夬','姤','萃','升','困','井','革','鼎','震','艮','渐','归妹','丰','旅',
'巽','兑','涣','节','中孚','小过','既济','未济');
var
  I: Integer;
  j: Integer;
  s: string;
begin
  for I := 0 to 63 do
    for j := 0 to 63 do
      begin
        if i=j then
        s:=ss[i]
        else
        s:= ss[i]+ '之'+ss[j];
      {  if s='乾之乾' then
   s:='乾';
 if s='坤之坤' then
   s:='坤';
 if s='兑之兑' then
   s:='兑';
 if s='震之震' then
   s:='震';
 if s='艮之艮' then
   s:='艮';
 if s='巽之巽' then
   s:='巽';
 if s='离之离' then
   s:='离';
 if s='坎之坎' then
   s:='坎'; }

        if get_jiaochi(s)=''
         then
          begin
            showmessage(s);
            exit;
          end;
      end;

   showmessage('检测完成。');
end;

procedure TForm1.Button23Click(Sender: TObject);
var str1: Tstringlist;
begin
    str1:= Tstringlist.Create;
       str1.Add('mm='+aes_encrypt(memo1.Text));
    screen.Cursor:= crhourglass;
       // ss:= 'http://www.finer2.com/baiduliuyao/cha.php?'+ 'nm='+user_name + '&wd=list50';
       //ss:= form1.post_http(ss,nil);
       memo3.Lines.Add( form1.post_http('http://'+http_host+'/baiduliuyao/test.php',str1));
    screen.Cursor:= crdefault;
      str1.Free;
 // memo3.Lines.Add(EncryptString('abcde wwer','ae87G0O3914Ww129'));

end;

procedure TForm1.Button24Click(Sender: TObject);  //显示大幅的提示信息
var a,b,c,d,yao1,yao2,yaozong: integer;
  i: Integer; //a表示主卦下，b主卦上卦
  ss: string;
  a1,b1,c1,d1: char; //世应
begin
 form5.Memo1.Clear;
 a:= 0;
 b:= 0;
 c:= 0;
 d:= 0;
   ss:= liuyao1[0].guaming;
    if ss[1]='天' then
        b:= 1
    else if ss[1]='泽' then
        b:= 2
    else if ss[1]='火' then
        b:= 3
    else if ss[1]='雷' then
        b:= 4
    else if ss[1]='风' then
        b:= 5
    else if ss[1]='水' then
        b:= 6
    else if ss[1]='山' then
        b:= 7
    else if ss[1]='地' then
        b:= 8;

    if ss[2]='天' then
        a:= 1
    else if ss[2]='泽' then
        a:= 2
    else if ss[2]='火' then
        a:= 3
    else if ss[2]='雷' then
        a:= 4
    else if ss[2]='风' then
        a:= 5
    else if ss[2]='水' then
        a:= 6
    else if ss[2]='山' then
        a:= 7
    else if ss[2]='地' then
        a:= 8;

   if ss='乾为天' then
    begin
      a:=1;
      b:= 1;
    end;
   if ss='兑为泽' then
    begin
      a:=2;
      b:= 2;
    end;
   if ss='离为火' then
    begin
      a:=3;
      b:= 3;
    end;
   if ss='震为雷' then
    begin
      a:=4;
      b:= 4;
    end;
    if ss='巽为风' then
    begin
      a:=5;
      b:= 5;
    end;
   if ss='坎为水' then
    begin
      a:=6;
      b:= 6;
    end;
    if ss='艮为山' then
    begin
      a:=7;
      b:= 7;
    end;
    if ss='坤为地' then
    begin
      a:=8;
      b:= 8;
    end;

   if button2.Enabled then
    begin
    ss:= liuyao2[0].guaming;
      if ss[1]='天' then
        d:= 1
        else if ss[1]='泽' then
            d:= 2
        else if ss[1]='火' then
            d:= 3
        else if ss[1]='雷' then
            d:= 4
        else if ss[1]='风' then
            d:= 5
        else if ss[1]='水' then
            d:= 6
        else if ss[1]='山' then
            d:= 7
        else if ss[1]='地' then
            d:= 8;

        if ss[2]='天' then
            c:= 1
        else if ss[2]='泽' then
            c:= 2
        else if ss[2]='火' then
            c:= 3
        else if ss[2]='雷' then
            c:= 4
        else if ss[2]='风' then
            c:= 5
        else if ss[2]='水' then
            c:= 6
        else if ss[2]='山' then
            c:= 7
        else if ss[2]='地' then
            c:= 8;

         if ss='乾为天' then
        begin
          c:=1;
          d:= 1;
        end;
       if ss='兑为泽' then
        begin
          c:=2;
          d:= 2;
        end;
       if ss='离为火' then
        begin
          c:=3;
          d:= 3;
        end;
       if ss='震为雷' then
        begin
          c:=4;
          d:= 4;
        end;
        if ss='巽为风' then
        begin
          c:=5;
          d:= 5;
        end;
       if ss='坎为水' then
        begin
          c:=6;
          d:= 6;
        end;
        if ss='艮为山' then
        begin
          c:=7;
          d:= 7;
        end;
        if ss='坤为地' then
        begin
          c:=8;
          d:= 8;
        end;
    end; //end if

 yao1:= 0;
 yao2:= 0;
 yaozong:= 0;

      if liuyao1[5].yaogua mod 2=1 then
         yao1:= 1;
      if liuyao1[4].yaogua mod 2=1 then
         yao1:= yao1+2;
      if liuyao1[3].yaogua mod 2=1 then
         yao1:= yao1+4;
      if liuyao1[2].yaogua mod 2=1 then
         yao1:= yao1+8;
      if liuyao1[1].yaogua mod 2=1 then
         yao1:= yao1+16;
      if liuyao1[0].yaogua mod 2=1 then
         yao1:= yao1+32;

     if button2.Enabled then
     begin
      if liuyao2[5].yaogua mod 2=1 then
         yao2:= 1;
      if liuyao2[4].yaogua mod 2=1 then
         yao2:= yao2+2;
      if liuyao2[3].yaogua mod 2=1 then
         yao2:= yao2+4;
      if liuyao2[2].yaogua mod 2=1 then
         yao2:= yao2+8;
      if liuyao2[1].yaogua mod 2=1 then
         yao2:= yao2+16;
      if liuyao2[0].yaogua mod 2=1 then
         yao2:= yao2+32;

      yaozong:= yao1;
      yaozong:= yaozong shl 6;
      yaozong:= yaozong+ yao2;
     end;

  a1:= ' ';
  b1:= ' ';
  c1:= ' ';
  d1:= ' ';

  for I := 5 downto 3 do
    begin
     if liuyao1[i].shiying='世' then
      begin
       a1:= '世';
       b1:= '应';
      end else if liuyao1[i].shiying='应' then
      begin
         a1:= '应';
       b1:= '世';
      end;
    end;

    if  button2.Enabled then
      for I := 5 downto 3 do
    begin
     if liuyao2[i].shiying='世' then
      begin
       c1:= '世';
       d1:= '应';
      end else if liuyao2[i].shiying='应' then
      begin
         c1:= '应';
       d1:= '世';
      end;
    end;

   form5.Memo1.Lines.Add('主卦：下'+a1+ inttostr(a)+' 上'+b1+ inttostr(b));
   if button2.Enabled then
    form5.Memo1.Lines.Add('变卦：下'+ c1+inttostr(c)+' 上'+d1+inttostr(d));

   form5.Memo1.Lines.Add('主卦爻二进制：'+ inttostr(yao1));
   if button2.Enabled then
    begin
    form5.Memo1.Lines.Add('变卦爻二进制：'+ inttostr(yao2));
    form5.Memo1.Lines.Add('总共爻二进制：'+ inttostr(yaozong));
    end;
 form5.show;
end;

procedure TForm1.Button25Click(Sender: TObject);
var str1: tstringlist;
    ss,a,b,c,d: string;
    i,k: integer;
begin
set_timestr;

 if button28.Enabled or button29.Enabled then
  begin
    case dlg_form.ShowModal of
     mryes: begin
              if button28.Enabled then
                 button28.Click;
              if button29.Enabled then
                 button29.Click;
            end;
     mrcancel: exit;
    end;
  end;

i:= 0;
  ListBox1.Canvas.Font.Name:='宋体';
    ListBox1.Canvas.Font.Size:= 12;

  listbox1.Items.Clear;
 listbox1.Top:= 8;
 listbox1.Left:= 136;
 listbox1.Height:= 498;
 listbox1.Width:= 660;

  if 是否使用网络=1 then
   begin
    //首先显示本地未同步到网络的卦
     if checkbox6.Checked then
      begin
       with adoquery1 do
               begin
                Close;
                sql.Clear;
                sql.Add('select id,gua_ming,gua_bianhao,shiyou from gua_table where ben=1');
                open;
                 while not eof do
                  begin
                   listbox1.Items.Add('(未保存到网络)'+intToHex(strtoint(fields[0].asstring)+Suiji_ID,1)+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring+';'+fields[3].asstring);
                    next;
                  end;
                end;
      end;

    //从网络显示卦
    str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('wd='+aes_encrypt('list50'));
    screen.Cursor:= crhourglass;
       // ss:= 'http://www.finer2.com/baiduliuyao/cha.php?'+ 'nm='+user_name + '&wd=list50';
       //ss:= form1.post_http(ss,nil);
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/cha.php',str1);
    screen.Cursor:= crdefault;
      str1.Free;

        if ss='neterror' then
        begin
          showmessage('网络错误，请稍后重试,一般过一两分钟即可恢复。');
          exit;
        end;

        if ss<>'' then
         begin
          delete(ss,1,pos('<t>',ss)+2);
          while pos('<t>',ss)>0 do
           begin
             inc(i); //计数，防止出错无穷循环
            a:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            b:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            c:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            d:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
             listbox1.Items.Add(intToHex(strtoint(a)+Suiji_ID,1)+';'+benbian_quchu(b)+';'+c+';'+d);
              while pos('<t>',ss)=1 do
                delete(ss,1,3);

             if i>101 then
               break;
           end;
         end;


   end else begin
              with adoquery1 do
               begin
                Close;
                sql.Clear;
                sql.Add('select top 50 id,gua_ming,gua_bianhao,shiyou from gua_table order by shijian desc');
                open;
                 while not eof do
                  begin
                   listbox1.Items.Add(intToHex(strtoint(fields[0].asstring)+Suiji_ID,1)+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring+';'+fields[3].asstring);
                    next;
                  end;
                end;
               end;
 listbox1.Visible:= true;
 k :=   0;
  for i:=0 to listbox1.Items.Count-1 do
  if k<listbox1.Canvas.TextWidth(listbox1.Items.Strings[i]) then
     k := listbox1.Canvas.TextWidth(listbox1.Items.Strings[i]);
  SendMessage(listbox1.Handle,LB_SETHORIZONTALEXTENT, round(k *1.5),0);

 listbox1.SetFocus;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
 if memo4.Visible=false then
  begin
{   button13.Left:= button13.Left+ 254;
   button14.Left:= button14.Left+ 254;
   button19.Left:= button19.Left+ 254;
   button20.Left:= button20.Left+ 254;
   button12.Left:= button12.Left+ 254;
   button4.Left:= button4.Left+ 254;
   button1.Left:= button1.Left+ 254;
   button10.Left:= button10.Left+ 254;
    memo4.Left:= 377;
    memo4.Width:= 314;  }
    memo4.Visible:= true;
  end else begin
    memo4.Visible:= false;
    exit;
  end;

memo4.Lines.Clear;
 memo4.Lines.Add(liuyao1[0].guaming);
 memo4.Lines.Add('');
 memo4.Lines.Add(get_yao_chi(liuyao1[0].guaming ));
  if button2.Enabled then
   begin
   memo4.Lines.Add('');
   memo4.Lines.Add(liuyao2[0].guaming);
   memo4.Lines.Add('');
   memo4.Lines.Add(get_yao_chi(liuyao2[0].guaming ));
   end;
 SendMessage(memo4.Handle, WM_VSCROLL, SB_TOP, 0);

end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  label16.Font.Color:= clWindowText;
  label16.Caption:= '保存中……';
  label16.Visible:= true;
  label16.Update;

   if 保存断语和反馈(1) then
   begin
   //showmessage('断语保存成功。');
   button28.Enabled:= false;
   button30.Enabled:= false;
   label16.Caption:= '保存成功。';
   label16.Font.Color:= clgreen;
   label16.Update;
   end else begin
              label16.Caption:= '保存失败';
              label16.Font.Color:= clred;
              label16.Update;
              showmessage('断语保存失败，有时网络波动，请稍后重试,一般过一两分钟即可恢复。');
            end;
  timer1.Enabled:= true;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
   label17.Font.Color:= clWindowText;
  label17.Caption:= '保存中……';
  label17.Visible:= true;
   label17.Update;
 if 保存断语和反馈(2) then
  begin
   //showmessage('反馈保存成功。');
   button29.Enabled:= false;
   button30.Enabled:= false;
   label17.Caption:= '保存成功。';
   label17.Font.Color:= clgreen;
   label17.Update;
  end else begin
             label17.Caption:= '保存失败';
             label17.Font.Color:= clred;
             label17.Update;
             showmessage('反馈保存失败，有时网络波动，请稍后重试,一般过一两分钟即可恢复。');
           end;

  timer1.Enabled:= true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
FillChar(bianse,sizeof(bianse),0);
  if button2.Caption= '显示变卦' then
   begin
    hua(liuyao2,G_date);
    button2.Caption:= '显示主卦';

   end else begin
    hua(liuyao1,G_date);
    button2.Caption:= '显示变卦';
   end;
end;

procedure TForm1.Button30Click(Sender: TObject);
begin
  label16.Font.Color:= clWindowText;
  label16.Caption:= '保存中……';
  label16.Visible:= true;
  label17.Font.Color:= clWindowText;
  label17.Caption:= '保存中……';
  label17.Visible:= true;
  label16.Update;
  label17.Update;
 if 保存断语和反馈(3) then
 begin
  // showmessage('全部保存成功。');
   button28.Enabled:= false;
   button29.Enabled:= false;
   button30.Enabled:= false;
   label16.Caption:= '保存成功。';
   label16.Font.Color:= clgreen;
   label17.Caption:= '保存成功。';
   label17.Font.Color:= clgreen;
   label16.Update;
   label17.Update;
 end  else begin
        label16.Caption:= '保存失败';
        label16.Font.Color:= clred;
        label17.Caption:= '保存失败';
        label17.Font.Color:= clred;
        label16.Update;
        label17.Update;
        showmessage('全部保存失败，有时网络波动，请稍后重试,一般过一两分钟即可恢复。');
      end;

     timer1.Enabled:= true;
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
//查看全部，打开查找窗口并显示全部
 if 是否使用网络=1 then
  begin
   postmessage(form3.handle,cha_msg_cn,0,0);
   button10click(sender);
  end;
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
 if gua_weiyi_bianhao_g='' then
  begin
    showmessage('请先起卦或者载入一个以前保存的卦。');
    exit;
  end;

  imgform.guabianhao:= gua_weiyi_bianhao_g;
  imgform.Show;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
  ss: string;
begin
  //蓝色表示生，绿色表示合，红色表示克，紫色表示冲
 //  arrow(8,16,152,99,clred);

   if button2.Caption= '显示主卦' then
    begin
      showmessage('只能显示主卦关系，当前处于变卦内容显示，无法执行此操作');
      exit;
    end;

  for I := 0 to 5 do
    begin
     if liuyao1[i].fushen<>'' then
      begin
        ss:= liuyao1[i].fushen;
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'相合''')<>'' then
           arrow(17,31,134,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'相冲''')<>'' then
           arrow(21,31,138,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'生'+ ss[4]+'''')<> ''then
           arrow(44,31,161,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'克'+ ss[4]+'''')<> ''then
           arrow(48,31,165,64+i*35,clred);

           //日
         if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'相合''')<>'' then
           arrow(110,31,138,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'相冲''')<>'' then
           arrow(114,31,138,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'生'+ ss[4]+'''')<> ''then
           arrow(134,31,161,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'克'+ ss[4]+'''')<> ''then
           arrow(138,31,165,64+i*35,clred);
      end;

     ss:= liuyao1[i].nazhi;    //纳枝 月
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[1]+'相合''')<>'' then
           arrow(17,31,260,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[1]+'相冲''')<>'' then
           arrow(21,31,266,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'生'+ ss[2]+'''')<> ''then
           arrow(44,31,290,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'克'+ ss[2]+'''')<> ''then
           arrow(48,31,296,64+i*35,clred);

           //日
         if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[1]+'相合''')<>'' then
           arrow(110,31,260,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[1]+'相冲''')<>'' then
           arrow(114,31,266,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'生'+ ss[2]+'''')<> ''then
           arrow(134,31,290,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'克'+ ss[2]+'''')<> ''then
           arrow(138,31,296,64+i*35,clred);
     if liuyao1[i].yaogua>2 then
       begin
         ss:= liuyao1[i].bianyao;
         if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'相合''')<>'' then
           arrow(17,31,506,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'相冲''')<>'' then
           arrow(21,31,512,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'生'+ ss[4]+'''')<> ''then
           arrow(44,31,532,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'克'+ ss[4]+'''')<> ''then
           arrow(48,31,538,64+i*35,clred);

           //日
         if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'相合''')<>'' then
           arrow(110,31,506,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'相冲''')<>'' then
           arrow(114,31,512,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'生'+ ss[4]+'''')<> ''then
           arrow(134,31,532,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'克'+ ss[4]+'''')<> ''then
           arrow(138,31,538,64+i*35,clred);

       end; //end if bianyao
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i: integer;
begin
  //
 FillChar(bianse,sizeof(bianse),0);
  if button4.Caption='显示综卦' then
   begin
     button4.Caption:= '显示本卦';
     label7.Visible:= true;
    end else begin
               button4.Caption:='显示综卦';
               label7.Visible:= false;
             end;
   for i := 0 to 5 do
     begin
      liuyao1[i].fushen:= '';
      liuyao1[i].bianyao:= '';
      liuyao1[i].shiying:= ' ';

       case liuyao1[i].yaogua of
        1: liuyao1[i].yaogua:= 2;
        2: liuyao1[i].yaogua:= 1;
        3: liuyao1[i].yaogua:= 4;
        4: liuyao1[i].yaogua:= 3;
       end;
     end;
      Button10.Tag:= 1;
     zhuanggua(G_date);
      Button10.Tag:= 0;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
FillChar(bianse,sizeof(bianse),0);
button11.Click;
  fenxi(0,0);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
FillChar(bianse,sizeof(bianse),0);
button11.Click;

 //memo1.Lines.LoadFromFile(ExtractFilePath(application.ExeName)+'基础知识.txt');

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 button2.Caption:= '显示变卦';
 hua(liuyao1,G_date);
end;

procedure TForm1.Button8Click(Sender: TObject);
var ss,ss_e: string;
     i: integer;
begin
  if length(edit1.Text)< 14 then
   begin
     showmessage('六爻ID必须是14位，长度不对');
     exit;
   end;
  ss_e:= edit1.Text;
  ss:= copy(ss_e,1,8);
  insert('-',ss,5);
  insert('-',ss,8);
   G_date:= strtodate(ss);

   ss:= copy(ss_e,9,6);

    if pos('藏山卜',ss_e)>0 then
     begin
      排卦方式:='藏山卜';
      radiobutton14.Checked:= true;
     end else
          begin
           排卦方式:='京房式';
           radiobutton13.Checked:= true;
          end;
               button4.Caption:='显示综卦';
               label7.Visible:= false;

     if pos('T:',ss_e)>0 then
      begin
        G_time:= strtotime(copy(ss_e,pos('T:',ss_e)+2,8));
      end;
   for i := 0 to 5 do
     begin
      liuyao1[i].fushen:= '';
      liuyao1[i].bianyao:= '';
      liuyao1[i].shiying:= ' ';
      liuyao1[i].yaogua:= strtoint(ss[i+1]);

     end;

     label1.Caption:= get_tiangandizhi(G_date);
     Button10.Tag:= 1;
     zhuanggua(G_date);
     Button10.Tag:= 0;
end;

procedure TForm1.Button9Click(Sender: TObject);
var ss,ss2,ss3: string;
    str: Tstringlist;
begin
   set_timestr;
   ss:= inputbox('备注','备注','');
    ss2:= ExtractFilePath(application.ExeName)+'save';
   if DirectoryExists(ss2)=false then
     mkdir(ss2);

   str:= Tstringlist.Create;
    ss3:= datetostr(date);
    ss3:= copy(ss3,1,7);
    delete(ss3,5,1);

    ss2:= ss2+'\'+ ss3+ '.txt';

    if FileExists(ss2) then
       str.LoadFromFile(ss2);

     if 排卦方式='藏山卜' then
      str.Add(edit1.Text+ '[藏山卜] '+ ss)
      else
        str.Add(edit1.Text+ ss+'T:'+timetostr(G_time));

    str.SaveToFile(ss2);
   str.Free;
   showmessage('保存完成。');
end;

function TForm1.by_shengke(const a, b: string): string;
begin
result:= '';
if sheng(b[1])=a then
     result:= '回头生' //回头生
     else if keke(b[1])=a then
             result:= '回头克';
end;

function TForm1.can_show_img: boolean;
begin
result:= false;
  with adoquery1 do
          begin
            close;
            sql.Clear;
            sql.Add('select count(*) from img where '+
            'gua_bianhao='''+gua_weiyi_bianhao_g+'''');
            open;
             if not eof then
                         result:=(fields[0].asinteger>0);

            close;
          end;
end;

function TForm1.changsheng(s: char): char;
begin
     result:= ' ';
 case s of
  '木': result:= '亥';
  '火': result:= '寅';
   '土': result:= '申';
  '金': result:= '巳';
  '水': result:= '申';
 end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  button11.Click;
  self.ADOConnection1.Execute('update zhi set value1='+inttostr(ord(checkbox1.Checked))+' where id=85');
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
var i: integer;
begin
   button11.Click;
   if checkbox2.Checked then
    i:= 0
     else
      i:= 1;
    self.ADOConnection1.Execute('update zhi set value15='+inttostr(i)+' where id=85');
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
var i: integer;
begin
  for i := 0 to 5 do
           begin
           // liuyao2[i].liushou:= liuyao1[i].liushou;  装六兽时候一并装好了
             if (liuyao1[i].yaogua>=3) or checkbox3.Checked then
                liuyao1[i].bianyao:= liuyao2[i].liuqin+ liuyao2[i].nazhi
                else
                  liuyao1[i].bianyao:='';
           end;
  button11.Click;
  self.ADOConnection1.Execute('update zhi set value3='+inttostr(ord(checkbox3.Checked))+' where id=85');
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked then
    tiangan_kuan:= 22
    else
    tiangan_kuan:= 0;

  button11.Click;
  self.ADOConnection1.Execute('update zhi set value4='+inttostr(ord(checkbox4.Checked))+' where id=85');
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
 Button10.Tag:= 1;
 zhuanggua(g_date);
  Button10.Tag:= 0;
end;

function TForm1.chukong(d: tdate): string;
var ss: string;
  I: Integer;
  Y,M,Dd:Word;

begin
result:= '';

  for I := 1 to 11 do
    begin
      DeCodeDate(d+i,Y,M,Dd);
      ss:= GetGanZhiFromNumber(GetGanZhiFromDay(y,m,dd));
       if (ss='甲子') or (ss='甲寅') or
          (ss='甲戌') or (ss='甲申') or
          (ss='甲午') or (ss='甲辰') then
        begin
           result:=  datetostr(d+i)+' 出空';
           exit;
        end;
    end;

end;

function TForm1.cong(s: char): string;
begin
result:= '';
  case s of
  '子': result:= '午';
  '午': result:= '子';
   '丑': result:= '未';
  '未': result:= '丑';
  '寅': result:= '申';
  '申': result:= '寅';
  '卯': result:= '酉';
  '酉': result:= '卯';
  '辰': result:= '戌';
  '戌': result:= '辰';
  '巳': result:= '亥';
  '亥': result:= '巳';
  end;
end;

function TForm1.deqi(s: char): boolean;
begin
  //亥子水爻气在丑月，寅卯木爻气在辰月，巳午火爻气在未月，申酉金爻气在戌月
  result:= false;

  if ((s='亥') or (s='子')) and (yue[2]='丑') then
    result:= true;
  if ((s='寅') or (s='卯')) and (yue[2]='辰') then
    result:= true;
  if ((s='巳') or (s='午')) and (yue[2]='未') then
    result:= true;
  if ((s='申') or (s='酉')) and (yue[2]='戌') then
    result:= true;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    key:= #0;
    button8.Click;
  end;
end;

function TForm1.fenxi(k,k2: integer): string;
var ss,sk,s2: string;
    i,sy,yy: integer;
    b: boolean;
   procedure xieru(const n: string);
   var tmp: string;
    begin
     tmp:= n+'：'+ ss ;


     sk:= getfirststring('select key from zhi where value1='''+ yue[2]+ss[4]+''' or '+
                                                   'value2='''+ yue[2]+ss[4]+''' or '+
                                                   'value3='''+ yue[2]+ss[4]+''' or '+
                                                   'value4='''+ yue[2]+ss[4]+''' or '+
                                                   'value5='''+ yue[2]+ss[4]+''''
     );
     if sk<>'' then
      tmp:= tmp +' 月建 12宫 ('+sk+')';

      memo1.Lines.Add(tmp);

      tmp:= n+'：'+ ss;

     sk:= getfirststring('select key from zhi where value1='''+ ri[2]+ss[4]+''' or '+
                                                   'value2='''+ ri[2]+ss[4]+''' or '+
                                                   'value3='''+ ri[2]+ss[4]+''' or '+
                                                   'value4='''+ ri[2]+ss[4]+''' or '+
                                                   'value5='''+ ri[2]+ss[4]+''''
     );
     if sk<>'' then
      tmp:= tmp +' 日建 12宫 ('+sk+')';

      memo1.Lines.Add(tmp);

     if deqi(ss[3]) then
        memo1.Lines.Add(ss+ ' 得气');


      if pos('伏神',n)>0 then
        begin
        tmp:= liuyao1[k].nazhi;
          sk:= getfirststring('select key from zhi where value1='''+ tmp[1]+ss[4]+''' or '+
                                                   'value2='''+tmp[1]+ss[4]+''' or '+
                                                   'value3='''+ tmp[1]+ss[4]+''' or '+
                                                   'value4='''+ tmp[1]+ss[4]+''' or '+
                                                   'value5='''+ tmp[1]+ss[4]+'''');

        if sk<>'' then
          memo1.Lines.Add('伏飞 12宫 ('+sk+')');
        end;

      if (pos('第',n)>0) and (pos('爻',n)>0) then
       begin
         if liuyao1[k].yaogua>2 then
           begin
             tmp:= liuyao1[k].bianyao;
             sk:= getfirststring('select key from zhi where value1='''+ tmp[3]+ss[4]+''' or '+
                                                   'value2='''+tmp[3]+ss[4]+''' or '+
                                                   'value3='''+ tmp[3]+ss[4]+''' or '+
                                                   'value4='''+ tmp[3]+ss[4]+''' or '+
                                                   'value5='''+ tmp[3]+ss[4]+'''');

           if sk<>'' then
             memo1.Lines.Add('动变 12宫 ('+sk+')');
           end;
       end;

    end;
begin
  //

  memo1.Lines.BeginUpdate;
  memo1.Lines.Clear;

  ss:= '';
  b:= false;

  if k>0 then   //单个爻分析
   begin
    if button2.Caption<>'显示变卦'  then
       begin
        memo1.Lines.Add('只分析主卦');
         begin
          memo1.Lines.EndUpdate;
          exit;
         end;
       end;
        b:= true;
        case k2 of
        1: begin
            ss:= liuyao1[k-1].fushen;
             if ss='' then
              begin
               memo1.Lines.EndUpdate;
               exit;
              end;

           end;
        2: begin
            ss:= liuyao1[k-1].liuqin+ liuyao1[k-1].nazhi;
           end;
        3: begin
             if (liuyao1[k-1].yaogua<3) and ((checkbox5.Checked=false) or (andong(k-1)=false)) then
                begin
                memo1.Lines.EndUpdate;  //无变爻
                exit;
                end;
            ss:= liuyao1[k-1].bianyao;
           end;
        end;
                if changsheng(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'长生于月'+ yue[2]);

                if si(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'死于月'+ yue[2]);

                   if mu(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'入墓于月'+ yue[2]);

                   if jue(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'绝于月'+ yue[2]);

                   if changsheng(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'长生于日'+ ri[2]);

                   if si(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'死于日'+ ri[2]);

                   if mu(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'入墓于日'+ ri[2]);

                   if jue(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'绝于日'+ ri[2]);


      for I := 0 to 5do
              begin
                s2:= liuyao1[i].fushen;
                if s2<>'' then
                 begin
                   //伏神
                   if hehe(ss[3])=s2[3] then
                    begin
                     bianse[0,i]:= 1;
                     memo1.Lines.Add(ss[3]+ s2[3] +'合');
                    end;
                   if cong(ss[3])=s2[3] then
                    begin
                     bianse[0,i]:= 2;
                     memo1.Lines.Add(ss[3]+ s2[3] +'冲');
                    end;

                   if changsheng(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 32;
                     memo1.Lines.Add(ss[4]+'长生于'+ s2[3]);
                    end;

                   if si(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 4;
                     memo1.Lines.Add(ss[4]+'死于'+ s2[3]);
                    end;
                   if mu(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 8;
                     memo1.Lines.Add(ss[4]+'入墓于'+ s2[3]);
                    end;
                  if jue(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 16;
                     memo1.Lines.Add(ss[4]+'绝于'+ s2[3]);
                    end;
                 end;
                s2:= liuyao1[i].nazhi;
                  if hehe(ss[3])=s2[1] then
                    begin
                     bianse[1,i]:= 1;
                     memo1.Lines.Add(ss[3]+ s2[1] +'合');
                    end;
                   if cong(ss[3])=s2[1] then
                    begin
                     bianse[1,i]:= 2;
                     memo1.Lines.Add(ss[3]+ s2[1] +'冲');
                    end;

                    if changsheng(ss[4])=s2[1] then  //
                    begin
                     bianse[1,i]:= 32;
                     memo1.Lines.Add(ss[4]+'长生于'+ s2[1]);
                    end;
                   if si(ss[4])=s2[1] then  //
                    begin
                     bianse[1,i]:= 4;
                     memo1.Lines.Add(ss[4]+'死于'+ s2[1]);
                    end;
                   if mu(ss[4])=s2[1] then
                    begin
                     bianse[1,i]:= 8;
                     memo1.Lines.Add(ss[4]+'入墓于'+ s2[1]);
                    end;
                  if jue(ss[4])=s2[1] then
                    begin
                     bianse[1,i]:= 16;
                     memo1.Lines.Add(ss[4]+'绝于'+ s2[1]);
                    end;

                if liuyao1[i].yaogua>=3 then
                 begin
                  s2:= liuyao1[i].bianyao;
                  if hehe(ss[3])=s2[3] then
                    begin
                     bianse[2,i]:= 1;
                     memo1.Lines.Add(ss[3]+ s2[3] +'合');
                    end;
                   if cong(ss[3])=s2[3] then
                    begin
                     bianse[2,i]:= 2;
                     memo1.Lines.Add(ss[3]+ s2[3] +'冲');
                    end;
                    if changsheng(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 32;
                     memo1.Lines.Add(ss[4]+'长生于'+ s2[3]);
                    end;
                   if si(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 4;
                     memo1.Lines.Add(ss[4]+'死于'+ s2[3]);
                    end;
                   if mu(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 8;
                     memo1.Lines.Add(ss[4]+'入墓于'+ s2[3]);
                    end;
                  if jue(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 16;
                     memo1.Lines.Add(ss[4]+'绝于'+ s2[3]);
                    end;
                 end;
              end;

    memo1.Lines.Add('*******************************')
   end;

   //常规分析
   screen.Cursor:= crhourglass;

  //申子辰日桃花在酉，逢巳酉丑日桃花在午，逢寅午戌日桃花在卯，逢亥卯未日桃花在子。
  //逢申子辰日马星在寅，逢巳酉丑日马星在亥，逢寅午戌日马星在申，逢亥卯未日马星在巳。

  if (ri[2]='申') or (ri[2]='子') or (ri[2]='辰') then
      memo1.Lines.Add('驿马-寅 桃花-酉');
  if (ri[2]='巳') or (ri[2]='酉') or (ri[2]='丑') then
      memo1.Lines.Add('驿马-亥 桃花-午');
  if (ri[2]='寅') or (ri[2]='午') or (ri[2]='戌') then
      memo1.Lines.Add('驿马-申 桃花-卯');
  if (ri[2]='亥') or (ri[2]='卯') or (ri[2]='未') then
      memo1.Lines.Add('驿马-巳 桃花-子');

  if (ri[1]='甲') or (ri[1]='戊')  then
      memo1.Lines.Add('贵人-丑未');
  if (ri[1]='乙') or (ri[1]='巳')  then
      memo1.Lines.Add('贵人-子申');
  if (ri[1]=' 丙') or (ri[1]='丁')  then
      memo1.Lines.Add('贵人-亥酉');
  if (ri[1]='壬') or (ri[1]='癸')  then
      memo1.Lines.Add('贵人-卯巳');
   if (ri[1]='庚') or (ri[1]='辛')  then
      memo1.Lines.Add('贵人-午寅');

  if (liuyao1[0].guaming='天地否') or
     (liuyao1[0].guaming='水泽节') or
     (liuyao1[0].guaming='山火贲') or
     (liuyao1[0].guaming='雷地豫') or
     (liuyao1[0].guaming='火山旅') or
     (liuyao1[0].guaming='地雷复') or
     (liuyao1[0].guaming='地天泰') or
     (liuyao1[0].guaming='泽水困') then
     ss:= '主卦六合';

   if (liuyao1[0].guaming='乾为天') or
     (liuyao1[0].guaming='坤为地') or
     (liuyao1[0].guaming='震为雷') or
     (liuyao1[0].guaming='巽为风') or
     (liuyao1[0].guaming='坎为水') or
     (liuyao1[0].guaming='离为火') or
     (liuyao1[0].guaming='艮为山') or
     (liuyao1[0].guaming='兑为泽') or
     (liuyao1[0].guaming='雷天大壮') or
     (liuyao1[0].guaming='天雷无妄')
     then
     ss:= '主卦六冲';

  if (liuyao2[0].guaming='天地否') or
     (liuyao2[0].guaming='水泽节') or
     (liuyao2[0].guaming='山火贲') or
     (liuyao2[0].guaming='雷地豫') or
     (liuyao2[0].guaming='火山旅') or
     (liuyao2[0].guaming='地雷复') or
     (liuyao2[0].guaming='地天泰') or
     (liuyao2[0].guaming='泽水困') then
     ss:= ss+' 变卦六合';

   if (liuyao2[0].guaming='乾为天') or
     (liuyao2[0].guaming='坤为地') or
     (liuyao2[0].guaming='震为雷') or
     (liuyao2[0].guaming='巽为风') or
     (liuyao2[0].guaming='坎为水') or
     (liuyao2[0].guaming='离为火') or
     (liuyao2[0].guaming='艮为山') or
     (liuyao2[0].guaming='兑为泽') or
     (liuyao2[0].guaming='雷天大壮') or
     (liuyao2[0].guaming='天雷无妄')
     then
     ss:= ss+ ' 变卦六冲';

    memo1.Lines.Add(ss);

     ss:= liuyao1[0].nazhi;
     sk:= liuyao1[5].nazhi;
     if ss[1]= cong(sk[1]) then
      memo1.Lines.Add('一六爻冲');
     if ss[1]= hehe(sk[1]) then
      memo1.Lines.Add('一六爻合');

     ss:= liuyao1[2].nazhi;
     sk:= liuyao1[3].nazhi;
     if ss[1]= cong(sk[1]) then
      memo1.Lines.Add('三四爻冲');
     if ss[1]= hehe(sk[1]) then
      memo1.Lines.Add('三四爻合');

      k:= 0;
   for i := 0 to 5 do
     begin
       if liuyao1[i].nazhi=liuyao2[i].nazhi then
          inc(k);
     end;
    if k=6 then
     memo1.Lines.Add('卦变伏吟。')
     else begin
            if (liuyao1[5].nazhi=liuyao2[5].nazhi)
              and (liuyao1[4].nazhi=liuyao2[4].nazhi)
              and (liuyao1[3].nazhi=liuyao2[3].nazhi) then
              memo1.Lines.Add('内卦伏吟。')
              else if (liuyao1[2].nazhi=liuyao2[2].nazhi)
              and (liuyao1[1].nazhi=liuyao2[1].nazhi)
              and (liuyao1[0].nazhi=liuyao2[0].nazhi) then
              memo1.Lines.Add('外卦伏吟。');
          end;

     if ((liuyao1[0].guaming='乾为天')
        and (liuyao2[0].guaming='巽为风'))
        or ((liuyao1[0].guaming='巽为风')
        and (liuyao2[0].guaming='乾为天')) then
        memo1.Lines.Add('卦变反吟。');
      if ((liuyao1[0].guaming='天风姤')
        and (liuyao2[0].guaming='风天小畜'))
        or ((liuyao1[0].guaming='风天小畜')
        and (liuyao2[0].guaming='天风姤')) then
        memo1.Lines.Add('卦变反吟。');
      if ((liuyao1[0].guaming='坎为水')
        and (liuyao2[0].guaming='离为火'))
        or ((liuyao1[0].guaming='离为火')
        and (liuyao2[0].guaming='坎为水')) then
        memo1.Lines.Add('卦变反吟。');
      if ((liuyao1[0].guaming='水火既济')
        and (liuyao2[0].guaming='火水未济'))
        or ((liuyao1[0].guaming='火水未济')
        and (liuyao2[0].guaming='水火既济')) then
        memo1.Lines.Add('卦变反吟。');
     if ((liuyao1[0].guaming='艮为山')
        and (liuyao2[0].guaming='坤为地'))
        or ((liuyao1[0].guaming='坤为地')
        and (liuyao2[0].guaming='艮为山')) then
        memo1.Lines.Add('卦变反吟。');
     if ((liuyao1[0].guaming='山地剥')
        and (liuyao2[0].guaming='地山谦'))
        or ((liuyao1[0].guaming='地山谦')
        and (liuyao2[0].guaming='山地剥')) then
        memo1.Lines.Add('卦变反吟。');
     if ((liuyao1[0].guaming='震为雷')
        and (liuyao2[0].guaming='兑为泽'))
        or ((liuyao1[0].guaming='兑为泽')
        and (liuyao2[0].guaming='震为雷')) then
        memo1.Lines.Add('卦变反吟。');
      if ((liuyao1[0].guaming='泽雷随')
        and (liuyao2[0].guaming='雷泽归妹'))
        or ((liuyao1[0].guaming='雷泽归妹')
        and (liuyao2[0].guaming='泽雷随')) then
        memo1.Lines.Add('卦变反吟。');

      k:= 0;
   for i := 0 to 5 do
     begin
      ss:= liuyao1[i].nazhi;
      sk:= liuyao2[i].nazhi;
       if sk<>'' then
        if ss[1]=cong(sk[1]) then
          inc(k);

     end;

    if k=6 then
     memo1.Lines.Add('爻变反吟。')
     else begin
             k:= 0;
             for i := 0 to 2 do
               begin
                ss:= liuyao1[i].nazhi;
                sk:= liuyao2[i].nazhi;
                 if sk<>'' then
                   if ss[1]=cong(sk[1]) then
                      inc(k);
               end;
               if k=3 then
                  memo1.Lines.Add('外卦反吟。');

              k:= 0;
             for i := 3 to 5 do
               begin
                ss:= liuyao1[i].nazhi;
                sk:= liuyao2[i].nazhi;
                if sk<>'' then
                 if ss[1]=cong(sk[1]) then
                    inc(k);
               end;
               if k=3 then
                memo1.Lines.Add('内卦反吟。');
          end;

    memo1.Lines.Add(shanhe);   //三合
 sy:= -1;
 yy:= -1;
     for i := 0 to 5 do
        if liuyao1[i].shiying='世' then
           sy:= i
           else if liuyao1[i].shiying='应' then
               yy:= i;

   if (sy=-1) or (yy=-1) then
    begin
      screen.Cursor:= crdefault;
      showmessage('错误，缺少世应关键字。');

      exit;
    end;

    //分析三合局

    //分析世爻

    //分析应爻

    //分析合局

    //世爻周边
    //应爻周边

 {   k:= sy;
  if liuyao1[sy].fushen<>'' then //伏神
   begin
     ss:= liuyao1[sy].fushen;
      xieru('世爻伏神');
   end; //伏神

    ss:= liuyao1[sy].liuqin+ liuyao1[sy].nazhi;
     xieru('世爻第'+inttostr(6-sy)+'爻');

    ss:= liuyao1[sy].bianyao;
    if liuyao1[sy].yaogua>2 then
     xieru('世爻变爻');

     k:= yy;
   if liuyao1[yy].fushen<>'' then //伏神
   begin
     ss:= liuyao1[yy].fushen;
      xieru('应爻伏神');
   end; //伏神

    ss:= liuyao1[yy].liuqin+ liuyao1[yy].nazhi;
     xieru('应爻第'+inttostr(6-yy)+'爻');

    ss:= liuyao1[yy].bianyao;
    if liuyao1[yy].yaogua>2 then
     xieru('应爻变爻');   }
  if b=false then
   begin
   for i := 5 downto 0 do
     begin
      if (i=sy) then
      s2:='世'
      else if (i=yy) then
         s2:= '应'
         else
          s2:= '';

         k:= i;
          ss:= liuyao1[i].liuqin+ liuyao1[i].nazhi;
           xieru(s2+'第'+inttostr(6-i)+'爻');
       if liuyao1[i].fushen<>'' then //伏神
         begin
           ss:= liuyao1[i].fushen;
            xieru(s2+'第'+inttostr(6-i)+'爻伏神');
         end; //伏神

          ss:= liuyao1[i].bianyao;
          if liuyao1[i].yaogua>2 then
           xieru(s2+'第'+inttostr(6-i)+'爻变爻');
     end;
   end;

 memo1.Lines.EndUpdate;
 screen.Cursor:= crdefault;
end;

procedure TForm1.set_timestr;
begin
 ShortDateFormat := 'yyyy-mm-dd';
  LongDateFormat  := 'yyyy-mm-dd';
  ShortTimeFormat := 'hh:nn:ss';
  LongTimeFormat  := 'hh:nn:ss';
  DateSeparator := '-';
  TimeSeparator := ':';
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    if button28.Enabled or button29.Enabled then
  begin
    case dlg_form.ShowModal of
     mryes: begin
              if button28.Enabled then
                 button28.Click;
              if button29.Enabled then
                 button29.Click;
            end;
     mrcancel: canclose:= false;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var b: boolean;
begin
 Randomize;
  ShortDateFormat := 'yyyy-mm-dd';
  LongDateFormat  := 'yyyy-mm-dd';
  ShortTimeFormat := 'hh:nn:ss';
  LongTimeFormat  := 'hh:nn:ss';
  DateSeparator := '-';
  TimeSeparator := ':';

 Suiji_ID:= Random(1000);
 gua_shangxia:= Tstringlist.Create;
 gua_index_g:= -1;

 SetWindowLong(Edit1.Handle, GWL_STYLE,
                  GetWindowLong(Edit1.Handle, GWL_STYLE) or
                  ES_NUMBER);
  set_timestr;

ADOConnection1.ConnectionString:= 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ ExtractFilePath(Application.EXEName) +'data\db1.mdb;Persist Security Info=False';//连接到需要的数据库
   ADOConnection1.Connected:= true;
   with adoquery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from zhi where id=85');
      open;
       checkbox1.Checked:= fieldbyname('value1').AsString='1';
       checkbox2.Checked:= fieldbyname('value15').asinteger=0;
       checkbox3.Checked:= fieldbyname('value3').AsString='1';
       checkbox4.Checked:= fieldbyname('value4').AsString<>'0';
       b:= fieldbyname('value5').AsString='1';
      close;
    end;

  if checkbox4.Checked then
    tiangan_kuan:= 22
    else
    tiangan_kuan:= 0;
 G_date:= date;
 g_time:= time;
 postmessage(handle,start_msg_cn,0,0);
 label1.Caption:= get_tiangandizhi(date);
 Button6Click(sender);

 if b=false then
    begin
      //添加一个字段用于记录是否已经保存到网络，没有保存到网络或者和网络没有同步的卦，ben=1
      self.ADOConnection1.Execute('alter table gua_table add COLUMN ben Long');
      self.ADOConnection1.Execute('update zhi set value5=''1'' where id=85');
    end;
       // gua.liuyao2.cn
    try
     IdDNSResolver1.Resolve('gua.liuyao2.cn',nil,1);
   if IdDNSResolver1.QueryResult.Count>0 then
    http_host:= TARecord(IdDNSResolver1.QueryResult.Items[0]).IPAddress
    else http_host:= 'gua.finer2.com';
    except
      http_host:= 'gua.finer2.com';
    end;
   
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   gua_shangxia.Free;
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if listbox1.Visible then
    listbox1.Visible:= false;
end;

function TForm1.getFirstInteger(const s: string): integer;
begin
 with adoquery2 do
    begin
      close;
      sql.Clear;
      sql.Add(s);
      open;
       if not eof then
         result:= fields[0].AsInteger
         else result:= 0;
    end;
end;

function TForm1.getFirstItems(const s: string; item: Tstrings): integer;
begin
  item.Clear;
   with adoquery2 do
    begin
      close;
      sql.Clear;
      sql.Add(s);
      open;
       while not eof do
        begin
         item.Add(fields[0].AsString);
         next;
        end;
    end;
  result:= 0;
end;

function TForm1.getFirstString(const s: string): string;
begin
  with adoquery2 do
    begin
      close;
      sql.Clear;
      sql.Add(s);
      open;
       if not eof then
         result:= fields[0].AsString
         else result:= '';
    end;
end;

function TForm1.getNameByyaofu(const y: array of tyao): string;
var
  I: Integer;
begin
result:= '';
  for I := 0 to 5 do
   begin
     case y[i].yaogua of
     3: result:= result+ '1';
     4: result:= result+ '2';
      else
       result:= result+ inttostr(y[i].yaogua);
     end;
   end;

    result:= form2.get_guaming(strtoint(result));
   {with adoquery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select gm from bagua where value2='''+ result+'''');
      open;
       if eof then
        result:= ''
        else
         result:= fields[0].AsString;
    end; }
end;

function TForm1.get_date_by_tiangandizhi(const yy, r: string): tdate;
var
  I: Integer;
  Y,M,D:Word;
    // hh,mm,ss,ms: word;
     dt: tdate;
begin
 result:= date;
 dt:= date;
   for I := 0 to 22000 do
   begin
   DeCodeDate(dt,Y,M,D);

  // decodetime(g_time,hh,mm,ss,ms);

    if (GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))=yy)
       and (GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d))=r) then
          begin
            result:= dt;
            exit;
          end;
      dt:= dt-1;
   end;

end;

function TForm1.get_guihun_youhun(const m: string): STRING;
begin
result:= '';
  if 排卦方式='藏山卜' then
   begin
    if (m='水火既济') or
     (m='火水未济') or
     (m='地水师') or
     (m='水地比') or
     (m='天泽履') or
     (m='泽天夬') or
     (m='风山渐') or
     (m='山风蛊') then
     result:= '(六合)';

  if (m='乾为天') or
     (m='坤为地') or
     (m='震为雷') or
     (m='巽为风') or
     (m='坎为水') or
     (m='离为火') or
     (m='艮为山') or
     (m='兑为泽') or
     (m='地火明夷') or
     (m='火地晋')
     then
     result:= '(六冲)';

   end else begin

  if (m='天地否') or
     (m='水泽节') or
     (m='山火贲') or
     (m='雷地豫') or
     (m='火山旅') or
     (m='地雷复') or
     (m='地天泰') or
     (m='泽水困') then
     result:= '(六合)';

  if (m='乾为天') or
     (m='坤为地') or
     (m='震为雷') or
     (m='巽为风') or
     (m='坎为水') or
     (m='离为火') or
     (m='艮为山') or
     (m='兑为泽') or
     (m='雷天大壮') or
     (m='天雷无妄')
     then
     result:= '(六冲)';
              end;
   //归魂卦有火天大有，水地比，泽雷随，山风蛊，地水师，天火同人，风山渐，雷泽归妹

 if (m='火天大有') or
     (m='水地比') or
     (m='泽雷随') or
     (m='山风蛊') or
     (m='地水师') or
     (m='天火同人') or
     (m='风山渐') or
     (m='雷泽归妹')
     then
     result:= result+ '(归魂)';

   //游魂卦有火地晋，水天需，泽风大过，山雷颐，地火明夷，天水讼，风泽中孚，雷山小过
  if (m='火地晋') or
     (m='水天需') or
     (m='泽风大过') or
     (m='山雷颐') or
     (m='地火明夷') or
     (m='天水讼') or
     (m='风泽中孚') or
     (m='雷山小过')
     then
     result:= result+ '(游魂)';

end;

function TForm1.get_http(const url: string): string;
var memstr: TStringStream;
    idhttp1: Tidhttp;
begin
  memstr:= TStringStream.Create('',TEncoding.UTF8);
   screen.Cursor:= crhourglass;
   idhttp1:= Tidhttp.Create(nil);
   idhttp1.ReadTimeout:= 15000;
   idhttp1.ConnectTimeout := 15000;

     try
      IdHTTP1.get(url,memstr);
     except
       result:= 'neterror';
        memstr.Free;
        idhttp1.Free;
        screen.Cursor:= crdefault;
       exit;
     end;
   idhttp1.Free;
  screen.Cursor:= crdefault;
  result:= memstr.DataString;
  memstr.Free;

end;

function yangmuyinmu(const s: char): string; //返回阳木阴木
begin
 result:= '';
if s='子' then result:=   '阳水';
if s='丑' then result:=   '阴土';
if s='寅' then result:=   '阳木';
if s='卯' then result:=   '阴木';
if s='辰' then result:=   '阳土';
if s='巳' then result:=   '阴火';
if s='午' then result:=   '阳火';
if s='未' then result:=   '阴土';
if s='申' then result:=   '阳金';
if s='酉' then result:=   '阴金';
if s='戌' then result:=   '阳土';
if s='亥' then result:=   '阴水';
end;

function TForm1.get_tiangandizhi(dt: tdate): string;
 var Y,M,D:Word;
     hh,mm,ss,ms,mm2,hh2: word;
     shi,ss2: string;
begin
   n18.Checked:= false;
   n19.Checked:= false;
   n20.Checked:= false;
   n17.Checked:= true;

   DeCodeDate(dt,Y,M,D);
   decodetime(g_time,hh,mm,ss,ms);
     ss2:= form4.get_jieqi(y,m,d);
     Label13.Caption:= ss2;
    if ss2 <>'' then
    begin
     delete(ss2,1,2);
     hh2:= strtoint(copy(ss2,1,pos(':',ss2)-1));
     mm2:= strtoint(copy(ss2,pos(':',ss2)+1,2));
      if (hh<hh2) or ((hh=hh2) and (mm<mm2)) then
        yue:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d-1))
        else
          yue:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d));
    end else
         yue:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d));
    ri:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));
    shi:= GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh));
  result:= GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d)) +'年 '+
     yue+'月 '+ri+'日'+ xunkong2(ri)+ ' '+ datetostr(dt)+ ' '+ timetostr(g_time)+'（'+ '时辰:'+
     shi
     + ' 刻:'+ get_shifen(shi,g_time)
     +'）';

     yue:=yue+'月';
     ri:= ri+ '日';

   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);
end;

function TForm1.get_tiangan_by_gua(const m: string): string;
begin
result:= '  ';

if m='乾为天' then begin result:=   '壬甲'; exit; end;
if m='天风姤' then begin result:=   '壬辛'; exit; end;
if m='天火同人' then begin result:=   '壬己'; exit; end;
if m='天山遁' then begin result:=   '壬丙'; exit; end;
if m='天泽履' then begin result:=   '壬丁'; exit; end;
if m='天水讼' then begin result:=   '壬戊'; exit; end;
if m='天雷无妄' then begin result:=   '壬庚'; exit; end;
if m='天地否' then begin result:=   '壬乙'; exit; end;

if m='风天小畜' then begin result:=   '辛甲'; exit; end;
if m='巽为风'   then begin result:=   '辛辛'; exit; end;
if m='风火家人' then begin result:=   '辛己'; exit; end;
if m='风山渐'   then begin result:=   '辛丙'; exit; end;
if m='风泽中孚' then begin result:=   '辛丁'; exit; end;
if m='风水涣'   then begin result:=   '辛戊'; exit; end;
if m='风雷益'   then begin result:=   '辛庚'; exit; end;
if m='风地观'   then begin result:=   '辛乙'; exit; end;

if m='火天大有' then begin result:=   '己甲'; exit; end;
if m='火风鼎' then begin result:=   '己辛'; exit; end;
if m='离为火' then begin result:=   '己己'; exit; end;
if m='火山旅' then begin result:=   '己丙'; exit; end;
if m='火泽睽' then begin result:=   '己丁'; exit; end;
if m='火水未济' then begin result:=   '己戊'; exit; end;
if m='火雷噬嗑' then begin result:=   '己庚'; exit; end;
if m='火地晋' then begin result:=   '己乙'; exit; end;

if m='山天大畜' then begin result:=   '丙甲'; exit; end;
if m='山风蛊' then begin result:=   '丙辛'; exit; end;
if m='山火贲' then begin result:=   '丙己'; exit; end;
if m='艮为山' then begin result:=   '丙丙'; exit; end;
if m='山泽损' then begin result:=   '丙丁'; exit; end;
if m='山水蒙' then begin result:=   '丙戊'; exit; end;
if m='山雷颐' then begin result:=   '丙庚'; exit; end;
if m='山地剥' then begin result:=   '丙乙'; exit; end;

if m='泽天夬' then begin result:=   '丁甲'; exit; end;
if m='泽风大过' then begin result:=   '丁辛'; exit; end;
if m='泽火革' then begin result:=   '丁己'; exit; end;
if m='泽山咸' then begin result:=   '丁丙'; exit; end;
if m='兑为泽' then begin result:=   '丁丁'; exit; end;
if m='泽水困' then begin result:=   '丁戊'; exit; end;
if m='泽雷随' then begin result:=   '丁庚'; exit; end;
if m='泽地萃' then begin result:=   '丁乙'; exit; end;

if m='水天需' then begin result:=   '戊甲'; exit; end;
if m='水风井' then begin result:=   '戊辛'; exit; end;
if m='水火既济' then begin result:=   '戊己'; exit; end;
if m='水山蹇' then begin result:=   '戊丙'; exit; end;
if m='水泽节' then begin result:=   '戊丁'; exit; end;
if m='坎为水' then begin result:=   '戊戊'; exit; end;
if m='水雷屯' then begin result:=   '戊庚'; exit; end;
if m='水地比' then begin result:=   '戊乙'; exit; end;

if m='雷天大壮' then begin result:=   '庚甲'; exit; end;
if m='雷风恒' then begin result:=   '庚辛'; exit; end;
if m='雷火丰' then begin result:=   '庚己'; exit; end;
if m='雷山小过' then begin result:=   '庚丙'; exit; end;
if m='雷泽归妹' then begin result:=   '庚丁'; exit; end;
if m='雷水解' then begin result:=   '庚戊'; exit; end;
if m='震为雷' then begin result:=   '庚庚'; exit; end;
if m='雷地豫' then begin result:=   '庚乙'; exit; end;

if m='地天泰' then begin result:=   '癸甲'; exit; end;
if m='地风升' then begin result:=   '癸辛'; exit; end;
if m='地火明夷' then begin result:=   '癸己'; exit; end;
if m='地山谦' then begin result:=   '癸丙'; exit; end;
if m='地泽临' then begin result:=   '癸丁'; exit; end;
if m='地水师' then begin result:=   '癸戊'; exit; end;
if m='地雷复' then begin result:=   '癸庚'; exit; end;
if m='坤为地' then begin result:=   '癸乙';  end;
end;

function TForm1.guaneichonghe(s: char): boolean;
var ss: string;
  I: Integer;
begin
   ss:= '';
   if button2.Caption='显示变卦' then
   begin
     for I := 0 to 5 do
      begin
      ss:= ss+ liuyao1[i].fushen+ liuyao1[i].nazhi ;
      if liuyao1[i].yaogua>2 then
         ss:= ss+ liuyao1[i].bianyao;
      end;
    end else begin
           for I := 0 to 5 do
            begin
             ss:= ss+ liuyao2[i].fushen+ liuyao2[i].nazhi;
              if liuyao2[i].yaogua>2 then
               ss:= ss+ liuyao2[i].bianyao;
            end;
        end;

    result:= (pos(hehe(s),ss)>0)
             or (pos(cong(s),ss)>0);

end;

function TForm1.hedaicong(s: char): string;
 var Y,M,D:Word;
    ss,c: string;
  I: Integer;
begin



   c:= cong(s); //返回冲的属性
result:= '';
     for I := 0 to 11 do
      begin
           DeCodeDate(g_date+i,Y,M,D);
       ss:= GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));
       if ss[2]=c then
         begin
          result:= c+'冲'+ s+ datetostr(g_date+i)+ss;
          break;
         end;
      end;

    DeCodeDate(g_date,Y,M,D);
    for I := 0 to 11 do
      begin
       m:= m+1;
       if m=13 then
        begin
         m:= 1;
         inc(y);
        end;
       ss:= GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d));
       if ss[2]=c then
         begin
          result:=result+' '+ c+'冲'+ s+ inttostr(y)+'年'+inttostr(m)+'月'+ss;
          break;
         end;
      end;



end;

function TForm1.hehe(s: char): string;
begin
   result:= '';
  case s of
  '子': result:= '丑';
  '午': result:= '未';
   '丑': result:= '子';
  '未': result:= '午';
  '寅': result:= '亥';
  '申': result:= '巳';
  '卯': result:= '戌';
  '酉': result:= '辰';
  '辰': result:= '酉';
  '戌': result:= '卯';
  '巳': result:= '申';
  '亥': result:= '寅';
  end;
end;

procedure TForm1.hua(const y: array of tyao; d: tdate);
var
  I,tg_xishu: integer;
  ss,tmp,tg_zhu,tg_fu,tg_bian: string;

begin

  if liuyao1[0].guaming='' then
     exit;

 tg_xishu:= 0; //藏山卜时显示天干的位置

     with paintbox1.Canvas do
      begin
       Brush.Color:= clBtnFace;
       fillrect(rect(0,0,paintbox1.width,paintbox1.height));
       pen.Width:= 1;
       pen.Color:= clBlack;
       Rectangle(0,0,paintbox1.width,paintbox1.height);
        //画横线
     {  moveto(8,58+3*hanggao);
       lineto(657,58+3*hanggao);    }


       font.Color:= clblack;

      { font.Size:= 14;
        tmp:= copy(label9.Caption,5,5);

        TextOut(12,2,tmp);
        font.Color:= clPurple;
        TextOut(100,2,事由);
        font.Color:= clblack;  }
      // font.Size:= 16;


       font.Size:= 18;
        if 排卦方式='藏山卜' then
         begin
          tg_xishu:= 1;
          TextOut(540,8,排卦方式);
           if checkbox4.Checked then
            begin
              tg_zhu:= changshan_tiangan(liuyao1[0].guaming); //取得藏山卜的天干
              if button2.Enabled then
               tg_bian:= changshan_tiangan(liuyao2[0].guaming); //取得藏山卜的天干
              if 伏神卦名<>'' then
               tg_fu:= changshan_tiangan(伏神卦名);
            end;
         end;

      TextOut(171+ tiangan_kuan*tg_xishu,30,liuyao1[0].guaming+ get_guihun_youhun(liuyao1[0].guaming));
      if button2.Enabled then
       TextOut(405+ tiangan_kuan*2*tg_xishu,30,liuyao2[0].guaming+ get_guihun_youhun(liuyao2[0].guaming));



       for I := 0 to 5 do
         begin
          //memo4.Lines.Add('循环开始'+inttostr(GetTickCount));
           font.Size:= 18;
           font.Color:= clblack;
           TextOut(8,64+i*hanggao,y[i].liushou);

          // memo4.Lines.Add('循环中间a'+inttostr(GetTickCount));

              ss:= y[i].fushen;
              if CheckBox1.Checked and (ss<>'') { and guaneichonghe(ss[3]) }then
                  font.Color:= 返回颜色(bianse[0,i]);  //点击变色

              if y[i].fushen<>'' then
              begin
               TextOut(65,64+i*hanggao,copy(y[i].fushen,1,4));
               TextOut(115+ tiangan_kuan*tg_xishu,64+i*hanggao,copy(y[i].fushen,5,4));
              end;
                 font.Color:= clblack;

               //  memo4.Lines.Add('循环中间b'+inttostr(GetTickCount));

            {
            if (y[i].shiying='世') or (y[i].shiying='应') then
               font.Style:= [fsBold];  }

           TextOut(171+ tiangan_kuan*tg_xishu,64+i*hanggao,y[i].liuqin);
             ss:= y[i].nazhi;
              if CheckBox1.Checked and (ss<>'') then
                 font.Color:= 返回颜色(bianse[1,i]);
                 //点击变色

           TextOut(221+ tiangan_kuan*2*tg_xishu,64+i*hanggao,y[i].nazhi);
           font.Color:= clblack;

           TextOut(333+ tiangan_kuan*2*tg_xishu,64+i*hanggao,y[i].shiying);

           if button2.Enabled then
              TextOut(565+ tiangan_kuan*3*tg_xishu,64+i*hanggao,liuyao2[i].shiying);

           font.Style:= [];

               ss:= y[i].bianyao;
              if CheckBox1.Checked and (ss<>'') then
                 font.Color:= 返回颜色(bianse[2,i]);
                  //点击变色

            // memo4.Lines.Add('循环中间c'+inttostr(GetTickCount));


              if y[i].yaogua<3 then //不是正宗变爻  3老阳。4老阴
                 font.Color:= clWindowFrame;
           if y[i].bianyao<>'' then
           begin
            TextOut(405+ tiangan_kuan*2*tg_xishu,64+i*hanggao,copy(y[i].bianyao,1,4));
            TextOut(455+ tiangan_kuan*3*tg_xishu,64+i*hanggao,copy(y[i].bianyao,5,4));
           end;
                  font.Color:= clblack;

              //  if (y[i].shiying='世') then
              //  imagelist1.Draw(paintbox1.Canvas,365,68+i*hanggao,2,true);

               { if andong(i) then
                imagelist1.Draw(paintbox1.Canvas,246,68+i*hanggao,1,true);  }
             // memo4.Lines.Add('循环中间1'+inttostr(GetTickCount));

            case y[i].yaogua of
              1: begin
                 Brush.Color:= clBlack;
                 fillrect(rect(275+ tiangan_kuan*2*tg_xishu,
                            70+i*hanggao,325+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                 if button2.Enabled then
                   fillrect(rect(507+ tiangan_kuan*3*tg_xishu,
                           70+i*hanggao,557+ tiangan_kuan*3*tg_xishu,82+i*hanggao));  //变爻
                 Brush.Color:= clBtnFace;
              end;
              2:begin
                 Brush.Color:= clBlack;
                 fillrect(rect(275+ tiangan_kuan*2*tg_xishu,
                       70+i*hanggao,297+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                 fillrect(rect(304+ tiangan_kuan*2*tg_xishu,
                           70+i*hanggao,325+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                  if button2.Enabled then
                   begin
                    fillrect(rect(507+ tiangan_kuan*3*tg_xishu,
                         70+i*hanggao,529+ tiangan_kuan*3*tg_xishu,82+i*hanggao));
                    fillrect(rect(536+ tiangan_kuan*3*tg_xishu,
                         70+i*hanggao,557+ tiangan_kuan*3*tg_xishu,82+i*hanggao));
                   end;
                 Brush.Color:= clBtnFace;
              end;
              3: begin
                  Brush.Color:= clBlack;
                 fillrect(rect(275+ tiangan_kuan*2*tg_xishu,
                      70+i*hanggao,325+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                  if button2.Enabled then
                   begin
                    fillrect(rect(507+ tiangan_kuan*3*tg_xishu,
                          70+i*hanggao,529+ tiangan_kuan*3*tg_xishu,82+i*hanggao));
                    fillrect(rect(536+ tiangan_kuan*3*tg_xishu,
                          70+i*hanggao,557+ tiangan_kuan*3*tg_xishu,82+i*hanggao));
                   end;
                 Brush.Color:= clBtnFace;
                  font.Size:= 12;
                  TextOut(370+ tiangan_kuan*2*tg_xishu,64+i*hanggao,'o->');
                 end;
              4: begin
                  Brush.Color:= clBlack;
                 fillrect(rect(275+ tiangan_kuan*2*tg_xishu,
                       70+i*hanggao,297+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                 fillrect(rect(304+ tiangan_kuan*2*tg_xishu,
                       70+i*hanggao,325+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                     if button2.Enabled then
                       fillrect(rect(507+ tiangan_kuan*3*tg_xishu,
                       70+i*hanggao,557+ tiangan_kuan*3*tg_xishu,82+i*hanggao));  //变爻
                 Brush.Color:= clBtnFace;
                 font.Size:= 12;
                  TextOut(370+ tiangan_kuan*2*tg_xishu,64+i*hanggao,'x->');
                 end;
            end;

            if n17.Checked then
              begin
               //随机起卦，旬空和出空还是使用起卦当天的
               if form2.CheckBox2.Checked then
                 label9.Caption:= xunkong('',date)+' '+chukong(date)
                else
                 label9.Caption:= xunkong('',d)+' '+chukong(d);
              end;

            font.Size:= 10;
            font.Color:= rgb(235,205,0);
            ss:= y[i].fushen;
             if CheckBox2.Checked and (ss<>'') and ((G_xunkong[0]= ss[3]) or (G_xunkong[1]= ss[3])) then
              begin
                  if cong(ss[3])=ri[2] then
                  TextOut(161,64+i*hanggao,'冲实')
                  else
                  TextOut(161,64+i*hanggao,'空');

                  
              end;
              if CheckBox2.Checked and  (ss<>'') then
                  TextOut(161,78+i*hanggao,wangxiang(ss));

            font.Color:= rgb(235,205,0);

            ss:= y[i].nazhi;
             if CheckBox2.Checked and ((G_xunkong[0]= ss[1]) or (G_xunkong[1]= ss[1])) then
              begin
                  if cong(ss[1])=ri[1] then
                  TextOut(305,64+i*hanggao,'冲实')
                  else
                  TextOut(305,64+i*hanggao,'空');

              end;

              if CheckBox2.Checked then
                TextOut(305,78+i*hanggao,wangxiang('AB'+ss));

            font.Color:= rgb(235,205,0);
           // memo4.Lines.Add('循环中间2'+inttostr(GetTickCount));

            ss:= y[i].bianyao;
             if CheckBox2.Checked and (ss<>'') and ((G_xunkong[0]= ss[3]) or (G_xunkong[1]= ss[3])) then
              begin
                  if cong(ss[3])=ri[1] then
                  TextOut(557,64+i*hanggao,'冲实')
                  else
                  TextOut(557,64+i*hanggao,'空');

              end;
              if CheckBox2.Checked and (ss<>'') then
                TextOut(585,64+i*hanggao,wangxiang(ss));
            font.Color:= rgb(255,215,0);

             if CheckBox2.Checked and (ss<>'') then
              begin
                tmp:= y[i].nazhi;
                  tmp:= jintui(tmp[1],ss[3]);
                  if tmp='进化' then
                    begin
                      font.Color:= clblue;
                      textout(557,78+i*hanggao,tmp);
                    end;
                  if tmp='退化' then
                    begin
                      font.Color:= clBlack;
                      textout(557,78+i*hanggao,tmp);
                    end;
                  tmp:= y[i].nazhi;
                  tmp:= by_shengke(tmp[2],ss[4]);
                  if tmp='回头生' then
                    begin
                      font.Color:= clblue;
                      textout(585,78+i*hanggao,tmp);
                    end;
                  if tmp='回头克' then
                    begin
                      font.Color:= clBlack;
                      textout(585,78+i*hanggao,tmp);
                    end;
              end;
             if checkbox4.Checked then
             begin
               Brush.Style := bsClear;
                 if 排卦方式='藏山卜' then
                 begin
                  font.Size:= 18;
                  font.Color:= clBlack;
                   TextOut(241,64+i*hanggao,tg_zhu[i+1]);
                  if 伏神卦名<>'' then
                     if liuyao1[i].fushen<>'' then
                      TextOut(113,64+i*hanggao,tg_fu[i+1]);
                   if button2.Enabled then
                      if liuyao1[i].bianyao<>'' then
                       begin
                         if liuyao1[i].yaogua>2 then
                          font.Color:= clBlack
                          else
                            font.Color:= clWindowFrame;
                        TextOut(497,64+i*hanggao,tg_bian[i+1]);
                       end;

                 end else begin
                             font.Size:= 10;
                             font.Color:= clWindowFrame;
                             if i=0 then
                              begin      //显示天干
                               if tiangan1[0]<>' ' then
                                  TextOut(106,60+i*hanggao,tiangan1[0]);
                               if tiangan1[2]<>' ' then
                                  TextOut(213,60+i*hanggao,tiangan1[2]);
                               if tiangan1[4]<>' ' then
                                  TextOut(446,60+i*hanggao,tiangan1[4]);
                              end;
                             if i=3 then
                              begin
                               if tiangan1[1]<>' ' then
                                  TextOut(106,60+i*hanggao,tiangan1[1]);
                               if tiangan1[3]<>' ' then
                                  TextOut(213,60+i*hanggao,tiangan1[3]);
                               if tiangan1[5]<>' ' then
                                  TextOut(446,60+i*hanggao,tiangan1[5]);
                              end;   //天干显示完毕
                          end;
              end;
         end; //end for i



         font.Color:= clblack;
       font.Size:= 14;
      //  tmp:= copy(label9.Caption,5,5);

       // TextOut(12,2,tmp);
        font.Color:= clPurple;
        TextOut(20,2,事由);
        font.Color:= clblack;
      end;

end;

function TForm1.IdDecode(const s: string): string;
begin
   //Suiji_ID
   result:= inttostr(strtoint('$'+s)- Suiji_ID);
end;

function TForm1.jintui(const a, b: string): string;
begin

 result:= '';
  if ((a='亥') and (b='子'))
    or ((a='寅') and (b='卯'))
    or ((a='巳') and (b='午'))
    or ((a='申') and (b='酉'))
    or ((a='丑') and (b='辰'))
    or ((a='辰') and (b='未'))
    or ((a='未') and (b='戌'))
    or ((a='戌') and (b='丑'))
   then
     result:= '进化'
     else if ((a='子') and (b='亥'))
          or ((a='卯') and (b='寅'))
          or ((a='午') and (b='巳'))
          or ((a='酉') and (b='申'))
          or ((a='辰') and (b='丑'))
          or ((a='未') and (b='辰'))
          or ((a='戌') and (b='未'))
          or ((a='丑') and (b='戌'))
           then
             result:= '退化';


end;

function TForm1.jue(s: char): char;
begin
  result:= ' ';
 case s of
  '木': result:= '申';
  '火': result:= '亥';
   '土': result:= '巳';
  '金': result:= '寅';
  '水': result:= '巳';
 end;
end;

function TForm1.keke(s: char): char;
begin
         result:= ' ';
  case s of
  '木': result:= '土';
  '火': result:= '金';
   '土': result:= '水';
  '金': result:= '木';
  '水': result:= '火';
  end;
end;

function TForm1.kekewo(s: char): char;
begin
  result:= ' ';
  case s of
  '木': result:= '金';
  '火': result:= '水';
   '土': result:= '木';
  '金': result:= '火';
  '水': result:= '土';
  end;
end;

procedure TForm1.Label10DblClick(Sender: TObject);
begin
  memo2.Clear;
  memo2.Lines.Add(label10.Caption);
  memo2.SelectAll;
  memo2.CopyToClipboard;
  memo2.Clear;
  showmessage('已经保存到剪贴板。');
end;

procedure TForm1.Label11Click(Sender: TObject);
begin
  ShellExecute(handle,'open','http://www.finer2.com/archives/85.html',nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.Label12Click(Sender: TObject);
begin
   ShellExecute(handle,'open',pchar(URL_G),nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.Label12MouseEnter(Sender: TObject);
begin
 Tlabel(sender).Font.Color:= clHighlight;
end;

procedure TForm1.Label12MouseLeave(Sender: TObject);
begin
  Tlabel(sender).Font.Color:= clwindowText;
end;

procedure TForm1.Label8Click(Sender: TObject);
begin
  ShellExecute(handle,'open','http://shang.qq.com/wpa/qunwpa?idkey=7835a765b1372f95c3dc86e4468a29f675ff4b5d75844a00a642139761b1497b',nil,nil,SW_SHOWNORMAL);

end;

procedure TForm1.Label9Click(Sender: TObject);
var ss: string;
begin
 ss:= inputbox('输入新的旬空出空日期','输入 ',datetostr(date));
  if ss<>'' then
    label9.Caption:= xunkong('',strtodate(ss))+' '+chukong(strtodate(ss));
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
var ss,id: string;
    b: boolean;
begin
 if listbox1.ItemIndex>-1 then
 begin
  ss:= listbox1.Items[listbox1.ItemIndex];
  if pos('(',ss)=1 then
   begin
   delete(ss,1, pos(')',ss));
   b:= true;
   end else b:= false;

  id:= copy(ss,1,pos(';',ss)-1);
  if id='' then
   begin
     showmessage('无法获取id'+ ss);
     exit;
   end;

    id:= IdDecode(id);

   if 是否使用网络=1 then
    gua_shangxia.Add(id+'(网络)')
    else
       gua_shangxia.Add(id+'(本地)');

  inc(gua_index_g);

  listbox1.Visible:= false;

   if (b=false) and (是否使用网络=1) then
   根据id载入卦网络(strtoint(id))
   else
    根据id载入卦本地(strtoint(id));

   if b then
    begin
    button28.Enabled:= true;
    button29.Enabled:= true;
    button30.Enabled:= true;
    end;

 end;
end;

procedure TForm1.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
  var ss,ss2: string;
  k,j: integer;
begin
k:= 0;
  ListBox1.Canvas.FillRect(Rect);
  ss:= ListBox1.Items[Index];
    if pos('(',ss)=1 then
  begin
    ListBox1.Canvas.Font.Color:= clred;
    j:= pos(')',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox1.Canvas.TextOut(Rect.Left+20, Rect.Top+4, ss2);
    k:= ListBox1.Canvas.TextWidth(ss2)+18;

   imagelist1.Draw(ListBox1.Canvas,rect.left+2,rect.top+4,3);
  end;
     //卦编号
    
    ListBox1.Canvas.Font.Color:= clactiveborder;
    j:= pos(';',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox1.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss2);
    k:= k+ ListBox1.Canvas.TextWidth(ss2);

    //卦名
    ListBox1.Canvas.Font.Color:= clwindowtext;
    ListBox1.Canvas.Font.Style:= [fsbold];
    j:= pos(';',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox1.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss2);
    k:= k+ ListBox1.Canvas.TextWidth(ss2);

    //剩余部分
    ListBox1.Canvas.Font.Style:= [];
    if pos('<NF>',ss)>0 then
    ListBox1.Canvas.Font.Color:= clblue
    else
    ListBox1.Canvas.Font.Color:= clwindowtext;

    ListBox1.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss);

end;

procedure TForm1.ListBox1Exit(Sender: TObject);
begin
 listbox1.Visible:= false;
end;

procedure TForm1.ListBox1MeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
   Height:= 26;
end;

procedure TForm1.liushou_base(tg: string);
var // str: Tstringlist;
  I,k,j: Integer;

begin
k:= -1;

  if tg='甲乙' then
     k:= 0;
  if tg='丙丁' then
     k:= 1;
  if tg='戊日' then
     k:= 2;
  if tg='己日' then
     k:= 3;
  if tg='庚辛' then
     k:= 4;
  if tg='壬癸' then
     k:= 5;

     if k=-1 then
      showmessage('六兽参数不对');

     for I := 5 downto 0 do
       begin
        j:= (5-i+ k) mod 6;

        liuyao1[i].liushou:= lius[j];
        liuyao2[i].liushou:= lius[j];
       end;
 { str:= Tstringlist.Create;
   str.Delimiter:='，';

   with adoquery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select value1 from zhi where key='''+ tg+'''');
      open;
       if not eof then
         str.DelimitedText:= fields[0].AsString;
    end;

    if str.Count=6 then
     begin
       for I := 0 to 5 do
        begin
          liuyao1[i].liushou:= str.Strings[i];
          liuyao2[i].liushou:= str.Strings[i];
        end;
     end else showmessage('数据库内六兽不全');

     str.Free;    }
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
 button28.Enabled:= true;
 if button29.Enabled then
    button30.Enabled:= true;

end;

procedure TForm1.Memo1DblClick(Sender: TObject);
begin
 if memo1.Height=120 then
  begin
   memo3.Visible:= false;
   button29.Visible:= false;
   button28.Top:= 416;
   memo1.Height:=284;
  end else begin
    button29.Visible:= true;
   button28.Top:= 252;
   memo1.Height:=120;
   memo3.Visible:= true;
  end;
end;

procedure TForm1.Memo3Change(Sender: TObject);
begin
  button29.Enabled:= true;
  if button28.Enabled then
    button30.Enabled:= true;
end;

procedure TForm1.Memo3DblClick(Sender: TObject);
begin
   if memo3.Height=120 then
  begin
   label14.Caption:='反馈：';
   button28.Visible:= false;
   memo1.Visible:= false;
   memo3.Top:= 126;
   memo3.Height:=284;
  end else begin
  label14.Caption:='断语：';
  button28.Visible:= true;
   memo3.Height:=120;
   memo3.Top:= 282;
   memo1.Visible:= true;
  end;
end;

procedure TForm1.Memo4DblClick(Sender: TObject);
begin
 if memo4.Width=254 then
  begin
   memo4.Width:=364;
   memo4.Height:= 469;
  end else begin
              memo4.Width:=254;
              memo4.Height:= 107;
           end;
end;

function TForm1.mu(s: char): char;
begin
  result:= ' ';
 case s of
  '木': result:= '未';
  '火': result:= '戌';
   '土': result:= '辰';
  '金': result:= '丑';
  '水': result:= '辰';
 end;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  //月日
 { n18.Checked:= false;
  n19.Checked:= false;
  n20.Checked:=false; }

  get_tiangandizhi(g_date);
  button11.Click;
end;

procedure TForm1.N18Click(Sender: TObject);  //年月
    var Y,M,D:Word;
    // hh,mm,ss,ms: word;
begin

  n17.Checked:= false;
  n19.Checked:= false;
  n20.Checked:=false;

   DeCodeDate(g_date,Y,M,D);
  // decodetime(g_time,hh,mm,ss,ms);
   yue:=  GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d))+'(年)';
    ri:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))+'(月)';
    //ri:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));


   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);

   button11.Click;
end;

procedure TForm1.N19Click(Sender: TObject);  //日时
    var Y,M,D:Word;
     hh,mm,ss,ms: word;
begin

  n17.Checked:= false;
  n18.Checked:= false;
  n20.Checked:=false;

   DeCodeDate(g_date,Y,M,D);
    decodetime(g_time,hh,mm,ss,ms);
 //  yue:=  GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d))+'(年)';
  //  ri:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))+'(月)';
    yue:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d))+'(日)';
      ri:=  GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))+'(时)';

   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);

   label9.Caption:= xunkong_shi('',0);
     button11.Click;
end;


procedure TForm1.N20Click(Sender: TObject); //时分
var Y,M,D:Word;
     hh,mm,ss,ms: word;
begin

  n17.Checked:= false;
  n18.Checked:= false;
  n19.Checked:=false;

   DeCodeDate(g_date,Y,M,D);
    decodetime(g_time,hh,mm,ss,ms);
 //  yue:=  GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d))+'(年)';
  //  ri:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))+'(月)';
   // yue:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d))+'(日)';
    //  ri:=  GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))+'(时)';
     yue:= GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))+'(时)';
     ri:= get_shifen(yue,g_time) +'(分)';

   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);

   label9.Caption:= xunkong_shi('',0);
     button11.Click;

end;

procedure TForm1.N22Click(Sender: TObject);
begin
  postmessage(form2.handle,start_msg_cn2,1,0);
end;

procedure TForm1.N25Click(Sender: TObject);
begin
 form3.Button10.Click;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N42Click(Sender: TObject);
begin
  showmessage('ufo2003@126.com 版权所有');
end;

procedure TForm1.N43Click(Sender: TObject);
var ss: string;
begin
   ss:= 'http://'+http_host+'/abc/index.php?v='+inttostr(app_v);
   ShellExecute(handle,'open',pchar(ss),nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
button1.Click;
end;

procedure TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var i,j: integer;
begin
  if listbox1.Visible then
    listbox1.Visible:= false;

   if checkbox1.Checked=false then
     exit;

  if trim(liuyao1[0].guaming)='' then
     exit;

    FillChar(bianse,sizeof(bianse),0);

     for I := 0 to 5 do
   begin
     if( y>64+i*hanggao) and (y<64+(i+1)*hanggao) then
       begin
        // memo1.Lines.Text:=
        if x<198 then  //列的位置
          j:=1
          else if x<456 then
               j:= 2
               else j:= 3;

        fenxi(i+1,j);
        Button11Click(PaintBox1);
         exit;
       end;
   end;



end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
 if liuyao1[0].guaming='' then
    exit;

   if  button2.Caption= '显示变卦' then
   hua(liuyao1,G_date)
   else
    hua(liuyao2,G_date);


end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
n2.Enabled:= button2.Enabled;
end;

function TForm1.post_http(const url: string; t: tstringlist): string;
var memstr,outstr: TStringStream;
    idhttp1: Tidhttp;
    j: integer;
    label pp;
begin
 j:= 0;
 screen.Cursor:= crhourglass;
  memstr:= TStringStream.Create('',TEncoding.UTF8);

   pp:
   idhttp1:= Tidhttp.Create(nil);
   idhttp1.HandleRedirects:=True;
   IdHTTP1.Request.AcceptEncoding :='gzip';
   idhttp1.ReadTimeout:= 30000;
   idhttp1.ConnectTimeout := 10000;
   //idhttp1.AllowCookies:= false;
     try
      if t=nil then
      IdHTTP1.get(url,memstr)
      else
      IdHTTP1.Post(url,t,memstr);
     except
        if j=0 then
        j:= 1
        else begin
               result:= 'neterror';
                memstr.Free;
                idhttp1.Free;
                screen.Cursor:= crdefault;
               exit;
             end;
     end;

        if j=1 then
        begin
          j:= 2;
          idhttp1.Free;
          sleep(2000);
          goto pp; //网络错误时重试一次
        end;

      if IdHTTP1.Response.ContentEncoding = 'gzip' then
       begin
         outstr:= TStringStream.Create('',TEncoding.UTF8);
         memstr.Position:= 0;
         IdCompressorZLib1.DecompressGZipStream(memstr, outstr);
         outstr.Position := 0;
         result:= outstr.DataString;
         //memo1.Lines.Add('压缩前'+inttostr(outstr.Size));
         //memo1.Lines.Add('压缩后'+inttostr(memstr.Size));

         outstr.Free;
       end else begin
         result:= memstr.DataString;
       end;
   idhttp1.Free;
  screen.Cursor:= crdefault;

  memstr.Free;

end;

procedure TForm1.power_set_timeStr(var msg: Tmessage);
begin
  if (msg.WParam=PBT_APMRESUMEAUTOMATIC) or (msg.WParam=PBT_APMRESUMECRITICAL)
     or (msg.WParam=PBT_APMRESUMESUSPEND)  then
     set_timestr;
end;

procedure TForm1.RadioButton13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if radiobutton13.Checked then
  排卦方式:='京房式'
  else
    排卦方式:='藏山卜';

 zhuanggua(G_date);
 button11.Click;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
 if radiobutton3.Checked then
     begin
      if ri<>'' then
        zhuangliushou(ri[1]);
     end;
   if radiobutton2.Checked then
     begin
      if yue<>'' then
        zhuangliushou(yue[1]);
     end;
   if radiobutton1.Checked then
     begin
        zhuangliushou(label1.caption[1]);
     end;

   hua(liuyao1,G_date);
   button2.Caption:= '显示变卦';
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
 button8.Click;
end;

function TForm1.shanhe: string;     //********************************* 三合局
var ss: string;
  k: Integer;
    function sh: string;
     var tmp,st: string;
         i: integer;
     begin
      result:= '';
       if ((liuyao1[0].yaogua>2) or andong(0)) and ((liuyao1[2].yaogua>2)or andong(2)) then
        begin                     //检测4,6和局
         tmp:= ss;
         k:= 0;
           st:= liuyao1[0].nazhi;
          if pos(st[1],tmp)>0 then
            begin
              inc(k);
              delete(tmp,pos(st[1],tmp),1);
            end;
          st:= liuyao1[2].nazhi;
          if pos(st[1],tmp)>0 then
            begin
              inc(k);
              delete(tmp,pos(st[1],tmp),1);
            end;
            if k=2 then
             begin
              st:= liuyao1[0].bianyao;
              if (st<>'') and (liuyao1[0].yaogua>2) and (pos(st[3],tmp)>0) then
                begin
                  inc(k);
                  delete(tmp,pos(st[3],tmp),1);
                end;
              st:= liuyao1[2].bianyao;
              if (st<>'') and(liuyao1[2].yaogua>2) and (pos(st[3],tmp)>0) then
                begin
                  inc(k);
                  delete(tmp,pos(st[3],tmp),1);
                end;
             end;
          if k>=3 then
            result:= result + ss+'(4,6爻)'+hedaicong(ss[2])+ #13#10;
          if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //中神在爻内，3缺1
               result:= result + ss+'(4,6半合)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;
        end;

       if ((liuyao1[3].yaogua>2) or andong(3)) and ((liuyao1[5].yaogua>2)or andong(5)) then
        begin                       //检测 1,3和局
        tmp:= ss;
         k:= 0;
           st:= liuyao1[3].nazhi;
          if pos(st[1],tmp)>0 then
            begin
              inc(k);
              delete(tmp,pos(st[1],tmp),1);
            end;
          st:= liuyao1[5].nazhi;
          if pos(st[1],tmp)>0 then
            begin
              inc(k);
              delete(tmp,pos(st[1],tmp),1);
            end;
             if k=2 then
             begin
              st:= liuyao1[3].bianyao;
              if (st<>'')and(liuyao1[3].yaogua>2) and (pos(st[3],tmp)>0) then
                begin
                  inc(k);
                  delete(tmp,pos(st[3],tmp),1);
                end;
              st:= liuyao1[5].bianyao;
              if (st<>'')and(liuyao1[5].yaogua>2) and (pos(st[3],tmp)>0) then
                begin
                  inc(k);
                  delete(tmp,pos(st[3],tmp),1);
                end;
             end;
          if k>=3 then
            result:= result + ss+'(1,3爻)'+hedaicong(ss[2])+ #13#10;
          if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //中神在爻内，3缺1
               result:= result + ss+'(1,3半合)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;
        end;

        tmp:= ss;
        k:= 0;
        for I := 0 to 5 do  //检测是否有3个动摇而和局的
         begin
          if (liuyao1[i].yaogua>2) or andong(i) then
            begin
              st:= liuyao1[i].nazhi;
                if pos(st[1],tmp)>0 then
                  begin
                    inc(k);
                    delete(tmp,pos(st[1],tmp),1);
                  end;
            end;
         end;
        if k>=3 then
            result:= result + ss+'(3个动或暗动爻合局)'+hedaicong(ss[2])+ #13#10;
        if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //中神在爻内，3缺1
               result:= result + ss+'(3个动或暗动爻半合)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;

       tmp:= ss;  //检测是否有2个动摇和日月和局的
        k:= 0;
        for I := 0 to 5 do
         begin
          if (liuyao1[i].yaogua>2)or andong(i) then
            begin
              st:= liuyao1[i].nazhi;
                if pos(st[1],tmp)>0 then
                  begin
                    inc(k);
                    delete(tmp,pos(st[1],tmp),1);
                  end;
            end;
         end;
        if k=2 then
         begin
           if pos(yue[2],tmp)>0 then
                  begin
                    inc(k);
                    delete(tmp,pos(yue[2],tmp),1);
                  end;
          if pos(ri[2],tmp)>0 then
                  begin
                    inc(k);
                    delete(tmp,pos(ri[2],tmp),1);
                  end;
         end else k:= 0;
          if k>=3 then
            result:= result + ss+'(2个动或暗动爻+日或月合局)'+hedaicong(ss[2])+ #13#10;
          if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //中神在爻内，3缺1
               result:= result + ss+'(2个动或暗动爻半合)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;

        tmp:= ss;  //检测是否有2个动摇和一个静爻和局的
        k:= 0;
        for I := 0 to 5 do
         begin
          if (liuyao1[i].yaogua>2)or andong(i) then
            begin
              st:= liuyao1[i].nazhi;
                if pos(st[1],tmp)>0 then
                  begin
                    inc(k);
                    delete(tmp,pos(st[1],tmp),1);
                  end;
            end;
         end;
        if k=2 then
         begin
          for I := 0 to 5 do
             begin
              if (liuyao1[i].yaogua<3)and (andong(i)=false) then
                begin
                  st:= liuyao1[i].nazhi;
                    if pos(st[1],tmp)>0 then
                      begin
                        inc(k);
                        delete(tmp,pos(st[1],tmp),1);
                      end;
                end;
             end;
         end else k:= 0;
          if k>=3 then
            result:= result + ss+'(2个动或暗动爻+一个静爻合局)'+ hedaicong(ss[2])+ #13#10;
     end;
begin
  ss:= '亥卯未合木局';
  result:= sh;

  ss:= '寅午戌合火局';
  result:= result+' '+ sh;
  ss:= '巳酉丑合金局';
  result:= result+' ' + sh;
  ss:= '申子辰合水局';
  result:= result+' ' +sh;
  ss:= '辰戌丑未自合土局';
  result:= result+' ' +sh;

  ss:= '丑戌未三刑局';
  result:= result+' ' +sh;
  ss:= '巳申寅三刑局';
  result:= result+' ' +sh;


end;

function TForm1.sheng(s: char): char;
begin
      result:= ' ';
  case s of
  '木': result:= '火';
  '火': result:= '土';
   '土': result:= '金';
  '金': result:= '水';
  '水': result:= '木';
  end;
end;

function TForm1.shengwo(s: char): char;
begin
  result:= ' ';
  case s of
  '木': result:= '水';
  '火': result:= '木';
   '土': result:= '火';
  '金': result:= '土';
  '水': result:= '金';
  end;
end;

function TForm1.si(s: char): char;
begin
  result:= ' ';
 case s of
  '木': result:= '午';
  '火': result:= '酉';
   '土': result:= '卯';
  '金': result:= '子';
  '水': result:= '卯';
 end;
end;

procedure TForm1.start_show(var msg: Tmessage);
var str: tstringlist;
    i: integer;
begin
   if form2.ShowModal = mrok then
    begin
       //G_date:= date;
       label1.Caption:= get_tiangandizhi(G_date);
       zhuanggua(G_date);
    end;
   str:= tstringlist.Create;
    str.Delimiter:= ';';
    str.StrictDelimiter:= true;
    str.DelimitedText:= 取得消息;

    if str.Count>0 then
     begin
      if not TryStrToInt(str.Values['app_v'],i) then
         i:= 0;
      if i>app_v then
       label12.Caption:='有新版本可升级 '+ str.Values['app_msg']+' '
       else  label12.Caption:= '';

       label12.Caption:= label12.Caption+ str.Values['msg'];
     end;
   str.Free;

end;

procedure TForm1.tian_tiangan(const gm: string; flag: integer);
var ss: string;
begin
  //填充天干，flag=1表示伏神，2=主卦，3=变卦
  ss:= get_tiangan_by_gua(gm);
  if ss='' then
   begin
   showmessage('获取天干为空。');
   exit;
   end;

   case flag of
   1: begin
       tiangan1[0]:= ss[1];
       tiangan1[1]:= ss[2];
     end;
   2:begin
      tiangan1[2]:= ss[1];
       tiangan1[3]:= ss[2];
   end;
   3:begin
      tiangan1[4]:= ss[1];
       tiangan1[5]:= ss[2];
     end;
   end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
label16.Visible:= false;
  label17.Visible:= false;
  timer1.Enabled:= false;
end;

function TForm1.wangxiang(const s: string): string;
begin
  {
  旺，相，衰，休，囚----当令之月的卦爻为旺。
  如申月占筮，卦中申，酉金爻为旺。
  月建生助之爻为相。
  生月建之爻为衰。月建克制之爻或克制月建之爻为休囚。
  卦中与月建相冲的卦爻为月破
  填实----月破之爻如恰与日辰相同
  }
  result:= '';
  if s[4]=label5.Caption[2] then
    begin
     result:= '旺';
     paintbox1.Canvas.font.Color:= clred;
    end;
  if sheng(label5.Caption[2])=s[4] then
   begin
     result:= result +'相';
     paintbox1.Canvas.font.Color:= clred;
   end;
   if label5.Caption[2]=sheng(s[4]) then
    begin
     result:= '衰';
     paintbox1.Canvas.font.Color:= rgb(210,105,30);
    end;
   if (label5.Caption[2]=keke(s[4])) then
   begin
     result:= '休';
     paintbox1.Canvas.font.Color:= rgb(180,105,30);
   end;

     if (s[4]=keke(label5.Caption[2])) then
     begin
     result:= '囚';
     paintbox1.Canvas.font.Color:= rgb(94,38,18);
     end;

    if (yue[2]=cong(s[3])) then
     begin
      if ri[2]=s[3] then
      result:= result+ '填实'
      else
      result:= result +'月破';
     end;

    if (yue[2]=hehe(s[3])) then
      result:= result +'月合';
    if ri[2]=cong(s[3]) then
      result:= result +'日冲';
    if ri[2]=hehe(s[3]) then
      result:= result +'日合';


    if s[4]=sheng(label6.Caption[2]) then
      result:= result +'日生';
    if s[4]=keke(label6.Caption[2]) then
      result:= result +'日克';

      if ri[2]=s[3] then
      result:= result +'日临'
      else
      if s[4]=label6.Caption[2] then
        result:= result +'日扶';


end;

function TForm1.xunkong(const s: string; d: tdate): string;
var ss: string;
  I: Integer;
  Y,M,dD:Word;

begin
result:= '';

  for I := 0 to 11 do
    begin
      DeCodeDate(d-i,Y,M,dD);
      ss:= GetGanZhiFromNumber(GetGanZhiFromDay(y,m,dd));
       if ss='甲子' then
        begin
         G_xunkong[0]:= '戌';
         G_xunkong[1]:= '亥';
         // if (s='戌')or (s='亥') then
           result:= '甲子旬内(戌亥空)';

           exit;
        end;
       if ss='甲寅' then
        begin
          G_xunkong[0]:= '子';
         G_xunkong[1]:= '丑';
         // if (s='子')or (s='丑') then
           result:= '甲寅旬内(子丑空)';

           exit;
        end;
       if ss='甲戌' then
        begin
         G_xunkong[0]:= '申';
         G_xunkong[1]:= '酉';
        //  if (s='申')or (s='酉') then
           result:= '甲戌旬内(申酉空)';

           exit;
        end;
       if ss='甲申' then
        begin
         G_xunkong[0]:= '午';
         G_xunkong[1]:= '未';
        //  if (s='午')or (s='未') then
           result:= '甲申旬内(午未空)';

           exit;
        end;
       if ss='甲午' then
        begin
         G_xunkong[0]:= '辰';
         G_xunkong[1]:= '巳';
        //  if (s='辰')or (s='巳') then
           result:= '甲午旬内(辰巳空)';

           exit;
        end;
       if ss='甲辰' then
        begin
          G_xunkong[0]:= '寅';
         G_xunkong[1]:= '卯';
        //  if (s='寅')or (s='卯') then
           result:= '甲辰旬内(寅卯空)';

           exit;
        end;
    end;
end;

function TForm1.xunkong2(const s: string): string;
var a,b: string;
    i,j,k: integer;
begin
result:= '';
 if s='' then
    exit;
   a:= '甲乙丙丁戊己庚辛壬癸';
   b:='子丑寅卯辰巳午未申酉戌亥';
   j:= 0;
   k:= 0;
   for I := 1 to 10 do
    if a[i]=s[1] then
       begin
         j:= i;
         break;
       end;
    for I := 1 to 12 do
    if b[i]=s[2] then
       begin
         k:= i;
         break;
       end;
    if (j=0) or (k=0) then
      exit;

    i:= (11-j+k) mod 12;


   case i of
    1: result:= '子丑';
    3:result:= '寅卯';
    5:result:= '辰巳';
    7:result:= '午未';
    9:result:= '申酉';
    11: result:= '戌亥';
   end;

   result:= '('+result+'空)';
end;

function TForm1.xunkong_shi(const s: string; d: tdate): string;
begin
result:= '';
   if (yue[1]='甲') or (yue[1]='巳') then
    begin
      if pos(ri[2],'子丑寅卯辰巳午未申酉')>0 then
        begin
          G_xunkong[0]:= '戌';
          g_xunkong[1]:= '亥';
          result:= '甲巳旬（戌亥空）';
        end else begin
           G_xunkong[0]:= '申';
          g_xunkong[1]:= '酉';
          result:= '甲戌旬（申酉空）';
        end;
    end;

    if (yue[1]='乙') or (yue[1]='庚') then
    begin
      if pos(ri[2],'子丑寅卯辰巳午未')>0 then
        begin
          G_xunkong[0]:= '申';
          g_xunkong[1]:= '酉';
          result:= '甲戌旬（申酉空）';
        end else begin
           G_xunkong[0]:= '午';
          g_xunkong[1]:= '未';
          result:= '甲申旬（午未空）';
        end;
    end;

    if (yue[1]='丙') or (yue[1]='辛') then
    begin
      if pos(ri[2],'子丑寅卯辰巳')>0 then
        begin
          G_xunkong[0]:= '午';
          g_xunkong[1]:= '未';
          result:= '甲申旬（午未空）';
        end else begin
           G_xunkong[0]:= '辰';
          g_xunkong[1]:= '巳';
          result:= '甲午旬（辰巳空）';
        end;
    end;

    if (yue[1]='丁') or (yue[1]='壬') then
    begin
      if pos(ri[2],'子丑寅卯')>0 then
        begin
          G_xunkong[0]:= '辰';
          g_xunkong[1]:= '巳';
          result:= '甲午旬（辰巳空）';
        end else begin
           G_xunkong[0]:= '寅';
          g_xunkong[1]:= '卯';
          result:= '甲辰旬（寅卯空）';
        end;
    end;

    if (yue[1]='戊') or (yue[1]='癸') then
    begin
      if pos(ri[2],'子丑')>0 then
        begin
          G_xunkong[0]:= '寅';
          g_xunkong[1]:= '卯';
          result:= '甲辰旬（寅卯空）';
        end else begin
           G_xunkong[0]:= '子';
          g_xunkong[1]:= '丑';
          result:= '甲寅旬（子丑空）';
        end;
    end;

end;

function TForm1.zhuangbianyaoliuqin(s: string): string;
var c: char;
begin
 if 排卦方式='京房式' then
  c:= label3.Caption[4]
  else
   c:=取得主卦兄弟爻属性;

  if s[2]=c then
    result:='兄弟'
    else if keke(c)=s[2] then
             result:='妻财'
    else if sheng(c)=s[2] then
             result:='子孙'
    else if keke(s[2])=c then
             result:='官鬼'
    else if sheng(s[2])=c then
             result:='父母'
             else
             result:='错误';

end;

procedure TForm1.zhuangfushen;
var str: Tstringlist;
  I,j: Integer;
  ss: string;
  yy: array[0..5] of tyao;
  k: integer;
  b: boolean;
begin
伏神卦名:= ''; //全局变量设置为空
   str:= Tstringlist.Create;
     str.Add('父母');
     str.Add('兄弟');
     str.Add('子孙');
     str.Add('妻财');
     str.Add('官鬼');

     for I := 0 to 5 do
      if str.IndexOf( liuyao1[i].liuqin)>= 0 then
         str.Delete(str.IndexOf( liuyao1[i].liuqin));

    if str.Count>0 then
     begin
       for I := 0 to str.Count - 1 do
         begin
           ss:= getfirststring('select value1 from bagua where gm='''+ liuyao1[0].guaming+'''' );
           if ss<>'' then
             ss:= ss[1]; //取宫名
           with adoquery1 do
            begin
              close;
              sql.Clear;
              sql.Add('select * from zhi where value1='''+ss+'''');
              open;
               if not eof then
                begin
                b:= false;
                 for j := 6 to 13 do
                  begin
                  ss:= fieldbyname('value'+inttostr(j)).AsString;
                  system.delete(ss,1,pos('，',ss));
                  ss:= copy(ss,1,pos('，',ss)-1); //得到宫内卦名

                       //填充伏神的天干，flag=1
                       tian_tiangan(ss,1);

                   fillchar(yy,sizeof(yy),#0);
                   yy[0].guaming:= ss;
                   伏神卦名:= ss;
                     zhuangliuqinnajia(yy); //填充
                       if 排卦方式='藏山卜' then
                        begin
                         for k := 0 to 5 do
                            yy[k].liuqin:=  zhuangbianyaoliuqin(yy[k].nazhi);
                        end;

                     for k := 5 downto 0 do
                       if yy[k].liuqin=str.Strings[i] then
                          begin
                             liuyao1[k].fushen:= yy[k].liuqin+yy[k].nazhi;
                            b:= true;
                            break; //跳出k循环
                          end;
                       if b then
                        break; //如果找到，继续跳出j循环
                  end; //for j
                end;
            end;
         end;
     end;
   str.Free;
end;

procedure TForm1.zhuanggua(d: tdate);
var ss: string;
  i: Integer;
  b: boolean;
 // k: integer;
 // str1: tstringlist;
begin
  //耗时性能检测
 // k:= GetTickCount;
  //str1:= tstringlist.Create;

screen.Cursor:= crhourglass;
label9.Caption:='';
label10.Caption:='';

   fillchar(liuyao2,sizeof(liuyao2),#0); //初始化变爻


   for i := 0 to 5 do
    begin
     tiangan1[i]:=' ';
     liuyao1[i].fushen:= '';

    end;

   if liuyao1[0].yaogua=0 then
     begin
       screen.Cursor:= crdefault;
       exit;
     end;
   //取得主卦名
   liuyao1[0].guaming:= getNameByyaofu(liuyao1);
   label2.Caption:= '主卦：'+ liuyao1[0].guaming+get_guihun_youhun(liuyao1[0].guaming);
    label3.Caption:= getfirststring('select value1 from bagua where gm='''+ liuyao1[0].guaming+'''');
     if label3.Caption<>'' then
      begin
       // 画小卦象(label3.Caption[1],image1);
        label3.Caption:= label3.Caption + ' 序数:'+取得八卦序数(label3.Caption[1])+' 方位:'+取得八卦方位(label3.Caption[1]);
      end;
    label4.Caption:= '';
     //填充主卦的天干，flag=2
     tian_tiangan(liuyao1[0].guaming,2);

    // str1.Add('开头：'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
   //装六兽
   if radiobutton3.Checked then
     begin
      if ri<>'' then
        zhuangliushou(ri[1]);
     end;
   if radiobutton2.Checked then
     begin
      if yue<>'' then
        zhuangliushou(yue[1]);
     end;
   if radiobutton1.Checked then
     begin
        zhuangliushou(label1.caption[1]);
     end;

    // str1.Add('装六兽：'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
   //装纳甲
    zhuangliuqinnajia(liuyao1);

   // str1.Add('装纳甲：'+inttostr(GetTickCount-k));
   //  k:= GetTickCount;
    //判断是否有变爻

    b:= false; //判断是否变爻
    for i := 0 to 5 do
     begin

       if (liuyao1[i].yaogua=3) or (checkbox5.Checked and andong(i) and (liuyao1[i].yaogua=1)) then
        begin
         liuyao2[i].yaogua:= 2;
         b:= true;
        end  else
          if (liuyao1[i].yaogua=4) or  (checkbox5.Checked and andong(i) and (liuyao1[i].yaogua=2)) then
           begin
             liuyao2[i].yaogua:= 1;
             b:= true;
            end else
              liuyao2[i].yaogua:= liuyao1[i].yaogua;
     end; // end for i

     button2.Caption:= '显示变卦';
     if b then
     begin
       //有变爻
       liuyao2[0].guaming:= getNameByyaofu(liuyao2);
       label2.Caption:= label2.Caption+ ' 变卦：'+ liuyao2[0].guaming+get_guihun_youhun(liuyao2[0].guaming);
       zhuangliuqinnajia(liuyao2);

           //填充变卦的天干，flag=3
            tian_tiangan(liuyao2[0].guaming,3);

         for i := 0 to 5 do
           begin
           // liuyao2[i].liushou:= liuyao1[i].liushou;  装六兽时候一并装好了
            liuyao2[i].liuqin:= zhuangbianyaoliuqin(liuyao2[i].nazhi);

             if (liuyao1[i].yaogua>=3) or checkbox3.Checked or  (checkbox5.Checked and andong(i)) then
                liuyao1[i].bianyao:= liuyao2[i].liuqin+ liuyao2[i].nazhi
                else
                  liuyao1[i].bianyao:='';

           end; // end for i

       label4.Caption:= getfirststring('select value1 from bagua where gm='''+ liuyao2[0].guaming+'''');
        if label4.Caption<>'' then
          begin
           // 画小卦象(label4.Caption[1],image2);
            label4.Caption:= label4.Caption + ' 序数:'+取得八卦序数(label4.Caption[1])+' 方位:'+取得八卦方位(label4.Caption[1]);
          end;

     end;
     button2.Enabled:=b;

    // str1.Add('装变卦：'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
     //装伏神
      zhuangfushen;
     //  str1.Add('装伏神：'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
     //画卦像
     hua(liuyao1,d);

    // str1.Add('画卦象：'+inttostr(GetTickCount-k));
   //  k:= GetTickCount;
     ss:= datetostr(g_date);
     while pos('-',ss)>0 do
        delete(ss,pos('-',ss),1);
     if pos('/',ss)>0 then
      begin
        //2014/6/2
        for I := 1 to 9 do
         ss:= StringReplace(ss,'/'+inttostr(i)+'/','0'+inttostr(i),[]);
        if length(ss)=7 then
         insert('0',ss,7);
      end;

     for i := 0 to 5 do
       ss:= ss+ inttostr(liuyao1[i].yaogua);

     edit1.Text:= ss;

   //  str1.SaveToFile('e:\a.txt');
    // str1.Free;
   //  if Button10.Tag= 0 then
    // ADOConnection1.Execute('insert into 自动保存(卦值) values('''+ss +排卦方式 +'T:'+timetostr(G_time)+''')');

  //如果有图片，那么按钮可用
  button33.Enabled:= can_show_img;
screen.Cursor:= crdefault;
end;

procedure TForm1.zhuangliuqinnajia(var y: array of tyao);
var str: Tstringlist;
  I,j: Integer;
  ss: string;
begin
j:= 0;
    str:= Tstringlist.Create;
      with adoquery1 do
    begin
      close;
      sql.Clear;
       if 排卦方式='京房式' then
        sql.Add('select value3 from bagua where gm='''+ y[0].guaming +'''')
        else
         sql.Add('select value4 from bagua where gm='''+ y[0].guaming +'''');
      open;
       if not eof then
         str.DelimitedText:= fields[0].AsString;
    end;

  for I := 0 to str.Count - 1 do
    begin
      ss:= str.Strings[i];
      if length(ss)>2 then
        begin
          y[j].liuqin:= copy(ss,1,2);
          y[j].nazhi:= copy(ss,3,2);
          inc(j);
        end else begin
                  if ss='世' then
                     y[j-1].shiying:= '世';
                  if ss='应' then
                     y[j-1].shiying:= '应';
                 end;
    end;
    str.Free;
end;

procedure TForm1.zhuangliushou(tg: char);
begin
  if (tg='甲') or (tg='乙') then
     liushou_base('甲乙');
  if (tg='丙') or (tg='丁') then
     liushou_base('丙丁');
  if (tg='戊') then
     liushou_base('戊日');
  if (tg='己')  then
     liushou_base('己日');
  if (tg='庚') or (tg='辛') then
     liushou_base('庚辛');
  if (tg='壬') or (tg='癸') then
     liushou_base('壬癸');
end;

function TForm1.保存断语和反馈(b: integer): boolean;  //1保存断语，2保存反馈，3 都保存
var str1: tstringlist;
     ss,ben: string;
begin
result:= true;
if gua_weiyi_bianhao_g='' then
 begin
   showmessage('卦的唯一编号为空，无法保存。');
   result:= false;
   exit;
 end;
if shuzi_id='' then
   shuzi_id:= '0';
 if 是否使用网络=1 then
   begin
    //保存断语到网络。需要先检查卦是否存在，如果不存在先添加卦
     screen.Cursor:= crhourglass;
    str1:= Tstringlist.Create;
    str1.Add('nm='+aes_encrypt(user_name));
    str1.Add('save_gua_ming='+aes_encrypt(save_gua_ming));
    str1.Add('save_gua_bianhao='+aes_encrypt(save_gua_bianhao));
    str1.Add('shuzi_id='+aes_encrypt(shuzi_id));
    str1.Add('save_lei_id='+save_lei_id);
    str1.Add('save_nian='+save_nian);
    str1.Add('save_yue='+save_yue);
    str1.Add('save_ri='+save_ri);
    str1.Add('save_xingbie='+save_xingbie);
    str1.Add('save_chusheng='+save_chusheng);
    str1.Add('save_shiyou='+save_shiyou);
     //str1.Add('save_duanyu='+memo1.Lines.Text);
     //str1.Add('save_fankui='+memo3.Lines.Text);
      str1.Add('save_duanyu='+aes_encrypt(memo1.Lines.Text));
      //showmessage(str1.Values['save_duanyu']);
      str1.Add('save_fankui='+aes_encrypt(memo3.Lines.Text));
     str1.Add('save_b='+inttostr(b));
    ss:= form1.post_http('http://'+http_host+'/baiduliuyao/saveduanyufankui.php',str1);
   str1.Free;
   screen.Cursor:= crdefault;
    if pos('ok',ss)=0 then
     begin
     result:= false;
     CheckBox6.Checked:= true;
     form3.CheckBox6.Checked:= true;
     showmessage('网络保存失败，错误信息：'+ss);
     end;

   end;

   if result and (是否使用网络=1) then
    ben:= '0'
    else
     ben:= '1';
   //在本地也保存断语和反馈，也需先检查卦是否存在，不存在先添加卦
   if getFirstInteger('select count(*) from gua_table where gua_bianhao='''+gua_weiyi_bianhao_g+'''')=0 then
   begin
     //添加一条记录
     ADOConnection1.Execute('insert into gua_table(gua_ming,gua_bianhao,lei_id,nian,yue,ri,'+
                   'xingbie,chusheng,shiyou,ben) values('''+
                   save_gua_ming+''','''+
                   save_gua_bianhao+''','+
                   save_lei_id+','+
                   save_nian+','+
                   save_yue+','+
                   save_ri+','''+
                   save_xingbie+''','''+
                   save_chusheng+''','''+
                   save_shiyou+''','+
                   ben+ ')');
   end;

   if b=1 then
    ADOConnection1.Execute('update gua_table set ben='+ben+',duanyu='''+memo1.Lines.Text+''' where gua_bianhao='''+gua_weiyi_bianhao_g+'''')
    else if b=2 then
          ADOConnection1.Execute('update gua_table set ben='+ben+',fankui='''+memo3.Lines.Text+''' where gua_bianhao='''+gua_weiyi_bianhao_g+'''')
          else if b=3 then
               begin
                  ADOConnection1.Execute('update gua_table set ben='+ben+',duanyu='''+memo1.Lines.Text+''' where gua_bianhao='''+gua_weiyi_bianhao_g+'''');
                  ADOConnection1.Execute('update gua_table set fankui='''+memo3.Lines.Text+'''where gua_bianhao='''+gua_weiyi_bianhao_g+'''');
               end;
end;

function 取先天序数(S: char): integer;
begin
 //乾一，兑二，离三，震四，巽五，坎六，艮七，坤八
  case s of
   '乾':result:= 1;
   '兑':result:= 2;
   '离':result:= 3;
   '震':result:= 4;
   '巽':result:= 5;
   '坎':result:= 6;
   '艮':result:= 7;
   '坤':result:= 8;
   else
    result:= 0;
  end;
end;

function 取后天序数(S: char): integer;
begin
 //坎一、坤二、震三、巽四、五为中宫，乾六、兑七、艮八、离九
   case s of
   '坎':result:= 1;
   '坤':result:= 2;
   '震':result:= 3;
   '巽':result:= 4;
   '中':result:= 5;
   '乾':result:= 6;
   '兑':result:= 7;
   '艮':result:= 8;
   '离':result:= 9;
   else
    result:= 0;
  end;
end;

function TForm1.取得主卦兄弟爻属性: char;
var i: integer;
    ss: string;
begin
result:= ' ';
ss:= '';

  for I := 0 to 5 do
     if liuyao1[i].liuqin='兄弟' then
        ss:= liuyao1[i].nazhi;

     if ss<>'' then
         result:= ss[2]
         else begin
          ss:=liuyao1[0].nazhi;
            if liuyao1[0].liuqin='父母' then
               result:= sheng(ss[2])
            else if liuyao1[0].liuqin='官鬼' then
               result:= keke(ss[2])
            else if liuyao1[0].liuqin='妻财' then
               result:= kekewo(ss[2])
               else if liuyao1[0].liuqin='子孙' then
               result:= shengwo(ss[2]);

         end;


end;

function TForm1.取得八卦序数(s: char): string;
begin
  if radiobutton6.Checked then
   result:= inttostr(取先天序数(s))
   else
     result:= inttostr(取后天序数(s));
end;


function 取先天方位(S: char): string;
begin
//乾南，坤北，离东，坎西，兑东南，震东北，巽西南，艮西北
    case s of
   '乾':result:= '南';
   '兑':result:= '东南';
   '离':result:= '东';
   '震':result:= '东北';
   '巽':result:= '西南';
   '坎':result:= '西';
   '艮':result:= '西北';
   '坤':result:= '北';
   else
    result:= '';
  end;
end;

function 取后天方位(S: char): string;
begin
 //震东，兑西，离南，坎北，乾西北，坤西南，艮东北，巽东南
  case s of
   '坎':result:= '北';
   '坤':result:= '西南';
   '震':result:= '东';
   '巽':result:= '东南';
   '中':result:= '中';
   '乾':result:= '西北';
   '兑':result:= '西';
   '艮':result:= '东北';
   '离':result:= '南';
   else
    result:= '';
  end;
end;

function TForm1.取得八卦方位(s: char): string;
begin
  if radiobutton4.Checked then
  result:= 取先天方位(s)
  else
    result:= 取后天方位(s);
end;

function TForm1.取得消息: ansistring;
//var memstr: TMemoryStream;
begin
(*  memstr:= TMemoryStream.Create;
    memstr.Clear;

     try
      IdHTTP1.Get('http://www.finer2.com/liuyao/msg.htm',memstr);
     except
       result:= '';
        memstr.Free;
       exit;
     end;

    setlength(result,memstr.Size);
  memstr.Position:= 0;
  memstr.Read(result[1],memstr.Size);
  memstr.Free;   *)
end;

function TForm1.根据id载入卦本地(id: integer):boolean;
var ss: string;
begin
  //从本地载入卦
  //save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou
  ss:= '';
  gua_id_g:= id;
  shuzi_id:= '0'; //保存断语和反馈时用到这个id,本地卦这个值为空
  with adoquery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from gua_table where id='+ inttostr(id) );
      open;
       if not eof then
         begin
          result:= true;
          save_gua_ming:= fieldbyname('gua_ming').AsString;
          save_gua_bianhao:= fieldbyname('gua_bianhao').AsString;
          save_lei_id:= fieldbyname('lei_id').AsString;
          save_nian:= fieldbyname('nian').AsString;
          save_yue:= fieldbyname('yue').AsString;
          save_ri:= fieldbyname('ri').AsString;
          save_xingbie:=fieldbyname('xingbie').AsString;
          save_chusheng:= fieldbyname('chusheng').AsString;
          save_shiyou:=fieldbyname('shiyou').AsString;

          gua_weiyi_bianhao_g:= save_gua_bianhao;
          memo1.Lines.Text:=  fieldbyname('duanyu').AsString;
           memo3.Lines.Text:=  fieldbyname('fankui').AsString;
           button28.Enabled:= false;
           button29.Enabled:= false;
           button30.Enabled:= false;
            ss:= '';
           if (save_xingbie<>'未知') and (save_xingbie<>'') then
              ss:= '性别:'+save_xingbie+' ';
           if save_chusheng<>'' then
              ss:= '生日:'+save_chusheng+' ';
          事由:= ss +'占事'+save_shiyou;

           edit1.Text:= save_gua_bianhao;
           button8.Click; //显示卦

           ss:= inttostr(gua_id_g)+'(本地)';
           if gua_shangxia.IndexOf(ss)=-1 then
           begin
             gua_shangxia.Add(ss);
            inc(gua_index_g);
           end;
         end else result:= false;
    end;
end;

procedure TForm1.根据id载入卦网络(id: integer);
var
    str1: tstringlist;
    ss: string;
begin
 //save_ 系列变量，用于载入卦后保存下来，供在保存短语时新增用
  //save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou
  ss:= '';
      gua_id_g:= id;
      shuzi_id:= inttostr(id); //保存断语和反馈时用到这个id
     str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('guaid='+aes_encrypt(inttostr(id)));
    screen.Cursor:= crhourglass;
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/loadgua.php',str1);
    screen.Cursor:= crdefault;
        str1.Free;
          if ss='neterror' then
        begin
          showmessage('网络错误，请稍后重试,一般过一两分钟即可恢复。');
          exit;
        end;

        if ss<>'' then
         begin
          delete(ss,1,pos('<t>',ss)+2);


            save_gua_ming:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_gua_bianhao:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_lei_id:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_nian:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_yue:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_ri:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_xingbie:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_chusheng:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            save_shiyou:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            memo1.Lines.Text:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            memo3.Lines.Text:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);

            gua_weiyi_bianhao_g:= save_gua_bianhao;

             button28.Enabled:= false;
           button29.Enabled:= false;
           button30.Enabled:= false;

            ss:= '';
           if (save_xingbie<>'未知') and (save_xingbie<>'') then
              ss:= '性别:'+save_xingbie+' ';
           if save_chusheng<>'0' then
              ss:= '生日:'+save_chusheng+' ';
            事由:= ss+'占事'+save_shiyou;
           edit1.Text:= save_gua_bianhao;
           button8.Click; //显示卦
            ss:= inttostr(gua_id_g)+'(网络)';
           if gua_shangxia.IndexOf(ss)=-1 then
           begin
             gua_shangxia.Add(ss);
            inc(gua_index_g);
           end;

         end else showmessage('网络上没有搜索到结果。');



end;

procedure TForm1.画小卦象(s: char; img: timage);
begin
   img.Canvas.FillRect(rect(0,0,38,30));
   case s of
   '坎':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,15,8));
           fillrect(rect(23,0,38,8));

           fillrect(rect(0,11,38,19));

           fillrect(rect(0,22,15,30));
           fillrect(rect(23,22,38,30));
           Brush.Color:= clBtnFace;

          end;
        end;
   '坤':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,15,8));
           fillrect(rect(23,0,38,8));

           fillrect(rect(0,11,15,19));
           fillrect(rect(23,11,38,19));

           fillrect(rect(0,22,15,30));
           fillrect(rect(23,22,38,30));
           Brush.Color:= clBtnFace;

          end;
        end;
   '震':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,15,8));
           fillrect(rect(23,0,38,8));

           fillrect(rect(0,11,15,19));
           fillrect(rect(23,11,38,19));


           fillrect(rect(0,22,38,30));
           Brush.Color:= clBtnFace;

          end;
        end;
   '巽':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,38,8));

           fillrect(rect(0,11,38,19));

           fillrect(rect(0,22,15,30));
           fillrect(rect(23,22,38,30));

           Brush.Color:= clBtnFace;

          end;
        end;
   '乾':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,38,8));

           fillrect(rect(0,11,38,19));

           fillrect(rect(0,22,38,30));

           Brush.Color:= clBtnFace;

          end;
        end;
   '兑':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,15,8));
           fillrect(rect(23,0,38,8));

           fillrect(rect(0,11,38,19));


           fillrect(rect(0,22,38,30));
           Brush.Color:= clBtnFace;

          end;
        end;
   '艮':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,38,8));

           fillrect(rect(0,11,15,19));
           fillrect(rect(23,11,38,19));

           fillrect(rect(0,22,15,30));
           fillrect(rect(23,22,38,30));
           Brush.Color:= clBtnFace;

          end;
        end;
   '离':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,38,8));

           fillrect(rect(0,11,15,19));
           fillrect(rect(23,11,38,19));

           fillrect(rect(0,22,38,30));
           Brush.Color:= clBtnFace;

          end;
        end;
  end;
end;

function TForm1.返回颜色(i: integer): tcolor;
begin
    if i and 1=1 then
     result:= $FFA07A
     else if i and 2=2 then
     result:= $FF82AB
     else if i and 4=4 then
     result:= $FF82AB
     else if i and 8=8 then
     result:= $BA55D3
     else if i and 16=16 then
     result:= $8FBC8F
     else if i and 32=32 then
     result:= $6FCCBF
     else result:= clWindowText;

end;

end.
