unit main;
//代码编写 傅铖荣 2018-7-14
//有任何问题可以联系 1145975039@qq.com 或者 ufo2003@126.com
interface
{$ZEROBASEDSTRINGS OFF}
{$Define _DELPHI_STRING_ONE_BASED}
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo,untaes,IdHashMessageDigest,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdCompressorZLib,
  IdZLibCompressorBase, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,cncalendar,Unitjiaoshiyi,
  System.Rtti, FMX.Grid.Style, FMX.Grid,unit2, System.Actions, FMX.ActnList,
  FMX.StdActns, FMX.MediaLibrary.Actions,fmx.platform,FMX.Objects
  {$IFDEF ANDROID}
   ,Androidapi.Helpers,Android.JNI.PowerManager,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText, IdDNSResolver
  {$ENDIF}
  ;
 const
  lius: array[0..5] of string=('青龙','朱雀','勾陈','腾蛇','白虎','玄武');
  liekuan: array[0..8] of single=(0.079,0.159,0.159,0.079,0.079,0.126,0.159,0.079,0.079);
type
  Tyao=record
   guaming: string;
   liushou: string;
   fushen: string;
   liuqin: string;
   nazhi: string;
   yaogua: integer;
   shiying: char;
   bianyao: string;
 end;
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Layout2: TLayout;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Edit2: TEdit;
    Layout3: TLayout;
    Label3: TLabel;
    Layout4: TLayout;
    Label4: TLabel;
    SpeedButton10: TSpeedButton;
    VertScrollBox1: TVertScrollBox;
    Layout5: TLayout;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Layout6: TLayout;
    CheckBox1: TCheckBox;
    Layout16: TLayout;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    TabItem10: TTabItem;
    Button1: TButton;
    Label9: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Button2: TButton;
    SpeedButton19: TSpeedButton;
    Label10: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    SpeedButton20: TSpeedButton;
    Label11: TLabel;
    Edit6: TEdit;
    Label12: TLabel;
    Edit7: TEdit;
    Button4: TButton;
    SpeedButton21: TSpeedButton;
    Label13: TLabel;
    Edit8: TEdit;
    Button5: TButton;
    ListBox1: TListBox;
    VertScrollBox2: TVertScrollBox;
    Layout7: TLayout;
    Layout8: TLayout;
    SpeedButton22: TSpeedButton;
    Memo1: TMemo;
    Layout9: TLayout;
    Layout10: TLayout;
    Memo2: TMemo;
    Button6: TButton;
    Memo3: TMemo;
    Button7: TButton;
    Button8: TButton;
    CheckBox2: TCheckBox;
    IdHTTP2: TIdHTTP;
    IdCompressorZLib1: TIdCompressorZLib;
    Layout11: TLayout;
    Label17: TLabel;
    SqliteConnection1: TFDConnection;
    SqliteQuery1: TFDQuery;
    SpeedButton23: TSpeedButton;
    TimeEdit1: TTimeEdit;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ComboBox2: TComboBox;
    StringGrid1: TStringGrid;
    Label22: TLabel;
    LabelJieqinongli: TLabel;
    Label19: TLabel;
    SpeedButton24: TSpeedButton;
    Button9: TButton;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    ActionList1: TActionList;
    ShowShareSheetAction1: TShowShareSheetAction;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    CheckBox3: TCheckBox;
    zangshan_check: TCheckBox;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton25: TSpeedButton;
    Label27: TLabel;
    Button10: TButton;
    Button11: TButton;
    IdDNSResolver1: TIdDNSResolver;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SqliteConnection1BeforeConnect(Sender: TObject);
    procedure SqliteConnection1AfterConnect(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure TabItem1Tap(Sender: TObject; const Point: TPointF);
    procedure DateEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Layout7Resized(Sender: TObject);
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Memo2ChangeTracking(Sender: TObject);
    procedure Memo3ChangeTracking(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabItem7Tap(Sender: TObject; const Point: TPointF);
    procedure Button9Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure TabItem2Tap(Sender: TObject; const Point: TPointF);
    procedure TabItem3Tap(Sender: TObject; const Point: TPointF);
    procedure TabItem4Tap(Sender: TObject; const Point: TPointF);
    procedure CheckBox3Change(Sender: TObject);
    procedure zangshan_checkChange(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure StringGrid1DrawColumnCell(Sender: TObject; const Canvas: TCanvas;
      const Column: TColumn; const Bounds: TRectF; const Row: Integer;
      const Value: TValue; const State: TGridDrawStates);
    procedure Label16Tap(Sender: TObject; const Point: TPointF);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
    total_page,total_count,Suiji_ID: integer;
    is_zangshan: boolean;
    function shifou_denglu: boolean; //检测是否登录，如登录那么读取用户名
    procedure start2;
    function get_jieqi(y, m, d: integer): string;
    function get_nongli(y,m,d: integer): string;
    function get_tiangandizhi(dt: tdate): string;
    function xunkong2(const s: string): string;
    procedure show_guaming;
    procedure save_gua;
    function qude_gua_bianhao: string;
    procedure zhuanggua(d: tdate);
    procedure tian_tiangan(const gm: string; flag: integer);
    procedure zhuangliushou(tg: char); //装六兽
    procedure liushou_base(tg: string);
    procedure zhuangliuqinnajia(var y: array of tyao); //装纳甲
    function zhuangbianyaoliuqin(s: string): string;
    procedure zhuangfushen;
    procedure hua(const y: array of tyao);
    procedure cha(isAll: boolean);
    procedure 根据id载入卦网络(id: integer);
    function 根据id载入卦本地(id: integer):boolean;
    procedure show_gua_by_id(id: string);
    function is_shuping: boolean; //判断是否竖屏
    function 保存断语和反馈(b: integer): boolean;  //1保存断语，2保存反馈，3 都保存
    procedure qiguahouxu;
    procedure SpeedButton_Click(Sender: TObject);  //点击来更改爻
    function shuizhiqigua(danShu: boolean; a,b: string): string;
    function makescalescreenShot(sender: tform): tbitmap; //截屏
    procedure set_value_db(b: boolean; n: string);
    function 取得主卦兄弟爻属性: char;
    function get_shensha: string; //取得神煞
  public
    { Public declarations }
    伏神卦名: string;
    事由: string;
    http_host: string;
    user_name,shiyou: string;
    is_Online: boolean;
    url_g: string;
    G_date: tdate;
    G_time: ttime;
    save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou: string;
    gua_weiyi_bianhao_g,shuzi_id: string; //卦唯一编号是保存了卦编号，在网络单用户内和本机都是相同且唯一的，
    tiangan_kuan,gua_id_g,gua_index_g: integer;   //gua_id记录起卦的id gua_index 记录起卦或者查看过的stringlist数组的index
    liuyao1: array[0..5] of Tyao; //主
    liuyao2: array[0..5] of Tyao;  //变
    yue,ri,dangqian: string;
    tiangan1: array[0..5] of char;
    G_xunkong: array[0..1] of char; //当前旬空
    function aes_encrypt(const s: string): string;
    function aes_decrypt(const s: string): string;
    function md5string(const s: string): string;
    function post_http(const url: string; t: tstringlist): string;
  end;

var
  Form1: TForm1;

implementation
      uses IOUtils,Unit_str_cn;
{$R *.fmx}

{$IFDEF ANDROID}
procedure SetBack(const AAction : JString);
var
  Intent: JIntent;
begin
  Intent:= TJIntent.JavaClass.init(AAction);
  intent.addCategory(TJIntent.JavaClass.CATEGORY_HOME);
  Intent.setFlags(TJIntent.JavaClass.FLAG_ACTIVITY_NEW_TASK);
  SharedActivityContext.startActivity(Intent);
end;
{$ENDIF}

function kekedizhi(s: char): string;
begin
         result:= ' ';
  case s of
  '子': result:= '巳午';
  '丑': result:= '亥子';
   '寅': result:= '辰戌丑未';
  '卯': result:= '辰戌丑未';
   '辰': result:= '亥子';
  '巳': result:= '申酉';
   '午': result:= '申酉';
  '未': result:= '亥子';
  '申': result:= '寅卯';
  '酉': result:= '寅卯';
   '戌': result:= '亥子';
  '亥': result:= '巳午';
  end;
end;

function shengdizhi(s: char): string;
begin
      result:= ' ';
  case s of
  '子': result:= '寅卯';
  '丑': result:= '申酉';
   '寅': result:= '巳午';
  '卯': result:= '巳午';
   '辰': result:= '申酉';
  '巳': result:= '辰戌丑未';
   '午': result:= '辰戌丑未';
  '未': result:= '申酉';
  '申': result:= '亥子';
  '酉': result:= '亥子';
   '戌': result:= '申酉';
  '亥': result:= '寅卯';
  end;
end;

function keke(s: char): char;
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

function sheng(s: char): char;
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

function qg: integer;
var i: integer;
begin

sleep(10);

i:= Random(8);

   if i=0 then
    result:= 4
    else if i=7 then
    result:= 3
    else if (i=1) or (i=2) or (i= 4) then   //按钱币的布局方式定阴阳
    result:= 1
    else result:= 2;

end;

function get_fendu(const tg: char;du: integer): string;
begin

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

function TForm1.aes_decrypt(const s: string): string;
// var  ss: _AnsiStr;
  // ww: RawByteString;
begin
  // ww:= Utf8Encode(s);
  //ss:= UTF8ToString(PAnsiChar(ss));
 // SetString(ww, MarshaledAString(s), Length(s));
  result:= trim(Utf8decode(DecryptString(s,'ae87G0O3914Ww129')));

end;

function TForm1.aes_encrypt(const s: string): string;
var  //ss: _AnsiStr;
   ww: RawByteString;
begin
   ww:= Utf8Encode(s);
  //ss:= UTF8ToString(PAnsiChar(ss));
  //SetString(ss, PAnsiChar(ww), Length(ww));
  result:= EncryptString(ww,'ae87G0O3914Ww129');
end;

function TForm1.makescalescreenShot(sender: tform): tbitmap;
var fscreenscale: single;
    tmp: tbitmap;
    function getscreenscale: single;
    var screenservice: ifmxscreenservice;
    begin
      result:= 1;
     // if tplatformservices.Current.SupportsPlatformService(ifmxscreenservice,iinterface(screenservice)) then
       //  result:= screenservice.GetScreenScale;
    end;
begin
  fscreenscale:= getscreenscale;
  tmp:= tbitmap.Create(round(sender.width * fscreenscale),round(sender.Height * fscreenscale));
  result:= tbitmap.Create(round(Layout7.width * fscreenscale),round((Layout7.Height+ toolbar1.Height) * fscreenscale));
  result.Clear(0);

  if result.Canvas.BeginScene then
   begin
     try
      //Layout1.PaintTo(result.Canvas,rectf(0,0,result.Width,result.Height));
      //result.Canvas.DrawBitmap(sender.Canvas,rectf(0,0,result.Width,result.Height),
      //rectf(0,0,result.Width,result.Height),1,true);

       sender.PaintTo(tmp.Canvas);
       result.Canvas.DrawBitmap(tmp,rectf(0,0,result.Width,result.Height),
                rectf(0,0,result.Width,result.Height),1,true);

     finally
       result.Canvas.EndScene;
       tmp.free;
     end;
   end;
end;

function TForm1.md5string(const s: string): string;
var md5: TIdHashMessageDigest5;
begin
   md5 := TIdHashMessageDigest5.Create;
   result := md5.HashStringAsHex(s);
   md5.Free;
end;

procedure TForm1.Memo2ChangeTracking(Sender: TObject);
begin
     button6.Enabled:= true;
     if button7.Enabled then
       button8.Enabled:= true;
end;

procedure TForm1.Memo3ChangeTracking(Sender: TObject);
begin
   button7.Enabled:= true;
   if button6.Enabled then
      button8.Enabled:= true;
end;

function TForm1.post_http(const url: string; t: tstringlist): string;
var memstr,outstr: TStringStream;
    idhttp1: Tidhttp;
    j: integer;
    label pp;
begin
 j:= 0;
 //screen.Cursor:= crhourglass;
  memstr:= TStringStream.Create('',TEncoding.UTF8);

   pp:
   idhttp1:= Tidhttp.Create(nil);
   IdHTTP1.HTTPOptions := IdHTTP1.HTTPOptions + [hoKeepOrigProtocol]; //必须有这行才使设置协议版本生效
   IdHTTP1.ProtocolVersion := pv1_1;
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
                //screen.Cursor:= crdefault;
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
         if memstr.Size=0 then
           result:='返回数据为空'
           else begin
         memstr.Position:= 0;
         IdCompressorZLib1.DecompressGZipStream(memstr, outstr);
         outstr.Position := 0;
         result:= outstr.DataString;
         //memo1.Lines.Add('压缩前'+inttostr(outstr.Size));
         //memo1.Lines.Add('压缩后'+inttostr(memstr.Size));
                end;
         outstr.Free;
       end else begin
         result:= memstr.DataString;
       end;
   idhttp1.Free;
  //screen.Cursor:= crdefault;

  memstr.Free;

end;

procedure TForm1.qiguahouxu;
var ss: string;
begin

   g_date:= Dateedit1.Date;
   g_time:= Timeedit1.Time;
    show_guaming;  //显示卦名在label16.caption

    label20.text:= get_tiangandizhi(G_date);

    if combobox1.itemindex=1 then
     ss:= '男占 ';
  if combobox1.itemindex=2 then
     ss:= '女占 ';

   if edit3.Text<>'' then
    ss:= '出生:'+ edit3.Text+ ' ';

  事由:= ss+ edit4.Text;
      save_gua;
       zhuanggua(G_date);

       TabControl1.TabIndex:=1;

end;

function TForm1.qude_gua_bianhao: string;
var i: integer;
begin
   result:= datetostr(g_date);
     while pos('-',result)>0 do
        delete(result,pos('-',result),1);
     if pos('/',result)>0 then
      begin
        //2014/6/2     2018/7/6
        for I := 1 to 9 do
         result:= StringReplace(result,'/'+inttostr(i)+'/','0'+inttostr(i),[]);
        if length(result)=7 then
         insert('0',result,7);
      end;

     for i := 0 to 5 do
       result:= result+ inttostr(liuyao1[i].yaogua);


     result:= result+'T:'+timetostr(G_time);

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
      VertScrollBox2.Center;
     memo2.Enabled:= true;
     memo2.SetFocus;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
   VertScrollBox2.ScrollBy(0,-300);
     memo3.Enabled:= true;
     memo3.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
 //自动起卦 初爻从5开始，0为上爻
    fillchar(liuyao1,sizeof(liuyao1),#0);
    for I := 5 downto 0 do
      liuyao1[i].yaogua:= qg;


    {
   label12.Tag:= liuyao1[0].yaogua;
   label11.Tag:= liuyao1[1].yaogua;
   label10.Tag:= liuyao1[2].yaogua;
   label9.Tag := liuyao1[3].yaogua;
   label8.Tag := liuyao1[4].yaogua;
   label7.Tag := liuyao1[5].yaogua;  }

   if pos('手机卦',edit4.Text)=0 then
       edit4.Text:= '(手机卦)'+ edit4.Text;


   //保存起卦
   qiguahouxu;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   if speedbutton16.text='初爻，点此更改' then
  begin
    //showmessage('“第一次摇得”位置请用鼠标点击来更改爻值。');
    showmessage('“初爻”位置点一次为阳，点两次为阴三次老阳四次老阴。');
    exit;
  end;
 if speedbutton15.text='二爻，点此更改' then
  begin
    showmessage('“二爻”位置点一次为阳，点两次为阴三次老阳四次老阴。');
    exit;
  end;
  if speedbutton14.text='三爻，点此更改' then
  begin
    showmessage('“三爻”位置点一次为阳，点两次为阴三次老阳四次老阴。');
    exit;
  end;
  if speedbutton13.text='四爻，点此更改' then
  begin
    showmessage('“四爻”位置点一次为阳，点两次为阴三次老阳四次老阴。');
    exit;
  end;
  if speedbutton12.text='五爻，点此更改' then
  begin
    showmessage('“五爻”位置点一次为阳，点两次为阴三次老阳四次老阴。');
    exit;
  end;
  if speedbutton11.text='上爻，点此更改' then
  begin
    showmessage('“上爻”位置点一次为阳，点两次为阴三次老阳四次老阴。');
    exit;
  end;

  //开始排卦
      fillchar(liuyao1,sizeof(liuyao1),#0);

   liuyao1[0].yaogua:= speedbutton11.Tag;
   liuyao1[1].yaogua:= speedbutton12.Tag;
   liuyao1[2].yaogua:= speedbutton13.Tag;
   liuyao1[3].yaogua:= speedbutton14.Tag;
   liuyao1[4].yaogua:= speedbutton15.Tag;
   liuyao1[5].yaogua:= speedbutton16.Tag;   //初爻

   //保存起卦
   qiguahouxu;
end;

procedure TForm1.Button3Click(Sender: TObject);
var ss: string;
  I: Integer;
begin
 if edit5.Text='' then
  begin
    showmessage('请输入1个或者多个数字。');
    exit;
  end;

   if pos('(单数',edit4.Text)=0 then
       edit4.Text:= '(单数'+edit5.Text +')'+ edit4.Text;

  ss:= guaming_dao_shuzi( shuizhiqigua(true,edit5.Text,''));
  fillchar(liuyao1,sizeof(liuyao1),#0);
    for I := 0 to 5 do
      liuyao1[i].yaogua:= strtoint(ss[i+1]);

   //保存起卦
   qiguahouxu;
end;

procedure TForm1.Button4Click(Sender: TObject);
 var ss: string;
  I: Integer;
begin
 if (edit6.Text='') or (edit7.Text='') then
  begin
    showmessage('请输入两个个数字。');
    exit;
  end;

  if pos('(双数',edit4.Text)=0 then
       edit4.Text:= '(双数'+edit6.Text+','+edit7.Text +')'+ edit4.Text;

  ss:= guaming_dao_shuzi( shuizhiqigua(false,edit6.Text,edit7.Text));

  fillchar(liuyao1,sizeof(liuyao1),#0);
    for I := 0 to 5 do
      liuyao1[i].yaogua:= strtoint(ss[i+1]);

   //保存起卦
   qiguahouxu;
end;

procedure TForm1.Button5Click(Sender: TObject);
 var ss: string;
  I: Integer;
begin
 if edit8.Text='' then
  begin
    showmessage('请输入卦名。');
    exit;
  end;
    if pos('(按卦名',edit4.Text)=0 then
       edit4.Text:= '(按卦名)'+ edit4.Text;

  ss:= guaming_dao_shuzi(edit8.Text);

  fillchar(liuyao1,sizeof(liuyao1),#0);
    for I := 0 to 5 do
      liuyao1[i].yaogua:= strtoint(ss[i+1]);

   //保存起卦
   qiguahouxu;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  //保存断语
  if gua_weiyi_bianhao_g='' then
 begin
   showmessage('请先起卦或者载入卦。');
   exit;
 end;

   if 保存断语和反馈(1) then
   begin
   //showmessage('断语保存成功。');
   button6.Enabled:= false;
 if button7.Enabled=false then
   button8.Enabled:= false;
   memo2.Enabled:= false;
   end else begin

              showmessage('断语保存失败，由于使用的香港服务器，有时网络不稳定，请稍后重试,一般过一两分钟即可恢复。');
            end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   if 保存断语和反馈(2) then
   begin
   //showmessage('断语保存成功。');
   button7.Enabled:= false;
 if button6.Enabled=false then
   button8.Enabled:= false;
   memo3.Enabled:= false;
   end else begin

              showmessage('反馈保存失败，由于使用的香港服务器，有时网络不稳定，请稍后重试,一般过一两分钟即可恢复。');
            end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
   if 保存断语和反馈(3) then
   begin
   //showmessage('断语保存成功。');
   button6.Enabled:= false;
   button7.Enabled:=false;
   button8.Enabled:= false;
    memo2.Enabled:= false;
    memo3.Enabled:= false;
   end else begin

              showmessage('保存失败，由于使用的香港服务器，有时网络不稳定，请稍后重试,一般过一两分钟即可恢复。');
            end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
      speedbutton16.text:='初爻，点此更改';
   speedbutton16.tag:= 0;
   speedbutton15.text:='二爻，点此更改';
   speedbutton15.tag:= 0;
   speedbutton14.text:='三爻，点此更改';
    speedbutton14.tag:= 0;
   speedbutton13.text:='四爻，点此更改';
    speedbutton13.tag:= 0;
   speedbutton12.text:='五爻，点此更改';
     speedbutton12.tag:= 0;
   speedbutton11.text:='上爻，点此更改';
    speedbutton11.tag:= 0;
end;

function benbian_quchu(const s: string): string;
begin
 result:= StringReplace(s,'本卦：','',[]);
 result:= StringReplace(result,'变卦：','之 ',[]);
 result:= StringReplace(result,'主卦：','',[]);
end;

procedure TForm1.cha(isAll: boolean);
var str1: tstringlist;
    ss,a,b,c,d,ss2: string;
    i,k: integer;
     Obj1: TFmxObject;
begin
  //搜索
  i:= 0;

  listbox1.Items.Clear;

  if is_online=true then
   begin
     //从网络搜索
       if (edit2.Text<>'1') and (strtoint(edit2.Text)> total_page) then
   begin
     showmessage('输入页数不能大于总页数');
     exit;
   end;

     if checkbox2.isChecked then
      begin
        //勾选此项，那么显示没有同步到网络的卦
        with sqlitequery1 do
          begin
            close;
            sql.Clear;
            sql.Add('select id,gua_ming,gua_bianhao,shiyou from gua_table where ben=1');
            open;
             while not eof do
                        begin
                         ss2:= '(未保存到网络)'+intToHex(strtoint(fields[0].asstring)+suiji_id,1)+';'+fields[3].asstring+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring;

                         k:=listbox1.Items.Add(ss2);
                          Obj1:=listbox1.ListItems[k].FindStyleResource('text');//.FontColor:=  TAlphaColorRec.Dodgerblue
                          (TControl(Obj1) as tText).Color:= TAlphaColors.Brown;
                          (TControl(Obj1) as tText).Font.Size:= 14;
                          next;
                        end;
            close;
          end;
      end;

    str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       if isAll or (edit1.Text='') then
        begin
         if edit1.Tag=20 then
            str1.Add('wd='+ aes_encrypt('list50'))
           else
             str1.Add('wd='+ aes_encrypt('listAll'));
        end else
       str1.Add('wd='+aes_encrypt(edit1.Text));
       str1.Add('qi='+aes_encrypt(inttostr((strtoint(edit2.Text)-1) * 20)));


       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/cha_m.php',str1);

       str1.Free;
         if ss='neterror' then
        begin
          showmessage('网络错误，由于使用的香港服务器，有时网络不稳定，请稍后重试,一般过一两分钟即可恢复。');
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
              ss2:=intToHex(strtoint(a)+suiji_id,1)+';'+d+';'+benbian_quchu(b)+';'+c;
                if pos('<NF>',ss2)>0 then
                            begin
                              ss2:= StringReplace(ss2, '<NF>', '', []);
                              ss2:= ss2+ '<NF>';
                            end;
               k:= listbox1.Items.Add(ss2);
                Obj1:=listbox1.ListItems[k].FindStyleResource('text');//.FontColor:=  TAlphaColorRec.Dodgerblue
                (TControl(Obj1) as tText).Font.Size:= 14;
                  if pos('<NF>',ss2)>0 then
                      (TControl(Obj1) as tText).Color:= TAlphaColors.Darkblue
                   else
                      listbox1.ListItems[k].TextSettings.FontColor:=  TAlphaColorRec.Black;
               while pos('<t>',ss)=1 do
                delete(ss,1,3);
             if i>101 then
               break;
           end;

           k:= pos('<c>',ss);
           if (k>0) or (edit1.Tag=20) then
            begin
              if edit1.Tag=20 then
                total_count:= i
                else begin
                      delete(ss,1,k+2);
                      total_count:= strtoint(copy(ss,1,pos('</c>',ss)-1));
                     end;
              total_page:= total_count div 20;
              if total_count mod 20>0 then
               total_page:= total_page+1;
              label19.text:= '总记录'+inttostr(total_count)+' 总页数'+inttostr(total_page)+' 当前页'+edit2.Text;
            end;
         end else showmessage('网络上没有搜索到结果。');

   end else
       begin
         //从本地搜索
         with sqlitequery1 do
          begin
            close;
            sql.Clear;
            sql.Add('select id,gua_ming,gua_bianhao,shiyou from gua_table where '+
            'gua_ming like ''%'+edit1.Text+'%'' or shiyou like ''%'+edit1.Text+
            '%'' or duanyu like ''%'+ edit1.Text+'%'' or fankui like ''%'+ edit1.Text+'%'' order by id desc');
            open;
             while not eof do
                        begin
                        ss2:= intToHex(strtoint(fields[0].asstring)+suiji_id,1)+';'+fields[3].asstring+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring;
                         listbox1.Items.Add(ss2);
                          next;
                        end;
            close;
          end;

       end;

end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
   //如果是初始化时tag=1 ，那么不触发此事件
   if checkbox3.Tag=0 then
      set_value_db(checkbox3.IsChecked,'CheckBox3');
end;

procedure TForm1.zangshan_checkChange(Sender: TObject);
begin
   //如果是初始化时tag=1 ，那么不触发此事件
   if checkbox3.Tag=0 then
    begin
      zangshan_check.Tag:= 1; //tag为1的会在退出时保存一下
      is_zangshan:= zangshan_check.IsChecked;
      zhuanggua(G_date);
      hua(liuyao1);
    end;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
var ss1,ss2: string;
begin

  if (combobox3.ItemIndex<>0) and
     (combobox4.ItemIndex<>0) then
   begin
     edit8.Text:= '';
     ss1:= combobox3.Items.Strings[combobox3.Itemindex];
     ss2:= combobox4.Items.Strings[combobox4.Itemindex];
     if ss1=ss2 then
      edit8.Text:= get_bagong_shougua(ss1)
      else
        edit8.Text:= hecheng_guaming(ss1+ ss2);
     if (combobox5.ItemIndex<>0) and
     (combobox6.ItemIndex<>0) then
      begin
       //变卦合成
        ss1:= combobox5.Items.Strings[combobox5.Itemindex];
         ss2:= combobox6.Items.Strings[combobox6.Itemindex];
         if ss1=ss2 then
          edit8.Text:= edit8.Text+ ' 之 '+ get_bagong_shougua(ss1)
          else
            edit8.Text:= edit8.Text+ ' 之 '+hecheng_guaming(ss1+ ss2);
      end;

   end;
end;

procedure TForm1.DateEdit1Change(Sender: TObject);
var Year,Month,Day: word;
begin
  G_date:=Dateedit1.Date ;
  G_time:=Timeedit1.Time;
  label18.text:= get_tiangandizhi(g_date);
    DecodeDate(G_Date,Year,Month,Day);

  labeljieqinongli.text:= get_nongli(Year,Month,Day)+ ' '+get_jieqi(Year,Month,Day);

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
  sc: TStringColumn;
begin
  formatsettings.ShortDateFormat := 'yyyy-mm-dd';
  formatsettings.LongDateFormat  := 'yyyy-mm-dd';
  formatsettings.ShortTimeFormat := 'hh:nn:ss';
  formatsettings.LongTimeFormat  := 'hh:nn:ss';
  formatsettings.DateSeparator := '-';
  formatsettings.TimeSeparator := ':';

  dateedit1.Date:= date;
  timeedit1.Time:= time;

  Randomize;
  memo1.Visible:= false;
  layout8.Height:= 39;
   Suiji_ID:= Random(1000);

  for I := 0 to 8 do
    begin
      sc:=TStringColumn.Create(StringGrid1);
      sc.Parent := StringGrid1;
      sc.Width := StringGrid1.Width / 8-8;
    end;
    StringGrid1.RowCount:= 6;
    StringGrid1.TextSettings.HorzAlign:=TTextAlign(0);
     TThread.CreateAnonymousThread(
      procedure
      begin
        Sleep(0);
        TThread.Synchronize(nil,
          procedure
          begin
           start2;
          end);
      end).Start;

end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
   begin
    if zangshan_check.Tag=1 then
       begin
       set_value_db(zangshan_check.IsChecked,'CheckBox4'); //藏山卜保存
       zangshan_check.Tag:=0;
       end;
      {$IFDEF ANDROID}
       ReleaseWakeLock; //关闭屏幕常亮
      {$ENDIF}
    if checkbox3.IsChecked then
     begin
      key:= 0;
      {$IFDEF ANDROID}
       SetBack(TJIntent.JavaClass.ACTION_MAIN);
      {$ENDIF}
     end;
   end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   DateEdit1Change(sender);

end;

function TForm1.get_jieqi(y, m, d: integer): string;
var n,k: integer;
     AMonth: Integer;
   ADay: Integer;  AHour: Integer;  AMinitue: Integer;
begin
 result:= '';
 n:=GetJieQiFromDay(y,m,d);

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

function TForm1.get_nongli(y, m, d: integer): string;
var
 LunarMonth, LunarDay: Integer; IsLeapMonth: Boolean;
begin
  GetLunarMonthDayFromDay(y,m,d,LunarMonth, LunarDay,IsLeapMonth);
  result:= GetLunarMonthFromNumber(LunarMonth,false)+GetLunarDayFromNumber(LunarDay);
  if IsLeapMonth then
   result:=  '(闰)'+result;

end;

function TForm1.get_shensha: string;
var r,y: string;
    yin,yang: string;
  I: Integer;
  guashen: string;
begin
  result:= '';
  if length(label20.Text)<10 then
   begin
    result:= '请先起卦或载入卦';
    exit;
   end;
   r:= label20.Text[10];
   y:= label20.Text[6];

   if (r='申') or (r='子') or (r='辰') then
    result:= '日上桃花：酉 日上驿马：寅';
   if (r='寅') or (r='午') or (r='戌') then
    result:= '日上桃花：卯 日上驿马：申';
   if (r='巳') or (r='酉') or (r='丑') then
    result:= '日上桃花：午 日上驿马：亥';
   if (r='亥') or (r='卯') or (r='未') then
    result:= '日上桃花：子 日上驿马：巳';

    if (y='申') or (y='子') or (y='辰') then
    result:=result+#13#10+ '月上桃花：酉 月上驿马：寅';
   if (y='寅') or (y='午') or (y='戌') then
    result:=result+#13#10+ '月上桃花：卯 月上驿马：申';
   if (y='巳') or (y='酉') or (y='丑') then
    result:=result+#13#10+ '月上桃花：午 月上驿马：亥';
   if (y='亥') or (y='卯') or (y='未') then
    result:=result+#13#10+ '月上桃花：子 月上驿马：巳';

    yin:= '午未申酉戌亥';
    yang:= '子丑寅卯辰巳';

    for I := 5 downto 0 do
      begin
       if liuyao1[i].shiying='世' then
        begin
          if (liuyao1[i].yaogua=1) or (liuyao1[i].yaogua=3) then
             guashen:= yang[6-i]
             else
              guashen:= yin[6-i];
         break;
        end;
      end;

     result:=result+#13#10+ '卦身在'+ guashen;
     result:=result+#13#10+ '床帐在'+ shengdizhi(guashen[1])+
             ' 香闺在'+ kekedizhi(guashen[1]);
end;

function TForm1.get_tiangandizhi(dt: tdate): string;
 var Y,M,D:Word;
     hh,mm,ss,ms,mm2,hh2: word;
     shi,ss2: string;
begin

   DeCodeDate(dt,Y,M,D);
   decodetime(g_time,hh,mm,ss,ms);

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
     yue+'月 '+ri+'日'+ xunkong2(ri)+ shi+'时';
    // shi+ '时 刻:'+ get_shifen(shi,g_time)
    // +'）';


end;

procedure TForm1.hua(const y: array of tyao);
 var
  I,j: integer;
  ss,tg_zhu,tg_fu,tg_bian: string;
  bian,shuping: boolean;
  Year,Month,Day: word;
   function jianhua_yaohua(yang: boolean;bian: integer): string;
    begin
      if shuping then
       begin
        if yang then
         begin
          if bian=3 then
           result:= 'o'
           else
           result:= '•';
         end  else begin
                     if bian=4 then
                     result:= 'X'
                     else
                      result:= '‥';
                   end;
       end else begin
                  if yang then
                   result:= '━━━'
                   else
                    result:= '━  ━';
                end;
    end;

    function jianhua_liushen(const s: string): string;
     begin
       if shuping then
        begin
         if (s='玄武') or (s='勾陈') then
           result:= s[1]
           else result:= s[2];
        end else result:=s;
     end;

    function jianhua_liuqin(const s: string): string;
     begin
     result:= s;
       if shuping then
        begin
         if (pos('子孙',s)>0) or (pos('妻财',s)>0) then
           delete(result,1,1)
           else delete(result,2,1);
        end;
     end;

begin
 bian:= false;
 shuping:= is_shuping;
  if liuyao1[0].guaming='' then
     exit;

     label26.Visible:= is_zangshan;
  for i := 0 to 5 do
    if y[i].yaogua>2 then
      bian:= true;

  if shuping then
   label27.Text:= ''
   else begin
         DecodeDate(G_Date,Year,Month,Day);
         label27.Text:= datetostr(g_date)+' '+ timetostr(g_time)+' '+
         get_nongli(Year,Month,Day)+ ' '+get_jieqi(Year,Month,Day);
        end;
  for i := 0 to 8 do
   begin
     for j := 0 to 5 do
     StringGrid1.Cells[i, j]:= '';

     StringGrid1.Columns[i].Width:= StringGrid1.Width * liekuan[i]-2;
   end;

       for I := 0 to 5 do
         begin

          StringGrid1.Cells[0, i]:= jianhua_liushen(y[i].liushou);

              ss:= y[i].fushen;

              if y[i].fushen<>'' then
              begin
                StringGrid1.Cells[1, i]:=jianhua_liuqin(copy(y[i].fushen,1,4));
              // TextOut(115+ tiangan_kuan*tg_xishu,64+i*hanggao,copy(y[i].fushen,5,4));
              end;

            StringGrid1.Cells[2, i]:= jianhua_liuqin(y[i].liuqin) + y[i].nazhi;


            StringGrid1.Cells[4, i]:= y[i].shiying;

           if bian then
              StringGrid1.Cells[8, i]:=liuyao2[i].shiying;





           if y[i].bianyao<>'' then
           begin
             StringGrid1.Cells[6, i]:= jianhua_liuqin(copy(y[i].bianyao,1,4)) + copy(y[i].bianyao,5,4);

           end;


            case y[i].yaogua of
              1: begin
                 StringGrid1.Cells[3, i]:= jianhua_yaohua(true,1);
                 if bian then
                   StringGrid1.Cells[7, i]:= jianhua_yaohua(true,1);
              end;
              2:begin
                 StringGrid1.Cells[3, i]:= jianhua_yaohua(false,2);
                 if bian then
                   StringGrid1.Cells[7, i]:= jianhua_yaohua(false,2);
              end;
              3: begin
                  StringGrid1.Cells[3, i]:= jianhua_yaohua(true,3);
                 if bian then
                   StringGrid1.Cells[7, i]:= jianhua_yaohua(false,3);
               StringGrid1.Cells[5, i]:= 'o->';
                 end;
              4: begin
                  StringGrid1.Cells[3, i]:= jianhua_yaohua(false,4);
                 if bian then
                   StringGrid1.Cells[7, i]:= jianhua_yaohua(true,4);
               StringGrid1.Cells[5, i]:= 'x->';
                 end;
            end;

            //横屏时显示天干，竖屏时删掉几个字
             if shuping=false then
              begin
                if is_zangshan then
                  begin
                    tg_zhu:= changshan_tiangan(liuyao1[0].guaming); //取得藏山卜的天干
                    if bian then
                     tg_bian:= changshan_tiangan(liuyao2[0].guaming); //取得藏山卜的天干
                    if 伏神卦名<>'' then
                     tg_fu:= changshan_tiangan(伏神卦名);
                  end;

                 if i<3 then
                  begin      //显示天干 cells[1 表示伏神，2，主卦，4 变卦
                      ss:= StringGrid1.Cells[1, i];
                       if ss<>'' then
                        begin
                         if is_zangshan then //藏山卜
                            insert(tg_fu[i+1], ss,3)
                            else
                             if tiangan1[0]<>' ' then
                               insert(tiangan1[0], ss,3);

                            StringGrid1.Cells[1, i]:= ss;
                         end;
                   ss:= StringGrid1.Cells[2, i];
                     if ss<>'' then
                     begin
                       if is_zangshan then //藏山卜
                         insert(tg_zhu[i+1], ss,3)
                          else
                          if tiangan1[2]<>' ' then
                            insert(tiangan1[2],ss,3);

                          StringGrid1.Cells[2, i]:= ss;

                     end;
                    ss:= StringGrid1.Cells[6, i];
                     if ss<>'' then
                     begin
                       if is_zangshan then //藏山卜
                        insert(tg_bian[i+1], ss,3)
                          else
                         if tiangan1[4]<>' ' then
                          insert(tiangan1[4],ss,3);

                          StringGrid1.Cells[6, i]:= ss;
                     end;
                  end;
                 if i>=3 then
                  begin
                    ss:= StringGrid1.Cells[1, i];
                     if ss<>'' then
                     begin
                       if is_zangshan then //藏山卜
                            insert(tg_fu[i+1], ss,3)
                            else
                           if tiangan1[1]<>' ' then
                            insert(tiangan1[1],ss,3);

                          StringGrid1.Cells[1, i]:= ss;
                     end;
                   ss:= StringGrid1.Cells[2, i];
                     if ss<>'' then
                     begin
                       if is_zangshan then //藏山卜
                         insert(tg_zhu[i+1], ss,3)
                         else
                        if tiangan1[3]<>' ' then
                            insert(tiangan1[3],ss,3);

                          StringGrid1.Cells[2, i]:= ss;
                     end;
                   ss:= StringGrid1.Cells[6, i];
                     if ss<>'' then
                     begin
                       if is_zangshan then //藏山卜
                        insert(tg_bian[i+1], ss,3)
                          else
                          if tiangan1[5]<>' ' then
                           insert(tiangan1[5],ss,3);

                          StringGrid1.Cells[6, i]:= ss;
                     end;
                  end;   //天干显示完毕
              end;




         end; //end for i


        label22.Text:= 事由;


end;

function TForm1.is_shuping: boolean;
begin
  if form1.Width> form1.Height then
  result:= false
  else result:= true;
end;

function IdDecode(const s: string): string;
begin
   //Suiji_ID
   result:= inttostr(strtoint('$'+s)- form1.Suiji_ID);
end;

procedure TForm1.Label16Tap(Sender: TObject; const Point: TPointF);
begin
  memo3.Enabled:= true;
end;

procedure TForm1.Layout7Resized(Sender: TObject);
begin
  hua(liuyao1);
end;

procedure TForm1.ListBox1ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
var ss: string;
   b: boolean;
begin
  if listbox1.ItemIndex=-1 then
     exit;
 //memo1.Lines.Add('开始'+timetostr(time));  //打印时间

  ss:= listbox1.Items[listbox1.ItemIndex];
  if pos('(',ss)=1 then
   begin
   delete(ss,1, pos(')',ss));
   b:= true;
   end else b:= false;

          ss:= copy(ss,1,pos(';',ss)-1);
          ss:= IdDecode(ss);

  if (b=false) and (is_online=true) then
   begin
     //从网络载入卦
     根据id载入卦网络(strtoint(ss));
   end else
       begin
         //从本地获卦

         根据id载入卦本地(strtoint(ss));
       end;
 // memo1.Lines.Add('显示卦结束'+timetostr(time));  //打印时间
  memo2.Enabled:= false;
  memo3.Enabled:= false;
   if b then
    begin
    button6.Enabled:= true;
    button7.Enabled:= true;
    button8.Enabled:= true;
    end;
 TabControl1.TabIndex:= 1;
  //memo1.Lines.Add('切换页结束'+timetostr(time));  //打印时间

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

end;

procedure TForm1.save_gua;
var Year, Month, Day: word;
  str1: Tstringlist;
  ss,ben: string;
  b: boolean;
  k: integer;
begin
//保存卦到本地或者服务器
 ss:= '';
 b:= true;


  shiyou:= 事由;
  gua_weiyi_bianhao_g:= qude_gua_bianhao;



  DecodeDate(g_date, Year, Month, Day);
  save_gua_ming:= label21.text;
  save_gua_bianhao:= gua_weiyi_bianhao_g;
  save_lei_id:= inttostr(combobox2.itemindex+1);
  save_nian:= inttostr(year);
  save_yue:= inttostr(Month);
  save_ri:= inttostr(Day);
   if combobox1.itemindex>=0 then
     save_xingbie:=combobox1.Items.Strings[combobox1.Itemindex];
  save_chusheng:= edit3.Text;
  save_shiyou:=edit4.Text;

  if checkbox1.IsChecked then
    begin
     // checkbox3.Checked:= false;
     // checkbox4.Checked:= false;
      exit; //本次不保存
    end;

   if is_online then
  begin
    //保存卦到网络
    str1:= Tstringlist.Create;
    str1.Add('nm='+ aes_encrypt(user_name));
    str1.Add('save_gua_ming='+ aes_encrypt(label21.text));
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
    if pos('ok',ss)=1 then
     begin
      k:= pos(';',ss);
     if k >0 then
        shuzi_id:= copy(ss,3,k-3);
     end else begin
                b:= false;
                showmessage('网络保存失败，错误信息：'+ss +' 。由于使用的香港服务器，有时网络不稳定，可以后续写点断语反馈后重新保存即可。一般过一两分钟网络即可恢复。');
              end;
  end;

  if b and is_online then
    ben:= '0'
    else begin
     ben:= '1';
     CheckBox2.isChecked:= true;
    end;
 //保存卦到本地
  sqliteConnection1.ExecSQL('insert into gua_table(gua_ming,gua_bianhao,lei_id,nian,yue,ri,'+
                   'xingbie,chusheng,shiyou,ben) values('''+
                   label21.text+''','''+
                   gua_weiyi_bianhao_g+''','+save_lei_id+ ','+
                   inttostr(year)+','+
                   inttostr(Month)+','+
                   inttostr(Day)+','''+
                   combobox1.Items.Strings[combobox1.Itemindex]+''','''+
                   edit2.Text+''','''+
                   edit3.Text+''','+ ben+')');

   //本地存储的卦id
    gua_id_g:= sqliteConnection1.ExecSQLScalar('SELECT last_insert_rowid() from gua_table');

     memo2.Lines.Clear;
     memo2.Enabled:= false;
     memo3.Lines.Clear;
     memo3.Enabled:= false;
     button6.Enabled:= false;
     button7.Enabled:= false;
     button8.Enabled:= false;

end;

procedure TForm1.set_value_db(b: boolean; n: string);
var ss: string;
begin
   if b then
    ss:='1'
    else
      ss:= '0';

    if SqliteConnection1.ExecSQLScalar('select count(*) from liuyao_set where name="'+n +'"')>0 then
     SqliteConnection1.ExecSQL('update liuyao_set set value_int='+ss+' where name="'+n +'"')
     else
     SqliteConnection1.ExecSQL('insert into liuyao_set(name,value_int) values("'+n +'",'+ss+')');

end;

function TForm1.shifou_denglu: boolean;
var Year,Month,Day: word;
begin
   //读取一些基础设置
    checkbox3.Tag:=1; //读取设置时不触发保存事件
   Year:= SqliteConnection1.ExecSQLScalar('select value_int from liuyao_set where name="CheckBox3"');
   checkbox3.IsChecked:=(
   Year=1);
   is_zangshan:=(
   SqliteConnection1.ExecSQLScalar('select value_int from liuyao_set where name="CheckBox4"')=1);
   zangshan_check.IsChecked:= is_zangshan;
    checkbox3.Tag:=0;
  //读取数据库看是否登录成功
 result:= false;
 user_name:= '';
 is_Online:= false;
 speedbutton23.Enabled:= false;
 speedbutton10.Enabled:= false;

  //读取数据库，当天免登陆
  with sqliteQuery1 do
       begin
       close;
        SQL.Clear;
        sql.Add('select user_nm,yidenglu from user_table where yidenglu>0');
        open;
          if not eof then
           begin
            if length(fields[0].AsString)=32 then
              begin
               //等于32位表示已经加密，否则直接重新登录
               DecodeDate(Date,Year,Month,Day);
               if Day=fields[1].AsInteger then
                 begin
                   user_name:= aes_decrypt(fields[0].AsString);
                   is_Online:= true;
                   speedbutton23.Enabled:= true;
                   speedbutton10.Enabled:= true;
                   Label2.text:= '登录状态：已登录';
                   Label3.text:= '用户名：'+ user_name;
                   result:= true;
                 end;
              end;
           end;

         close;
       end;


end;

procedure TForm1.ShowShareSheetAction1BeforeExecute(Sender: TObject);
var b: tbitmap;
begin
   b:= makescalescreenshot(form1);
  // b:= makescalescreenshot(form1);
  ShowShareSheetAction1.Bitmap.Assign(b);
  b.DisposeOf;
end;

procedure TForm1.show_guaming;
var i: integer;
   ss: string;
   b: boolean;
begin
ss:= '';
b:= false;

  for i := 0 to 5 do
    begin
        case liuyao1[i].yaogua of
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

     end; //end for i


        label21.text:= get_guaming(strtoint(ss));


    if b then
    begin
      label21.text:= label21.text+' 之 ';
      ss:= '';
      for i := 0 to 5 do
        begin

            case liuyao1[i].yaogua of
              1:ss:= ss+'1';
              2:ss:= ss+'2';
              3:
                  ss:= ss+'2';

              4:
                 ss:= ss+'1';
            end;
         end; //end for i

            label21.text:=label21.text+ get_guaming(strtoint(ss));

    end;
end;

procedure TForm1.show_gua_by_id(id: string);
var ss,ss_e: string;
     i: integer;
begin
  if length(id)< 14 then
   begin
     showmessage('六爻ID必须是14位，长度不对');
     exit;
   end;

  ss_e:= id;
  ss:= copy(ss_e,1,8);
  insert('-',ss,5);
  insert('-',ss,8);
   G_date:= strtodate(ss);

   ss:= copy(ss_e,9,6);

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

     label20.text:= get_tiangandizhi(G_date);

     zhuanggua(G_date);

end;

function TForm1.shuizhiqigua(danShu: boolean; a,b: string): string;
var ss1,ss2: string;
    shang,xia,dong : integer;
    I: Integer;
begin
  result:= '';
  shang:= 0;
  xia:= 0;
  dong:= 0;

  if danShu then  //单数起卦
   begin
    if a='' then
       begin
         showmessage('请输入1个或者多个数字。');
         exit;
       end;
   ss1:= a;
    case length(ss1) of
      1: begin
         shang:= strtoint(ss1);
          xia:= shang;
          result:=get_shuzigua(shang,xia,-1);
          end;
      2: begin
           shang:= strtoint(ss1[1]);
          xia:= strtoint(ss1[2]);
          dong:= shang+ xia;
          result:=get_shuzigua(shang,xia,dong);

        end;
      3: begin
          shang:= strtoint(ss1[1]);
          xia:= strtoint(ss1[2])+strtoint(ss1[3]);
          dong:= shang+ xia;
          result:=get_shuzigua(shang,xia,dong);
         end;
      4: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2]);
          xia:=  strtoint(ss1[3])+ strtoint(ss1[4]);
          dong:= shang+ xia;
          result:=get_shuzigua(shang,xia,dong);
         end;
      5: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2]);
          xia:=  strtoint(ss1[3])+ strtoint(ss1[4]);
          dong:= shang+ xia+strtoint(ss1[5]);
          result:=get_shuzigua(shang,xia,dong);
         end;
      6:  begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2]);
          xia:=  strtoint(ss1[3])+ strtoint(ss1[4])+strtoint(ss1[5]);
          dong:= shang+ xia+ strtoint(ss1[6]);
          result:=get_shuzigua(shang,xia,dong);
         end;
      7: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3]);
          xia:=  strtoint(ss1[4])+ strtoint(ss1[5])+strtoint(ss1[6]);
          dong:= shang+ xia+strtoint(ss1[7]);
          result:=get_shuzigua(shang,xia,dong);
         end;
      8: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3]);
          xia:=  strtoint(ss1[4])+ strtoint(ss1[5])+strtoint(ss1[6]);
          dong:= shang+ xia+strtoint(ss1[7])+strtoint(ss1[8]);
          result:=get_shuzigua(shang,xia,dong);
         end;
      9: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4]);
          xia:=  strtoint(ss1[5])+ strtoint(ss1[6])+strtoint(ss1[7])+strtoint(ss1[8]);
          dong:= shang+ xia+strtoint(ss1[9]);
          result:=get_shuzigua(shang,xia,dong);
         end;
      10: begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4]);
          xia:=  strtoint(ss1[5])+ strtoint(ss1[6])+strtoint(ss1[7])+strtoint(ss1[8]);
          dong:= shang+ xia+strtoint(ss1[9])+strtoint(ss1[10]);
          result:=get_shuzigua(shang,xia,dong);
         end;
      11:begin
          shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4])+strtoint(ss1[5]);
          xia:=  strtoint(ss1[6])+ strtoint(ss1[7])+strtoint(ss1[8])+strtoint(ss1[9])+strtoint(ss1[10]);
          dong:= shang+ xia+strtoint(ss1[11]);
          result:=get_shuzigua(shang,xia,dong);
         end;
       else
        shang:= strtoint(ss1[1])+ strtoint(ss1[2])+strtoint(ss1[3])+strtoint(ss1[4])+strtoint(ss1[5]);
          xia:=  strtoint(ss1[6])+ strtoint(ss1[7])+strtoint(ss1[8])+strtoint(ss1[9])+strtoint(ss1[10]);
          dong:= shang+ xia+strtoint(ss1[11])+strtoint(ss1[12]);
          result:=get_shuzigua(shang,xia,dong);
    end;
   end;

    if danshu=false then
      begin
       if (a= '') or (b='') then
        begin
         showmessage('请在两个输入框内输入两组数字。');
         exit;
        end;
        ss1:= a;
        ss2:= b;
        for I := 1 to length(ss1) do
           shang:= shang+ strtoint(ss1[i]);
        for I := 1 to length(ss2) do
           xia:= xia+ strtoint(ss2[i]);
        dong:= shang+ xia;
        result:=get_shuzigua(shang,xia,dong);
      end;

end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  form2.TabControl1.TabIndex:= 4;
  form2.Show;
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
   SpeedButton_Click(sender);
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
  TabControl2.TabIndex:=1;
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
    TabControl2.TabIndex:=2;
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
     TabControl2.TabIndex:=3;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  TabControl1.TabIndex:= 0;

end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
        TabControl2.TabIndex:=4;
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
     TabControl2.TabIndex:=5;
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
  if SpeedButton22.Tag=0 then
   begin
  layout8.Height:= 368;
  memo1.Lines.Clear;
  memo1.Visible:= true;
  SpeedButton22.Text:= '隐藏神煞焦氏易林词和爻辞';
   SpeedButton22.Tag:=1;
    //开始显示
    memo1.Lines.Add('焦氏易：'+ get_jiaochi(label21.Text));
    memo1.Lines.Add(' ');
    memo1.Lines.Add(get_shensha);
    memo1.Lines.Add(' ');
    memo1.Lines.Add(get_yao_chi(liuyao1[0].guaming ));

   end else begin
     memo1.Visible:= false;
    layout8.Height:= 39;
     SpeedButton22.Text:= '显示神煞焦氏易林词和爻辞';
     SpeedButton22.Tag:=0;
   end;
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin

        SqliteConnection1.ExecSQL('update user_table set yidenglu=0 where user_nm="'+ aes_encrypt(user_name)+'"');


   user_name:= '';
 is_Online:= false;
 speedbutton23.Enabled:= false;
 speedbutton10.Enabled:= false;
 label2.Text:= '登录状态：未登录';
 label3.Text:= '账号：未登录';
end;

procedure TForm1.SpeedButton25Click(Sender: TObject);
begin
  edit1.Text:= '';
   edit1.Tag:= 20;
  edit2.Text:= '1';
   cha(true);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  TabControl1.TabIndex:= 2;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  edit2.Text:= '1';
   edit1.Tag:= 0;

   cha(false);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
   edit1.Text:= '';
   edit1.Tag:= 0;
  edit2.Text:= '1';
   cha(true);
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  edit2.Text:= '1';
  cha(false);
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
 if strtoint(edit2.Text)>1 then
 begin
  edit2.Text:= inttostr(strtoint(edit2.Text)-1);
  cha(false);
 end else showmessage('已经到第一页');
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
 if strtoint(edit2.Text)< total_page then
 begin
  edit2.Text:= inttostr(strtoint(edit2.Text)+1);
  cha(false);
 end else showmessage('已经到最后一页');
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
   edit2.Text:= inttostr(total_page);
  cha(false);
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  cha(false);
end;

procedure TForm1.SpeedButton_Click(Sender: TObject);
var ss: string;
begin
   case tspeedbutton(sender).Tag of
     0: begin
          tspeedbutton(sender).Tag:= 1;
          tspeedbutton(sender).Text:= '━━━'
        end;
     1: begin
          tspeedbutton(sender).Tag:= 2;
          tspeedbutton(sender).Text:= '━  ━'
        end;
     2: begin
          tspeedbutton(sender).Tag:= 3;
          tspeedbutton(sender).Text:= 'o'
        end;
     3: begin
          tspeedbutton(sender).Tag:= 4;
          tspeedbutton(sender).Text:= 'X'
        end;
     4: begin
          tspeedbutton(sender).Tag:= 1;
          tspeedbutton(sender).Text:= '━━━'
        end;
   end;

   ss:= inttostr( speedbutton11.Tag)+
        inttostr( speedbutton12.Tag)+
        inttostr( speedbutton13.Tag)+
        inttostr( speedbutton14.Tag)+
        inttostr( speedbutton15.Tag)+
        inttostr( speedbutton16.Tag);
    label9.Text:=  get_guaming_quan(ss);
end;

procedure TForm1.SqliteConnection1AfterConnect(Sender: TObject);
var i: integer;
begin

 SqliteConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS liuyao_set (id INTEGER PRIMARY KEY, name TEXT, value_int INTEGER, value_text TEXT)');

 i:= SqliteConnection1.ExecSQLScalar('select count(*) from liuyao_set');


  if i=0 then
   begin
     SqliteConnection1.ExecSQL('insert into liuyao_set(name) values("db_set")');
      SqliteConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS user_table (user_nm TEXT,shouji TEXT,yidenglu INTEGER)');
      SqliteConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS gua_table ('+
       'id INTEGER PRIMARY KEY AUTOINCREMENT,  gua_ming varchar(32),  gua_bianhao varchar(32), '+
       'lei_id int(11),  nian int(11) NOT NULL,  yue int(11) NOT NULL,  ri int(11) NOT NULL,'+
       'shijian timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,  xingbie varchar(4), '+
       'chusheng int(11) NOT NULL DEFAULT 0,  shiyou varchar(128),  gongxiang int(11) NOT NULL DEFAULT 0,'+
       'duanyu text, fankui text,  gengxin timestamp NOT NULL DEFAULT 0,ben int(11) NOT NULL DEFAULT 0 )');
     SqliteConnection1.ExecSQL('CREATE INDEX index_bianhao ON gua_table (gua_bianhao)');
   end;


end;

procedure TForm1.SqliteConnection1BeforeConnect(Sender: TObject);
begin
   SqliteConnection1.Params.Values['Database'] :=
    TPath.GetPublicPath + PathDelim + 'DFliuyao.s3db';

   // memo2.lines.Text:= (TPath.GetPublicPath);
end;

procedure TForm1.start2;
begin
  SqliteConnection1.Connected:= true;
   try
  IdDNSResolver1.Resolve('gua.liuyao2.cn',nil,1);
   if IdDNSResolver1.QueryResult.Count>0 then
    http_host:= TARecord(IdDNSResolver1.QueryResult.Items[0]).IPAddress
    else http_host:= 'gua.finer2.com';
    except
      http_host:= 'gua.finer2.com';
    end;

  if shifou_denglu= false then
    form2.Show;
end;

procedure TForm1.StringGrid1DrawColumnCell(Sender: TObject;
  const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
  const Row: Integer; const Value: TValue; const State: TGridDrawStates);
  var ss: string;
begin

    if Value.IsEmpty then
       ss:= ''
       else
         ss:= Value.ToString;

   Canvas.Fill.Color := TAlphaColors.Black;
   Canvas.FillText(Bounds, ss, False, 100, [TFillTextFlag.RightToLeft],
         TTextAlign.Center, TTextAlign.Center);
end;

procedure TForm1.TabItem1Tap(Sender: TObject; const Point: TPointF);
begin
  dateedit1.Date:= date;
  timeedit1.Time:= time;
  {$IFDEF ANDROID}
  ReleaseWakeLock; //关闭屏幕常亮
  {$ENDIF}

end;

procedure TForm1.TabItem2Tap(Sender: TObject; const Point: TPointF);
begin

   {$IFDEF ANDROID}
   AcquireWakeLock; //屏幕常亮
  {$ENDIF}
end;

procedure TForm1.TabItem3Tap(Sender: TObject; const Point: TPointF);
begin
  {$IFDEF ANDROID}
  ReleaseWakeLock; //关闭屏幕常亮
  {$ENDIF}
end;

procedure TForm1.TabItem4Tap(Sender: TObject; const Point: TPointF);
begin
 {$IFDEF ANDROID}
  ReleaseWakeLock; //关闭屏幕常亮
  {$ENDIF}
end;

procedure TForm1.TabItem7Tap(Sender: TObject; const Point: TPointF);
begin
   button9click(sender);
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

procedure TForm1.zhuangfushen;
var str: Tstringlist;
  I: Integer;
  ss: string;
  yy: array[0..5] of tyao;
  k: integer;
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
           ss:= get_guagong(liuyao1[0].guaming);
           if ss<>'' then
             ss:= ss[2]; //取宫名

             //得到宫内卦名
             ss:= get_bagong_shougua(ss);

                       //填充伏神的天干，flag=1
                       tian_tiangan(ss,1);

                   fillchar(yy,sizeof(yy),#0);
                   yy[0].guaming:= ss;
                   伏神卦名:= ss;
                     zhuangliuqinnajia(yy); //填充
                     if is_zangshan then
                        begin
                         for k := 0 to 5 do
                            yy[k].liuqin:=  zhuangbianyaoliuqin(yy[k].nazhi);
                        end;

                     for k := 5 downto 0 do
                       if yy[k].liuqin=str.Strings[i] then
                          begin
                             liuyao1[k].fushen:= yy[k].liuqin+yy[k].nazhi;
                            break; //跳出k循环
                          end;

         end;
     end;
   str.Free;

end;


function getNameByyaofu(const y: array of tyao): string;
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

    result:= get_guaming(strtoint(result));
end;

function get_guihun_youhun(const m: string): STRING;
begin
result:= '';
if form1.is_zangshan then
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

function TForm1.zhuangbianyaoliuqin(s: string): string;
var c: char;
begin
   if is_zangshan then
  c:=取得主卦兄弟爻属性
  else
   c:= label21.text[2];


  if c='乾' then
     c:= '金';
   if c='兑' then
     c:= '金';
   if c='离' then
     c:= '火';
   if c='震' then
     c:= '木';
   if c='巽' then
     c:= '木';
   if c='坎' then
     c:= '水';
   if c='艮' then
     c:= '土';
   if c='坤' then
     c:= '土';

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

procedure TForm1.zhuanggua(d: tdate);
var ss: string;
  i: Integer;
  b: boolean;

begin

   fillchar(liuyao2,sizeof(liuyao2),#0); //初始化变爻

   for i := 0 to 5 do
    begin
     tiangan1[i]:=' ';
     liuyao1[i].fushen:= '';
    end;

   if liuyao1[0].yaogua=0 then
       exit;

   //取得主卦名
   liuyao1[0].guaming:= getNameByyaofu(liuyao1);
   label21.text:= get_guagong(liuyao1[0].guaming)+ liuyao1[0].guaming+get_guihun_youhun(liuyao1[0].guaming);

     //填充主卦的天干，flag=2
     tian_tiangan(liuyao1[0].guaming,2);

   //装六兽
      if ri<>'' then
        zhuangliushou(ri[1]);

   //装纳甲
    zhuangliuqinnajia(liuyao1);


    //判断是否有变爻

    b:= false; //判断是否变爻
    for i := 0 to 5 do
     begin

       if liuyao1[i].yaogua=3 then
        begin
         liuyao2[i].yaogua:= 2;
         b:= true;
        end  else
          if liuyao1[i].yaogua=4 then
           begin
             liuyao2[i].yaogua:= 1;
             b:= true;
            end else
              liuyao2[i].yaogua:= liuyao1[i].yaogua;
     end; // end for i

     if b then
     begin
       //有变爻
       liuyao2[0].guaming:= getNameByyaofu(liuyao2);
       label21.text:= label21.text+ ' 之 '+ liuyao2[0].guaming+get_guihun_youhun(liuyao2[0].guaming);
       zhuangliuqinnajia(liuyao2);

           //填充变卦的天干，flag=3
            tian_tiangan(liuyao2[0].guaming,3);

         for i := 0 to 5 do
           begin
           // liuyao2[i].liushou:= liuyao1[i].liushou;  装六兽时候一并装好了
            liuyao2[i].liuqin:= zhuangbianyaoliuqin(liuyao2[i].nazhi);

            // if liuyao1[i].yaogua>=3 then
                liuyao1[i].bianyao:= liuyao2[i].liuqin+ liuyao2[i].nazhi
             //   else
              //    liuyao1[i].bianyao:='';

           end; // end for i

     end;

     //装伏神
      zhuangfushen;

     //画卦像
     hua(liuyao1);

end;

procedure TForm1.zhuangliuqinnajia(var y: array of tyao);
var str: Tstringlist;
  I,j: Integer;
  ss: string;
begin
j:= 0;
    str:= Tstringlist.Create;
    if is_zangshan then
      str.DelimitedText:= get_najia_zhangshan(y[0].guaming)
      else
       str.DelimitedText:= get_najia(y[0].guaming);

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

function TForm1.保存断语和反馈(b: integer): boolean;
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

 if is_online=true then
   begin
    //保存断语到网络。需要先检查卦是否存在，如果不存在先添加卦
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
      str1.Add('save_duanyu='+aes_encrypt(memo2.Lines.Text));
      //showmessage(str1.Values['save_duanyu']);
      str1.Add('save_fankui='+aes_encrypt(memo3.Lines.Text));
     str1.Add('save_b='+inttostr(b));
    ss:= form1.post_http('http://'+http_host+'/baiduliuyao/saveduanyufankui.php',str1);
   str1.Free;
    if pos('ok',ss)=0 then
     begin
     result:= false;
     CheckBox2.isChecked:= true;
     showmessage('网络保存失败，错误信息：'+ss);
     end;

   end;

   if result and (is_online=true) then
    ben:= '0'
    else
     ben:= '1';

   //在本地也保存断语和反馈，也需先检查卦是否存在，不存在先添加卦
   if SqliteConnection1.ExecSQLScalar('select count(*) from gua_table where gua_bianhao='''+gua_weiyi_bianhao_g+'''')=0 then
   begin
     //添加一条记录
     SqliteConnection1.ExecSQL('insert into gua_table(gua_ming,gua_bianhao,lei_id,nian,yue,ri,'+
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

   if (b=1) or (b=3) then
    SqliteConnection1.ExecSQL('update gua_table set ben='+ben+',duanyu='''+memo2.Lines.Text+''' where gua_bianhao='''+gua_weiyi_bianhao_g+'''');
    if b>1 then
    SqliteConnection1.ExecSQL('update gua_table set ben='+ben+',fankui='''+memo3.Lines.Text+''' where gua_bianhao='''+gua_weiyi_bianhao_g+'''');


end;
function kekewo(s: char): char;
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

function shengwo(s: char): char;
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

function TForm1.根据id载入卦本地(id: integer): boolean;
var ss: string;
begin
  //从本地载入卦
  //save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou
  ss:= '';
  gua_id_g:= id;
  shuzi_id:= '0'; //保存断语和反馈时用到这个id,本地卦这个值为空
  with sqlitequery1 do
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
          memo2.Lines.Text:=  fieldbyname('duanyu').AsString;
           memo3.Lines.Text:=  fieldbyname('fankui').AsString;
           button6.Enabled:= false;
           button7.Enabled:= false;
           button8.Enabled:= false;
            ss:= '';
           if (save_xingbie<>'未知') and (save_xingbie<>'') then
              ss:= '性别:'+save_xingbie+' ';
           if save_chusheng<>'' then
              ss:= '生日:'+save_chusheng+' ';
          事由:= ss +save_shiyou;

           show_gua_by_id(save_gua_bianhao); //显示卦

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

       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/loadgua.php',str1);
 // memo1.Lines.Add('读取结束'+timetostr(time));  //打印时间
        str1.Free;
          if ss='neterror' then
        begin
          showmessage('网络错误，由于使用的香港服务器，有时网络不稳定，请稍后重试,一般过一两分钟即可恢复。');
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
            memo2.Lines.Text:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);
            memo3.Lines.Text:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);

            gua_weiyi_bianhao_g:= save_gua_bianhao;

             button6.Enabled:= false;
           button7.Enabled:= false;
           button8.Enabled:= false;

           ss:= '';
           if (save_xingbie<>'未知') and (save_xingbie<>'') then
              ss:= '性别:'+save_xingbie+' ';
           if save_chusheng<>'0' then
              ss:= '生日:'+save_chusheng+' ';
            事由:= ss+save_shiyou;
           // memo1.Lines.Add('开始显示卦'+timetostr(time));  //打印时间
           show_gua_by_id(save_gua_bianhao); //显示卦
            // memo1.Lines.Add('显示卦结束'+timetostr(time));  //打印时间
         end else showmessage('网络上没有搜索到结果。');




end;

end.
