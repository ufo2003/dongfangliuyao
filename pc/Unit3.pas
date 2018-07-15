unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
const
 cha_msg_cn= Wm_user+1011;
type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ListBox4: TListBox;
    ListBox3: TListBox;
    ListBox2: TListBox;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Memo1: TMemo;
    Button2: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Button8: TButton;
    Button9: TButton;
    CheckBox6: TCheckBox;
    Button10: TButton;
    SaveDialog1: TSaveDialog;
    Button11: TButton;
    Button12: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure ListBox4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox4DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button10Click(Sender: TObject);
    procedure ListBox4DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListBox4MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
    total_page,total_count: integer;
    procedure start_show(var msg:Tmessage); message cha_msg_cn;
    procedure duqu_fenlei_bendi;
    procedure duqu_fenlei_wang;
    procedure duqu_nian_bendi(fenlei: integer); //是否按分类读取 -1 表示不分类
    procedure duqu_yue_bendi(fenlei: integer; nian: string); //是否按分类读取 -1 表示不分类
    procedure duqu_gualibiao_bendi(fenlei: integer; nian: string; yue: string); //是否按分类读取 -1 表示不分类
    procedure duqu_nian_wang(fenlei: integer); //是否按分类读取 -1 表示不分类
    procedure duqu_yue_wang(fenlei: integer; nian: string); //是否按分类读取 -1 表示不分类
    procedure duqu_gualibiao_wang(fenlei: integer; nian: string; yue: string); //是否按分类读取 -1 表示不分类
    procedure cha(isAll: boolean);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button10Click(Sender: TObject);
var str1,str2: Tstringlist;
     ss: string;
     k: integer;
