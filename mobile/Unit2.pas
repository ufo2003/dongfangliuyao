unit Unit2;

interface
 {$ZEROBASEDSTRINGS OFF}
{$Define _DELPHI_STRING_ONE_BASED}
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.TabControl, FMX.Layouts, FMX.Controls.Presentation;
const app_mv=7;
type
  TForm2 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Button3: TButton;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Button4: TButton;
    Label12: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    Edit12: TEdit;
    Button5: TButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Button6: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Edit13: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
     procedure denglu;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
       uses main;
{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
var strlist: Tstringlist;
    ss: string;
    b: boolean;
    show_ss: string;
    k: integer;
    Year,Month,Day: word;
begin
  //登录成功
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
    button1.Enabled:= false;
    b:= false;
   strlist:= Tstringlist.Create;
  strlist.Add('nm='+ form1.aes_encrypt(edit1.Text));
  strlist.Add('pw='+ form1.md5string(form1.md5string(edit2.Text)));
  strlist.Add('mpv='+ inttostr(app_mv));

    ss:= form1.post_http('http://'+form1.http_host+'/baiduliuyao/login.php',strlist);
  strlist.Free;
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
  if  pos('ok',ss)=1 then
   begin
     b:= true;
     //其他初始化工作
     if pos('ok<t',ss)=1 then
      begin
        delete(ss,1,pos('<t>',ss)+2);
        form1.Label17.text:= copy(ss,1,pos('<msg>',ss)-1);
        delete(ss,1,pos('<msg>',ss)+4);
        form1.url_g:= copy(ss,1,pos('<url>',ss)-1);
        delete(ss,1,pos('<url>',ss)+4);

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
              showmessage(show_ss);

          end;

      end;
   end else showmessage('出现错误，信息为：'+ss);

 if b then
  begin
     //登录成功，写入本地数据库
     DecodeDate(Date,Year,Month,Day);
      form1.SqliteConnection1.ExecSQL('delete from user_table where user_nm="'+edit1.Text+'"'); //删除非加密数据
    if form1.SqliteConnection1.ExecSQLScalar('select count(*) from user_table where user_nm="'+form1.aes_encrypt(edit1.Text)+'"')>0 then
     form1.SqliteConnection1.ExecSQL('update user_table set shouji="'+form1.aes_encrypt(edit2.Text)+'",yidenglu='+inttostr(day)+ ' where user_nm="'+form1.aes_encrypt(edit1.Text)+'"')
     else
     form1.SqliteConnection1.ExecSQL('insert into user_table(user_nm,shouji,yidenglu) values("'+form1.aes_encrypt(edit1.Text)+'","'+form1.aes_encrypt(edit2.Text)+'",'+inttostr(day)+ ')');


    form1.Label2.text:= '登录状态：已登录';
    form1.Label3.text:= '用户名：'+ edit1.Text;
    form1.user_name:= edit1.Text;
    form1.is_Online:= true;
    form1.SpeedButton23.Enabled:= true;
    form1.SpeedButton10.Enabled:= true;
    close;
  end;

  

end;

procedure TForm2.Button2Click(Sender: TObject);
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

   if (edit6.Text='') and (length(edit3.Text)=11) then
       edit6.Text:= edit3.Text;

  if edit6.Text='' then
  begin
    showmessage('手机号必须输入一个。');
    exit;
  end;

  str1:= Tstringlist.Create;
  str1.Add('nm='+ Form1.aes_encrypt(edit3.Text));
  str1.Add('pw='+ Form1.aes_encrypt(Form1.md5string(Form1.md5string(edit4.Text))));
  str1.Add('shouji='+Form1.aes_encrypt(edit6.Text));
  str1.Add('youxiang=');

    ss:= form1.post_http('http://'+form1.http_host+'/baiduliuyao/reg.php',str1);
   str1.Free;

       if ss='neterror' then
        begin
          showmessage('网络错误，请稍后重试。,一般过一两分钟即可恢复。');
          exit;
        end;

   if ss='no' then
    showmessage('用户名已经存在。请换个用户名。')
    else
   if ss='cancel' then
    showmessage('注册失败。写入数据库出错。')
    else
    if ss='ok' then
     begin
     showmessage('注册成功。');
     edit1.Text:= edit3.Text;
     edit2.Text:= edit4.Text;
     edit4.Text:= '';
     edit5.Text:= '';
     tabcontrol1.TabIndex:= 0;
     end else showmessage('出现错误，信息为：'+ss);

end;

procedure TForm2.Button3Click(Sender: TObject);
var str1: Tstringlist;
    ss: string;
begin
 // 发送短信后
   if length(edit7.Text)<>11 then
    begin
      showmessage('请输入11位手机号。');
     exit;
    end;
   str1:= Tstringlist.Create;
       str1.Add('shouji='+Form1.aes_encrypt(edit7.Text));
    ss:=  form1.post_http('http://'+form1.http_host+'/baiduliuyao/duanxin.php',str1);
        str1.Free;

    if pos('-',ss)=0 then
      tabcontrol1.TabIndex:= 3
      else showmessage('有错误，错误信息为：'+ ss);

end;

procedure TForm2.Button4Click(Sender: TObject);
var str1: tstringlist;
    ss2: string;
begin
  //用验证码修改密码
  if length(edit8.Text)<>6 then
   begin
     showmessage('请输入6位验证码');
     exit;
   end;
   if edit9.Text='' then
   begin
     showmessage('请输入新密码');
     exit;
   end;
   if edit9.Text<>edit10.Text then
   begin
     showmessage('两次输入的新密码不同。');
     exit;
   end;

  str1:= Tstringlist.Create;
       str1.Add('yan='+Form1.aes_encrypt(edit8.Text));
       str1.Add('newpw='+Form1.aes_encrypt(Form1.md5string(Form1.md5string(edit9.Text))));
       str1.Add('shouji='+Form1.aes_encrypt(edit7.Text));
       ss2:= form1.post_http('http://'+form1.http_host+'/baiduliuyao/changpw_yanzheng.php',str1);
        str1.Free;
        if ss2='ok' then
        begin
         showmessage('密码修改成功');
          edit8.Text:='';
          edit2.Text:= edit9.Text;
          edit9.Text:='';
          edit10.Text:='';
          tabcontrol1.TabIndex:= 0; //返回登录页
        end else if ss2='no' then
         begin
          showmessage('验证码不正确，无法修改。');
         end else
         begin
           showmessage('网络保存出错：'+ss2);
         end;


end;

procedure TForm2.Button5Click(Sender: TObject);
var str1: tstringlist;
    ss2: string;
begin
  //修改密码
  if edit13.Text='' then
   begin
     showmessage('请输入原密码');
     exit;
   end;
   if edit11.Text='' then
   begin
     showmessage('请输入新密码');
     exit;
   end;
   if edit11.Text<>edit12.Text then
   begin
     showmessage('两次输入的新密码不同。');
     exit;
   end;

  str1:= Tstringlist.Create;
       str1.Add('nm='+Form1.aes_encrypt(Form1.user_name));
       str1.Add('oldpw='+Form1.aes_encrypt(Form1.md5string(Form1.md5string(edit13.Text))));
       str1.Add('newpw='+Form1.aes_encrypt(Form1.md5string(Form1.md5string(edit11.Text))));
       ss2:= form1.post_http('http://'+form1.http_host+'/baiduliuyao/changpw.php',str1);
        str1.Free;
        if ss2='ok' then
        begin
         showmessage('密码修改成功');
          edit13.Text:='';
          edit2.Text:= edit11.Text;
          edit11.Text:='';
          edit12.Text:='';
          tabcontrol1.TabIndex:= 0; //返回登录页
        end else if ss2='no' then
         begin
          showmessage('原密码不正确，无法修改。');
         end else
         begin
           showmessage('网络保存出错：'+ss2);
         end;

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  //单机使用
  form1.user_name:= '';
  form1.is_Online:= false;
  close;
end;

procedure TForm2.denglu;
begin
   button1click(nil);
end;

procedure TForm2.FormShow(Sender: TObject);
begin
 edit2.Text:='';
  if TabControl1.TabIndex=0 then
    begin
 //shouji 被用来存储密码了
      with form1.sqliteQuery1 do
       begin
        close;
        SQL.Clear;
        sql.Add('select user_nm,shouji,yidenglu from user_table');
        open;
        if not eof then
         begin
         if length(fields[0].AsString)=32 then
           edit1.Text:= form1.aes_decrypt(fields[0].AsString)
           else
             edit1.Text:= fields[0].AsString;
          if fields[2].AsInteger>0 then
             if length(fields[1].AsString)=32 then
               edit2.Text:= form1.aes_decrypt(fields[1].AsString);
         end;
         close;
       end;

       if edit2.Text<>'' then
        begin
          TThread.CreateAnonymousThread(
            procedure
            begin
              Sleep(0);
              TThread.Synchronize(nil,
                procedure
                begin
                 denglu;
                end);
            end).Start;
        end;

     end;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
   tabcontrol1.TabIndex:= 1;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  tabcontrol1.TabIndex:= 2;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
    tabcontrol1.TabIndex:= 0;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
   tabcontrol1.TabIndex:= 2;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
 close;
end;

end.
