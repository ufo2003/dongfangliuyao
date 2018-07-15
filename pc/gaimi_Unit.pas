unit gaimi_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tgaimi_Form = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gaimi_Form: Tgaimi_Form;

implementation
   uses unit1;
{$R *.dfm}

procedure Tgaimi_Form.Button1Click(Sender: TObject);
var str1: tstringlist;
    ss2: string;
begin
  //修改密码
  if edit1.Text='' then
   begin
     showmessage('请输入原密码');
     exit;
   end;
   if edit2.Text='' then
   begin
     showmessage('请输入新密码');
     exit;
   end;
   if edit2.Text<>edit3.Text then
   begin
     showmessage('两次输入的新密码不同。');
     exit;
   end;

  str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('oldpw='+aes_encrypt(md5string(md5string(edit1.Text))));
       str1.Add('newpw='+aes_encrypt(md5string(md5string(edit2.Text))));
       ss2:= form1.post_http('http://'+http_host+'/baiduliuyao/changpw.php',str1);
        str1.Free;
        if ss2='ok' then
        begin
         showmessage('密码修改成功');
          edit1.Text:='';
          edit2.Text:='';
          edit3.Text:='';
          self.Close;
        end else if ss2='no' then
         begin
          showmessage('原密码不正确，无法修改。');
         end else
         begin
           showmessage('网络保存出错：'+ss2);
         end;

end;

end.