begin
k:= 0;
  if savedialog1.Execute=false then
     exit;

  if (是否使用网络=1) and radiobutton1.Checked then
   begin
     //从网络获取断语和反馈
  button10.Enabled:= false;
   button10.Update;
  screen.Cursor:= crhourglass;
   str1:= Tstringlist.Create;
   str2:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));

       if (edit1.Text<>'') and (sender=button11) then
        str1.Add('wd='+aes_encrypt(edit1.Text));

       if sender=button11 then
         str1.Add('qi='+inttostr((strtoint(edit3.Text)-1) * 50))
        else
         str1.Add('qi=-1');

         ss := form1.post_http('http://'+http_host+'/baiduliuyao/downloadAll.php',str1);

     str1.Free;
      ss:= StringReplace (ss, '本卦：', '', [rfReplaceAll]);
      ss:= StringReplace (ss, '主卦：', '', [rfReplaceAll]);
      ss:= StringReplace (ss, '变卦：', '之 ', [rfReplaceAll]);
      ss:= StringReplace (ss, #13#10, #13#10#9#9#9, [rfReplaceAll]);
     // for i := 1 to length(ss)-2 do
        //  if (ss[i]='<') and (ss[i+1]='c') and (ss[i+2]='>') then
        //     inc(k);

      //ss:= StringReplace (ss, '<c>', #13, [rfReplaceAll]);
      while pos('<c>',ss)>0 do
       begin
        inc(k);
        ss:= StringReplace (ss, '<c>', #13#13+inttostr(k)+' ', []);
       end;
      ss:= StringReplace (ss, '<d>', #13#10#9#9, [rfReplaceAll]);
      str2.Text:= ss;
    screen.Cursor:= crdefault;
    button10.Enabled:= true;

       if k=0 then
         if ss='neterror' then
         begin
          showmessage('网络错误，请稍后重试,一般过一两分钟即可恢复。');
          str2.Free;
          exit;
         end;

     str2.SaveToFile(savedialog1.FileName);
     showmessage('保存成功。总计保存卦数量'+ inttostr(k));
     str2.Free;

   end;
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
  if listbox4.Items.Count=0 then
   begin
     showmessage('请先查询或按显示全部按钮，然后选择其中的一页来导出。');
     exit;
   end;
   button10click(sender);
end;

procedure TForm3.Button12Click(Sender: TObject);
var ss: string;
  I,j: integer;
 str1: tstringlist;
   a,b: string;

begin
  //从网络读取卦列表
   //删除数量 如果有的话
 for I := 0 to listbox1.Count - 1 do
     begin
      ss:= listbox1.Items[i];
       j:= length(ss);
       if ss[j]=')' then
        begin
          while ss[j]<>'(' do
           begin
            delete(ss,j,1);
            j:= length(ss);
           end;
           delete(ss,j,1);
         listbox1.Items[i]:= ss;
        end;

     end; //end for

//显示卦分类数量
if radiobutton2.Checked then
   begin
   //本地
   with form1.adoquery1 do
    begin
      close;
      sql.Clear;
      ss:= 'select lei_id,count(lei_id) from gua_table group by lei_id';
      sql.Add(ss);
      open;
       while not eof do
                  begin
                    for I := 0 to listbox1.Count - 1 do
                     begin
                       ss:= listbox1.Items[i];
                       ss:= copy(ss,2,pos(')',ss)-2);
                       if ss=fields[0].asstring then
                        begin
                         ss:= listbox1.Items[i];
                         system.delete(ss,1,pos(')',ss));
                         if pos('(',ss)>0 then
                         ss:= copy(ss,1,pos('(',ss)-1);

                         listbox1.Items[i]:= '('+fields[0].asstring+')'+ss+'('+fields[1].asstring +')';
                         break;
                        end;
                     end;
                    next;
                  end;
      close;
    end;
   end else begin
              //网络
              listbox4.Items.Clear;
              memo1.Lines.Clear;

               str1:= Tstringlist.Create;
                   str1.Add('nm='+aes_encrypt(user_name));
                screen.Cursor:= crhourglass;
                   ss:= form1.post_http('http://'+http_host+'/baiduliuyao/fenlei_count.php',str1);
                screen.Cursor:= crdefault;
                   str1.Free;
                   if ss='neterror' then
                    begin
                      showmessage('网络拥挤，请稍后重试。一般很快就能恢复。');
                      exit;
                    end;

                    if ss<>'' then
                     begin
                      delete(ss,1,pos('<t>',ss)+2);
                      while pos('<t>',ss)>0 do
                       begin
                        a:= copy(ss,1,pos('<t>',ss)-1);
                        delete(ss,1,pos('<t>',ss)+2);
                        b:= copy(ss,1,pos('<t>',ss)-1);
                        delete(ss,1,pos('<t>',ss)+2);
                          for I := 0 to listbox1.Count - 1 do
                             begin
                               ss:= listbox1.Items[i];
                               ss:= copy(ss,2,pos(')',ss)-2);
                               if ss=a then
                                begin
                                 ss:= listbox1.Items[i];
                                 system.delete(ss,1,pos(')',ss));
                                 if pos('(',ss)>0 then
                                 ss:= copy(ss,1,pos('(',ss)-1);

                                 listbox1.Items[i]:= '('+a +')'+ss+'('+b +')';
                                 break;
                                end;
                             end;

                             while pos('<t>',ss)=1 do
                            delete(ss,1,3);


                       end;
                     end else showmessage('网络上没有卦数据。');

             end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  //搜索

   edit3.Text:= '1';
   cha(false);

end;

procedure TForm3.Button2Click(Sender: TObject);   //读取卦
var ss: string;
   b: boolean;
begin
  if listbox4.ItemIndex=-1 then
     exit;

  ss:= listbox4.Items[listbox4.ItemIndex];
  if pos('(',ss)=1 then
   begin
   delete(ss,1, pos(')',ss));
   b:= true;
   end else b:= false;

          ss:= copy(ss,1,pos(';',ss)-1);
          ss:= form1.IdDecode(ss);

  if (b=false) and (是否使用网络=1) and radiobutton1.Checked then
   begin
     //从网络载入卦
     form1.根据id载入卦网络(strtoint(ss));
   end else
       begin
         //从本地获卦

         form1.根据id载入卦本地(strtoint(ss));
       end;

   if b then
    begin
    form1.button28.Enabled:= true;
    form1.button29.Enabled:= true;
    form1.button30.Enabled:= true;
    end;
  self.Close;
end;

procedure TForm3.Button3Click(Sender: TObject);
var
  I: Integer;
  ss,ss2: string;
  str1: Tstringlist;
begin
 if listbox1.ItemIndex=-1 then
  begin
    showmessage('请先选择一个要更改的原类别。');
    exit;
  end;

  edit2.Text:= trim(edit2.Text);

 if edit2.Text='' then
  begin
    showmessage('请输入新类别名称');
    exit;
  end;

  for I := 0 to listbox1.Items.Count - 1 do
   begin
     ss:= listbox1.Items[i];
     ss:= copy(ss,pos(')',ss)+1,32);
     if ss=edit2.Text then
        begin
         showmessage('新类别名称不能和现已存在名称相同。');
         exit;
        end;
   end;
    ss:= '是否将'+label2.Caption+' 更改为'+edit2.Text;

  if messagebox(handle,pchar(ss),'提示',MB_YESNO)=mrno then
   exit;

   ss:= listbox1.Items[listbox1.ItemIndex];
    ss:= copy(ss,2,pos(')',ss)-2); //保存了一个序号

   if 是否使用网络=1 then
    begin
      //更改网络类别
      str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('lei_bendi_id='+aes_encrypt(ss));
       str1.Add('lei_mingcheng='+aes_encrypt(edit2.Text));
       ss2:= form1.post_http('http://'+http_host+'/baiduliuyao/changeleiming.php',str1);
        if ss2<>'ok' then
         begin
           showmessage('网络保存出错：'+ss2);
         end;
      str1.Free;
    end;

    //更改本地类别名称
    form1.ADOConnection1.Execute('update fenlei_table set lei_mingcheng='''+edit2.Text+''' where lei_id='+ss);

    listbox1.Items[listbox1.ItemIndex]:= '('+ss+')'+ edit2.Text;
    label2.Caption:= '已选'+ listbox1.Items[listbox1.ItemIndex];
    edit2.Text:= '';

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  edit1.Text:= '';
  edit3.Text:= '1';
   cha(true);

end;

procedure TForm3.Button5Click(Sender: TObject);
begin
if strtoint(edit3.Text)>1 then
 begin
  edit3.Text:= inttostr(strtoint(edit3.Text)-1);
  cha(false);
 end else showmessage('已经到第一页');
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
 if strtoint(edit3.Text)< total_page then
 begin
  edit3.Text:= inttostr(strtoint(edit3.Text)+1);
  cha(false);
 end else showmessage('已经到最后一页');
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  //跳转到第几页
   cha(false);
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
//第一页

  edit3.Text:= '1';
  cha(false);

end;

procedure TForm3.Button9Click(Sender: TObject);
begin
//最后一页

  edit3.Text:= inttostr(total_page);
  cha(false);

end;

procedure TForm3.cha(isAll: boolean);
var str1: tstringlist;
    ss,a,b,c,d: string;
    i,k: integer;
begin
  //搜索
  i:= 0;

  listbox4.Items.Clear;
   ListBox1.Canvas.Font.Name:='宋体';
    ListBox1.Canvas.Font.Size:= 12;

  memo1.Lines.Clear;

  if (是否使用网络=1) and radiobutton1.Checked then
   begin
     //从网络搜索
       if (edit3.Text<>'1') and (strtoint(edit3.Text)> total_page) then
   begin
     showmessage('输入页数不能大于总页数');
     exit;
   end;

     if checkbox6.Checked then
      begin
        //勾选此项，那么显示没有同步到网络的卦
        with form1.adoquery1 do
          begin
            close;
            sql.Clear;
            sql.Add('select id,gua_ming,gua_bianhao,shiyou from gua_table where ben=1');
            open;
             while not eof do
                        begin
                         listbox4.Items.Add('(未保存到网络)'+intToHex(strtoint(fields[0].asstring)+suiji_id,1)+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring+';'+fields[3].asstring);
                          next;
                        end;
            close;
          end;
      end;

    str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       if isAll or (edit1.Text='') then
      str1.Add('wd='+ aes_encrypt('listAll'))
       else
       str1.Add('wd='+aes_encrypt(edit1.Text));
       str1.Add('qi='+aes_encrypt(inttostr((strtoint(edit3.Text)-1) * 50)));

    screen.Cursor:= crhourglass;
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
             listbox4.Items.Add(intToHex(strtoint(a)+suiji_id,1)+';'+benbian_quchu(b)+';'+c+';'+d);
               while pos('<t>',ss)=1 do
                delete(ss,1,3);
             if i>101 then
               break;
           end;

           i:= pos('<c>',ss);
           if i>0 then
            begin
              delete(ss,1,i+2);
              total_count:= strtoint(copy(ss,1,pos('</c>',ss)-1));
              total_page:= total_count div 50;
              if total_count mod 50>0 then
               total_page:= total_page+1;
              label3.Caption:= '总数据'+inttostr(total_count)+' 总页数'+inttostr(total_page)+' 当前页'+edit3.Text;
            end;
         end else showmessage('网络上没有搜索到结果。');

   end else
       begin
         //从本地搜索
         with form1.adoquery1 do
          begin
            close;
            sql.Clear;
            sql.Add('select top 100 id,gua_ming,gua_bianhao,shiyou from gua_table where '+
            'gua_ming like ''%'+edit1.Text+'%'' or shiyou like ''%'+edit1.Text+
            '%'' or duanyu like ''%'+ edit1.Text+'%'' or fankui like ''%'+ edit1.Text+'%''');
            open;
             while not eof do
                        begin
                         listbox4.Items.Add(intToHex(strtoint(fields[0].asstring)+suiji_id,1)+';'+benbian_quchu(fields[1].asstring)+';'+fields[2].asstring+';'+fields[3].asstring);
                          next;
                        end;
            close;
          end;

       end;

   k :=   0;
  for i:=0 to listbox4.Items.Count-1 do
  if k<listbox4.Canvas.TextWidth(listbox4.Items.Strings[i]) then
     k := listbox4.Canvas.TextWidth(listbox4.Items.Strings[i]);
  SendMessage(listbox4.Handle,LB_SETHORIZONTALEXTENT, round(k*1.5),0);
end;

procedure TForm3.duqu_fenlei_bendi;
begin
 //从本地读取分类
     with form1.adoquery1 do
    begin
      close;
      sql.Clear;
      sql.Add('select lei_id,lei_mingcheng from fenlei_table');
      open;
       while not eof do
                  begin
                   listbox1.Items.Add('('+fields[0].asstring+')'+fields[1].asstring);
                    next;
                  end;
      close;
    end;

  listbox2.Items.Clear;
  listbox3.Items.Clear;
  listbox4.Items.Clear;
  memo1.Lines.Clear;

end;

procedure TForm3.duqu_fenlei_wang;
begin
  //从网络读取分类数据   现在由于分类不能新增加，所以固定从本地读取分类
  duqu_fenlei_bendi;

 { listbox1.Items.Clear;
   listbox2.Items.Clear;
  listbox3.Items.Clear;
  listbox4.Items.Clear;
  memo1.Lines.Clear;   }


end;

procedure TForm3.duqu_gualibiao_bendi(fenlei: integer; nian: string; yue: string);
var ss: string;
begin
   //从本地读取卦列表
   memo1.Lines.Clear;
   listbox4.Items.Clear;

   with form1.adoquery1 do
    begin
      close;
      sql.Clear;
      ss:= 'select id,gua_ming,gua_bianhao,shiyou from gua_table where';
      if fenlei<>-1 then
        ss:= ss+' lei_id='+inttostr(fenlei) +' and';

      ss:= ss+' nian='+nian +' and yue='+yue;
      //ss:= ss+' order by shijian desc';
      sql.Add(ss);
      open;
       while not eof do
                  begin
                   listbox4.Items.Add(intToHex(strtoint(fields[0].asstring)+suiji_id,1) +';'+benbian_quchu(fields[2].asstring)+';'+fields[3].asstring+';'+fields[1].asstring);
                    next;
                  end;
      close;
    end;

end;

procedure TForm3.duqu_gualibiao_wang(fenlei: integer; nian: string; yue: string);
var str1: tstringlist;
   ss,a,b,c,d: string;
   i: integer;
begin
  //从网络读取卦列表
  i:= 0;
  listbox4.Items.Clear;
  memo1.Lines.Clear;

   str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('fenlei='+aes_encrypt(inttostr(fenlei)));
       str1.Add('nian='+aes_encrypt(nian));
       str1.Add('yue='+aes_encrypt(yue));
    screen.Cursor:= crhourglass;
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/gualist.php',str1);
    screen.Cursor:= crdefault;
       str1.Free;
       if ss='neterror' then
        begin
          showmessage('网络拥挤，请稍后重试。一般很快就能恢复。');
          exit;
        end;

        if ss<>'' then
         begin
          delete(ss,1,pos('<t>',ss)+2);
          while length(ss)>3 do
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
             listbox4.Items.Add(intToHex(strtoint(a)+suiji_id,1) +';'+ benbian_quchu(b)+';'+c+';'+d);
                 while pos('<t>',ss)=1 do
                delete(ss,1,3);

             if i>3000 then
               break;
           end;
         end else showmessage('网络上没有卦数据。');

end;

procedure TForm3.duqu_nian_bendi(fenlei: integer);
var ss: string;
begin
   //从本地获取年列表
   if fenlei=-1 then
    ss:= 'select nian from gua_table group by nian order by nian'
    else
     ss:= 'select nian from gua_table where lei_id='+ inttostr(fenlei) +' group by nian order by nian';

   form1.getFirstItems(ss,listbox2.Items);

  listbox3.Items.Clear;
  listbox4.Items.Clear;
  memo1.Lines.Clear;
end;

procedure TForm3.duqu_nian_wang(fenlei: integer);

var str1: tstringlist;
   ss,a: string;
   i: integer;
begin
  //从网络读取年列表
i:= 0;
  listbox2.Items.Clear;
   listbox3.Items.Clear;
  listbox4.Items.Clear;
  memo1.Lines.Clear;

   str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('fenlei='+aes_encrypt(inttostr(fenlei)));
    screen.Cursor:= crhourglass;
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/nian.php',str1);
    screen.Cursor:= crdefault;
       str1.Free;
         if ss='neterror' then
        begin
          showmessage('网络错误，请重试。');
          exit;
        end;

        if ss<>'' then
         begin
          delete(ss,1,pos('<t>',ss)+2);
          while length(ss)>3 do
           begin
             inc(i); //计数，防止出错无穷循环
            a:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);

             listbox2.Items.Add(a);
               while pos('<t>',ss)=1 do
                delete(ss,1,3);

             if i>100 then
               break;
           end;
         end else showmessage('网络上没有年数据。');

end;

procedure TForm3.duqu_yue_bendi(fenlei: integer; nian: string);
var ss: string;
begin
      // 从本地获取月列表
   if fenlei=-1 then
    ss:= 'select yue from gua_table where nian='+ nian+' group by yue order by yue'
    else
     ss:= 'select yue from gua_table where lei_id='+ inttostr(fenlei) +' and nian='+ nian+' group by yue order by yue';

   form1.getFirstItems(ss,listbox3.Items);

  listbox4.Items.Clear;
  memo1.Lines.Clear;


end;

procedure TForm3.duqu_yue_wang(fenlei: integer; nian: string);
var str1: tstringlist;
   ss,a: string;
   i: integer;
begin
  //   // 从网络获取月列表
  i:= 0;
  listbox3.Items.Clear;
  listbox4.Items.Clear;
  memo1.Lines.Clear;

   str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('fenlei='+aes_encrypt(inttostr(fenlei)));
        str1.Add('nian='+aes_encrypt(nian));
    screen.Cursor:= crhourglass;
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/yue.php',str1);
    screen.Cursor:= crdefault;
        str1.Free;
          if ss='neterror' then
        begin
          showmessage('网络错误，请重试。');
          exit;
        end;

        if ss<>'' then
         begin
          delete(ss,1,pos('<t>',ss)+2);
          while length(ss)>3 do
           begin
             inc(i); //计数，防止出错无穷循环
            a:= copy(ss,1,pos('<t>',ss)-1);
            delete(ss,1,pos('<t>',ss)+2);

             listbox3.Items.Add(a);
               while pos('<t>',ss)=1 do
                delete(ss,1,3);

             if i>100 then
               break;
           end;
         end else showmessage('网络上没有月数据。');


end;

procedure TForm3.Edit3Exit(Sender: TObject);
begin
 if edit3.Text='' then
   edit3.Text:= '1';
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
  button7.Click;
    key:= #0;
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
//限制edit只能输入数字
  setwindowlong(edit3.Handle,gwl_style,getwindowlong(edit3.Handle,gwl_style) or es_number);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
 if form3.Tag=0 then
  begin
   form3.Tag:= 1;
   //显示分类，显示分类卦数量
   postmessage(handle,cha_msg_cn,1,0);

  end;

    if 是否使用网络=0 then
     begin
       radiobutton2.Checked:= true;
       radiobutton1.Enabled:= false;

     end else begin

               radiobutton1.Enabled:= true;
               radiobutton1.Checked:= true;

              end;
end;

procedure TForm3.ListBox1Click(Sender: TObject);
var ss: string;
begin
 if radiobutton4.Checked then
    exit;   //不按类别查看，退出

 if listbox1.ItemIndex<>-1 then
  begin
   ss:= listbox1.Items[listbox1.ItemIndex];
   label2.Caption:= '已选'+ ss;
   edit2.Text:= '';
    if radiobutton2.Checked then
       duqu_nian_bendi(strtoint(copy(ss,2,pos(')',ss)-2)))
       else
         duqu_nian_wang(strtoint(copy(ss,2,pos(')',ss)-2)));
  end;
end;

procedure TForm3.ListBox2Click(Sender: TObject);
var ss: string;
  id: integer;
begin
  if listbox2.ItemIndex<>-1 then
  begin

         if radiobutton3.Checked then
         begin
          ss:= listbox1.Items[listbox1.ItemIndex];
          id:= strtoint(copy(ss,2,pos(')',ss)-2))
         end
       else
        id:= -1;

   if radiobutton2.Checked then
   begin

       duqu_yue_bendi(id,listbox2.Items[listbox2.ItemIndex]);

   end else begin

                   duqu_yue_wang(id,listbox2.Items[listbox2.ItemIndex]);
             end;
  end;
end;

procedure TForm3.ListBox3Click(Sender: TObject);
var ss: string;
    id: integer;
begin
  if listbox3.ItemIndex<>-1 then
  begin

    if radiobutton3.Checked then
     begin
       ss:= listbox1.Items[listbox1.ItemIndex];
       id:= strtoint(copy(ss,2,pos(')',ss)-2));
      end else
        id:= -1;

   if radiobutton2.Checked then
   begin
       duqu_gualibiao_bendi(id,listbox2.Items[listbox2.ItemIndex],listbox3.Items[listbox3.ItemIndex]);

   end else begin

               duqu_gualibiao_wang(id,listbox2.Items[listbox2.ItemIndex],listbox3.Items[listbox3.ItemIndex]);

            end;
  end;

end;

procedure TForm3.ListBox4Click(Sender: TObject);
var ss: string;
    str1: tstringlist;
    b: boolean;
begin
  if listbox4.ItemIndex=-1 then
     exit;

  ss:= listbox4.Items[listbox4.ItemIndex];
  if pos('(',ss)=1 then
   begin
   delete(ss,1, pos(')',ss));
   b:= true;
   end else b:= false;

  ss:= copy(ss,1,pos(';',ss)-1);
  ss:= form1.IdDecode(ss);
   memo1.Lines.Clear;

  if (b=false) and (是否使用网络=1) and radiobutton1.Checked then
   begin
     //从网络获取断语和反馈


   str1:= Tstringlist.Create;
       str1.Add('nm='+aes_encrypt(user_name));
       str1.Add('id='+aes_encrypt(ss));

    screen.Cursor:= crhourglass;
       ss:= form1.post_http('http://'+http_host+'/baiduliuyao/getduanyufankui.php',str1);
    screen.Cursor:= crdefault;
     str1.Free;
       if ss='neterror' then
        begin
          showmessage('网络错误，请稍后重试,一般过一两分钟即可恢复。');
          exit;
        end;

        if (ss<>'<tr>') and (ss<>'') then
         begin
           memo1.Lines.Text:= StringReplace(ss,'<tr>',#13+'***反馈***'+#13,[]);
         end else memo1.Lines.Text:='没有记录。';


   end else
       begin
         //从本地获取断语和反馈
         with form1.adoquery1 do
            begin
              close;
              sql.Clear;
               
              sql.Add('select duanyu,fankui from gua_table where id='+ss);
              open;
               if not eof then
                          begin
                           memo1.Lines.Clear;
                           memo1.Lines.Add(fields[0].asstring);
                           memo1.Lines.Add('***反馈***');
                           memo1.Lines.Add(fields[1].asstring);

                          end else memo1.Lines.Text:='没有记录。';
              close;
            end;
       end;
end;

procedure TForm3.ListBox4DblClick(Sender: TObject);
begin
 button2.Click;
end;

procedure TForm3.ListBox4DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var ss,ss2: string;
  k,j: integer;
begin
k:= 0;
  ListBox4.Canvas.FillRect(Rect);
  ss:= ListBox4.Items[Index];
    if pos('(',ss)=1 then
  begin
    ListBox4.Canvas.Font.Color:= clred;
    j:= pos(')',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox4.Canvas.TextOut(Rect.Left+20, Rect.Top+4, ss2);
    k:= ListBox4.Canvas.TextWidth(ss2)+18;

   form1.imagelist1.Draw(ListBox4.Canvas,rect.left+2,rect.top+4,3);
  end;
     //卦编号

    ListBox4.Canvas.Font.Color:= clactiveborder;
    j:= pos(';',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox4.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss2);
    k:= k+ ListBox4.Canvas.TextWidth(ss2);

    //卦名
    ListBox4.Canvas.Font.Color:= clwindowtext;
    ListBox4.Canvas.Font.Style:= [fsbold];
    j:= pos(';',ss);
    ss2:= copy(ss,1,j);
    delete(ss,1,j);
    ListBox4.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss2);
    k:= k+ ListBox4.Canvas.TextWidth(ss2);

    //剩余部分
    ListBox4.Canvas.Font.Style:= [];
    if pos('<NF>',ss)>0 then
    ListBox4.Canvas.Font.Color:= clblue
    else
    ListBox4.Canvas.Font.Color:= clwindowtext;

    ListBox4.Canvas.TextOut(Rect.Left+k+2, Rect.Top+4, ss);

end;

procedure TForm3.ListBox4MeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
  height:= 24;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
    if radiobutton1.Checked then
    begin
      button4.Enabled:= true;
      button5.Enabled:= true;
      button6.Enabled:= true;
      button7.Enabled:= true;
      button8.Enabled:= true;
      button9.Enabled:= true;
      edit3.Enabled:= true;
      button10.Enabled:= true;
      checkbox6.Enabled:= true;
      button11.Enabled:= true;

      button12.Click;
    end;

 if radiobutton4.Checked then
  begin
    RadioButton4Click(sender);
     exit;
  end;

  if radiobutton1.Checked then
      duqu_fenlei_wang;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
   if radiobutton2.Checked then
    begin
      button4.Enabled:= false;
      button5.Enabled:= false;
      button6.Enabled:= false;
      button7.Enabled:= false;
      button8.Enabled:= false;
      button9.Enabled:= false;
      edit3.Enabled:= false;
      button10.Enabled:= false;
      button11.Enabled:= false;

      checkbox6.Enabled:= false;

      button12.Click;
    end;

  if radiobutton4.Checked then
  begin
    RadioButton4Click(sender);
     exit;
  end;


  if radiobutton2.Checked then
      duqu_fenlei_bendi;
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
   if radiobutton3.Checked then
    begin
       if 是否使用网络=1 then
         duqu_fenlei_wang
         else
          duqu_fenlei_bendi;
    end;
end;

procedure TForm3.RadioButton4Click(Sender: TObject);
begin
   if radiobutton4.Checked then
    begin
      listbox1.Items.Clear;
      if 是否使用网络=1 then
      begin
        if radiobutton1.Checked then
           duqu_nian_wang(-1)
           else
            duqu_nian_bendi(-1);

      end else
           duqu_nian_bendi(-1);
    end;
end;

procedure TForm3.start_show(var msg: Tmessage);
begin
  if msg.WParam=1 then
   begin
     duqu_fenlei_wang;
     button12.Click;
   end;

 if msg.WParam=0 then
  button4.Click;
end;

end.
