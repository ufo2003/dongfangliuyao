unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
        uses unit1;
{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var str1: Tstringlist;
    ss: string;
begin
 // 发送短信后
 if length(edit1.Text)<>11 then
    begin
      showmessage('请输入11位手机号。');
     exit;
    end;

   str1:= Tstringlist.Create;
       str1.Add('shouji='+ aes_encrypt(edit1.Text));
     ss:= form1.post_http('http://'+http_host+'/baiduliuyao/duanxin.php',str1);
        str1.Free;
    if pos('-',ss)=0 then
      PageControl1.ActivePageIndex := 1
      else showmessage('有错误，错误信息为：'+ ss);

end;

procedure TForm7.Button2Click(Sender: TObject);
var str1: tstringlist;
    ss2: string;
begin
  //用验证码修改密码
  if length(edit2.Text)<>6 then
   begin
     showmessage('请输入6位验证码');
     exit;
   end;

   if edit3.Text='' then
   begin
     showmessage('请输入新密码');
     exit;
   end;
   if edit3.Text<>edit4.Text then
   begin
     showmessage('两次输入的新密码不同。');
     exit;
   end;

  str1:= Tstringlist.Create;
       str1.Add('yan='+ aes_encrypt(edit2.Text));
       str1.Add('newpw='+ aes_encrypt(md5string(md5string(edit3.Text))));
       str1.Add('shouji='+aes_encrypt(edit1.Text));
       ss2:= form1.post_http('http://'+http_host+'/baiduliuyao/changpw_yanzheng.php',str1);
        str1.Free;
        if ss2='ok' then
        begin
         showmessage('密码修改成功');
          edit1.Text:='';
          edit2.Text:='';
          edit3.Text:='';
          self.Close; //返回登录页
        end else if ss2='no' then
         begin
          showmessage('验证码不正确，无法修改。');
         end else
         begin
           showmessage('网络保存出错：'+ss2);
         end;



end;

procedure TForm7.FormCreate(Sender: TObject);
begin
   SetWindowLong(Edit1.Handle, GWL_STYLE,
                  GetWindowLong(Edit1.Handle, GWL_STYLE) or
                  ES_NUMBER);
  SetWindowLong(Edit2.Handle, GWL_STYLE,
                  GetWindowLong(Edit2.Handle, GWL_STYLE) or
                  ES_NUMBER);
end;

procedure TForm7.Label5Click(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 0;
end;

end.
