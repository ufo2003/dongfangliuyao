unit Unit1;

//�����д ������ 2018-7-14
//���κ����������ϵ 1145975039@qq.com ���� ufo2003@126.com

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
  lius: array[0..5] of string=('����','��ȸ','����','����','�׻�','����');
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

    //function get_tiangandizhi(dt: tdate): string; //�����ɵ�֧����

    function getNameByyaofu(const y: array of tyao): string; //����س��ȡ������
    procedure zhuangliushou(tg: char); //zhuang����
    procedure liushou_base(tg:string);
    procedure zhuangliuqinnajia(var y: array of tyao); //����������¼������װ�����ɼ�
    procedure hua(const y: array of tyao; d: tdate); //��������
    procedure zhuangfushen;  //װ����
    function fenxi(k,k2: integer): string;
    function xunkong(const s: string; d: tdate): string;
    function xunkong2(const s: string): string;
    function xunkong_shi(const s: string; d: tdate): string; //��ʱ�������Ѯ��
    function chukong(d: tdate): string; //���س���ʱ��
    function jintui(const a,b: string): string; //��س��������
    function by_shengke(const a,b: string): string;
    procedure arrow(a1,a2,b1,b2 : integer; c: tcolor); //����ͷ
    function shanhe: string; //�����Ƿ����Ͼ�
    function cong(s: char): string; //���س������
    function hehe(s: char): string;  //���غϵ�����
    function hedaicong(s: char): string;
    function banheDaiHe(s: char): string;
    function andong(i: integer): boolean; //�Ƿ񰵶�
    function wangxiang(const s: string): string; //��������˥��
    function sheng(s: char): char;
    function keke(s: char): char;
    function shengwo(s: char): char;
    function kekewo(s: char): char;
    function deqi(s: char): boolean; //����
    function guaneichonghe(s: char): boolean; //���ڳ��
    function zhuangbianyaoliuqin(s: string): string;
    procedure tian_tiangan(const gm: string; flag: integer); //�����ɣ�flag=1��ʾ����2=���ԣ�3=����
    function changsheng(s: char): char; //����
    function jue(s: char): char; //��
    function si(s: char): char; //��
    function mu(s: char): char; //Ĺ
    function ������ɫ(i: integer): tcolor; //���ݱ�ŷ��غϳ���ɫ
    function ȡ����Ϣ: ansistring; //ȡ����վ��Ϣ
    procedure ��С����(s: char; img: timage); //����С����
    function ȡ�ð�������(s: char): string;
    function ȡ�ð��Է�λ(s: char): string;
    function ȡ�������ֵ�س����: char;
    function can_show_img: boolean;
  public
    { Public declarations }
    ���Է�ʽ: string;
    ����: string;
    ��������: string;
    function getFirstString(const s: string): string;
    function getFirstInteger(const s: string): integer;
    function getFirstItems(const s: string; item: Tstrings):integer;
    function get_tiangandizhi(dt: tdate): string; //�����ɵ�֧����
    procedure zhuanggua(d: tdate); //װ��
    function get_date_by_tiangandizhi(const yy,r: string): tdate;
    function get_guihun_youhun(const m: string): STRING;
    function get_tiangan_by_gua(const m: string): string; //���������������
    procedure set_timestr;
    function �������ͷ���(b: integer): boolean;  //1������2���淴����3 ������
    function ����id�����Ա���(id: integer):boolean;
    procedure ����id����������(id: integer);
    function post_http(const url: string; t: tstringlist): string;
    function get_http(const url: string): string;
    function IdDecode(const s: string): string; //�ظ�id��ԭ������
  end;

   function md5string(const s: string): string;
   function benbian_quchu(const s: string): string;
   function aes_encrypt(const s: string): string;

var
  Form1: TForm1;
  G_date: tdate;
  g_time: ttime;
  �Ƿ�ʹ������: integer; //ʹ������=1
  user_name: string;
  http_host: string;
  URL_G: string;
  //save_ ϵ�б��������������Ժ󱣴����������ڱ������ʱ������
  save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou: string;
  gua_weiyi_bianhao_g,shuzi_id: string; //��Ψһ����Ǳ������Ա�ţ������絥�û��ںͱ���������ͬ��Ψһ�ģ�
  tiangan_kuan,gua_id_g,gua_index_g: integer;   //gua_id��¼���Ե�id gua_index ��¼���Ի��߲鿴����stringlist�����index
  liuyao1: array[0..5] of Tyao; //��
  liuyao2: array[0..5] of Tyao;  //��
  yue,ri,dangqian: string;
  tiangan1: array[0..5] of char;
  G_xunkong: array[0..1] of char; //��ǰѮ��
  bianse: array[0..2,0..5] of integer; //  1��ʾ�ϣ�2��ʾ��
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
 result:= StringReplace(s,'���ԣ�','',[]);
 result:= StringReplace(result,'���ԣ�','֮ ',[]);
 result:= StringReplace(result,'���ԣ�','',[]);
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
 Ǭ��='������';
 Ǭ��='���ɸ�';
 ����='�����';
 ����='�ɸ���';
 ����='�����';
 ����='������';
 ����='�ҹ���';
 ����='������';
 ����='���Ҷ�';
 ����='������';
 ����='������';
 ����='������';
 ����='������';
 ����='�Ҷ���';
 ����='������';
 ����='���Ҷ�';
var
 a,b: string;
begin
    result:='�������Ʋ���';
  if length(gua)<3 then
    exit;

    a:= '';
    b:= '';

  case gua[1] of
   '��': a:=Ǭ��;
   'ˮ': a:=����;
   'ɽ': a:=����;
   '��': a:=����;
   '��': a:=����;
   '��': a:=����;
   '��': a:=����;
   '��': a:=����;
  end;
  case gua[2] of
   '��': b:=Ǭ��;
   'ˮ': b:=����;
   'ɽ': b:=����;
   '��': b:=����;
   '��': b:=����;
   '��': b:=����;
   '��': b:=����;
   '��': b:=����;
  end;

  if a='' then
   begin
    case gua[3] of
   '��': result:=Ǭ��+Ǭ��;
   'ˮ': result:=����+����;
   'ɽ': result:=����+����;
   '��': result:=����+����;
   '��': result:=����+����;
   '��': result:=����+����;
   '��': result:=����+����;
   '��': result:=����+����;
    end;
   end else result:= a+b;

end;

function get_fendu(const tg: char;du: integer): string;
begin
  {
ʱ/ �׼� �Ҹ� ���� ���� ���
 �� ���� ���� ���� ���� ����
 �� �ҳ� ���� ���� ���� ���
 �� ���� ���� ���� ���� ����
 î ��î ��î ��î ��î ��î
 �� �쳽 ���� �ɳ� �׳� ����
 �� ���� ���� ���� ���� ����
 �� ���� ���� ���� ���� ����
 δ ��δ ��δ ��δ ��δ ��δ
 �� ���� ���� ���� ���� ����
 �� ���� ���� ���� ���� ����
 �� ���� ���� ���� ���� ����
 �� �Һ� ���� ���� ���� �ﺥ
  }
result:= '';
  if (tg='��') or (tg='��') then
   case du of
     1: result:= '����';
     2: result:= '�ҳ�';
     3: result:= '����';
     4: result:= '��î';
     5: result:= '�쳽';
     6: result:= '����';
     7: result:= '����';
     8: result:= '��δ';
     9: result:= '����';
     10:result:= '����';
     11:result:= '����';
     12:result:= '�Һ�';
   end;
    if (tg='��') or (tg='��') then
   case du of
     1: result:= '����';
     2: result:= '����';
     3: result:= '����';
     4: result:= '��î';
     5: result:= '����';
     6: result:= '����';
     7: result:= '����';
     8: result:= '��δ';
     9: result:= '����';
     10:result:= '����';
     11:result:= '����';
     12:result:= '����';
   end;
   if (tg='��') or (tg='��') then
   case du of
     1: result:= '����';
     2: result:= '����';
     3: result:= '����';
     4: result:= '��î';
     5: result:= '�ɳ�';
     6: result:= '����';
     7: result:= '����';
     8: result:= '��δ';
     9: result:= '����';
     10:result:= '����';
     11:result:= '����';
     12:result:= '����';
   end;
   if (tg='��') or (tg='��') then
   case du of
     1: result:= '����';
     2: result:= '����';
     3: result:= '����';
     4: result:= '��î';
     5: result:= '�׳�';
     6: result:= '����';
     7: result:= '����';
     8: result:= '��δ';
     9: result:= '����';
     10:result:= '����';
     11:result:= '����';
     12:result:= '����';
   end;

   if (tg='��') or (tg='��') then
   case du of
     1: result:= '����';
     2: result:= '���';
     3: result:= '����';
     4: result:= '��î';
     5: result:= '����';
     6: result:= '����';
     7: result:= '����';
     8: result:= '��δ';
     9: result:= '����';
     10:result:= '����';
     11:result:= '����';
     12:result:= '�ﺥ';
   end;

end;
function get_shifen(const tg: string;tm: ttime): string; //����ʱ��ȡ�÷��Ӷȣ�10����Ϊһ��
var miao,fen,du: integer;
begin
  if tg[2]='��' then //��ʼ������
     miao:=-60
     else if tg[2]='��' then
     miao:=60
     else if tg[2]='��' then
     miao:=180
     else if tg[2]='î' then
     miao:=300
     else if tg[2]='��' then
     miao:=420
     else if tg[2]='��' then
     miao:=540
     else if tg[2]='��' then
     miao:=660
     else if tg[2]='δ' then
     miao:=780
     else if tg[2]='��' then
     miao:=900
     else if tg[2]='��' then
     miao:=1020
     else if tg[2]='��' then
     miao:=1140
     else
     miao:=1260;

 //ȡ�õ�ǰ��ȥ�ķ�����
   fen:= round(Frac(tm) /(1/24/60));
   if fen >=1380 then
      miao:= 1380;   //������ʱ����

   du:= (fen-miao+10)div 10; //��ǰ���Ӽ�ȥ��׼���ӣ��ٳ���10���õ����˼����ֶ�
   result:= get_fendu(tg[1],du);
end;

{ TForm1 }

