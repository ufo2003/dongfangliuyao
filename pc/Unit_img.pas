unit Unit_img;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,Clipbrd,jpeg;

type
  TimgForm = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Button4: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Button5: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
     OldX,OldY:Integer;//记录鼠标按下时位置
     canmove: boolean;
     function create_img_filenam( s: string): string;
     procedure load_img_list;
     procedure load_image(s: string);
  public
    { Public declarations }
    guabianhao: string;
  end;

var
  imgForm: TimgForm;

implementation
       uses unit1;
{$R *.dfm}

procedure TimgForm.Button1Click(Sender: TObject);
var
    i:integer;
    FIsBitmap:boolean;

begin

    FIsBitmap:=false;
    for   i:=0   to   clipboard.FormatCount   -1   do   //检测ClipBoard中是否有位图
        if   Clipboard.Formats[i]=2   then
        begin
            FIsBitmap:=true;
            break;
        end;
    if  FIsBitmap then
    begin
      if checkbox1.Checked then
         begin
           image1.AutoSize:= false;
           image1.Width:= scrollbox1.ClientWidth-4;
         end else image1.AutoSize:= true;
      Image1.Picture.LoadFromClipBoardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
         if checkbox1.Checked then
          image1.Height:= round(image1.Picture.Bitmap.Height * (image1.Width / image1.Picture.Bitmap.Width)); //自动设定高度

      Image1.Top:= 2;
      Image1.Left:= 2;
      button5.Enabled:= true;
    end else begin

              Showmessage('剪贴板中没有图片!');
             end;

end;

procedure TimgForm.Button2Click(Sender: TObject);
begin
  if listbox1.ItemIndex=-1 then
   begin
     showmessage('请先选择图片');
     exit;
   end;
 if messagebox(handle,'真的要删除此图片吗？','确认',mb_yesno)=mrno then
    exit;

   form1.ADOConnection1.Execute('delete from img where gua_bianhao='''+guabianhao
      +''' and img_name='''+listbox1.Items.Strings[listbox1.ItemIndex]+'''');

   listbox1.Items.Delete(listbox1.ItemIndex);

   if listbox1.Items.Count>0 then
     load_image(listbox1.Items.Strings[0]);
end;

procedure TimgForm.Button4Click(Sender: TObject);
var jpg: tjpegimage;
begin

  if opendialog1.Execute then
   begin
      jpg:= tjpegimage.Create;

       jpg.LoadFromFile(opendialog1.FileName);
       //jpg.Compress;
       Image1.Picture.Bitmap.Assign(jpg);

      // mem.LoadFromFile('d:\b.jpg');
     jpg.Free;

    //image1.Picture.LoadFromFile(opendialog1.FileName);
    CheckBox1Click(sender);
    button5.Enabled:= true;
   end;
end;

procedure TimgForm.Button5Click(Sender: TObject);
var jpg: tjpegimage;
    ss: string;
begin
  jpg:= tjpegimage.Create;

       jpg.Assign(image1.Picture.Graphic);
       jpg.Compress;
        ss:= create_img_filenam(
       ExtractFilePath(application.ExeName)+'data\img\'+guabianhao);
       jpg.SaveToFile(ss );
      // mem.LoadFromFile('d:\b.jpg');
     jpg.Free;

      ss:= ExtractFileName(ss);
    form1.ADOConnection1.Execute('insert into img(gua_bianhao,img_name) values('''+guabianhao
      +''', '''+ss+''')');

      load_img_list;
end;

procedure TimgForm.CheckBox1Click(Sender: TObject);
var k: integer;
begin
      Image1.Top:= 2;
      Image1.Left:= 2;
    if checkbox1.Checked then
         begin
           image1.AutoSize:= false;
           image1.Stretch:= false;
          image1.Width:= scrollbox1.ClientWidth-4;
          k:= image1.Picture.Bitmap.Width;
          if k=0 then
           k:= image1.Picture.Graphic.Width;
          image1.Height:= round(image1.Height * (image1.Width / k)); //自动设定高度
          image1.Stretch:= true;
         end else image1.AutoSize:= true;


end;

function TimgForm.create_img_filenam( s: string): string;
var
  i: Integer;
begin
result:= '';
 s:= StringReplace(s, ':', '', [rfReplaceAll]); //去除冒号
 insert(':',s,2);

   for i := 0 to 99 do
     if not FileExists(s+inttostr(i)+ '.jpg') then
       begin
         result:= s+inttostr(i)+ '.jpg';
         break;
       end;
end;

procedure TimgForm.FormShow(Sender: TObject);
begin

    image1.Picture:= nil;
    button5.Enabled:= false;

  load_img_list;

end;

procedure TimgForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if checkbox1.Checked=false then
    begin
    CanMove:=true;
    OldX:=X;
    OldY:=Y;
    end;
end;

procedure TimgForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Canmove then
   begin
   if (Image1.Left+X-OldX>ScrollBox1.Width-Image1.Width-20) and (Image1.Left+X-OldX< 20) then
    begin
      //
     Image1.Left:=Image1.Left+X-OldX;
      Scrollbox1.HorzScrollBar.Position:=-Image1.Left;
    end;
     if (Image1.Top+Y-OldY>ScrollBox1.Height-Image1.Height-20) and (Image1.Top+Y-OldY< 20) then
     begin
        //
       Image1.Top:=Image1.Top+Y-OldY;
      Scrollbox1.VertScrollBar.Position:=-Image1.Top;
    end;
  end;
end;

procedure TimgForm.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CanMove:=False;
end;

procedure TimgForm.ListBox1Click(Sender: TObject);
begin
  if listbox1.Itemindex >= 0 then
     load_image(listbox1.Items.Strings[listbox1.Itemindex]);
end;

procedure TimgForm.load_image(s: string);
var jpg: tjpegimage;
begin
         jpg:= tjpegimage.Create;

       jpg.LoadFromFile(ExtractFilePath(application.ExeName)+'data\img\'+s);
       //jpg.Compress;
       Image1.Picture.Bitmap.Assign(jpg);

      // mem.LoadFromFile('d:\b.jpg');
     jpg.Free;
  // image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'data\img\'+s);
end;

procedure TimgForm.load_img_list;
begin
  listbox1.Items.Clear;
   with form1.adoquery1 do
          begin
            close;
            sql.Clear;
            sql.Add('select img_name from img where '+
            'gua_bianhao='''+guabianhao+'''');
            open;
             while not eof do
                        begin
                         listbox1.Items.Add(fields[0].asstring);
                          next;
                        end;
            close;
          end;
   if listbox1.Items.Count>0 then
     load_image(listbox1.Items.Strings[listbox1.Items.Count-1]);
end;

end.
