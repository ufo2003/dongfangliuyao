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
  //��¼�ɹ�
    if edit1.Text='' then
   begin
     showmessage('�������û�����');
     exit;
   end;
  if edit2.Text='' then
   begin
     showmessage('���������롣');
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
     showmessage('������󣬵�½ʧ�ܡ����Ժ�����,һ���һ�����Ӽ��ɻָ���');
     exit;
   end;
  if pos('no',ss)=1 then
   begin
     showmessage('�˺Ż�������󣬲��ܵ�½��');
     exit;
   end;
  if pos('cancel',ss)=1 then
   begin
     showmessage('���˺ſ������ӱ����Ѿ������á��ɷ��ʼ���1145975039@qq.com ���¼���');
     exit;
   end;
  if  pos('ok',ss)=1 then
   begin
     b:= true;
     //������ʼ������
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
            if show_ss<>'û����Ϣ' then
              showmessage(show_ss);

          end;

      end;
   end else showmessage('���ִ�����ϢΪ��'+ss);

 if b then
  begin
     //��¼�ɹ���д�뱾�����ݿ�
     DecodeDate(Date,Year,Month,Day);
      form1.SqliteConnection1.ExecSQL('delete from user_table where user_nm="'+edit1.Text+'"'); //ɾ���Ǽ�������
    if form1.SqliteConnection1.ExecSQLScalar('select count(*) from user_table where user_nm="'+form1.aes_encrypt(edit1.Text)+'"')>0 then
     form1.SqliteConnection1.ExecSQL('update user_table set shouji="'+form1.aes_encrypt(edit2.Text)+'",yidenglu='+inttostr(day)+ ' where user_nm="'+form1.aes_encrypt(edit1.Text)+'"')
     else
     form1.SqliteConnection1.ExecSQL('insert into user_table(user_nm,shouji,yidenglu) values("'+form1.aes_encrypt(edit1.Text)+'","'+form1.aes_encrypt(edit2.Text)+'",'+inttostr(day)+ ')');


    form1.Label2.text:= '��¼״̬���ѵ�¼';
    form1.Label3.text:= '�û�����'+ edit1.Text;
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
 //ע��
 if edit3.Text='' then
  begin
    showmessage('�û�������Ϊ��');
    exit;
  end;
 if edit4.Text='' then
  begin
    showmessage('���벻��Ϊ��');
    exit;
  end;

  if edit4.Text<>edit5.Text then
  begin
    showmessage('������������Ĳ�ͬ');
    exit;
  end;

   if (edit6.Text='') and (length(edit3.Text)=11) then
       edit6.Text:= edit3.Text;

  if edit6.Text='' then
  begin
    showmessage('�ֻ��ű�������һ����');
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
          showmessage('����������Ժ����ԡ�,һ���һ�����Ӽ��ɻָ���');
          exit;
        end;

   if ss='no' then
    showmessage('�û����Ѿ����ڡ��뻻���û�����')
    else
   if ss='cancel' then
    showmessage('ע��ʧ�ܡ�д�����ݿ����')
    else
    if ss='ok' then
     begin
     showmessage('ע��ɹ���');
     edit1.Text:= edit3.Text;
     edit2.Text:= edit4.Text;
     edit4.Text:= '';
     edit5.Text:= '';
     tabcontrol1.TabIndex:= 0;
     end else showmessage('���ִ�����ϢΪ��'+ss);

end;

procedure TForm2.Button3Click(Sender: TObject);
var str1: Tstringlist;
    ss: string;
begin
 // ���Ͷ��ź�
   if length(edit7.Text)<>11 then
    begin
      showmessage('������11λ�ֻ��š�');
     exit;
    end;
   str1:= Tstringlist.Create;
       str1.Add('shouji='+Form1.aes_encrypt(edit7.Text));
    ss:=  form1.post_http('http://'+form1.http_host+'/baiduliuyao/duanxin.php',str1);
        str1.Free;

    if pos('-',ss)=0 then
      tabcontrol1.TabIndex:= 3
      else showmessage('�д��󣬴�����ϢΪ��'+ ss);

end;

procedure TForm2.Button4Click(Sender: TObject);
var str1: tstringlist;
    ss2: string;
begin
  //����֤���޸�����
  if length(edit8.Text)<>6 then
   begin
     showmessage('������6λ��֤��');
     exit;
   end;
   if edit9.Text='' then
   begin
     showmessage('������������');
     exit;
   end;
   if edit9.Text<>edit10.Text then
   begin
     showmessage('��������������벻ͬ��');
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
         showmessage('�����޸ĳɹ�');
          edit8.Text:='';
          edit2.Text:= edit9.Text;
          edit9.Text:='';
          edit10.Text:='';
          tabcontrol1.TabIndex:= 0; //���ص�¼ҳ
        end else if ss2='no' then
         begin
          showmessage('��֤�벻��ȷ���޷��޸ġ�');
         end else
         begin
           showmessage('���籣�����'+ss2);
         end;


end;

procedure TForm2.Button5Click(Sender: TObject);
var str1: tstringlist;
    ss2: string;
begin
  //�޸�����
  if edit13.Text='' then
   begin
     showmessage('������ԭ����');
     exit;
   end;
   if edit11.Text='' then
   begin
     showmessage('������������');
     exit;
   end;
   if edit11.Text<>edit12.Text then
   begin
     showmessage('��������������벻ͬ��');
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
         showmessage('�����޸ĳɹ�');
          edit13.Text:='';
          edit2.Text:= edit11.Text;
          edit11.Text:='';
          edit12.Text:='';
          tabcontrol1.TabIndex:= 0; //���ص�¼ҳ
        end else if ss2='no' then
         begin
          showmessage('ԭ���벻��ȷ���޷��޸ġ�');
         end else
         begin
           showmessage('���籣�����'+ss2);
         end;

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  //����ʹ��
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
 //shouji �������洢������
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