function TForm1.andong(i: integer): boolean;
var ss: string;
begin
result:= false; //��س������,Ѯ�գ������ȱ���Ϊ����
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
     X0 := a1;//PtStart�Ǽ�ͷ����㣬PtEnd���յ㣬����Tpoint��
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
          result:= datetostr(g_date+i)+ss+'�ɾ�';
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
          result:=result+' '+  inttostr(y)+'��'+inttostr(m)+'��'+ss+'�ɾ�';
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

 if  button2.Caption= '��ʾ����' then
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
     if c='��' then
      result:= '��'
      else if  c='Ӧ' then
        result:= 'Ӧ'
        else
         result:= ' ';
   end;
 function get_yao(i:integer): string;
  begin
    case i of
     0: result:= 'E';
     1: result:= 'һ';
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
     memo2.Lines.Add('����ID='+edit1.Text+' '+���Է�ʽ);
     memo2.Lines.Add(label1.Caption);
     memo2.Lines.Add('�����س������� http://www.finer2.com/liuyao/');
     memo2.Lines.Add(label9.Caption);
     memo2.Lines.Add(label2.Caption);
     memo2.Lines.Add(label3.Caption+'       '+label4.Caption);

     memo2.Lines.Add('����'+#9+'����'+#9+'  ������֧  ��Ӧ س��    ��س');

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
 AData : THandle;APalette :HPALETTE;    //////�������һ��
begin
 Bitmap := TBitmap.Create;
 try
   Bitmap.Width:= 680;
   bitmap.Height:= 425;
   bitmap.Canvas.CopyRect(rect(0,0,680,425),self.Canvas,rect(82,8,762,433));
   bitmap.Canvas.Font.Size:= 14;
   bitmap.Canvas.TextOut(44,360,'���� Http://www.finer2.com/liuyao/');
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
 if messagebox(handle,'�Ƿ񱣴汾�Եķ�����Ϣ��','��ʾ',mb_yesno)=mryes then
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
 if �Ƿ�ʹ������=1 then
    gaimi_form.Show
    else
     showmessage('������״̬�²����á�');
end;

procedure TForm1.Button19Click(Sender: TObject);
var ss: string;
    i: integer;
begin


 if gua_index_g<=0 then
  begin
    showmessage('�Ѿ�����ǰ�档');
    exit;
  end;

 gua_index_g:= gua_index_g-1;

 ss:= gua_shangxia.Strings[gua_index_g];
 if ss<>'' then
  begin
   i:= strtoint(copy(ss,1,pos('(',ss)-1));
    if pos('����',ss)>0 then
        ����id�����Ա���(i)
        else
         ����id����������(i);
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
        button4.Caption:='��ʾ����';
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
    showmessage('�Ѿ�������档');
    exit;
  end;

 gua_index_g:= gua_index_g+1;

 ss:= gua_shangxia.Strings[gua_index_g];
 if ss<>'' then
  begin
   i:= strtoint(copy(ss,1,pos('(',ss)-1));
    if pos('����',ss)>0 then
        ����id�����Ա���(i)
        else
         ����id����������(i);
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

  if s='ǬΪ��' then
   s:='Ǭ';
 if s='��Ϊ��' then
   s:='��';
 if s='��Ϊ��' then
   s:='��';
 if s='��Ϊ��' then
   s:='��';
 if s='��Ϊɽ' then
   s:='��';
 if s='��Ϊ��' then
   s:='��';
 if s='��Ϊ��' then
   s:='��';
 if s='��Ϊˮ' then
   s:='��';

 if length(S)>1 then
  delete(s,1,2);

 if button2.Enabled then
    begin
    s2:= liuyao2[0].guaming;
     if s2='ǬΪ��' then
    s2:='Ǭ';
     if s2='��Ϊ��' then
       s2:='��';
     if s2='��Ϊ��' then
       s2:='��';
     if s2='��Ϊ��' then
       s2:='��';
     if s2='��Ϊɽ' then
       s2:='��';
     if s2='��Ϊ��' then
       s2:='��';
     if s2='��Ϊ��' then
       s2:='��';
     if s2='��Ϊˮ' then
       s2:='��';

     if length(s2)>1 then
     delete(s2,1,2);

     s:= s+'֮'+s2;
    end;

 label10.Caption:= get_jiaochi(s);
end;

procedure TForm1.Button22Click(Sender: TObject);
const ss: array[0..63] of string=('Ǭ','��','��','��','��','��','ʦ','��','С��','��','̩','��','ͬ��',
'����','ǫ','ԥ','��','��','��','��','���','��','��','��','����','����','��',
'���','��','��','��','��','��','��׳','��','����','����','�','�','��','��',
'��','��','��','��','��','��','��','��','��','��','��','��','����','��','��',
'��','��','��','��','����','С��','�ȼ�','δ��');
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
        s:= ss[i]+ '֮'+ss[j];
      {  if s='Ǭ֮Ǭ' then
   s:='Ǭ';
 if s='��֮��' then
   s:='��';
 if s='��֮��' then
   s:='��';
 if s='��֮��' then
   s:='��';
 if s='��֮��' then
   s:='��';
 if s='��֮��' then
   s:='��';
 if s='��֮��' then
   s:='��';
 if s='��֮��' then
   s:='��'; }

        if get_jiaochi(s)=''
         then
          begin
            showmessage(s);
            exit;
          end;
      end;

   showmessage('�����ɡ�');
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

procedure TForm1.Button24Click(Sender: TObject);  //��ʾ�������ʾ��Ϣ
var a,b,c,d,yao1,yao2,yaozong: integer;
  i: Integer; //a��ʾ�����£�b��������
  ss: string;
  a1,b1,c1,d1: char; //��Ӧ
begin
 form5.Memo1.Clear;
 a:= 0;
 b:= 0;
 c:= 0;
 d:= 0;
   ss:= liuyao1[0].guaming;
    if ss[1]='��' then
        b:= 1
    else if ss[1]='��' then
        b:= 2
    else if ss[1]='��' then
        b:= 3
    else if ss[1]='��' then
        b:= 4
    else if ss[1]='��' then
        b:= 5
    else if ss[1]='ˮ' then
        b:= 6
    else if ss[1]='ɽ' then
        b:= 7
    else if ss[1]='��' then
        b:= 8;

    if ss[2]='��' then
        a:= 1
    else if ss[2]='��' then
        a:= 2
    else if ss[2]='��' then
        a:= 3
    else if ss[2]='��' then
        a:= 4
    else if ss[2]='��' then
        a:= 5
    else if ss[2]='ˮ' then
        a:= 6
    else if ss[2]='ɽ' then
        a:= 7
    else if ss[2]='��' then
        a:= 8;

   if ss='ǬΪ��' then
    begin
      a:=1;
      b:= 1;
    end;
   if ss='��Ϊ��' then
    begin
      a:=2;
      b:= 2;
    end;
   if ss='��Ϊ��' then
    begin
      a:=3;
      b:= 3;
    end;
   if ss='��Ϊ��' then
    begin
      a:=4;
      b:= 4;
    end;
    if ss='��Ϊ��' then
    begin
      a:=5;
      b:= 5;
    end;
   if ss='��Ϊˮ' then
    begin
      a:=6;
      b:= 6;
    end;
    if ss='��Ϊɽ' then
    begin
      a:=7;
      b:= 7;
    end;
    if ss='��Ϊ��' then
    begin
      a:=8;
      b:= 8;
    end;

   if button2.Enabled then
    begin
    ss:= liuyao2[0].guaming;
      if ss[1]='��' then
        d:= 1
        else if ss[1]='��' then
            d:= 2
        else if ss[1]='��' then
            d:= 3
        else if ss[1]='��' then
            d:= 4
        else if ss[1]='��' then
            d:= 5
        else if ss[1]='ˮ' then
            d:= 6
        else if ss[1]='ɽ' then
            d:= 7
        else if ss[1]='��' then
            d:= 8;

        if ss[2]='��' then
            c:= 1
        else if ss[2]='��' then
            c:= 2
        else if ss[2]='��' then
            c:= 3
        else if ss[2]='��' then
            c:= 4
        else if ss[2]='��' then
            c:= 5
        else if ss[2]='ˮ' then
            c:= 6
        else if ss[2]='ɽ' then
            c:= 7
        else if ss[2]='��' then
            c:= 8;

         if ss='ǬΪ��' then
        begin
          c:=1;
          d:= 1;
        end;
       if ss='��Ϊ��' then
        begin
          c:=2;
          d:= 2;
        end;
       if ss='��Ϊ��' then
        begin
          c:=3;
          d:= 3;
        end;
       if ss='��Ϊ��' then
        begin
          c:=4;
          d:= 4;
        end;
        if ss='��Ϊ��' then
        begin
          c:=5;
          d:= 5;
        end;
       if ss='��Ϊˮ' then
        begin
          c:=6;
          d:= 6;
        end;
        if ss='��Ϊɽ' then
        begin
          c:=7;
          d:= 7;
        end;
        if ss='��Ϊ��' then
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
     if liuyao1[i].shiying='��' then
      begin
       a1:= '��';
       b1:= 'Ӧ';
      end else if liuyao1[i].shiying='Ӧ' then
      begin
         a1:= 'Ӧ';
       b1:= '��';
      end;
    end;

    if  button2.Enabled then
      for I := 5 downto 3 do
    begin
     if liuyao2[i].shiying='��' then
      begin
       c1:= '��';
       d1:= 'Ӧ';
      end else if liuyao2[i].shiying='Ӧ' then
      begin
         c1:= 'Ӧ';
       d1:= '��';
      end;
    end;

   form5.Memo1.Lines.Add('���ԣ���'+a1+ inttostr(a)+' ��'+b1+ inttostr(b));
   if button2.Enabled then
    form5.Memo1.Lines.Add('���ԣ���'+ c1+inttostr(c)+' ��'+d1+inttostr(d));

   form5.Memo1.Lines.Add('����س�����ƣ�'+ inttostr(yao1));
   if button2.Enabled then
    begin
    form5.Memo1.Lines.Add('����س�����ƣ�'+ inttostr(yao2));
    form5.Memo1.Lines.Add('�ܹ�س�����ƣ�'+ inttostr(yaozong));
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
  ListBox1.Canvas.Font.Name:='����';
    ListBox1.Canvas.Font.Size:= 12;

  listbox1.Items.Clear;
 listbox1.Top:= 8;
 listbox1.Left:= 136;
 listbox1.Height:= 498;
 listbox1.Width:= 660;

  if �Ƿ�ʹ������=1 then
   begin
    //������ʾ����δͬ�����������
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
                   listbox1.Items.Add('(δ���浽����)'+intToHex(strtoint(fields[0].asstring)+Suiji_ID,1)+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring+';'+fields[3].asstring);
                    next;
                  end;
                end;
      end;

    //��������ʾ��
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
          showmessage('����������Ժ�����,һ���һ�����Ӽ��ɻָ���');
          exit;
        end;

        if ss<>'' then
         begin
          delete(ss,1,pos('<t>',ss)+2);
          while pos('<t>',ss)>0 do
           begin
             inc(i); //��������ֹ��������ѭ��
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
  label16.Caption:= '�����С���';
  label16.Visible:= true;
  label16.Update;

   if �������ͷ���(1) then
   begin
   //showmessage('���ﱣ��ɹ���');
   button28.Enabled:= false;
   button30.Enabled:= false;
   label16.Caption:= '����ɹ���';
   label16.Font.Color:= clgreen;
   label16.Update;
   end else begin
              label16.Caption:= '����ʧ��';
              label16.Font.Color:= clred;
              label16.Update;
              showmessage('���ﱣ��ʧ�ܣ���ʱ���粨�������Ժ�����,һ���һ�����Ӽ��ɻָ���');
            end;
  timer1.Enabled:= true;
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
   label17.Font.Color:= clWindowText;
  label17.Caption:= '�����С���';
  label17.Visible:= true;
   label17.Update;
 if �������ͷ���(2) then
  begin
   //showmessage('��������ɹ���');
   button29.Enabled:= false;
   button30.Enabled:= false;
   label17.Caption:= '����ɹ���';
   label17.Font.Color:= clgreen;
   label17.Update;
  end else begin
             label17.Caption:= '����ʧ��';
             label17.Font.Color:= clred;
             label17.Update;
             showmessage('��������ʧ�ܣ���ʱ���粨�������Ժ�����,һ���һ�����Ӽ��ɻָ���');
           end;

  timer1.Enabled:= true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
FillChar(bianse,sizeof(bianse),0);
  if button2.Caption= '��ʾ����' then
   begin
    hua(liuyao2,G_date);
    button2.Caption:= '��ʾ����';

   end else begin
    hua(liuyao1,G_date);
    button2.Caption:= '��ʾ����';
   end;
end;

procedure TForm1.Button30Click(Sender: TObject);
begin
  label16.Font.Color:= clWindowText;
  label16.Caption:= '�����С���';
  label16.Visible:= true;
  label17.Font.Color:= clWindowText;
  label17.Caption:= '�����С���';
  label17.Visible:= true;
  label16.Update;
  label17.Update;
 if �������ͷ���(3) then
 begin
  // showmessage('ȫ������ɹ���');
   button28.Enabled:= false;
   button29.Enabled:= false;
   button30.Enabled:= false;
   label16.Caption:= '����ɹ���';
   label16.Font.Color:= clgreen;
   label17.Caption:= '����ɹ���';
   label17.Font.Color:= clgreen;
   label16.Update;
   label17.Update;
 end  else begin
        label16.Caption:= '����ʧ��';
        label16.Font.Color:= clred;
        label17.Caption:= '����ʧ��';
        label17.Font.Color:= clred;
        label16.Update;
        label17.Update;
        showmessage('ȫ������ʧ�ܣ���ʱ���粨�������Ժ�����,һ���һ�����Ӽ��ɻָ���');
      end;

     timer1.Enabled:= true;
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
//�鿴ȫ�����򿪲��Ҵ��ڲ���ʾȫ��
 if �Ƿ�ʹ������=1 then
  begin
   postmessage(form3.handle,cha_msg_cn,0,0);
   button10click(sender);
  end;
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
 if gua_weiyi_bianhao_g='' then
  begin
    showmessage('�������Ի�������һ����ǰ������ԡ�');
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
  //��ɫ��ʾ������ɫ��ʾ�ϣ���ɫ��ʾ�ˣ���ɫ��ʾ��
 //  arrow(8,16,152,99,clred);

   if button2.Caption= '��ʾ����' then
    begin
      showmessage('ֻ����ʾ���Թ�ϵ����ǰ���ڱ���������ʾ���޷�ִ�д˲���');
      exit;
    end;

  for I := 0 to 5 do
    begin
     if liuyao1[i].fushen<>'' then
      begin
        ss:= liuyao1[i].fushen;
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'���''')<>'' then
           arrow(17,31,134,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'���''')<>'' then
           arrow(21,31,138,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(44,31,161,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(48,31,165,64+i*35,clred);

           //��
         if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'���''')<>'' then
           arrow(110,31,138,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'���''')<>'' then
           arrow(114,31,138,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(134,31,161,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(138,31,165,64+i*35,clred);
      end;

     ss:= liuyao1[i].nazhi;    //��֦ ��
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[1]+'���''')<>'' then
           arrow(17,31,260,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[1]+'���''')<>'' then
           arrow(21,31,266,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'��'+ ss[2]+'''')<> ''then
           arrow(44,31,290,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'��'+ ss[2]+'''')<> ''then
           arrow(48,31,296,64+i*35,clred);

           //��
         if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[1]+'���''')<>'' then
           arrow(110,31,260,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[1]+'���''')<>'' then
           arrow(114,31,266,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'��'+ ss[2]+'''')<> ''then
           arrow(134,31,290,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'��'+ ss[2]+'''')<> ''then
           arrow(138,31,296,64+i*35,clred);
     if liuyao1[i].yaogua>2 then
       begin
         ss:= liuyao1[i].bianyao;
         if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'���''')<>'' then
           arrow(17,31,506,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ yue[2]+ss[3]+'���''')<>'' then
           arrow(21,31,512,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(44,31,532,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label5.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(48,31,538,64+i*35,clred);

           //��
         if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'���''')<>'' then
           arrow(110,31,506,64+i*35,clgreen);
        if getfirststring('select value9 from zhi where value9='''+ ri[2]+ss[3]+'���''')<>'' then
           arrow(114,31,512,64+i*35,clPurple);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(134,31,532,64+i*35,clblue);
        if getfirststring('select key from zhi where key='''+ label6.Caption[2]+'��'+ ss[4]+'''')<> ''then
           arrow(138,31,538,64+i*35,clred);

       end; //end if bianyao
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i: integer;
begin
  //
 FillChar(bianse,sizeof(bianse),0);
  if button4.Caption='��ʾ����' then
   begin
     button4.Caption:= '��ʾ����';
     label7.Visible:= true;
    end else begin
               button4.Caption:='��ʾ����';
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

 //memo1.Lines.LoadFromFile(ExtractFilePath(application.ExeName)+'����֪ʶ.txt');

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 button2.Caption:= '��ʾ����';
 hua(liuyao1,G_date);
end;

procedure TForm1.Button8Click(Sender: TObject);
var ss,ss_e: string;
     i: integer;
begin
  if length(edit1.Text)< 14 then
   begin
     showmessage('��سID������14λ�����Ȳ���');
     exit;
   end;
  ss_e:= edit1.Text;
  ss:= copy(ss_e,1,8);
  insert('-',ss,5);
  insert('-',ss,8);
   G_date:= strtodate(ss);

   ss:= copy(ss_e,9,6);

    if pos('��ɽ��',ss_e)>0 then
     begin
      ���Է�ʽ:='��ɽ��';
      radiobutton14.Checked:= true;
     end else
          begin
           ���Է�ʽ:='����ʽ';
           radiobutton13.Checked:= true;
          end;
               button4.Caption:='��ʾ����';
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
   ss:= inputbox('��ע','��ע','');
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

     if ���Է�ʽ='��ɽ��' then
      str.Add(edit1.Text+ '[��ɽ��] '+ ss)
      else
        str.Add(edit1.Text+ ss+'T:'+timetostr(G_time));

    str.SaveToFile(ss2);
   str.Free;
   showmessage('������ɡ�');
end;

function TForm1.by_shengke(const a, b: string): string;
begin
result:= '';
if sheng(b[1])=a then
     result:= '��ͷ��' //��ͷ��
     else if keke(b[1])=a then
             result:= '��ͷ��';
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
  'ľ': result:= '��';
  '��': result:= '��';
   '��': result:= '��';
  '��': result:= '��';
  'ˮ': result:= '��';
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
           // liuyao2[i].liushou:= liuyao1[i].liushou;  װ����ʱ��һ��װ����
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
       if (ss='����') or (ss='����') or
          (ss='����') or (ss='����') or
          (ss='����') or (ss='�׳�') then
        begin
           result:=  datetostr(d+i)+' ����';
           exit;
        end;
    end;

end;

function TForm1.cong(s: char): string;
begin
result:= '';
  case s of
  '��': result:= '��';
  '��': result:= '��';
   '��': result:= 'δ';
  'δ': result:= '��';
  '��': result:= '��';
  '��': result:= '��';
  'î': result:= '��';
  '��': result:= 'î';
  '��': result:= '��';
  '��': result:= '��';
  '��': result:= '��';
  '��': result:= '��';
  end;
end;

function TForm1.deqi(s: char): boolean;
begin
  //����ˮس���ڳ��£���îľس���ڳ��£������س����δ�£����Ͻ�س��������
  result:= false;

  if ((s='��') or (s='��')) and (yue[2]='��') then
    result:= true;
  if ((s='��') or (s='î')) and (yue[2]='��') then
    result:= true;
  if ((s='��') or (s='��')) and (yue[2]='δ') then
    result:= true;
  if ((s='��') or (s='��')) and (yue[2]='��') then
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
     tmp:= n+'��'+ ss ;


     sk:= getfirststring('select key from zhi where value1='''+ yue[2]+ss[4]+''' or '+
                                                   'value2='''+ yue[2]+ss[4]+''' or '+
                                                   'value3='''+ yue[2]+ss[4]+''' or '+
                                                   'value4='''+ yue[2]+ss[4]+''' or '+
                                                   'value5='''+ yue[2]+ss[4]+''''
     );
     if sk<>'' then
      tmp:= tmp +' �½� 12�� ('+sk+')';

      memo1.Lines.Add(tmp);

      tmp:= n+'��'+ ss;

     sk:= getfirststring('select key from zhi where value1='''+ ri[2]+ss[4]+''' or '+
                                                   'value2='''+ ri[2]+ss[4]+''' or '+
                                                   'value3='''+ ri[2]+ss[4]+''' or '+
                                                   'value4='''+ ri[2]+ss[4]+''' or '+
                                                   'value5='''+ ri[2]+ss[4]+''''
     );
     if sk<>'' then
      tmp:= tmp +' �ս� 12�� ('+sk+')';

      memo1.Lines.Add(tmp);

     if deqi(ss[3]) then
        memo1.Lines.Add(ss+ ' ����');


      if pos('����',n)>0 then
        begin
        tmp:= liuyao1[k].nazhi;
          sk:= getfirststring('select key from zhi where value1='''+ tmp[1]+ss[4]+''' or '+
                                                   'value2='''+tmp[1]+ss[4]+''' or '+
                                                   'value3='''+ tmp[1]+ss[4]+''' or '+
                                                   'value4='''+ tmp[1]+ss[4]+''' or '+
                                                   'value5='''+ tmp[1]+ss[4]+'''');

        if sk<>'' then
          memo1.Lines.Add('���� 12�� ('+sk+')');
        end;

      if (pos('��',n)>0) and (pos('س',n)>0) then
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
             memo1.Lines.Add('���� 12�� ('+sk+')');
           end;
       end;

    end;
begin
  //

  memo1.Lines.BeginUpdate;
  memo1.Lines.Clear;

  ss:= '';
  b:= false;

  if k>0 then   //����س����
   begin
    if button2.Caption<>'��ʾ����'  then
       begin
        memo1.Lines.Add('ֻ��������');
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
                memo1.Lines.EndUpdate;  //�ޱ�س
                exit;
                end;
            ss:= liuyao1[k-1].bianyao;
           end;
        end;
                if changsheng(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'��������'+ yue[2]);

                if si(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'������'+ yue[2]);

                   if mu(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'��Ĺ����'+ yue[2]);

                   if jue(ss[4])=yue[2] then
                     memo1.Lines.Add(ss[4]+'������'+ yue[2]);

                   if changsheng(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'��������'+ ri[2]);

                   if si(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'������'+ ri[2]);

                   if mu(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'��Ĺ����'+ ri[2]);

                   if jue(ss[4])=ri[2] then
                     memo1.Lines.Add(ss[4]+'������'+ ri[2]);


      for I := 0 to 5do
              begin
                s2:= liuyao1[i].fushen;
                if s2<>'' then
                 begin
                   //����
                   if hehe(ss[3])=s2[3] then
                    begin
                     bianse[0,i]:= 1;
                     memo1.Lines.Add(ss[3]+ s2[3] +'��');
                    end;
                   if cong(ss[3])=s2[3] then
                    begin
                     bianse[0,i]:= 2;
                     memo1.Lines.Add(ss[3]+ s2[3] +'��');
                    end;

                   if changsheng(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 32;
                     memo1.Lines.Add(ss[4]+'������'+ s2[3]);
                    end;

                   if si(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 4;
                     memo1.Lines.Add(ss[4]+'����'+ s2[3]);
                    end;
                   if mu(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 8;
                     memo1.Lines.Add(ss[4]+'��Ĺ��'+ s2[3]);
                    end;
                  if jue(ss[4])=s2[3] then
                    begin
                     bianse[0,i]:= 16;
                     memo1.Lines.Add(ss[4]+'����'+ s2[3]);
                    end;
                 end;
                s2:= liuyao1[i].nazhi;
                  if hehe(ss[3])=s2[1] then
                    begin
                     bianse[1,i]:= 1;
                     memo1.Lines.Add(ss[3]+ s2[1] +'��');
                    end;
                   if cong(ss[3])=s2[1] then
                    begin
                     bianse[1,i]:= 2;
                     memo1.Lines.Add(ss[3]+ s2[1] +'��');
                    end;

                    if changsheng(ss[4])=s2[1] then  //
                    begin
                     bianse[1,i]:= 32;
                     memo1.Lines.Add(ss[4]+'������'+ s2[1]);
                    end;
                   if si(ss[4])=s2[1] then  //
                    begin
                     bianse[1,i]:= 4;
                     memo1.Lines.Add(ss[4]+'����'+ s2[1]);
                    end;
                   if mu(ss[4])=s2[1] then
                    begin
                     bianse[1,i]:= 8;
                     memo1.Lines.Add(ss[4]+'��Ĺ��'+ s2[1]);
                    end;
                  if jue(ss[4])=s2[1] then
                    begin
                     bianse[1,i]:= 16;
                     memo1.Lines.Add(ss[4]+'����'+ s2[1]);
                    end;

                if liuyao1[i].yaogua>=3 then
                 begin
                  s2:= liuyao1[i].bianyao;
                  if hehe(ss[3])=s2[3] then
                    begin
                     bianse[2,i]:= 1;
                     memo1.Lines.Add(ss[3]+ s2[3] +'��');
                    end;
                   if cong(ss[3])=s2[3] then
                    begin
                     bianse[2,i]:= 2;
                     memo1.Lines.Add(ss[3]+ s2[3] +'��');
                    end;
                    if changsheng(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 32;
                     memo1.Lines.Add(ss[4]+'������'+ s2[3]);
                    end;
                   if si(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 4;
                     memo1.Lines.Add(ss[4]+'����'+ s2[3]);
                    end;
                   if mu(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 8;
                     memo1.Lines.Add(ss[4]+'��Ĺ��'+ s2[3]);
                    end;
                  if jue(ss[4])=s2[3] then
                    begin
                     bianse[2,i]:= 16;
                     memo1.Lines.Add(ss[4]+'����'+ s2[3]);
                    end;
                 end;
              end;

    memo1.Lines.Add('*******************************')
   end;

   //�������
   screen.Cursor:= crhourglass;

  //���ӳ����һ����ϣ������ϳ����һ����磬�����������һ���î���꺥îδ���һ����ӡ�
  //�����ӳ������������������ϳ��������ں��������������������꣬�꺥îδ���������ȡ�

  if (ri[2]='��') or (ri[2]='��') or (ri[2]='��') then
      memo1.Lines.Add('����-�� �һ�-��');
  if (ri[2]='��') or (ri[2]='��') or (ri[2]='��') then
      memo1.Lines.Add('����-�� �һ�-��');
  if (ri[2]='��') or (ri[2]='��') or (ri[2]='��') then
      memo1.Lines.Add('����-�� �һ�-î');
  if (ri[2]='��') or (ri[2]='î') or (ri[2]='δ') then
      memo1.Lines.Add('����-�� �һ�-��');

  if (ri[1]='��') or (ri[1]='��')  then
      memo1.Lines.Add('����-��δ');
  if (ri[1]='��') or (ri[1]='��')  then
      memo1.Lines.Add('����-����');
  if (ri[1]=' ��') or (ri[1]='��')  then
      memo1.Lines.Add('����-����');
  if (ri[1]='��') or (ri[1]='��')  then
      memo1.Lines.Add('����-î��');
   if (ri[1]='��') or (ri[1]='��')  then
      memo1.Lines.Add('����-����');

  if (liuyao1[0].guaming='��ط�') or
     (liuyao1[0].guaming='ˮ���') or
     (liuyao1[0].guaming='ɽ����') or
     (liuyao1[0].guaming='�׵�ԥ') or
     (liuyao1[0].guaming='��ɽ��') or
     (liuyao1[0].guaming='���׸�') or
     (liuyao1[0].guaming='����̩') or
     (liuyao1[0].guaming='��ˮ��') then
     ss:= '��������';

   if (liuyao1[0].guaming='ǬΪ��') or
     (liuyao1[0].guaming='��Ϊ��') or
     (liuyao1[0].guaming='��Ϊ��') or
     (liuyao1[0].guaming='��Ϊ��') or
     (liuyao1[0].guaming='��Ϊˮ') or
     (liuyao1[0].guaming='��Ϊ��') or
     (liuyao1[0].guaming='��Ϊɽ') or
     (liuyao1[0].guaming='��Ϊ��') or
     (liuyao1[0].guaming='�����׳') or
     (liuyao1[0].guaming='��������')
     then
     ss:= '��������';

  if (liuyao2[0].guaming='��ط�') or
     (liuyao2[0].guaming='ˮ���') or
     (liuyao2[0].guaming='ɽ����') or
     (liuyao2[0].guaming='�׵�ԥ') or
     (liuyao2[0].guaming='��ɽ��') or
     (liuyao2[0].guaming='���׸�') or
     (liuyao2[0].guaming='����̩') or
     (liuyao2[0].guaming='��ˮ��') then
     ss:= ss+' ��������';

   if (liuyao2[0].guaming='ǬΪ��') or
     (liuyao2[0].guaming='��Ϊ��') or
     (liuyao2[0].guaming='��Ϊ��') or
     (liuyao2[0].guaming='��Ϊ��') or
     (liuyao2[0].guaming='��Ϊˮ') or
     (liuyao2[0].guaming='��Ϊ��') or
     (liuyao2[0].guaming='��Ϊɽ') or
     (liuyao2[0].guaming='��Ϊ��') or
     (liuyao2[0].guaming='�����׳') or
     (liuyao2[0].guaming='��������')
     then
     ss:= ss+ ' ��������';

    memo1.Lines.Add(ss);

     ss:= liuyao1[0].nazhi;
     sk:= liuyao1[5].nazhi;
     if ss[1]= cong(sk[1]) then
      memo1.Lines.Add('һ��س��');
     if ss[1]= hehe(sk[1]) then
      memo1.Lines.Add('һ��س��');

     ss:= liuyao1[2].nazhi;
     sk:= liuyao1[3].nazhi;
     if ss[1]= cong(sk[1]) then
      memo1.Lines.Add('����س��');
     if ss[1]= hehe(sk[1]) then
      memo1.Lines.Add('����س��');

      k:= 0;
   for i := 0 to 5 do
     begin
       if liuyao1[i].nazhi=liuyao2[i].nazhi then
          inc(k);
     end;
    if k=6 then
     memo1.Lines.Add('�Ա������')
     else begin
            if (liuyao1[5].nazhi=liuyao2[5].nazhi)
              and (liuyao1[4].nazhi=liuyao2[4].nazhi)
              and (liuyao1[3].nazhi=liuyao2[3].nazhi) then
              memo1.Lines.Add('���Է�����')
              else if (liuyao1[2].nazhi=liuyao2[2].nazhi)
              and (liuyao1[1].nazhi=liuyao2[1].nazhi)
              and (liuyao1[0].nazhi=liuyao2[0].nazhi) then
              memo1.Lines.Add('���Է�����');
          end;

     if ((liuyao1[0].guaming='ǬΪ��')
        and (liuyao2[0].guaming='��Ϊ��'))
        or ((liuyao1[0].guaming='��Ϊ��')
        and (liuyao2[0].guaming='ǬΪ��')) then
        memo1.Lines.Add('�Ա䷴����');
      if ((liuyao1[0].guaming='��犥')
        and (liuyao2[0].guaming='����С��'))
        or ((liuyao1[0].guaming='����С��')
        and (liuyao2[0].guaming='��犥')) then
        memo1.Lines.Add('�Ա䷴����');
      if ((liuyao1[0].guaming='��Ϊˮ')
        and (liuyao2[0].guaming='��Ϊ��'))
        or ((liuyao1[0].guaming='��Ϊ��')
        and (liuyao2[0].guaming='��Ϊˮ')) then
        memo1.Lines.Add('�Ա䷴����');
      if ((liuyao1[0].guaming='ˮ��ȼ�')
        and (liuyao2[0].guaming='��ˮδ��'))
        or ((liuyao1[0].guaming='��ˮδ��')
        and (liuyao2[0].guaming='ˮ��ȼ�')) then
        memo1.Lines.Add('�Ա䷴����');
     if ((liuyao1[0].guaming='��Ϊɽ')
        and (liuyao2[0].guaming='��Ϊ��'))
        or ((liuyao1[0].guaming='��Ϊ��')
        and (liuyao2[0].guaming='��Ϊɽ')) then
        memo1.Lines.Add('�Ա䷴����');
     if ((liuyao1[0].guaming='ɽ�ذ�')
        and (liuyao2[0].guaming='��ɽǫ'))
        or ((liuyao1[0].guaming='��ɽǫ')
        and (liuyao2[0].guaming='ɽ�ذ�')) then
        memo1.Lines.Add('�Ա䷴����');
     if ((liuyao1[0].guaming='��Ϊ��')
        and (liuyao2[0].guaming='��Ϊ��'))
        or ((liuyao1[0].guaming='��Ϊ��')
        and (liuyao2[0].guaming='��Ϊ��')) then
        memo1.Lines.Add('�Ա䷴����');
      if ((liuyao1[0].guaming='������')
        and (liuyao2[0].guaming='�������'))
        or ((liuyao1[0].guaming='�������')
        and (liuyao2[0].guaming='������')) then
        memo1.Lines.Add('�Ա䷴����');

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
     memo1.Lines.Add('س�䷴����')
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
                  memo1.Lines.Add('���Է�����');

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
                memo1.Lines.Add('���Է�����');
          end;

    memo1.Lines.Add(shanhe);   //����
 sy:= -1;
 yy:= -1;
     for i := 0 to 5 do
        if liuyao1[i].shiying='��' then
           sy:= i
           else if liuyao1[i].shiying='Ӧ' then
               yy:= i;

   if (sy=-1) or (yy=-1) then
    begin
      screen.Cursor:= crdefault;
      showmessage('����ȱ����Ӧ�ؼ��֡�');

      exit;
    end;

    //�������Ͼ�

    //������س

    //����Ӧس

    //�����Ͼ�

    //��س�ܱ�
    //Ӧس�ܱ�

 {   k:= sy;
  if liuyao1[sy].fushen<>'' then //����
   begin
     ss:= liuyao1[sy].fushen;
      xieru('��س����');
   end; //����

    ss:= liuyao1[sy].liuqin+ liuyao1[sy].nazhi;
     xieru('��س��'+inttostr(6-sy)+'س');

    ss:= liuyao1[sy].bianyao;
    if liuyao1[sy].yaogua>2 then
     xieru('��س��س');

     k:= yy;
   if liuyao1[yy].fushen<>'' then //����
   begin
     ss:= liuyao1[yy].fushen;
      xieru('Ӧس����');
   end; //����

    ss:= liuyao1[yy].liuqin+ liuyao1[yy].nazhi;
     xieru('Ӧس��'+inttostr(6-yy)+'س');

    ss:= liuyao1[yy].bianyao;
    if liuyao1[yy].yaogua>2 then
     xieru('Ӧس��س');   }
  if b=false then
   begin
   for i := 5 downto 0 do
     begin
      if (i=sy) then
      s2:='��'
      else if (i=yy) then
         s2:= 'Ӧ'
         else
          s2:= '';

         k:= i;
          ss:= liuyao1[i].liuqin+ liuyao1[i].nazhi;
           xieru(s2+'��'+inttostr(6-i)+'س');
       if liuyao1[i].fushen<>'' then //����
         begin
           ss:= liuyao1[i].fushen;
            xieru(s2+'��'+inttostr(6-i)+'س����');
         end; //����

          ss:= liuyao1[i].bianyao;
          if liuyao1[i].yaogua>2 then
           xieru(s2+'��'+inttostr(6-i)+'س��س');
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

ADOConnection1.ConnectionString:= 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ ExtractFilePath(Application.EXEName) +'data\db1.mdb;Persist Security Info=False';//���ӵ���Ҫ�����ݿ�
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
      //���һ���ֶ����ڼ�¼�Ƿ��Ѿ����浽���磬û�б��浽������ߺ�����û��ͬ�����ԣ�ben=1
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
  if ���Է�ʽ='��ɽ��' then
   begin
    if (m='ˮ��ȼ�') or
     (m='��ˮδ��') or
     (m='��ˮʦ') or
     (m='ˮ�ر�') or
     (m='������') or
     (m='�����') or
     (m='��ɽ��') or
     (m='ɽ���') then
     result:= '(����)';

  if (m='ǬΪ��') or
     (m='��Ϊ��') or
     (m='��Ϊ��') or
     (m='��Ϊ��') or
     (m='��Ϊˮ') or
     (m='��Ϊ��') or
     (m='��Ϊɽ') or
     (m='��Ϊ��') or
     (m='�ػ�����') or
     (m='��ؽ�')
     then
     result:= '(����)';

   end else begin

  if (m='��ط�') or
     (m='ˮ���') or
     (m='ɽ����') or
     (m='�׵�ԥ') or
     (m='��ɽ��') or
     (m='���׸�') or
     (m='����̩') or
     (m='��ˮ��') then
     result:= '(����)';

  if (m='ǬΪ��') or
     (m='��Ϊ��') or
     (m='��Ϊ��') or
     (m='��Ϊ��') or
     (m='��Ϊˮ') or
     (m='��Ϊ��') or
     (m='��Ϊɽ') or
     (m='��Ϊ��') or
     (m='�����׳') or
     (m='��������')
     then
     result:= '(����)';
              end;
   //������л�����У�ˮ�رȣ������棬ɽ��ƣ���ˮʦ�����ͬ�ˣ���ɽ�����������

 if (m='�������') or
     (m='ˮ�ر�') or
     (m='������') or
     (m='ɽ���') or
     (m='��ˮʦ') or
     (m='���ͬ��') or
     (m='��ɽ��') or
     (m='�������')
     then
     result:= result+ '(���)';

   //�λ����л�ؽ���ˮ���裬�������ɽ���ã��ػ����ģ���ˮ�ϣ��������ڣ���ɽС��
  if (m='��ؽ�') or
     (m='ˮ����') or
     (m='�����') or
     (m='ɽ����') or
     (m='�ػ�����') or
     (m='��ˮ��') or
     (m='��������') or
     (m='��ɽС��')
     then
     result:= result+ '(�λ�)';

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

function yangmuyinmu(const s: char): string; //������ľ��ľ
begin
 result:= '';
if s='��' then result:=   '��ˮ';
if s='��' then result:=   '����';
if s='��' then result:=   '��ľ';
if s='î' then result:=   '��ľ';
if s='��' then result:=   '����';
if s='��' then result:=   '����';
if s='��' then result:=   '����';
if s='δ' then result:=   '����';
if s='��' then result:=   '����';
if s='��' then result:=   '����';
if s='��' then result:=   '����';
if s='��' then result:=   '��ˮ';
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
  result:= GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d)) +'�� '+
     yue+'�� '+ri+'��'+ xunkong2(ri)+ ' '+ datetostr(dt)+ ' '+ timetostr(g_time)+'��'+ 'ʱ��:'+
     shi
     + ' ��:'+ get_shifen(shi,g_time)
     +'��';

     yue:=yue+'��';
     ri:= ri+ '��';

   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);
end;

function TForm1.get_tiangan_by_gua(const m: string): string;
begin
result:= '  ';

if m='ǬΪ��' then begin result:=   '�ɼ�'; exit; end;
if m='��犥' then begin result:=   '����'; exit; end;
if m='���ͬ��' then begin result:=   '�ɼ�'; exit; end;
if m='��ɽ��' then begin result:=   '�ɱ�'; exit; end;
if m='������' then begin result:=   '�ɶ�'; exit; end;
if m='��ˮ��' then begin result:=   '����'; exit; end;
if m='��������' then begin result:=   '�ɸ�'; exit; end;
if m='��ط�' then begin result:=   '����'; exit; end;

if m='����С��' then begin result:=   '����'; exit; end;
if m='��Ϊ��'   then begin result:=   '����'; exit; end;
if m='������' then begin result:=   '����'; exit; end;
if m='��ɽ��'   then begin result:=   '����'; exit; end;
if m='��������' then begin result:=   '����'; exit; end;
if m='��ˮ��'   then begin result:=   '����'; exit; end;
if m='������'   then begin result:=   '����'; exit; end;
if m='��ع�'   then begin result:=   '����'; exit; end;

if m='�������' then begin result:=   '����'; exit; end;
if m='��綦' then begin result:=   '����'; exit; end;
if m='��Ϊ��' then begin result:=   '����'; exit; end;
if m='��ɽ��' then begin result:=   '����'; exit; end;
if m='�����' then begin result:=   '����'; exit; end;
if m='��ˮδ��' then begin result:=   '����'; exit; end;
if m='�������' then begin result:=   '����'; exit; end;
if m='��ؽ�' then begin result:=   '����'; exit; end;

if m='ɽ�����' then begin result:=   '����'; exit; end;
if m='ɽ���' then begin result:=   '����'; exit; end;
if m='ɽ����' then begin result:=   '����'; exit; end;
if m='��Ϊɽ' then begin result:=   '����'; exit; end;
if m='ɽ����' then begin result:=   '����'; exit; end;
if m='ɽˮ��' then begin result:=   '����'; exit; end;
if m='ɽ����' then begin result:=   '����'; exit; end;
if m='ɽ�ذ�' then begin result:=   '����'; exit; end;

if m='�����' then begin result:=   '����'; exit; end;
if m='�����' then begin result:=   '����'; exit; end;
if m='����' then begin result:=   '����'; exit; end;
if m='��ɽ��' then begin result:=   '����'; exit; end;
if m='��Ϊ��' then begin result:=   '����'; exit; end;
if m='��ˮ��' then begin result:=   '����'; exit; end;
if m='������' then begin result:=   '����'; exit; end;
if m='�����' then begin result:=   '����'; exit; end;

if m='ˮ����' then begin result:=   '���'; exit; end;
if m='ˮ�羮' then begin result:=   '����'; exit; end;
if m='ˮ��ȼ�' then begin result:=   '�켺'; exit; end;
if m='ˮɽ�' then begin result:=   '���'; exit; end;
if m='ˮ���' then begin result:=   '�춡'; exit; end;
if m='��Ϊˮ' then begin result:=   '����'; exit; end;
if m='ˮ����' then begin result:=   '���'; exit; end;
if m='ˮ�ر�' then begin result:=   '����'; exit; end;

if m='�����׳' then begin result:=   '����'; exit; end;
if m='�׷��' then begin result:=   '����'; exit; end;
if m='�׻��' then begin result:=   '����'; exit; end;
if m='��ɽС��' then begin result:=   '����'; exit; end;
if m='�������' then begin result:=   '����'; exit; end;
if m='��ˮ��' then begin result:=   '����'; exit; end;
if m='��Ϊ��' then begin result:=   '����'; exit; end;
if m='�׵�ԥ' then begin result:=   '����'; exit; end;

if m='����̩' then begin result:=   '���'; exit; end;
if m='�ط���' then begin result:=   '����'; exit; end;
if m='�ػ�����' then begin result:=   '�Ｚ'; exit; end;
if m='��ɽǫ' then begin result:=   '���'; exit; end;
if m='������' then begin result:=   '�ﶡ'; exit; end;
if m='��ˮʦ' then begin result:=   '����'; exit; end;
if m='���׸�' then begin result:=   '���'; exit; end;
if m='��Ϊ��' then begin result:=   '����';  end;
end;

function TForm1.guaneichonghe(s: char): boolean;
var ss: string;
  I: Integer;
begin
   ss:= '';
   if button2.Caption='��ʾ����' then
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



   c:= cong(s); //���س������
result:= '';
     for I := 0 to 11 do
      begin
           DeCodeDate(g_date+i,Y,M,D);
       ss:= GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));
       if ss[2]=c then
         begin
          result:= c+'��'+ s+ datetostr(g_date+i)+ss;
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
          result:=result+' '+ c+'��'+ s+ inttostr(y)+'��'+inttostr(m)+'��'+ss;
          break;
         end;
      end;



end;

function TForm1.hehe(s: char): string;
begin
   result:= '';
  case s of
  '��': result:= '��';
  '��': result:= 'δ';
   '��': result:= '��';
  'δ': result:= '��';
  '��': result:= '��';
  '��': result:= '��';
  'î': result:= '��';
  '��': result:= '��';
  '��': result:= '��';
  '��': result:= 'î';
  '��': result:= '��';
  '��': result:= '��';
  end;
end;

procedure TForm1.hua(const y: array of tyao; d: tdate);
var
  I,tg_xishu: integer;
  ss,tmp,tg_zhu,tg_fu,tg_bian: string;

begin

  if liuyao1[0].guaming='' then
     exit;

 tg_xishu:= 0; //��ɽ��ʱ��ʾ��ɵ�λ��

     with paintbox1.Canvas do
      begin
       Brush.Color:= clBtnFace;
       fillrect(rect(0,0,paintbox1.width,paintbox1.height));
       pen.Width:= 1;
       pen.Color:= clBlack;
       Rectangle(0,0,paintbox1.width,paintbox1.height);
        //������
     {  moveto(8,58+3*hanggao);
       lineto(657,58+3*hanggao);    }


       font.Color:= clblack;

      { font.Size:= 14;
        tmp:= copy(label9.Caption,5,5);

        TextOut(12,2,tmp);
        font.Color:= clPurple;
        TextOut(100,2,����);
        font.Color:= clblack;  }
      // font.Size:= 16;


       font.Size:= 18;
        if ���Է�ʽ='��ɽ��' then
         begin
          tg_xishu:= 1;
          TextOut(540,8,���Է�ʽ);
           if checkbox4.Checked then
            begin
              tg_zhu:= changshan_tiangan(liuyao1[0].guaming); //ȡ�ò�ɽ�������
              if button2.Enabled then
               tg_bian:= changshan_tiangan(liuyao2[0].guaming); //ȡ�ò�ɽ�������
              if ��������<>'' then
               tg_fu:= changshan_tiangan(��������);
            end;
         end;

      TextOut(171+ tiangan_kuan*tg_xishu,30,liuyao1[0].guaming+ get_guihun_youhun(liuyao1[0].guaming));
      if button2.Enabled then
       TextOut(405+ tiangan_kuan*2*tg_xishu,30,liuyao2[0].guaming+ get_guihun_youhun(liuyao2[0].guaming));



       for I := 0 to 5 do
         begin
          //memo4.Lines.Add('ѭ����ʼ'+inttostr(GetTickCount));
           font.Size:= 18;
           font.Color:= clblack;
           TextOut(8,64+i*hanggao,y[i].liushou);

          // memo4.Lines.Add('ѭ���м�a'+inttostr(GetTickCount));

              ss:= y[i].fushen;
              if CheckBox1.Checked and (ss<>'') { and guaneichonghe(ss[3]) }then
                  font.Color:= ������ɫ(bianse[0,i]);  //�����ɫ

              if y[i].fushen<>'' then
              begin
               TextOut(65,64+i*hanggao,copy(y[i].fushen,1,4));
               TextOut(115+ tiangan_kuan*tg_xishu,64+i*hanggao,copy(y[i].fushen,5,4));
              end;
                 font.Color:= clblack;

               //  memo4.Lines.Add('ѭ���м�b'+inttostr(GetTickCount));

            {
            if (y[i].shiying='��') or (y[i].shiying='Ӧ') then
               font.Style:= [fsBold];  }

           TextOut(171+ tiangan_kuan*tg_xishu,64+i*hanggao,y[i].liuqin);
             ss:= y[i].nazhi;
              if CheckBox1.Checked and (ss<>'') then
                 font.Color:= ������ɫ(bianse[1,i]);
                 //�����ɫ

           TextOut(221+ tiangan_kuan*2*tg_xishu,64+i*hanggao,y[i].nazhi);
           font.Color:= clblack;

           TextOut(333+ tiangan_kuan*2*tg_xishu,64+i*hanggao,y[i].shiying);

           if button2.Enabled then
              TextOut(565+ tiangan_kuan*3*tg_xishu,64+i*hanggao,liuyao2[i].shiying);

           font.Style:= [];

               ss:= y[i].bianyao;
              if CheckBox1.Checked and (ss<>'') then
                 font.Color:= ������ɫ(bianse[2,i]);
                  //�����ɫ

            // memo4.Lines.Add('ѭ���м�c'+inttostr(GetTickCount));


              if y[i].yaogua<3 then //�������ڱ�س  3������4����
                 font.Color:= clWindowFrame;
           if y[i].bianyao<>'' then
           begin
            TextOut(405+ tiangan_kuan*2*tg_xishu,64+i*hanggao,copy(y[i].bianyao,1,4));
            TextOut(455+ tiangan_kuan*3*tg_xishu,64+i*hanggao,copy(y[i].bianyao,5,4));
           end;
                  font.Color:= clblack;

              //  if (y[i].shiying='��') then
              //  imagelist1.Draw(paintbox1.Canvas,365,68+i*hanggao,2,true);

               { if andong(i) then
                imagelist1.Draw(paintbox1.Canvas,246,68+i*hanggao,1,true);  }
             // memo4.Lines.Add('ѭ���м�1'+inttostr(GetTickCount));

            case y[i].yaogua of
              1: begin
                 Brush.Color:= clBlack;
                 fillrect(rect(275+ tiangan_kuan*2*tg_xishu,
                            70+i*hanggao,325+ tiangan_kuan*2*tg_xishu,82+i*hanggao));
                 if button2.Enabled then
                   fillrect(rect(507+ tiangan_kuan*3*tg_xishu,
                           70+i*hanggao,557+ tiangan_kuan*3*tg_xishu,82+i*hanggao));  //��س
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
                       70+i*hanggao,557+ tiangan_kuan*3*tg_xishu,82+i*hanggao));  //��س
                 Brush.Color:= clBtnFace;
                 font.Size:= 12;
                  TextOut(370+ tiangan_kuan*2*tg_xishu,64+i*hanggao,'x->');
                 end;
            end;

            if n17.Checked then
              begin
               //������ԣ�Ѯ�պͳ��ջ���ʹ�����Ե����
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
                  TextOut(161,64+i*hanggao,'��ʵ')
                  else
                  TextOut(161,64+i*hanggao,'��');

                  
              end;
              if CheckBox2.Checked and  (ss<>'') then
                  TextOut(161,78+i*hanggao,wangxiang(ss));

            font.Color:= rgb(235,205,0);

            ss:= y[i].nazhi;
             if CheckBox2.Checked and ((G_xunkong[0]= ss[1]) or (G_xunkong[1]= ss[1])) then
              begin
                  if cong(ss[1])=ri[1] then
                  TextOut(305,64+i*hanggao,'��ʵ')
                  else
                  TextOut(305,64+i*hanggao,'��');

              end;

              if CheckBox2.Checked then
                TextOut(305,78+i*hanggao,wangxiang('AB'+ss));

            font.Color:= rgb(235,205,0);
           // memo4.Lines.Add('ѭ���м�2'+inttostr(GetTickCount));

            ss:= y[i].bianyao;
             if CheckBox2.Checked and (ss<>'') and ((G_xunkong[0]= ss[3]) or (G_xunkong[1]= ss[3])) then
              begin
                  if cong(ss[3])=ri[1] then
                  TextOut(557,64+i*hanggao,'��ʵ')
                  else
                  TextOut(557,64+i*hanggao,'��');

              end;
              if CheckBox2.Checked and (ss<>'') then
                TextOut(585,64+i*hanggao,wangxiang(ss));
            font.Color:= rgb(255,215,0);

             if CheckBox2.Checked and (ss<>'') then
              begin
                tmp:= y[i].nazhi;
                  tmp:= jintui(tmp[1],ss[3]);
                  if tmp='����' then
                    begin
                      font.Color:= clblue;
                      textout(557,78+i*hanggao,tmp);
                    end;
                  if tmp='�˻�' then
                    begin
                      font.Color:= clBlack;
                      textout(557,78+i*hanggao,tmp);
                    end;
                  tmp:= y[i].nazhi;
                  tmp:= by_shengke(tmp[2],ss[4]);
                  if tmp='��ͷ��' then
                    begin
                      font.Color:= clblue;
                      textout(585,78+i*hanggao,tmp);
                    end;
                  if tmp='��ͷ��' then
                    begin
                      font.Color:= clBlack;
                      textout(585,78+i*hanggao,tmp);
                    end;
              end;
             if checkbox4.Checked then
             begin
               Brush.Style := bsClear;
                 if ���Է�ʽ='��ɽ��' then
                 begin
                  font.Size:= 18;
                  font.Color:= clBlack;
                   TextOut(241,64+i*hanggao,tg_zhu[i+1]);
                  if ��������<>'' then
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
                              begin      //��ʾ���
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
                              end;   //�����ʾ���
                          end;
              end;
         end; //end for i



         font.Color:= clblack;
       font.Size:= 14;
      //  tmp:= copy(label9.Caption,5,5);

       // TextOut(12,2,tmp);
        font.Color:= clPurple;
        TextOut(20,2,����);
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
  if ((a='��') and (b='��'))
    or ((a='��') and (b='î'))
    or ((a='��') and (b='��'))
    or ((a='��') and (b='��'))
    or ((a='��') and (b='��'))
    or ((a='��') and (b='δ'))
    or ((a='δ') and (b='��'))
    or ((a='��') and (b='��'))
   then
     result:= '����'
     else if ((a='��') and (b='��'))
          or ((a='î') and (b='��'))
          or ((a='��') and (b='��'))
          or ((a='��') and (b='��'))
          or ((a='��') and (b='��'))
          or ((a='δ') and (b='��'))
          or ((a='��') and (b='δ'))
          or ((a='��') and (b='��'))
           then
             result:= '�˻�';


end;

function TForm1.jue(s: char): char;
begin
  result:= ' ';
 case s of
  'ľ': result:= '��';
  '��': result:= '��';
   '��': result:= '��';
  '��': result:= '��';
  'ˮ': result:= '��';
 end;
end;

function TForm1.keke(s: char): char;
begin
         result:= ' ';
  case s of
  'ľ': result:= '��';
  '��': result:= '��';
   '��': result:= 'ˮ';
  '��': result:= 'ľ';
  'ˮ': result:= '��';
  end;
end;

function TForm1.kekewo(s: char): char;
begin
  result:= ' ';
  case s of
  'ľ': result:= '��';
  '��': result:= 'ˮ';
   '��': result:= 'ľ';
  '��': result:= '��';
  'ˮ': result:= '��';
  end;
end;

procedure TForm1.Label10DblClick(Sender: TObject);
begin
  memo2.Clear;
  memo2.Lines.Add(label10.Caption);
  memo2.SelectAll;
  memo2.CopyToClipboard;
  memo2.Clear;
  showmessage('�Ѿ����浽�����塣');
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
 ss:= inputbox('�����µ�Ѯ�ճ�������','���� ',datetostr(date));
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
     showmessage('�޷���ȡid'+ ss);
     exit;
   end;

    id:= IdDecode(id);

   if �Ƿ�ʹ������=1 then
    gua_shangxia.Add(id+'(����)')
    else
       gua_shangxia.Add(id+'(����)');

  inc(gua_index_g);

  listbox1.Visible:= false;

   if (b=false) and (�Ƿ�ʹ������=1) then
   ����id����������(strtoint(id))
   else
    ����id�����Ա���(strtoint(id));

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
     //�Ա��
    
    ListBox1.Canvas.Font.Color:= clactiveborder;
    j:= pos(';',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox1.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss2);
    k:= k+ ListBox1.Canvas.TextWidth(ss2);

    //����
    ListBox1.Canvas.Font.Color:= clwindowtext;
    ListBox1.Canvas.Font.Style:= [fsbold];
    j:= pos(';',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox1.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss2);
    k:= k+ ListBox1.Canvas.TextWidth(ss2);

    //ʣ�ಿ��
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

  if tg='����' then
     k:= 0;
  if tg='����' then
     k:= 1;
  if tg='����' then
     k:= 2;
  if tg='����' then
     k:= 3;
  if tg='����' then
     k:= 4;
  if tg='�ɹ�' then
     k:= 5;

     if k=-1 then
      showmessage('���޲�������');

     for I := 5 downto 0 do
       begin
        j:= (5-i+ k) mod 6;

        liuyao1[i].liushou:= lius[j];
        liuyao2[i].liushou:= lius[j];
       end;
 { str:= Tstringlist.Create;
   str.Delimiter:='��';

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
     end else showmessage('���ݿ������޲�ȫ');

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
   label14.Caption:='������';
   button28.Visible:= false;
   memo1.Visible:= false;
   memo3.Top:= 126;
   memo3.Height:=284;
  end else begin
  label14.Caption:='���';
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
  'ľ': result:= 'δ';
  '��': result:= '��';
   '��': result:= '��';
  '��': result:= '��';
  'ˮ': result:= '��';
 end;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  //����
 { n18.Checked:= false;
  n19.Checked:= false;
  n20.Checked:=false; }

  get_tiangandizhi(g_date);
  button11.Click;
end;

procedure TForm1.N18Click(Sender: TObject);  //����
    var Y,M,D:Word;
    // hh,mm,ss,ms: word;
begin

  n17.Checked:= false;
  n19.Checked:= false;
  n20.Checked:=false;

   DeCodeDate(g_date,Y,M,D);
  // decodetime(g_time,hh,mm,ss,ms);
   yue:=  GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d))+'(��)';
    ri:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))+'(��)';
    //ri:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d));


   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);

   button11.Click;
end;

procedure TForm1.N19Click(Sender: TObject);  //��ʱ
    var Y,M,D:Word;
     hh,mm,ss,ms: word;
begin

  n17.Checked:= false;
  n18.Checked:= false;
  n20.Checked:=false;

   DeCodeDate(g_date,Y,M,D);
    decodetime(g_time,hh,mm,ss,ms);
 //  yue:=  GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d))+'(��)';
  //  ri:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))+'(��)';
    yue:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d))+'(��)';
      ri:=  GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))+'(ʱ)';

   label5.Caption:= yangmuyinmu(yue[2]);
   label6.Caption:= yangmuyinmu(ri[2]);

   label9.Caption:= xunkong_shi('',0);
     button11.Click;
end;


procedure TForm1.N20Click(Sender: TObject); //ʱ��
var Y,M,D:Word;
     hh,mm,ss,ms: word;
begin

  n17.Checked:= false;
  n18.Checked:= false;
  n19.Checked:=false;

   DeCodeDate(g_date,Y,M,D);
    decodetime(g_time,hh,mm,ss,ms);
 //  yue:=  GetGanZhiFromNumber(GetGanZhiFromYear(y,m,d))+'(��)';
  //  ri:=  GetGanZhiFromNumber(GetGanZhiFromMonth(y,m,d))+'(��)';
   // yue:=   GetGanZhiFromNumber(GetGanZhiFromDay(y,m,d))+'(��)';
    //  ri:=  GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))+'(ʱ)';
     yue:= GetGanZhiFromNumber(GetGanZhiFromHour(y,m,d,hh))+'(ʱ)';
     ri:= get_shifen(yue,g_time) +'(��)';

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
  showmessage('ufo2003@126.com ��Ȩ����');
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
        if x<198 then  //�е�λ��
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

   if  button2.Caption= '��ʾ����' then
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
          goto pp; //�������ʱ����һ��
        end;

      if IdHTTP1.Response.ContentEncoding = 'gzip' then
       begin
         outstr:= TStringStream.Create('',TEncoding.UTF8);
         memstr.Position:= 0;
         IdCompressorZLib1.DecompressGZipStream(memstr, outstr);
         outstr.Position := 0;
         result:= outstr.DataString;
         //memo1.Lines.Add('ѹ��ǰ'+inttostr(outstr.Size));
         //memo1.Lines.Add('ѹ����'+inttostr(memstr.Size));

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
  ���Է�ʽ:='����ʽ'
  else
    ���Է�ʽ:='��ɽ��';

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
   button2.Caption:= '��ʾ����';
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
 button8.Click;
end;

function TForm1.shanhe: string;     //********************************* ���Ͼ�
var ss: string;
  k: Integer;
    function sh: string;
     var tmp,st: string;
         i: integer;
     begin
      result:= '';
       if ((liuyao1[0].yaogua>2) or andong(0)) and ((liuyao1[2].yaogua>2)or andong(2)) then
        begin                     //���4,6�;�
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
            result:= result + ss+'(4,6س)'+hedaicong(ss[2])+ #13#10;
          if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //������س�ڣ�3ȱ1
               result:= result + ss+'(4,6���)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;
        end;

       if ((liuyao1[3].yaogua>2) or andong(3)) and ((liuyao1[5].yaogua>2)or andong(5)) then
        begin                       //��� 1,3�;�
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
            result:= result + ss+'(1,3س)'+hedaicong(ss[2])+ #13#10;
          if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //������س�ڣ�3ȱ1
               result:= result + ss+'(1,3���)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;
        end;

        tmp:= ss;
        k:= 0;
        for I := 0 to 5 do  //����Ƿ���3����ҡ���;ֵ�
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
            result:= result + ss+'(3�����򰵶�س�Ͼ�)'+hedaicong(ss[2])+ #13#10;
        if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //������س�ڣ�3ȱ1
               result:= result + ss+'(3�����򰵶�س���)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;

       tmp:= ss;  //����Ƿ���2����ҡ�����º;ֵ�
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
            result:= result + ss+'(2�����򰵶�س+�ջ��ºϾ�)'+hedaicong(ss[2])+ #13#10;
          if k=2 then
           begin
             if pos(ss[2],tmp)=0 then
              begin
                //������س�ڣ�3ȱ1
               result:= result + ss+'(2�����򰵶�س���)'+banheDaihe(tmp[1])+ #13#10;
              end;
           end;

        tmp:= ss;  //����Ƿ���2����ҡ��һ����س�;ֵ�
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
            result:= result + ss+'(2�����򰵶�س+һ����س�Ͼ�)'+ hedaicong(ss[2])+ #13#10;
     end;
begin
  ss:= '��îδ��ľ��';
  result:= sh;

  ss:= '������ϻ��';
  result:= result+' '+ sh;
  ss:= '���ϳ�Ͻ��';
  result:= result+' ' + sh;
  ss:= '���ӳ���ˮ��';
  result:= result+' ' +sh;
  ss:= '�����δ�Ժ�����';
  result:= result+' ' +sh;

  ss:= '����δ���̾�';
  result:= result+' ' +sh;
  ss:= '���������̾�';
  result:= result+' ' +sh;


end;

function TForm1.sheng(s: char): char;
begin
      result:= ' ';
  case s of
  'ľ': result:= '��';
  '��': result:= '��';
   '��': result:= '��';
  '��': result:= 'ˮ';
  'ˮ': result:= 'ľ';
  end;
end;

function TForm1.shengwo(s: char): char;
begin
  result:= ' ';
  case s of
  'ľ': result:= 'ˮ';
  '��': result:= 'ľ';
   '��': result:= '��';
  '��': result:= '��';
  'ˮ': result:= '��';
  end;
end;

function TForm1.si(s: char): char;
begin
  result:= ' ';
 case s of
  'ľ': result:= '��';
  '��': result:= '��';
   '��': result:= 'î';
  '��': result:= '��';
  'ˮ': result:= 'î';
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
    str.DelimitedText:= ȡ����Ϣ;

    if str.Count>0 then
     begin
      if not TryStrToInt(str.Values['app_v'],i) then
         i:= 0;
      if i>app_v then
       label12.Caption:='���°汾������ '+ str.Values['app_msg']+' '
       else  label12.Caption:= '';

       label12.Caption:= label12.Caption+ str.Values['msg'];
     end;
   str.Free;

end;

procedure TForm1.tian_tiangan(const gm: string; flag: integer);
var ss: string;
begin
  //�����ɣ�flag=1��ʾ����2=���ԣ�3=����
  ss:= get_tiangan_by_gua(gm);
  if ss='' then
   begin
   showmessage('��ȡ���Ϊ�ա�');
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
  �����࣬˥���ݣ���----����֮�µ���سΪ����
  ������ռ�ߣ������꣬�Ͻ�سΪ����
  �½�����֮سΪ�ࡣ
  ���½�֮سΪ˥���½�����֮س������½�֮سΪ������
  �������½�������سΪ����
  ��ʵ----����֮س��ǡ���ճ���ͬ
  }
  result:= '';
  if s[4]=label5.Caption[2] then
    begin
     result:= '��';
     paintbox1.Canvas.font.Color:= clred;
    end;
  if sheng(label5.Caption[2])=s[4] then
   begin
     result:= result +'��';
     paintbox1.Canvas.font.Color:= clred;
   end;
   if label5.Caption[2]=sheng(s[4]) then
    begin
     result:= '˥';
     paintbox1.Canvas.font.Color:= rgb(210,105,30);
    end;
   if (label5.Caption[2]=keke(s[4])) then
   begin
     result:= '��';
     paintbox1.Canvas.font.Color:= rgb(180,105,30);
   end;

     if (s[4]=keke(label5.Caption[2])) then
     begin
     result:= '��';
     paintbox1.Canvas.font.Color:= rgb(94,38,18);
     end;

    if (yue[2]=cong(s[3])) then
     begin
      if ri[2]=s[3] then
      result:= result+ '��ʵ'
      else
      result:= result +'����';
     end;

    if (yue[2]=hehe(s[3])) then
      result:= result +'�º�';
    if ri[2]=cong(s[3]) then
      result:= result +'�ճ�';
    if ri[2]=hehe(s[3]) then
      result:= result +'�պ�';


    if s[4]=sheng(label6.Caption[2]) then
      result:= result +'����';
    if s[4]=keke(label6.Caption[2]) then
      result:= result +'�տ�';

      if ri[2]=s[3] then
      result:= result +'����'
      else
      if s[4]=label6.Caption[2] then
        result:= result +'�շ�';


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
       if ss='����' then
        begin
         G_xunkong[0]:= '��';
         G_xunkong[1]:= '��';
         // if (s='��')or (s='��') then
           result:= '����Ѯ��(�纥��)';

           exit;
        end;
       if ss='����' then
        begin
          G_xunkong[0]:= '��';
         G_xunkong[1]:= '��';
         // if (s='��')or (s='��') then
           result:= '����Ѯ��(�ӳ��)';

           exit;
        end;
       if ss='����' then
        begin
         G_xunkong[0]:= '��';
         G_xunkong[1]:= '��';
        //  if (s='��')or (s='��') then
           result:= '����Ѯ��(���Ͽ�)';

           exit;
        end;
       if ss='����' then
        begin
         G_xunkong[0]:= '��';
         G_xunkong[1]:= 'δ';
        //  if (s='��')or (s='δ') then
           result:= '����Ѯ��(��δ��)';

           exit;
        end;
       if ss='����' then
        begin
         G_xunkong[0]:= '��';
         G_xunkong[1]:= '��';
        //  if (s='��')or (s='��') then
           result:= '����Ѯ��(���ȿ�)';

           exit;
        end;
       if ss='�׳�' then
        begin
          G_xunkong[0]:= '��';
         G_xunkong[1]:= 'î';
        //  if (s='��')or (s='î') then
           result:= '�׳�Ѯ��(��î��)';

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
   a:= '���ұ����켺�����ɹ�';
   b:='�ӳ���î������δ�����纥';
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
    1: result:= '�ӳ�';
    3:result:= '��î';
    5:result:= '����';
    7:result:= '��δ';
    9:result:= '����';
    11: result:= '�纥';
   end;

   result:= '('+result+'��)';
end;

function TForm1.xunkong_shi(const s: string; d: tdate): string;
begin
result:= '';
   if (yue[1]='��') or (yue[1]='��') then
    begin
      if pos(ri[2],'�ӳ���î������δ����')>0 then
        begin
          G_xunkong[0]:= '��';
          g_xunkong[1]:= '��';
          result:= '����Ѯ���纥�գ�';
        end else begin
           G_xunkong[0]:= '��';
          g_xunkong[1]:= '��';
          result:= '����Ѯ�����Ͽգ�';
        end;
    end;

    if (yue[1]='��') or (yue[1]='��') then
    begin
      if pos(ri[2],'�ӳ���î������δ')>0 then
        begin
          G_xunkong[0]:= '��';
          g_xunkong[1]:= '��';
          result:= '����Ѯ�����Ͽգ�';
        end else begin
           G_xunkong[0]:= '��';
          g_xunkong[1]:= 'δ';
          result:= '����Ѯ����δ�գ�';
        end;
    end;

    if (yue[1]='��') or (yue[1]='��') then
    begin
      if pos(ri[2],'�ӳ���î����')>0 then
        begin
          G_xunkong[0]:= '��';
          g_xunkong[1]:= 'δ';
          result:= '����Ѯ����δ�գ�';
        end else begin
           G_xunkong[0]:= '��';
          g_xunkong[1]:= '��';
          result:= '����Ѯ�����ȿգ�';
        end;
    end;

    if (yue[1]='��') or (yue[1]='��') then
    begin
      if pos(ri[2],'�ӳ���î')>0 then
        begin
          G_xunkong[0]:= '��';
          g_xunkong[1]:= '��';
          result:= '����Ѯ�����ȿգ�';
        end else begin
           G_xunkong[0]:= '��';
          g_xunkong[1]:= 'î';
          result:= '�׳�Ѯ����î�գ�';
        end;
    end;

    if (yue[1]='��') or (yue[1]='��') then
    begin
      if pos(ri[2],'�ӳ�')>0 then
        begin
          G_xunkong[0]:= '��';
          g_xunkong[1]:= 'î';
          result:= '�׳�Ѯ����î�գ�';
        end else begin
           G_xunkong[0]:= '��';
          g_xunkong[1]:= '��';
          result:= '����Ѯ���ӳ�գ�';
        end;
    end;

end;

function TForm1.zhuangbianyaoliuqin(s: string): string;
var c: char;
begin
 if ���Է�ʽ='����ʽ' then
  c:= label3.Caption[4]
  else
   c:=ȡ�������ֵ�س����;

  if s[2]=c then
    result:='�ֵ�'
    else if keke(c)=s[2] then
             result:='�޲�'
    else if sheng(c)=s[2] then
             result:='����'
    else if keke(s[2])=c then
             result:='�ٹ�'
    else if sheng(s[2])=c then
             result:='��ĸ'
             else
             result:='����';

end;

procedure TForm1.zhuangfushen;
var str: Tstringlist;
  I,j: Integer;
  ss: string;
  yy: array[0..5] of tyao;
  k: integer;
  b: boolean;
begin
��������:= ''; //ȫ�ֱ�������Ϊ��
   str:= Tstringlist.Create;
     str.Add('��ĸ');
     str.Add('�ֵ�');
     str.Add('����');
     str.Add('�޲�');
     str.Add('�ٹ�');

     for I := 0 to 5 do
      if str.IndexOf( liuyao1[i].liuqin)>= 0 then
         str.Delete(str.IndexOf( liuyao1[i].liuqin));

    if str.Count>0 then
     begin
       for I := 0 to str.Count - 1 do
         begin
           ss:= getfirststring('select value1 from bagua where gm='''+ liuyao1[0].guaming+'''' );
           if ss<>'' then
             ss:= ss[1]; //ȡ����
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
                  system.delete(ss,1,pos('��',ss));
                  ss:= copy(ss,1,pos('��',ss)-1); //�õ���������

                       //���������ɣ�flag=1
                       tian_tiangan(ss,1);

                   fillchar(yy,sizeof(yy),#0);
                   yy[0].guaming:= ss;
                   ��������:= ss;
                     zhuangliuqinnajia(yy); //���
                       if ���Է�ʽ='��ɽ��' then
                        begin
                         for k := 0 to 5 do
                            yy[k].liuqin:=  zhuangbianyaoliuqin(yy[k].nazhi);
                        end;

                     for k := 5 downto 0 do
                       if yy[k].liuqin=str.Strings[i] then
                          begin
                             liuyao1[k].fushen:= yy[k].liuqin+yy[k].nazhi;
                            b:= true;
                            break; //����kѭ��
                          end;
                       if b then
                        break; //����ҵ�����������jѭ��
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
  //��ʱ���ܼ��
 // k:= GetTickCount;
  //str1:= tstringlist.Create;

screen.Cursor:= crhourglass;
label9.Caption:='';
label10.Caption:='';

   fillchar(liuyao2,sizeof(liuyao2),#0); //��ʼ����س


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
   //ȡ��������
   liuyao1[0].guaming:= getNameByyaofu(liuyao1);
   label2.Caption:= '���ԣ�'+ liuyao1[0].guaming+get_guihun_youhun(liuyao1[0].guaming);
    label3.Caption:= getfirststring('select value1 from bagua where gm='''+ liuyao1[0].guaming+'''');
     if label3.Caption<>'' then
      begin
       // ��С����(label3.Caption[1],image1);
        label3.Caption:= label3.Caption + ' ����:'+ȡ�ð�������(label3.Caption[1])+' ��λ:'+ȡ�ð��Է�λ(label3.Caption[1]);
      end;
    label4.Caption:= '';
     //������Ե���ɣ�flag=2
     tian_tiangan(liuyao1[0].guaming,2);

    // str1.Add('��ͷ��'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
   //װ����
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

    // str1.Add('װ���ޣ�'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
   //װ�ɼ�
    zhuangliuqinnajia(liuyao1);

   // str1.Add('װ�ɼף�'+inttostr(GetTickCount-k));
   //  k:= GetTickCount;
    //�ж��Ƿ��б�س

    b:= false; //�ж��Ƿ��س
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

     button2.Caption:= '��ʾ����';
     if b then
     begin
       //�б�س
       liuyao2[0].guaming:= getNameByyaofu(liuyao2);
       label2.Caption:= label2.Caption+ ' ���ԣ�'+ liuyao2[0].guaming+get_guihun_youhun(liuyao2[0].guaming);
       zhuangliuqinnajia(liuyao2);

           //�����Ե���ɣ�flag=3
            tian_tiangan(liuyao2[0].guaming,3);

         for i := 0 to 5 do
           begin
           // liuyao2[i].liushou:= liuyao1[i].liushou;  װ����ʱ��һ��װ����
            liuyao2[i].liuqin:= zhuangbianyaoliuqin(liuyao2[i].nazhi);

             if (liuyao1[i].yaogua>=3) or checkbox3.Checked or  (checkbox5.Checked and andong(i)) then
                liuyao1[i].bianyao:= liuyao2[i].liuqin+ liuyao2[i].nazhi
                else
                  liuyao1[i].bianyao:='';

           end; // end for i

       label4.Caption:= getfirststring('select value1 from bagua where gm='''+ liuyao2[0].guaming+'''');
        if label4.Caption<>'' then
          begin
           // ��С����(label4.Caption[1],image2);
            label4.Caption:= label4.Caption + ' ����:'+ȡ�ð�������(label4.Caption[1])+' ��λ:'+ȡ�ð��Է�λ(label4.Caption[1]);
          end;

     end;
     button2.Enabled:=b;

    // str1.Add('װ���ԣ�'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
     //װ����
      zhuangfushen;
     //  str1.Add('װ����'+inttostr(GetTickCount-k));
    // k:= GetTickCount;
     //������
     hua(liuyao1,d);

    // str1.Add('������'+inttostr(GetTickCount-k));
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
    // ADOConnection1.Execute('insert into �Զ�����(��ֵ) values('''+ss +���Է�ʽ +'T:'+timetostr(G_time)+''')');

  //�����ͼƬ����ô��ť����
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
       if ���Է�ʽ='����ʽ' then
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
                  if ss='��' then
                     y[j-1].shiying:= '��';
                  if ss='Ӧ' then
                     y[j-1].shiying:= 'Ӧ';
                 end;
    end;
    str.Free;
end;

procedure TForm1.zhuangliushou(tg: char);
begin
  if (tg='��') or (tg='��') then
     liushou_base('����');
  if (tg='��') or (tg='��') then
     liushou_base('����');
  if (tg='��') then
     liushou_base('����');
  if (tg='��')  then
     liushou_base('����');
  if (tg='��') or (tg='��') then
     liushou_base('����');
  if (tg='��') or (tg='��') then
     liushou_base('�ɹ�');
end;

function TForm1.�������ͷ���(b: integer): boolean;  //1������2���淴����3 ������
var str1: tstringlist;
     ss,ben: string;
begin
result:= true;
if gua_weiyi_bianhao_g='' then
 begin
   showmessage('�Ե�Ψһ���Ϊ�գ��޷����档');
   result:= false;
   exit;
 end;
if shuzi_id='' then
   shuzi_id:= '0';
 if �Ƿ�ʹ������=1 then
   begin
    //������ﵽ���硣��Ҫ�ȼ�����Ƿ���ڣ�����������������
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
     showmessage('���籣��ʧ�ܣ�������Ϣ��'+ss);
     end;

   end;

   if result and (�Ƿ�ʹ������=1) then
    ben:= '0'
    else
     ben:= '1';
   //�ڱ���Ҳ�������ͷ�����Ҳ���ȼ�����Ƿ���ڣ��������������
   if getFirstInteger('select count(*) from gua_table where gua_bianhao='''+gua_weiyi_bianhao_g+'''')=0 then
   begin
     //���һ����¼
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

function ȡ��������(S: char): integer;
begin
 //Ǭһ���Ҷ������������ģ����壬���������ߣ�����
  case s of
   'Ǭ':result:= 1;
   '��':result:= 2;
   '��':result:= 3;
   '��':result:= 4;
   '��':result:= 5;
   '��':result:= 6;
   '��':result:= 7;
   '��':result:= 8;
   else
    result:= 0;
  end;
end;

function ȡ��������(S: char): integer;
begin
 //��һ�����������������ġ���Ϊ�й���Ǭ�������ߡ��ްˡ����
   case s of
   '��':result:= 1;
   '��':result:= 2;
   '��':result:= 3;
   '��':result:= 4;
   '��':result:= 5;
   'Ǭ':result:= 6;
   '��':result:= 7;
   '��':result:= 8;
   '��':result:= 9;
   else
    result:= 0;
  end;
end;

function TForm1.ȡ�������ֵ�س����: char;
var i: integer;
    ss: string;
begin
result:= ' ';
ss:= '';

  for I := 0 to 5 do
     if liuyao1[i].liuqin='�ֵ�' then
        ss:= liuyao1[i].nazhi;

     if ss<>'' then
         result:= ss[2]
         else begin
          ss:=liuyao1[0].nazhi;
            if liuyao1[0].liuqin='��ĸ' then
               result:= sheng(ss[2])
            else if liuyao1[0].liuqin='�ٹ�' then
               result:= keke(ss[2])
            else if liuyao1[0].liuqin='�޲�' then
               result:= kekewo(ss[2])
               else if liuyao1[0].liuqin='����' then
               result:= shengwo(ss[2]);

         end;


end;

function TForm1.ȡ�ð�������(s: char): string;
begin
  if radiobutton6.Checked then
   result:= inttostr(ȡ��������(s))
   else
     result:= inttostr(ȡ��������(s));
end;


function ȡ���췽λ(S: char): string;
begin
//Ǭ�ϣ��������붫���������Ҷ��ϣ��𶫱��������ϣ�������
    case s of
   'Ǭ':result:= '��';
   '��':result:= '����';
   '��':result:= '��';
   '��':result:= '����';
   '��':result:= '����';
   '��':result:= '��';
   '��':result:= '����';
   '��':result:= '��';
   else
    result:= '';
  end;
end;

function ȡ���췽λ(S: char): string;
begin
 //�𶫣����������ϣ�������Ǭ�����������ϣ��޶������㶫��
  case s of
   '��':result:= '��';
   '��':result:= '����';
   '��':result:= '��';
   '��':result:= '����';
   '��':result:= '��';
   'Ǭ':result:= '����';
   '��':result:= '��';
   '��':result:= '����';
   '��':result:= '��';
   else
    result:= '';
  end;
end;

function TForm1.ȡ�ð��Է�λ(s: char): string;
begin
  if radiobutton4.Checked then
  result:= ȡ���췽λ(s)
  else
    result:= ȡ���췽λ(s);
end;

function TForm1.ȡ����Ϣ: ansistring;
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

function TForm1.����id�����Ա���(id: integer):boolean;
var ss: string;
begin
  //�ӱ���������
  //save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou
  ss:= '';
  gua_id_g:= id;
  shuzi_id:= '0'; //�������ͷ���ʱ�õ����id,���������ֵΪ��
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
           if (save_xingbie<>'δ֪') and (save_xingbie<>'') then
              ss:= '�Ա�:'+save_xingbie+' ';
           if save_chusheng<>'' then
              ss:= '����:'+save_chusheng+' ';
          ����:= ss +'ռ��'+save_shiyou;

           edit1.Text:= save_gua_bianhao;
           button8.Click; //��ʾ��

           ss:= inttostr(gua_id_g)+'(����)';
           if gua_shangxia.IndexOf(ss)=-1 then
           begin
             gua_shangxia.Add(ss);
            inc(gua_index_g);
           end;
         end else result:= false;
    end;
end;

procedure TForm1.����id����������(id: integer);
var
    str1: tstringlist;
    ss: string;
begin
 //save_ ϵ�б��������������Ժ󱣴����������ڱ������ʱ������
  //save_gua_ming,save_gua_bianhao,save_lei_id,save_nian,save_yue,save_ri,save_xingbie,save_chusheng,save_shiyou
  ss:= '';
      gua_id_g:= id;
      shuzi_id:= inttostr(id); //�������ͷ���ʱ�õ����id
     str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('guaid='+aes_encrypt(inttostr(id)));
    screen.Cursor:= crhourglass;
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/loadgua.php',str1);
    screen.Cursor:= crdefault;
        str1.Free;
          if ss='neterror' then
        begin
          showmessage('����������Ժ�����,һ���һ�����Ӽ��ɻָ���');
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
           if (save_xingbie<>'δ֪') and (save_xingbie<>'') then
              ss:= '�Ա�:'+save_xingbie+' ';
           if save_chusheng<>'0' then
              ss:= '����:'+save_chusheng+' ';
            ����:= ss+'ռ��'+save_shiyou;
           edit1.Text:= save_gua_bianhao;
           button8.Click; //��ʾ��
            ss:= inttostr(gua_id_g)+'(����)';
           if gua_shangxia.IndexOf(ss)=-1 then
           begin
             gua_shangxia.Add(ss);
            inc(gua_index_g);
           end;

         end else showmessage('������û�������������');



end;

procedure TForm1.��С����(s: char; img: timage);
begin
   img.Canvas.FillRect(rect(0,0,38,30));
   case s of
   '��':begin
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
   '��':begin
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
   '��':begin
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
   '��':begin
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
   'Ǭ':begin
         with img.Canvas do
          begin
           Brush.Color:= clBlack;
           fillrect(rect(0,0,38,8));

           fillrect(rect(0,11,38,19));

           fillrect(rect(0,22,38,30));

           Brush.Color:= clBtnFace;

          end;
        end;
   '��':begin
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
   '��':begin
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
   '��':begin
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

function TForm1.������ɫ(i: integer): tcolor;
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
