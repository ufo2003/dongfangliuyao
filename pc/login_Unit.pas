unit login_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,shellapi, ComCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tlogin_Form = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button3: TButton;
    IdHTTP1: TIdHTTP;
    Label10: TLabel;
    Label11: TLabel;
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
    procedure update_app;
    function get_http(const s: string): string;
  public
    { Public declarations }
  end;

var
  login_Form: Tlogin_Form;

implementation
   uses unit1,unit7;
{$R *.dfm}
function URLDecode(const S: string): string;
var
  Idx: Integer;   // loops thru chars in string
  Hex: string;    // string of hex characters
  Code: Integer;  // hex character code (-1 on error)
begin
  // Intialise result and string index
  Result := '';
  Idx := 1;
  // Loop thru string decoding each character
  while Idx <= Length(S) do
  begin
    case S[Idx] of
      '%':
      begin
        // % should be followed by two hex digits - exception otherwise
        if Idx <= Length(S) - 2 then
        begin
          // there are sufficient digits - try to decode hex digits
          Hex := S[Idx+1] + S[Idx+2]+S[Idx+3] + S[Idx+4];
          Code := SysUtils.StrToIntDef('$' + Hex, -1);
          Inc(Idx, 4);
        end
        else
          // insufficient digits - error
          Code := -1;
        // check for error and raise exception if found
        if Code = -1 then
          raise SysUtils.EConvertError.Create(
            'Invalid hex digit in URL'
          );
        // decoded OK - add character to result
        Result := Result + Char(Code);
      end;
      '+':
        // + is decoded as a space
        Result := Result + ' '
      else
        // All other characters pass thru unchanged
        Result := Result + S[Idx];
    end;
    Inc(Idx);
  end;
end;

function URLEncode(const S: string; const InQueryString: Boolean): string;
var
  Idx: Integer; // loops thru characters in string
begin
  Result := '';
  for Idx := 1 to Length(S) do
  begin
    case S[Idx] of
      'A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.':
        Result := Result + S[Idx];
      ' ':
        if InQueryString then
          Result := Result + '+'
        else
          Result := Result + '%20';
      else
        Result := Result + '%' + SysUtils.IntToHex(Ord(S[Idx]), 2);
    end;
  end;
end;

procedure Tlogin_Form.Button1Click(Sender: TObject);
var b: boolean;
  ss,show_ss,ming,id: string;
  strlist: Tstringlist;
  i,k: integer;
begin
b:= false;
  if edit1.Text='' then
   begin
     showmessage('请输入用户名。');
     exit;
   end;
  if edit2.Text='' then
   begin
     showmessage('请输入密码。');
     exit;
   end;

 screen.Cursor:= crhourglass;
 deletefile(application.ExeName+'2'); //删除上次的更新文件
 deletefile(application.ExeName+'3');

 button1.Enabled:= false;

  strlist:= Tstringlist.Create;
  strlist.Add('nm='+ aes_encrypt(edit1.Text));
  strlist.Add('pw='+ md5string(md5string(edit2.Text)));
  strlist.Add('pv='+ inttostr(app_v));
  //ss:= form1.post_http('http://www.finer2.com/baiduliuyao/new2018.php',strlist);
  // if pos('ok',ss)=0 then
  // showmessage(ss);

  ss:= form1.post_http('http://'+http_host+'/baiduliuyao/login.php',strlist);
  strlist.Free;
  screen.Cursor:= crdefault;
  button1.Enabled:= true;
 // showmessage(ss);

   if pos('neterror',ss)=1 then
   begin
     showmessage('网络错误，登陆失败。请稍后重试,一般过一两分钟即可恢复。');
     exit;
   end;
  if pos('no',ss)=1 then
   begin
     showmessage('账号或密码错误，不能登陆。');
     exit;
   end;
  if pos('cancel',ss)=1 then
   begin
     showmessage('该账号可能涉嫌被盗已经被禁用。可发邮件到1145975039@qq.com 重新激活');
     exit;
   end;
  if  (pos('ok<t',ss)=1) or (ss='ok') then
   begin
     b:= true;
     //其他初始化工作
     i:= 0;
     if pos('ok<t',ss)=1 then
      begin
        delete(ss,1,pos('<t>',ss)+2);
        form1.Label12.Caption:= URLDecode(copy(ss,1,pos('<msg>',ss)-1));
        delete(ss,1,pos('<msg>',ss)+4);
        url_g:= copy(ss,1,pos('<url>',ss)-1);
        delete(ss,1,pos('<url>',ss)+4);

         if strtoint(copy(ss,1,pos('<v>',ss)-1))>app_v then
          begin
            if messagebox(handle,'有新版本，是否升级？','提示',MB_YESNO)=mryes then
               update_app; //系统升级
          end;

          k:=pos('<v>',ss);
         if k>0 then
            delete(ss,1,k+2);

          k:=pos('<po2>',ss);
         if k>0 then
          begin
            delete(ss,1,k+4);
            k:= pos('</po2>',ss);
            show_ss:= copy(ss,1,k-1);
            delete(ss,1,k+5);
            if show_ss<>'没有消息' then
             begin
              Label11.Caption:= show_ss;
              showmessage(show_ss);
             end;
          end;

           k:=pos('<t>',ss);
         if k>0 then
            delete(ss,1,k+2);

        while pos('<t>',ss)>1 do
         begin
           inc(i); //计数，防止出错无穷循环
           k:=pos('<t>',ss);
          ming:= copy(ss,1,k-1);
          delete(ss,1,k+2);
           k:=pos('<t>',ss);
          id:= copy(ss,1,k-1);
          delete(ss,1,k+2);
          if form1.getFirstString('select lei_mingcheng from fenlei_table where lei_id='+id)<>ming then
             form1.ADOConnection1.Execute('update fenlei_table set lei_mingcheng='''+ming+''' where lei_id='+id);
           if i>100 then
             break;

            while pos('<t>',ss)=1 do
                delete(ss,1,3);
         end;
      end;
   end else showmessage('出现错误，信息为：'+ss);

 if b then
  begin
    if checkbox1.Checked then
     begin
       form1.ADOConnection1.Execute('update zhi set value1='''+edit1.Text+''','+
                                      'value2='''+edit2.Text+''',value4=1 where id=88');
     end;


   self.ModalResult:= mrok;
  end;

end;

procedure Tlogin_Form.Button2Click(Sender: TObject);
begin
 self.ModalResult:= mrcancel;
end;

procedure Tlogin_Form.Button3Click(Sender: TObject);
var str1: Tstringlist;
   ss: string;
begin
 //注册
 if edit3.Text='' then
  begin
    showmessage('用户名不能为空');
    exit;
  end;
 if edit4.Text='' then
  begin
    showmessage('密码不能为空');
    exit;
  end;

  if edit4.Text<>edit5.Text then
  begin
    showmessage('密码两次输入的不同');
    exit;
  end;
  if (edit6.Text='') and (edit7.Text='') then
  begin
    showmessage('手机号或者电子邮箱号必须输入一个。');
    exit;
  end;

 screen.Cursor:= crhourglass;
  str1:= Tstringlist.Create;
  str1.Add('nm='+ aes_encrypt(edit3.Text));
  str1.Add('pw='+ aes_encrypt(md5string(md5string(edit4.Text))));
  str1.Add('shouji='+aes_encrypt(edit6.Text));
  str1.Add('youxiang='+aes_encrypt(edit7.Text));
    ss:= form1.post_http('http://'+http_host+'/baiduliuyao/reg.php',str1);
   str1.Free;
   screen.Cursor:= crdefault;

       if ss='neterror' then
        begin
          showmessage('网络错误，请稍后重试。,一般过一两分钟即可恢复。');
          exit;
        end;

   if ss='no' then
    showmessage('用户名已经存在。请换个用户名。');
   if ss='cancel' then
    showmessage('注册失败。写入数据库出错。');

    if ss='ok' then
     begin
     showmessage('注册成功。');
     edit1.Text:= edit3.Text;
     edit2.Text:= edit4.Text;
     edit4.Text:= '';
     edit5.Text:= '';
     groupbox1.Visible:= false;
     self.Width:= 260;
     end else showmessage('出现错误，信息为：'+ss);

end;

procedure Tlogin_Form.CheckBox1Click(Sender: TObject);
begin
 form1.ADOConnection1.Execute('update zhi set value4='+inttostr(ord(checkbox1.Checked))+' where id=88');
end;

procedure Tlogin_Form.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    edit2.SetFocus;
    key:= #0;
  end;
end;

procedure Tlogin_Form.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:= #0;
    button1.Click;

  end;
end;

procedure Tlogin_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 self.Tag:= 1;
end;

procedure Tlogin_Form.FormCreate(Sender: TObject);
begin
  self.Width:= 260;
end;

function Tlogin_Form.get_http(const s: string): string;
begin
  result:= idhttp1.Get(s);
end;

procedure Tlogin_Form.Label3Click(Sender: TObject);
begin
 self.Width:= 580;
  groupbox1.Visible:= true;
end;

procedure Tlogin_Form.Label3MouseEnter(Sender: TObject);
begin
   tlabel(sender).Font.Color:= clHotLight;
end;

procedure Tlogin_Form.Label3MouseLeave(Sender: TObject);
begin
 tlabel(sender).Font.Color:= clWindowText;
end;

procedure Tlogin_Form.Label4Click(Sender: TObject);
begin
  form7.PageControl1.ActivePageIndex := 0;
  form7.Show;
end;

procedure Tlogin_Form.update_app;
var ss,ss2: string;
     mem: TMemoryStream;
     i: integer;
begin
   //.读取配置，2下载文件，3更名主程序，4更名下载的文件，5启动主程序，6，退出

    ss:= 'http://'+http_host+'/liuyao/g.zip';
    label10.Visible:= true;
    label10.Update;
    screen.Cursor:= crhourglass;

    mem:= TMemoryStream.Create;
      idhttp1.HandleRedirects:=True;
      idhttp1.Get(ss,mem);
    if mem.Size=0 then
       begin
         mem.Free;
         exit;
       end;
   screen.Cursor:= crdefault;
    ss:= application.ExeName;  //取得exe名
     mem.Position:= 0;
     mem.SaveToFile(ss+'2X');
     mem.Free;

  ss2:= ss+'2';
  i:= 2;
  while not  movefile(pchar(ss),pchar(ss2)) do //更改现有exe名
        begin
          inc(i);
          ss2:= ss+ inttostr(i);
        end;

     ss2:= ss2+'X';
      movefile(pchar(ss2),pchar(ss)); //移动下载的文件为主文件。

      //启动主文件
      ShellExecute(application.Handle,'open',pchar(ss),nil,nil,SW_SHOW);

      application.Terminate;

end;

end.
