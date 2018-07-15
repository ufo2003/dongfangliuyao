unit Unitjiaoshiyi;

interface
   uses SysUtils;
 function get_jiaochi(s: string): string;
 function get_guagong(const s: string): string;
 function get_tiangan_by_gua(const m: string): string;
 function get_najia(const s: string): string;
 function get_najia_zhangshan(const s: string): string;
 function get_guaming(const s: integer): string;
 function get_guaming_quan(s: string): string; //含变卦
 function get_shuzigua(s,x,d: integer): string; //根据报数起卦
 function 补全卦名(var s8: string): boolean;
 function guaming_dao_shuzi(s: string): string;
 function get_bagong_shougua(const s: string): string;
 function hecheng_guaming(const s: string): string;


implementation

function hecheng_guaming(const s: string): string;
begin
   result:= s;
  result:= StringReplace(result, '乾', '天', [rfReplaceAll]);
  result:= StringReplace(result, '兑', '泽', [rfReplaceAll]);
  result:= StringReplace(result, '离', '火', [rfReplaceAll]);
  result:= StringReplace(result, '震', '雷', [rfReplaceAll]);
  result:= StringReplace(result, '巽', '风', [rfReplaceAll]);
  result:= StringReplace(result, '坎', '水', [rfReplaceAll]);
  result:= StringReplace(result, '艮', '山', [rfReplaceAll]);
  result:= StringReplace(result, '坤', '地', [rfReplaceAll]);


       if result='泽天' then
        result:='泽天夬';
       if result='火天' then
        result:='火天大有';
       if result='雷天' then
        result:='雷天大壮';
       if result='风天' then
        result:='风天小畜';
       if result='水天' then
        result:='水天需';
       if result='山天' then
        result:='山天大畜';
       if result='地天' then
        result:='地天泰';

        if result='天泽' then
        result:='天泽履';
       if result='火泽' then
        result:='火泽睽';
       if result='雷泽' then
        result:='雷泽归妹';
       if result='风泽' then
        result:='风泽中孚';
       if result='水泽' then
        result:='水泽节';
       if result='山泽' then
        result:='山泽损';
       if result='地泽' then
        result:='地泽临';

        if result='天火' then
        result:='天火同人';
       if result='泽火' then
        result:='泽火革';
       if result='雷火' then
        result:='雷火丰';
       if result='风火' then
        result:='风火家人';
       if result='水火' then
        result:='水火既济';
       if result='山火' then
        result:='山火贲';
       if result='地火' then
        result:='地火明夷';

        if result='天雷' then
        result:='天雷无妄';
       if result='泽雷' then
        result:='泽雷随';
       if result='火雷' then
        result:='火雷噬嗑';
       if result='风雷' then
        result:='风雷益';
       if result='水雷' then
        result:='水雷屯';
       if result='山雷' then
        result:='山雷颐';
       if result='地雷' then
        result:='地雷复';

        if result='天风' then
        result:='天风姤';
       if result='泽风' then
        result:='泽风大过';
       if result='火风' then
        result:='火风鼎';
       if result='雷风' then
        result:='雷风恒';
       if result='水风' then
        result:='水风井';
       if result='山风' then
        result:='山风蛊';
       if result='地风' then
        result:='地风升';

        if result='天水' then
        result:='天水讼';
       if result='泽水' then
        result:='泽水困';
       if result='火水' then
        result:='火水未济';
       if result='雷水' then
        result:='雷水解';
       if result='风水' then
        result:='风水涣';
       if result='山水' then
        result:='山水蒙';
       if result='地水' then
        result:='地水师';

        if result='天山' then
        result:='天山遁';
       if result='泽山' then
        result:='泽山咸';
       if result='火山' then
        result:='火山旅';
       if result='雷山' then
        result:='雷山小过';
       if result='风山' then
        result:='风山渐';
       if result='水山' then
        result:='水山蹇';
       if result='地山' then
        result:='地山谦';

        if result='天地' then
        result:='天地否';
       if result='泽地' then
        result:='泽地萃';
       if result='火地' then
        result:='火地晋';
       if result='雷地' then
        result:='雷地豫';
       if result='风地' then
        result:='风地观';
       if result='水地' then
        result:='水地比';
       if result='山地' then
        result:='山地剥';

end;

function get_bagong_shougua(const s: string): string;
begin
result:= '';
   if s='乾' then
     result:= '乾为天';
   if s='兑' then
     result:= '兑为泽';
   if s='离' then
     result:= '离为火';
   if s='震' then
     result:= '震为雷';
   if s='巽' then
     result:= '巽为风';
   if s='坎' then
     result:= '坎为水';
   if s='艮' then
     result:= '艮为山';
   if s='坤' then
     result:= '坤为地';
end;
function guaming_dao_shuzi(s: string): string;
var
  I,k: Integer;
   ss: string;
  j: Integer;
begin
  s:= trim(s);
  s:= StringReplace(s, '天', '', [rfReplaceAll]);
   s:= StringReplace(s, '地', '', [rfReplaceAll]);
   s:= StringReplace(s, '风', '', [rfReplaceAll]);
   s:= StringReplace(s, '水', '', [rfReplaceAll]);
   s:= StringReplace(s, '山', '', [rfReplaceAll]);
   s:= StringReplace(s, '雷', '', [rfReplaceAll]);
   s:= StringReplace(s, '泽', '', [rfReplaceAll]);
   s:= StringReplace(s, '火', '', [rfReplaceAll]);
   s:= StringReplace(s, '为', '', [rfReplaceAll]);
   s:= StringReplace(s, '  ', ' ', [rfReplaceAll]);
   s:= StringReplace(s, '  ', ' ', [rfReplaceAll]);
   if pos('之',s)<=0 then
     s:= StringReplace(s, ' ', '之', [rfReplaceAll]);

   s:= StringReplace(s, ' ', '', [rfReplaceAll]);
   s:= StringReplace(s, '变', '之', [rfReplaceAll]);
   s:= StringReplace(s, '之', ' 之 ', [rfReplaceAll]);
     补全卦名(s);  //卦名统一为 xxx之xxx格式
    for I := 0 to 4095 do
      begin
       ss:= '';
       for j := 0 to 5 do
         begin
           k:= i;
           k:= k shl (20+ j*2);
           k:= k shr 30;
           k:= k+1;
           ss:= ss+ inttostr(k);
         end;
        result:= get_guaming_quan(ss);
        if s=result then
         begin
           result:= ss;
           exit;
         end;
      end;

end;

function 补全卦名(var s8: string): boolean;
begin
       result:= false;
       if pos('乾',s8)>0 then
        begin
          s8:= StringReplace(s8,'乾','乾为天',[rfReplaceAll]);
          result:= true;
        end;
       if pos('夬',s8)>0 then
        begin
          s8:= StringReplace(s8,'夬','泽天夬',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大有',s8)>0 then
        begin
          s8:= StringReplace(s8,'大有','火天大有',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大壮',s8)>0 then
        begin
          s8:= StringReplace(s8,'大壮','雷天大壮',[rfReplaceAll]);
          result:= true;
        end;
       if pos('小畜',s8)>0 then
        begin
          s8:= StringReplace(s8,'小畜','风天小畜',[rfReplaceAll]);
          result:= true;
        end;
       if pos('需',s8)>0 then
        begin
          s8:= StringReplace(s8,'需','水天需',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大畜',s8)>0 then
        begin
          s8:= StringReplace(s8,'大畜','山天大畜',[rfReplaceAll]);
          result:= true;
        end;
       if pos('泰',s8)>0 then
        begin
          s8:= StringReplace(s8,'泰','地天泰',[rfReplaceAll]);
          result:= true;
        end;
       if pos('履',s8)>0 then
        begin
          s8:= StringReplace(s8,'履','天泽履',[rfReplaceAll]);
          result:= true;
        end;
       if pos('兑',s8)>0 then
        begin
          s8:= StringReplace(s8,'兑','兑为泽',[rfReplaceAll]);
          result:= true;
        end;
       if pos('睽',s8)>0 then
        begin
          s8:= StringReplace(s8,'睽','火泽睽',[rfReplaceAll]);
          result:= true;
        end;
       if pos('归妹',s8)>0 then
        begin
          s8:= StringReplace(s8,'归妹','雷泽归妹',[rfReplaceAll]);
          result:= true;
        end;
       if pos('中孚',s8)>0 then
        begin
          s8:= StringReplace(s8,'中孚','风泽中孚',[rfReplaceAll]);
          result:= true;
        end;
       if pos('节',s8)>0 then
        begin
          s8:= StringReplace(s8,'节','水泽节',[rfReplaceAll]);
          result:= true;
        end;
       if pos('损',s8)>0 then
        begin
          s8:= StringReplace(s8,'损','山泽损',[rfReplaceAll]);
          result:= true;
        end;
       if pos('临',s8)>0 then
        begin
          s8:= StringReplace(s8,'临','地泽临',[rfReplaceAll]);
          result:= true;
        end;
       if pos('同人',s8)>0 then
        begin
          s8:= StringReplace(s8,'同人','天火同人',[rfReplaceAll]);
          result:= true;
        end;
       if pos('革',s8)>0 then
        begin
          s8:= StringReplace(s8,'革','泽火革',[rfReplaceAll]);
          result:= true;
        end;
       if pos('离',s8)>0 then
        begin
          s8:= StringReplace(s8,'离','离为火',[rfReplaceAll]);
          result:= true;
        end;
       if pos('丰',s8)>0 then
        begin
          s8:= StringReplace(s8,'丰','雷火丰',[rfReplaceAll]);
          result:= true;
        end;
       if pos('家人',s8)>0 then
        begin
          s8:= StringReplace(s8,'家人','风火家人',[rfReplaceAll]);
          result:= true;
        end;
       if pos('既济',s8)>0 then
        begin
          s8:= StringReplace(s8,'既济','水火既济',[rfReplaceAll]);
          result:= true;
        end;
       if pos('贲',s8)>0 then
        begin
          s8:= StringReplace(s8,'贲','山火贲',[rfReplaceAll]);
          result:= true;
        end;
       if pos('明夷',s8)>0 then
        begin
          s8:= StringReplace(s8,'明夷','地火明夷',[rfReplaceAll]);
          result:= true;
        end;
       if pos('无妄',s8)>0 then
        begin
          s8:= StringReplace(s8,'无妄','天雷无妄',[rfReplaceAll]);
          result:= true;
        end;
       if pos('随',s8)>0 then
        begin
          s8:= StringReplace(s8,'随','泽雷随',[rfReplaceAll]);
          result:= true;
        end;
       if pos('噬嗑',s8)>0 then
        begin
          s8:= StringReplace(s8,'噬嗑','火雷噬嗑',[rfReplaceAll]);
          result:= true;
        end;
       if pos('震',s8)>0 then
        begin
          s8:= StringReplace(s8,'震','震为雷',[rfReplaceAll]);
          result:= true;
        end;
       if pos('益',s8)>0 then
        begin
          s8:= StringReplace(s8,'益','风雷益',[rfReplaceAll]);
          result:= true;
        end;
       if pos('屯',s8)>0 then
        begin
          s8:= StringReplace(s8,'屯','水雷屯',[rfReplaceAll]);
          result:= true;
        end;
       if pos('颐',s8)>0 then
        begin
          s8:= StringReplace(s8,'颐','山雷颐',[rfReplaceAll]);
          result:= true;
        end;
       if pos('复',s8)>0 then
        begin
          s8:= StringReplace(s8,'复','地雷复',[rfReplaceAll]);
          result:= true;
        end;
       if pos('姤',s8)>0 then
        begin
          s8:= StringReplace(s8,'姤','天风姤',[rfReplaceAll]);
          result:= true;
        end;
       if pos('大过',s8)>0 then
        begin
          s8:= StringReplace(s8,'大过','泽风大过',[rfReplaceAll]);
          result:= true;
        end;
       if pos('鼎',s8)>0 then
        begin
          s8:= StringReplace(s8,'鼎','火风鼎',[rfReplaceAll]);
          result:= true;
        end;
       if pos('恒',s8)>0 then
        begin
          s8:= StringReplace(s8,'恒','雷风恒',[rfReplaceAll]);
          result:= true;
        end;
       if pos('巽',s8)>0 then
        begin
          s8:= StringReplace(s8,'巽','巽为风',[rfReplaceAll]);
          result:= true;
        end;
       if pos('井',s8)>0 then
        begin
          s8:= StringReplace(s8,'井','水风井',[rfReplaceAll]);
          result:= true;
        end;
       if pos('蛊',s8)>0 then
        begin
          s8:= StringReplace(s8,'蛊','山风蛊',[rfReplaceAll]);
          result:= true;
        end;
       if pos('升',s8)>0 then
        begin
          s8:= StringReplace(s8,'升','地风升',[rfReplaceAll]);
          result:= true;
        end;
       if pos('讼',s8)>0 then
        begin
          s8:= StringReplace(s8,'讼','天水讼',[rfReplaceAll]);
          result:= true;
        end;
       if pos('困',s8)>0 then
        begin
          s8:= StringReplace(s8,'困','泽水困',[rfReplaceAll]);
          result:= true;
        end;
       if pos('未济',s8)>0 then
        begin
          s8:= StringReplace(s8,'未济','火水未济',[rfReplaceAll]);
          result:= true;
        end;
       if pos('解',s8)>0 then
        begin
          s8:= StringReplace(s8,'解','雷水解',[rfReplaceAll]);
          result:= true;
        end;
       if pos('涣',s8)>0 then
        begin
          s8:= StringReplace(s8,'涣','风水涣',[rfReplaceAll]);
          result:= true;
        end;
       if pos('坎',s8)>0 then
        begin
          s8:= StringReplace(s8,'坎','坎为水',[rfReplaceAll]);
          result:= true;
        end;
       if pos('蒙',s8)>0 then
        begin
          s8:= StringReplace(s8,'蒙','山水蒙',[rfReplaceAll]);
          result:= true;
        end;
       if pos('师',s8)>0 then
        begin
          s8:= StringReplace(s8,'师','地水师',[rfReplaceAll]);
          result:= true;
        end;
       if pos('遁',s8)>0 then
        begin
          s8:= StringReplace(s8,'遁','天山遁',[rfReplaceAll]);
          result:= true;
        end;
       if pos('咸',s8)>0 then
        begin
          s8:= StringReplace(s8,'咸','泽山咸',[rfReplaceAll]);
          result:= true;
        end;
       if pos('旅',s8)>0 then
        begin
          s8:= StringReplace(s8,'旅','火山旅',[rfReplaceAll]);
          result:= true;
        end;
       if pos('小过',s8)>0 then
        begin
          s8:= StringReplace(s8,'小过','雷山小过',[rfReplaceAll]);
          result:= true;
        end;
       if pos('渐',s8)>0 then
        begin
          s8:= StringReplace(s8,'渐','风山渐',[rfReplaceAll]);
          result:= true;
        end;
       if pos('蹇',s8)>0 then
        begin
          s8:= StringReplace(s8,'蹇','水山蹇',[rfReplaceAll]);
          result:= true;
        end;
       if pos('艮',s8)>0 then
        begin
          s8:= StringReplace(s8,'艮','艮为山',[rfReplaceAll]);
          result:= true;
        end;
       if pos('谦',s8)>0 then
        begin
          s8:= StringReplace(s8,'谦','地山谦',[rfReplaceAll]);
          result:= true;
        end;
       if pos('否',s8)>0 then
        begin
          s8:= StringReplace(s8,'否','天地否',[rfReplaceAll]);
          result:= true;
        end;
       if pos('萃',s8)>0 then
        begin
          s8:= StringReplace(s8,'萃','泽地萃',[rfReplaceAll]);
          result:= true;
        end;
       if pos('晋',s8)>0 then
        begin
          s8:= StringReplace(s8,'晋','火地晋',[rfReplaceAll]);
          result:= true;
        end;
       if pos('豫',s8)>0 then
        begin
          s8:= StringReplace(s8,'豫','雷地豫',[rfReplaceAll]);
          result:= true;
        end;
       if pos('观',s8)>0 then
        begin
          s8:= StringReplace(s8,'观','风地观',[rfReplaceAll]);
          result:= true;
        end;
       if pos('比',s8)>0 then
        begin
          s8:= StringReplace(s8,'比','水地比',[rfReplaceAll]);
          result:= true;
        end;
       if pos('剥',s8)>0 then
        begin
          s8:= StringReplace(s8,'剥','山地剥',[rfReplaceAll]);
          result:= true;
        end;
       if pos('坤',s8)>0 then
        begin
          s8:= StringReplace(s8,'坤','坤为地',[rfReplaceAll]);
          result:= true;
        end;
end;

function get_shuzigua(s,x,d: integer): string;
var ss: string;
   procedure a(w: integer);
    begin
      case w mod 8 of
      0: ss:= ss+'222';
      1: ss:= ss+'111';
      2: ss:= ss+'211';
      3: ss:= ss+'121';
      4: ss:= ss+'221';
      5: ss:= ss+'112';
      6: ss:= ss+'212';
      7: ss:= ss+'122';
     end;
    end;
begin
ss:= '';
  a(s);   //取得上卦
  a(x);    //取得下卦

  result:= get_guaming(strtoint(ss));
   if d<0 then
     exit;

    d:= d mod 6;
    if d=0 then
     d:= 6;

     d:= 7-d;
   if ss[d]='1' then
     ss[d]:='2'
     else
      ss[d]:= '1';

      result:= result+'之'+ get_guaming(strtoint(ss));
end;

function get_guaming_quan(s: string): string; //含变卦
var a,b: string;
  i: Integer;
begin
  a:= '';
  b:= '';
  s:= StringReplace(s, '0', '1', [rfReplaceAll]);
  for i := Low(s) to High(s) do
   begin
     case s[i] of
      '1': begin
            a:= a+'1';
            b:= b+'1';
           end;
      '2': begin
            a:= a+'2';
            b:= b+'2';
           end;
      '3': begin
            a:= a+'1';
            b:= b+'2';
           end;
      '4': begin
            a:= a+'2';
            b:= b+'1';
           end;
     end;
   end;
  result:= get_guaming(strtoint(a));
  if a<>b then
   result:= result+' 之 '+ get_guaming(strtoint(b));
end;

function get_guaming(const s: integer): string;
begin
result:= '';

if s=111111 then begin result:= '乾为天'; exit; end;
if s=111112 then begin result:= '天风姤'; exit; end;
if s=111121 then begin result:= '天火同人'; exit; end;
if s=111122 then begin result:= '天山遁'; exit; end;
if s=111211 then begin result:= '天泽履'; exit; end;
if s=111212 then begin result:= '天水讼'; exit; end;
if s=111221 then begin result:= '天雷无妄'; exit; end;
if s=111222 then begin result:= '天地否'; exit; end;
if s=112111 then begin result:= '风天小畜'; exit; end;
if s=112112 then begin result:= '巽为风'; exit; end;
if s=112121 then begin result:= '风火家人'; exit; end;
if s=112122 then begin result:= '风山渐'; exit; end;
if s=112211 then begin result:= '风泽中孚'; exit; end;
if s=112212 then begin result:= '风水涣'; exit; end;
if s=112221 then begin result:= '风雷益'; exit; end;
if s=112222 then begin result:= '风地观'; exit; end;
if s=121111 then begin result:= '火天大有'; exit; end;
if s=121112 then begin result:= '火风鼎'; exit; end;
if s=121121 then begin result:= '离为火'; exit; end;
if s=121122 then begin result:= '火山旅'; exit; end;
if s=121211 then begin result:= '火泽睽'; exit; end;
if s=121212 then begin result:= '火水未济'; exit; end;
if s=121221 then begin result:= '火雷噬嗑'; exit; end;
if s=121222 then begin result:= '火地晋'; exit; end;
if s=122111 then begin result:= '山天大畜'; exit; end;
if s=122112 then begin result:= '山风蛊'; exit; end;
if s=122121 then begin result:= '山火贲'; exit; end;
if s=122122 then begin result:= '艮为山'; exit; end;
if s=122211 then begin result:= '山泽损'; exit; end;
if s=122212 then begin result:= '山水蒙'; exit; end;
if s=122221 then begin result:= '山雷颐'; exit; end;
if s=122222 then begin result:= '山地剥'; exit; end;
if s=211111 then begin result:= '泽天夬'; exit; end;
if s=211112 then begin result:= '泽风大过'; exit; end;
if s=211121 then begin result:= '泽火革'; exit; end;
if s=211122 then begin result:= '泽山咸'; exit; end;
if s=211211 then begin result:= '兑为泽'; exit; end;
if s=211212 then begin result:= '泽水困'; exit; end;
if s=211221 then begin result:= '泽雷随'; exit; end;
if s=211222 then begin result:= '泽地萃'; exit; end;
if s=212111 then begin result:= '水天需'; exit; end;
if s=212112 then begin result:= '水风井'; exit; end;
if s=212121 then begin result:= '水火既济'; exit; end;
if s=212122 then begin result:= '水山蹇'; exit; end;
if s=212211 then begin result:= '水泽节'; exit; end;
if s=212212 then begin result:= '坎为水'; exit; end;
if s=212221 then begin result:= '水雷屯'; exit; end;
if s=212222 then begin result:= '水地比'; exit; end;
if s=221111 then begin result:= '雷天大壮'; exit; end;
if s=221112 then begin result:= '雷风恒'; exit; end;
if s=221121 then begin result:= '雷火丰'; exit; end;
if s=221122 then begin result:= '雷山小过'; exit; end;
if s=221211 then begin result:= '雷泽归妹'; exit; end;
if s=221212 then begin result:= '雷水解'; exit; end;
if s=221221 then begin result:= '震为雷'; exit; end;
if s=221222 then begin result:= '雷地豫'; exit; end;
if s=222111 then begin result:= '地天泰'; exit; end;
if s=222112 then begin result:= '地风升'; exit; end;
if s=222121 then begin result:= '地火明夷'; exit; end;
if s=222122 then begin result:= '地山谦'; exit; end;
if s=222211 then begin result:= '地泽临'; exit; end;
if s=222212 then begin result:= '地水师'; exit; end;
if s=222221 then begin result:= '地雷复'; exit; end;
if s=222222 then  result:= '坤为地';

end;

function get_najia_zhangshan(const s: string): string;
begin
 result:= '  ';
     if (s='泽山咸') then begin result:=   '父母未土 2 应 官鬼巳火 1 妻财卯木 1 父母戌土 1 世 子孙子水 2 妻财寅木 2'; exit; end;
     if (s='兑为泽') then begin result:=   '子孙未土 2 世 兄弟巳火 1 父母卯木 1 子孙丑土 2 应 官鬼亥水 1 妻财酉金 1'; exit; end;
     if (s='泽水困') then begin result:=   '子孙未土 2 兄弟巳火 1 父母卯木 1 应 妻财申金 2 子孙戌土 1 官鬼子水 2 世'; exit; end;
     if (s='泽地萃') then begin result:=   '妻财未土 2 子孙巳火 1 应 兄弟卯木 1 父母亥水 2 官鬼酉金 2 世 妻财未土 2'; exit; end;
     if (s='水山蹇') then begin result:=   '兄弟寅木 2 妻财辰土 1 子孙午火 2 世 妻财戌土 1 父母子水 2 兄弟寅木 2 应'; exit; end;
     if (s='雷山小过') then begin result:=   '官鬼巳火 2 父母未土 2 兄弟酉金 1 世 父母戌土 1 子孙子水 2 妻财寅木 2 应'; exit; end;
     if (s='雷泽归妹') then begin result:=   '妻财巳火 2 应 官鬼未土 2 父母酉金 1 官鬼丑土 2 世 兄弟亥水 1 父母酉金 1'; exit; end;
     if (s='地山谦')  then begin result:=    '官鬼巳火 2 妻财卯木 2 世 父母丑土 2 父母戌土 1 子孙子水 2 应 妻财寅木 2'; exit; end;


      if (s='天泽履') then begin result:=  '官鬼子水 1 父母寅木 1 世 子孙辰土 1 子孙丑土 2 官鬼亥水 1 应 妻财酉金 1'; exit; end;
     if (s='风山渐') then begin result:=   '妻财卯木 1 应 父母丑土 1 子孙亥水 2 父母戌土 1 世 子孙子水 2 妻财寅木 2'; exit; end;
     if (s='风泽中孚') then begin result:= '父母卯木 1 子孙丑土 1 官鬼亥水 2 世 子孙丑土 2 官鬼亥水 1 妻财酉金 1 应'; exit; end;
     if (s='火泽睽') then begin result:=   '子孙巳火 1 兄弟卯木 2 妻财丑土 1 世 妻财丑土 2 父母亥水 1 官鬼酉金 1 应'; exit; end;
     if (s='山天大畜') then begin result:= '官鬼辰土 1 妻财午火 2 应 父母申金 2 妻财午火 1 父母申金 世 官鬼戌土 1'; exit; end;
     if (s='山火贲') then begin result:=   '父母辰土 1 官鬼午火 2 兄弟申金 2 应 子孙亥水 1 兄弟酉金 2 父母未土 1 世'; exit; end;
     if (s='艮为山') then begin result:=   '兄弟辰土 1 世 父母午火 2 子孙申金 2 兄弟戌土 1 应 妻财子水 2 官鬼寅木 2'; exit; end;
     if (s='山泽损') then begin result:=   '官鬼辰土 1 应 妻财午火 2 父母申金 2 官鬼丑土 2 世 兄弟亥水 1 父母酉金 1'; exit; end;


    if (s='泽火革') then begin result:=    '父母未土 2 官鬼巳火 1 妻财卯木 1 世 子孙亥水 1 兄弟酉金 2 父母未土 1 应'; exit; end;
     if (s='水火既济') then begin result:= '父母寅木 2 应 子孙辰土 1 兄弟午火 2 官鬼亥水 1 世 妻财酉金 2 子孙未土 1'; exit; end;
     if (s='水泽节') then begin result:=   '父母寅木 2 子孙辰土 1 兄弟午火 2 应 子孙丑土 2 官鬼亥水 1 妻财酉金 1 世'; exit; end;
     if (s='坎为水') then begin result:=   '父母寅木 2 世 子孙辰土 1 兄弟午火 2 妻财申金 2 应 子孙戌土 1 官鬼子水 2'; exit; end;
    if  (s='水雷屯') then begin result:=   '父母寅木 2 子孙辰土 1 应 兄弟午火 2 官鬼亥水 2 子孙丑土 2 世 父母卯木 1'; exit; end;
     if (s='雷火丰') then begin result:=   '妻财巳火 2 官鬼未土 2 世 父母酉金 1 兄弟亥水 1 父母酉金 2 应 官鬼未土 1'; exit; end;
     if (s='地火明夷') then begin result:= '妻财巳火 2 子孙卯木 2 官鬼丑土 2 世 兄弟亥水 1 父母酉金 2 官鬼未土 1 应'; exit; end;
     if (s='地水师') then begin result:=   '妻财巳火 2 应 子孙卯木 2 官鬼丑土 2 父母申金 2 世 兄弟戌土 1 官鬼子水 2'; exit; end;


      if (s='泽天夬') then begin result:=  '兄弟未土 2 父母巳火 1 世 官鬼卯木 1 父母午火 1 子孙申金 1 应 兄弟戌土 1'; exit; end;
     if (s='水天需') then begin result:=   '兄弟寅木 2 妻财辰土 1 子孙午火 2 世 子孙午火 1 官鬼申金 1 妻财戌土 1 应'; exit; end;
     if (s='水地比') then begin result:=   '兄弟寅木 2 应 妻财辰土 1 子孙午火 2 父母亥水 2 世 官鬼酉金 2 妻财未土 2'; exit; end;
     if (s='雷天大壮') then begin result:= '官鬼巳火 2 父母未土 2 兄弟酉金 1 世 官鬼午火 1 兄弟申金 1 父母戌土 1 应'; exit; end;
     if (s='地天泰') then begin result:=   '子孙巳火 2 应 兄弟卯木 2 妻财丑土 2 子孙午火 1 世 官鬼申金 1 妻财戌土 1'; exit; end;
     if (s='地泽临') then begin result:=   '子孙巳火 2 兄弟卯木 2 应 妻财丑土 2 妻财丑土 2 父母亥水 1 世 官鬼酉金 1'; exit; end;
     if (s='地雷复') then begin result:=   '子孙巳火 2 兄弟卯木 2 妻财丑土 2 应 父母亥水 2 妻财丑土 2 兄弟卯木 1 世'; exit; end;
     if (s='坤为地') then begin result:=   '父母巳火 2 世 官鬼卯木 2 兄弟丑土 2 妻财亥水 2 应 子孙酉金 2 兄弟未土 2'; exit; end;


      if (s='天火同人') then begin result:='官鬼子水 1 应 父母寅木 1 子孙辰土 1 官鬼亥水 1 世 妻财酉金 2 子孙未土 1'; exit; end;
     if (s='天水讼') then begin result:=   '妻财子水 1 官鬼寅木 1 兄弟辰土 1 世 子孙申金 2 兄弟戌土 1 妻财子水 2 应'; exit; end;
     if (s='风水涣') then begin result:=   '兄弟卯木 1 妻财丑土 1 世 父母亥水 2 官鬼申金 2 妻财戌土 1 应 父母子水 2'; exit; end;
     if (s='火风鼎') then begin result:=   '官鬼巳火 1 妻财卯木 2 应 父母丑土 1 兄弟酉金 1 父母未土 1 世 官鬼巳火 2'; exit; end;
     if (s='离为火') then begin result:=   '官鬼巳火 1 世 妻财卯木 2 父母丑土 1 子孙亥水 1 应 兄弟酉金 2 父母未土 1'; exit; end;
     if (s='火山旅') then begin result:=   '父母巳火 1 官鬼卯木 2 兄弟丑土 应 兄弟戌土 1 妻财子水 2 官鬼寅木 2 世'; exit; end;
     if (s='火水未济') then begin result:= '妻财巳火 1 应 子孙卯木 2 官鬼丑土 1 父母申金 2 世 官鬼戌土 1 兄弟子水 2'; exit; end;
    if  (s='山水蒙') then begin result:=   '官鬼辰土 1 妻财午火 2 父母申金 2 世 父母申金 2 官鬼戌土 1 兄弟子水 2 应'; exit; end;


      if (s='乾为天') then begin result:=  '子孙子水 1 世 妻财寅木 1 父母辰土 1 官鬼午火 1 应 兄弟申金 1 父母戌土 1'; exit; end;
     if (s='天风姤') then begin result:=   '兄弟子水 1 子孙寅木 1 官鬼辰土 1 应 父母酉金 1 官鬼未土 1 妻财巳火 2 世'; exit; end;
     if (s='天山遁') then begin result:=   '官鬼子水 1 父母寅木 1 应 子孙辰土 1 子孙戌土 1 官鬼子水 2 世 父母寅木 2'; exit; end;
     if (s='天地否') then begin result:=   '父母子水 1 应 兄弟寅木 1 妻财辰土 1 父母亥水 2 世 官鬼酉金 2 妻财未土 2'; exit; end;
     if (s='风地观') then begin result:=   '父母卯木 1 子孙丑土 1 官鬼亥水 2 世 官鬼亥水 2 妻财酉金 2 子孙未土 2 应'; exit; end;
     if (s='火天大有') then begin result:= '子孙巳火 1 应 兄弟卯木 2 妻财丑土 1 子孙午火 1 世 官鬼申金 1 妻财戌土 1'; exit; end;
     if (s='火地晋') then begin result:=   '子孙巳火 1 兄弟卯木 2 妻财丑土 1 世 父母亥水 2 官鬼酉金 2 妻财未土 2 应'; exit; end;
     if (s='山地剥') then begin result:=   '妻财辰土 1 子孙午火 2 世 官鬼申金 2 父母亥水 2 官鬼酉金 2 应 妻财未土 2'; exit; end;


      if (s='天雷无妄') then begin result:= '妻财子水 1 官鬼寅木 1 兄弟辰土 1 世 妻财亥水 2 兄弟丑土 2 官鬼卯木 1 应'; exit; end;
     if (s='风天小畜') then begin result:=  '妻财卯木 1 父母丑土 1 子孙亥水 2 应 官鬼午火 1 兄弟申金 1 父母戌土 1 世'; exit; end;
     if (s='巽为风') then begin result:=    '子孙卯木 1 世 官鬼丑土 1 兄弟亥水 2 父母酉金 1 应 官鬼未土 1 妻财巳火 2'; exit; end;
     if (s='风火家人') then begin result:=  '官鬼卯木 1 兄弟丑土 1 应 妻财亥水 2 妻财亥水 1 子孙酉金 2 世 兄弟未土 1'; exit; end;
     if (s='风雷益') then begin result:=    '官鬼卯木 1 应 兄弟丑土 1 妻财亥水 2 妻财亥水 2 世 兄弟丑土 2 官鬼卯木 1'; exit; end;
     if (s='火雷噬嗑') then begin result:=  '妻财巳火 1 子孙卯木 2 世 管滚丑土 1 兄弟亥水 2 官鬼丑土 2 应 子孙卯木 1'; exit; end;
     if (s='山风蛊') then begin result:=    '兄弟辰土 1 应 父母午火 2 子孙申金 2 子孙酉金 1 世 兄弟未土 1 父母巳火 2'; exit; end;
     if (s='山雷颐') then begin result:=    '官鬼辰土 1 妻财午火 2 父母申金 2 世 兄弟亥水 2 官鬼丑土 2 子孙卯木 1 应'; exit; end;

      if (s='泽风大过') then begin result:='父母未土 2 官鬼巳火 1 妻财卯木 1 世 兄弟酉金 1 父母未土 1 官鬼巳火 2 应'; exit; end;
     if (s='泽雷随') then begin result:=   '兄弟未土 2 应 父母巳火 1 官鬼卯木 1 妻财亥水 2 世 兄弟丑土 2 官鬼卯木 1'; exit; end;
     if (s='水风井') then begin result:=   '官鬼寅木 2 兄弟辰土 1 世 父母午火 2 子孙酉金 1 兄弟未土 1 应 父母巳火 2'; exit; end;
     if (s='雷风恒') then begin result:=   '父母巳火 2 应 兄弟未土 2 子孙酉金 1 子孙酉金 1 世 兄弟未土 1 父母巳火 2'; exit; end;
     if (s='雷水解') then begin result:=   '官鬼巳火 2 父母未土 2 应 兄弟酉金 1 兄弟申金 2 父母戌土 1 世 子孙子水 2'; exit; end;
     if (s='震为雷') then begin result:=   '子孙巳火 2 世 妻财未土 2 官鬼酉金 1 父母亥水 2 应 妻财丑土 2 兄弟卯木 1'; exit; end;
     if (s='雷地豫') then begin result:=   '父母巳火 2 兄弟未土 2 子孙酉金 1 应 妻财亥水 2 子孙酉金 2 兄弟未土 2 世'; exit; end;
     if (s='地风升') then begin result:=   '妻财巳火 2 子孙卯木 2 官鬼丑土 2 世 父母酉金 1 官鬼未土 1 妻财巳火 2 应'; exit; end;

end;

function get_najia(const s: string): string;
begin
 result:= '  ';
     if (s='泽山咸') then begin result:=   '父母未土 2 应 兄弟酉金 1 子孙亥水 1 兄弟申金 1 世 官鬼午火 2 父母辰土 2'; exit; end;
     if (s='兑为泽') then begin result:=   '父母未土 2 世 兄弟酉金 1 子孙亥水 1 父母丑土 2 应 妻财卯木 1 官鬼巳火 1'; exit; end;
     if (s='泽水困') then begin result:=   '父母未土 2 兄弟酉金 1 子孙亥水 1 应 官鬼午火 2 父母辰土 1 妻财寅木 2 世'; exit; end;
     if (s='泽地萃') then begin result:=   '父母未土 2 兄弟酉金 1 应 子孙亥水 1 妻财卯木 2 官鬼巳火 2 世 父母未土 2'; exit; end;
     if (s='水山蹇') then begin result:=   '子孙子水 2 父母戌土 1 兄弟申金 2 世 兄弟申金 1 官鬼午火 2 父母辰土 2 应'; exit; end;
     if (s='雷山小过') then begin result:=   '父母戌土 2 兄弟申金 2 官鬼午火 1 世 兄弟申金 1 官鬼午火 2 父母辰土 2 应'; exit; end;
     if (s='雷泽归妹') then begin result:=   '父母戌土 2 应 兄弟申金 2 官鬼午火 1 父母丑土 2 世 妻财卯木 1 官鬼巳火 1'; exit; end;
     if (s='地山谦')  then begin result:=   '兄弟酉金 2 子孙亥水 2 世 父母丑土 2 兄弟申金 1 官鬼午火 2 应 父母辰土 2'; exit; end;


      if (s='天泽履') then begin result:=   '兄弟戌土 1 子孙申金 1 世 父母午火 1 兄弟丑土 2 官鬼卯木 1 应 父母巳火 1'; exit; end;
     if (s='风山渐') then begin result:=   '官鬼卯木 1 应 父母巳火 1 兄弟未土 2 子孙申金 1 世 父母午火 2 兄弟辰土 2'; exit; end;
     if (s='风泽中孚') then begin result:=   '官鬼卯木 1 父母巳火 1 兄弟未土 2 世 兄弟丑土 2 官鬼卯木 1 父母巳火 1 应'; exit; end;
     if (s='火泽睽') then begin result:=   '父母巳火 1 兄弟未土 2 子孙酉金 1 世 兄弟丑土 2 官鬼卯木 1 父母巳火 1 应'; exit; end;
     if (s='山天大畜') then begin result:=   '官鬼寅木 1 妻财子水 2 应 兄弟戌土 2 兄弟辰土 1 官鬼寅木 世 妻财子水 1'; exit; end;
     if (s='山火贲') then begin result:=   '官鬼寅木 1 妻财子水 2 兄弟戌土 2 应 妻财亥水 1 兄弟丑土 2 官鬼卯木 1 世'; exit; end;
     if (s='艮为山') then begin result:=   '官鬼寅木 1 世 妻财子水 2 兄弟戌土 2 子孙申金 1 应 父母午火 2 兄弟辰土 2'; exit; end;
     if (s='山泽损') then begin result:=   '官鬼寅木 1 应 妻财子水 2 兄弟戌土 2 兄弟丑土 2 世 官鬼卯木 1 父母巳火 1'; exit; end;


    if (s='泽火革') then begin result:=   '官鬼未土 2 父母酉金 1 兄弟亥水 1 世 兄弟亥水 1 官鬼丑土 2 子孙卯木 1 应'; exit; end;
     if (s='水火既济') then begin result:=   '兄弟子水 2 应 官鬼戌土 1 父母申金 2 兄弟亥水 1 世 官鬼丑土 2 子孙卯木 1'; exit; end;
     if (s='水泽节') then begin result:=   '兄弟子水 2 官鬼戌土 1 父母申金 2 应 官鬼丑土 2 子孙卯木 1 妻财巳火 1 世'; exit; end;
     if (s='坎为水') then begin result:=   '兄弟子水 2 世 官鬼戌土 1 父母申金 2 妻财午火 2 应 官鬼辰土 1 子孙寅木 2'; exit; end;
    if  (s='水雷屯') then begin result:=   '兄弟子水 2 官鬼戌土 1 应 父母申金 2 官鬼辰土 2 子孙寅木 2 世 兄弟子水 1'; exit; end;
     if (s='雷火丰') then begin result:=   '官鬼戌土 2 父母申金 2 世 妻财午火 1 兄弟亥水 1 官鬼丑土 2 应 子孙卯木 1'; exit; end;
     if (s='地火明夷') then begin result:=   '父母酉金 2 兄弟亥水 2 官鬼丑土 2 世 兄弟亥水 1 官鬼丑土 2 子孙卯木 1 应'; exit; end;
     if (s='地水师') then begin result:=   '父母酉金 2 应 兄弟亥水 2 官鬼丑土 2 妻财午火 2 世 官鬼辰土 1 子孙寅木 2'; exit; end;


      if (s='泽天夬') then begin result:=   '兄弟未土 2 子孙酉金 1 世 妻财亥水 1 兄弟辰土 1 官鬼寅木 1 应 妻财子水 1'; exit; end;
     if (s='水天需') then begin result:=   '妻财子水 2 兄弟戌土 1 子孙申金 2 世 兄弟辰土 1 官鬼寅木 1 妻财子水 1 应'; exit; end;
     if (s='水地比') then begin result:=   '妻财子水 2 应 兄弟戌土 1 子孙申金 2 官鬼卯木 2 世 父母巳火 2 兄弟未土 2'; exit; end;
     if (s='雷天大壮') then begin result:=   '兄弟戌土 2 子孙申金 2 父母午火 1 世 兄弟辰土 1 官鬼寅木 1 妻财子水 1 应'; exit; end;
     if (s='地天泰') then begin result:=   '子孙酉金 2 应 妻财亥水 2 兄弟丑土 2 兄弟辰土 1 世 官鬼寅木 1 妻财子水 1'; exit; end;
     if (s='地泽临') then begin result:=   '子孙酉金 2 妻财亥水 2 应 兄弟丑土 2 兄弟丑土 2 官鬼卯木 1 世 父母巳火 1'; exit; end;
     if (s='地雷复') then begin result:=   '子孙酉金 2 妻财亥水 2 兄弟丑土 2 应 兄弟辰土 2 官鬼寅木 2 妻财子水 1 世'; exit; end;
     if (s='坤为地') then begin result:=   '子孙酉金 2 世 妻财亥水 2 兄弟丑土 2 官鬼卯木 2 应 父母巳火 2 兄弟未土 2'; exit; end;


      if (s='天火同人') then begin result:=   '子孙戌土 1 应 妻财申金 1 兄弟午火 1 官鬼亥水 1 世 子孙丑土 2 父母卯木 1'; exit; end;
     if (s='天水讼') then begin result:=   '子孙戌土 1 妻财申金 1 兄弟午火 1 世 兄弟午火 2 子孙辰土 1 父母寅木 2 应'; exit; end;
     if (s='风水涣') then begin result:=   '父母卯木 1 兄弟巳火 1 世 子孙未土 2 兄弟午火 2 子孙辰土 1 应 父母寅木 2'; exit; end;
     if (s='火风鼎') then begin result:=   '兄弟巳火 1 子孙未土 2 应 妻财酉金 1 妻财酉金 1 官鬼亥水 1 世 子孙丑土 2'; exit; end;
     if (s='离为火') then begin result:=   '兄弟巳火 1 世 子孙未土 2 妻财酉金 1 官鬼亥水 1 应 子孙丑土 2 父母卯木 1'; exit; end;
     if (s='火山旅') then begin result:=   '兄弟巳火 1 子孙未土 2 妻财酉金 应 妻财申金 1 兄弟午火 2 子孙辰土 2 世'; exit; end;
     if (s='火水未济') then begin result:=   '兄弟巳火 1 应 子孙未土 2 妻财酉金 1 兄弟午火 2 世 子孙辰土 1 父母寅木 2'; exit; end;
    if  (s='山水蒙') then begin result:=   '父母寅木 1 官鬼子水 2 子孙戌土 2 世 兄弟午火 2 子孙辰土 1 父母寅木 2 应'; exit; end;


      if (s='乾为天') then begin result:=   '父母戌土 1 世 兄弟申金 1 官鬼午火 1 父母辰土 1 应 妻财寅木 1 子孙子水 1'; exit; end;
     if (s='天风姤') then begin result:=   '父母戌土 1 兄弟申金 1 官鬼午火 1 应 兄弟酉金 1 子孙亥水 1 父母丑土 2 世'; exit; end;
     if (s='天山遁') then begin result:=   '父母戌土 1 兄弟申金 1 应 官鬼午火 1 兄弟申金 1 官鬼午火 2 世 父母辰土 2'; exit; end;
     if (s='天地否') then begin result:=   '父母戌土 1 应 兄弟申金 1 官鬼午火 1 妻财卯木 2 世 官鬼巳火 2 父母未土 2'; exit; end;
     if (s='风地观') then begin result:=   '妻财卯木 1 官鬼巳火 1 父母未土 2 世 妻财卯木 2 官鬼巳火 2 父母未土 2 应'; exit; end;
     if (s='火天大有') then begin result:=   '官鬼巳火 1 应 父母未土 2 兄弟酉金 1 父母辰土 1 世 妻财寅木 1 子孙子水 1'; exit; end;
     if (s='火地晋') then begin result:=   '官鬼巳火 1 父母未土 2 兄弟酉金 1 世 妻财卯木 2 官鬼巳火 2 父母未土 2 应'; exit; end;
     if (s='山地剥') then begin result:=   '妻财寅木 1 子孙子水 2 世 父母戌土 2 妻财卯木 2 官鬼巳火 2 应 父母未土 2'; exit; end;


      if (s='天雷无妄') then begin result:=   '妻财戌土 1 官鬼申金 1 子孙午火 1 世 妻财辰土 2 兄弟寅木 2 父母子水 1 应'; exit; end;
     if (s='风天小畜') then begin result:=   '兄弟卯木 1 子孙巳火 1 妻财未土 2 应 妻财辰土 1 兄弟寅木 1 父母子水 1 世'; exit; end;
     if (s='巽为风') then begin result:=   '兄弟卯木 1 世 子孙巳火 1 妻财未土 2 官鬼酉金 1 应 父母亥水 1 妻财丑土 2'; exit; end;
     if (s='风火家人') then begin result:=   '兄弟卯木 1 子孙巳火 1 应 妻财未土 2 父母亥水 1 妻财丑土 2 世 兄弟卯木 1'; exit; end;
     if (s='风雷益') then begin result:=   '兄弟卯木 1 应 子孙巳火 1 妻财未土 2 妻财辰土 2 世 兄弟寅木 2 父母子水 1'; exit; end;
     if (s='火雷噬嗑') then begin result:=   '子孙巳火 1 妻财未土 2 世 官鬼酉金 1 妻财辰土 2 兄弟寅木 2 应 父母子水 1'; exit; end;
     if (s='山风蛊') then begin result:=   '兄弟寅木 1 应 父母子水 2 妻财戌土 2 官鬼酉金 1 世 父母亥水 1 妻财丑土 2'; exit; end;
     if (s='山雷颐') then begin result:=   '兄弟寅木 1 父母子水 2 妻财戌土 2 世 妻财辰土 2 兄弟寅木 2 父母子水 1 应'; exit; end;

      if (s='泽风大过') then begin result:=   '妻财未土 2 官鬼酉金 1 父母亥水 1 世 官鬼酉金 1 父母亥水 1 妻财丑土 2 应'; exit; end;
     if (s='泽雷随') then begin result:=   '妻财未土 2 应 官鬼酉金 1 父母亥水 1 妻财辰土 2 世 兄弟寅木 2 父母子水 1'; exit; end;
     if (s='水风井') then begin result:=   '父母子水 2 妻财戌土 1 世 官鬼申金 2 官鬼酉金 1 父母亥水 1 应 妻财丑土 2'; exit; end;
     if (s='雷风恒') then begin result:=   '妻财戌土 2 应 官鬼申金 2 子孙午火 1 官鬼酉金 1 世 父母亥水 1 妻财丑土 2'; exit; end;
     if (s='雷水解') then begin result:=   '妻财戌土 2 官鬼申金 2 应 子孙午火 1 子孙午火 2 妻财辰土 1 世 兄弟寅木 2'; exit; end;
     if (s='震为雷') then begin result:=   '妻财戌土 2 世 官鬼申金 2 子孙午火 1 妻财辰土 2 应 兄弟寅木 2 父母子水 1'; exit; end;
     if (s='雷地豫') then begin result:=   '妻财戌土 2 官鬼申金 2 子孙午火 1 应 兄弟卯木 2 子孙巳火 2 妻财未土 2 世'; exit; end;
     if (s='地风升') then begin result:=   '官鬼酉金 2 父母亥水 2 妻财丑土 2 世 官鬼酉金 1 父母亥水 1 妻财丑土 2 应'; exit; end;

end;

function get_tiangan_by_gua(const m: string): string;
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

function get_guagong(const s: string): string;
begin
    if (s='泽山咸') or
     (s='兑为泽') or
     (s='泽水困') or
     (s='泽地萃') or
     (s='水山蹇') or
     (s='雷山小过') or
     (s='雷泽归妹') or
     (s='地山谦')
     then begin
     result:= '(兑宫)';
      exit;
      end;

      if (s='天泽履') or
     (s='风山渐') or
     (s='风泽中孚') or
     (s='火泽睽') or
     (s='山天大畜') or
     (s='山火贲') or
     (s='艮为山') or
     (s='山泽损')
     then begin
     result:= '(艮宫)';
      exit;
      end;

    if (s='泽火革') or
     (s='水火既济') or
     (s='水泽节') or
     (s='坎为水') or
     (s='水雷屯') or
     (s='雷火丰') or
     (s='地火明夷') or
     (s='地水师')
     then begin
     result:= '(坎宫)';
      exit;
      end;

      if (s='泽天夬') or
     (s='水天需') or
     (s='水地比') or
     (s='雷天大壮') or
     (s='地天泰') or
     (s='地泽临') or
     (s='地雷复') or
     (s='坤为地')
     then begin
     result:= '(坤宫)';
      exit;
      end;

      if (s='天火同人') or
     (s='天水讼') or
     (s='风水涣') or
     (s='火风鼎') or
     (s='离为火') or
     (s='火山旅') or
     (s='火水未济') or
     (s='山水蒙')
     then begin
     result:= '(离宫)';
      exit;
      end;

      if (s='乾为天') or
     (s='天风姤') or
     (s='天山遁') or
     (s='天地否') or
     (s='风地观') or
     (s='火天大有') or
     (s='火地晋') or
     (s='山地剥')
     then begin
     result:= '(乾宫)';
      exit;
      end;

      if (s='天雷无妄') or
     (s='风天小畜') or
     (s='巽为风') or
     (s='风火家人') or
     (s='风雷益') or
     (s='火雷噬嗑') or
     (s='山风蛊') or
     (s='山雷颐')
     then begin
     result:= '(巽宫)';
      exit;
      end;

      if (s='泽风大过') or
     (s='泽雷随') or
     (s='水风井') or
     (s='雷风恒') or
     (s='雷水解') or
     (s='震为雷') or
     (s='雷地豫') or
     (s='地风升')
     then begin
     result:= '(震宫)';
      end;
end;

function qian(const s: string): string;
begin
 result:= '';
if s='乾' then
begin
  result:='道陟石阪，胡言连謇。译瘖且聋，莫使道通。请谒不行，求事无功。';
  exit;
end;
if s='乾之坤' then
begin
  result:='招殃来螫，害我邦国。病伤手足，不得安息。';
  exit;
end;
if s='乾之屯' then
begin
  result:='阳孤亢极，多所恨惑。车倾盖亡，身常忧惶。乃得其愿，雌雄相从。';
  exit;
end;
if s='乾之蒙' then
begin
  result:='鴶鵴鸤鸠，专一无尤。君子是则，长受嘉福。';
  exit;
end;
if s='乾之需' then
begin
  result:='目瞤足动，喜如其愿，举家蒙宠。';
  exit;
end;
if s='乾之讼' then
begin
  result:='龙马上山，绝无水泉。喉焦唇干，舌不能言。';
  exit;
end;
if s='乾之师' then
begin
  result:='仓盈庾亿，宜种黍稷。年丰岁熟，民人安息。';
  exit;
end;
if s='乾之比' then
begin
  result:='中夜犬吠，盗在墙外。神明佑助，消散皆去。';
  exit;
end;
if s='乾之小畜' then
begin
  result:='据斗运枢，顺天无忧。与乐并居。';
  exit;
end;
if s='乾之履' then
begin
  result:='空拳握手，倒地更起。富饶丰衍，快乐无已。';
  exit;
end;
if s='乾之泰' then
begin
  result:='不风不雨，白日皎皎。宜出驱驰，通利大道。';
  exit;
end;
if s='乾之否' then
begin
  result:='载日晶光，骖驾六龙。禄命彻天，封为燕王。';
  exit;
end;
if s='乾之同人' then
begin
  result:='子号索哺，母行求食。反见空巢，訾我长息。';
  exit;
end;
if s='乾之大有' then
begin
  result:='上帝之生，福佑日成。修德行惠，乐且安宁。';
  exit;
end;
if s='乾之谦' then
begin
  result:='山险难登，涧中多石。车驰轊击，载重伤轴。担负差踬，跌踒右足。';
  exit;
end;
if s='乾之豫' then
begin
  result:='禹凿龙门，通利水源。东注沧海，民得安存。';
  exit;
end;
if s='乾之随' then
begin
  result:='乘龙上天，两蛇为辅。踊跃云中，游观沧海。';
  exit;
end;
if s='乾之蛊' then
begin
  result:='彭祖九子，据德不殆。南山松柏，长受嘉福。';
  exit;
end;
if s='乾之临' then
begin
  result:='南山旻天，刺政关身。疾悲无辜，背憎为仇。';
  exit;
end;
if s='乾之观' then
begin
  result:='江河淮海，天之奥府。众利所聚，可以饶有。乐我君子。';
  exit;
end;
if s='乾之噬嗑' then
begin
  result:='坚冰黄鸟，终日悲号。不见白粒，但见藜蒿。数惊鸷鸟，为我心忧。';
  exit;
end;
if s='乾之贲' then
begin
  result:='室如悬磬，既危且殆。早见之士，依山谷处。';
  exit;
end;
if s='乾之剥' then
begin
  result:='大禹戒路，蚩尤除道。周匝万里，不危不殆。见其所使，无所不在。';
  exit;
end;
if s='乾之复' then
begin
  result:='三人为旅，俱归北海。入门上堂，拜谒王母，饮劳我酒。';
  exit;
end;
if s='乾之无妄' then
begin
  result:='传言相误，非干径路。鸣鼓逐狐，不知迹处。';
  exit;
end;
if s='乾之大畜' then
begin
  result:='三羊争雌，相逐奔驰。终日不食，精气劳疲。';
  exit;
end;
if s='乾之颐' then
begin
  result:='纯服素裳，载主以兴。德义茂生，天下归仁。';
  exit;
end;
if s='乾之大过' then
begin
  result:='桀跖并处，人民劳苦。拥兵荷粮，战于齐鲁。';
  exit;
end;
if s='乾之坎' then
begin
  result:='黄鸟来集，既嫁不答。念我父兄，思复邦国。';
  exit;
end;
if s='乾之离' then
begin
  result:='胎生孚乳，长息成就。充满帝室，家国昌富。';
  exit;
end;
if s='乾之咸' then
begin
  result:='三人求橘，反得丹穴。女清以富，黄金百镒。';
  exit;
end;
if s='乾之恒' then
begin
  result:='东山西岳，会合俱食。百家送从，以成恩福。';
  exit;
end;
if s='乾之遁' then
begin
  result:='眵鸡无距，与鹊交斗。翅折目盲，为鸠所伤。';
  exit;
end;
if s='乾之大壮' then
begin
  result:='隙大墙坏，蠧众木折。狼虎为政，天降罪罚。高弑望夷，胡亥以毙。';
  exit;
end;
if s='乾之晋' then
begin
  result:='三痴俱走，迷路失道。惑不知归，反入患口。';
  exit;
end;
if s='乾之明夷' then
begin
  result:='弓矢俱张，把弹折弦。丸发不至，道遇害患。';
  exit;
end;
if s='乾之家人' then
begin
  result:='三女求夫，伺候山隅，不见复关，长思忧叹。';
  exit;
end;
if s='乾之睽' then
begin
  result:='阳旱炎炎，伤害禾谷。穑人无食，耕夫叹息。';
  exit;
end;
if s='乾之蹇' then
begin
  result:='骑豚逐羊，不见所望。径涉虎庐，亡羝失羔。';
  exit;
end;
if s='乾之解' then
begin
  result:='暗昧冥语，转相诖误。鬼魅所舍，谁知卧处。';
  exit;
end;
if s='乾之损' then
begin
  result:='姬姜祥淑，二人偶食。论仁议福，以安王室。';
  exit;
end;
if s='乾之益' then
begin
  result:='公孙驾骊，载聘东齐。延陵说产，遗季纻衣。';
  exit;
end;
if s='乾之夬' then
begin
  result:='孤竹之墟，失妇亡夫。伤于蒺藜，不见少妻。东郭棠姜，武氏以亡。';
  exit;
end;
if s='乾之姤' then
begin
  result:='仁政不暴，凤凰来舍。四时顺节，民安其处。';
  exit;
end;
if s='乾之萃' then
begin
  result:='任劣力薄，孱驽恐怯。如猬见鹊，不敢拒格。';
  exit;
end;
if s='乾之升' then
begin
  result:='卫侯东游，惑于少姬。亡我考妣，久迷不来。';
  exit;
end;
if s='乾之困' then
begin
  result:='噂噂所言，莫如我垣。欢喜坚固，可以长安。';
  exit;
end;
if s='乾之井' then
begin
  result:='鼋鸣岐山，鳖应幽渊。男女媾精，万物化生。文王以成，为周开庭。';
  exit;
end;
if s='乾之革' then
begin
  result:='玄黄虺隤，行者劳罢。役夫憔悴，踰时不归。';
  exit;
end;
if s='乾之鼎' then
begin
  result:='弱足刖跟，不利出门。市贾无利，折亡为患。';
  exit;
end;
if s='乾之震' then
begin
  result:='悬貆素餐，居非其官。失舆剥庐，休坐徙居。';
  exit;
end;
if s='乾之艮' then
begin
  result:='民怯城恶，奸人所伏。寇贼大至，入我郛郭，妻子俘获。';
  exit;
end;
if s='乾之渐' then
begin
  result:='阳低阴仰，水为灾伤，我宝不进，利难生子。';
  exit;
end;
if s='乾之归妹' then
begin
  result:='背北相憎，心意不同，如火与金。';
  exit;
end;
if s='乾之丰' then
begin
  result:='太微帝室，黄帝所值。藩屏周卫，不可得入，常安无患。';
  exit;
end;
if s='乾之旅' then
begin
  result:='茧栗牺牲，敬享鬼神。神嗜饮食，受福多孙。';
  exit;
end;
if s='乾之巽' then
begin
  result:='出门逢恶，为患为怨。更相击刺，伤我手端。';
  exit;
end;
if s='乾之兑' then
begin
  result:='鹢飞中退，举事不遂，宋人乱溃。';
  exit;
end;
if s='乾之涣' then
begin
  result:='跛踦相随，日暮牛罢。陵迟后旅，失利亡雌。';
  exit;
end;
if s='乾之节' then
begin
  result:='龙角博颡，位至公卿。世禄久长，起动安宁。';
  exit;
end;
if s='乾之中孚' then
begin
  result:='舜升大禹，石夷之野。征诣王庭，拜治水土。';
  exit;
end;
if s='乾之小过' then
begin
  result:='从风放火，荻芝俱死。三害集房，叔子中伤。';
  exit;
end;
if s='乾之既济' then
begin
  result:='楩生荆山，命制输班。袍衣剥脱，夏热冬寒。饥饿枯槁，众人莫怜。';
  exit;
end;
if s='乾之未济' then
begin
  result:='长面大鼻，来解己忧。遗吾福子，惠我嘉喜。';

end;

end;

function kun(const s: string): string;
begin
 result:= '';

 if s='坤' then
begin
  result:='不风不雨，白日皎皎，宜出驱驰，通利大道。';
  exit;
end;
if s='坤之乾' then
begin
  result:='谷风布气，万物出生。萌庶长养，花叶茂盛。';
  exit;
end;
if s='坤之屯' then
begin
  result:='苍龙单独，与石相触。摧折两角，室家不足。';
  exit;
end;
if s='坤之蒙' then
begin
  result:='城上有乌，自名破家。招呼鸩毒，为国患灾。';
  exit;
end;
if s='坤之需' then
begin
  result:='霜降闭户，蛰虫隐处。不见日月，与死为伍。';
  exit;
end;
if s='坤之讼' then
begin
  result:='天之德室，温仁受福。衣裳所在，凶恶不起。';
  exit;
end;
if s='坤之师' then
begin
  result:='皇陛九重，绝不可登。谓天盖高，未见王公。';
  exit;
end;
if s='坤之比' then
begin
  result:='孔德如玉，出于幽谷。飞上乔木，鼓其羽翼，辉光照国。';
  exit;
end;
if s='坤之小畜' then
begin
  result:='五轭四軏，优得饶有。陈力就列，驺虞悦喜。';
  exit;
end;
if s='坤之履' then
begin
  result:='敝笱在梁，鲂逸不禁。渔父劳苦，焦喉干口，虚空无有。';
  exit;
end;
if s='坤之泰' then
begin
  result:='雷行相逐，无有攸息。战于平陆，为夷所覆。';
  exit;
end;
if s='坤之否' then
begin
  result:='六龙争极，服在下饰。谨慎管钥，结禁无出。';
  exit;
end;
if s='坤之同人' then
begin
  result:='长男少女，相向共语，福禄欢喜。';
  exit;
end;
if s='坤之大有' then
begin
  result:='迁延恶人，使德不通。炎火为殃，禾稼大伤。';
  exit;
end;
if s='坤之谦' then
begin
  result:='修其翰翼，随风向北。至虞夏国，与舜相得。年岁大乐，邑无盗贼。';
  exit;
end;
if s='坤之豫' then
begin
  result:='铅刀攻玉，坚不可得。尽我筋力，胝茧为疾。';
  exit;
end;
if s='坤之随' then
begin
  result:='举袂覆目，不见日月。衣衾簠簋，就长夜室。';
  exit;
end;
if s='坤之蛊' then
begin
  result:='贼仁伤德，天怒不福。斩刈宗社，失其邦国。';
  exit;
end;
if s='坤之临' then
begin
  result:='白龙赤虎，战斗俱怒。蚩尤败走，死于鱼口。';
  exit;
end;
if s='坤之观' then
begin
  result:='北辰紫宫，衣冠中立。含和建德，常受天福。';
  exit;
end;
if s='坤之噬嗑' then
begin
  result:='稷为尧使，西见王母。拜请百福，赐我喜子。';
  exit;
end;
if s='坤之贲' then
begin
  result:='三人异趣，反复迷惑。一身五心，乱无所得。';
  exit;
end;
if s='坤之剥' then
begin
  result:='南山大玃，盗我媚妾。怯不敢逐，退而独宿。';
  exit;
end;
if s='坤之复' then
begin
  result:='众鬼所逐，反作大怪。九身无头，魂惊魄去，不可以居。';
  exit;
end;
if s='坤之无妄' then
begin
  result:='延颈远望，眯为目病。不见叔姬，使伯心忧。';
  exit;
end;
if s='坤之大畜' then
begin
  result:='典册法书，藏在兰台。虽遭乱溃，独不遇灾。';
  exit;
end;
if s='坤之颐' then
begin
  result:='自卫反鲁，时不我与。冰炭异室，仁道隔塞。';
  exit;
end;
if s='坤之大过' then
begin
  result:='瘤瘿秃疥，为身疮害。疾病癃残，常不远逮。';
  exit;
end;
if s='坤之坎' then
begin
  result:='齐东郭卢，嫁于洛都。俊良美好，媒利过倍。';
  exit;
end;
if s='坤之离' then
begin
  result:='齐鲁争言，战于龙门。构怨连祸，三世不安。';
  exit;
end;
if s='坤之咸' then
begin
  result:='膏泽肥壤，农人丰敞。利居长安，历世无患。';
  exit;
end;
if s='坤之恒' then
begin
  result:='仓盈庾亿，宜种黍稷，年丰岁熟，民得安息。';
  exit;
end;
if s='坤之遁' then
begin
  result:='鸱鸮破斧，邦人危殆。赖旦忠德，转祸为福，倾危复立。';
  exit;
end;
if s='坤之大壮' then
begin
  result:='岁饥无年，虐政害民。干溪骊山，秦楚结冤。';
  exit;
end;
if s='坤之晋' then
begin
  result:='挒絜累累，缔结难解。嫫母衒嫁，媒不得坐，自为身祸。';
  exit;
end;
if s='坤之明夷' then
begin
  result:='娵訾开门，鹤鸣弹冠。章甫进用，舞韶和鸾。';
  exit;
end;
if s='坤之家人' then
begin
  result:='弟姊合居，与类相扶。愿慕群丑，不离其友。';
  exit;
end;
if s='坤之睽' then
begin
  result:='邯郸反言，父兄生患。涉叔忧恨，卒死不还。';
  exit;
end;
if s='坤之蹇' then
begin
  result:='二人逐兔，各争有得。爱亡善走，多获鹿子。';
  exit;
end;
if s='坤之解' then
begin
  result:='北辰紫宫，衣冠立中。含和建德，常受天福。';
  exit;
end;
if s='坤之损' then
begin
  result:='拜跪请兔，不得其哺。俛首衔枚，低头北去。';
  exit;
end;
if s='坤之益' then
begin
  result:='鹤盗我珠，逃于东隅。求之郭墟，不见所居。';
  exit;
end;
if s='坤之夬' then
begin
  result:='一簧两舌，妄言谬语。三奸成虎，曾母投杼。';
  exit;
end;
if s='坤之姤' then
begin
  result:='孤独特处，莫与为旅，身日劳苦。使布五谷，阴阳顺序。';
  exit;
end;
if s='坤之萃' then
begin
  result:='褰衣涉河，水深渍罢。赖遇舟子，济脱无他。';
  exit;
end;
if s='坤之升' then
begin
  result:='凭河登山，道路阻难，求事少便。';
  exit;
end;
if s='坤之困' then
begin
  result:='兔罝之容，不失其恭。和谦致乐，君子攸同。';
  exit;
end;
if s='坤之井' then
begin
  result:='三女求夫，伺候山隅。不见复关，泣涕涟如。';
  exit;
end;
if s='坤之革' then
begin
  result:='螟虫为贼，害我五谷。箪笥空虚，家无所食。';
  exit;
end;
if s='坤之鼎' then
begin
  result:='望尚阿衡，太宰周公。藩屏辅弼，福禄来同。';
  exit;
end;
if s='坤之震' then
begin
  result:='三牛生狗，以戌为母。荆夷上侵，姬伯出走。';
  exit;
end;
if s='坤之艮' then
begin
  result:='涂遏道塞，求事不得。';
  exit;
end;
if s='坤之渐' then
begin
  result:='探怀得蚤，所愿失道，无有凶忧，善居渐好。';
  exit;
end;
if s='坤之归妹' then
begin
  result:='飞蚁遇道，趾多扰垣。居之不安，覆压为患。';
  exit;
end;
if s='坤之丰' then
begin
  result:='义不胜情，以欲自倾。几利危宠，折角摧颈。';
  exit;
end;
if s='坤之旅' then
begin
  result:='潼滃蔚荟，扶首来会。津液下降，流潦滂沛。';
  exit;
end;
if s='坤之巽' then
begin
  result:='白驹生刍，猗猗盛姝。赫喧君子，乐以忘忧。';
  exit;
end;
if s='坤之兑' then
begin
  result:='车驰人趍，卷甲相仇。齐鲁寇战，败于犬丘。';
  exit;
end;
if s='坤之涣' then
begin
  result:='举首望城，不见子贞，使我悔生。';
  exit;
end;
if s='坤之节' then
begin
  result:='龙斗时门，失理伤贤。内畔外贼，则生祸难。';
  exit;
end;
if s='坤之中孚' then
begin
  result:='安如泰山，福喜屡臻。虽有豺虎，不致危身。';
  exit;
end;
if s='坤之小过' then
begin
  result:='初忧后喜，与福为市。八佾列陈，饮御嘉友。';
  exit;
end;
if s='坤之既济' then
begin
  result:='持刀操肉，对酒不食。夫行从军，少子入狱，抱膝独宿。';
  exit;
end;
if s='坤之未济' then
begin
  result:='阴衰老极，阳建其德。履离戴光，天下昭明。功业不长，虾蟆代王。';
  exit;
end;

end;

function tun(const s: string): string;
begin
 if s='屯' then
begin
  result:='兵征大宛，北出玉关。与胡寇战，平城道西，七日绝粮，身几不全。';
  exit;
end;
if s='屯之乾' then
begin
  result:='泛泛柏舟，流行不休。耿耿寤寐，心怀大忧。仁不逢时，退隐穷居。';
  exit;
end;
if s='屯之坤' then
begin
  result:='采薪得麟，大命陨颠。豪雄争名，天下四分。';
  exit;
end;
if s='屯之蒙' then
begin
  result:='山崩谷绝，大福既竭。泾渭失纪，玉历既已。';
  exit;
end;
if s='屯之需' then
begin
  result:='夏台羑里，汤文所厄。鬼侯输贿，商王解合。';
  exit;
end;
if s='屯之讼' then
begin
  result:='泥滓污辱，弃捐沟渎。所共笑哭，终不显录。';
  exit;
end;
if s='屯之师' then
begin
  result:='李梅冬实，国多盗贼。扰乱并作，君不得息。';
  exit;
end;
if s='屯之比' then
begin
  result:='獐鹿逐牧，饱归其居。反还次舍，无有疾故。';
  exit;
end;
if s='屯之小畜' then
begin
  result:='夹河为婚，期至无船。摇心失望，不见所欢。';
  exit;
end;
if s='屯之履' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。';
  exit;
end;
if s='屯之泰' then
begin
  result:='坐位失处，不能自居。调摄违和，阴阳颠倒。';
  exit;
end;
if s='屯之否' then
begin
  result:='登几上舆，驾驷南游。合纵散横，燕齐以强。';
  exit;
end;
if s='屯之同人' then
begin
  result:='三孙荷弩，无益于辅。域弱不守，邦君受讨。';
  exit;
end;
if s='屯之大有' then
begin
  result:='河伯大呼，津不得渡。船空无人，往来亦难。';
  exit;
end;
if s='屯之谦' then
begin
  result:='甘露醴泉，太平机关。仁德感应，岁乐民安。';
  exit;
end;
if s='屯之豫' then
begin
  result:='重茵厚席，循皋采藿。虽踬不惧，复反其宅。';
  exit;
end;
if s='屯之随' then
begin
  result:='太乙驾骝，从天上来。征我叔季，封为鲁侯，无有凶忧。';
  exit;
end;
if s='屯之蛊' then
begin
  result:='南巴大安，石解戟天。所指不已，耋老复丁。敝室旧墟。更为新家。';
  exit;
end;
if s='屯之临' then
begin
  result:='家给人足，颂声并作。四夷宾伏，干戈韬阁。';
  exit;
end;
if s='屯之观' then
begin
  result:='东邻嫁女，为王妃后。庄公筑馆，以尊王母。归于京师，季姜悦喜。';
  exit;
end;
if s='屯之噬嗑' then
begin
  result:='陈妫敬仲，兆兴齐姜。营丘是适，八世大昌。';
  exit;
end;
if s='屯之贲' then
begin
  result:='路多枳棘，步刺我足。不利旅客，为心作毒。';
  exit;
end;
if s='屯之剥' then
begin
  result:='天官列宿，五神共舍。宫阙光坚，君安其居。';
  exit;
end;
if s='屯之复' then
begin
  result:='牧羊稻园，闻虎呻喧。惧畏惕息，终无祸患。';
  exit;
end;
if s='屯之无妄' then
begin
  result:='鸣条之灾，北奔犬胡。左衽为长，国号匈奴。主君旄头，立尊单于。';
  exit;
end;
if s='屯之大畜' then
begin
  result:='克已洁身，逢禹巡狩。锡我玄圭，拜受福佑。';
  exit;
end;
if s='屯之颐' then
begin
  result:='冬华不实，国多盗贼。疾病难医，鬼哭其室。';
  exit;
end;
if s='屯之大过' then
begin
  result:='襄送季女，至于荡道。齐子旦夕，流连久处。';
  exit;
end;
if s='屯之坎' then
begin
  result:='朽根倒树，花叶落去。卒逢火焱，随风偃仆。';
  exit;
end;
if s='屯之离' then
begin
  result:='阴变为阳，女化作男。治道得通，君臣相承。';
  exit;
end;
if s='屯之咸' then
begin
  result:='炎绝续光，火灭复明。简易理得，以成乾功。';
  exit;
end;
if s='屯之恒' then
begin
  result:='多载重负，捐弃于野。予母谁子，但自劳苦。';
  exit;
end;
if s='屯之遁' then
begin
  result:='江河海泽，众利室宅。可以富有，饮御嘉客。';
  exit;
end;
if s='屯之大壮' then
begin
  result:='冬采薇兰，地冻坚坼。利走室北，暮无所得。';
  exit;
end;
if s='屯之晋' then
begin
  result:='鸟鸣嘻嘻，天火将起。燔我室屋，灾及妃后。';
  exit;
end;
if s='屯之明夷' then
begin
  result:='虿室蜂户，螫我手足。不可进取，为身害速。';
  exit;
end;
if s='屯之家人' then
begin
  result:='崔嵬北岳，天神贵客。温仁正直，主布恩德。闵哀不已，蒙受大福。';
  exit;
end;
if s='屯之睽' then
begin
  result:='伯蹇叔盲，莫与守床。失我衣裘，伐民除乡。';
  exit;
end;
if s='屯之蹇' then
begin
  result:='为季求妇，家在东海。水长无船，不见所欢。';
  exit;
end;
if s='屯之解' then
begin
  result:='山陵丘墓，魂魄失舍。精诚尽竭，长寝不觉。';
  exit;
end;
if s='屯之损' then
begin
  result:='踦牛失角，下山伤轴，失其利禄。';
  exit;
end;
if s='屯之益' then
begin
  result:='水载船舟，无根以浮。往来溶溶，心劳且忧。';
  exit;
end;
if s='屯之夬' then
begin
  result:='有鸟来飞，集于宫树。鸣声可恶，主将出去。';
  exit;
end;
if s='屯之姤' then
begin
  result:='东徙不时，触患离忧。井泥无濡，思叔旧居。';
  exit;
end;
if s='屯之萃' then
begin
  result:='黄帝所生，伏羲之宇。兵刃不至，利以居止。';
  exit;
end;
if s='屯之升' then
begin
  result:='东山拯乱，处妇思夫。劳我君子，役无休已。';
  exit;
end;
if s='屯之困' then
begin
  result:='跛踬未起，失利后市，不得鹿子。';
  exit;
end;
if s='屯之井' then
begin
  result:='大蛇当路，使季畏惧。汤火之灾，切近我肤。赖其天幸，趋于王庐。';
  exit;
end;
if s='屯之革' then
begin
  result:='从容长闲，游戏南山。拜祠祷神，神使无患。';
  exit;
end;
if s='屯之鼎' then
begin
  result:='区脱康居，慕义入朝。湛露之欢，三爵毕恩。复归野庐，与母相扶。';
  exit;
end;
if s='屯之震' then
begin
  result:='龟鳖列市，河海饶有。长财善贾，商季悦喜。';
  exit;
end;
if s='屯之艮' then
begin
  result:='年常蒙庆，今岁受福。三夫采芑，出必有得。';
  exit;
end;
if s='屯之渐' then
begin
  result:='二人俱东，道怒争讼。意乖不同，使君忷忷。';
  exit;
end;
if s='屯之归妹' then
begin
  result:='树我藿豆，为鹿兔食。君不慎护，秋无收入。';
  exit;
end;
if s='屯之丰' then
begin
  result:='黄鸟悲鸣，愁不见星。困于鸷鹯，使我心惊。';
  exit;
end;
if s='屯之旅' then
begin
  result:='双凫俱飞，欲归稻池。经涉萑泽，为矢所射，伤我胸臆。';
  exit;
end;
if s='屯之巽' then
begin
  result:='久客无依，思归故乡。霖雨盛溢，道未得通。';
  exit;
end;
if s='屯之兑' then
begin
  result:='道路辟除，南至东辽。卫子善辞，使国无忧。';
  exit;
end;
if s='屯之涣' then
begin
  result:='同枕共袍，中年相知。少贾无利，独居愁思。';
  exit;
end;
if s='屯之节' then
begin
  result:='众神集聚，相与议语。南国虐乱，百姓愁苦。兴师征讨，更立贤主。';
  exit;
end;
if s='屯之中孚' then
begin
  result:='北陆闭蛰，隐伏不出。目盲耳聋，道路不通。';
  exit;
end;
if s='屯之小过' then
begin
  result:='痴狂妄作，心诳善惑。迷行失路，不知南北。';
  exit;
end;
if s='屯之既济' then
begin
  result:='栋隆辅强，宠贵日光。福善并作，乐以高明。';
  exit;
end;
if s='屯之未济' then
begin
  result:='爱我婴女，牵衣不与。冀幸高贵，反得贱下。';
  exit;
end;

end;

function meng(const s: string): string;
begin
 if s='蒙' then
begin
  result:='何草不黄，至未尽玄。室家分离，悲忧于心。';
  exit;
end;
if s='蒙之乾' then
begin
  result:='海为水王，听圣且明。百流归德，无有畔逆，常饶优足。';
  exit;
end;
if s='蒙之坤' then
begin
  result:='左辅右弼，金玉满堂。常盈不亡，富如敖仓。';
  exit;
end;
if s='蒙之屯' then
begin
  result:='安息康居，异国穹庐。非吾习俗，使我心忧。';
  exit;
end;
if s='蒙之需' then
begin
  result:='范公鸱夷，善贾饰资。东之营丘，易字子皮。把珠载金，多得利归。';
  exit;
end;
if s='蒙之讼' then
begin
  result:='老杨日衰，条多枯枝。爵级不进，日下摧隤。';
  exit;
end;
if s='蒙之师' then
begin
  result:='小狐渡水，污濡其尾。利得无几，与道合契。';
  exit;
end;
if s='蒙之比' then
begin
  result:='豕生鱼鲂，鼠舞庭堂。奸侫施毒，上下昏荒，君失其邦。';
  exit;
end;
if s='蒙之小畜' then
begin
  result:='天地配享，六位光明。阴阳顺叙，以成厥功。';
  exit;
end;
if s='蒙之履' then
begin
  result:='踝踵足伤，右指病痈。失旅后时，利走不归。';
  exit;
end;
if s='蒙之泰' then
begin
  result:='异体殊患，各有所属。西邻孤媪，欲寄我室。主母骂詈，求不可得。';
  exit;
end;
if s='蒙之否' then
begin
  result:='操秬乡亩，祈贷稷黍。饮食充口，安和无咎。';
  exit;
end;
if s='蒙之同人' then
begin
  result:='新受大宠，福禄重来。乐且日富，蒙庆得财。';
  exit;
end;
if s='蒙之大有' then
begin
  result:='举杯饮酒，无益温寒。指直失取，亡利不欢。';
  exit;
end;
if s='蒙之谦' then
begin
  result:='日月相望，光明盛昌。三圣茂承，功德大隆。';
  exit;
end;
if s='蒙之豫' then
begin
  result:='猾夫争强，民去其乡。公孙叔子，战于城南。';
  exit;
end;
if s='蒙之随' then
begin
  result:='猿堕高木，不踒手足。保我金玉，还归其室。';
  exit;
end;
if s='蒙之蛊' then
begin
  result:='逐狐东山，水遏我前。深不可涉，失利后便。';
  exit;
end;
if s='蒙之临' then
begin
  result:='凿井求玉，非卞氏宝。名困身辱，劳无所得。';
  exit;
end;
if s='蒙之观' then
begin
  result:='黄玉温厚，君子所服。甘露溽暑，万物生茂。';
  exit;
end;
if s='蒙之噬嗑' then
begin
  result:='画龙头颈，文章不成。甘言善语，说辞无名。';
  exit;
end;
if s='蒙之贲' then
begin
  result:='招祸致凶，来弊我邦。病在手足，不得安息。';
  exit;
end;
if s='蒙之剥' then
begin
  result:='履位乘势，靡有绝毙。皆为隶圉，与众庶位。';
  exit;
end;
if s='蒙之复' then
begin
  result:='獐鹿雉兔，群聚东圃。卢黄白脊，俱往趋逐。九齚十得，君子有喜。';
  exit;
end;
if s='蒙之无妄' then
begin
  result:='织锦未成，纬尽无名。长子逐兔，鹿起失路。见利不得，因无所据。';
  exit;
end;
if s='蒙之大畜' then
begin
  result:='天厌周德，命与仁国。以礼靖民，兵革休息。';
  exit;
end;
if s='蒙之颐' then
begin
  result:='重译贡芝，来除我忧。善说遂良，与喜相求。';
  exit;
end;
if s='蒙之大过' then
begin
  result:='膏壤肥泽，人民孔乐。宜利居止，长安富有。';
  exit;
end;
if s='蒙之坎' then
begin
  result:='白龙黑虎，起鬐暴怒。战于涿鹿，蚩尤败走。居止不殆，君安其所。';
  exit;
end;
if s='蒙之离' then
begin
  result:='抱关传言，聋跛摧殆。众贱无下，灾殃所在。';
  exit;
end;
if s='蒙之咸' then
begin
  result:='忧祸解除，喜至庆来。坐立欢门，与乐为邻。';
  exit;
end;
if s='蒙之恒' then
begin
  result:='折锋载殳，轝马放休。狩军依营，天下安宁。';
  exit;
end;
if s='蒙之遁' then
begin
  result:='至德之君，仁政且温。伊吕股肱，国富民安。';
  exit;
end;
if s='蒙之大壮' then
begin
  result:='千里望城，不见山青。老兔虾蟆，远绝无家。';
  exit;
end;
if s='蒙之晋' then
begin
  result:='有莘季女，为夏妃后。贵夫寿子，母字四海。';
  exit;
end;
if s='蒙之明夷' then
begin
  result:='不虞之患，祸至无门。奄忽暴卒，痛伤我心。';
  exit;
end;
if s='蒙之家人' then
begin
  result:='飞鹰退去，不食雉鸡。忧患解除，主君安居。';
  exit;
end;
if s='蒙之睽' then
begin
  result:='跮蹉侧跌，申酉为祟。戌亥灭明，颜子隐藏。';
  exit;
end;
if s='蒙之蹇' then
begin
  result:='司禄凭怒，谋议无道。商氏失政，殷人乏祀。';
  exit;
end;
if s='蒙之解' then
begin
  result:='望鸡得雏，冀马获驹。大德生少，有廖从居。';
  exit;
end;
if s='蒙之损' then
begin
  result:='忉忉怛怛，如将不活。黍稷之恩，灵辄以存。';
  exit;
end;
if s='蒙之益' then
begin
  result:='噂噂嗫嗫，夜作昼匿。谋议我资，来攻我室。空尽我财，几无以食。';
  exit;
end;
if s='蒙之夬' then
begin
  result:='天之所坏，不可强支。众口指笑，虽贵必危。';
  exit;
end;
if s='蒙之姤' then
begin
  result:='目动睫瞤，喜来加身。举家蒙欢，吉利无殃';
  exit;
end;
if s='蒙之萃' then
begin
  result:='鼋羹芬香，染指拂裳。口饥于手，子公恨馋。';
  exit;
end;
if s='蒙之升' then
begin
  result:='天福所丰，兆如飞龙。成子得志，六二以兴。';
  exit;
end;
if s='蒙之困' then
begin
  result:='氓伯易丝，抱布自媒。弃礼急情，卒罹悔忧。';
  exit;
end;
if s='蒙之井' then
begin
  result:='夏姬亲附，心听悦喜。利以搏取，无言不许。';
  exit;
end;
if s='蒙之革' then
begin
  result:='南山旻天，刺政关身。疾悲无辜，背憎为仇。';
  exit;
end;
if s='蒙之鼎' then
begin
  result:='三人为旅，俱归北海。入门上堂，拜谒王母。劳赐我酒，欢乐无疆。';
  exit;
end;
if s='蒙之震' then
begin
  result:='愆淫旱疾，伤害稼穑。丧刈病来，农人无食。';
  exit;
end;
if s='蒙之艮' then
begin
  result:='攫饭把肉，以就口食。所往必得，无有虚乏。';
  exit;
end;
if s='蒙之渐' then
begin
  result:='鸟飞无翼，兔走折足。虽欲会同，未得所欲。';
  exit;
end;
if s='蒙之归妹' then
begin
  result:='体重飞难，未能踰关。行坐忧愁，不离室垣。';
  exit;
end;
if s='蒙之丰' then
begin
  result:='四雄并处，人民愁苦。拥兵西东，不得安所。';
  exit;
end;
if s='蒙之旅' then
begin
  result:='重译开牢，求解己忧。心惑乃成，与善并居。';
  exit;
end;
if s='蒙之巽' then
begin
  result:='患解忧除，王母相于。与喜俱来，使我安居。';
  exit;
end;
if s='蒙之兑' then
begin
  result:='冬生不华，老女无家。霜冷蓬室，更为枯株。';
  exit;
end;
if s='蒙之涣' then
begin
  result:='震栗恐惧，多所畏恶。行道留难，不可以步。';
  exit;
end;
if s='蒙之节' then
begin
  result:='三夫共妻，莫适为雌。子无名氏，翁不可知。';
  exit;
end;
if s='蒙之中孚' then
begin
  result:='早凋被霜，花叶不长。非时为灾，家受其殃';
  exit;
end;
if s='蒙之小过' then
begin
  result:='雉兔之东，狼虎所从。贪饕凶恶，不可止息。';
  exit;
end;
if s='蒙之既济' then
begin
  result:='马惊破车，主堕深沟。身死魂去，离其室庐。';
  exit;
end;
if s='蒙之未济' then
begin
  result:='山林麓薮，非人所处。鸟兽无礼，使我心苦。';
  exit;
end;

end;

function xu(const s: string): string;
begin
  if s='需' then
begin
  result:='久旱三年，草木不生。粢盛空乏，无以供灵。';
  exit;
end;
if s='需之乾' then
begin
  result:='火灭复息，君明其德。仁人可遇，身受利福。';
  exit;
end;
if s='需之坤' then
begin
  result:='温山松柏，常茂不落。鸾凤所庇，得其欢乐。';
  exit;
end;
if s='需之屯' then
begin
  result:='西诛不服，恃强负力。倍道趋敌，师徒败覆。';
  exit;
end;
if s='需之蒙' then
begin
  result:='三涂五岳，阳城太室。神明所伏，独无兵革。';
  exit;
end;
if s='需之讼' then
begin
  result:='三牛生狗，以戌为母。荆夷上侵，姬伯出走。';
  exit;
end;
if s='需之师' then
begin
  result:='凫游江海，没行千里。以为死亡，复见空桑。长生乐乡。';
  exit;
end;
if s='需之比' then
begin
  result:='太乙驾骝，从天上来。征召叔季，封为鲁侯。无有凶忧。';
  exit;
end;
if s='需之小畜' then
begin
  result:='纴绩独处，寡处无夫。阴阳失志，为人仆使。';
  exit;
end;
if s='需之履' then
begin
  result:='兵征大宛，北出玉门，与胡寇战。平城道西，七日绝粮，身几不全。';
  exit;
end;
if s='需之泰' then
begin
  result:='楚灵暴虐，罢极民力。祸起干溪，弃疾作毒。扶伏奔逃，死申亥室。';
  exit;
end;
if s='需之否' then
begin
  result:='雌单独居，归其本巢。毛羽憔悴，志如死灰。';
  exit;
end;
if s='需之同人' then
begin
  result:='两矛相刺，勇力钧敌。交绥结和，不破不缺。';
  exit;
end;
if s='需之大有' then
begin
  result:='乘船济渡，载水逢火。赖幸免祸，蒙我生全。';
  exit;
end;
if s='需之谦' then
begin
  result:='丧宠益尤，政倾家覆。我宗失国，秦灭周室。';
  exit;
end;
if s='需之豫' then
begin
  result:='冬无藏冰，春阳不通。阴流为贼，国被其殃。';
  exit;
end;
if s='需之随' then
begin
  result:='田鼠野鸡，意常欲逃。拘制笼槛，不得动摇。';
  exit;
end;
if s='需之蛊' then
begin
  result:='佩玉橤兮，无所系之。旨酒一盛，莫与笑语。孤寡独特，常愁忧苦。';
  exit;
end;
if s='需之临' then
begin
  result:='没游源口，求鲛为宝。家危自惧，复出生道。';
  exit;
end;
if s='需之观' then
begin
  result:='河水孔穴，坏败我室。水深无岸，鱼鳖倾倒。';
  exit;
end;
if s='需之噬嗑' then
begin
  result:='教羊牧兔，使鱼捕鼠。任非其人，费日无功。';
  exit;
end;
if s='需之贲' then
begin
  result:='升户入室，就温燠食。冰冻北陆，不能相贼。';
  exit;
end;
if s='需之剥' then
begin
  result:='孤竹之墟，失妇亡夫。伤于蒺藜，不见少妻。东郭棠姜，武氏破亡。';
  exit;
end;
if s='需之复' then
begin
  result:='凶忧灾殃，日益明彰。福不可厘，三郄夷伤。';
  exit;
end;
if s='需之无妄' then
begin
  result:='载璧秉珪，请命于河。周公作誓，冲人瘳愈。';
  exit;
end;
if s='需之大畜' then
begin
  result:='鸟飞鹊举，照临东海。尨降庭坚，为陶叔后，封圻英六，履福绥厚。';
  exit;
end;
if s='需之颐' then
begin
  result:='危坐至暮，请求不得。膏泽不降，政戾民忒。';
  exit;
end;
if s='需之大过' then
begin
  result:='宜昌娶妇，东家歌舞。宴乐有绪，长安嘉喜。';
  exit;
end;
if s='需之坎' then
begin
  result:='凿井求玉，非卞氏宝。名困身辱，劳无所得。';
  exit;
end;
if s='需之离' then
begin
  result:='鹄思其雄，欲随凤东。顺理羽翼，出次须日。中留北邑，复反其室。';
  exit;
end;
if s='需之咸' then
begin
  result:='早霜晚雪，伤害禾麦。损功弃力，饥无所食。';
  exit;
end;
if s='需之恒' then
begin
  result:='蝙 生子，深目黑丑。虽饰相就，众人莫取。';
  exit;
end;
if s='需之遁' then
begin
  result:='去如飞鸿，避凶直东。遂得全脱，与福相逢。';
  exit;
end;
if s='需之大壮' then
begin
  result:='婚姻合配，同枕共牢。以降休嘉，子孙封侯。';
  exit;
end;
if s='需之晋' then
begin
  result:='咸阳辰己，长安戌亥。丘陵生止，非鱼鳅市。不可避阻，终无悔咎。';
  exit;
end;
if s='需之明夷' then
begin
  result:='螟虫为贼，害我五谷。箪笥空虚，家无所食。';
  exit;
end;
if s='需之家人' then
begin
  result:='蒙恩拜德，东归吾国。慷慨宴笑，欢乐有福。';
  exit;
end;
if s='需之睽' then
begin
  result:='赍贝赎狸，不听我辞。系于虎须，牵不得求。';
  exit;
end;
if s='需之蹇' then
begin
  result:='比目附翼，欢乐相得。行止集周，终不离忒。';
  exit;
end;
if s='需之解' then
begin
  result:='一指食肉，口无所得。染其鼎鼐，舌馋于腹。';
  exit;
end;
if s='需之损' then
begin
  result:='曳纶江湖，钓挂鲂鲤。王孙利得，以享仲友。';
  exit;
end;
if s='需之益' then
begin
  result:='商纣牧野，颠败所在。赋敛重数，黎元愁苦。';
  exit;
end;
if s='需之夬' then
begin
  result:='北辰紫宫，衣冠立中。含和建德，常受天福。';
  exit;
end;
if s='需之姤' then
begin
  result:='轻战尚勇，不知兵权。为敌所制，从师北奔。';
  exit;
end;
if s='需之萃' then
begin
  result:='大口宣唇，神使伸言。黄龙景星，出应德门。兴福上堂，天下安昌。';
  exit;
end;
if s='需之升' then
begin
  result:='凶子祸孙，仗剑出门。凶讼讙嚣，惊骇我家。';
  exit;
end;
if s='需之困' then
begin
  result:='祝伯善言，能事鬼神。辞祈万岁，使君延年。';
  exit;
end;
if s='需之井' then
begin
  result:='珪璧琮璋，执贽见王。百里宁戚，应聘齐秦。';
  exit;
end;
if s='需之革' then
begin
  result:='昧旦乘车，履危蹈沟。亡失裙襦，摧折两轴。';
  exit;
end;
if s='需之鼎' then
begin
  result:='胶着木连，不出牛栏。斯飨羔羊，家室相安。';
  exit;
end;
if s='需之震' then
begin
  result:='卷领遁世，仁德不舍。三圣攸同，周国茂兴。';
  exit;
end;
if s='需之艮' then
begin
  result:='黍稷苗稻，垂秀方造。中旱不雨，伤风枯槁。';
  exit;
end;
if s='需之渐' then
begin
  result:='冠带南游，与福喜逢。期于嘉贞，拜为公卿。';
  exit;
end;
if s='需之归妹' then
begin
  result:='一巢九子，同公共母。柔顺利贞，出入不殆，福禄所在。';
  exit;
end;
if s='需之丰' then
begin
  result:='韩氏长女，嫁于东海。宜家宜主，柔顺以居，利得过倍。';
  exit;
end;
if s='需之旅' then
begin
  result:='因祸受福，喜盈我室，所愿必得。';
  exit;
end;
if s='需之巽' then
begin
  result:='晋平有疾，迎医秦国。病乃大秘，和不能愈。';
  exit;
end;
if s='需之兑' then
begin
  result:='牡飞门启，患忧大解。修福行善，不为身祸。';
  exit;
end;
if s='需之涣' then
begin
  result:='追亡逐北，至山而得。稚叔相呼，反其室庐。';
  exit;
end;
if s='需之节' then
begin
  result:='鸟鸣葭端，一呼三颠。动摇东西，危栗不安。疾病无患。';
  exit;
end;
if s='需之中孚' then
begin
  result:='龙化为虎，泰山之阳。众多从者，莫敢敉藏。';
  exit;
end;
if s='需之小过' then
begin
  result:='猋风阻越，车驰揭揭。弃古追思，失其和节，忧心惙惙。';
  exit;
end;
if s='需之既济' then
begin
  result:='游居石门，禄安身全。受福西邻，归饮玉泉。';
  exit;
end;
if s='需之未济' then
begin
  result:='登高上山，见王自言。申理我冤，得职蒙恩。';
  exit;
end;
end;

function song(const s: string): string;
begin
  if s='讼' then
begin
  result:='文巧俗弊，将反大质。僵死如麻，流血漂樐。皆知其母，不识其父，干戈乃止。';
  exit;
end;
if s='讼之乾' then
begin
  result:='文王四乳，仁爱笃厚。子畜十男，夭折无有。';
  exit;
end;
if s='讼之坤' then
begin
  result:='日入望东，不见子家。长女无夫，左手搔头。';
  exit;
end;
if s='讼之屯' then
begin
  result:='东上泰山，见尧自言。申理我冤，以解忧患。';
  exit;
end;
if s='讼之蒙' then
begin
  result:='奎轸汤汤，过角宿房。宜时布和，无所不通。';
  exit;
end;
if s='讼之需' then
begin
  result:='引髯牵头，虽惧无忧。王母善祷，祸不成灾。';
  exit;
end;
if s='讼之师' then
begin
  result:='凫得水没，喜笑自啄。毛羽悦怿，利以攻玉。公出不复，柏氏客宿。';
  exit;
end;
if s='讼之比' then
begin
  result:='水流趋下，欲至东海。求我所有，买鲂与鲤。';
  exit;
end;
if s='讼之小畜' then
begin
  result:='獐鹿逐兔，安饱其居。反还次舍，无有疾故。';
  exit;
end;
if s='讼之履' then
begin
  result:='树植藿豆，不得芸锄。王事靡盬，秋无人收。';
  exit;
end;
if s='讼之泰' then
begin
  result:='弱水之西，有西王母。生不知老，与天相保。';
  exit;
end;
if s='讼之否' then
begin
  result:='数穷廓落，困于历室。幸登玉堂，与尧侑食。';
  exit;
end;
if s='讼之同人' then
begin
  result:='子鉏执麟，春秋作经。元圣将终，尼父悲心。';
  exit;
end;
if s='讼之大有' then
begin
  result:='尹氏伯奇，父子生离。无罪被辜，长舌所为。';
  exit;
end;
if s='讼之谦' then
begin
  result:='播木折枝，与母别离。九皋难和，绝不相知。';
  exit;
end;
if s='讼之豫' then
begin
  result:='眵鸡无距，与鹊格斗。翅折目盲，为鸠所伤。';
  exit;
end;
if s='讼之随' then
begin
  result:='甲乙丙丁，俱归我庭。三丑六子，入门见母。';
  exit;
end;
if s='讼之蛊' then
begin
  result:='桑叶螟蠧，衣敝如络。女工不成，丝布为玉。';
  exit;
end;
if s='讼之临' then
begin
  result:='开牢辟门，巡狩释冤。夏台羑里，汤文悦喜。';
  exit;
end;
if s='讼之观' then
begin
  result:='钦明之德，坐前玉食。必保嘉美，长受安福。';
  exit;
end;
if s='讼之噬嗑' then
begin
  result:='武夫司空，多口争讼。金火当户，民不安处，年饥无有。';
  exit;
end;
if s='讼之贲' then
begin
  result:='紫阙九重，尊严在中。黄帝尧舜，履行至公。冠带垂裳，天下康宁。';
  exit;
end;
if s='讼之剥' then
begin
  result:='负牛上山，力劣行难。烈风雨雪，遮遏我前，中道复还。';
  exit;
end;
if s='讼之复' then
begin
  result:='蹇兔缺唇，行难齿寒。口病不言，为身生患。';
  exit;
end;
if s='讼之无妄' then
begin
  result:='合体比翼，嘉耦相得。与君同好，使我有福。';
  exit;
end;
if s='讼之大畜' then
begin
  result:='口啄卒卒，忧从中出。丧我宝贝，无妄失位。';
  exit;
end;
if s='讼之颐' then
begin
  result:='两心不同，或从西东。明论终日，莫适我从。';
  exit;
end;
if s='讼之大过' then
begin
  result:='哑哑笑言，与喜饮食。长乐行觞，千秋起舞，拜受大福。';
  exit;
end;
if s='讼之坎' then
begin
  result:='初忧后喜，与福为市。八佾列陈，饮御嘉友。';
  exit;
end;
if s='讼之离' then
begin
  result:='西徙无家，破其新车。王孙失利，不如止居。';
  exit;
end;
if s='讼之咸' then
begin
  result:='凤凰在左，麒麟处右。仁圣相遇，伊吕积聚。时无殃咎，福为我母。';
  exit;
end;
if s='讼之恒' then
begin
  result:='区脱康居，慕仁入朝。湛露之欢，三爵毕恩。复归旧庐，与母相扶。';
  exit;
end;
if s='讼之遁' then
begin
  result:='疾贫望幸，贾贩市井。开牢择羊，多得大牂。';
  exit;
end;
if s='讼之大壮' then
begin
  result:='处高不伤，虽危不亡。握珠怀玉，还归其乡。';
  exit;
end;
if s='讼之晋' then
begin
  result:='右手弃酒，左手收柈。行逢礼御，饵得玉杯。';
  exit;
end;
if s='讼之明夷' then
begin
  result:='养虎牧狼，还自贼伤。大勇小捷，虽危不亡。';
  exit;
end;
if s='讼之家人' then
begin
  result:='戴尧扶禹，松乔彭祖。西遇王母，道路夷易，无敢难者。';
  exit;
end;
if s='讼之睽' then
begin
  result:='秋冬探巢，不得鹊雏。衔指北去，愧我少姬。';
  exit;
end;
if s='讼之蹇' then
begin
  result:='两羝三牂，俱之我乡。留连多难，损其食粮。';
  exit;
end;
if s='讼之解' then
begin
  result:='南徙无庐，鸟破其巢。伐木思初，不利动摇。';
  exit;
end;
if s='讼之损' then
begin
  result:='争讼不已，更相击訽。张季弱口，被发北走。';
  exit;
end;
if s='讼之益' then
begin
  result:='延颈望酒，不入我口。初喜后否，利得无有。';
  exit;
end;
if s='讼之夬' then
begin
  result:='被发倾走，寇逐我后。亡失刀兵，身全不伤。';
  exit;
end;
if s='讼之姤' then
begin
  result:='麟凤所游，安乐无忧。君子抚民，世代千秋。';
  exit;
end;
if s='讼之萃' then
begin
  result:='褰衣涉河，水深渍罢。赖幸舟子，济脱无他。';
  exit;
end;
if s='讼之升' then
begin
  result:='愦愦不悦，忧从中出。丧我金罂，无妄失位。';
  exit;
end;
if s='讼之困' then
begin
  result:='绊跳不远，心与言反。尼父望家，萏菡未华。';
  exit;
end;
if s='讼之井' then
begin
  result:='大牡肥牸，惠我诸舅。内外和穆，不忧饥渴。';
  exit;
end;
if s='讼之革' then
begin
  result:='黄帝建元，文德在身。禄若阳春，封为鲁君。';
  exit;
end;
if s='讼之鼎' then
begin
  result:='虎聚磨牙，以待豚猪。往必伤亡，宜利止居。';
  exit;
end;
if s='讼之震' then
begin
  result:='天地配享，六位光明。阴阳顺序，以成和平。';
  exit;
end;
if s='讼之艮' then
begin
  result:='猿坠高木，不踒手足。保我金玉，还归其室。';
  exit;
end;
if s='讼之渐' then
begin
  result:='营室紫宫，坚不可攻。明神建德，君受大福。';
  exit;
end;
if s='讼之归妹' then
begin
  result:='孤翁寡妇，独宿悲苦。目张耳鸣，无与笑语。';
  exit;
end;
if s='讼之丰' then
begin
  result:='低头窃视，有所畏避。行者不利，酒酸鱼败。众莫贪嗜。';
  exit;
end;
if s='讼之旅' then
begin
  result:='载金贩狗，利弃我走。藏匿渊底，悔折为咎。';
  exit;
end;
if s='讼之巽' then
begin
  result:='行触大忌，与司命牾。执囚束系，拘制于吏。忧人有喜。';
  exit;
end;
if s='讼之兑' then
begin
  result:='执玉欢喜，佩之解挛。危详反安，使我无患。';
  exit;
end;
if s='讼之涣' then
begin
  result:='机杼纷扰，女功不成。长女许嫁，衣无襦袴。闻祸不成，凶恶消去。';
  exit;
end;
if s='讼之节' then
begin
  result:='金人铁距，火烧左右。虽惧不恐，独得全处。';
  exit;
end;
if s='讼之中孚' then
begin
  result:='谢恩拜德，东归吾国。舞蹈欣跃，欢乐受福。';
  exit;
end;
if s='讼之小过' then
begin
  result:='青牛白咽，呼我俱田。历山之下，可以多耕。岁乐时节，民人安宁。';
  exit;
end;
if s='讼之既济' then
begin
  result:='白雉群雊，慕德朝贡。湛露之恩，使我得欢。';
  exit;
end;
if s='讼之未济' then
begin
  result:='避患东西，反入祸门。糟糠不足，忧思我心。';
  exit;
end;

end;

function shi(const s: string): string;
begin
  if s='师' then
begin
  result:='鸟鸣呼子，哺以酒脯。高楼之处，子来归母。啬人成功，年岁大有，妒妇无子。';
  exit;
end;
if s='师之乾' then
begin
  result:='一簧两舌，侫言谄语。三奸成虎，曾母投杼。';
  exit;
end;
if s='师之坤' then
begin
  result:='春桃生花，季女宜家。受福且多，在师中吉。男为邦君。';
  exit;
end;
if s='师之屯' then
begin
  result:='殊类异路，心不相慕。牝牛牡豭，独无室家。';
  exit;
end;
if s='师之蒙' then
begin
  result:='折若蔽目，不见稚叔。三足孤乌，远其元夫。';
  exit;
end;
if s='师之需' then
begin
  result:='雀东求粒，误入罔域。赖仁君子，脱服归息。';
  exit;
end;
if s='师之讼' then
begin
  result:='王孙季子，相与孝友。明允笃诚，升擢荐举，为国干辅。';
  exit;
end;
if s='师之比' then
begin
  result:='刖树无枝，与子分离。饥寒莫食，独泣哀悲。';
  exit;
end;
if s='师之小畜' then
begin
  result:='舜升大禹，石夷之野。征诣玉阙，拜治水土。';
  exit;
end;
if s='师之履' then
begin
  result:='义不胜情，以欲自营。见利危躬，灭君令名。';
  exit;
end;
if s='师之泰' then
begin
  result:='三人北行，六位光明。道逢淑女，与我骥子。';
  exit;
end;
if s='师之否' then
begin
  result:='羿张乌号，彀射天狼。柱国雄勇，斗死荥阳。';
  exit;
end;
if s='师之同人' then
begin
  result:='季姬踟蹰，结衿待时。终日至暮，百两不来。';
  exit;
end;
if s='师之大有' then
begin
  result:='鸿雁翩翩，始怨劳苦。灾疫病民，鳏寡愁忧。';
  exit;
end;
if s='师之谦' then
begin
  result:='穿胸狗邦，僵离旁春。天地易纪，日月更始。';
  exit;
end;
if s='师之豫' then
begin
  result:='北山有枣，使叔寿考。东岭多栗，宜行贾市。陆梁雌雉，所至利喜。';
  exit;
end;
if s='师之随' then
begin
  result:='干旄旌旗，执帜在郊。虽有宝珠，无路致之。';
  exit;
end;
if s='师之蛊' then
begin
  result:='精洁塞渊，为谗所言。证讯诘问，系于枳温。甘棠听断，怡然蒙恩。';
  exit;
end;
if s='师之临' then
begin
  result:='玄黄虺隤，行者劳罢。役夫憔悴，踰时不归。';
  exit;
end;
if s='师之观' then
begin
  result:='肤敏之德，发愤晨食。虏豹禽说，以成主德。';
  exit;
end;
if s='师之噬嗑' then
begin
  result:='采唐沫乡，要我桑中。失信不会，忧思约带。';
  exit;
end;
if s='师之贲' then
begin
  result:='伯宁子福，惠我邦国。蠲除苛残，使季无患。';
  exit;
end;
if s='师之剥' then
begin
  result:='谗父佞雄，贼乱邦国。生虽忠孝，败困不福。';
  exit;
end;
if s='师之复' then
begin
  result:='渊泉堤防，水道通利。顺注湖海，邦国富有。';
  exit;
end;
if s='师之无妄' then
begin
  result:='江南多蝮，螫我手足。冤繁诘屈，痛彻心腹。';
  exit;
end;
if s='师之大畜' then
begin
  result:='三人俱行，别离独宿。一身五心，反复迷惑，乱无所得。';
  exit;
end;
if s='师之颐' then
begin
  result:='鸦鸣庭中，以戒灾凶。重门击柝，备不速客。';
  exit;
end;
if s='师之大过' then
begin
  result:='功成事就，拱手安居。立德有言，坐饬贡赋。';
  exit;
end;
if s='师之坎' then
begin
  result:='国乱不安，兵革为患。掠我妻子，家中饥寒。';
  exit;
end;
if s='师之离' then
begin
  result:='戴尧扶禹，松乔彭祖。西过王母，道路夷易，无敢难者';
  exit;
end;
if s='师之咸' then
begin
  result:='长尾蜲蛇，画地成河。深不可涉，绝无以北，惆怅嘳息。';
  exit;
end;
if s='师之恒' then
begin
  result:='乘龙从蜺，征诣北阙。乃见宣室，拜守东域。镇慰黎元，举家蒙福。';
  exit;
end;
if s='师之遁' then
begin
  result:='土与山连，终身无患。天地高明，万岁长安。';
  exit;
end;
if s='师之大壮' then
begin
  result:='久旱水涸，枯槁无泽。虚修其德，末有所获。';
  exit;
end;
if s='师之晋' then
begin
  result:='依山倚地，凶危不至。上清下净，君受其利。';
  exit;
end;
if s='师之明夷' then
begin
  result:='火烈不去，必殪僵仆。燔我衣裾，祸不可悔。';
  exit;
end;
if s='师之家人' then
begin
  result:='配合相迎，利之四乡。欣喜兴怿，所言得当。';
  exit;
end;
if s='师之睽' then
begin
  result:='清人高子，久屯外野。逍遥不归，思我慈母。';
  exit;
end;
if s='师之蹇' then
begin
  result:='武库军府，甲兵所聚。非里邑居，不可舍止。';
  exit;
end;
if s='师之解' then
begin
  result:='三德五材，和合四时。阴阳顺序，国无咎灾。';
  exit;
end;
if s='师之损' then
begin
  result:='解衣毛羽，飞入大都。晨门戒守，郑忽失家。';
  exit;
end;
if s='师之益' then
begin
  result:='刖根烧株，不生肌肤。病在心腹，日以焦枯。';
  exit;
end;
if s='师之夬' then
begin
  result:='文山紫芝，雍梁朱草。生长和气，王以为宝。公尸侑食，福禄来处。';
  exit;
end;
if s='师之姤' then
begin
  result:='多载重负，捐弃于野。予母谁子，但自劳苦。';
  exit;
end;
if s='师之萃' then
begin
  result:='凫雁哑哑，以水为家。雌雄相和，心志娱乐，得其欢欲。';
  exit;
end;
if s='师之升' then
begin
  result:='耳目盲聋，所言不通。伫立以泣，事无成功。';
  exit;
end;
if s='师之困' then
begin
  result:='天官列宿，五神所舍。宫阙坚固，君安其居。';
  exit;
end;
if s='师之井' then
begin
  result:='范子妙材，戮辱伤肤。后相秦国，封为应侯。';
  exit;
end;
if s='师之革' then
begin
  result:='秋冬探巢，不得鹊雏。衔指北去，惭我少夫。';
  exit;
end;
if s='师之鼎' then
begin
  result:='子畏于匡，厄困陈蔡。德行不危，竟脱厄害。';
  exit;
end;
if s='师之震' then
begin
  result:='鸿飞在陆，公出不复。仲氏任只，伯氏客宿。';
  exit;
end;
if s='师之艮' then
begin
  result:='鹤鸣九皋，避世隐居。抱朴守贞，竟不随时。';
  exit;
end;
if s='师之渐' then
begin
  result:='舜升大禹，石夷之野。征诣王庭，拜治水土。';
  exit;
end;
if s='师之归妹' then
begin
  result:='左辅右弼，金玉满堂。常盈不亡，富如敖仓。';
  exit;
end;
if s='师之丰' then
begin
  result:='崔嵬北岳，天神贵客。衣冠不已，蒙被恩德。';
  exit;
end;
if s='师之旅' then
begin
  result:='空槽注器，獖彘不至。张弓祝鸡，雄父飞去。';
  exit;
end;
if s='师之巽' then
begin
  result:='胡蛮戎狄，太阴所积。涸冰冱寒，君子不存。';
  exit;
end;
if s='师之兑' then
begin
  result:='甘露醴泉，太平机关。仁德感应，岁乐民安。';
  exit;
end;
if s='师之涣' then
begin
  result:='恶来呼伯，慎惊外客。甲守闭宅，以备凶急。临折之忧，虽灭无灾。';
  exit;
end;
if s='师之节' then
begin
  result:='日月相望，光明盛昌。三圣茂功，仁德大隆。';
  exit;
end;
if s='师之中孚' then
begin
  result:='葛藟蒙棘，华不得实。谗佞乱政，使恩壅塞。';
  exit;
end;
if s='师之小过' then
begin
  result:='邻不我顾，而望玉女。身多癞疾，谁肯媚者。';
  exit;
end;
if s='师之既济' then
begin
  result:='精诚所在，神之为辅。德教尚忠，弥世长久。三圣茂功，多受福祉。';
  exit;
end;
if s='师之未济' then
begin
  result:='钻木取火，掘地索水。主母饥渴，子为心祸。';
  exit;
end;

end;

function bi(const s: string): string;
begin
 if s='比' then
begin
  result:='鹿得美草，鸣呼其友。九族和睦，不忧饥乏。';
  exit;
end;
if s='比之乾' then
begin
  result:='继祖复宗，追明成康。光照万国，享世久长';
  exit;
end;
if s='比之坤' then
begin
  result:='麟子凤雏，生长嘉国。和气所居，康乐温仁，邦多哲人。';
  exit;
end;
if s='比之屯' then
begin
  result:='灼火泉源，钓鲤山巅。鱼不可得，火不肯燃。';
  exit;
end;
if s='比之蒙' then
begin
  result:='彭生为豕，白龙作灾。盗尧衣裳，桀跖荷兵。青禽照夜，三日夷伤。';
  exit;
end;
if s='比之需' then
begin
  result:='黍稷醇醴，敬奉山宗。神嗜饮食，甘雨嘉降。庶物蕃殖，独蒙福祉，时灾不至。';
  exit;
end;
if s='比之讼' then
begin
  result:='李华再实，鸿卵降集。仁哲权舆，荫国受福。';
  exit;
end;
if s='比之师' then
begin
  result:='千岁之墟，大国所屠。不见子都，城空无家。';
  exit;
end;
if s='比之小畜' then
begin
  result:='王孙公子，把弹摄丸。发辄有得，家室饶足。';
  exit;
end;
if s='比之履' then
begin
  result:='骊姬谗喜，与二嬖谋。谮杀恭子，贼害忠孝。申生以缢，重耳奔逃。';
  exit;
end;
if s='比之泰' then
begin
  result:='长生无极，子孙千亿。柏柱载梁，坚固不倾。';
  exit;
end;
if s='比之否' then
begin
  result:='失意怀忧，如幽狴牢。亡子丧夫，附托寄居。';
  exit;
end;
if s='比之同人' then
begin
  result:='仁智隐伏，麟不可得。龙蛇潜藏，虚居堂室。';
  exit;
end;
if s='比之大有' then
begin
  result:='挒絜累累，缔结难解。嫫母衒嫁，媒不得坐，自为身祸。';
  exit;
end;
if s='比之谦' then
begin
  result:='蜩飞坠木，不毁头足。保我羽翼，复归其室。';
  exit;
end;
if s='比之豫' then
begin
  result:='陈妫敬仲，兆兴齐姜。乃适营丘，八世大昌。';
  exit;
end;
if s='比之随' then
begin
  result:='过时不归，雌雄苦悲。徘徊外国，与母分离。';
  exit;
end;
if s='比之蛊' then
begin
  result:='齐鲁争言，战于龙门。构怨结祸，三世不安。';
  exit;
end;
if s='比之临' then
begin
  result:='府藏之富，王以赈贷。捕鱼河海，笱网多得。';
  exit;
end;
if s='比之观' then
begin
  result:='鸣鹤北飞，下就稻池。鳣鲔鰋鲤，众多饶有。一笱获两，利得过倍。';
  exit;
end;
if s='比之噬嗑' then
begin
  result:='苍梧郁林，道易利通。元龟象齿，宝贝南金，为吾福功。';
  exit;
end;
if s='比之贲' then
begin
  result:='两火争明，虽斗不伤。分离且忍，全我弟兄。';
  exit;
end;
if s='比之剥' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存。';
  exit;
end;
if s='比之复' then
begin
  result:='伯去我东，发栉如蓬。展转空床，内怀忧伤。';
  exit;
end;
if s='比之无妄' then
begin
  result:='百足俱行，相转为强。三圣翼事，王室宠光';
  exit;
end;
if s='比之大畜' then
begin
  result:='壅遏堤防，水不得行。火盛阳光，阴蜺伏藏，退还其乡。';
  exit;
end;
if s='比之颐' then
begin
  result:='螣蛇乘龙，年岁饥凶，民食草蓬。';
  exit;
end;
if s='比之大过' then
begin
  result:='铅刀攻玉，坚不可得。尽我筋力，胝茧为疾。';
  exit;
end;
if s='比之坎' then
begin
  result:='恒山浦寿，高邑具在。阴气下淋，洪水不处，牢人开户。';
  exit;
end;
if s='比之离' then
begin
  result:='比目四翼，来安我国。福善上堂，与我同床。';
  exit;
end;
if s='比之咸' then
begin
  result:='杜口结舌，心中怫郁。去灾生患，莫所告冤。';
  exit;
end;
if s='比之恒' then
begin
  result:='牵尾不前，逆理失臣，卫朔以奔。';
  exit;
end;
if s='比之遁' then
begin
  result:='早霜晚雪，伤害禾麦。捐功弃力，饥无所食。';
  exit;
end;
if s='比之大壮' then
begin
  result:='适戍失期，患生无知。惧以怀忧，发藏闭塞，邦国骚愁。';
  exit;
end;
if s='比之晋' then
begin
  result:='昊天白日，照临我国，万民康乐，咸赖嘉福。';
  exit;
end;
if s='比之明夷' then
begin
  result:='元吉无咎，安宁不殆。时行则行，无之有悔。';
  exit;
end;
if s='比之家人' then
begin
  result:='懿公浅愚，不受深谋。无援失国，为狄所贼。';
  exit;
end;
if s='比之睽' then
begin
  result:='城上有乌，自名破家。呼唤鸩毒，为国患灾。';
  exit;
end;
if s='比之蹇' then
begin
  result:='长股善走，趋步千里。王良嘉喜，伯乐在道，申见王母。';
  exit;
end;
if s='比之解' then
begin
  result:='耕石山巅，费种家贫。无聊虚作，苗发不生';
  exit;
end;
if s='比之损' then
begin
  result:='二人共路，东趋西步。千里之外，不相知处。';
  exit;
end;
if s='比之益' then
begin
  result:='纯服素裳，载主以兴。德义茂生，天下归仁。';
  exit;
end;
if s='比之夬' then
begin
  result:='玉铣铁颐，仓库空虚。贾市无盈，与利为仇。';
  exit;
end;
if s='比之姤' then
begin
  result:='宿于昆仑，升入天门。糟丘惠欢，玉泉见君。';
  exit;
end;
if s='比之萃' then
begin
  result:='团团白日，为月所食。损上毁下，郑昭出走。';
  exit;
end;
if s='比之升' then
begin
  result:='仓盈庾亿，宜稼黍稷。年岁有息，国家富有。';
  exit;
end;
if s='比之困' then
begin
  result:='虎狼结谋，相聚为保。伺啮牛羊，道绝不通，伤我商人。';
  exit;
end;
if s='比之井' then
begin
  result:='中年摧折，常恐不活。老赖福庆，光荣相辅。';
  exit;
end;
if s='比之革' then
begin
  result:='同载共车，中道分去。丧我元夫，独与孤居。';
  exit;
end;
if s='比之鼎' then
begin
  result:='饮酒醉酗，距跳争讼。伯伤叔僵，东家治丧。';
  exit;
end;
if s='比之震' then
begin
  result:='出值凶灾，逢五赤头。跳言死格，扶伏听命，不敢动摇。';
  exit;
end;
if s='比之艮' then
begin
  result:='狼虎争强，礼义不行。兼呑其国，齐鲁无王。';
  exit;
end;
if s='比之渐' then
begin
  result:='南国少子，才略美好。求我长女，贱薄不与。';
  exit;
end;
if s='比之归妹' then
begin
  result:='一身两头，莫适其躯。无见我心，乱不可治。';
  exit;
end;
if s='比之丰' then
begin
  result:='李耳汇鹊，更相恐怯。偃尔以腹，不能距格。';
  exit;
end;
if s='比之旅' then
begin
  result:='松柏栋梁，相辅为强。入敷五教，五室宁康。';
  exit;
end;
if s='比之巽' then
begin
  result:='雀行求食，暮归孚乳。反其室舍，安宁无故。';
  exit;
end;
if s='比之兑' then
begin
  result:='四尾六头，为凶作妖。阴不奉阳，上失其明。';
  exit;
end;
if s='比之涣' then
begin
  result:='一旅三关，结缉不便。歧道异路，日暮不到。';
  exit;
end;
if s='比之节' then
begin
  result:='牙蘖生齿，室堂启户。幽人利贞，鼓翼起舞。';
  exit;
end;
if s='比之中孚' then
begin
  result:='春鸿飞东，以马货金。利得十倍，重载归乡。';
  exit;
end;
if s='比之小过' then
begin
  result:='欢悦以喜，子孙俱在。守强能忍，不见殃咎。';
  exit;
end;
if s='比之既济' then
begin
  result:='精神销落，形骸丑恶。龃龉顿挫，枯槁腐蠹。';
  exit;
end;
if s='比之未济' then
begin
  result:='登高上山，见王自言。申理我冤，得职蒙恩。';
  exit;
end;

end;

function xiaoxu(const s: string): string;
begin
  if s='小畜' then
begin
  result:='白鸟衔饵，鸣呼其子。斡枝张翅，来从其母。伯仲叔季，元贺举手。';
  exit;
end;
if s='小畜之乾' then
begin
  result:='东遇虎蛇，牛马惊奔。道绝不通，商困无功。';
  exit;
end;
if s='小畜之坤' then
begin
  result:='子鉏获麟，春秋作经。元圣将终，尼父悲心。';
  exit;
end;
if s='小畜之屯' then
begin
  result:='灼火泉源，钓鱼山巅。鱼不可得，火不肯然。';
  exit;
end;
if s='小畜之蒙' then
begin
  result:='机关不便，不能出言。精诚不通，为人所冤。';
  exit;
end;
if s='小畜之需' then
begin
  result:='故室旧庐，稍蔽绂组。不如新巢，可以乐居。';
  exit;
end;
if s='小畜之讼' then
begin
  result:='蜲蛇循流，东求大鱼。预且举网，庖人歌讴。';
  exit;
end;
if s='小畜之师' then
begin
  result:='凿山通道，南至嘉国。周公祝祖，襄适荆楚。';
  exit;
end;
if s='小畜之比' then
begin
  result:='鹊足却缩，不见头目。日久困急，不能自复。';
  exit;
end;
if s='小畜之履' then
begin
  result:='五舌啄难，各自有言。异国殊俗，使心迷惑，所求不得。';
  exit;
end;
if s='小畜之泰' then
begin
  result:='天门开辟，牢户寥廓。桎梏解脱，拘囚纵释。';
  exit;
end;
if s='小畜之否' then
begin
  result:='坚冰黄鸟，啼哀悲愁。数惊鸷鸟，雏为我忧。';
  exit;
end;
if s='小畜之同人' then
begin
  result:='日走月步，趣不同舍。夫妻反目，主君失居。';
  exit;
end;
if s='小畜之大有' then
begin
  result:='金牙铁齿，西王母子。无有祸殃，扶舍涉道。别来不久。';
  exit;
end;
if s='小畜之谦' then
begin
  result:='式微式微，忧祸相绊。隔以岩山，室家分散。';
  exit;
end;
if s='小畜之豫' then
begin
  result:='众神聚集，相与议语。南国虐乱，百姓劳苦。兴师征伐，更立贤主。';
  exit;
end;
if s='小畜之随' then
begin
  result:='虎狼争食，礼义不行。兼吞其国，齐鲁无王。';
  exit;
end;
if s='小畜之蛊' then
begin
  result:='寄生无根，如过浮云。本立不固，斯须落去，更为枯树。';
  exit;
end;
if s='小畜之临' then
begin
  result:='子啼索哺，母行求食。反见空巢，訾我长息。';
  exit;
end;
if s='小畜之观' then
begin
  result:='驾驷逐狐，轮挂荆棘。车不结辙，公子无得。';
  exit;
end;
if s='小畜之噬嗑' then
begin
  result:='方喙广口，仁智圣厚。释解倒悬，唐国大安。';
  exit;
end;
if s='小畜之贲' then
begin
  result:='驾福乘喜，东至嘉国。戴庆南行，移居安宅。';
  exit;
end;
if s='小畜之剥' then
begin
  result:='孔鲤伯鱼，北至高奴。木马金车，驾游大都。王母送我，騋牝字驹。';
  exit;
end;
if s='小畜之复' then
begin
  result:='三足无头，不知所之。心狂精伤，莫使为明，不见日光。';
  exit;
end;
if s='小畜之无妄' then
begin
  result:='騋牝龙身，日驭三千。南止苍梧，与福为婚。道里夷易，安全无忌。';
  exit;
end;
if s='小畜之大畜' then
begin
  result:='辰次降娄，王驾巡狩。广佑施惠，安国无忧。';
  exit;
end;
if s='小畜之颐' then
begin
  result:='望幸不到，王子逐走，马骑衔伤。佚迹不得，曷其有常。';
  exit;
end;
if s='小畜之大过' then
begin
  result:='中原有菽，以待饔食。饮御诸友，所求大得。';
  exit;
end;
if s='小畜之坎' then
begin
  result:='乱茅缩酒，灵巫拜祷。神怒不许，瘁愁忧苦。';
  exit;
end;
if s='小畜之离' then
begin
  result:='李华再实，鸿卵降集。仁哲以兴，荫国受福。';
  exit;
end;
if s='小畜之咸' then
begin
  result:='源出陵足，行于山趾。不为暴害，民得安处。';
  exit;
end;
if s='小畜之恒' then
begin
  result:='客入其门，奔走东西。童女不织，士弃耕亩。暴骨千里，岁饥民苦。';
  exit;
end;
if s='小畜之遁' then
begin
  result:='天子所予，福禄常在。以永康宁，不忧危殆。';
  exit;
end;
if s='小畜之大壮' then
begin
  result:='蝗食我稻，驱不可去。实穗无有，但见空藳。';
  exit;
end;
if s='小畜之晋' then
begin
  result:='牛骥同槽，郭氏以亡。国破空虚，君奔走逃。';
  exit;
end;
if s='小畜之明夷' then
begin
  result:='狗无前足，阴谋叛北。为身害贼，何以安息。';
  exit;
end;
if s='小畜之家人' then
begin
  result:='两轮自转，南上大阪。四马共辕，无有屯难，与禹笑言。';
  exit;
end;
if s='小畜之睽' then
begin
  result:='芽蘖生达，阳昌于外。左手执籥，公言锡爵。';
  exit;
end;
if s='小畜之蹇' then
begin
  result:='秋花冬萼，数被严霜。甲兵当庭，万物不生。雄犬夜鸣，民扰大惊。';
  exit;
end;
if s='小畜之解' then
begin
  result:='霜降闭户，蛰虫隐处。不见日月，与死为伍。';
  exit;
end;
if s='小畜之损' then
begin
  result:='身载百里，功加四海。为文开基，武立天柱。';
  exit;
end;
if s='小畜之益' then
begin
  result:='禹作神鼎，伯益衔指。斧斤高阁，憧立独坐。卖庸不雠，苦困为祸。';
  exit;
end;
if s='小畜之夬' then
begin
  result:='福祚之聚，喜至忧除。如鱼逢水，长乐受喜。';
  exit;
end;
if s='小畜之姤' then
begin
  result:='苍龙隐伏，麟凤远匿。寇贼同处，未得安息。';
  exit;
end;
if s='小畜之萃' then
begin
  result:='白鹤衔珠，夜食为明。怀安德音，身受光荣。';
  exit;
end;
if s='小畜之升' then
begin
  result:='旦生夕死，名曰婴鬼，不可得祀。';
  exit;
end;
if s='小畜之困' then
begin
  result:='行役未已，新事复起。姬姜劳苦，不得休息。';
  exit;
end;
if s='小畜之井' then
begin
  result:='忧患解除，喜至庆来。坐立欢忻，与乐为邻。';
  exit;
end;
if s='小畜之革' then
begin
  result:='晨风文翰，大举就温。昧过我邑，羿无所得。';
  exit;
end;
if s='小畜之鼎' then
begin
  result:='下田种黍，方华生齿。大雨淋集，纷涝满瓮。';
  exit;
end;
if s='小畜之震' then
begin
  result:='鸟庇茂木，心乐愿得。君子碌碌，见春百谷。';
  exit;
end;
if s='小畜之艮' then
begin
  result:='折臂踒足，不能进酒。祠祀阔旷，神怒不喜。';
  exit;
end;
if s='小畜之渐' then
begin
  result:='学灵三年，仁圣且神。先见善详，吉喜福庆。鳱鹄知来，告我无忧。';
  exit;
end;
if s='小畜之归妹' then
begin
  result:='三妇同夫，志不相思。心怀不平，志常愁悲。';
  exit;
end;
if s='小畜之丰' then
begin
  result:='中田膏黍，以享王母。受福千亿，所求大得。';
  exit;
end;
if s='小畜之旅' then
begin
  result:='阳火不灾，二耕庆来。降福送喜，鼓瑟歌讴。';
  exit;
end;
if s='小畜之巽' then
begin
  result:='阳明不息，君无恩德。伯氏失利，民丧其力。';
  exit;
end;
if s='小畜之兑' then
begin
  result:='燕雀衔茅，以生孚乳。兄弟六人，姣好悌孝。各得其愿，和悦相乐。';
  exit;
end;
if s='小畜之涣' then
begin
  result:='鹑尾贲贲，火中成军。虢叔出奔，下失其君。';
  exit;
end;
if s='小畜之节' then
begin
  result:='两人相距，止不同舍。夫妻离散，卫侯失居。';
  exit;
end;
if s='小畜之中孚' then
begin
  result:='魃为旱虐，风吹云却。欲止不得，反归其宅。';
  exit;
end;
if s='小畜之小过' then
begin
  result:='关雎淑女，配我君子。少姜在门，君子嘉喜。';
  exit;
end;
if s='小畜之既济' then
begin
  result:='慈母赤子，飨赐得士。夷狄服除，以安王家。';
  exit;
end;
if s='小畜之未济' then
begin
  result:='三足孤乌，灵明督邮。司过罚恶，自贼其家，毁败为忧。';
  exit;
end;

end;
function lv(const s: string): string;
begin
 if s='履' then
begin
  result:='十乌俱飞，羿射九雌。雄得独全，虽惊不危。';
  exit;
end;
if s='履之乾' then
begin
  result:='东向蕃垣，相与笑言。子般执鞭，圉人作患。';
  exit;
end;
if s='履之坤' then
begin
  result:='循河榜舟，旁淮东游。渔父举网，先得大鳅。';
  exit;
end;
if s='履之屯' then
begin
  result:='辕折轮破，马倚仆卧。后旅先宿，右足跌踒。';
  exit;
end;
if s='履之蒙' then
begin
  result:='两人相绊，相与悖戾。心乖不同，讼争忷忷。';
  exit;
end;
if s='履之需' then
begin
  result:='北辰紫宫，衣冠立中。含和建德，常受天福。';
  exit;
end;
if s='履之讼' then
begin
  result:='游居石门，禄安身全。受福西邻，归饮玉泉。';
  exit;
end;
if s='履之师' then
begin
  result:='羊肠九萦，相推稍前。止须王孙，乃能上天。';
  exit;
end;
if s='履之比' then
begin
  result:='争讼相倍，和气不处。阴阳俱否，谷风毋子。';
  exit;
end;
if s='履之小畜' then
begin
  result:='郭叔距颐，为棘所拘。龙额重颡，祸不成殃，复归其乡。';
  exit;
end;
if s='履之泰' then
begin
  result:='虿室蜂户，螫我手足。不得进止，为吾害咎。';
  exit;
end;
if s='履之否' then
begin
  result:='怒非其怨，因物有迁。贪妬腐鼠，而呼鸮鸢。自令失饵，倒被困患。';
  exit;
end;
if s='履之同人' then
begin
  result:='婴孩求乳，母归其子。黄麑悦喜，自乐甘饵。';
  exit;
end;
if s='履之大有' then
begin
  result:='针缕徒劳，锦绣不成。鹰逐雉兔，爪折不得。';
  exit;
end;
if s='履之谦' then
begin
  result:='雨潦集降，河渠不通。齐鲁闭塞，破费市空。';
  exit;
end;
if s='履之豫' then
begin
  result:='封豕沟渎，水潦空谷。客止舍宿，泥涂至腹，处无黍稷。';
  exit;
end;
if s='履之随' then
begin
  result:='三奸相扰，桀跖为友。上下骚离，隔绝天道。';
  exit;
end;
if s='履之蛊' then
begin
  result:='齐景惑疑，为孺子牛。嫡庶不明，贼孽为患。';
  exit;
end;
if s='履之临' then
begin
  result:='三羊俱亡，奔走南行。会暮失迹，不知所藏。';
  exit;
end;
if s='履之观' then
begin
  result:='请伯行贾，岱山之野。夜历险阻，不逢危殆，利如浇酒。';
  exit;
end;
if s='履之噬嗑' then
begin
  result:='桑之将落，陨其黄叶。失势倾侧，而无所立。';
  exit;
end;
if s='履之贲' then
begin
  result:='上山求鱼，入水捕狸。市非其归，自令久留。';
  exit;
end;
if s='履之剥' then
begin
  result:='名成德就，项领不试。景公耋老，尼父逝去。';
  exit;
end;
if s='履之复' then
begin
  result:='天之奥隅，尧舜所居。可以存身，保我国家。';
  exit;
end;
if s='履之无妄' then
begin
  result:='涉伯殉名，弃礼诛身。不得其道，成子奔燕。';
  exit;
end;
if s='履之大畜' then
begin
  result:='两人俱争，莫能有定。心乖不同，讼言起凶。';
  exit;
end;
if s='履之颐' then
begin
  result:='雎鸠淑女，贤圣配耦。宜家受福，吉庆长久。';
  exit;
end;
if s='履之大过' then
begin
  result:='逾江求橘，并得大栗。烹羊食炙，饮酒歌笑。';
  exit;
end;
if s='履之坎' then
begin
  result:='山险难行，磵中多石。车驰轊击，重载折轴。担负差踬，跌踒右足。';
  exit;
end;
if s='履之离' then
begin
  result:='允利孔福，神所子畜。般乐无苦，得其欢欲。';
  exit;
end;
if s='履之咸' then
begin
  result:='鸟鹊食谷，张口受哺。蒙被恩福，长大成就。柔顺利贞，君臣合德。';
  exit;
end;
if s='履之恒' then
begin
  result:='潼滃蔚荟，肤寸来会。津液下降，流潦滂沛。';
  exit;
end;
if s='履之遁' then
begin
  result:='路多枳棘，步刺我足。不利旅客，为心作毒。';
  exit;
end;
if s='履之大壮' then
begin
  result:='虺蝮所聚，难以居处。毒螫痛甚，疮不可愈。';
  exit;
end;
if s='履之晋' then
begin
  result:='麟凤相随，察观安危。东国圣人，后稷周公。君子攸同，利以居止，长无忧凶。';
  exit;
end;
if s='履之明夷' then
begin
  result:='筑乱不时，使民恨忧。立祉为笑，君危臣羞。';
  exit;
end;
if s='履之家人' then
begin
  result:='黄帝所生，伏羲之宇。兵刃不至，利以居止。';
  exit;
end;
if s='履之睽' then
begin
  result:='雀行求粒，暮归屋宿。反其室舍，安宁如故。';
  exit;
end;
if s='履之蹇' then
begin
  result:='太仓积谷，天下饶食。阴阳和调，年岁时熟。';
  exit;
end;
if s='履之解' then
begin
  result:='干旄旌旗，执帜在郊。虽有宝珠，无路致之。';
  exit;
end;
if s='履之损' then
begin
  result:='履危蹈颠，坠入寒渊。行不能前，足踒不便。';
  exit;
end;
if s='履之益' then
begin
  result:='衔命上车，合和两家。蛾眉皓齿，二国不殆。';
  exit;
end;
if s='履之夬' then
begin
  result:='吉日车攻，田弋获禽。宣王饮酒，以告嘉功。';
  exit;
end;
if s='履之姤' then
begin
  result:='金帛贵宝，宜与我市。嫁取有息，利得过母。';
  exit;
end;
if s='履之萃' then
begin
  result:='延颈望酒，不入我口。深以自喜，利得无有。';
  exit;
end;
if s='履之升' then
begin
  result:='牧为代守，飨食甘赐。得吏士意，战大破胡，长安国家。';
  exit;
end;
if s='履之困' then
begin
  result:='日出温谷，临照万国。高明淑仁，虞夏配德。';
  exit;
end;
if s='履之井' then
begin
  result:='逐兔索乌，破我弓车。日暮不及，失利后时。';
  exit;
end;
if s='履之革' then
begin
  result:='讹言妄语，传相诖误。道左失迹，不知所处。';
  exit;
end;
if s='履之鼎' then
begin
  result:='履虎蹑尾，贬损我威。君子失否，去其国家。';
  exit;
end;
if s='履之震' then
begin
  result:='本根不固，华叶落去。更为孤妪，不得相视。';
  exit;
end;
if s='履之艮' then
begin
  result:='五轭四軏，优得饶有。陈力就列，驺虞喜悦。';
  exit;
end;
if s='履之渐' then
begin
  result:='黄帝紫云，圣哲且神。光明见祥，告我无殃。';
  exit;
end;
if s='履之归妹' then
begin
  result:='五利四福，俱田高邑。黍稷盛茂，多获藁稻。';
  exit;
end;
if s='履之丰' then
begin
  result:='群虎入邑，求索肉食。大人卫守，君不失国。';
  exit;
end;
if s='履之旅' then
begin
  result:='乌子鹊雏，常与母居。愿慕群侣，不离其巢。';
  exit;
end;
if s='履之巽' then
begin
  result:='蹇驴不材，骏骥失时。筋劳力尽，疲于沙丘。';
  exit;
end;
if s='履之兑' then
begin
  result:='玄鬣黑颡，东归高乡。朱鸟道引，灵龟载庄。遂抵天门，见我贞君。';
  exit;
end;
if s='履之涣' then
begin
  result:='探巢得雏，鸠鹊俱来，使我心郁。';
  exit;
end;
if s='履之节' then
begin
  result:='安上宜官，一日九迁。升擢超等，牧养常山，君臣获安。';
  exit;
end;
if s='履之中孚' then
begin
  result:='大头明目，载受嘉福。三雀飞来，与禄相得。';
  exit;
end;
if s='履之小过' then
begin
  result:='远视千里，不见黑子。离娄之明，无益于光。';
  exit;
end;
if s='履之既济' then
begin
  result:='三女为奸，俱游高园。背夫夜行，与伯笑言。不忍主母，为失醴酒，冤尤谁告。';
  exit;
end;
if s='履之未济' then
begin
  result:='日辰不良，强弱相振。一鸟两雏，客胜主人。';
  exit;
end;

end;

function tai(const s: string): string;
begin
  if s='泰' then
begin
  result:='求玉陈国，留连东域。须我王孙，四月来复。主君有德，蒙恩受福。';
  exit;
end;
if s='泰之乾' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存。';
  exit;
end;
if s='泰之坤' then
begin
  result:='济深难渡，濡我衣袴。五子善棹，脱无他故。';
  exit;
end;
if s='泰之屯' then
begin
  result:='倚立相望，适得道通。驱驾奔驰，比目同床。';
  exit;
end;
if s='泰之蒙' then
begin
  result:='葛藟蒙棘，华不得实。谗佞为政，使恩壅塞。';
  exit;
end;
if s='泰之需' then
begin
  result:='四牡兼用，君子所服。南征述职，与福相得。';
  exit;
end;
if s='泰之讼' then
begin
  result:='踝踵足伤，左指病痈。失旅后时，利走不来。';
  exit;
end;
if s='泰之师' then
begin
  result:='春城夏国，生长之域。可以服食，保全家国。';
  exit;
end;
if s='泰之比' then
begin
  result:='望骥不来，拘蹇为忧。雨惊我心，风撼我肌。';
  exit;
end;
if s='泰之小畜' then
begin
  result:='久客无床，思归我乡。雷雨满盈，道不得通。';
  exit;
end;
if s='泰之履' then
begin
  result:='方船备水，傍河燃火。积善有征，终身无祸。';
  exit;
end;
if s='泰之否' then
begin
  result:='陟岵望母，役事未已。王政靡盬，不得相保。';
  exit;
end;
if s='泰之同人' then
begin
  result:='多载重负，捐弃于野。予母谁子，但自劳苦。';
  exit;
end;
if s='泰之大有' then
begin
  result:='生值地乳，上皇大喜。赐我福祉，寿算无极。';
  exit;
end;
if s='泰之谦' then
begin
  result:='翕翕（车甸）（车甸），陨坠山颠。灭我令名，长没不存';
  exit;
end;
if s='泰之豫' then
begin
  result:='东邻嫁女，为王妃后。庄公筑馆，以尊王母。归于京师，季姜悦喜。';
  exit;
end;
if s='泰之随' then
begin
  result:='伯虎仲熊，德义渊闳。使布五教，阴阳顺序';
  exit;
end;
if s='泰之蛊' then
begin
  result:='敏捷劲疾，如猿升木。彤弓虽调，终不能获。';
  exit;
end;
if s='泰之临' then
begin
  result:='举袂覆目，不见日月。衣裘簟席，就长夜室。';
  exit;
end;
if s='泰之观' then
begin
  result:='忍丑少羞，无面有头。耗减寡虚，日以削消。';
  exit;
end;
if s='泰之噬嗑' then
begin
  result:='涸阴冱寒，常冰不温。凌人惰怠，雹大为灾。';
  exit;
end;
if s='泰之贲' then
begin
  result:='夏麦麸（麦黄），霜击其芒。疾君败国，使民夭伤。';
  exit;
end;
if s='泰之剥' then
begin
  result:='渊涸龙忧，箕子为奴。干叔陨命，殷破其家。';
  exit;
end;
if s='泰之复' then
begin
  result:='跛踦相随，日暮牛罢。陵迟后旅，失利亡雌。';
  exit;
end;
if s='泰之无妄' then
begin
  result:='桑之将落，陨其黄叶。失势倾侧，如无所立。';
  exit;
end;
if s='泰之大畜' then
begin
  result:='生长以时，长育根本。阴阳和德，岁乐无忧。';
  exit;
end;
if s='泰之颐' then
begin
  result:='童女无夫，未有配合。阴阳不和，空坐独宿。';
  exit;
end;
if s='泰之大过' then
begin
  result:='春令原宥，仁德不周。三圣攸同，周国茂兴。';
  exit;
end;
if s='泰之坎' then
begin
  result:='金精跃怒，带剑过午。两虎相距，虽惊无咎。';
  exit;
end;
if s='泰之离' then
begin
  result:='危坐至暮，请求不得。膏泽不降，政戾民忒。';
  exit;
end;
if s='泰之咸' then
begin
  result:='老杨日衰，条多枯枝。爵级不进，日下摧颓。';
  exit;
end;
if s='泰之恒' then
begin
  result:='蔡侯适楚，留连江滨。踰曰历月，思其君后。';
  exit;
end;
if s='泰之遁' then
begin
  result:='右抚剑佩，左援钩带。凶讼不止，相与争戾，失利市肆。';
  exit;
end;
if s='泰之大壮' then
begin
  result:='水流趋下，远至东海。求我所有，买鲔与鲤。';
  exit;
end;
if s='泰之晋' then
begin
  result:='登几上舆，驾驷南游。合从散横，燕齐以强。';
  exit;
end;
if s='泰之明夷' then
begin
  result:='求兔得獐，过其所望。欢以相迎，高位夷伤。';
  exit;
end;
if s='泰之家人' then
begin
  result:='过时不归，道远且迷。旅人心悲，使我徘徊。';
  exit;
end;
if s='泰之睽' then
begin
  result:='魂孤无室，衔指含食。盗张民馈，见敌失肉。';
  exit;
end;
if s='泰之蹇' then
begin
  result:='居如转丸，危不得安。东西不宁，动生忧患。';
  exit;
end;
if s='泰之解' then
begin
  result:='坤厚地德，庶物蕃息。平康正直，以绥百福。';
  exit;
end;
if s='泰之损' then
begin
  result:='树蔽牡荆，生蘙山旁。雠敌背憎，孰肯相迎。';
  exit;
end;
if s='泰之益' then
begin
  result:='凤凰衔书，赐我玄珪，封为晋侯。';
  exit;
end;
if s='泰之夬' then
begin
  result:='作凶不善，相牵入井。溺陷辜罪，祸生忧滋。';
  exit;
end;
if s='泰之姤' then
begin
  result:='悲鸣北行，失其长兄。伯仲不幸，骸骨散亡。';
  exit;
end;
if s='泰之萃' then
begin
  result:='羔衣豹裘，高易我宇，君子维好。';
  exit;
end;
if s='泰之升' then
begin
  result:='日中为市，各抱所有。交易货赀，函珠怀宝，心悦欢喜。';
  exit;
end;
if s='泰之困' then
begin
  result:='振急绝理，恒阳不雨。物病焦干，华实无有。';
  exit;
end;
if s='泰之井' then
begin
  result:='狐狢载剥，徙温厚蓐。寒棘为疾，有所不足。';
  exit;
end;
if s='泰之革' then
begin
  result:='履践危难，脱执去患。入福喜门，见诲大君。';
  exit;
end;
if s='泰之鼎' then
begin
  result:='四乱不安，东西为患。艮止我足，无出国域。乃得全完，赖其生福。';
  exit;
end;
if s='泰之震' then
begin
  result:='南国少子，材略美好。求我长女，贱薄不与。反得丑恶，后乃大悔。';
  exit;
end;
if s='泰之艮' then
begin
  result:='妄怒失理，阳孤无辅。物病焦枯，年饥于黍。';
  exit;
end;
if s='泰之渐' then
begin
  result:='倬然远咎，辟患害早。田获三狐，巨贝为宝。';
  exit;
end;
if s='泰之归妹' then
begin
  result:='逐鹿山巅，利去我西。虽邪南北，无所不得。';
  exit;
end;
if s='泰之丰' then
begin
  result:='龙蛇所众，大水来处。滑滑沛沛，使我无赖。';
  exit;
end;
if s='泰之旅' then
begin
  result:='从风吹火，牵麒骥尾。易为功力，因摧受福。';
  exit;
end;
if s='泰之巽' then
begin
  result:='泽狗水凫，难畜少雏。不为家饶，心其亟逋。';
  exit;
end;
if s='泰之兑' then
begin
  result:='水坏我里，东流为海。龟凫讙嚣，不见慈母。';
  exit;
end;
if s='泰之涣' then
begin
  result:='褰衣涉河，水深渍罢。赖幸舟子，济脱无他。';
  exit;
end;
if s='泰之节' then
begin
  result:='龟厌江海，陆行不止。自令枯槁，失其都市。忧悔为咎。';
  exit;
end;
if s='泰之中孚' then
begin
  result:='同本异叶，乐仁政德。东邻慕义，来兴我国。';
  exit;
end;
if s='泰之小过' then
begin
  result:='桃李花实，累累日息。长大成熟，甘美可食，为我利福。';
  exit;
end;
if s='泰之既济' then
begin
  result:='重瞳四乳，聪明顺理。无隐不形，微见千里。灾害不作，君子集聚。';
  exit;
end;
if s='泰之未济' then
begin
  result:='实沈参墟，以义讨尤。次止结盟，以成霸功。';
  exit;
end;

end;

function pi(const s: string): string;
begin
  if s='否' then
begin
  result:='秦为虎狼，与晋争强。并吞其国，号曰始皇。';
  exit;
end;
if s='否之乾' then
begin
  result:='江河淮济，天之奥府。众利所聚，可以饶有。乐我君子。';
  exit;
end;
if s='否之坤' then
begin
  result:='天之所灾，凶不可居。转徙获福，留止忧危。';
  exit;
end;
if s='否之屯' then
begin
  result:='名成德就，项领不试。景公耄老，尼父逝去。';
  exit;
end;
if s='否之蒙' then
begin
  result:='持善避恶，福禄常存。虽有豹虎，不能危患。';
  exit;
end;
if s='否之需' then
begin
  result:='避患东西，反入祸门。糟糠不足，忧动我心。';
  exit;
end;
if s='否之讼' then
begin
  result:='珪璧琮璋，执贽见王。百里宁戚，应聘齐秦。';
  exit;
end;
if s='否之师' then
begin
  result:='扬水潜凿，使石洁白。里素表朱，游戏皋沃。得君所愿，心志娱乐。';
  exit;
end;
if s='否之比' then
begin
  result:='官爵相保，居之无咎。求免不得，使伯悔恨。';
  exit;
end;
if s='否之小畜' then
begin
  result:='戴元无裈，裸裎出门。小儿作笑，君子忧患。';
  exit;
end;
if s='否之履' then
begin
  result:='把珠入口，为我利宝。得吾所有，欣善嘉喜。';
  exit;
end;
if s='否之泰' then
begin
  result:='行不如还，直不如屈。进不如退，可以安吉。';
  exit;
end;
if s='否之同人' then
begin
  result:='众鬼瓦聚，还生大怪。九身无头，魂惊魄去，不可以居。';
  exit;
end;
if s='否之大有' then
begin
  result:='家给人足，颂声并作。四夷宾服，干戈橐阁。';
  exit;
end;
if s='否之谦' then
begin
  result:='人面鬼口，长舌如斧。斲破瑚琏，殷商绝嗣。';
  exit;
end;
if s='否之豫' then
begin
  result:='南山之峻，真人所在。德配唐虞，天命为子。保佑歆享，身受大庆。';
  exit;
end;
if s='否之随' then
begin
  result:='春桃生花，季女宜家。受福多年，男为邦君。';
  exit;
end;
if s='否之蛊' then
begin
  result:='鸱鸮破斧，冲人危殆。赖其忠德，转祸为福，倾危复立。';
  exit;
end;
if s='否之临' then
begin
  result:='猿堕高木，不踒手足。保我金玉，还归其室。';
  exit;
end;
if s='否之观' then
begin
  result:='天之奥隅，尧舜所居。可以存身，保我邦家。';
  exit;
end;
if s='否之噬嗑' then
begin
  result:='伯蹇叔盲，足病难行。终日至暮，不离其乡。';
  exit;
end;
if s='否之贲' then
begin
  result:='日月相望，光明盛昌。三圣茂功，仁德大隆。';
  exit;
end;
if s='否之剥' then
begin
  result:='桃李花实，累累日息。长大成就，甘美可食。';
  exit;
end;
if s='否之复' then
begin
  result:='入和出明，动作有光。运转休息，所为允康。';
  exit;
end;
if s='否之无妄' then
begin
  result:='阴衰老极，阳建其德。履离戴光，天下昭明。功业不长，虾蟆代王。';
  exit;
end;
if s='否之大畜' then
begin
  result:='行役未已，新事复起。姬姜劳苦，不得休止。';
  exit;
end;
if s='否之颐' then
begin
  result:='狐鸣室北，饥无所食。困于空丘，莫与同力。';
  exit;
end;
if s='否之大过' then
begin
  result:='雄圣伏，名人匿。麟远走，凤飞北。扰乱未息。';
  exit;
end;
if s='否之坎' then
begin
  result:='疾贫望幸，使伯行贩。开牢择羊，多得大牂。';
  exit;
end;
if s='否之离' then
begin
  result:='翕翕（车甸）（车甸），陨坠颠崩。灭其令名，长没不存。';
  exit;
end;
if s='否之咸' then
begin
  result:='华落实槁，衣敝如络。女功不成，丝布如玉。';
  exit;
end;
if s='否之恒' then
begin
  result:='温山松柏，常茂不落。鸾凤所止，得其欢乐。';
  exit;
end;
if s='否之遁' then
begin
  result:='失恃毋友，嘉偶出走。攫如失兔，傫如丧狗。';
  exit;
end;
if s='否之大壮' then
begin
  result:='太乙驾骝，从天上求。征我叔季，封为鲁侯。';
  exit;
end;
if s='否之晋' then
begin
  result:='双凫俱飞，欲归稻池，径涉萑泽，为矢所射，伤我胸臆。';
  exit;
end;
if s='否之明夷' then
begin
  result:='深坑复平，天下安宁。意娱心乐，赖福长生。';
  exit;
end;
if s='否之家人' then
begin
  result:='俱为天民，云过吾西。风伯雨师，与我无恩。';
  exit;
end;
if s='否之睽' then
begin
  result:='野鸟山鹊，来集六博。三枭四散，主人胜客。';
  exit;
end;
if s='否之蹇' then
begin
  result:='北阴司寒，坚冰不温。凌人惰怠，大雹为灾。';
  exit;
end;
if s='否之解' then
begin
  result:='伊伯智士，去桀耕野。执顺以待，反和无咎。';
  exit;
end;
if s='否之损' then
begin
  result:='秋风牵手，相从笑语。伯歌季舞，燕乐以喜。';
  exit;
end;
if s='否之益' then
begin
  result:='徙巢去家，南过白马。东西受福，与母相得。';
  exit;
end;
if s='否之夬' then
begin
  result:='鸟飞跌跛，两两相和。不病四肢，但去莫疑。';
  exit;
end;
if s='否之姤' then
begin
  result:='三牛生狗，以戌为母。荆夷上侵，姬伯出走。';
  exit;
end;
if s='否之萃' then
begin
  result:='破筐敝筥，弃捐于道。坏落穿败，不复为宝。';
  exit;
end;
if s='否之升' then
begin
  result:='结纽得解，忧不为祸。食利供家，受福安坐。';
  exit;
end;
if s='否之困' then
begin
  result:='白日扬光，雷车避藏。云雨不行，各自还乡。';
  exit;
end;
if s='否之井' then
begin
  result:='杜口结舌，心中怫郁。去灾生患，无所告冤。';
  exit;
end;
if s='否之革' then
begin
  result:='赉贝赎狸，不听我辞。系于虎须，牵不得来。';
  exit;
end;
if s='否之鼎' then
begin
  result:='鸣鹤抱子，见蛇何咎。室家俱在，不失其所。';
  exit;
end;
if s='否之震' then
begin
  result:='逐兔山西，利走入门。赖我仁德，获为我福。';
  exit;
end;
if s='否之艮' then
begin
  result:='兴役不休，与民争时。牛生五趾，行危为忧。';
  exit;
end;
if s='否之渐' then
begin
  result:='春栗夏梨，山鲜希有。斗千石万，贵不可贩。';
  exit;
end;
if s='否之归妹' then
begin
  result:='悲号北行，失其长兄。伯仲不幸，骸骨散亡。';
  exit;
end;
if s='否之丰' then
begin
  result:='赋敛重数，政为民贼。杼轴空虚，去其家室。';
  exit;
end;
if s='否之旅' then
begin
  result:='履服白缟，殃咎并到，忧不能笑。';
  exit;
end;
if s='否之巽' then
begin
  result:='杜口结舌，言为祸母。代伯受患，无所祷免。';
  exit;
end;
if s='否之兑' then
begin
  result:='免冠进贤，步出朝门。仪体不正，贼孽为患。';
  exit;
end;
if s='否之涣' then
begin
  result:='娶于姜女，驾迎新妇。少齐在门，夫子悦喜。';
  exit;
end;
if s='否之节' then
begin
  result:='牧羊稻园，闻虎喧讙。畏恐悚息，终无祸患。';
  exit;
end;
if s='否之中孚' then
begin
  result:='老妾据机，纬绝不知。女功不成，冬寒无衣。';
  exit;
end;
if s='否之小过' then
begin
  result:='黑龙吐光，使阴复明。燎猎载圣，六师以昌。';
  exit;
end;
if s='否之既济' then
begin
  result:='东邻嫁女，为王妃后。庄公筑馆，以尊王母。归于京师，季姜悦喜。';
  exit;
end;
if s='否之未济' then
begin
  result:='灌颉东从，道顿跌踦。日辰不良，病为身祸。';
  exit;
end;

end;

function tongren(const s: string):string;
begin
if s='同人' then
begin
  result:='櫜置山巅，销锋铸刃。示不复用，天下大欢。';
  exit;
end;
if s='同人之乾' then
begin
  result:='一臂六手，不便于口。莫肯为用，利弃我走';
  exit;
end;
if s='同人之坤' then
begin
  result:='獐鹿逐牧，饱归其居，安宁无悔。';
  exit;
end;
if s='同人之屯' then
begin
  result:='鸿鱼逆流，至人潜处。蓬蒿代柱，大屋颠仆。';
  exit;
end;
if s='同人之蒙' then
begin
  result:='三羖五牂，相遇俱行。迷入空泽，经涉六驳，为所伤贼。';
  exit;
end;
if s='同人之需' then
begin
  result:='黄帝出游，驾龙乘马。东上泰山，南过齐鲁，邦国咸喜。';
  exit;
end;
if s='同人之讼' then
begin
  result:='履危不安，心欲东西。步走逐鹿，空无所得。';
  exit;
end;
if s='同人之师' then
begin
  result:='望尚阿衡，太宰周公。藩屏汤武，立为侯王。';
  exit;
end;
if s='同人之比' then
begin
  result:='白龙黑虎，起伏俱怒。战于阪泉，蚩尤败走，死于鱼首。';
  exit;
end;
if s='同人之小畜' then
begin
  result:='载石上山，步跌不前。嚬眉之忧，不得所欢，长思忧叹。';
  exit;
end;
if s='同人之履' then
begin
  result:='周德既成，杼轴不倾。申酉昳暮，耄老衰去，箴石不佑。';
  exit;
end;
if s='同人之泰' then
begin
  result:='乘云带雨，与飞鸟俱。动举千里，见我慈母。';
  exit;
end;
if s='同人之否' then
begin
  result:='赉贝赎狸，不听我辞。系于虎须，牵不得来。';
  exit;
end;
if s='同人之大有' then
begin
  result:='三翼飞来，是我逢时。俱行先至，多得大利。';
  exit;
end;
if s='同人之谦' then
begin
  result:='两足四翼，飞入我国。宁我伯姊，与母相得。';
  exit;
end;
if s='同人之豫' then
begin
  result:='按民呼池，玉杖文案。鱼如白云，一国获愿。';
  exit;
end;
if s='同人之随' then
begin
  result:='季姬踟蹰，望我城隅。终日至暮，不见齐侯，居止无忧。';
  exit;
end;
if s='同人之蛊' then
begin
  result:='龙渴求饮，黑云影从。河伯捧觞，跪进酒浆，流潦滂滂。';
  exit;
end;
if s='同人之临' then
begin
  result:='出门逢患，与福为怨。更相击刺，伤我手端。';
  exit;
end;
if s='同人之观' then
begin
  result:='播天舞地，神明所守，安乐无咎。';
  exit;
end;
if s='同人之噬嗑' then
begin
  result:='两金相击，勇气钧敌。终日大战，不破不缺。';
  exit;
end;
if s='同人之贲' then
begin
  result:='大车难驾，两靷如绳。马奔山后，轮脱不行。中道遇害。';
  exit;
end;
if s='同人之剥' then
begin
  result:='文山紫芝，雍梁朱草。长生和气，王以为宝。公尸侑食，福禄来处。';
  exit;
end;
if s='同人之复' then
begin
  result:='抱珠入口，为我畜宝。得吾所有，欣然嘉喜。';
  exit;
end;
if s='同人之无妄' then
begin
  result:='负牛上山，力尽行难。烈风雨雪，遮遏我前。中道复还，忧者得欢。';
  exit;
end;
if s='同人之大畜' then
begin
  result:='陶朱白圭，善贾息资。三致千金，德施上人。';
  exit;
end;
if s='同人之颐' then
begin
  result:='子鉏执麟，春秋作经。元圣将终，尼父悲心。';
  exit;
end;
if s='同人之大过' then
begin
  result:='春日载阳，福履齐长。四时不忒，与乐为昌。';
  exit;
end;
if s='同人之坎' then
begin
  result:='孔德如玉，出于幽谷。飞上乔木，鼓其羽翼，辉光照国。';
  exit;
end;
if s='同人之离' then
begin
  result:='区脱康居，慕仁入朝。湛露之欢，三爵毕恩。复归穹庐，以安其居。';
  exit;
end;
if s='同人之咸' then
begin
  result:='秋冬夜行，照览星辰。道理利通，终身无患。';
  exit;
end;
if s='同人之恒' then
begin
  result:='鸣鹄抱子，见蛇何咎。室家俱在，不失其所';
  exit;
end;
if s='同人之遁' then
begin
  result:='安如泰山，福寿屡臻。虽有豺虎，不能危身。';
  exit;
end;
if s='同人之大壮' then
begin
  result:='老目瞢眠，不知东西。君失理命，以直为伛，王珍为宝。';
  exit;
end;
if s='同人之晋' then
begin
  result:='植璧秉珪，请命于河。周公克敏，冲人瘳愈。';
  exit;
end;
if s='同人之明夷' then
begin
  result:='太王执政，岁熟民富。国家丰有，王者有喜。';
  exit;
end;
if s='同人之家人' then
begin
  result:='讼争相背，和气不处。阴阳俱否，谷风无子。';
  exit;
end;
if s='同人之睽' then
begin
  result:='齐鲁争言，战于龙门。构怨结祸，三世不安。';
  exit;
end;
if s='同人之蹇' then
begin
  result:='鹿得美草，鸣呼其友。九族和睦，不离邦域。';
  exit;
end;
if s='同人之解' then
begin
  result:='百里南行，虽微复明。去虞适秦，为穆国卿。';
  exit;
end;
if s='同人之损' then
begin
  result:='梅李冬实，国多寇贼。乱扰并作，王不能制。';
  exit;
end;
if s='同人之益' then
begin
  result:='府藏之富，王以赈贷。捕鱼河海，笱网多得。';
  exit;
end;
if s='同人之夬' then
begin
  result:='牡飞门启，忧患大解。修福行善，不为身祸。';
  exit;
end;
if s='同人之姤' then
begin
  result:='宜昌娶妇，东家歌舞，长乐欢喜。';
  exit;
end;
if s='同人之萃' then
begin
  result:='正阳之央，甲氏以亡。祸及留吁，烟灭为墟。';
  exit;
end;
if s='同人之升' then
begin
  result:='凫过稻芦，甘乐鳅。虽驱不走，田畯怀忧。';
  exit;
end;
if s='同人之困' then
begin
  result:='跛踦俱行，日暮车伤，失旅乏粮。';
  exit;
end;
if s='同人之井' then
begin
  result:='龙门水穴，流行不害。民安其土，君臣相保。';
  exit;
end;
if s='同人之革' then
begin
  result:='山陵四塞，遏我径路。欲前不得，复还故处。';
  exit;
end;
if s='同人之鼎' then
begin
  result:='两虎争斗，血流漂杵。城郭空虚，蒿藜塞道。';
  exit;
end;
if s='同人之震' then
begin
  result:='依叔墙隅，志下心劳。楚亭晨食，韩子低头。';
  exit;
end;
if s='同人之艮' then
begin
  result:='龙生无常，或托空桑。凭乘风云，为尧立功。';
  exit;
end;
if s='同人之渐' then
begin
  result:='魁行摇尾，逐云吹水。污泥为陆，下田宜稷。';
  exit;
end;
if s='同人之归妹' then
begin
  result:='跛踦相随，日暮牛罢。陵迟后旅，失利亡雌。';
  exit;
end;
if s='同人之丰' then
begin
  result:='三人俱行，北求大牂。长孟病足，倩季负粮。柳下之宝，不失我邦。';
  exit;
end;
if s='同人之旅' then
begin
  result:='凤凰在左，麒麟处右。仁圣相遇，伊吕集聚。伤害不至，时无殃咎，福为我母。';
  exit;
end;
if s='同人之巽' then
begin
  result:='乘筏渡海，虽深不殆。曾孙皇祖，累累俱在。';
  exit;
end;
if s='同人之兑' then
begin
  result:='比目四翼，来安吾国。赍福上堂，与我同床。';
  exit;
end;
if s='同人之涣' then
begin
  result:='娶于姜吕，驾迎新妇。少齐在门，夫子悦喜。';
  exit;
end;
if s='同人之节' then
begin
  result:='螟虫为贼，害我稼穑。尽禾殚麦，秋无所得。';
  exit;
end;
if s='同人之中孚' then
begin
  result:='衣裳颠倒，为王来呼。成就东周，邦国大休。';
  exit;
end;
if s='同人之小过' then
begin
  result:='王孙季子，相与为友。明允笃诚，升擢荐举。';
  exit;
end;
if s='同人之既济' then
begin
  result:='踊泉滑滑，流行不绝。污为江海，败毁邑里，家无所处。';
  exit;
end;
if s='同人之未济' then
begin
  result:='桑扈窃脂，啄粟不宜。乱政无常，使心孔明。';
  exit;
end;

end;


function dayou(const s: string):string;
begin
if s='大有' then
begin
  result:='白虎张牙，征伐东莱。朱雀前驱，赞道说辞。敌人请服，衔璧而趋。';
  exit;
end;
if s='大有之乾' then
begin
  result:='南山太行，困于空桑。左沙右石，牛马无食。';
  exit;
end;
if s='大有之坤' then
begin
  result:='播木折枝，与母别离，绝不相知。';
  exit;
end;
if s='大有之屯' then
begin
  result:='噂噂所言，莫如我垣。欢乐坚固，可以长安。';
  exit;
end;
if s='大有之蒙' then
begin
  result:='雹梅零坠，心思愦愦。怀忧少愧，乱我魂气。';
  exit;
end;
if s='大有之需' then
begin
  result:='火虽炽后。寇虽聚右。吾身安吉，独不危殆。';
  exit;
end;
if s='大有之讼' then
begin
  result:='虎卧山隅，鹿过后朐。弓矢设张，猬为功曹，伏不敢起，遂至平原，得我美草。';
  exit;
end;
if s='大有之师' then
begin
  result:='三火起明，雨灭其光。高位疾颠，骄恣诛伤。';
  exit;
end;
if s='大有之比' then
begin
  result:='疋居楚乌，遇谗无辜，久旅离忧。';
  exit;
end;
if s='大有之小畜' then
begin
  result:='一室百子，同公异母。以义防患，祸灾不起。';
  exit;
end;
if s='大有之履' then
begin
  result:='商人行旅，资所无有。贪其利珠，流连王市。还家内顾，公子何咎。';
  exit;
end;
if s='大有之泰' then
begin
  result:='禹将为君，北入昆仑。稍进扬光，登入温汤。代舜为治，功德昭明。';
  exit;
end;
if s='大有之否' then
begin
  result:='乾行天德，覆帱无极。呕呼烹熟，使各自得。';
  exit;
end;
if s='大有之同人' then
begin
  result:='南国盛茂，黍稷醴酒。可以享老，乐我嘉友。';
  exit;
end;
if s='大有之谦' then
begin
  result:='方船备水，傍河燃火，终身无祸。';
  exit;
end;
if s='大有之豫' then
begin
  result:='雷行相逐，无有休息。战于平陆，为夷所覆。';
  exit;
end;
if s='大有之随' then
begin
  result:='踯躅踟蹰，拊心搔头。五昼四夜，睹我齐侯。';
  exit;
end;
if s='大有之蛊' then
begin
  result:='大口宣唇，神使伸言。黄龙景星，出应德门。与福上堂，天下安昌。';
  exit;
end;
if s='大有之临' then
begin
  result:='阴衰老极，阳建其德。履离戴光，天下昭明。';
  exit;
end;
if s='大有之观' then
begin
  result:='三涂五岳，阳城太室。神明所伏，独无兵革。';
  exit;
end;
if s='大有之噬嗑' then
begin
  result:='年丰岁熟，政仁民乐。利以居止，旅人获福。';
  exit;
end;
if s='大有之贲' then
begin
  result:='楚乌逢矢，不可久放。离居无群，意昧精丧。作此哀诗，以告孔忧。';
  exit;
end;
if s='大有之剥' then
begin
  result:='出门大步，与兄恶忤。骂公詈母，为我忧耻。';
  exit;
end;
if s='大有之复' then
begin
  result:='火之井谷，杨芒生角。犯历天市，窥观太微。登上玉床，家易其公。';
  exit;
end;
if s='大有之无妄' then
begin
  result:='牧羊逢狼，虽忧不伤。畏怖惕息，终无祸殃。';
  exit;
end;
if s='大有之大畜' then
begin
  result:='茧栗牺牲，敬事鬼神。神嗜饮食，受福多孙。';
  exit;
end;
if s='大有之颐' then
begin
  result:='大盖治床，南归牧羊。长伯为我，多得牛马，利于徙居。';
  exit;
end;
if s='大有之大过' then
begin
  result:='枯树无枝，与子分离。饥寒莫养，独立哀悲。';
  exit;
end;
if s='大有之坎' then
begin
  result:='天地九重，尧舜履中。正冠垂裳，宇宙平康。';
  exit;
end;
if s='大有之离' then
begin
  result:='凫鹥游泾，君子以宁。履德不愆，福禄来成。';
  exit;
end;
if s='大有之咸' then
begin
  result:='裸裎逐狐，为人观笑。牝鸡司晨，主作乱根。';
  exit;
end;
if s='大有之恒' then
begin
  result:='典册法书，藏在兰台。虽遭乱溃，独不遇灾。';
  exit;
end;
if s='大有之遁' then
begin
  result:='三痴俱狂，欲之平乡。迷惑失道，不知昏明。';
  exit;
end;
if s='大有之大壮' then
begin
  result:='瘿瘤疡疥，为身疮害。疾病癃痾，常不属逮。';
  exit;
end;
if s='大有之晋' then
begin
  result:='三豕俱走，斗于谷口。白豕不胜，死于坂下。';
  exit;
end;
if s='大有之明夷' then
begin
  result:='赖主之光，受德之佑。虽遭颠沛，独不凶咎。';
  exit;
end;
if s='大有之家人' then
begin
  result:='上义崇德，以建大福。明哲且聪，周武立功。';
  exit;
end;
if s='大有之睽' then
begin
  result:='四乱不安，东西为患。身止无功，不出国城。乃得全完，赖其生福。';
  exit;
end;
if s='大有之蹇' then
begin
  result:='金牙铁齿，西王母子。无有患殆，涉道大利。';
  exit;
end;
if s='大有之解' then
begin
  result:='贺喜从福，日利蕃息，欢乐有得。';
  exit;
end;
if s='大有之损' then
begin
  result:='昊天白日，照临我国。万民康宁，咸赖嘉福。';
  exit;
end;
if s='大有之益' then
begin
  result:='左眇右盲，视闇不明。下民多孽，君失其常。';
  exit;
end;
if s='大有之夬' then
begin
  result:='吾有黍粱，委积道傍。有囊服箱，运到我乡，藏于嘉仓。';
  exit;
end;
if s='大有之姤' then
begin
  result:='殊类异路，心不相慕。牝豕无猳，鳏无室家。';
  exit;
end;
if s='大有之萃' then
begin
  result:='雀行求食，出门见鹞。颠蹶上下，几无所处。';
  exit;
end;
if s='大有之升' then
begin
  result:='野有积庾，穑人驾取。不逢狼虎，暮归其宇。';
  exit;
end;
if s='大有之困' then
begin
  result:='肤敏之德，发愤晨食。虏豹禽说，为王求福。';
  exit;
end;
if s='大有之井' then
begin
  result:='光祀春成，陈宝鸡鸣。阳明失道，不能自守，消亡为咎。';
  exit;
end;
if s='大有之革' then
begin
  result:='左抱金玉，右得熊足。常盈不亡，获心所欲。';
  exit;
end;
if s='大有之鼎' then
begin
  result:='履泥污足，名困身辱。两仇相得，身为痛疟。';
  exit;
end;
if s='大有之震' then
begin
  result:='安居重迁，不去其廛。禾米相间，乐得常产。';
  exit;
end;
if s='大有之艮' then
begin
  result:='天灾所游，凶不可居。转徙获福，留止忧危。';
  exit;
end;
if s='大有之渐' then
begin
  result:='昧昧墨墨，不知白黑。景云乱扰，光明隐伏。犬戎来攻，幽王失国。';
  exit;
end;
if s='大有之归妹' then
begin
  result:='凫雁哑哑，以水为宅。雌雄相和，心志娱乐。得其所欲。';
  exit;
end;
if s='大有之丰' then
begin
  result:='长生无极，子孙千亿。柏柱载梁，坚固不倾。';
  exit;
end;
if s='大有之旅' then
begin
  result:='麒麟凤凰，善政得祥。阴阳和调，国无灾殃。';
  exit;
end;
if s='大有之巽' then
begin
  result:='天之奥隅，尧舜所居。可以存身，保我邦家。';
  exit;
end;
if s='大有之兑' then
begin
  result:='配合相迎，利之四邻。昏以为期，与福笑喜。';
  exit;
end;
if s='大有之涣' then
begin
  result:='砥德砺材，果当成周。拜受大命，封为齐侯。';
  exit;
end;
if s='大有之节' then
begin
  result:='与福俱坐，蓄水备火，终无灾祸。';
  exit;
end;
if s='大有之中孚' then
begin
  result:='畏昏潜处，候时昭昭。卒逢白日，为世荣主。';
  exit;
end;
if s='大有之小过' then
begin
  result:='视日再光，与天相望。长生欢悦，与福为兄。';
  exit;
end;
if s='大有之既济' then
begin
  result:='大头明目，载受嘉福。三雀飞来，与禄相触。';
  exit;
end;
if s='大有之未济' then
begin
  result:='楩生荆山，命属输班。袍衣剥脱，夏热冬寒。立成枯槁，众人莫怜。';
  exit;
end;

end;


function qianxu(const s: string):string;
begin
if s='谦' then
begin
  result:='王乔无病，狗头不痛。亡跛失履，乏我徒从。';
  exit;
end;
if s='谦之乾' then
begin
  result:='喋嗫噱嚾，昧冥相抟。多言少实，语无成事。';
  exit;
end;
if s='谦之坤' then
begin
  result:='北辰紫宫，衣冠立中。含和建德，常受大福。';
  exit;
end;
if s='谦之屯' then
begin
  result:='东壁余光，数暗不明。主母嫉妒，乱我事业。';
  exit;
end;
if s='谦之蒙' then
begin
  result:='下背其上，盗明相让。子婴两头，陈破其墟。';
  exit;
end;
if s='谦之需' then
begin
  result:='凤生会稽，稍巨能飞。翱翔桂林，为众鸟雄。';
  exit;
end;
if s='谦之讼' then
begin
  result:='凿井求玉，非和氏宝。名困身辱，劳无所得。';
  exit;
end;
if s='谦之师' then
begin
  result:='邦桀载殳，道至东莱。百僚具举，君王嘉喜。';
  exit;
end;
if s='谦之比' then
begin
  result:='安息康居，异国穹庐。非吾邦域，使伯忧戚。';
  exit;
end;
if s='谦之小畜' then
begin
  result:='江河淮海，天之都市。商人受福，国家富有。';
  exit;
end;
if s='谦之履' then
begin
  result:='同本异叶，乐仁尚德。东邻慕义，来兴吾国。';
  exit;
end;
if s='谦之泰' then
begin
  result:='白鹤衔珠，夜食为明。怀我德音，身受光荣。';
  exit;
end;
if s='谦之否' then
begin
  result:='践履危难，脱厄去患。入福喜门，见吾邦君。';
  exit;
end;
if s='谦之同人' then
begin
  result:='宫商既和，声音相随。骊驹在门，主君以欢。';
  exit;
end;
if s='谦之大有' then
begin
  result:='天地配享，六位光明。阴阳顺叙，以成厥功。';
  exit;
end;
if s='谦之豫' then
begin
  result:='江河淮海，天之奥府。众利所聚，可以饶有。乐我君子。';
  exit;
end;
if s='谦之随' then
begin
  result:='双鸟俱飞，欲归稻池。径涉萑泽，为矢所射，伤我胸臆。';
  exit;
end;
if s='谦之蛊' then
begin
  result:='伯仲叔季，日暮寝寐。臝卧失明，丧我贝囊，衔却道傍。';
  exit;
end;
if s='谦之临' then
begin
  result:='受终文祖，承衰复起。以义自闲，虽苦无咎。';
  exit;
end;
if s='谦之观' then
begin
  result:='据斗运枢，顺天无忧。与乐并居。';
  exit;
end;
if s='谦之噬嗑' then
begin
  result:='周师伐纣，战于牧野。甲子平旦，天下悦喜。';
  exit;
end;
if s='谦之贲' then
begin
  result:='十雌百雏，常与母俱。抱鸡搏虎，谁肯为侣。';
  exit;
end;
if s='谦之剥' then
begin
  result:='桀跖并处，人民愁苦。拥兵荷粮，战于齐鲁。';
  exit;
end;
if s='谦之复' then
begin
  result:='南山旻天，刺政关身。疾悲无辜，背憎为仇。';
  exit;
end;
if s='谦之无妄' then
begin
  result:='百川朝海，流行不止。道虽辽远，无不到者。';
  exit;
end;
if s='谦之大畜' then
begin
  result:='目不可合，忧来摇足。悚惕危惧，去其邦域。';
  exit;
end;
if s='谦之颐' then
begin
  result:='鸟升鹊举，照临东海。尨降庭坚，为陶叔后。封于英六，履福绥厚。';
  exit;
end;
if s='谦之大过' then
begin
  result:='北山多枣，橘柚所聚。荷囊载黍，盈我筐筥。';
  exit;
end;
if s='谦之坎' then
begin
  result:='悬貆素飡，食非其任。失望远民，实劳我心。';
  exit;
end;
if s='谦之离' then
begin
  result:='羔羊皮革，君子朝服。辅政扶德，以合万国。';
  exit;
end;
if s='谦之咸' then
begin
  result:='齐鲁争言，战于龙门。构怨致祸，三世不安。';
  exit;
end;
if s='谦之恒' then
begin
  result:='久阴霖雨，涂行泥潦。商人休止，市空无有。';
  exit;
end;
if s='谦之遁' then
begin
  result:='桃雀窃脂，巢于小枝。摇动不安，为风所吹。心寒栗栗，常忧殆危。';
  exit;
end;
if s='谦之大壮' then
begin
  result:='防患备灾，凶祸不来，虽困无灾。';
  exit;
end;
if s='谦之晋' then
begin
  result:='引颈绝粮，与母异门。不见所欢，孰与共言。';
  exit;
end;
if s='谦之明夷' then
begin
  result:='鳅虾去海，藏于枯里。街巷褊隘，不得自在。南北极远，渴馁成疾。';
  exit;
end;
if s='谦之家人' then
begin
  result:='恭宽信敏，功加四海。辟去不详，喜来从母。';
  exit;
end;
if s='谦之睽' then
begin
  result:='岁饥无年，虐政害民。干溪骊山，秦楚结怨。';
  exit;
end;
if s='谦之蹇' then
begin
  result:='右目无瞳，偏视寡明。十步之外，不知何公。';
  exit;
end;
if s='谦之解' then
begin
  result:='蜩螗欢喜，草木嘉茂。百果蕃炽，日益庶有。';
  exit;
end;
if s='谦之损' then
begin
  result:='常德自如，安坐无尤。幸入贵乡，到老安荣。';
  exit;
end;
if s='谦之益' then
begin
  result:='狡兔趯趯，良犬逐咋。雄雌爰爰，为鹰所获。';
  exit;
end;
if s='谦之夬' then
begin
  result:='春桃生花，季女宜家。受福多年，男为邦君。';
  exit;
end;
if s='谦之姤' then
begin
  result:='山石朽弊，消崩堕落。上下离心，君受其祟。';
  exit;
end;
if s='谦之萃' then
begin
  result:='水坏我里，东流为海。龟凫讙哗，不睹我家。';
  exit;
end;
if s='谦之升' then
begin
  result:='七窍龙身，造易八元。法天则地，顺时施恩，富贵长存。';
  exit;
end;
if s='谦之困' then
begin
  result:='四夷慕德，来兴我国。文君陟降，同受福德。';
  exit;
end;
if s='谦之井' then
begin
  result:='华首山头，仙道所游。利以居止，长无咎忧。';
  exit;
end;
if s='谦之革' then
begin
  result:='鹯鸠徙巢，西至平州。遭逢雷雹，损我苇芦。家室饥寒，思吾故初。';
  exit;
end;
if s='谦之鼎' then
begin
  result:='狗无前足，阴谋叛北，为身害贼。';
  exit;
end;
if s='谦之震' then
begin
  result:='阳孤亢极，多所恨惑。车倾盖亡，身常惊惶。乃得其愿，雌雄相从。';
  exit;
end;
if s='谦之艮' then
begin
  result:='空槽注器，豚彘不到。张弓祝鸡，雄父飞去。';
  exit;
end;
if s='谦之渐' then
begin
  result:='长夜短日，阴为阳贼。万物空枯，藏于北陆。';
  exit;
end;
if s='谦之归妹' then
begin
  result:='爪牙之士，怨毒祈父。转忧于己，伤不及母。';
  exit;
end;
if s='谦之丰' then
begin
  result:='拜跪请兔，不得臭腐。俛眉衔指，低头北去。';
  exit;
end;
if s='谦之旅' then
begin
  result:='有莘季女，为夏妃后。贵夫寿子，母字四海。';
  exit;
end;
if s='谦之巽' then
begin
  result:='季姬踌躇，待孟城隅。终日至暮，不见齐侯。';
  exit;
end;
if s='谦之兑' then
begin
  result:='邯郸反言，父兄生患。涉叔忧恨，卒死不还。';
  exit;
end;
if s='谦之涣' then
begin
  result:='逐鹿山巅，利去我西。维邪南北，所求不得。';
  exit;
end;
if s='谦之节' then
begin
  result:='穿鼻系株，为虎所拘。王母祝福，祸不成灾，突然自来。';
  exit;
end;
if s='谦之中孚' then
begin
  result:='虎豹熊罴，游戏山谷。君子仁贤，皆得所欲。';
  exit;
end;
if s='谦之小过' then
begin
  result:='梅李冬实，国多盗贼。扰乱并作，王不得制。';
  exit;
end;
if s='谦之既济' then
begin
  result:='望幸不到，文章未就。王子逐兔，犬踦不得。';
  exit;
end;
if s='谦之未济' then
begin
  result:='千柱百梁，终不倾僵。仁智辅圣，周宗宁康。';
  exit;
end;

end;

function yu(const s: string):string;
begin
if s='豫' then
begin
  result:='冰将泮散，鸣雁噰噰。丁男长女，可以会同。生育圣人。';
  exit;
end;
if s='豫之乾' then
begin
  result:='龙马上山，绝无水泉。喉焦唇干，口不能言。';
  exit;
end;
if s='豫之坤' then
begin
  result:='蔡侯朝楚，留连江滨。逾时历月，思其君后。';
  exit;
end;
if s='豫之屯' then
begin
  result:='文厄羑里，汤困夏台。仁圣不害，数困何忧。免于缧绁，为世雄侯。';
  exit;
end;
if s='豫之蒙' then
begin
  result:='典册法书，藏在兰台。虽遭乱溃，独不遇灾。';
  exit;
end;
if s='豫之需' then
begin
  result:='毡裘膻国，文礼不饬。跨马控弦，伐我都邑。';
  exit;
end;
if s='豫之讼' then
begin
  result:='星陨如雨，力弱无辅。强阴制阳，不得安土。';
  exit;
end;
if s='豫之师' then
begin
  result:='蝗嚼我稻，驱不我去。实穗无有，但见空藁。';
  exit;
end;
if s='豫之比' then
begin
  result:='虎饥欲食，为猬所伏。禹导龙门，避咎除患，元丑以安。';
  exit;
end;
if s='豫之小畜' then
begin
  result:='蝙蝠夜藏，不敢昼行。酒为酸浆，鲂臰鲍羹。';
  exit;
end;
if s='豫之履' then
begin
  result:='精华坠落，形体丑恶。龃龉挫顿，枯槁腐蠹。';
  exit;
end;
if s='豫之泰' then
begin
  result:='两足不获，难以远行。疾步不能，后旅失时。';
  exit;
end;
if s='豫之否' then
begin
  result:='令妻寿母，宜家无咎。君子之欢，得以长久。';
  exit;
end;
if s='豫之同人' then
begin
  result:='饥蚕作室，缗多乱缠，端不可得。';
  exit;
end;
if s='豫之大有' then
begin
  result:='子鉏执麟，春秋作经。元圣将终，尼父悲心。';
  exit;
end;
if s='豫之谦' then
begin
  result:='螟虫为贼，害我稼穑。尽禾殚麦，秋无所得。';
  exit;
end;
if s='豫之随' then
begin
  result:='忧在腹内，山崩为疾。祸起萧墙，竟制其国。';
  exit;
end;
if s='豫之蛊' then
begin
  result:='茹芝饵黄，饮食玉英。神与流通，长无忧凶。';
  exit;
end;
if s='豫之临' then
begin
  result:='一夫两心，歧刺不深。所为无功，求事不成。';
  exit;
end;
if s='豫之观' then
begin
  result:='十里望烟，涣散四分。形容灭亡，终不见君。';
  exit;
end;
if s='豫之噬嗑' then
begin
  result:='张弓控弩，经涉山道。虽有伏虎，谁敢害诸。';
  exit;
end;
if s='豫之贲' then
begin
  result:='泉闭泽竭，主母饥渴。君子困穷，乃徐有说。';
  exit;
end;
if s='豫之剥' then
begin
  result:='野鸢山鹊，弈棋六博。三枭四散，主人胜客。';
  exit;
end;
if s='豫之复' then
begin
  result:='羊惊马走，上下挥扰。鼓音不绝，顷公奔败。';
  exit;
end;
if s='豫之无妄' then
begin
  result:='黄帝神明，八子圣聪。俱受大福，天下康平。';
  exit;
end;
if s='豫之大畜' then
begin
  result:='轻车醊祖，猋风暴起。泛乱祭器，飞扬鼓舞。明神降佑，道无害寇。';
  exit;
end;
if s='豫之颐' then
begin
  result:='螣蛇乘龙，宋郑饥凶，民食草蓬。';
  exit;
end;
if s='豫之大过' then
begin
  result:='扬水潜凿，使石洁白。里素表朱，游戏皋沃。得君所欲，心志娱乐。';
  exit;
end;
if s='豫之坎' then
begin
  result:='西过虎庐，惊我前驱，虽忧不危。';
  exit;
end;
if s='豫之离' then
begin
  result:='衣成无袖，不知所穿。客指东西，未得便安。';
  exit;
end;
if s='豫之咸' then
begin
  result:='晨风文翰，随时就温。雌雄相和，不忧殆危。';
  exit;
end;
if s='豫之恒' then
begin
  result:='心多恨悔，出言为怪。枭鸣室北，声丑可恶，请谒不得。';
  exit;
end;
if s='豫之遁' then
begin
  result:='离女去夫，闵思苦忧。齐子无良，使我心愁。';
  exit;
end;
if s='豫之大壮' then
begin
  result:='过时不归，雌雄苦悲。徘徊外国，与叔分离。';
  exit;
end;
if s='豫之晋' then
begin
  result:='鹊巢柳树，鸠夺其处。任力薄德，天命不佑。';
  exit;
end;
if s='豫之明夷' then
begin
  result:='鹤盗我珠，逃于东都，鹄怒追求。郭氏之墟，不见踪迹，使我心忧。';
  exit;
end;
if s='豫之家人' then
begin
  result:='夫妇相背，和气弗处。阴阳俱否，庄姜无子。';
  exit;
end;
if s='豫之睽' then
begin
  result:='日走月步，趣不同舍。妻夫反目，主君失位。';
  exit;
end;
if s='豫之蹇' then
begin
  result:='雒阳嫁女，善逐人走。三寡失夫，妇妒无子。';
  exit;
end;
if s='豫之解' then
begin
  result:='周德既成，杼轴不倾。太宰东西，夏国康宁。';
  exit;
end;
if s='豫之损' then
begin
  result:='日中为市，交易资宝。各利所有，心悦以喜。';
  exit;
end;
if s='豫之益' then
begin
  result:='童妾独宿，长女未室，利无所得。';
  exit;
end;
if s='豫之夬' then
begin
  result:='忠言辅成，王政不倾。公刘兆基，文武绥之。';
  exit;
end;
if s='豫之姤' then
begin
  result:='牛骥同槽，郭氏以亡。国破为虚，主君奔逃。';
  exit;
end;
if s='豫之萃' then
begin
  result:='中原有菽，以待饔食。饮御诸友，所求大得';
  exit;
end;
if s='豫之升' then
begin
  result:='多虚少实，语不可覆。尊空无酒，飞言如雨。';
  exit;
end;
if s='豫之困' then
begin
  result:='青蝇集蕃，君子信谗。害贤伤忠，患生妇人。';
  exit;
end;
if s='豫之井' then
begin
  result:='履株覆舆，马惊伤车，步为我忧。';
  exit;
end;
if s='豫之革' then
begin
  result:='商风召寇，来呼外盗。间谍内应，与我争斗。殚已宝藏，主人不胜。';
  exit;
end;
if s='豫之鼎' then
begin
  result:='逸豫好游，不安其家。惑于少姬，久迷不来。';
  exit;
end;
if s='豫之震' then
begin
  result:='吾有骅骝，畜之以时。东家翁孺，来请我驹。价极可与，后无贱悔。';
  exit;
end;
if s='豫之艮' then
begin
  result:='厄穷上通，与尧相逢。登升大麓，国无凶人。';
  exit;
end;
if s='豫之渐' then
begin
  result:='众兔俱走，熊罴在后。踦不能进，失信寡处。';
  exit;
end;
if s='豫之归妹' then
begin
  result:='旁行不远，三思复返。心多畏恶，日中止舍。';
  exit;
end;
if s='豫之丰' then
begin
  result:='仓唐奉使，中山以孝。文侯悦喜，击子征召。';
  exit;
end;
if s='豫之旅' then
begin
  result:='文山蹲鸱，肥腯多脂。王孙获愿，载福巍巍。';
  exit;
end;
if s='豫之巽' then
begin
  result:='登阶上堂，见吾父兄。左酒右浆，与福相迎。';
  exit;
end;
if s='豫之兑' then
begin
  result:='秋蛇向穴，不失其节。夫人姜氏，自齐复入。';
  exit;
end;
if s='豫之涣' then
begin
  result:='忍丑少羞，无面有头。耗减寡虚，日以削消。';
  exit;
end;
if s='豫之节' then
begin
  result:='景星照堂，麟游凤翔。仁施大行，颂声大兴。';
  exit;
end;
if s='豫之中孚' then
begin
  result:='干旄旌旗，执帜在郊。虽有宝珠，无路致之';
  exit;
end;
if s='豫之小过' then
begin
  result:='李华再实，鸿卵降集。仁德以兴，荫国受福。';
  exit;
end;
if s='豫之既济' then
begin
  result:='白马赤乌，战于东都。天辅有德，败悔为忧。';
  exit;
end;
if s='豫之未济' then
begin
  result:='采薪得麟，大命陨颠。豪雄争名，天下四分。';
  exit;
end;


end;

function shui(const s: string):string;
begin
if s='随' then
begin
  result:='鸟鸣东西，迎其群侣。似有所属，不得自专，空返独还。';
  exit;
end;
if s='随之乾' then
begin
  result:='鼻目易处，不知香臭。君迷于事，失其宠位。';
  exit;
end;
if s='随之坤' then
begin
  result:='唐虞相辅，鸟兽喜舞。安乐无事，国家富有。';
  exit;
end;
if s='随之屯' then
begin
  result:='左辅右弼，金玉满堂。常盈不亡，富如敖仓。';
  exit;
end;
if s='随之蒙' then
begin
  result:='苍龙单独，与石相触，摧折两角。';
  exit;
end;
if s='随之需' then
begin
  result:='钓日厌部，善逐人走。来嫁无夫，不安其庐。';
  exit;
end;
if s='随之讼' then
begin
  result:='逐虎驱狼，避去不祥。凶恶北行，与喜相逢。';
  exit;
end;
if s='随之师' then
begin
  result:='赍贝赎狸，不听我辞。系于虎须，牵不得来。';
  exit;
end;
if s='随之比' then
begin
  result:='同载共舆，中道别去。丧我元夫，独与孤居。';
  exit;
end;
if s='随之小畜' then
begin
  result:='奋翅鼓翼，将之嘉国。愆期失时，反得所欲。';
  exit;
end;
if s='随之履' then
begin
  result:='目倾心惑，夏姬在侧。申公颠倒，巫臣乱国。';
  exit;
end;
if s='随之泰' then
begin
  result:='抟鸠弹鹊，逐兔山北。丸尽日暮，失获无得。';
  exit;
end;
if s='随之否' then
begin
  result:='鹿求其子，虎庐之里。唐伯李耳，贪不我许。';
  exit;
end;
if s='随之同人' then
begin
  result:='败鱼鲍室，臭不可息。上山履涂，归伤我足。';
  exit;
end;
if s='随之大有' then
begin
  result:='华灯百枝，消暗衰微。精光讫尽，奄如灰糜。';
  exit;
end;
if s='随之谦' then
begin
  result:='颜叔子夏，游遨仁宇。温良受福，不失其所。';
  exit;
end;
if s='随之豫' then
begin
  result:='梁柱坚固，子孙蕃盛。福喜盈积，终无祸悔。';
  exit;
end;
if s='随之蛊' then
begin
  result:='边鄙不耸，民狎于野。穑人成功，年岁大有。';
  exit;
end;
if s='随之临' then
begin
  result:='鼃池鸣呴，呼求水潦。云雨大会，流成河海。';
  exit;
end;
if s='随之观' then
begin
  result:='志合意同，姬姜相从。嘉耦在门，夫子悦喜。';
  exit;
end;
if s='随之噬嗑' then
begin
  result:='白马骝驳，更生不休。富有商人，利得如丘。';
  exit;
end;
if s='随之贲' then
begin
  result:='太姒夏禹，经启九道。各有攸处，民得安所。';
  exit;
end;
if s='随之剥' then
begin
  result:='甲戊己庚，随时转行。不失其心，乐且安宁。';
  exit;
end;
if s='随之复' then
begin
  result:='穆违百里，使孟厉武。将师袭战，败于殽右。';
  exit;
end;
if s='随之无妄' then
begin
  result:='茅茹本居，与类相投。愿慕群旅，不离其巢。';
  exit;
end;
if s='随之大畜' then
begin
  result:='伯仲叔季，日暮寝寐。坐卧失明，丧其贝囊。';
  exit;
end;
if s='随之颐' then
begin
  result:='亡羊补牢，毋损于忧。骍驷奔走，鹄盗我鱼。';
  exit;
end;
if s='随之大过' then
begin
  result:='雀目燕颡，畏昏无光。思我狡童，不见子充。';
  exit;
end;
if s='随之坎' then
begin
  result:='入暗出明，动作有光。运转休息，常乐允康。';
  exit;
end;
if s='随之离' then
begin
  result:='不胜私情，以利自婴。北室出孤，毁其良家。';
  exit;
end;
if s='随之咸' then
begin
  result:='称幸上灵，媚悦于神。受福重重，子孙蕃功。';
  exit;
end;
if s='随之恒' then
begin
  result:='齐姜叔子，天文在手。实沈参墟，封为唐侯。';
  exit;
end;
if s='随之遁' then
begin
  result:='遨游无患，出入安全。长受其欢，君子万年。';
  exit;
end;
if s='随之大壮' then
begin
  result:='被服文德，升入大麓。四门雍肃，登受大福。';
  exit;
end;
if s='随之晋' then
begin
  result:='负金怀玉，南归嘉国。蜂虿不螫，利入我室。';
  exit;
end;
if s='随之明夷' then
begin
  result:='日在阜颠，向昧为昏。小人成群，君子伤伦。';
  exit;
end;
if s='随之家人' then
begin
  result:='水父火母，先来鸣呴。泽皋之士，从高而处。';
  exit;
end;
if s='随之睽' then
begin
  result:='东邻少女，为王长妇。柔顺利贞，宜夫寿子。';
  exit;
end;
if s='随之蹇' then
begin
  result:='戴盆望天，不见星辰。顾小失大，福逃于外。';
  exit;
end;
if s='随之解' then
begin
  result:='王乔无病，狗头不痛。亡跛失履，乏我徒从。';
  exit;
end;
if s='随之损' then
begin
  result:='使燕筑室，身无庇宿。家不容车，后我衣服。';
  exit;
end;
if s='随之益' then
begin
  result:='威权分离，乌夜徘徊。争蔽月光，大人诛伤。';
  exit;
end;
if s='随之夬' then
begin
  result:='辩变黑白，巧言乱国。大人失福，君子迷惑。';
  exit;
end;
if s='随之姤' then
begin
  result:='衣锯甲铠，敝筐为具。大人不顾，少妇不取。弃捐于道。';
  exit;
end;
if s='随之萃' then
begin
  result:='燕雀衔茅，以生孚乳。兄弟六人，姣好孝悌。得心欢欣，和悦相乐。';
  exit;
end;
if s='随之升' then
begin
  result:='登几上舆，驾驷南游。合从散横，燕齐以强。';
  exit;
end;
if s='随之困' then
begin
  result:='黩黩许许，仇偶相得。冰入炭室，消亡不息。';
  exit;
end;
if s='随之井' then
begin
  result:='鸱鸮破斧。邦人危殆。赖其忠德，转祸为福。倾亡复立。';
  exit;
end;
if s='随之革' then
begin
  result:='载金贩狗，利弃我走。藏匿渊底，悔折为咎。';
  exit;
end;
if s='随之鼎' then
begin
  result:='渊坑复平，宇室安宁。忧患解除，赖福长生。';
  exit;
end;
if s='随之震' then
begin
  result:='骊姬谗喜，与二嬖谋。谮我恭子，贼害忠孝。申生以缢，重耳奔逃。';
  exit;
end;
if s='随之艮' then
begin
  result:='刲羊不当，血少无羹。女执空筐，不得采桑。';
  exit;
end;
if s='随之渐' then
begin
  result:='牧羊稻园，闻虎喧讙。畏惧悚息，终无祸患。';
  exit;
end;
if s='随之归妹' then
begin
  result:='明德隐伏，麟凤远匿。周室倾侧，不知所息。';
  exit;
end;
if s='随之丰' then
begin
  result:='邻不我愿，而求玉女。身多秃癞，谁肯媚者。';
  exit;
end;
if s='随之旅' then
begin
  result:='初虽无舆，后得载车。赖幸逢福，不离兵革。';
  exit;
end;
if s='随之巽' then
begin
  result:='水坏我里，东流为海。龟凫欢嚣，不睹王母。';
  exit;
end;
if s='随之兑' then
begin
  result:='两心不同，或欲西东。明论终始，莫适所从。';
  exit;
end;
if s='随之涣' then
begin
  result:='天帝悬车，废礼不朝。攘服不制，失其宠家。';
  exit;
end;
if s='随之节' then
begin
  result:='交川合浦，远湿难处。水土不同，思吾皇祖。';
  exit;
end;
if s='随之中孚' then
begin
  result:='勾践之危，栖于会稽。太宰机言，越国复存。';
  exit;
end;
if s='随之小过' then
begin
  result:='慈乌鸤鸠，执一无尤。寝门内治，君子悦喜。';
  exit;
end;
if s='随之既济' then
begin
  result:='富年早寡，独立孤居，鸡鸣犬吠。无敢问诸，我生不遇，独罹寒苦。';
  exit;
end;
if s='随之未济' then
begin
  result:='江海变服，淫湎无测。高位颠崩，宠禄反复。';
  exit;
end;

end;

function guo(const s: string):string;
begin
if s='蛊' then
begin
  result:='鲂生江淮，一转为百。周流四海，无有难恶。';
  exit;
end;
if s='蛊之乾' then
begin
  result:='首泽与目，载受福庆。我有好爵，与汝相迎。';
  exit;
end;
if s='蛊之坤' then
begin
  result:='，岁暮偏蔽。宠名捐弃，君衰在位。';
  exit;
end;
if s='蛊之屯' then
begin
  result:='折若蔽日，屏遮王目。司马无良，平子没伤。';
  exit;
end;
if s='蛊之蒙' then
begin
  result:='家在海隅，绕旋深流。王孙单行，无妄以趋。';
  exit;
end;
if s='蛊之需' then
begin
  result:='执义秉德，不危不殆。延颈盘桓，安其室垣。屯耗未得，终无大恤。';
  exit;
end;
if s='蛊之讼' then
begin
  result:='长舌乱家，大斧破车。阴阳不得，姬姜衰忧。';
  exit;
end;
if s='蛊之师' then
begin
  result:='二人共路，东趋西步。千里之外，不相知处。';
  exit;
end;
if s='蛊之比' then
begin
  result:='视暗不明，云蔽日光。不见子都，郑人心伤。';
  exit;
end;
if s='蛊之小畜' then
begin
  result:='初忧后喜，与福为市。八佾列陈，饮御嘉友。';
  exit;
end;
if s='蛊之履' then
begin
  result:='童妾独宿，长女未室，利无所得。';
  exit;
end;
if s='蛊之泰' then
begin
  result:='玄黄四塞，阴雌伏谋。呼我墙屋，为巫所识。';
  exit;
end;
if s='蛊之否' then
begin
  result:='中岁摧颓，常恐衰微。老复赖庆，五羖为相。';
  exit;
end;
if s='蛊之同人' then
begin
  result:='伯氏杀牛，行悖天时。亳社夷烧，朝歌丘墟。';
  exit;
end;
if s='蛊之大有' then
begin
  result:='日短夜长，禄命不光。早离父母，免见忧伤。';
  exit;
end;
if s='蛊之谦' then
begin
  result:='采唐沫乡，徼期桑中。失期不会，忧思忡忡。';
  exit;
end;
if s='蛊之豫' then
begin
  result:='昧视无光，夜不见明。冥抵空床，季叶逃亡。';
  exit;
end;
if s='蛊之随' then
begin
  result:='举趾振翼，南至嘉国。见我伯姊，与惠相得。';
  exit;
end;
if s='蛊之临' then
begin
  result:='则天顺时，周流其墟。与乐并居，无有咎忧。';
  exit;
end;
if s='蛊之观' then
begin
  result:='虿室蜂户，螫我手足。不可进取，为吾害咎。';
  exit;
end;
if s='蛊之噬嗑' then
begin
  result:='公孙驾骊，载游东齐。延陵悦产，遗季纻衣。';
  exit;
end;
if s='蛊之贲' then
begin
  result:='转作骊山，大失人心。刘季发怒，禽灭子婴。';
  exit;
end;
if s='蛊之剥' then
begin
  result:='羊肠九萦，相推稍前。止须王孙，乃能上天。';
  exit;
end;
if s='蛊之复' then
begin
  result:='螮蝀充侧，佞人倾惑。女谒横行，正道壅塞。';
  exit;
end;
if s='蛊之无妄' then
begin
  result:='福禄不遂，家多怪祟。麋鹿悲鸣，思其大雄。';
  exit;
end;
if s='蛊之大畜' then
begin
  result:='云雷因积，大雨重迭。久不见日，使我心悒。';
  exit;
end;
if s='蛊之颐' then
begin
  result:='三河俱合，水怒踊跃。坏我王屋，民困于食。';
  exit;
end;
if s='蛊之大过' then
begin
  result:='冒雨夜行，早遍都城。更相覆倾，终无所成。';
  exit;
end;
if s='蛊之坎' then
begin
  result:='褒后生蛇，经老盲微。侧跌哀耄，酒滅黃离。';
  exit;
end;
if s='蛊之离' then
begin
  result:='鸿雁南飞，随阳休息。转逐天和，千里不衰。';
  exit;
end;
if s='蛊之咸' then
begin
  result:='后时失利，不得所欲。';
  exit;
end;
if s='蛊之恒' then
begin
  result:='心多恨悔，出言为怪。枭鸣室北，声丑可恶，请谒不得。';
  exit;
end;
if s='蛊之遁' then
begin
  result:='驷马过隙，时难再得。尼父孔圣，系而不食。';
  exit;
end;
if s='蛊之大壮' then
begin
  result:='阴变为阳，女化为男。治道得通，君臣相承。';
  exit;
end;
if s='蛊之晋' then
begin
  result:='昆仑源口，流行不止。龙门砥柱，民不安处。母归扶子，黄麑悦喜。';
  exit;
end;
if s='蛊之明夷' then
begin
  result:='葛藟蒙棘，华不得实。谗佞乱政，使恩壅塞。';
  exit;
end;
if s='蛊之家人' then
begin
  result:='公无长驱，太王骏马。非其所当，伤折为患。';
  exit;
end;
if s='蛊之睽' then
begin
  result:='大仓充盈，庶民蕃盛，年岁熟荣。';
  exit;
end;
if s='蛊之蹇' then
begin
  result:='执蕡照牺，为风所吹。火灭无光，不见玄黄。';
  exit;
end;
if s='蛊之解' then
begin
  result:='鸟反故巢，归其室家。心平意正，与叔相和。';
  exit;
end;
if s='蛊之损' then
begin
  result:='弩弛弓藏，良犬不行。内无怨女，征夫在堂。';
  exit;
end;
if s='蛊之益' then
begin
  result:='特牺孔博，日新其德。文君燎猎，姜氏受福。';
  exit;
end;
if s='蛊之夬' then
begin
  result:='季秋孟冬，寒露霜降。大阴在庭，品物不生。鸡犬夜鸣，家扰数惊。';
  exit;
end;
if s='蛊之姤' then
begin
  result:='心多恨悔，出门见怪。有蛇三足，丑声可恶。嫫母为媒，请求不得。';
  exit;
end;
if s='蛊之萃' then
begin
  result:='虎豹争强，道闭不通。小人讙讼，贪夫受空。';
  exit;
end;
if s='蛊之升' then
begin
  result:='鸡方啄粟，为狐所逐。走不得食，惶怖惕息。';
  exit;
end;
if s='蛊之困' then
begin
  result:='陈妫敬仲，兆兴齐姜。乃适营丘，八世大昌。';
  exit;
end;
if s='蛊之井' then
begin
  result:='昊天白日，照临我国。万民康宁，咸赖嘉福。';
  exit;
end;
if s='蛊之革' then
begin
  result:='云梦大薮，索有所在。虞人共职，骊驹悦喜。';
  exit;
end;
if s='蛊之鼎' then
begin
  result:='獐鹿雉兔，群聚东国。卢黄白脊，俱往追逐。九齚十得，主君有喜。';
  exit;
end;
if s='蛊之震' then
begin
  result:='德惠孔明，主君复章，保其室堂。';
  exit;
end;
if s='蛊之艮' then
begin
  result:='天之所坏，不可强支。众口嘈嘈，虽贵必危。';
  exit;
end;
if s='蛊之渐' then
begin
  result:='天之奥隅，尧舜所居。可以全身，保我邦家。';
  exit;
end;
if s='蛊之归妹' then
begin
  result:='下泉苞稂，十年无王。郇伯遇时，忧念周京。';
  exit;
end;
if s='蛊之丰' then
begin
  result:='江淮海隅，众利聚居。可以遨游，卒岁无忧。';
  exit;
end;
if s='蛊之旅' then
begin
  result:='南山大木，文身其目。出入制命，东里宣政。主尊君安，郑国无患。';
  exit;
end;
if s='蛊之巽' then
begin
  result:='重译贡芝，来除我忧。喜乐俱居，同其福休。';
  exit;
end;
if s='蛊之兑' then
begin
  result:='南山高冈，麟凤室堂。含和履中，国无灾殃。';
  exit;
end;
if s='蛊之涣' then
begin
  result:='紫芝朱草，生长和气。公尸侑食，福禄来下。';
  exit;
end;
if s='蛊之节' then
begin
  result:='宫成室就，进乐相舞。英俊在堂，福禄光明。';
  exit;
end;
if s='蛊之中孚' then
begin
  result:='商人子孙，资无所有。贪狼逐狐，留连都市。还辕内乡，嘉喜何咎。';
  exit;
end;
if s='蛊之小过' then
begin
  result:='执贽入朝，献其狐裘。元戎变安，沙漠以欢。';
  exit;
end;
if s='蛊之既济' then
begin
  result:='涌泉滑滑，南流不绝。洿为淮海，败坏邑里，家无所处。';
  exit;
end;
if s='蛊之未济' then
begin
  result:='固阴冱寒，常冰不温。凌人惰怠，大雹为灾。';
  exit;
end;


end;

function lin(const s: string):string;
begin
if s='临' then
begin
  result:='弱水之西，有西王母。生不知老，与天相保。行者危殆，利居善喜。';
  exit;
end;
if s='临之乾' then
begin
  result:='黄獹生子，以戌为母。晋师在郊，虞公出走。';
  exit;
end;
if s='临之坤' then
begin
  result:='仓唐奉使，中山以孝。文侯悦嘉，击子征召。';
  exit;
end;
if s='临之屯' then
begin
  result:='机关不便，不能出言。精诚不通，为人所冤。';
  exit;
end;
if s='临之蒙' then
begin
  result:='白茅缩酒，灵巫拜祷。神嗜饮食，使君寿考。';
  exit;
end;
if s='临之需' then
begin
  result:='重瞳四乳，耳聪目明。普为仁表，圣作元辅。';
  exit;
end;
if s='临之讼' then
begin
  result:='水长无船，破城坏堤。大夫从役，困于泥涂。一朝亡殒，不见少妻。';
  exit;
end;
if s='临之师' then
begin
  result:='二人俱行，各遗其囊。鸿鹄失珠，无以为明。';
  exit;
end;
if s='临之比' then
begin
  result:='随时转行，不失其常。咸乐厥类，身无咎殃。';
  exit;
end;
if s='临之小畜' then
begin
  result:='蔡女荡舟，为国患忧。褒后在侧，屏蔽王目，搔扰六国。';
  exit;
end;
if s='临之履' then
begin
  result:='驾龙骑虎，周遍天下。为神人使，西见王母，不忧危殆。';
  exit;
end;
if s='临之泰' then
begin
  result:='员怨之吴，画策阖闾。鞭平服荆，除大咎殃。威振敌国，还受上卿。';
  exit;
end;
if s='临之否' then
begin
  result:='唐邑之墟，晋人以居。虞叔受福，实沈是国，世载其乐。';
  exit;
end;
if s='临之同人' then
begin
  result:='管鲍相知，至德不离。三言相桓，齐国以安。';
  exit;
end;
if s='临之大有' then
begin
  result:='三十无室，长女独宿。心劳未得，忧在胸臆。';
  exit;
end;
if s='临之谦' then
begin
  result:='散涣水长，风吹我乡。火灭无光，隳败桓公。';
  exit;
end;
if s='临之豫' then
begin
  result:='飞蜎蠕动，各有配偶。小大相保，咸得其所。';
  exit;
end;
if s='临之随' then
begin
  result:='安乐几筵，未出王门。';
  exit;
end;
if s='临之蛊' then
begin
  result:='火生月窟，下土恩塞，抵乱我国。';
  exit;
end;
if s='临之观' then
begin
  result:='长生无极，子孙千亿。柏柱载梁，坚国不倾。';
  exit;
end;
if s='临之噬嗑' then
begin
  result:='钦敬昊天，历象星辰。宣授民时，阴阳和调。';
  exit;
end;
if s='临之贲' then
begin
  result:='三河俱合，水怒踊跃。坏我王屋，民困于食。';
  exit;
end;
if s='临之剥' then
begin
  result:='寿如松乔，与日月俱。常安康乐，不罹祸忧。';
  exit;
end;
if s='临之复' then
begin
  result:='天之所予，福禄常在，不忧危殆。';
  exit;
end;
if s='临之无妄' then
begin
  result:='受谶六符，招摇室虚。虽跌无忧，保我命财。';
  exit;
end;
if s='临之大畜' then
begin
  result:='赍金贾车，失道后时，劳罢为忧。';
  exit;
end;
if s='临之颐' then
begin
  result:='华首山头，仙道所游。利以居止，长无咎忧。';
  exit;
end;
if s='临之大过' then
begin
  result:='采唐沫乡，要期桑中。失信不会，忧思约带。';
  exit;
end;
if s='临之坎' then
begin
  result:='人面鬼口，长舌为斧。斲破瑚琏，殷商绝后。';
  exit;
end;
if s='临之离' then
begin
  result:='临溪桥疚，虽恐不危，乐以笑歌。';
  exit;
end;
if s='临之咸' then
begin
  result:='洋洋沸溢，水泉为害，使我无赖。';
  exit;
end;
if s='临之恒' then
begin
  result:='蝗螟为贼，害我稼穑。秋饥于年，农夫鲜食。';
  exit;
end;
if s='临之遁' then
begin
  result:='八百诸侯，不期同时。慕西文德，兴我宗族，家门雍睦。';
  exit;
end;
if s='临之大壮' then
begin
  result:='长男少女，相向笑语。来欢致福，和悦乐喜。';
  exit;
end;
if s='临之晋' then
begin
  result:='平国不君，夏氏作乱。乌号窃发，灵公殒命。';
  exit;
end;
if s='临之明夷' then
begin
  result:='春多膏泽，夏润优渥。稼穑成熟，亩获百斛。';
  exit;
end;
if s='临之家人' then
begin
  result:='客宿卧寒，席蓐不安。行危为害，留止得欢。';
  exit;
end;
if s='临之睽' then
begin
  result:='乘桴浮海，虽惧不殆。母载其子，终焉何咎。';
  exit;
end;
if s='临之蹇' then
begin
  result:='手拙不便，不能伐檀。车无轴辕，行者苦难。';
  exit;
end;
if s='临之解' then
begin
  result:='唐虞相辅，鸟兽率舞。民安无事，国家富有';
  exit;
end;
if s='临之损' then
begin
  result:='秋蛇向穴，不失其节。夫人姜氏，自齐复入。';
  exit;
end;
if s='临之益' then
begin
  result:='病笃难医，和不能治。命终永讫，下即蒿庐。';
  exit;
end;
if s='临之夬' then
begin
  result:='青蛉如云，城邑闭门。国君卫守，民困于患。';
  exit;
end;
if s='临之姤' then
begin
  result:='牙蘖生齿，室堂启户。幽人利贞，鼓翼起舞。';
  exit;
end;
if s='临之萃' then
begin
  result:='凫游江海，没行千里。以为死亡，复见空桑，长生乐乡。';
  exit;
end;
if s='临之升' then
begin
  result:='黄帝出游，驾龙乘马。东上泰山，南游齐鲁，邦国咸喜。';
  exit;
end;
if s='临之困' then
begin
  result:='履危不止，与鬼相视。惊恐失气，如骑虎尾。';
  exit;
end;
if s='临之井' then
begin
  result:='秋南春北，不失消息。涉和履中，时无隐匿。';
  exit;
end;
if s='临之革' then
begin
  result:='龙门砥柱，通利水道。百川顺流，民安其居。';
  exit;
end;
if s='临之鼎' then
begin
  result:='千岁庙堂，栋桡倾僵。天厌周德，失其宠光。';
  exit;
end;
if s='临之震' then
begin
  result:='折若蔽目，不见稚叔。三足孤鸟，远离室家。';
  exit;
end;
if s='临之艮' then
begin
  result:='望叔山北，陵隔我目。不见所得，使我忧惑。';
  exit;
end;
if s='临之渐' then
begin
  result:='匏瓠之恩，一亩千室。万国都邑，北门有福。';
  exit;
end;
if s='临之归妹' then
begin
  result:='域域牧牧，忧祸相伴。隔以岩山，室家分散。';
  exit;
end;
if s='临之丰' then
begin
  result:='骐骥騄耳，游食萍草。逍遥石门，循山上下，不失其所。';
  exit;
end;
if s='临之旅' then
begin
  result:='天所祚昌，文以为良。笃生武王，姬受其福。';
  exit;
end;
if s='临之巽' then
begin
  result:='羊肠九萦，相推稍前。止须王孙，乃能上天。';
  exit;
end;
if s='临之兑' then
begin
  result:='贫鬼守门，日破我盆。孤牝不驹，鸡不成雏。';
  exit;
end;
if s='临之涣' then
begin
  result:='饱食从容，入门上堂。不失其常，家无咎殃。';
  exit;
end;
if s='临之节' then
begin
  result:='阴淫不止，白马为海。皋泽之子，就高而处。';
  exit;
end;
if s='临之中孚' then
begin
  result:='执戈俱立，以备暴急。千人守门，因以益卑，终安何畏。';
  exit;
end;
if s='临之小过' then
begin
  result:='夹河为婚，水长无船。槌心失望，不见所欢。';
  exit;
end;
if s='临之既济' then
begin
  result:='阴阳变化，各得其宜。上下顺通，奏为肤功。';
  exit;
end;
if s='临之未济' then
begin
  result:='任劣德薄，失其臣妾。田不见禽，犬无所得。';
  exit;
end;

end;

function guan(const s: string):string;
begin
if s='观' then
begin
  result:='历山之下，虞舜所处。躬耕至孝，名闻四海。为尧所荐，缵位天子。';
  exit;
end;
if s='观之乾' then
begin
  result:='飞蜎蠕动，各有所配。欢悦相迎，咸得其处。';
  exit;
end;
if s='观之坤' then
begin
  result:='继祀宗邑，追明成康。光照万国，享世久长。';
  exit;
end;
if s='观之屯' then
begin
  result:='秋冬探巢，不得鹊雏。衔指北去，媿我少姬。';
  exit;
end;
if s='观之蒙' then
begin
  result:='僮妾独宿，长女未室，利无所得。';
  exit;
end;
if s='观之需' then
begin
  result:='鸿鱼逆流，至人潜处。蓬蒿代柱，大屋颠仆。';
  exit;
end;
if s='观之讼' then
begin
  result:='日闇不明，谗夫在堂。右臂疾痹，君失其光。';
  exit;
end;
if s='观之师' then
begin
  result:='王孙季子，相与孝友。明允笃诚，升擢荐举，为国干辅。';
  exit;
end;
if s='观之比' then
begin
  result:='麟趾龙身，日驭三千。南上苍梧，与福为婚。道里夷易，安全无患。';
  exit;
end;
if s='观之小畜' then
begin
  result:='三子成驹，破其坚车。轮载空舆，后时失期。';
  exit;
end;
if s='观之履' then
begin
  result:='逐祸除患，道德神仙。遏恶万里，常欢以安。';
  exit;
end;
if s='观之泰' then
begin
  result:='黄池之盟，吴晋争强。勾践为患，夷国不安。';
  exit;
end;
if s='观之否' then
begin
  result:='青牛白咽，招我俱田。历山之下，可以多耕。岁藏时节，人民安宁。';
  exit;
end;
if s='观之同人' then
begin
  result:='有头无目，不见菽粟。消耗为疾，三年不复。';
  exit;
end;
if s='观之大有' then
begin
  result:='山没丘浮，陆为水鱼。燕雀无巢，民无室庐。';
  exit;
end;
if s='观之谦' then
begin
  result:='高冈凤凰，朝阳梧桐。雍雍喈喈，菶菶萋萋。陈辞不多，以告孔嘉。';
  exit;
end;
if s='观之豫' then
begin
  result:='鳏寡独宿，忧动胸臆，莫与笑食。';
  exit;
end;
if s='观之随' then
begin
  result:='马蹄踬车，妇恶破家。青蝇污白，恭子离居。';
  exit;
end;
if s='观之蛊' then
begin
  result:='长女三嫁，进退无羞。逐狐作妖，行者离忧。';
  exit;
end;
if s='观之临' then
begin
  result:='人无定法，缓行长奸。地雄走归，阳不制阴。男失其家。';
  exit;
end;
if s='观之噬嗑' then
begin
  result:='茹芝饵黄，饮食玉英。与神流通，长无忧凶。';
  exit;
end;
if s='观之贲' then
begin
  result:='东行无门，西出华山。道塞畏难，游子为患。';
  exit;
end;
if s='观之剥' then
begin
  result:='寿如松乔，与日月俱。常安康乐，不罹祸忧。';
  exit;
end;
if s='观之复' then
begin
  result:='探鷇得螽，所愿不喜。道值小人，君子咎蹇。';
  exit;
end;
if s='观之无妄' then
begin
  result:='蝠 生子，深目黑丑。虽饰相就，众人莫取。';
  exit;
end;
if s='观之大畜' then
begin
  result:='喜怒不时，霜雪为灾。稼穑无功，后稷饥寒。';
  exit;
end;
if s='观之颐' then
begin
  result:='乌升鹊举，照临东海。尨降庭坚，为陶叔后。封圻蓼六，履禄绥厚。';
  exit;
end;
if s='观之大过' then
begin
  result:='黄离白日，照我四国。元首昭明，民赖其福。';
  exit;
end;
if s='观之坎' then
begin
  result:='黍稷醕醴，敬奉山宗。神嗜饮食，甘雨嘉降。独蒙福力，时灾不至。';
  exit;
end;
if s='观之离' then
begin
  result:='福过我里，入门笑喜，与吾利市。';
  exit;
end;
if s='观之咸' then
begin
  result:='昼卧里门，悚惕不安。目不得阖，鬼搔我足。';
  exit;
end;
if s='观之恒' then
begin
  result:='春草荣华，长女宜夫。受福多年，世有封禄。';
  exit;
end;
if s='观之遁' then
begin
  result:='雍门内崩，贼贤伤仁。暴乱狂悖，简公失位。';
  exit;
end;
if s='观之大壮' then
begin
  result:='心志无良，昌披妄行。触壁抵墙，不见户房。';
  exit;
end;
if s='观之晋' then
begin
  result:='胶车木马，不利远贾。出门为患，安止得全。';
  exit;
end;
if s='观之明夷' then
begin
  result:='家在海隅，桡短流深。企立望宋，无木以趋。';
  exit;
end;
if s='观之家人' then
begin
  result:='冬叶枯槁，当风于道。蒙被尘埃，左右劳苦。';
  exit;
end;
if s='观之睽' then
begin
  result:='过时不行，妄逐王公。老女失度，不安其居。';
  exit;
end;
if s='观之蹇' then
begin
  result:='履泥污足，名困身辱。两仇相当，自为痛疾。';
  exit;
end;
if s='观之解' then
begin
  result:='精华堕落，形体丑恶。龃龉挫顿，枯槁腐蠧。';
  exit;
end;
if s='观之损' then
begin
  result:='长生无极，子孙千亿。松柏为梁，坚固不倾。';
  exit;
end;
if s='观之益' then
begin
  result:='去辛就蓼，毒愈酷毒。避穽入坑，忧患日生。';
  exit;
end;
if s='观之夬' then
begin
  result:='行尧钦德，养贤致福。众英积聚，国无寇贼。';
  exit;
end;
if s='观之姤' then
begin
  result:='狗逐兔走，俱入谷口。与虎逢晤，迫不得去。';
  exit;
end;
if s='观之萃' then
begin
  result:='望尚阿衡，太宰周公。藩屏汤武，立为侯王。';
  exit;
end;
if s='观之升' then
begin
  result:='清人高子，久屯外野。逍遥不归，思我慈母。';
  exit;
end;
if s='观之困' then
begin
  result:='三虫作蛊，削迹无与。胜母盗泉，居不安处。';
  exit;
end;
if s='观之井' then
begin
  result:='獹牝龙身，进无所前。三日五夜，得其所欢。';
  exit;
end;
if s='观之革' then
begin
  result:='黄里绿衣，君服不宜。淫湎毁常，失其宠光。';
  exit;
end;
if s='观之鼎' then
begin
  result:='天所顾佑，祸灾不到，安吉无惧。';
  exit;
end;
if s='观之震' then
begin
  result:='盘纡九回，行道留难。止须于丘，乃睹所欢。';
  exit;
end;
if s='观之艮' then
begin
  result:='暴虐失国，为下所逐。北奔阴胡，主君旄头。';
  exit;
end;
if s='观之渐' then
begin
  result:='御骍从龙，至霍华东。与禹相逢，送致子邦。';
  exit;
end;
if s='观之归妹' then
begin
  result:='铜人铁距，雨露劳苦。终日卒岁，无有休息。';
  exit;
end;
if s='观之丰' then
begin
  result:='大人失宜，盈满复亏。长成之木，盛者复衰。';
  exit;
end;
if s='观之旅' then
begin
  result:='梅李冬实，国多盗贼。乱扰并作，王不能制。';
  exit;
end;
if s='观之巽' then
begin
  result:='泽枯无鱼，山童无株。长女嫉妒，使身空虚。';
  exit;
end;
if s='观之兑' then
begin
  result:='天门冬虚，既尽为灾。膉（月癸）黯苍，秦伯受殃。';
  exit;
end;
if s='观之涣' then
begin
  result:='褰衣涉河，水深渍罢。幸赖舟子，济脱无他。';
  exit;
end;
if s='观之节' then
begin
  result:='推车上山，高仰重难。终日至暮，不见阜巅。';
  exit;
end;
if s='观之中孚' then
begin
  result:='鼎炀其耳，热不可举。大路壅塞，旅人心苦。';
  exit;
end;
if s='观之小过' then
begin
  result:='四乱不安，东西为患。退身止足，无出邦域。乃得完全，赖其生福。';
  exit;
end;
if s='观之既济' then
begin
  result:='班马还师，以息劳罢。役夫嘉喜，入户见妻。';
  exit;
end;
if s='观之未济' then
begin
  result:='积德不怠，遇主逢时。载喜渭阳，身受荣光。';
  exit;
end;

end;

function shike(const s: string):string;
begin
if s='噬嗑' then
begin
  result:='麒麟凤凰，善政得祥。阴阳和调，国无灾殃。';
  exit;
end;
if s='噬嗑之乾' then
begin
  result:='北风相牵，提笑语言。伯歌叔舞，燕乐以喜。';
  exit;
end;
if s='噬嗑之坤' then
begin
  result:='甲戊己庚，随时运行。不失常节，咸逢出生。各乐其类，达性任情。';
  exit;
end;
if s='噬嗑之屯' then
begin
  result:='破亡之虚，神祇哀忧。进往无光，留止有庆。';
  exit;
end;
if s='噬嗑之蒙' then
begin
  result:='注斯膏泽，扞卫百毒。防以江南，虺不能螫。';
  exit;
end;
if s='噬嗑之需' then
begin
  result:='日月相望，光明盛昌。三圣茂功，仁德大隆。';
  exit;
end;
if s='噬嗑之讼' then
begin
  result:='大蛇巨鱼，战于国郊。上下隔塞，卫侯庐漕。';
  exit;
end;
if s='噬嗑之师' then
begin
  result:='龙入天关，经历九山。登高上下，道里险难。日晏不食，绝无甘酸。';
  exit;
end;
if s='噬嗑之比' then
begin
  result:='沙漠北塞，绝无水泉。君子征凶，役夫力殚。';
  exit;
end;
if s='噬嗑之小畜' then
begin
  result:='关折门启，衿带解堕。福与善生，忧不为祸。';
  exit;
end;
if s='噬嗑之履' then
begin
  result:='狼虎所嗥，患害必遭。不利有为，宜以遁逃。';
  exit;
end;
if s='噬嗑之泰' then
begin
  result:='金精耀怒，带剑过午。两虎相距，弓弩满野，虽忧无咎。';
  exit;
end;
if s='噬嗑之否' then
begin
  result:='朽根枯树，华叶落去。卒逢火焱，相随偃仆。';
  exit;
end;
if s='噬嗑之同人' then
begin
  result:='入暗出明，动作有光。转运休息，常乐永康。';
  exit;
end;
if s='噬嗑之大有' then
begin
  result:='国多忌讳，大人恒畏。结口无患，可以长存。';
  exit;
end;
if s='噬嗑之谦' then
begin
  result:='天地淳厚，六合光明。阴阳顺序，厥功以成。';
  exit;
end;
if s='噬嗑之豫' then
begin
  result:='裸裎逐狐，为人观笑。牝鸡司晨，主作乱妖。';
  exit;
end;
if s='噬嗑之随' then
begin
  result:='阴失阳复，桀失其室，相餧不食。';
  exit;
end;
if s='噬嗑之蛊' then
begin
  result:='飞蜎蠕动，各有配偶。大小相保，咸得其所。';
  exit;
end;
if s='噬嗑之临' then
begin
  result:='鬼守我庐，欲呼伯去。曾孙寿考，司命不许，与生相保。';
  exit;
end;
if s='噬嗑之观' then
begin
  result:='祸走患伏，喜为我福。凶恶消亡，菑害不作。';
  exit;
end;
if s='噬嗑之贲' then
begin
  result:='智不别扬，张狂妄行。蹈渊仆颠，伤杀伯身。';
  exit;
end;
if s='噬嗑之剥' then
begin
  result:='凶忧灾殃，日益明章。祸不可救，三郄夷伤。';
  exit;
end;
if s='噬嗑之复' then
begin
  result:='长尾蜲蛇，画地为河。深不可涉，绝无以北，怅然嘳息。';
  exit;
end;
if s='噬嗑之无妄' then
begin
  result:='爱我婴女，牵引不与。冀幸高贵，反得贱下。';
  exit;
end;
if s='噬嗑之大畜' then
begin
  result:='凫游江湖，甘乐其饵。既不近人，虽惊不骇。';
  exit;
end;
if s='噬嗑之颐' then
begin
  result:='明灭光息，不能复食。精魄既丧，以夜为室。';
  exit;
end;
if s='噬嗑之大过' then
begin
  result:='奇适无偶，习静独处。所愿不从，心思劳苦。';
  exit;
end;
if s='噬嗑之坎' then
begin
  result:='葛藟蒙棘，华不得实。谗佞乱政，使忠壅塞。';
  exit;
end;
if s='噬嗑之离' then
begin
  result:='鹊笑鸠舞，来遗我酒。大喜在后，授我龟纽。龙喜张口，超拜福祉。';
  exit;
end;
if s='噬嗑之咸' then
begin
  result:='摇尾逐灾，云孽辟除。洿泥生粱，下田为主。';
  exit;
end;
if s='噬嗑之恒' then
begin
  result:='白鹤衔珠，夜食为明。膏润优渥，国岁年丰。';
  exit;
end;
if s='噬嗑之遁' then
begin
  result:='内执柔德，止讼以嘿。守邑赖德，祸灾不作。';
  exit;
end;
if s='噬嗑之大壮' then
begin
  result:='犬吠惊骇，公拔戈起。玄冥厌火，消散瓦解。';
  exit;
end;
if s='噬嗑之晋' then
begin
  result:='公悦妪喜，子孙俱在。荣誉日登，福禄来处。';
  exit;
end;
if s='噬嗑之明夷' then
begin
  result:='鸟鸣哺鷇，长欲飞去。循枝上下，适与风遇。颠陨树根，命不可救。';
  exit;
end;
if s='噬嗑之家人' then
begin
  result:='析薪炽酒，使媒求妇。和合齐宋，姜子悦喜。';
  exit;
end;
if s='噬嗑之睽' then
begin
  result:='邻不我顾，而望玉女。身多疣癞，谁当媚者。';
  exit;
end;
if s='噬嗑之蹇' then
begin
  result:='远视无光，不知青黄。黈纩塞耳，使君闇聋。';
  exit;
end;
if s='噬嗑之解' then
begin
  result:='克身整己，逢禹巡狩。赐我玄圭，蒙福受佑。';
  exit;
end;
if s='噬嗑之损' then
begin
  result:='远望千里，不见黑子。离娄之明，无益于光。';
  exit;
end;
if s='噬嗑之益' then
begin
  result:='斧斤所斫，疮痏不息。针石不施，下即空室。';
  exit;
end;
if s='噬嗑之夬' then
begin
  result:='南国少子，才略美好。求我长女，贱薄不与。反得丑陋，后乃大悔。';
  exit;
end;
if s='噬嗑之姤' then
begin
  result:='失俪后旅，天门地户。不知所在，安止无咎。';
  exit;
end;
if s='噬嗑之萃' then
begin
  result:='乌孙氏女，深目黑丑。嗜欲不同，过时无偶。';
  exit;
end;
if s='噬嗑之升' then
begin
  result:='伯驾纯骝，南至东莱。求索车马，道阙中止。';
  exit;
end;
if s='噬嗑之困' then
begin
  result:='二女宝珠，误郑大夫。交父无礼，自为作笑。';
  exit;
end;
if s='噬嗑之井' then
begin
  result:='阳城太室，神明所息。仁智之居，独无兵革。';
  exit;
end;
if s='噬嗑之革' then
begin
  result:='大蛇为殃，使道不通。岁收尠少，年谷败伤。';
  exit;
end;
if s='噬嗑之鼎' then
begin
  result:='三足孤乌，灵明为御。司过罚恶，自残其家，毁败为忧。';
  exit;
end;
if s='噬嗑之震' then
begin
  result:='车驾两靷，绝马欲步。双轮脱行，至道遇害。';
  exit;
end;
if s='噬嗑之艮' then
begin
  result:='郁（日夬）不明，为阴所伤。众雾集聚，共夺日光。';
  exit;
end;
if s='噬嗑之渐' then
begin
  result:='鸋鴂鸱枭，治成遇灾。周公勤劳，绥德安家。';
  exit;
end;
if s='噬嗑之归妹' then
begin
  result:='名成德就，项领不试。景公耄老，尼父逝去。';
  exit;
end;
if s='噬嗑之丰' then
begin
  result:='一夫两心，歧刺不深。所以无功，求事不成。';
  exit;
end;
if s='噬嗑之旅' then
begin
  result:='羿张乌号，彀射天狼。柱国雄勇，败于荥阳。';
  exit;
end;
if s='噬嗑之巽' then
begin
  result:='东家杀牛，污秽腥臊。神背西顾，命衰绝周。';
  exit;
end;
if s='噬嗑之兑' then
begin
  result:='火起吾后，喜炙我庑。苍龙衔水，泉噀屋柱，虽忧无咎。';
  exit;
end;
if s='噬嗑之涣' then
begin
  result:='桃雀窃脂，巢于小枝。摇动不安，为风所吹。寒心栗栗，常忧殆危。';
  exit;
end;
if s='噬嗑之节' then
begin
  result:='徙足去域，飞入东国。有所畏避，深藏远匿。';
  exit;
end;
if s='噬嗑之中孚' then
begin
  result:='琼英朱草，仁政得道。凫鹥在渚，福禄来下。';
  exit;
end;
if s='噬嗑之小过' then
begin
  result:='陈蔡之厄，从者饥罢。明德上通，忧不为凶。';
  exit;
end;
if s='噬嗑之既济' then
begin
  result:='春桃生华，季女宜家。受福多年，男为邦君。';
  exit;
end;
if s='噬嗑之未济' then
begin
  result:='径邪贼田，政恶伤民。夫妇呪诅，泰山覆颠。';
  exit;
end;

end;

function shanhuobi(const s: string):string;
begin
if s='贲' then
begin
  result:='仁政不暴，凤凰来舍。四时顺节，民安其居。';
  exit;
end;
if s='贲之乾' then
begin
  result:='八口九头，长舌破家。帝辛沈湎，商灭其墟。';
  exit;
end;
if s='贲之坤' then
begin
  result:='鬼守我门，呼伯入山。去其室家，舍其兆墓。';
  exit;
end;
if s='贲之屯' then
begin
  result:='日出阜东，山蔽其明。章甫荐屦，箕子徉狂。';
  exit;
end;
if s='贲之蒙' then
begin
  result:='戴盆望天，不见星辰。愿小失大，福逃墙外。';
  exit;
end;
if s='贲之需' then
begin
  result:='两轮并转，南山大阪。四马共辕，无有重难，与语笑言。';
  exit;
end;
if s='贲之讼' then
begin
  result:='羊惊狼虎，耸耳群聚。行旅稽难，流连愁苦。';
  exit;
end;
if s='贲之师' then
begin
  result:='楩生荆山，命制输班。袍衣剥脱，夏热冬寒。饥饿枯槁，众人莫怜。';
  exit;
end;
if s='贲之比' then
begin
  result:='鸟飞无翼，兔走折足。不常其德，自为羞辱。';
  exit;
end;
if s='贲之小畜' then
begin
  result:='条风制气，万物出生。明庶长养，花叶茂荣。';
  exit;
end;
if s='贲之履' then
begin
  result:='坤厚地德，庶物蕃息。平康正直，以绥大福。';
  exit;
end;
if s='贲之泰' then
begin
  result:='昴毕附耳，将军乘怒。径路隔塞，燕雀惊骇。';
  exit;
end;
if s='贲之否' then
begin
  result:='东风启户，黔啄翻舞。各乐其类，咸得生处。';
  exit;
end;
if s='贲之同人' then
begin
  result:='两足四翼，飞入家国。宁我伯姊，与母相得。';
  exit;
end;
if s='贲之大有' then
begin
  result:='岁暮花落，阳入阴室。万物伏匿，藏不可得。';
  exit;
end;
if s='贲之谦' then
begin
  result:='释然远咎，避患高阜。田获三狐，以贝为宝。';
  exit;
end;
if s='贲之豫' then
begin
  result:='鹊延却缩，不见头目。日以困急，不能自复。';
  exit;
end;
if s='贲之随' then
begin
  result:='秋隼冬翔，数被严霜。鸡犬夜鸣，家扰不宁。';
  exit;
end;
if s='贲之蛊' then
begin
  result:='班马还师，以息劳疲。役夫嘉喜，入户见妻。';
  exit;
end;
if s='贲之临' then
begin
  result:='老杨日衰，条多枯枝。爵级不进，逐下摧隤。';
  exit;
end;
if s='贲之观' then
begin
  result:='顺风吹火，牵骑骥尾。易为功力，因惧受福。';
  exit;
end;
if s='贲之噬嗑' then
begin
  result:='六人俱行，各遗其囊。黄鹄失珠，无以为明。';
  exit;
end;
if s='贲之剥' then
begin
  result:='依叔墙隅，志下心劳。楚亭晨食，韩子低头。';
  exit;
end;
if s='贲之复' then
begin
  result:='三牛生狗，以戌为母。荆夷上侵，姬伯出走。';
  exit;
end;
if s='贲之无妄' then
begin
  result:='鹤盗我珠，逃于东都。鹄怒追求，郭氏之墟。不见踪迹，反为祸灾。';
  exit;
end;
if s='贲之大畜' then
begin
  result:='鹢飞中退，举事不遂。餔糜毁齿，失其道理。';
  exit;
end;
if s='贲之颐' then
begin
  result:='鸿鹄高飞，鸣求其雌。雌来在户，雄哺嘻嘻。甚独劳苦，炰鳖脍鲤。';
  exit;
end;
if s='贲之大过' then
begin
  result:='褰衣涉河，水深渍罢。幸赖舟子，济脱无他。';
  exit;
end;
if s='贲之坎' then
begin
  result:='虎啮龙指，泰山之崖。天命不佑，不见其雌。';
  exit;
end;
if s='贲之离' then
begin
  result:='明不处暗，智不履危。终日卒岁，乐以笑歌。';
  exit;
end;
if s='贲之咸' then
begin
  result:='三足俱行，倾危善僵。六指不便，慁累弟兄。树柱阂车，失其正当。';
  exit;
end;
if s='贲之恒' then
begin
  result:='舍车而徒，亡其驳牛。虽丧白头，酒以疗忧。';
  exit;
end;
if s='贲之遁' then
begin
  result:='析薪炽酒，使媒求妇。和合齐宋，姜子悦喜。';
  exit;
end;
if s='贲之大壮' then
begin
  result:='夜视无明，不利贾商。子反笑欢，与市为仇。';
  exit;
end;
if s='贲之晋' then
begin
  result:='徒行离车，冒厌泥涂，利以休居。';
  exit;
end;
if s='贲之明夷' then
begin
  result:='作室山根，人以为安。一夕崩颠，破我壶飱。';
  exit;
end;
if s='贲之家人' then
begin
  result:='东山西山，各自言安。虽相登望，竟未同堂。';
  exit;
end;
if s='贲之睽' then
begin
  result:='君子在朝，凶言去消。惊骇逐狼，不见雄英。';
  exit;
end;
if s='贲之蹇' then
begin
  result:='隐隐填填，火烧山根。不润我邻，独不蒙恩。';
  exit;
end;
if s='贲之解' then
begin
  result:='南山之蹊，真人所在。德配唐虞，天命为子。保佑歆享，身受大庆。';
  exit;
end;
if s='贲之损' then
begin
  result:='龙蛇所聚，大水来处。泱泱霈霈。濙濙礚礚，使我无赖。';
  exit;
end;
if s='贲之益' then
begin
  result:='旃裘苫盖，慕德献服。边鄙不耸，以安王国。';
  exit;
end;
if s='贲之夬' then
begin
  result:='光祀春成，陈宝鸡鸣。阳明失道，不能自守，消亡为咎。';
  exit;
end;
if s='贲之姤' then
begin
  result:='下泉苞稂，十年无王。郇伯遇时，忧念周京。';
  exit;
end;
if s='贲之萃' then
begin
  result:='仁德不暴，五精就舍。四序允厘，民安其居。';
  exit;
end;
if s='贲之升' then
begin
  result:='隋和重宝，众所贪有。相如睨柱，赵王危殆。';
  exit;
end;
if s='贲之困' then
begin
  result:='凤生五雏，长于南郭。君子康宁，悦乐身荣。';
  exit;
end;
if s='贲之井' then
begin
  result:='二人为侣，俱归北海。入门上堂，拜谒王母。劳赐我酒，女功悦喜';
  exit;
end;
if s='贲之革' then
begin
  result:='逐忧去殃，洿泥生梁，下田为王。';
  exit;
end;
if s='贲之鼎' then
begin
  result:='东门之墠，茹藘在阪。礼义不行，与我心反。';
  exit;
end;
if s='贲之震' then
begin
  result:='凫遇稻芦，甘乐鳅。虽驱不去，田畯怀忧。';
  exit;
end;
if s='贲之艮' then
begin
  result:='清人高子，久屯外野。逍遥不归，思我慈母。';
  exit;
end;
if s='贲之渐' then
begin
  result:='谗佞所言，语不成全。虎狼之患，不为我残。';
  exit;
end;
if s='贲之归妹' then
begin
  result:='张罗捕鸠，兔丽其灾。雌雄俱得，为网所贼。';
  exit;
end;
if s='贲之丰' then
begin
  result:='安仁尚德，东邻慕义，来安吾国。';
  exit;
end;
if s='贲之旅' then
begin
  result:='猾丑假诚，前后相违。言如鳖咳，语不可知。';
  exit;
end;
if s='贲之巽' then
begin
  result:='怀璧越乡，不可远行。蔡侯两裘，久苦流离。';
  exit;
end;
if s='贲之兑' then
begin
  result:='伯氏归国，多所恨惑。车倾盖亡，身常惊惶。乃得其愿，雌雄相从。';
  exit;
end;
if s='贲之涣' then
begin
  result:='火石相得，干无润泽。利少囊缩，只益促迫。';
  exit;
end;
if s='贲之节' then
begin
  result:='君明圣哲，鸣呼其友。显德之徒，可以礼仕。';
  exit;
end;
if s='贲之中孚' then
begin
  result:='骑豚逐羊，不见所望。径涉虎庐，亡豚失羊。';
  exit;
end;
if s='贲之小过' then
begin
  result:='玄黄虺隤，行者劳疲。役夫憔悴，处子畏哀。';
  exit;
end;
if s='贲之既济' then
begin
  result:='右手掩目，不见长叔。失其所得，悔吝相仍。';
  exit;
end;
if s='贲之未济' then
begin
  result:='免冠进贤，步出朝门。仪体不正，贼孽为患。';
  exit;
end;

end;

function bo(const s: string):string;
begin
if s='剥' then
begin
  result:='行触大讳，与司命忤。执囚束缚，拘制于吏，幽人有喜。';
  exit;
end;
if s='剥之乾' then
begin
  result:='穿胸狗邦，僵离旁舂。天地易纪，日月更始。';
  exit;
end;
if s='剥之坤' then
begin
  result:='从风纵火，荻芝俱死。三害集房，十子中伤。';
  exit;
end;
if s='剥之屯' then
begin
  result:='北山有枣，橘柚于聚。荷囊载香，盈我筐筥。';
  exit;
end;
if s='剥之蒙' then
begin
  result:='赍贝赎狸，不听我辞。系于虎须，牵不得来。';
  exit;
end;
if s='剥之需' then
begin
  result:='上下惟邪，戾其元夫。欢心隔塞，君子离居。';
  exit;
end;
if s='剥之讼' then
begin
  result:='二人辇车，徙去其家。井沸釜鸣，不可安居。';
  exit;
end;
if s='剥之师' then
begin
  result:='蹇驴不材，俊骥失时。筋力劳尽，疲于沙丘。';
  exit;
end;
if s='剥之比' then
begin
  result:='明夷兆初，为穆出郊。以谗复归，名曰竖牛。剥乱叔孙，馁于虚丘。';
  exit;
end;
if s='剥之小畜' then
begin
  result:='天火大起，飞鸟惊骇。作事不时，自为身咎。';
  exit;
end;
if s='剥之履' then
begin
  result:='土与山连，共保岁寒。终无灾患，万世长安。';
  exit;
end;
if s='剥之泰' then
begin
  result:='日出阜东，山蔽其明。章甫荐履，箕子佯狂。';
  exit;
end;
if s='剥之否' then
begin
  result:='龙马上山，绝无水泉。喉焦唇干，口不能言。';
  exit;
end;
if s='剥之同人' then
begin
  result:='雄处弱水，雌在海滨。将别持食，悲哀于心。';
  exit;
end;
if s='剥之大有' then
begin
  result:='庭燎夜明，追古伤今。阳弱不制，阴雄生戾。';
  exit;
end;
if s='剥之谦' then
begin
  result:='三妇同夫，忽不相思。志恒悲愁，颜色不怡。';
  exit;
end;
if s='剥之豫' then
begin
  result:='鹤盗我珠，逃于东都。鹄怒追求，郭氏之墟。不见踪迹，反为患灾。';
  exit;
end;
if s='剥之随' then
begin
  result:='猕猴冠带，盗载非位。众犬共吠，狂走蹶足。';
  exit;
end;
if s='剥之蛊' then
begin
  result:='黍稷禾稻，垂亩方好。中旱不雨，伤风病槁。';
  exit;
end;
if s='剥之临' then
begin
  result:='雄圣伏，名人匿。麟远走，凤飞北。乱祸未息。';
  exit;
end;
if s='剥之观' then
begin
  result:='王母多福，天禄所伏。居之宠光，君子有福。';
  exit;
end;
if s='剥之噬嗑' then
begin
  result:='被服文德，升入大麓。四门雍肃，登受大福。';
  exit;
end;
if s='剥之贲' then
begin
  result:='褰衣涉河，水深渍罢。幸赖舟子，济脱无他。';
  exit;
end;
if s='剥之复' then
begin
  result:='班马还师，以息劳疲。役夫嘉喜，入户见妻。';
  exit;
end;
if s='剥之无妄' then
begin
  result:='东邻嫁女，为王妃后。庄公筑馆，以尊王母。归于京师，季姜悦喜。';
  exit;
end;
if s='剥之大畜' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。';
  exit;
end;
if s='剥之颐' then
begin
  result:='危坐至暮，请求不得。膏泽不降，政戾民忒。';
  exit;
end;
if s='剥之大过' then
begin
  result:='百川朝海，泛流不止。路虽辽远，无不到者。';
  exit;
end;
if s='剥之坎' then
begin
  result:='乘骝驾骊，东至于齐。遭遇仁友，送我以资，厚得利归。';
  exit;
end;
if s='剥之离' then
begin
  result:='礼坏乐崩，成子傲慢。欲求致理，力疲心烂。阴请不当，为简生殃。';
  exit;
end;
if s='剥之咸' then
begin
  result:='三人辇车，乘入虎家。王母贪叨，盗我犁牛。';
  exit;
end;
if s='剥之恒' then
begin
  result:='羊头兔足，少肉不饱。漏囊败粟，利无所得。';
  exit;
end;
if s='剥之遁' then
begin
  result:='新田宜粟，上农得谷。君子唯好，以纡百福。';
  exit;
end;
if s='剥之大壮' then
begin
  result:='夷羿所射，发辄有获。双凫俱得，利以伐国。';
  exit;
end;
if s='剥之晋' then
begin
  result:='凫舞鼓翼，嘉乐尧德。虞夏美功，要荒宾服。';
  exit;
end;
if s='剥之明夷' then
begin
  result:='登丘上山，对酒道欢。终年卒岁，优福无患。';
  exit;
end;
if s='剥之家人' then
begin
  result:='岁暮花落，阳入阴室。万物伏匿，藏不可得。';
  exit;
end;
if s='剥之睽' then
begin
  result:='螟虫为贼，害我禾谷。箪瓶空虚，饥无所食。';
  exit;
end;
if s='剥之蹇' then
begin
  result:='阳虎胁主，使德不通。炎离为殃，年谷病伤。';
  exit;
end;
if s='剥之解' then
begin
  result:='四马共辕，东上泰山。骍骊同力，无有重难，与君笑言。';
  exit;
end;
if s='剥之损' then
begin
  result:='牧羊稻园，闻虎喧讙。畏惧悚息，终无祸患。';
  exit;
end;
if s='剥之益' then
begin
  result:='扬华不时，冬实生危。忧多横贼，生不能服。昆仑之玉，所求不得。';
  exit;
end;
if s='剥之夬' then
begin
  result:='高阜所在，阴气不临。洪水不处，为家利宝。';
  exit;
end;
if s='剥之姤' then
begin
  result:='释然远咎，避患高阜。田获三狐，以贝为宝。君子所在，安宁不殆。';
  exit;
end;
if s='剥之萃' then
begin
  result:='两目失明，日夺无光。胫足跛曳，不可以行。顿于丘旁，亡妾莫逐，嵬然独宿。';
  exit;
end;
if s='剥之升' then
begin
  result:='鸿飞遵陆，公归不复，伯氏客宿。';
  exit;
end;
if s='剥之困' then
begin
  result:='佩玉累橤，无以系之。孤怨独处，愁哀相忧。';
  exit;
end;
if s='剥之井' then
begin
  result:='载船渡海，虽深何咎。孙子俱在，不失其所。';
  exit;
end;
if s='剥之革' then
begin
  result:='鹄求食鱼，道遇射弋。缯加我颈，缴缚两翼。欲飞不能，为羿所得。';
  exit;
end;
if s='剥之鼎' then
begin
  result:='泥面乱头，忍耻少羞，日以削消。';
  exit;
end;
if s='剥之震' then
begin
  result:='桑之将落，陨其黄叶。失势倾倒，如无所立。';
  exit;
end;
if s='剥之艮' then
begin
  result:='巨蛇大鳅，战于国郊。上下隔塞，主君走逃。';
  exit;
end;
if s='剥之渐' then
begin
  result:='已动死连，商子扬砂。石流狐狢，扰军鼓振，吏士恐落。';
  exit;
end;
if s='剥之归妹' then
begin
  result:='张罗搏鸠，兔丽其灾。雌雄俱得，为网所贼。';
  exit;
end;
if s='剥之丰' then
begin
  result:='三圣相辅，鸟兽喜舞，安乐富有。';
  exit;
end;
if s='剥之旅' then
begin
  result:='三奇六耦，相随俱市。王孙善贾，先得利宝。居止不安，大盗为咎。';
  exit;
end;
if s='剥之巽' then
begin
  result:='三人俱行，一人言北。伯仲欲南，少叔不得。中路分道，争斗相贼。';
  exit;
end;
if s='剥之兑' then
begin
  result:='播天舞地，扰乱神所，居乐无咎。';
  exit;
end;
if s='剥之涣' then
begin
  result:='坐争立讼，纷纷汹汹。卒成祸乱，灾及家公。';
  exit;
end;
if s='剥之节' then
begin
  result:='蛇行蜿蜒，不能上阪。履节安居，可以无忧。';
  exit;
end;
if s='剥之中孚' then
begin
  result:='隙大墙坏，蠹众木折。虎狼为政，天降罪罚。高杀望夷，胡亥以毙。';
  exit;
end;
if s='剥之小过' then
begin
  result:='阳不违德，高山多泽。颜子逐兔，未有所得。';
  exit;
end;
if s='剥之既济' then
begin
  result:='心多畏恶，时愁日惧。虽有小咎，终无大悔。';
  exit;
end;
if s='剥之未济' then
begin
  result:='众神集聚，相与议语。南国虐乱，百姓愁苦。兴师征伐，更立贤主。';
  exit;
end;

end;

function fu(const s: string):string;
begin
if s='复' then
begin
  result:='周师伐纣，克于牧野。甲子平旦，天下悦喜。';
  exit;
end;
if s='复之乾' then
begin
  result:='任武负力，东征不伏。蹈泥履涂，雄师败覆。';
  exit;
end;
if s='复之坤' then
begin
  result:='义不胜情，以欲自营。觊利危躬，折角摧颈。';
  exit;
end;
if s='复之屯' then
begin
  result:='悬貆素飡，食非其任。失舆剥庐，休坐徙居，室家何忧。';
  exit;
end;
if s='复之蒙' then
begin
  result:='鹠鸱娶妇，深目窈身。折腰不媚，与伯相背。';
  exit;
end;
if s='复之需' then
begin
  result:='东风解冻，河川流通。西门子产，升擢有功。';
  exit;
end;
if s='复之讼' then
begin
  result:='三足俱行，倾危善僵。六指不便，慁累弟兄。树柱阂车，失其正当。';
  exit;
end;
if s='复之师' then
begin
  result:='京庾积仓，黍稷以兴。极行疾至，以餍饱食。';
  exit;
end;
if s='复之比' then
begin
  result:='南山之蹊，真人所在。德配唐虞，天命为子。保佑歆享，身受大庆。';
  exit;
end;
if s='复之小畜' then
begin
  result:='车驰人趋，卷甲相仇。齐鲁寇战，败于犬丘。';
  exit;
end;
if s='复之履' then
begin
  result:='十五许室，柔顺有德。霜降既嫁，文以为合。先王日至，不利出域。';
  exit;
end;
if s='复之泰' then
begin
  result:='任力劣薄，远托邦国。辅车不强，为痈所伤。';
  exit;
end;
if s='复之否' then
begin
  result:='千岁旧室，将有困急。荷粮负囊，出门直北。';
  exit;
end;
if s='复之同人' then
begin
  result:='凶忧灾殃，日益章明。祸不可救，三郄夷伤。';
  exit;
end;
if s='复之大有' then
begin
  result:='冠危戴患，身惊不安。与福驰逐，凶来入门。';
  exit;
end;
if s='复之谦' then
begin
  result:='虎狼并处，不可以仕。忠谋辅政，祸必及己。退隐深山，身乃不殆。';
  exit;
end;
if s='复之豫' then
begin
  result:='卵与石斗，糜碎无处。挈瓶之使，不为忧惧。';
  exit;
end;
if s='复之随' then
begin
  result:='五心六意，歧道多怪。非君本志，生我恨悔。';
  exit;
end;
if s='复之蛊' then
begin
  result:='雨雪载涂，东行破车，旅人无家。';
  exit;
end;
if s='复之临' then
begin
  result:='尚刑坏义，月出平地。国乱天常，咎征灭亡。';
  exit;
end;
if s='复之观' then
begin
  result:='东行破车，步入危家。衡门穿射，无以为主。卖袍续食，糟糠不饱。';
  exit;
end;
if s='复之噬嗑' then
begin
  result:='逐禽出门，并失玉丸。往来井上，破瓮缺盆。';
  exit;
end;
if s='复之贲' then
begin
  result:='孟春醴酒，使君寿考。南山多福，宜行贾市。稻梁雌雉，所至利喜。';
  exit;
end;
if s='复之剥' then
begin
  result:='持刃操肉，对酒不食。夫亡从军，少子入狱，抱膝独宿。';
  exit;
end;
if s='复之无妄' then
begin
  result:='踦牛伤暑，不能成亩。草莱不辟，年岁无有。';
  exit;
end;
if s='复之大畜' then
begin
  result:='南邦大国，鬼魅满室。讙声相逐，为我行贼。';
  exit;
end;
if s='复之颐' then
begin
  result:='噂噂所言，莫如我垣。欢乐坚固，可以长安。';
  exit;
end;
if s='复之大过' then
begin
  result:='尧舜禹汤，四圣敦仁。允施德音，民安无穷。旅人相望，未同朝乡。';
  exit;
end;
if s='复之坎' then
begin
  result:='桎梏拘获，身入牢狱。髡刑受法，终不得释。耳闭道塞，求事不得。';
  exit;
end;
if s='复之离' then
begin
  result:='桀跖并处，民困愁苦。行旅迟迟，留连齐鲁。';
  exit;
end;
if s='复之咸' then
begin
  result:='求鸡获雉，买鳖失鱼。出人钧敌，租得无余。齐姜宋子，婚姻孔喜。';
  exit;
end;
if s='复之恒' then
begin
  result:='雨师驾驷，风伯吹云。秦楚争强，施不得行。';
  exit;
end;
if s='复之遁' then
begin
  result:='仲冬兼秋，鸟鹊饥忧。困于米食，数惊鹯雕。';
  exit;
end;
if s='复之大壮' then
begin
  result:='三羝上山，俱至阴安。遂到南阳，见其芝香。两崖相望，未同枕床。';
  exit;
end;
if s='复之晋' then
begin
  result:='飞之日南，还归辽东。雌友相从，和鸣雍雍，解我回春。';
  exit;
end;
if s='复之明夷' then
begin
  result:='尧饮舜舞，禹拜上酒。礼乐所丰，可以安处，保我淑女。';
  exit;
end;
if s='复之家人' then
begin
  result:='大一置酒，乐正起舞。万福攸同，可以安处，绥我齯齿。';
  exit;
end;
if s='复之睽' then
begin
  result:='白马騧骝，生乳不休。富我商人，得利饶优。';
  exit;
end;
if s='复之蹇' then
begin
  result:='宛马疾步，盲师坐御。目不见路，中止不到。';
  exit;
end;
if s='复之解' then
begin
  result:='春桃萌生，万物华荣。邦君所居，国乐无忧。';
  exit;
end;
if s='复之损' then
begin
  result:='把珠入口，蓄为玉宝。得吾所有，欣然嘉喜。';
  exit;
end;
if s='复之益' then
begin
  result:='襦烧袴燔，羸剥饥寒，病虐冻挛。';
  exit;
end;
if s='复之夬' then
begin
  result:='水沫沉浮，沮湿不居，为心疾忧。';
  exit;
end;
if s='复之姤' then
begin
  result:='行如桀纣，虽祷不佑。命绝衰周，文君乏祀。';
  exit;
end;
if s='复之萃' then
begin
  result:='蜱蜉戴盆，不能上山。脚摧跛蹶，损伤其颜。';
  exit;
end;
if s='复之升' then
begin
  result:='长子入狱，妇馈母哭。霜降愈甚，向晦伏法。';
  exit;
end;
if s='复之困' then
begin
  result:='求犬得兔，请新遇故。虽不当路，踰吾旧舍。';
  exit;
end;
if s='复之井' then
begin
  result:='鸟鸣葭端，一呼三颠。动摇东西，危而不安。灵祝祷祉，疾病无患。';
  exit;
end;
if s='复之革' then
begin
  result:='天厌禹德，命兴汤国。祓社衅鼓，以除民疾。';
  exit;
end;
if s='复之鼎' then
begin
  result:='阴雾作匿，不见白日。邪径迷道，使君乱惑。';
  exit;
end;
if s='复之震' then
begin
  result:='猿堕高木，不踒手足。握珠怀玉，还归我室。';
  exit;
end;
if s='复之艮' then
begin
  result:='三骊负衡，南取芝香。秋兰芬馥，盈满匣匮，利我少姜。';
  exit;
end;
if s='复之渐' then
begin
  result:='春生夏乳，羽毛成就。举不失宜，君臣相好。盗走奔北，终无有悔。';
  exit;
end;
if s='复之归妹' then
begin
  result:='东行破车，远反失家。天命讫终，无所祷凶。';
  exit;
end;
if s='复之丰' then
begin
  result:='九雁列阵，雌独不群。为罾所牵，死于庖人。';
  exit;
end;
if s='复之旅' then
begin
  result:='二人辇车，徙去其家。井沸釜鸣，不可以居。';
  exit;
end;
if s='复之巽' then
begin
  result:='闭塞复通，与善相逢。甘棠之人，解我忧凶。';
  exit;
end;
if s='复之兑' then
begin
  result:='赋敛重数，政为民贼。杼柚空虚，去其家室。';
  exit;
end;
if s='复之涣' then
begin
  result:='怒非其愿，贪妬腐鼠。而呼鹊鸱，自令失饵，致被殃患。';
  exit;
end;
if s='复之节' then
begin
  result:='簪短带长，幽思苦穷。瘠蠡小瘦，以病之癃。';
  exit;
end;
if s='复之中孚' then
begin
  result:='三人俱行，各别采桑。蕴其筐筥，留我嘉旅。得归无咎，四月来处。';
  exit;
end;
if s='复之小过' then
begin
  result:='逐鸠南飞，与喜相随。并获鹿子，多得利归，虽忧不危。';
  exit;
end;
if s='复之既济' then
begin
  result:='驱羊南行，与祸相逢。狼惊吾马，虎盗我子，悲恨自咎。';
  exit;
end;
if s='复之未济' then
begin
  result:='东邻西国，福喜同乐。出得隋珠，留获和玉，俱利有息。';
  exit;
end;


end;


function wuwang(const s: string):string;
begin
if s='无妄' then
begin
  result:='夏台羑里，汤文厄处。皋陶听理，岐人悦喜。西望华首，东归无咎。';
  exit;
end;
if s='无妄之乾' then
begin
  result:='儋耳穿胸，僵离旁舂。天地易纪，日月更始。';
  exit;
end;
if s='无妄之坤' then
begin
  result:='慈母之恩，长大无孙。消息襁褓，害不入门。';
  exit;
end;
if s='无妄之屯' then
begin
  result:='讹言妄语，转相诖误。道左失迹，不知狼处。';
  exit;
end;
if s='无妄之蒙' then
begin
  result:='郁不明，阴积无光。日在北陆，万物雕藏。';
  exit;
end;
if s='无妄之需' then
begin
  result:='王母多福，天禄所伏。居之宠昌，君子有光。”';
  exit;
end;
if s='无妄之讼' then
begin
  result:='不耕而获，家食不给。中女无良，长子跛足。疏齿善市，商人有喜。';
  exit;
end;
if s='无妄之师' then
begin
  result:='火起上门，不为我残。跳脱东西，独得生完。不利出邻，疾病忧患。';
  exit;
end;
if s='无妄之比' then
begin
  result:='持刀操肉，对酒不食。夫亡从军，少子入狱。抱膝独宿。';
  exit;
end;
if s='无妄之小畜' then
begin
  result:='鳅虾去海，游于枯里。街巷迫狭，不得自在。南北四极，渴馁成疾。';
  exit;
end;
if s='无妄之履' then
begin
  result:='哑哑笑语，与欢饮酒。长乐行觞，千秋起舞，拜受大福。';
  exit;
end;
if s='无妄之泰' then
begin
  result:='登高上山，宾于四门。士伍得欢，福为我根。';
  exit;
end;
if s='无妄之否' then
begin
  result:='天厌周德，命我南国。以礼静民，兵革休息。';
  exit;
end;
if s='无妄之同人' then
begin
  result:='壅遏堤防，水不得行。火光盛阳，阴蜺伏藏，走归其乡。';
  exit;
end;
if s='无妄之大有' then
begin
  result:='河海都市，国之奥府。商人受福，少子玉食。';
  exit;
end;
if s='无妄之谦' then
begin
  result:='东行避兵，南去不祥。西逐凶恶，北迎福生，与喜相逢。';
  exit;
end;
if s='无妄之豫' then
begin
  result:='东家中女，嫫母最丑。三十无室，媒伯劳苦。';
  exit;
end;
if s='无妄之随' then
begin
  result:='破亡之国，天所不福，难以止息。';
  exit;
end;
if s='无妄之蛊' then
begin
  result:='骖驾蹇驴，日暮失时。居者无忧，保我乐娱。';
  exit;
end;
if s='无妄之临' then
begin
  result:='蝃蝀充侧，佞幸倾惑。女谒横行，正道雍塞。';
  exit;
end;
if s='无妄之观' then
begin
  result:='三羖五牂，相随并行。迷入空泽，循谷直北。径涉六驳，为所伤贼。';
  exit;
end;
if s='无妄之噬嗑' then
begin
  result:='载喜抱子，与利为友。天之所命，不忧危殆。郇伯劳苦，西来王母。';
  exit;
end;
if s='无妄之贲' then
begin
  result:='织缕未就，针折不复。女工多能，乱我政事。';
  exit;
end;
if s='无妄之剥' then
begin
  result:='行露之讼，贞女不行。君子无食，使道壅塞。';
  exit;
end;
if s='无妄之复' then
begin
  result:='羿张乌号，彀射天狼。钟鼓不鸣，将军振旅。柱国雄勇，斗死荥阳。';
  exit;
end;
if s='无妄之大畜' then
begin
  result:='延颈望酒，不入我口。商人劳苦，利得无有。夏台羑里，虽危复喜。';
  exit;
end;
if s='无妄之颐' then
begin
  result:='冠带南游，与喜相期。邀于嘉国，拜位逢时。';
  exit;
end;
if s='无妄之大过' then
begin
  result:='东西触垣，不利出门。鱼藏深水，无以乐宾。爵级摧颓，光威减衰。';
  exit;
end;
if s='无妄之坎' then
begin
  result:='两母十子，转息无已。五乳百雏，骍驳骊驹。';
  exit;
end;
if s='无妄之离' then
begin
  result:='重黎祖后，司马太史。阳氏之灾，雕宫悲苦。';
  exit;
end;
if s='无妄之咸' then
begin
  result:='内执柔德，止讼以嘿。宗邑赖福，祸灾不作。';
  exit;
end;
if s='无妄之恒' then
begin
  result:='采唐沫乡，邀期桑中。失信不会，忧思约带。';
  exit;
end;
if s='无妄之遁' then
begin
  result:='官成立政，衣就缺袂。恭俭为卫，终无祸尤。';
  exit;
end;
if s='无妄之大壮' then
begin
  result:='麒麟凤凰，子孙盛昌。少齐在门，利以合婚。振衣弹冠，贵人大欢。';
  exit;
end;
if s='无妄之晋' then
begin
  result:='乱危之国，不可涉域。机发身顿，遂至僵覆。';
  exit;
end;
if s='无妄之明夷' then
begin
  result:='千雀万鸠，与鹞为仇。威势不敌，虽众无益，为鹰所击。';
  exit;
end;
if s='无妄之家人' then
begin
  result:='众神集聚，相与议语。南国虐乱，百姓愁苦。兴师征讨，更立圣主。';
  exit;
end;
if s='无妄之睽' then
begin
  result:='颜渊闵骞，以礼自闲。君子所居，祸灾不存。';
  exit;
end;
if s='无妄之蹇' then
begin
  result:='三桓子孙，世秉国权。爵世上卿，富于周公。';
  exit;
end;
if s='无妄之解' then
begin
  result:='鹤鸣九皋，处子失时。载土贩盐，难为功巧。';
  exit;
end;
if s='无妄之损' then
begin
  result:='方轴圆轮，车行不前。组囊以锥，失其事便。还师振旅，兵革休止。';
  exit;
end;
if s='无妄之益' then
begin
  result:='鱼扰水浊，桀乱我国。驾龙出游，东之乐土。天赐我禄，与生为福。';
  exit;
end;
if s='无妄之夬' then
begin
  result:='白虎黑狼，伏伺山阳。遮遏牛羊，病我商人。';
  exit;
end;
if s='无妄之姤' then
begin
  result:='履危不安，跌顿我颜，伤肿为瘢。';
  exit;
end;
if s='无妄之萃' then
begin
  result:='三人辇车，东入旁家。王母贪叨，盗我资财，亡失犂牛。';
  exit;
end;
if s='无妄之升' then
begin
  result:='三雁南飞，俱就塘池。虾鳅饶有，利得过倍。';
  exit;
end;
if s='无妄之困' then
begin
  result:='鹰栖茂树，候雀来往。一击获两，利在枝柯。';
  exit;
end;
if s='无妄之井' then
begin
  result:='尧舜钦明，禹稷股肱。伊尹往来，进履登堂。显德之徒，可以辅王。';
  exit;
end;
if s='无妄之革' then
begin
  result:='枯旱三年，草莱不生。粢盛空乏，无以供灵。';
  exit;
end;
if s='无妄之鼎' then
begin
  result:='方口缓唇，为和枢门。解释钩带，商旅以欢。';
  exit;
end;
if s='无妄之震' then
begin
  result:='凫池水溢，高陆为海。江河横流，鱼鳖成市。千里无墙，鸳凤游行。';
  exit;
end;
if s='无妄之艮' then
begin
  result:='烹鱼失刀，驾车马亡。锡刃不入，鲂鲤腥臊。';
  exit;
end;
if s='无妄之渐' then
begin
  result:='戎狄蹲踞，无礼贪叨。非吾族类，君子攸去。';
  exit;
end;
if s='无妄之归妹' then
begin
  result:='渡河踰水，狐濡其尾，不为祸忧。捕鱼遇蟹，利得无几。';
  exit;
end;
if s='无妄之丰' then
begin
  result:='河出小鱼，不宜劳烦。苛政害民，君受其患。';
  exit;
end;
if s='无妄之旅' then
begin
  result:='偃武修文，兵革休安。清人遥逍，未归空闲。';
  exit;
end;
if s='无妄之巽' then
begin
  result:='九疑郁林，沮湿不中。鸾鸟所去，君子不安。';
  exit;
end;
if s='无妄之兑' then
begin
  result:='搏猬逢虎，患厌不起。遂至欢国，与福笑语，君子乐喜。';
  exit;
end;
if s='无妄之涣' then
begin
  result:='狗生龙马，公劳妪苦。家无善驹，折悔为吝。';
  exit;
end;
if s='无妄之节' then
begin
  result:='婴孩求乳，慈母归子。黄麑悦喜，得其甘饵。';
  exit;
end;
if s='无妄之中孚' then
begin
  result:='有两赤鹞，从五隼噪。操矢无筈，趣释尔射。扶伏听命，不敢动摇。';
  exit;
end;
if s='无妄之小过' then
begin
  result:='伊尹智士，去桀耕野。执顺以强，天佑无咎。';
  exit;
end;
if s='无妄之既济' then
begin
  result:='逐鹿西山，利入我门。阴阳和调，国无灾殃。';
  exit;
end;
if s='无妄之未济' then
begin
  result:='龙兴之德，周武受福。长女宜家，与君相保。长股远行，狸且善藏。';
  exit;
end;

end;

function daxu(const s: string):string;
begin
if s='大畜' then
begin
  result:='朝鲜之地，箕伯所保。宜人宜家，业处子孙，求事大吉。';
  exit;
end;
if s='大畜之乾' then
begin
  result:='金柱铁关，坚固卫灾。君子居之，安无忧危。';
  exit;
end;
if s='大畜之坤' then
begin
  result:='转祸为福，喜来入屋。春城夏国，可以饮食，保全家室。';
  exit;
end;
if s='大畜之屯' then
begin
  result:='水暴横行，浮屋坏墙。泱泱溢溢，市师惊惶。居止不殆，与母相保。';
  exit;
end;
if s='大畜之蒙' then
begin
  result:='虎豹熊罢，游戏山隅。得其所欲，君子无忧。';
  exit;
end;
if s='大畜之需' then
begin
  result:='躬礼履仁，尚德止讼。宗邑以安，三百无患。';
  exit;
end;
if s='大畜之讼' then
begin
  result:='江淮易服，玄黄朱饰。灵公夏征，衷衵无极。高位崩颠，失其宠室。';
  exit;
end;
if s='大畜之师' then
begin
  result:='不虞之患，祸至无门。奄忽暴卒，痛伤我心。';
  exit;
end;
if s='大畜之比' then
begin
  result:='三涂五岳，去危入室。凶祸不作，桀盗尧服。失其宠福，贵人有疾。';
  exit;
end;
if s='大畜之小畜' then
begin
  result:='配合相迎，利之四乡。昏以为期，明星煌煌。欣喜奭怿，所言得当。';
  exit;
end;
if s='大畜之履' then
begin
  result:='三手六身，莫适所闲。更相摇动，失事便安。箕子佯狂，国乃不昌。';
  exit;
end;
if s='大畜之泰' then
begin
  result:='虎卧山隅，鹿过后朐。弓矢设张，猬为功曹。伏不敢起，遂全其躯，得我美草。';
  exit;
end;
if s='大畜之否' then
begin
  result:='麟凤执获，英雄失职。自卫反鲁，猥昧不起，禄福讫已。';
  exit;
end;
if s='大畜之同人' then
begin
  result:='栾子作殃，伯氏诛伤。州犂奔楚，失其宠光。';
  exit;
end;
if s='大畜之大有' then
begin
  result:='黄帝出游，驾龙乘马。东至泰山，南过齐鲁。王良御右，文武何咎。不利市贾。';
  exit;
end;
if s='大畜之谦' then
begin
  result:='齐鲁争言，战于龙门。构怨致祸，三世不安。';
  exit;
end;
if s='大畜之豫' then
begin
  result:='道礼和德，仁不相贼。君子往之，乐有其利。';
  exit;
end;
if s='大畜之随' then
begin
  result:='妪妒公妮，毁益乱类。使我家愦，利得不遂。';
  exit;
end;
if s='大畜之蛊' then
begin
  result:='一巢九子，同公共母。柔顺利贞，出入不殆，福禄所在。';
  exit;
end;
if s='大畜之临' then
begin
  result:='崔崽北岳，天神贵客。温仁正直，主布恩德。闵哀不已，蒙受大福。';
  exit;
end;
if s='大畜之观' then
begin
  result:='三蛆逐蝇，陷堕釜中。灌沸渰殪，与母长诀。';
  exit;
end;
if s='大畜之噬嗑' then
begin
  result:='东山西陵，高峻难升。灭夷掘垒，使道不通。商旅无功，复反其邦。';
  exit;
end;
if s='大畜之贲' then
begin
  result:='常德自如，不逢祸灾。乐只君子，福禄自来。';
  exit;
end;
if s='大畜之剥' then
begin
  result:='范子妙材，戮辱伤肤。后相秦国，封为应侯。';
  exit;
end;
if s='大畜之复' then
begin
  result:='虎狼结集，相聚为保。伺啮牛羊，道绝不通。病我商人。';
  exit;
end;
if s='大畜之无妄' then
begin
  result:='不直杜公，与我争讼。媒伯无礼，自令壅塞。';
  exit;
end;
if s='大畜之颐' then
begin
  result:='上天楼台，登拜受福，喜庆大来。';
  exit;
end;
if s='大畜之大过' then
begin
  result:='三羊上山，东至平原。黄龙服箱，南至鲁阳。完其佩囊，执绥车中，行人有庆。';
  exit;
end;
if s='大畜之坎' then
begin
  result:='天地闭塞，仁智隐伏。商旅不行，利深难得。';
  exit;
end;
if s='大畜之离' then
begin
  result:='延陵适鲁，观乐太史。车辚白颠，知秦兴起。卒兼其国，一统为主。';
  exit;
end;
if s='大畜之咸' then
begin
  result:='櫜戢甲兵，归放马牛。径路开通，国无凶忧。';
  exit;
end;
if s='大畜之恒' then
begin
  result:='牛骥同槽，郭氏以亡。国破为墟，主君走逃。';
  exit;
end;
if s='大畜之遁' then
begin
  result:='大尾小腰，重不可摇。栋桡榱坏，臣为君忧。汤火之言，消不为患。使我复安。';
  exit;
end;
if s='大畜之大壮' then
begin
  result:='大一置酒，乐正起舞。万福攸同，可以安处。绥我齯齿。';
  exit;
end;
if s='大畜之晋' then
begin
  result:='饮酒醉酗，跳起争斗。伯伤叔僵，东家治丧。';
  exit;
end;
if s='大畜之明夷' then
begin
  result:='山险难登，涧中多石。车驰轊击，重载伤轴。担负善踬，跌踒右足。';
  exit;
end;
if s='大畜之家人' then
begin
  result:='争讼不己，更相击訽。张季弱口，被发北走。';
  exit;
end;
if s='大畜之睽' then
begin
  result:='心志无良，伤破妄行。触墙抵壁，不见户房。先王闭关，商旅委弃。';
  exit;
end;
if s='大畜之蹇' then
begin
  result:='鸋鴂鸱鸮。治成遇灾。绥德安家，周公勤劳。';
  exit;
end;
if s='大畜之解' then
begin
  result:='清人高子，久屯外野。逍遥不归，思我慈母。';
  exit;
end;
if s='大畜之损' then
begin
  result:='两虎争斗，股创无处。不成仇雠，行解却去。';
  exit;
end;
if s='大畜之益' then
begin
  result:='天女踞床，不成文章。南箕无舌，饭多沙糠。虐众盗名，雄鸡折颈。';
  exit;
end;
if s='大畜之夬' then
begin
  result:='太子扶苏，出于远郊。佞幸成邪，改命生忧。慈母之恩，无路致之。';
  exit;
end;
if s='大畜之姤' then
begin
  result:='寒暑相推，一明一微。赫赫宗周，光荣灭衰。';
  exit;
end;
if s='大畜之萃' then
begin
  result:='鸡狗相望，仁道笃行。不吠昏明，各安其乡。周鼎和饵，国富民有，八极蒙佑。';
  exit;
end;
if s='大畜之升' then
begin
  result:='窗牖户房，通利明光。贤智辅圣，仁施大行。家给人足，海内殷昌。';
  exit;
end;
if s='大畜之困' then
begin
  result:='雨雪三日，鸟兽饥乏。旅人失宜，利不可得。几言解患，以疗纷难，危者复安。';
  exit;
end;
if s='大畜之井' then
begin
  result:='白鹤衔珠，夜食为明。膏润优渥，国岁年丰。中子来同，见恶不凶。';
  exit;
end;
if s='大畜之革' then
begin
  result:='从豕牵羊，与虎相逢，虽惊不凶。';
  exit;
end;
if s='大畜之鼎' then
begin
  result:='凫雁哑哑，以水为宅。雌雄相合，心志娱乐，得其所欲。';
  exit;
end;
if s='大畜之震' then
begin
  result:='逐狐平原，水遏我前。深不可涉，暮无所得。';
  exit;
end;
if s='大畜之艮' then
begin
  result:='窟室蓬户，寒贱所处。千里望烟，散涣四方。形体灭亡，下入深渊，终不见君。';
  exit;
end;
if s='大畜之渐' then
begin
  result:='桀纣之主，悖不堪辅。贪荣为人，必定其咎。聚敛积实，野在鄙邑，未得入室。';
  exit;
end;
if s='大畜之归妹' then
begin
  result:='仓库盈亿，年岁有息。商人流连，虽久有得。阴多阳少，因地就力。';
  exit;
end;
if s='大畜之丰' then
begin
  result:='火山不燃，钓鲤失纶。鱼不可得，利去我北。';
  exit;
end;
if s='大畜之旅' then
begin
  result:='童女无媒，不宜动摇。安其室庐，傅母何忧。';
  exit;
end;
if s='大畜之巽' then
begin
  result:='载风云母，游观东海。鼓翼千里，见吾爱子。';
  exit;
end;
if s='大畜之兑' then
begin
  result:='鹤盗我襦，逃于山隅。不见武迹，使伯心忧。';
  exit;
end;
if s='大畜之涣' then
begin
  result:='夜视无明，不利远乡。闭门塞牖，福为我母。';
  exit;
end;
if s='大畜之节' then
begin
  result:='三狗逐兔，于东北路。利以进取，商人有得。';
  exit;
end;
if s='大畜之中孚' then
begin
  result:='武王不豫，周公祷谢。载璧秉圭，安宁如故。';
  exit;
end;
if s='大畜之小过' then
begin
  result:='同载共车，中道别去。爵级不进，君子下舆。';
  exit;
end;
if s='大畜之既济' then
begin
  result:='六雁俱飞，游戏稻池。大饮多食，食饱无患。';
  exit;
end;
if s='大畜之未济' then
begin
  result:='符左契右，相与合齿。乾坤利贞，出生六子。长大成就，风言如母。';
  exit;
end;

end;

function yi(const s: string):string;
begin
if s='颐' then
begin
  result:='家给人足，颂声并作。四夷宾服，干戈卷阁。';
  exit;
end;
if s='颐之乾' then
begin
  result:='思初道古，哀吟无辅。阳明不制，上失其所。';
  exit;
end;
if s='颐之坤' then
begin
  result:='江河淮海，天之奥府。众利所聚，可以饶有。乐我君子。';
  exit;
end;
if s='颐之屯' then
begin
  result:='三雁俱行，避暑就凉。适与矰遇，为缴所伤。';
  exit;
end;
if s='颐之蒙' then
begin
  result:='秋南春北，随时休息。处和履中，安无忧凶。';
  exit;
end;
if s='颐之需' then
begin
  result:='履危无患，跳脱独全。不利出门，伤我左膝。疾病不食，鬼哭其室。';
  exit;
end;
if s='颐之讼' then
begin
  result:='东家凶妇，怨其公姥。毁柈破盆，弃其饭餐，使吾困贫。';
  exit;
end;
if s='颐之师' then
begin
  result:='泥滓污辱，弃捐沟渎。众所笑哭，终不显录。';
  exit;
end;
if s='颐之比' then
begin
  result:='旦往暮还，各与相存，身无凶患。';
  exit;
end;
if s='颐之小畜' then
begin
  result:='六翮长翼，夜过射国。高飞冥冥，羿氏无得。';
  exit;
end;
if s='颐之履' then
begin
  result:='蜂虿之门，难以止息。嘉媚之士，为王所食。从去其室。';
  exit;
end;
if s='颐之泰' then
begin
  result:='被狐乘龙，为王道东。过时不返，使我忧聋。';
  exit;
end;
if s='颐之否' then
begin
  result:='雹梅零坠，心思愦愦，怀忧少愧，乱我魂气。';
  exit;
end;
if s='颐之同人' then
begin
  result:='长女三嫁，进退无羞。牝狐作妖，夜行离忧。';
  exit;
end;
if s='颐之大有' then
begin
  result:='轰轰 ，驰东逐西。盛盈必毁，高位崩颠。';
  exit;
end;
if s='颐之谦' then
begin
  result:='乘船涉济，载水逢火。赖得无患，蒙我生全。';
  exit;
end;
if s='颐之豫' then
begin
  result:='至德之君，政仁且温。伊吕股肱，国富民安。';
  exit;
end;
if s='颐之随' then
begin
  result:='生不逢时，困且多忧。无有冬夏，心常悲愁。';
  exit;
end;
if s='颐之蛊' then
begin
  result:='西历玉山，东入生门。登福上堂，饮万岁浆。';
  exit;
end;
if s='颐之临' then
begin
  result:='大斧斫木，谗人败国。东关二五，祸及三子。晋人乱危，怀公出走。';
  exit;
end;
if s='颐之观' then
begin
  result:='一室百孙，公悦妪欢。相与笑言，家乐以安。';
  exit;
end;
if s='颐之噬嗑' then
begin
  result:='随阳转行，不失其常。君安于乡，国无咎殃。';
  exit;
end;
if s='颐之贲' then
begin
  result:='群虎入邑，求索肉食。大人御守，君不失国。';
  exit;
end;
if s='颐之剥' then
begin
  result:='弱足刖跟，不利出门。商贾无赢，折崩为患。汤火之忧，转解喜来。';
  exit;
end;
if s='颐之复' then
begin
  result:='夏台羑里，汤文厄处。鬼侯歠醢，岐人悦喜。';
  exit;
end;
if s='颐之无妄' then
begin
  result:='栋桡榱坏，廊屋大败。宫阙空廓，如冬枯树。';
  exit;
end;
if s='颐之大畜' then
begin
  result:='谗以内安，不利其国。室家大惧，幽囚重闭。疾病多求，罪乱愦愦。';
  exit;
end;
if s='颐之大过' then
begin
  result:='六龙俱怒，战于坂下。苍黄不胜，旅人艰苦。';
  exit;
end;
if s='颐之坎' then
begin
  result:='天下雷行，尘起不明。市空无羊，疾人忧凶。三木不辜，脱归家邦。';
  exit;
end;
if s='颐之离' then
begin
  result:='一指食肉，口无所得。染其鼎鼐，舌馋于腹。';
  exit;
end;
if s='颐之咸' then
begin
  result:='喜笑不常，失其福庆。口辟言疥，行者畏忌。';
  exit;
end;
if s='颐之恒' then
begin
  result:='毛生豪背，国乐民富。侯王有德。';
  exit;
end;
if s='颐之遁' then
begin
  result:='豮豕童牛，害伤不来。三女同堂，生我福仁。';
  exit;
end;
if s='颐之大壮' then
begin
  result:='江河淮济，盈溢为害。邑被其濑，年困无岁。';
  exit;
end;
if s='颐之晋' then
begin
  result:='两虎争斗，股创无处。不成仇雠，行解却去。';
  exit;
end;
if s='颐之明夷' then
begin
  result:='五岳四渎，润洽为德。行不失理，民赖恩福。';
  exit;
end;
if s='颐之家人' then
begin
  result:='载车乘马，南逢君子。与我嘉福，虽忧无咎。';
  exit;
end;
if s='颐之睽' then
begin
  result:='缺囊破筐，空无黍粱。不媚如公，弃于粪墙。';
  exit;
end;
if s='颐之蹇' then
begin
  result:='杀行桃园，见虎东还。螳螂之敌，使我无患。';
  exit;
end;
if s='颐之解' then
begin
  result:='箕仁入室，政衰弊极。抱其彝器，奔于他国，因祸受福。';
  exit;
end;
if s='颐之损' then
begin
  result:='庭燎夜明，追古伤今。阳弱不制，阴雄坐戾。';
  exit;
end;
if s='颐之益' then
begin
  result:='悬貆素飡，食非其任。失舆剥庐，休坐徙居。';
  exit;
end;
if s='颐之夬' then
begin
  result:='嘉门福喜，缯帛盛炽。日就为得，财宝敌国。';
  exit;
end;
if s='颐之姤' then
begin
  result:='执绥登车，骖乘东游。说齐解燕，霸国以安。';
  exit;
end;
if s='颐之萃' then
begin
  result:='水深无桴，蹇难何游。商伯失利，庶人愁忧。';
  exit;
end;
if s='颐之升' then
begin
  result:='三鸟鸳鸯，相随俱行。南到饶泽，食鱼与粱。君子长乐，见恶不伤。';
  exit;
end;
if s='颐之困' then
begin
  result:='远视目盼，临深苦眩。不离越都，旅人留连。';
  exit;
end;
if s='颐之井' then
begin
  result:='终风东西，涣散四方。终日至暮，不见子欢。';
  exit;
end;
if s='颐之革' then
begin
  result:='言无要约，不成券契。殷叔季姬，公孙争之。强人委禽，不悦于心。';
  exit;
end;
if s='颐之鼎' then
begin
  result:='牛耳聋聩，不知声味。远贤贱仁，自令乱愦。';
  exit;
end;
if s='颐之震' then
begin
  result:='从商进游，饱食无忧。囹圄之困，中子见囚。';
  exit;
end;
if s='颐之艮' then
begin
  result:='据斗运枢，顺天无忧。与乐并居。';
  exit;
end;
if s='颐之渐' then
begin
  result:='姬奭姜望，为武守邦。屏藩燕齐，周室以强，子孙亿昌。';
  exit;
end;
if s='颐之归妹' then
begin
  result:='亡羊东泽，循堤直北。子思其母，复返其所。';
  exit;
end;
if s='颐之丰' then
begin
  result:='张目开口，舌直距齿。然诺不行，政乱无绪。';
  exit;
end;
if s='颐之旅' then
begin
  result:='载船逢火，忧不为祸。家在山东，入门见公。';
  exit;
end;
if s='颐之巽' then
begin
  result:='绝国异路，心不相慕。蛇子两角，使我相恶。';
  exit;
end;
if s='颐之兑' then
begin
  result:='鼻项移徙，居不安坐。枯竹复生，失其宠荣。';
  exit;
end;
if s='颐之涣' then
begin
  result:='火息无光，年岁不长，殷商以亡。';
  exit;
end;
if s='颐之节' then
begin
  result:='文王四乳，仁爱笃厚。子畜十男，夭折无有。';
  exit;
end;
if s='颐之中孚' then
begin
  result:='熊罴豹狼，在山阴阳。伺鹿取獐，道候畏难。';
  exit;
end;
if s='颐之小过' then
begin
  result:='凋叶被霜，独蔽不伤。驾入喜门，与福为婚。';
  exit;
end;
if s='颐之既济' then
begin
  result:='黄离白日，照我四国。元首昭明，民赖恩福。';
  exit;
end;
if s='颐之未济' then
begin
  result:='顺风直北，与欢相得。岁熟年丰，邑无盗贼。';
  exit;
end;


end;


function daguo(const s: string):string;
begin
if s='大过' then
begin
  result:='典册法书，藏在兰台。虽遭乱溃，独不遇灾。';
  exit;
end;
if s='大过之乾' then
begin
  result:='日在北陆，阴蔽阳目。万物空虚，不见长育。';
  exit;
end;
if s='大过之坤' then
begin
  result:='鬼泣哭社，悲商无后。甲子昧爽，殷人绝祀。';
  exit;
end;
if s='大过之屯' then
begin
  result:='涉涂履危，不利有为。安坐垂裳，乃无灾殃。门户自开，君忧不昌。';
  exit;
end;
if s='大过之蒙' then
begin
  result:='阳失其纪，枯木复起。秋叶冬华，君不得息。';
  exit;
end;
if s='大过之需' then
begin
  result:='大树之子，百条共母。当夏六月，枝叶盛茂。鸾凤以庇，召伯避暑。翩翩偃仰，各得其所。';
  exit;
end;
if s='大过之讼' then
begin
  result:='秉钺执殳，挑战先驱。不从元帅，败破为忧。';
  exit;
end;
if s='大过之师' then
begin
  result:='启室开关，巡狩释冤。夏台羑里，汤文悦喜。';
  exit;
end;
if s='大过之比' then
begin
  result:='衰来无成，渊溺在项。狗吠夜惊，家乃不宁。';
  exit;
end;
if s='大过之小畜' then
begin
  result:='西邻少女，未有所许。志如委衣，不出房户。心无所得，傅母何咎。';
  exit;
end;
if s='大过之履' then
begin
  result:='狗吠夜惊，履鬼头颈。危者弗倾，患者不成。';
  exit;
end;
if s='大过之泰' then
begin
  result:='当年少寡，独与孤处。鸡鸣犬吠，无敢难者。我生不辰，独婴寒苦。';
  exit;
end;
if s='大过之否' then
begin
  result:='无道之君，鬼哭其门。命与下国，绝不得食。';
  exit;
end;
if s='大过之同人' then
begin
  result:='乘龙南游，夜过糟丘，脱厄无忧。';
  exit;
end;
if s='大过之大有' then
begin
  result:='马踬车伤，长舌破家。东关二五，晋君出走。';
  exit;
end;
if s='大过之谦' then
begin
  result:='瓜葩瓠实，百女同室。醯苦不熟，未有妃合。';
  exit;
end;
if s='大过之豫' then
begin
  result:='晨风文翰，大举就温。昧过我邑，羿无所得。';
  exit;
end;
if s='大过之随' then
begin
  result:='瀺瀺浞浞，涂泥至毂。马泞不进，虎啮我足。';
  exit;
end;
if s='大过之蛊' then
begin
  result:='胶车驾东，与雨相逢。五楘解堕，顿辀独坐，忧为身祸。';
  exit;
end;
if s='大过之临' then
begin
  result:='六家作权，公室剖分。阴制其阳，唐叔失明。';
  exit;
end;
if s='大过之观' then
begin
  result:='去室离家，来奔大都。火息复明，姬伯以昌，商人失功。';
  exit;
end;
if s='大过之噬嗑' then
begin
  result:='牧羊稻园，闻虎喧讙。危惧喘息，终无祸患。';
  exit;
end;
if s='大过之贲' then
begin
  result:='婴儿求乳，母归其子。黄麑悦喜，乃得甘饱。';
  exit;
end;
if s='大过之剥' then
begin
  result:='廓落失业，跨祸度福，利无所得。';
  exit;
end;
if s='大过之复' then
begin
  result:='出入无时，忧患为灾。行人失牛，利去不来。老马遗驹，勿与久居。';
  exit;
end;
if s='大过之无妄' then
begin
  result:='风怒漂木，女惑生疾。阳失其服，阴孽为贼。';
  exit;
end;
if s='大过之大畜' then
begin
  result:='车马病伤，不利越乡。幽人元亨，去晦就明。';
  exit;
end;
if s='大过之颐' then
begin
  result:='三奇六耦，各有所主。周南召南，圣人所在。德义流行，民悦以喜。';
  exit;
end;
if s='大过之坎' then
begin
  result:='坐争立讼，纷纷讻讻。卒成祸乱，灾及家公。';
  exit;
end;
if s='大过之离' then
begin
  result:='凶忧为残，使我不安。从之南国，以除心疾。';
  exit;
end;
if s='大过之咸' then
begin
  result:='爱我婴女，牵衣不与。冀幸高贵，反得贱下。';
  exit;
end;
if s='大过之恒' then
begin
  result:='宜行贾市，所聚必倍。载喜抱子，与利为友。';
  exit;
end;
if s='大过之遁' then
begin
  result:='坐席未温，忧来扣门。踰墙北走，兵交我后，脱于虎口。';
  exit;
end;
if s='大过之大壮' then
begin
  result:='赤帝悬车，废职不朝。叔带之灾，居于汜庐。';
  exit;
end;
if s='大过之晋' then
begin
  result:='子畏于匡，厄困陈蔡。明德不危，竟自免害。';
  exit;
end;
if s='大过之明夷' then
begin
  result:='逐雁南飞，马牛疾罢。不见渔池，失利忧危。牢户之冤，脱免无患。';
  exit;
end;
if s='大过之家人' then
begin
  result:='推辇上山，高仰重难。终日至暮，不见阜颠。';
  exit;
end;
if s='大过之睽' then
begin
  result:='忧不为患，福在堂门，使吾偃安。';
  exit;
end;
if s='大过之蹇' then
begin
  result:='春桃生华，季女宜家。受福多年，男为邦君。';
  exit;
end;
if s='大过之解' then
begin
  result:='高山之颠，去地亿千。虽有兵寇，足以自守。';
  exit;
end;
if s='大过之损' then
begin
  result:='过时历月，役夫顦顇。处子叹室，思我伯叔。';
  exit;
end;
if s='大过之益' then
begin
  result:='太微复明，说升傅岩，乃称高宗。';
  exit;
end;
if s='大过之夬' then
begin
  result:='旁多小星，三五在东。早夜晨兴，劳苦无功。';
  exit;
end;
if s='大过之姤' then
begin
  result:='东乡烦烦，相与笑言。子般鞭荦，圉人作患。';
  exit;
end;
if s='大过之萃' then
begin
  result:='鼻移在头，枯苇复生。下朽上荣，家乃不宁，其舍不成。';
  exit;
end;
if s='大过之升' then
begin
  result:='虾蟆群聚，从天请雨。云雷集聚，应时辄下，得其愿所。';
  exit;
end;
if s='大过之困' then
begin
  result:='大步上车，南到喜家。送我貂裘，与福载来。';
  exit;
end;
if s='大过之井' then
begin
  result:='贼仁伤德，天怒不福。斩刈宗社，失其土宇。';
  exit;
end;
if s='大过之革' then
begin
  result:='从猬见虎，虽危不殆，终已无咎。';
  exit;
end;
if s='大过之鼎' then
begin
  result:='履素行德，卒蒙佑福。与尧侑食，君子有息。';
  exit;
end;
if s='大过之震' then
begin
  result:='利在北陆，寒苦难得。忧危之患，福为道门。商叔生存。';
  exit;
end;
if s='大过之艮' then
begin
  result:='四蹇六盲，足痛难行。终日至暮，不离其乡。';
  exit;
end;
if s='大过之渐' then
begin
  result:='台骀昧子，明知地理。障泽宣流，封居河涘。';
  exit;
end;
if s='大过之归妹' then
begin
  result:='蓄水待时，以备火灾。柱车绊马，郊行出旅，可以无咎。';
  exit;
end;
if s='大过之丰' then
begin
  result:='岁暮花落，君衰于德。荣宠陨坠，阴夺其室。';
  exit;
end;
if s='大过之旅' then
begin
  result:='夏败桀悲，千里为市。黄落殪郁，利得无有。';
  exit;
end;
if s='大过之巽' then
begin
  result:='仲春巡狩，东见群后。昭德允明，不失其所。';
  exit;
end;
if s='大过之兑' then
begin
  result:='挒絜累累，缔结难解。嫫母衒嫁，媒不得坐，自为身祸。';
  exit;
end;
if s='大过之涣' then
begin
  result:='鸟鸣庭中，以戒凶灾。重门击柝，备忧暴客。';
  exit;
end;
if s='大过之节' then
begin
  result:='朝霁暮露，瀐我衣襦，退无得牛。';
  exit;
end;
if s='大过之中孚' then
begin
  result:='抱璞怀玉，与桀相触。诎坐不申，道无良人。';
  exit;
end;
if s='大过之小过' then
begin
  result:='两心相悦，共其茅藘。夙夜在公，不离房中，得君子意。';
  exit;
end;
if s='大过之既济' then
begin
  result:='载馈如田，破鉏失餐。苗秽不辟，独饥于年。';
  exit;
end;
if s='大过之未济' then
begin
  result:='甘露醴泉，太平机关。仁德咸应，岁乐民安。';
  exit;
end;

end;

function kan(const s: string):string;
begin
if s='坎' then
begin
  result:='有鸟黄足，归呼季玉。从我睢阳，可避刀兵。与福俱行，有命久长。';
  exit;
end;
if s='坎之乾' then
begin
  result:='太王为父，季历孝友。文武圣明，仁德兴起。孔张四国，载福绥厚。';
  exit;
end;
if s='坎之坤' then
begin
  result:='猿堕高木，不踒手足。保我金玉，还归其室。';
  exit;
end;
if s='坎之屯' then
begin
  result:='重耳恭敏，遇谗出处。北奔戎狄，经涉齐楚。以秦伐怀，诛杀子圉，身为伯主。';
  exit;
end;
if s='坎之蒙' then
begin
  result:='倚锋据戟，伤我胸臆，耗折不息。';
  exit;
end;
if s='坎之需' then
begin
  result:='狗冠鸡步，君失其所。出门抵山，行者忧难。水灌我园，高陆为泉。';
  exit;
end;
if s='坎之讼' then
begin
  result:='众鸟所翔，中有大怪。丈身长头，为我惊忧。';
  exit;
end;
if s='坎之师' then
begin
  result:='雷行相逐，未有休息。战于平陆，为夷所覆。';
  exit;
end;
if s='坎之比' then
begin
  result:='禹凿龙门，通利水泉。同注沧海，民得安土。';
  exit;
end;
if s='坎之小畜' then
begin
  result:='尧舜仁德，养贤致福。众英积聚，国无寇贼。';
  exit;
end;
if s='坎之履' then
begin
  result:='陆居少泉，山高无云。车行千里，涂不污轮，渴为我怨。';
  exit;
end;
if s='坎之泰' then
begin
  result:='朝视不明，夜不见光。暝抵空床，季女奔亡，怆然心伤。';
  exit;
end;
if s='坎之否' then
begin
  result:='齐鲁永国，仁圣辅德。进礼雅言，定公以安。';
  exit;
end;
if s='坎之同人' then
begin
  result:='束帛玄圭，君以布德。伊吕百里，应聘辅国。';
  exit;
end;
if s='坎之大有' then
begin
  result:='棘钩我襦，为绊所拘。灵巫拜祝，祸不成灾。东山之邑，中有土服，可以饶饱。';
  exit;
end;
if s='坎之谦' then
begin
  result:='门烧屋燔，为下所残。西行出户，顺其道里。虎卧不起，牛羊欢喜。';
  exit;
end;
if s='坎之豫' then
begin
  result:='墙高蔽目，昆仑翳日。远行无明，不见欢叔。';
  exit;
end;
if s='坎之随' then
begin
  result:='天地际会，不见内外。祖辞遣送，与世长诀。';
  exit;
end;
if s='坎之蛊' then
begin
  result:='深水难涉，泥涂至毂。牛罢不进，泞陷为疾。';
  exit;
end;
if s='坎之临' then
begin
  result:='羊警虎狼，耸耳群聚。无益于僵，为齿所伤。';
  exit;
end;
if s='坎之观' then
begin
  result:='履蛇蹑虺，与鬼相视。警恐失气，如骑虎尾。';
  exit;
end;
if s='坎之噬嗑' then
begin
  result:='车惊人堕，两轮脱去。行者不至，主人忧惧。缔结复解，夜明为喜。';
  exit;
end;
if s='坎之贲' then
begin
  result:='南贩北贾，与怨为市，利得百倍。';
  exit;
end;
if s='坎之剥' then
begin
  result:='延陵适鲁，观乐太史。车辚白颠，知秦兴起。卒兼其国，一统为主。';
  exit;
end;
if s='坎之复' then
begin
  result:='出门逢患，与福为怨。更相击刺，伤我手端。';
  exit;
end;
if s='坎之无妄' then
begin
  result:='獐鹿群走，自然燕喜。公子好游，他人多有。';
  exit;
end;
if s='坎之大畜' then
begin
  result:='恭宽信敏，履福不殆。从其邦域，与喜相得。';
  exit;
end;
if s='坎之颐' then
begin
  result:='欲飞无翼，鼎重折足。失其福利，庖羞为贼。';
  exit;
end;
if s='坎之大过' then
begin
  result:='府藏之富，王以赈货。捕鱼河海，罟网多得。';
  exit;
end;
if s='坎之离' then
begin
  result:='阴生麏鹿，鼠舞鬼哭。灵龟陆处，釜甑尘土。仁智盘桓，国乱无绪。';
  exit;
end;
if s='坎之咸' then
begin
  result:='风尘暝迷，不见南北。行人失路，复反其室。';
  exit;
end;
if s='坎之恒' then
begin
  result:='金革白黄，宜利戎市。嫁娶有息，商人悦喜。';
  exit;
end;
if s='坎之遁' then
begin
  result:='匏瓜之德，宜系不食。君子失舆，官政怀忧。';
  exit;
end;
if s='坎之大壮' then
begin
  result:='乘船渡济，载水逢火。赖得免患，我有所恃。';
  exit;
end;
if s='坎之晋' then
begin
  result:='道险多石，伤车折轴。与市为仇，不利客宿。';
  exit;
end;
if s='坎之明夷' then
begin
  result:='托寄之徒，不利请求。结衿无言，乃有悔患。';
  exit;
end;
if s='坎之家人' then
begin
  result:='三羊争雌，相逐犇驰。终日不食，精气竭罢。';
  exit;
end;
if s='坎之睽' then
begin
  result:='退恶防患，见在心苗。日之中息，解释倒悬。';
  exit;
end;
if s='坎之蹇' then
begin
  result:='两足四翼，飞入嘉国。宁我伯姊，与母相得。';
  exit;
end;
if s='坎之解' then
begin
  result:='寒露所凌，渐至坚冰。草木疮伤，华落叶亡。';
  exit;
end;
if s='坎之损' then
begin
  result:='后稷农功，富利我国。南亩治理，一室百子。';
  exit;
end;
if s='坎之益' then
begin
  result:='设网张罗，捕鱼园池。网罟自决，虽得复失。危诉之患，受其忻欢。';
  exit;
end;
if s='坎之夬' then
begin
  result:='路舆县休，侯伯恣骄。上失其威，周室衰微。';
  exit;
end;
if s='坎之姤' then
begin
  result:='逐走追亡，相及扶桑。复见其乡，使我悔丧。';
  exit;
end;
if s='坎之萃' then
begin
  result:='履禄绥厚，载福受祉。衰微复起，继世久长。疾病献麦，晋人赴告。';
  exit;
end;
if s='坎之升' then
begin
  result:='鳏寡孤独，禄命苦薄。入宫无妻，武子哀悲。';
  exit;
end;
if s='坎之困' then
begin
  result:='山没丘浮，陆为水鱼。燕雀无巢，民无室庐。';
  exit;
end;
if s='坎之井' then
begin
  result:='冠带南游，与福喜期。徼于嘉国，拜位逢时。';
  exit;
end;
if s='坎之革' then
begin
  result:='东行亡羊，失其羝牂。少女无夫，独坐空庐。';
  exit;
end;
if s='坎之鼎' then
begin
  result:='探雀捕鱼，耕田捕鳅。费日无功，右手空虚。';
  exit;
end;
if s='坎之震' then
begin
  result:='东行饮酒，与喜相抱。福为吾家，利来从父。水泽之徒，望邑而处';
  exit;
end;
if s='坎之艮' then
begin
  result:='妄怒失精，自令畏悔。忪忪之惧，君子无咎。';
  exit;
end;
if s='坎之渐' then
begin
  result:='白云如带，往往来处。飞风送迎，大雹将下。击我禾稼，僵死不起。';
  exit;
end;
if s='坎之归妹' then
begin
  result:='南至之日，阳消不息。北风烈寒，万物藏伏。';
  exit;
end;
if s='坎之丰' then
begin
  result:='火中仲夏，鸿雁解舍。体重难移，未能高举。君子显名，不失其誉。';
  exit;
end;
if s='坎之旅' then
begin
  result:='北行出门，履蹈踬颠。踒足据涂，污我襦袴。';
  exit;
end;
if s='坎之巽' then
begin
  result:='轻车醊祖，疾风暴起。促乱祭器，飞阳鼓舞。明神降佑，道无害寇。';
  exit;
end;
if s='坎之兑' then
begin
  result:='酒为欢伯，除忧来乐。福喜入门，与君相索，使我有得。';
  exit;
end;
if s='坎之涣' then
begin
  result:='三足孤乌，灵明督邮。司过罚恶，自贼其家，毁败为忧。';
  exit;
end;
if s='坎之节' then
begin
  result:='三河俱合，水怒涌跃。坏我王屋，民饥于食。';
  exit;
end;
if s='坎之中孚' then
begin
  result:='南行枣园，恶虎畏班。执火销金，使我无患。';
  exit;
end;
if s='坎之小过' then
begin
  result:='鹿求过山，与利为怨。闇聋不言，谁知其欢。';
  exit;
end;
if s='坎之既济' then
begin
  result:='行旅困蹴，失明守宿。囹圄之忧，启蛰出游。';
  exit;
end;
if s='坎之未济' then
begin
  result:='据棘履杞，跌刺为忧。夫妇不和，乱我良家。';
  exit;
end;


end;

function li(const s: string):string;
begin
if s='离' then
begin
  result:='时乘六龙，为帝使东。达命宣旨，无所不通。';
  exit;
end;
if s='离之乾' then
begin
  result:='执辔四骊，王以为师。阴阳之明，载受东齐。';
  exit;
end;
if s='离之坤' then
begin
  result:='春秋祷祝，解祸除忧，君子无咎。';
  exit;
end;
if s='离之屯' then
begin
  result:='坐朝乘轩，据国子民。虞叔受命，六合和亲。';
  exit;
end;
if s='离之蒙' then
begin
  result:='开户下堂，与福相迎。禄于公室，曾孙以昌。';
  exit;
end;
if s='离之需' then
begin
  result:='高木腐巢，漏湿难居。不去甘棠，使我无忧。';
  exit;
end;
if s='离之讼' then
begin
  result:='三女为奸，俱游高园。背室夜行，与伯笑言。不忍主母，为失醴酒，冤尤谁告。';
  exit;
end;
if s='离之师' then
begin
  result:='漏巵盛酒，无以养老。春贷黍稷，年岁实有。履道坦坦，平安无咎。';
  exit;
end;
if s='离之比' then
begin
  result:='松柏枝叶，常茂不落。君子惟体，日富安乐。';
  exit;
end;
if s='离之小畜' then
begin
  result:='夫妇不谐，为燕攻齐。良弓不张，骑劫忧亡。';
  exit;
end;
if s='离之履' then
begin
  result:='出令不胜，反为大灾。强不克弱，君受其忧。';
  exit;
end;
if s='离之泰' then
begin
  result:='犇牛相错，败乱绪业，民不得作。';
  exit;
end;
if s='离之否' then
begin
  result:='载璧秉圭，请命于河。周公克敏，冲人瘳愈。';
  exit;
end;
if s='离之同人' then
begin
  result:='素车伪马，不任重负。王侯出征，忧危为咎。';
  exit;
end;
if s='离之大有' then
begin
  result:='大树之子，同条共母。比至火中，枝叶盛茂。';
  exit;
end;
if s='离之谦' then
begin
  result:='壅遏堤防，水不得行。火盛阳光，阴蜺伏藏，走归其乡。';
  exit;
end;
if s='离之豫' then
begin
  result:='五岳四渎，润洽为德。行不失理，民赖恩福。';
  exit;
end;
if s='离之随' then
begin
  result:='驾骏南游，虎惊我牛。阴不奉阳，其光显扬。言之谦谦，奉义解患。';
  exit;
end;
if s='离之蛊' then
begin
  result:='早霜晚雪，伤害禾麦。损功弃力，饥无所食。';
  exit;
end;
if s='离之临' then
begin
  result:='岐周海隅，有乐无忧。可以避难，全身保财。';
  exit;
end;
if s='离之观' then
begin
  result:='阴蔽其阳，日暗不明。君忧其国，求骍得黄。驹犊从行。';
  exit;
end;
if s='离之噬嗑' then
begin
  result:='金城铁郭，上下同力。政平民欢，寇不敢贼。';
  exit;
end;
if s='离之贲' then
begin
  result:='平公有疾，迎医秦国。和不能愈，晋人赴告。';
  exit;
end;
if s='离之剥' then
begin
  result:='戴尧扶禹，松乔彭祖。西遇王母，道路夷易，无敢难者。';
  exit;
end;
if s='离之复' then
begin
  result:='羔羊皮革，君子朝服。辅政扶德，以合万国。';
  exit;
end;
if s='离之无妄' then
begin
  result:='振钟鼓乐，将军受福。安帖之家，虎狼为忧。履危不殆，师行何咎。';
  exit;
end;
if s='离之大畜' then
begin
  result:='嫡庶不明，孽乱生殃，陈失其邦。';
  exit;
end;
if s='离之颐' then
begin
  result:='鸟惊狐鸣，国乱不宁。上弱下强，为阴所刑。';
  exit;
end;
if s='离之大过' then
begin
  result:='被绣夜行，不见文章。安坐于堂，乃无咎殃。长子帅师，得其正常。';
  exit;
end;
if s='离之坎' then
begin
  result:='六月采芑，征伐无道。张仲方叔，克胜饮酒。';
  exit;
end;
if s='离之咸' then
begin
  result:='昧暮乘车，东至伯家。踰梁越河，济脱无他。';
  exit;
end;
if s='离之恒' then
begin
  result:='东风解冻，和气兆升，年岁丰登。';
  exit;
end;
if s='离之遁' then
begin
  result:='三狸捕鼠，遮遏前后。死于圜城，不得脱走。';
  exit;
end;
if s='离之大壮' then
begin
  result:='绥德孔明，履禄久长。贵且有光，疾病忧伤。';
  exit;
end;
if s='离之晋' then
begin
  result:='三虎搏狼，力不相当。如摧腐枯，一击破亡。';
  exit;
end;
if s='离之明夷' then
begin
  result:='使伯采桑，狠不肯行。与叔争讼，更相毁伤。';
  exit;
end;
if s='离之家人' then
begin
  result:='抱空握虚，鸮惊我雏，利去不来。';
  exit;
end;
if s='离之睽' then
begin
  result:='李华再实，鸿卵降集。仁哲以兴，荫国受福。';
  exit;
end;
if s='离之蹇' then
begin
  result:='东山皋洛，勇悍不服。金玦玩好，衣为身贼。';
  exit;
end;
if s='离之解' then
begin
  result:='飞蚊污身，为邪所牵。青蝇分白，贞孝放逐。';
  exit;
end;
if s='离之损' then
begin
  result:='南山大木，文身其目。出入制命，东里宣政。主尊君安，郑国无患。';
  exit;
end;
if s='离之益' then
begin
  result:='泉起昆仑，东出玉门。流为九河，无有忧患。';
  exit;
end;
if s='离之夬' then
begin
  result:='命短不长，中年夭伤。思及哭堂，哀其子亡。';
  exit;
end;
if s='离之姤' then
begin
  result:='君臣不和，上下失宜，宗子哀歌。';
  exit;
end;
if s='离之萃' then
begin
  result:='苛政日作，螟食华叶。割下啖上，民被其贼。秋无所得。';
  exit;
end;
if s='离之升' then
begin
  result:='南行载铠，登履九魁。车伤牛罢，日暮嗟咨。';
  exit;
end;
if s='离之困' then
begin
  result:='春东夏南，随阳有功，与利相逢。';
  exit;
end;
if s='离之井' then
begin
  result:='头尾颠倒，不知绪处，君失其国。';
  exit;
end;
if s='离之革' then
begin
  result:='言无要约，不成契券。殷叔季姬，公孙争之。强入委禽，不悦于心。';
  exit;
end;
if s='离之鼎' then
begin
  result:='缺破不成，胎卵不生，不见其形。';
  exit;
end;
if s='离之震' then
begin
  result:='见蛇交悟，惜蚖畏恶，心乃无悔。';
  exit;
end;
if s='离之艮' then
begin
  result:='河水孔穴，坏败我室。水深无涯，鱼鳖倾倒。';
  exit;
end;
if s='离之渐' then
begin
  result:='五岳四渎，地得以安。高而不危，敬慎避患。';
  exit;
end;
if s='离之归妹' then
begin
  result:='南至之日，阳消不息。北风冽寒，万物藏伏。';
  exit;
end;
if s='离之丰' then
begin
  result:='五利四福，俱田高邑。黍稷盛茂，多获高稻。';
  exit;
end;
if s='离之旅' then
begin
  result:='公孙驾车，载游东齐。延陵说产，遗季纻衣。';
  exit;
end;
if s='离之巽' then
begin
  result:='蛟虬当道，民困愁苦。望羊置群，长子在门。';
  exit;
end;
if s='离之兑' then
begin
  result:='金玉满堂，忠直乘危。三老冻饿，鬼夺其室。求鱼河海，网举必得。';
  exit;
end;
if s='离之涣' then
begin
  result:='日入明匿，阳晶隐伏。小人劳心，求事不得。';
  exit;
end;
if s='离之节' then
begin
  result:='频逢社饮，失利后福。不如子息，旧居故处。申请必得，乃无大悔。';
  exit;
end;
if s='离之中孚' then
begin
  result:='南有嘉鱼，驾黄取。鲂鱮诩诩，利来无忧。';
  exit;
end;
if s='离之小过' then
begin
  result:='黄裳建元，文德在身。禄佑洋溢，封为齐君。';
  exit;
end;
if s='离之既济' then
begin
  result:='口不从心，欲东反西。与意乖戾，动举失便。';
  exit;
end;
if s='离之未济' then
begin
  result:='虎狼之乡，日争凶讼。叨尔为长，不能定从。';
  exit;
end;

end;

function xian(const s: string):string;
begin
if s='咸' then
begin
  result:='雌单独居，归其本巢。毛羽憔悴，志如死灰。';
  exit;
end;
if s='咸之乾' then
begin
  result:='小窗多明，道里利通。仁贤君子，国安不僵。';
  exit;
end;
if s='咸之坤' then
begin
  result:='心恶来怪，冲冲何惧。颜渊子骞，尼父圣诲。';
  exit;
end;
if s='咸之屯' then
begin
  result:='鸟鸣呼子，哺以酒脯。高栖水处，来归其母。';
  exit;
end;
if s='咸之蒙' then
begin
  result:='国马生角，阴孽萌作。变易常服，君失于宅。';
  exit;
end;
if s='咸之需' then
begin
  result:='入宇多悔，耕石不富。衡门屡空，使士失意。';
  exit;
end;
if s='咸之讼' then
begin
  result:='诸孺行贾，远涉山阻。与旅为市，不危不殆，利得十倍。';
  exit;
end;
if s='咸之师' then
begin
  result:='梁破桥坏，水深多畏。陈郑之间，绝不得前。';
  exit;
end;
if s='咸之比' then
begin
  result:='双凫俱飞，欲归稻池。经涉萑泽，为矢所射，伤我胸臆。';
  exit;
end;
if s='咸之小畜' then
begin
  result:='谩诞不成，倍梁灭文。许人卖牛，三夫争之。失利后时，公孙怀忧。';
  exit;
end;
if s='咸之履' then
begin
  result:='南国饥凶，民失糟糠。少子困捕，利无所得。';
  exit;
end;
if s='咸之泰' then
begin
  result:='狗吠非主，狼虎日扰。惊我东西，不为家咎。';
  exit;
end;
if s='咸之否' then
begin
  result:='望龙无目，不见手足。入水求玉，失其所欲。';
  exit;
end;
if s='咸之同人' then
begin
  result:='以鹿为马，欺误其主。闻言不信，三日为咎。黄龙三子，中乐不殆。';
  exit;
end;
if s='咸之大有' then
begin
  result:='养幼新婚，未能出门。登宋望齐，不见太师。';
  exit;
end;
if s='咸之谦' then
begin
  result:='王孙季子，相与为友。明允笃诚，升擢荐举。';
  exit;
end;
if s='咸之豫' then
begin
  result:='山水暴怒，坏梁折柱。稽难行旅，留连愁苦。';
  exit;
end;
if s='咸之随' then
begin
  result:='鹯鸠徙巢，西至平州。遭逢雷电，碎我苇芦。室家饥寒，思吾故初。';
  exit;
end;
if s='咸之蛊' then
begin
  result:='登高伤轴，上阪弃粟。贩盐不利，买牛折角。';
  exit;
end;
if s='咸之临' then
begin
  result:='祝鮀王孙，能事鬼神。节用绥民，卫国以存。飨我旨酒，眉寿多年。';
  exit;
end;
if s='咸之观' then
begin
  result:='九里十山，道却峻难。牛马不前，复返来还。';
  exit;
end;
if s='咸之噬嗑' then
begin
  result:='枯树不花，空渊无鱼。旧鸟飞翔，利弃我去。';
  exit;
end;
if s='咸之贲' then
begin
  result:='雄狐绥绥，登上崔嵬。昭告显功，大福允兴。';
  exit;
end;
if s='咸之剥' then
begin
  result:='哑哑笑喜，相与饮酒。长乐行觞，千秋起舞，拜受大福。';
  exit;
end;
if s='咸之复' then
begin
  result:='大椎破毂，长舌乱国。床第之言，三世不安。';
  exit;
end;
if s='咸之无妄' then
begin
  result:='男女合室，二姓同食。婚姻孔云，宜我孝孙。';
  exit;
end;
if s='咸之大畜' then
begin
  result:='千仞之墙，祸不入门。金笼铁疏，利以辟兵。欲南上阪，轴方不转，远车复反。';
  exit;
end;
if s='咸之颐' then
begin
  result:='华言风语，自相诖误。终无凶事，安宁如故。';
  exit;
end;
if s='咸之大过' then
begin
  result:='泛泛柏舟，流行不休。耿耿寤寐，心怀大忧。仁不遇时，退隐穷居。';
  exit;
end;
if s='咸之坎' then
begin
  result:='大尾小头，重不可摇。上弱下强，阴制其雄。';
  exit;
end;
if s='咸之离' then
begin
  result:='一身三口，语无所主。东西南北，迷惑失道。';
  exit;
end;
if s='咸之恒' then
begin
  result:='南行求福，与喜相得。封受上赏，鼎足辅国。';
  exit;
end;
if s='咸之遁' then
begin
  result:='过时不归，雌雄苦悲。徘徊外国，与母分离。';
  exit;
end;
if s='咸之大壮' then
begin
  result:='尧舜在国，阴阳和得。涿聚衣裳，晋人无殃。';
  exit;
end;
if s='咸之晋' then
begin
  result:='周成之隆，越裳夷通。疾病多祟，鬼哭其公。狼子野心，宿客不同。';
  exit;
end;
if s='咸之明夷' then
begin
  result:='申酉脱服，牛马休息。君子以安，劳者得欢。';
  exit;
end;
if s='咸之家人' then
begin
  result:='凯风无母，何恃何怙。幼孤弱子，为人所苦。';
  exit;
end;
if s='咸之睽' then
begin
  result:='出门上堂，从容牖房，不失其常。天牢地户，劳者忧苦。';
  exit;
end;
if s='咸之蹇' then
begin
  result:='天厌周德，命与南国。以礼静民，兵革休息。';
  exit;
end;
if s='咸之解' then
begin
  result:='堂桑折冲，佐斗者伤。暴君失国，良臣被殃。';
  exit;
end;
if s='咸之损' then
begin
  result:='合欢之国，嘉喜我福。东岳西山，朝齐成恩。';
  exit;
end;
if s='咸之益' then
begin
  result:='耕石不生，弃礼无名。缝衣失针，襦袴不成。';
  exit;
end;
if s='咸之夬' then
begin
  result:='聋瞢闇盲，跛倚不行。坐户孚骸，身被火灾，困其多忧。';
  exit;
end;
if s='咸之姤' then
begin
  result:='生长太平，仁政流行。四方归德，社稷康荣。';
  exit;
end;
if s='咸之萃' then
begin
  result:='桀跖并处，民人愁苦。拥兵荷粮，战于齐鲁。合卺同牢，姬姜并居。';
  exit;
end;
if s='咸之升' then
begin
  result:='南与凶居，破车失襦。西行无袴，亡其宝赂。';
  exit;
end;
if s='咸之困' then
begin
  result:='空槽注器，豚彘不至。张弓祝鸡，雄父飞去。';
  exit;
end;
if s='咸之井' then
begin
  result:='望尚阿衡，太宰周公。屏藩汤武，立为王侯。';
  exit;
end;
if s='咸之革' then
begin
  result:='朝鲜之地，箕子所保。宜家宜人，业处子孙。';
  exit;
end;
if s='咸之鼎' then
begin
  result:='息忧解笑，故贫今富。载乐履善，与福俱遇。';
  exit;
end;
if s='咸之震' then
begin
  result:='叔迎伯兄，遇巷在阳。君子季姬，并坐鼓簧。';
  exit;
end;
if s='咸之艮' then
begin
  result:='顺风纵火，芝艾俱死。三害集房，十子中伤。';
  exit;
end;
if s='咸之渐' then
begin
  result:='驾车入里，求鲜鲂鲤。非其肆居，自令失市。君子所在，安无危殆。';
  exit;
end;
if s='咸之归妹' then
begin
  result:='拔剑伤手，见敌不起。良臣无佐，困辱为咎。';
  exit;
end;
if s='咸之丰' then
begin
  result:='乱君之门，佐斗伤跟。营私贪禄，身为悔残。东下泰山，见我所欢。';
  exit;
end;
if s='咸之旅' then
begin
  result:='慈母望子，遥思不已。久客外野，使我心苦。';
  exit;
end;
if s='咸之巽' then
begin
  result:='鲂生江淮，一转为百。周流四海，无有患恶。';
  exit;
end;
if s='咸之兑' then
begin
  result:='甘露醴泉，太平機關。仁德感應，歲樂民安。';
  exit;
end;
if s='咸之涣' then
begin
  result:='采薇出车，鱼丽思初。上下役急，君子免忧。';
  exit;
end;
if s='咸之节' then
begin
  result:='豕生鱼鲂，鼠舞庭堂。雄佞施毒，上下昏荒，君失其邦。';
  exit;
end;
if s='咸之中孚' then
begin
  result:='三头六目，道畏难宿。寒苦之国，利不可得。';
  exit;
end;
if s='咸之小过' then
begin
  result:='燕雀衔茅，以生孚乳。昆弟六人，姣好孝悌。各同心愿，和悦相乐。';
  exit;
end;
if s='咸之既济' then
begin
  result:='文君之德，仁义致福。年无胎夭，国富民实。君子在室，曾累益息。';
  exit;
end;
if s='咸之未济' then
begin
  result:='愁梁未成，无以至陈。水深难涉，使我不前。';
  exit;
end;

end;

function heng(const s: string):string;
begin
if s='恒' then
begin
  result:='黄帝所生，伏羲之宇。兵刃不至，利以居止。';
  exit;
end;
if s='恒之乾' then
begin
  result:='登墀踒足，南行折角。长夜之室，不逢忠直。';
  exit;
end;
if s='恒之坤' then
begin
  result:='燕雀衰老，悲鸣入海。忧在不饰，差池其羽。颉颃上下，寡位独处。';
  exit;
end;
if s='恒之屯' then
begin
  result:='开门除忧，伯自外来。忉忉无患，我心得欢。';
  exit;
end;
if s='恒之蒙' then
begin
  result:='郊耕释耜，有所疑止，空虚无子。';
  exit;
end;
if s='恒之需' then
begin
  result:='张牙切齿，龂怒相视。祸起萧墙，牵引吾子。患不可解，忧惊吾母。';
  exit;
end;
if s='恒之讼' then
begin
  result:='履不容足，南山多棘。毋出房闼，乃无病疾。';
  exit;
end;
if s='恒之师' then
begin
  result:='牛骍亡子，鸣于大野。申后阴微，还归其母。';
  exit;
end;
if s='恒之比' then
begin
  result:='龙生于渊，因风升天。章虎炳文，为禽败轩。发輗温谷，暮宿昆仑。终身无患，光精照耀，不被祸难。';
  exit;
end;
if s='恒之小畜' then
begin
  result:='既嫁宜吉，出入无咎。三圣并居，国安无灾。';
  exit;
end;
if s='恒之履' then
begin
  result:='北陆阳伏，不知白黑。君子伤谗，正害善人。';
  exit;
end;
if s='恒之泰' then
begin
  result:='一身两头，近适二家，乱不可治。';
  exit;
end;
if s='恒之否' then
begin
  result:='牝马牡驹，岁字不休。君子衣服，利得有余。';
  exit;
end;
if s='恒之同人' then
begin
  result:='南行怀忧，破其金舆。安坐故庐，乃无灾患。';
  exit;
end;
if s='恒之大有' then
begin
  result:='忧人之患，履伤浮愿。为身祸残。笃心自守，与喜相抱。';
  exit;
end;
if s='恒之谦' then
begin
  result:='咸阳辰巳，长安戌亥。丘陵生心，非鱼鳅市。可以避水，终无凶咎。';
  exit;
end;
if s='恒之豫' then
begin
  result:='不知何孙，夜来扣门。我慎外寝，兵戎且来。';
  exit;
end;
if s='恒之随' then
begin
  result:='昧旦不明，日暗无光。丧灭失常，使我心伤。';
  exit;
end;
if s='恒之蛊' then
begin
  result:='江阴水侧，舟楫破乏。狐不得南，豹无以北。虽欲会盟，河水绝梁。';
  exit;
end;
if s='恒之临' then
begin
  result:='神之在丑，破逆为咎。不利西南，商人休止。';
  exit;
end;
if s='恒之观' then
begin
  result:='然诺不行，欺天误人。使我露宿，夜归温室。神怒不直，鬼击其目。欲求福利，适反自贼。';
  exit;
end;
if s='恒之噬嗑' then
begin
  result:='攘臂拯肘，怒不可止。狼戾愎佷，无与为市。';
  exit;
end;
if s='恒之贲' then
begin
  result:='贩马买牛，会值空虚。利得尠少，流连为忧。';
  exit;
end;
if s='恒之剥' then
begin
  result:='高楼陆处，以避风雨。深室邃宇，君安其所。牝鸡之晨，为我利福，请求弗得。';
  exit;
end;
if s='恒之复' then
begin
  result:='阿衡服箱，太乙载行。逃时历舍，所之吉昌。';
  exit;
end;
if s='恒之无妄' then
begin
  result:='飞来之福，入我嘉室，以安吾国。';
  exit;
end;
if s='恒之大畜' then
begin
  result:='不孝之患，子孙为残。老耄莫养，独坐室垣。';
  exit;
end;
if s='恒之颐' then
begin
  result:='南过棘门，钩裂我冠。断衣伤襦，使君恨忧。';
  exit;
end;
if s='恒之大过' then
begin
  result:='重弋射隼，不知所定。质疑蓍龟，孰可避之。明神答报，告以牺牲，宜利止居。';
  exit;
end;
if s='恒之坎' then
begin
  result:='麟麑凤雏，安乐无忧。捕鱼河海，利踰从居。';
  exit;
end;
if s='恒之离' then
begin
  result:='新田宜粟，上农得谷。君子怀德，以千百禄。';
  exit;
end;
if s='恒之咸' then
begin
  result:='簪短带长，幽思苦穷。瘠蠡小瘦，以病之癃。';
  exit;
end;
if s='恒之遁' then
begin
  result:='爭訟之門，不可與鄰。出入有為，憂生我患。疑當作生我憂患）';
  exit;
end;
if s='恒之大壮' then
begin
  result:='朽根枯株，不生肌膚。病在心腸，日以燋枯。';
  exit;
end;
if s='恒之晋' then
begin
  result:='雨师娶妇，黄炎季子。成礼既婚，相呼南去。润泽田里，年岁大喜。';
  exit;
end;
if s='恒之明夷' then
begin
  result:='冬采薇兰，地冻坚难。利走室北，暮无所得。';
  exit;
end;
if s='恒之家人' then
begin
  result:='昧之东域，误过虎邑。失我熊胔，饥无所食。';
  exit;
end;
if s='恒之睽' then
begin
  result:='日暮闭目，随阳休息。箕子以之，乃受其福。举首多言，必为悔残';
  exit;
end;
if s='恒之蹇' then
begin
  result:='蓼萧瀼瀼，君子龙光。鸣鸾雍雍，福禄来同。';
  exit;
end;
if s='恒之解' then
begin
  result:='鸟飞无翼，兔走折足。虽欲会同，未能利达。';
  exit;
end;
if s='恒之损' then
begin
  result:='五胜相贼，火得水息。精光消灭，绝不能续。';
  exit;
end;
if s='恒之益' then
begin
  result:='东资齐鲁，得骍大马。便辟能言，巧贾善市。八邻并户，请火不与。人道闭塞，鬼守其宇。';
  exit;
end;
if s='恒之夬' then
begin
  result:='争鸡失羊，亡其金囊。利不得长。陈蔡之患，赖楚以安。';
  exit;
end;
if s='恒之姤' then
begin
  result:='九登十陟，马跌不前。管子佐之，乃能上山。';
  exit;
end;
if s='恒之萃' then
begin
  result:='东邻愁苦，君乱天纪。日贪禄宠，必受其咎。意合志同，内外相从，见吾伯公。';
  exit;
end;
if s='恒之升' then
begin
  result:='三狸捕鼠，遮遏前后。死于环城，不能脱走';
  exit;
end;
if s='恒之困' then
begin
  result:='虎狼争强，礼义不行。兼吞其国，齐鲁无王。';
  exit;
end;
if s='恒之井' then
begin
  result:='五岳四渎，合润为德。行不失理，民赖恩福。';
  exit;
end;
if s='恒之革' then
begin
  result:='六月种黍，岁晚无雨。秋不宿酒，神先其所。先困后通，与福相从。';
  exit;
end;
if s='恒之鼎' then
begin
  result:='騋牝龙身，日驭三千。南上苍梧，与福为婚。道里夷易，身安无患。';
  exit;
end;
if s='恒之震' then
begin
  result:='出入休居，安止无忧。上室之欢，虎为季残。';
  exit;
end;
if s='恒之艮' then
begin
  result:='南山旻天，刺政关身。疾病无辜，背憎为仇。';
  exit;
end;
if s='恒之渐' then
begin
  result:='苍耳东从，道顿跂踦。日辰不良，病为祟祸。';
  exit;
end;
if s='恒之归妹' then
begin
  result:='兄征东燕，弟伐辽西。大克胜还，封居河间。';
  exit;
end;
if s='恒之丰' then
begin
  result:='播轮折辐，马不得行。竖牛之谗，贼其父兄。布衣不伤，终身无患。';
  exit;
end;
if s='恒之旅' then
begin
  result:='驾之南海，晨夜不止。君子劳罢，仆夫憔苦。';
  exit;
end;
if s='恒之巽' then
begin
  result:='怨虱烧被，忿怒生祸。褊心作难，意如为乱。';
  exit;
end;
if s='恒之兑' then
begin
  result:='张狂妄行，窃食盗粮。狗吠非主，囓伤我足。';
  exit;
end;
if s='恒之涣' then
begin
  result:='警跸戒道，先驱除咎。王后亲桑，以率群功，安我祖宗。';
  exit;
end;
if s='恒之节' then
begin
  result:='门户乏食，困死谁告。对门不通，安所归急。积藏五谷，一华千叶，市贾有息。';
  exit;
end;
if s='恒之中孚' then
begin
  result:='破敝复完，危者得安。乡善无患，商人有息，利来入门。';
  exit;
end;
if s='恒之小过' then
begin
  result:='叠叠累累，如岐之室。一息十子，古公治邑。';
  exit;
end;
if s='恒之既济' then
begin
  result:='三妪治民，不胜其任。两马争车，败坏家室。';
  exit;
end;
if s='恒之未济' then
begin
  result:='蔽镜无光，不见文章。少女不市，弃于相望。';
  exit;
end;

end;

function dun(const s: string):string;
begin
if s='遁' then
begin
  result:='三涂五岳，阳城太室。神明所保，独无兵革。';
  exit;
end;
if s='遁之乾' then
begin
  result:='软弱无辅，不能自理。意在外野，心怀劳苦，虽忧不殆。';
  exit;
end;
if s='遁之坤' then
begin
  result:='周成之隆，刑措无凶。太宰赞佑，君子作仁。';
  exit;
end;
if s='遁之屯' then
begin
  result:='穴有孤乌，坎生虾蟆。象去万里，不可得捕。';
  exit;
end;
if s='遁之蒙' then
begin
  result:='俱为天门，云过吾西。伯氏嫉妬，与我无恩。';
  exit;
end;
if s='遁之需' then
begin
  result:='三首六目，政多烦惑。皋陶瘖聋，乱不可从。';
  exit;
end;
if s='遁之讼' then
begin
  result:='德积不轻，辞王钓耕。三媒不已，大福来成。';
  exit;
end;
if s='遁之师' then
begin
  result:='坚固相亲，日笃无患。六体不易，执以安全。雨师驾西，濡我毂轮。张伯李季，各坐关门。';
  exit;
end;
if s='遁之比' then
begin
  result:='方内不行，辐摧轮伤。马楚踶甚，受子闵时。';
  exit;
end;
if s='遁之小畜' then
begin
  result:='畜牝无驹，养鸡不雏。群羊三岁，不生两头。';
  exit;
end;
if s='遁之履' then
begin
  result:='老耄罢极，无取中直。悬舆致仕，得归乡国。';
  exit;
end;
if s='遁之泰' then
begin
  result:='缩绪乱丝，手与为灾。越亩逐兔，断其裈襦。';
  exit;
end;
if s='遁之否' then
begin
  result:='海老水干，鱼鳖萧索。藁落无润，独有沙石。';
  exit;
end;
if s='遁之同人' then
begin
  result:='入市求鹿，不见头足。终日至夜，竟无所得。';
  exit;
end;
if s='遁之大有' then
begin
  result:='筑门壅户，虎卧当道。惊我骅骝，不利出处。';
  exit;
end;
if s='遁之谦' then
begin
  result:='陶朱白圭，善贾息资。公子王孙，富贵不贫。';
  exit;
end;
if s='遁之豫' then
begin
  result:='王良善御，伯乐知马。周旋步骤，行中规矩。止息有节，延命寿考。';
  exit;
end;
if s='遁之随' then
begin
  result:='尧问尹寿，圣德增益。使民不惧，安无怵惕。';
  exit;
end;
if s='遁之蛊' then
begin
  result:='昭公失常，季氏悖狂。逊齐处郓，丧其宠身。';
  exit;
end;
if s='遁之临' then
begin
  result:='昬莫不行，候旦待明。复住止后，未得相从。';
  exit;
end;
if s='遁之观' then
begin
  result:='安上宜官，一日九迁。升擢超等，牧养常山';
  exit;
end;
if s='遁之噬嗑' then
begin
  result:='去恶就凶，东西多讼，行者无功。';
  exit;
end;
if s='遁之贲' then
begin
  result:='老马垂耳，不见百里。君子弗恃，商人莫取，无与为市。';
  exit;
end;
if s='遁之剥' then
begin
  result:='蝠 生子，深目黑丑。似类其母，虽或相就，众人莫取。';
  exit;
end;
if s='遁之复' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。';
  exit;
end;
if s='遁之无妄' then
begin
  result:='容民蓄众，履德有信。大人受福，童蒙忧惑。利无所得。';
  exit;
end;
if s='遁之大畜' then
begin
  result:='左跌右僵，前踬触桑。其指据石，伤其弟兄。老蚕不作，家无织帛。贵货贱身，留连久客。';
  exit;
end;
if s='遁之颐' then
begin
  result:='昏人旦明，卖食老昌。国祚东表，号称太公。';
  exit;
end;
if s='遁之大过' then
begin
  result:='敝笱在梁，鲂逸不禁。渔父劳苦，焦喉干口，虚空无有。';
  exit;
end;
if s='遁之坎' then
begin
  result:='盛中后跌，衰老复掇。盈满减毁，疾羸肥腯。郑昭失国，重耳兴立。';
  exit;
end;
if s='遁之离' then
begin
  result:='折亡破瓮，使我贫困。与母生分，别离异门。';
  exit;
end;
if s='遁之咸' then
begin
  result:='野有积庾，啬人驾取。不逢狼虎，暮归其宇。';
  exit;
end;
if s='遁之恒' then
begin
  result:='襁褓孩呱，冠带成家。出门如宾，父母何忧。';
  exit;
end;
if s='遁之大壮' then
begin
  result:='陈力就列，官职并废。手不胜盆，失其宠门。';
  exit;
end;
if s='遁之晋' then
begin
  result:='积雪大寒，万物不生。阴制庶士，时木冬贫。';
  exit;
end;
if s='遁之明夷' then
begin
  result:='龙斗时门，失理伤贤。内畔生贼，自为心疾。';
  exit;
end;
if s='遁之家人' then
begin
  result:='犬畏猛虎，依人为辅。三夫执戟，伏不敢起，身安无咎。';
  exit;
end;
if s='遁之睽' then
begin
  result:='南山高岗，回隤难登。道路辽远，行者无功。忧不成凶，恶亦消去。';
  exit;
end;
if s='遁之蹇' then
begin
  result:='逢时阳遂，富且贵尊。';
  exit;
end;
if s='遁之解' then
begin
  result:='求我所欲，得其利福，终身不辱。盈盛之门，高屋光覆，君先其固。';
  exit;
end;
if s='遁之损' then
begin
  result:='安坐至暮，祸灾不到。利诘奸妖，罪人不赦。';
  exit;
end;
if s='遁之益' then
begin
  result:='胶车驾东，与雨相逢。五楘解堕，顿辀独坐，忧为身祸。';
  exit;
end;
if s='遁之夬' then
begin
  result:='择日高飞，远至东齐。见孔圣师，使我和谐。';
  exit;
end;
if s='遁之姤' then
begin
  result:='陈妫敬仲，兆兴齐姜。乃适营丘，八世大昌。';
  exit;
end;
if s='遁之萃' then
begin
  result:='缺埒无墠，难从东西。毁破我盆，泛弃酒食。';
  exit;
end;
if s='遁之升' then
begin
  result:='中夜犬吠，盗在庐外。神光佐助，消散归去。';
  exit;
end;
if s='遁之困' then
begin
  result:='雷车不藏，隐隐西行。霖雨三旬，流为河江，使我忧凶。';
  exit;
end;
if s='遁之井' then
begin
  result:='老河空虚，旧井无鱼。利得不饶，避患东邻。祸来入门，使多悔存。';
  exit;
end;
if s='遁之革' then
begin
  result:='福德之士，欢悦日喜。夷吾相国，三归为臣，贵流子孙。';
  exit;
end;
if s='遁之鼎' then
begin
  result:='清人高子，久屯外野。逍遥不归，思我慈母。';
  exit;
end;
if s='遁之震' then
begin
  result:='骢（马葛）黑（ 髟忽），东归高乡。白虎推轮，苍龙把衡。朱雀导引，灵鸟载游。远扣天门，入见真君，马全人安。';
  exit;
end;
if s='遁之艮' then
begin
  result:='路多枳棘，前刺我足。不利旅客，为心作毒。';
  exit;
end;
if s='遁之渐' then
begin
  result:='端坐生患，忧来入门，使我不安。';
  exit;
end;
if s='遁之归妹' then
begin
  result:='小陬之市，利不足喜。二世积仁，蒙其祖先。匪躬之言，狂悖为患。';
  exit;
end;
if s='遁之丰' then
begin
  result:='登高望时，见乐无忧。求利南国，与宝相得';
  exit;
end;
if s='遁之旅' then
begin
  result:='跛足息肩，有所忌难。金城铁郭，以铜为关。藩屏自卫，安土无患。';
  exit;
end;
if s='遁之巽' then
begin
  result:='江水沱汜，思附君子。仲氏爰归，不我肯顾，侄娣悔恨。';
  exit;
end;
if s='遁之兑' then
begin
  result:='芽蘖生达，阳倡于外。左手执籥，公言锡爵。';
  exit;
end;
if s='遁之涣' then
begin
  result:='雲夢苑囿，萬物蕃熾。犀象玳瑁，荊人以富。';
  exit;
end;
if s='遁之节' then
begin
  result:='渠戎万里，昼夜愁苦。櫜甲戎服，虽荷不贼。鹰鹯之殃，害不能伤。';
  exit;
end;
if s='遁之中孚' then
begin
  result:='镃基逢时，稷契皋陶。贞良得愿，微子解囚。';
  exit;
end;
if s='遁之小过' then
begin
  result:='骑骓与苍，南贾太行。逢驳猛虎，为所吞殇，葬于渭阳。';
  exit;
end;
if s='遁之既济' then
begin
  result:='出门东行，日利辰良。步骑与驷，径历宗邦。暮宿北燕，与乐相逢。';
  exit;
end;
if s='遁之未济' then
begin
  result:='酒为欢伯，除忧来乐。福善入门，与君相索，使我有得。';
  exit;
end;
end;

function dazhuang(const s: string):string;
begin
if s='大壮' then
begin
  result:='左有噬熊，右有啮虎。前触铁矛，后踬强弩，无可抵者。';
  exit;
end;
if s='大壮之乾' then
begin
  result:='金齿铁牙，寿考宜家。年岁有储，贪利者得，离其咎忧。';
  exit;
end;
if s='大壮之坤' then
begin
  result:='家给人足，颂声并作。四夷宾服，干戈櫜阁。';
  exit;
end;
if s='大壮之屯' then
begin
  result:='猕猴冠带，盗载非位。众犬嘈吠，狂走蹶足。';
  exit;
end;
if s='大壮之蒙' then
begin
  result:='心患其身，不念安存。忠臣孝子，为国除患。';
  exit;
end;
if s='大壮之需' then
begin
  result:='君不明德，臣乱为惑。丞相命马，胡亥失所。';
  exit;
end;
if s='大壮之讼' then
begin
  result:='东行西穷，南北无功。张伯卖鹿，从者失羊。';
  exit;
end;
if s='大壮之师' then
begin
  result:='鹿下西山，欲归其群。逢羿锋箭，死于矢端。';
  exit;
end;
if s='大壮之比' then
begin
  result:='明夷兆初，三日为灾。以谗复归，名曰竖牛。剥乱叔孙，馁卒虚丘。';
  exit;
end;
if s='大壮之小畜' then
begin
  result:='秦失嘉居，河伯为怪。还其衔璧，神怒不佑。织组无文，烧香不芬。';
  exit;
end;
if s='大壮之履' then
begin
  result:='至德之君，祸不过邻。使我世存，身无患灾。';
  exit;
end;
if s='大壮之泰' then
begin
  result:='众恶之堂，相聚为殃。幽毒良人，使道不通。';
  exit;
end;
if s='大壮之否' then
begin
  result:='三痴六狂，欲之平乡。迷惑失道，不知昏明。';
  exit;
end;
if s='大壮之同人' then
begin
  result:='老弱无子，不能自理。郭氏虽忧，终不离咎。';
  exit;
end;
if s='大壮之大有' then
begin
  result:='褒后生蛇，经老日微。退跌衰耄，酒灭黄离。';
  exit;
end;
if s='大壮之谦' then
begin
  result:='骢（马葛）黑（ 髟忽），东归高乡。白虎推轮，苍龙把衡。遂至夷伤，不离咎殃。';
  exit;
end;
if s='大壮之豫' then
begin
  result:='信谲龙且，塞水上流。半渡决囊，楚师覆亡。';
  exit;
end;
if s='大壮之随' then
begin
  result:='有莘季女，为王妃后。贵夫寿子，母字四海。';
  exit;
end;
if s='大壮之蛊' then
begin
  result:='德被八表，蛮夷率服。蝥贼不作，道无苛慝。';
  exit;
end;
if s='大壮之临' then
begin
  result:='载日精光，骖驾六龙。禄命彻天，封为燕王。';
  exit;
end;
if s='大壮之观' then
begin
  result:='缨急缩颈，行不得前。五石示象，襄霸不成。';
  exit;
end;
if s='大壮之噬嗑' then
begin
  result:='蛇失其公，戴麻当丧。哀悲哭泣，送死离乡。';
  exit;
end;
if s='大壮之贲' then
begin
  result:='四隤不安，兵革为患。掠我妻子，客屡饥寒。';
  exit;
end;
if s='大壮之剥' then
begin
  result:='乘风驾雨，与飞鸟俱。一举千里，见吾爱母。';
  exit;
end;
if s='大壮之复' then
begin
  result:='雷霆所击，诛者五逆。劘灭无迹，有惧方息。';
  exit;
end;
if s='大壮之无妄' then
begin
  result:='张氏揖酒，请谒左右。平叔枯槁，独不蒙所。';
  exit;
end;
if s='大壮之大畜' then
begin
  result:='坐争立讼，纷纷匈匈。卒成祸乱，灾及家公。';
  exit;
end;
if s='大壮之颐' then
begin
  result:='霜降闭户，蛰虫隐处。不见日月，与死为伍。';
  exit;
end;
if s='大壮之大过' then
begin
  result:='鼠聚生怪，为我患悔。道绝不通，商旅失意。';
  exit;
end;
if s='大壮之坎' then
begin
  result:='寒暑不当，轨度失常。一前一后，年岁鲜有。';
  exit;
end;
if s='大壮之离' then
begin
  result:='筑室水上，危于一齿。丑寅不徙，辰巳有咎。';
  exit;
end;
if s='大壮之咸' then
begin
  result:='畜鸡养狗，长息有储。耕田得黍，主母喜舞。';
  exit;
end;
if s='大壮之恒' then
begin
  result:='东壁余光，数暗不明。主母嫉妒，乱我事业。';
  exit;
end;
if s='大壮之遁' then
begin
  result:='刚柔相伤，火烂销金。雕鹰制兔，伐楚有功。';
  exit;
end;
if s='大壮之晋' then
begin
  result:='郑国谗多，数被楚忧。征夫愁苦，民困无聊。';
  exit;
end;
if s='大壮之明夷' then
begin
  result:='弓矢斯张，把弹弦折。丸发不至，道遇患害。';
  exit;
end;
if s='大壮之家人' then
begin
  result:='举觞饮酒，未得至口。侧弁醉酗，拔剑斫怒，武侯作悔。';
  exit;
end;
if s='大壮之睽' then
begin
  result:='苍鹰群行，相得旅前。王孙申公，惊夺我雄。北天门开，神火飞灾。如不敬信，事入尘埃。';
  exit;
end;
if s='大壮之蹇' then
begin
  result:='穿屋相宜，利倍我北。循邪诡道，逃不可得。南北望邑，遂归入室。';
  exit;
end;
if s='大壮之解' then
begin
  result:='寿如松乔，与日月俱。常安康乐，不罹祸忧。';
  exit;
end;
if s='大壮之损' then
begin
  result:='出门望东，伯仲不来。疾病为患，使母忧叹。';
  exit;
end;
if s='大壮之益' then
begin
  result:='太姒之孙，周文九子。咸遂受成，宠贵富有。';
  exit;
end;
if s='大壮之夬' then
begin
  result:='桃李华实，纍纍日息。长大成熟，甘美可食，为我利福。';
  exit;
end;
if s='大壮之姤' then
begin
  result:='昏礼不明，男女失常。行露反言，出争我讼。';
  exit;
end;
if s='大壮之萃' then
begin
  result:='室穿敝漏，破桴残缺。阴弗能完，瓦碎不全。';
  exit;
end;
if s='大壮之升' then
begin
  result:='数穷廓落，困于历室。往登玉堂，与尧侑食。';
  exit;
end;
if s='大壮之困' then
begin
  result:='道湿为坑，轮陷踬僵。南国作讳，使我多畏。';
  exit;
end;
if s='大壮之井' then
begin
  result:='鳏寡孤独，福禄苦薄。入室无妻，武子悲哀。';
  exit;
end;
if s='大壮之革' then
begin
  result:='举袂覆目，不见日月。衣衾杖机，就其夜室。';
  exit;
end;
if s='大壮之鼎' then
begin
  result:='长尾踒跎，画地为河。深不可涉，绝无以北，悯然愤息。';
  exit;
end;
if s='大壮之震' then
begin
  result:='晨风文翰，大举就温。昧过我邑，羿无所得。';
  exit;
end;
if s='大壮之艮' then
begin
  result:='出入节时，南北无忧。行者亟至，在外归来。';
  exit;
end;
if s='大壮之渐' then
begin
  result:='阳氏狂惑，季孙乱愦。陪臣执政，平子拘折，我心不快。';
  exit;
end;
if s='大壮之归妹' then
begin
  result:='五乌六鸱，相对蹲跂。礼让不兴，虞芮争讼。';
  exit;
end;
if s='大壮之丰' then
begin
  result:='顾念所生，隔在东平。遭离满沸，河川决溃。幸得无恙，复归相室。';
  exit;
end;
if s='大壮之旅' then
begin
  result:='追猎东走，兔逃我后。吾锐不利，独空无有。';
  exit;
end;
if s='大壮之巽' then
begin
  result:='犬吠非主，上下胶扰。敌人袭战，闵王逃走。';
  exit;
end;
if s='大壮之兑' then
begin
  result:='嵩高岱宗，峻直且神。触石肤寸，千里蒙恩。';
  exit;
end;
if s='大壮之涣' then
begin
  result:='陈鱼观社，佷荒踰矩。为民开绪，亡其祖考。';
  exit;
end;
if s='大壮之节' then
begin
  result:='四壁无户，三步一止。东西南北，利不可得。';
  exit;
end;
if s='大壮之中孚' then
begin
  result:='求君衣裳，情不可当。触讳西行，为伯生殃。君之上欢，得其安存。';
  exit;
end;
if s='大壮之小过' then
begin
  result:='春鸿飞东，以马货金，利可得深。';
  exit;
end;
if s='大壮之既济' then
begin
  result:='禾生虫蠹，还自克贼，使我无得。';
  exit;
end;
if s='大壮之未济' then
begin
  result:='桀乱无道，民散不聚。背室弃家，遁逃出走。';
  exit;
end;

end;

function jin(const s: string):string;
begin
if s='晋' then
begin
  result:='销锋铸耜，休牛放马。甲兵解散，夫妇相保。';
  exit;
end;
if s='晋之乾' then
begin
  result:='一衣三冠，冠无所绊。元服不成，为身灾患。';
  exit;
end;
if s='晋之坤' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。';
  exit;
end;
if s='晋之屯' then
begin
  result:='鱼蛇之怪，大人忧惧。梁君好城，失其安居。';
  exit;
end;
if s='晋之蒙' then
begin
  result:='少无强辅，长不见母。劳心远思，自伤忧苦。';
  exit;
end;
if s='晋之需' then
begin
  result:='前涉溽暑，解不可取。离门二里，败我利市。老牛病马，去之何悔。';
  exit;
end;
if s='晋之讼' then
begin
  result:='君明有德，登天大禄。布政施惠，以成恩福。中子南游，翱翔未复。';
  exit;
end;
if s='晋之师' then
begin
  result:='哓然唯诺，敬上尊客。执恭除患，御侮致福。';
  exit;
end;
if s='晋之比' then
begin
  result:='黍稷禾稻，垂秀方造。中旱不雨，伤风病藁。';
  exit;
end;
if s='晋之小畜' then
begin
  result:='三羸六罢，不能越跪。东贾失马，往返劳苦。';
  exit;
end;
if s='晋之履' then
begin
  result:='倚立相望，引衣欲装。阴云蔽日，暴雨降集。使道不通，阻我欢会。';
  exit;
end;
if s='晋之泰' then
begin
  result:='高脚疾步，受肩善趋。日走千里，贾市有得。';
  exit;
end;
if s='晋之否' then
begin
  result:='北风寒凉，雨雪益冰。忧思不乐，哀悲伤心。';
  exit;
end;
if s='晋之同人' then
begin
  result:='贞鸟雎鸠，执一无尤。寝门治理，君子悦喜。';
  exit;
end;
if s='晋之大有' then
begin
  result:='蓼萧露瀼，君子龙光。鸣鸾噰噰，福禄来同。';
  exit;
end;
if s='晋之谦' then
begin
  result:='南行求福，与喜相得。封受上赏，鼎足辅国。';
  exit;
end;
if s='晋之豫' then
begin
  result:='桑叶腐蠹，衣敝如络。女功不成，丝布为玉。';
  exit;
end;
if s='晋之随' then
begin
  result:='左服易右，王良心欢，喜利从己。';
  exit;
end;
if s='晋之蛊' then
begin
  result:='寿考不忘，驾驷东行。三适陈宋，南贾楚荆，得利息长。旅身多罢，畏昼喜夜。';
  exit;
end;
if s='晋之临' then
begin
  result:='羔羊皮革，君子朝服。辅政扶德，以合万国。';
  exit;
end;
if s='晋之观' then
begin
  result:='鹯鸠徒巢，西至平州。遭逢雷塌，破我苇庐。室家饥寒，思吾故初。';
  exit;
end;
if s='晋之噬嗑' then
begin
  result:='大尾小头，重不可摇。上弱下强，阴制其雄。';
  exit;
end;
if s='晋之贲' then
begin
  result:='疏足息肩，有所忌难。金城铜郭，以铁为关。藩屏自卫，安止无患。';
  exit;
end;
if s='晋之剥' then
begin
  result:='天命玄鸟，下生大商。造定四表，享国久长。';
  exit;
end;
if s='晋之复' then
begin
  result:='赋敛重数，政为民贼。杼柚空虚，我去其室。';
  exit;
end;
if s='晋之无妄' then
begin
  result:='阴阳隔塞，许嫁不答。宛丘新台，悔往叹息。';
  exit;
end;
if s='晋之大畜' then
begin
  result:='愿望登虚，意常欲逃。贾辛丑恶，妻不安夫。';
  exit;
end;
if s='晋之颐' then
begin
  result:='踧行窃视，有所畏避。蔽目伏藏，以夜为利。';
  exit;
end;
if s='晋之大过' then
begin
  result:='信敏恭谦，敬鬼尊神。五岳西渎，克厌帝心，受福宜年。';
  exit;
end;
if s='晋之坎' then
begin
  result:='悬悬南海，去家万里。飞兔腰褭，一日见母，除我忧悔。';
  exit;
end;
if s='晋之离' then
begin
  result:='虽污不辱，因何跣足。童子褰衣，五步平复。';
  exit;
end;
if s='晋之咸' then
begin
  result:='宫城立见，衣就袂裾。恭谦自卫，终无祸尤。';
  exit;
end;
if s='晋之恒' then
begin
  result:='敝笱在梁，不能得鱼。望食千里，所至空虚。';
  exit;
end;
if s='晋之遁' then
begin
  result:='千里骍驹，为王服车。嘉其骊荣，君子有成。';
  exit;
end;
if s='晋之大壮' then
begin
  result:='鼎足承德，嘉谋生福。为王开庭，得心所欲。';
  exit;
end;
if s='晋之明夷' then
begin
  result:='右手无合，独折左指。禹汤失佐，事功不立。';
  exit;
end;
if s='晋之家人' then
begin
  result:='忧凶增累，患近不解。心意西东，事无成功';
  exit;
end;
if s='晋之睽' then
begin
  result:='东行食榆，困于枯株。夫妻无家，志穷为忧。';
  exit;
end;
if s='晋之蹇' then
begin
  result:='五经六纪，仁道所在。正月繁霜，独不离咎。';
  exit;
end;
if s='晋之解' then
begin
  result:='懈缓不前，怠惰失便。二至之戒，家无祸凶。刻水象形，闻言不信。';
  exit;
end;
if s='晋之损' then
begin
  result:='仁爱笃厚，不以所忿，害其所子，从我旧都，日益富有。';
  exit;
end;
if s='晋之益' then
begin
  result:='缺破不成，胎卵未生，弗见兆形。';
  exit;
end;
if s='晋之夬' then
begin
  result:='摧角不伤，虽折复长。秉德无愆，老赖荣光。';
  exit;
end;
if s='晋之姤' then
begin
  result:='乘桴浮海，免脱厄中，虽困无凶。';
  exit;
end;
if s='晋之萃' then
begin
  result:='孔鸾鸳雏，鵕鸃鹈鹕。翱翔紫渊，嘉禾之圃，君子以娱。';
  exit;
end;
if s='晋之升' then
begin
  result:='甘露温润，众来得愿。乐易君子，不逢祸乱。';
  exit;
end;
if s='晋之困' then
begin
  result:='东骑堕落，千里独宿。高岸为谷，阳失其室。';
  exit;
end;
if s='晋之井' then
begin
  result:='八才既登，以成嘉功。尨降庭坚，国无灾凶。';
  exit;
end;
if s='晋之革' then
begin
  result:='邯郸反言，父兄生患。竟涉忧恨，卒死不还。';
  exit;
end;
if s='晋之鼎' then
begin
  result:='玉铣铁颐，仓库空虚。贾市无盈，与利为仇。';
  exit;
end;
if s='晋之震' then
begin
  result:='白鸟衔铒，鸣呼其子。旋枝张翅，来从其母。';
  exit;
end;
if s='晋之艮' then
begin
  result:='学灵三年，圣且神明。先见善祥，嘉吉福庆。鳱鹄知来，告我无忧。';
  exit;
end;
if s='晋之渐' then
begin
  result:='云孽蒸起，失其道理。伤害年谷，神君乏祀。';
  exit;
end;
if s='晋之归妹' then
begin
  result:='春耕有息，秋入利福。献豜私豵，以乐成功。';
  exit;
end;
if s='晋之丰' then
begin
  result:='羸豕踯躅，虎入都邑。遮遏左右，国门敕急。';
  exit;
end;
if s='晋之旅' then
begin
  result:='东行西维，南北善迷。逐旅失群，亡我襦衣。';
  exit;
end;
if s='晋之巽' then
begin
  result:='居室之伦，夫妇和亲。小人乘车，硕果失豢。';
  exit;
end;
if s='晋之兑' then
begin
  result:='东方孟春，乘冰戴盆。惧危不安，终失所欢。';
  exit;
end;
if s='晋之涣' then
begin
  result:='风吹尘起，十里无所。南国年伤，不可安处。';
  exit;
end;
if s='晋之节' then
begin
  result:='重载伤车，妇女无夫。三十不室，独坐空庐。';
  exit;
end;
if s='晋之中孚' then
begin
  result:='败牛羸马，与利为市，不我嘉喜。';
  exit;
end;
if s='晋之小过' then
begin
  result:='月出阜东，山蔽其明。章甫荐屦，箕子佯狂。';
  exit;
end;
if s='晋之既济' then
begin
  result:='出入门所，与道开通。杞梁之信，不失日中。少季渡江，来归其邦。疾病危亡。';
  exit;
end;
if s='晋之未济' then
begin
  result:='邑居卫师，如转蓬时，居之凶危。';
  exit;
end;


end;


function mingyi(const s: string):string;
begin
if s='明夷' then
begin
  result:='他山之错，与璆为仇。来攻吾城，伤我肌肤，邦家骚忧。';
  exit;
end;
if s='明夷之乾' then
begin
  result:='践履寒冰，十步九寻。虽有苦痛，不为忧病。';
  exit;
end;
if s='明夷之坤' then
begin
  result:='太公避纣，七十隐处。卒逢圣文，为王室辅。';
  exit;
end;
if s='明夷之屯' then
begin
  result:='日月之涂，所行必到，无有患悔。';
  exit;
end;
if s='明夷之蒙' then
begin
  result:='讽德诵功，美风盛隆。旦辅成周，光济冲人。';
  exit;
end;
if s='明夷之需' then
begin
  result:='童子无室，未有配合，空坐独宿。';
  exit;
end;
if s='明夷之讼' then
begin
  result:='穿鼻系株，为虎所拘。王母祝词，祸不成灾，惠然肯来。';
  exit;
end;
if s='明夷之师' then
begin
  result:='黄帝神明，八子圣聪。佚受大福，天下平康。';
  exit;
end;
if s='明夷之比' then
begin
  result:='深谷为陵，衰者复兴。乱倾之国，民得安息。中妇病困，遂入冥室。';
  exit;
end;
if s='明夷之小畜' then
begin
  result:='道远辽绝，路宿多悔。顽嚣相聚，生我畏忌。';
  exit;
end;
if s='明夷之履' then
begin
  result:='旦树菽豆，暮成藿羹。心之所乐，志快心欢。';
  exit;
end;
if s='明夷之泰' then
begin
  result:='切切之患，凶忧不成。虎不敢啮，利当我身。';
  exit;
end;
if s='明夷之否' then
begin
  result:='王伯远宿，长妇在室。异庖待食，所求不得。';
  exit;
end;
if s='明夷之同人' then
begin
  result:='寒燠失时，阳旱为灾，虽耗无忧。';
  exit;
end;
if s='明夷之大有' then
begin
  result:='虽穷复通，履危不凶，得其明功。';
  exit;
end;
if s='明夷之谦' then
begin
  result:='狼虎所宅，不可以居，为我患忧。';
  exit;
end;
if s='明夷之豫' then
begin
  result:='喋嗫噱嚾，昧冥相抟。多言少实，语无成事。';
  exit;
end;
if s='明夷之随' then
begin
  result:='履冰蹈凌，虽困不穷。播鼓登岩，卒无忧凶。';
  exit;
end;
if s='明夷之蛊' then
begin
  result:='文文墨墨，忧祸相杂。南北失志，东西不得。';
  exit;
end;
if s='明夷之临' then
begin
  result:='争讼不已，更相谈訽。张季弱口，被发北走。';
  exit;
end;
if s='明夷之观' then
begin
  result:='德积逢时，宜其美才。相明辅圣，拜受福休。长女不嫁，后为大悔。';
  exit;
end;
if s='明夷之噬嗑' then
begin
  result:='江水沱汜，思附君子。仲氏爰归，不我肯顾，侄娣悔恨。';
  exit;
end;
if s='明夷之贲' then
begin
  result:='光祀春成，陈宝鸡鸣。阳明失道，不能自守，消亡为咎。';
  exit;
end;
if s='明夷之剥' then
begin
  result:='惊虎无患，虞为我言，赖得以安。';
  exit;
end;
if s='明夷之复' then
begin
  result:='伪言妄语，转相诖误，不知狼处。';
  exit;
end;
if s='明夷之无妄' then
begin
  result:='履隙自敌，凶忧来到，痛不能笑。';
  exit;
end;
if s='明夷之大畜' then
begin
  result:='牵尾不前，逆理失臣，惠朔以奔。';
  exit;
end;
if s='明夷之颐' then
begin
  result:='三狸捕鼠，遮遏前后。死于环城，不得脱走。';
  exit;
end;
if s='明夷之大过' then
begin
  result:='言笑未毕，忧来暴卒。身加槛缆，囚系缚束。';
  exit;
end;
if s='明夷之坎' then
begin
  result:='阴积不已，云作淫雨。伤害平陆，民无室屋。';
  exit;
end;
if s='明夷之离' then
begin
  result:='山林麓薮，非人所处。鸟兽无礼，使我心苦。';
  exit;
end;
if s='明夷之咸' then
begin
  result:='新作初陵，踰蹈难登。三驹推车，跌顿伤颐。';
  exit;
end;
if s='明夷之恒' then
begin
  result:='魂微惙惙，属纩听绝。扩然大通，复更生活。';
  exit;
end;
if s='明夷之遁' then
begin
  result:='栾子作殃，伯氏诛伤。州犁奔楚，去其邑乡。';
  exit;
end;
if s='明夷之大壮' then
begin
  result:='骄胡犬形，造恶作凶。无所能成，还自灭身。';
  exit;
end;
if s='明夷之晋' then
begin
  result:='陈词达情，使安不倾。增荣益誉，以成功名。';
  exit;
end;
if s='明夷之家人' then
begin
  result:='三杞无枣，家无积莠。使鸠求妇，顽不我许。';
  exit;
end;
if s='明夷之睽' then
begin
  result:='慎祸重患，颜子为友，乃能安存。牢户系羊，乃能受福。';
  exit;
end;
if s='明夷之蹇' then
begin
  result:='鹿得美草，鸣呼其友。九族和睦，不忧饥乏。';
  exit;
end;
if s='明夷之解' then
begin
  result:='亡玉失鹿，不知所伏。利以避危，全我生福。甘雨时降，年谷有得。';
  exit;
end;
if s='明夷之损' then
begin
  result:='逢时积德，身受福庆。';
  exit;
end;
if s='明夷之益' then
begin
  result:='鹄思其雄，欲随凤东。顺里羽翼，出次须日。中留北邑，复反其室。';
  exit;
end;
if s='明夷之夬' then
begin
  result:='环堵倚鉏，升斗属口。贫贱所处，心寒悲苦。';
  exit;
end;
if s='明夷之姤' then
begin
  result:='孤独特处，莫依为辅，心劳志苦。';
  exit;
end;
if s='明夷之萃' then
begin
  result:='稷为尧使，西见王母。拜请百福，赐我喜子，长乐富有。';
  exit;
end;
if s='明夷之升' then
begin
  result:='鸣条之灾，北奔犬胡。左袵为长，国号匈奴。主君旄头，立为单于。';
  exit;
end;
if s='明夷之困' then
begin
  result:='绝而复通，虽危不穷。终得其愿，姬姜相从。';
  exit;
end;
if s='明夷之井' then
begin
  result:='阳并悖狂，拔剑自伤，为身生殃。';
  exit;
end;
if s='明夷之革' then
begin
  result:='方圆不同，刚柔异乡。掘井得石，劳而无功。';
  exit;
end;
if s='明夷之鼎' then
begin
  result:='乘风驾雨，与鸣鸟俱。动举千里，见我爱母。';
  exit;
end;
if s='明夷之震' then
begin
  result:='三涂五岳，阳城太室。神明所扶，独无丘革。';
  exit;
end;
if s='明夷之艮' then
begin
  result:='鸱鸮娶妇，深目窈身。折腰不媚，与伯相背。';
  exit;
end;
if s='明夷之渐' then
begin
  result:='转行轨轨，行近不远。旦夕入门，与君笑言。';
  exit;
end;
if s='明夷之归妹' then
begin
  result:='求利难国，逃去我北。复归其城，不为吾贼。';
  exit;
end;
if s='明夷之丰' then
begin
  result:='日月之涂，所行必到。无凶无咎，安宁不殆。';
  exit;
end;
if s='明夷之旅' then
begin
  result:='管仲遇桓，得其愿欢。胶目启牢，振冠无忧。笑喜不庄，空言妄行。';
  exit;
end;
if s='明夷之巽' then
begin
  result:='出入蹈践，动顺天时。俯仰有节，祸灾不来。';
  exit;
end;
if s='明夷之兑' then
begin
  result:='内崩中伤，上乱无常。虽有美粟，我不得食。';
  exit;
end;
if s='明夷之涣' then
begin
  result:='逐祸除患，道德神仙。遏恶万里，福常在前，身乐以安。';
  exit;
end;
if s='明夷之节' then
begin
  result:='牛惊马走，上下浑扰。鼓音不绝，顷公奔败。';
  exit;
end;
if s='明夷之中孚' then
begin
  result:='西上九阪，往来流连。止须时日，虚与有得。';
  exit;
end;
if s='明夷之小过' then
begin
  result:='虎怒捕羊，猬不能攘。';
  exit;
end;
if s='明夷之既济' then
begin
  result:='涌泉涓涓，南流不绝，卒为江海。坏败邑里，家无所处，将师袭战，获其丑虏。';
  exit;
end;
if s='明夷之未济' then
begin
  result:='桃弓苇戟，除残去恶，敌人执服。';
  exit;
end;

end;

function jiaren(const s: string):string;
begin
if s='家人' then
begin
  result:='天命赤乌，与兵徼期。征伐无道，诛其君傲。居止何忧。';
  exit;
end;
if s='家人之乾' then
begin
  result:='千岁槐根，身多斧瘢。伤夷倒掘，枝叶不存。';
  exit;
end;
if s='家人之坤' then
begin
  result:='喭喭谔谔，虎豹相齚。畏惧悚息，终无难恶。';
  exit;
end;
if s='家人之屯' then
begin
  result:='娶于姜吕，驾迎新妇。少齐在门，夫子欢喜。';
  exit;
end;
if s='家人之蒙' then
begin
  result:='膏壤肥泽，民人孔乐。宜利居止，长安富有。';
  exit;
end;
if s='家人之需' then
begin
  result:='主有圣德，上配太极。皇灵建中，授我以福。';
  exit;
end;
if s='家人之讼' then
begin
  result:='耄老蒙钝，不见东西。少者弗慕，君不与谋。悬舆致仕，退归里居。';
  exit;
end;
if s='家人之师' then
begin
  result:='三狂北行，道逢大狼。暮宿患宅，为祸堪伤。';
  exit;
end;
if s='家人之比' then
begin
  result:='更旦初岁，振除祸败。新衣元服，拜受利福。';
  exit;
end;
if s='家人之小畜' then
begin
  result:='杲杲白日，为月所食。损上毁下，郑昭出走。';
  exit;
end;
if s='家人之履' then
begin
  result:='君子失意，小人得志。乱扰并作，奸邪充塞。虽有百尧，颠不可救。';
  exit;
end;
if s='家人之泰' then
begin
  result:='仁德优洽，恩及异域，泽被殊方。福庆隐伏，作蚕不织，寒无所得。';
  exit;
end;
if s='家人之否' then
begin
  result:='东求金玉，反得弊石。名曰无宜，字曰丑恶，众所贱恶。';
  exit;
end;
if s='家人之同人' then
begin
  result:='击鼓合战，士怯叛亡。威令不行，败我成功。';
  exit;
end;
if s='家人之大有' then
begin
  result:='仲春孟夏，和气所舍。生我嘉福，国无残贼。';
  exit;
end;
if s='家人之谦' then
begin
  result:='尹氏伯奇，父子生离。无罪被辜，长舌为灾。';
  exit;
end;
if s='家人之豫' then
begin
  result:='五谷不熟，民苦困急。驾之新邑，嘉乐有得。';
  exit;
end;
if s='家人之随' then
begin
  result:='登虚望贫，暮食无飡。长子南戍，与我生分。';
  exit;
end;
if s='家人之蛊' then
begin
  result:='东市齐鲁，南贾荆楚。羽毛齿革，为吾利宝。';
  exit;
end;
if s='家人之临' then
begin
  result:='节情省欲，赋敛有度。家给人足，公刘以富。';
  exit;
end;
if s='家人之观' then
begin
  result:='恭宽信敏，功加四海。辟去不祥，喜来从母。';
  exit;
end;
if s='家人之噬嗑' then
begin
  result:='张狂妄行，与恶相逢。不得所欲，生我独凶。';
  exit;
end;
if s='家人之贲' then
begin
  result:='画龙头颈，文章不成。甘言美语，诡辞无名。';
  exit;
end;
if s='家人之剥' then
begin
  result:='骑龙乘风，上见神公。彭祖受刺，王乔赞通。巫咸就位，拜寿无穷。';
  exit;
end;
if s='家人之复' then
begin
  result:='温仁君子，忠孝所在。八国为邻，祸灾不处。';
  exit;
end;
if s='家人之无妄' then
begin
  result:='威权分离，乌夜徘徊。群蔽月光，大人诛伤。';
  exit;
end;
if s='家人之大畜' then
begin
  result:='学灵三年，仁圣且神。先见吉祥，吉喜福庆。鳱鹄知来，告我无忧。';
  exit;
end;
if s='家人之颐' then
begin
  result:='东山辞家，处妇思夫。伊威盈室，长股羸户。叹我君子，役日未已。';
  exit;
end;
if s='家人之大过' then
begin
  result:='张颔开口，舌直距齿。然诺不行，政乱无绪。';
  exit;
end;
if s='家人之坎' then
begin
  result:='吹角高邦，有失牛羊。众民惊惶，敬慎避咎，敕不行殃。';
  exit;
end;
if s='家人之离' then
begin
  result:='南行出城，世得福祉。王姬归齐，赖其所欲。';
  exit;
end;
if s='家人之咸' then
begin
  result:='心狂志悖，视聪耸类。政令无常，下民多孽。';
  exit;
end;
if s='家人之恒' then
begin
  result:='安上宜官，一日九迁。踰群越等，牧养常山。';
  exit;
end;
if s='家人之遁' then
begin
  result:='东邻嫁女，为王妃后。庄公筑馆，以尊王母。归于京师，季姜悦喜。';
  exit;
end;
if s='家人之大壮' then
begin
  result:='六甲无子，以丧其戊。五丁不亲，庚失曾孙，癸走出门。';
  exit;
end;
if s='家人之晋' then
begin
  result:='阴雾不清，浊政乱民。孟秋季夏，水坏我居。';
  exit;
end;
if s='家人之明夷' then
begin
  result:='骑豚逐羊，不见所望。径涉虎庐，亡豚失羊。';
  exit;
end;
if s='家人之睽' then
begin
  result:='安床厚褥，不得久宿。弃我喜晏，困于南国。投杼之忧，不成祸灾。';
  exit;
end;
if s='家人之蹇' then
begin
  result:='五方四维，安平不危。利以居止，保有玉女。';
  exit;
end;
if s='家人之解' then
begin
  result:='西贾巴蜀，寒雪至毂。欲前不得，复反其室。';
  exit;
end;
if s='家人之损' then
begin
  result:='刚柔相呼，二姓为家。霜降既同，惠我以仁。';
  exit;
end;
if s='家人之益' then
begin
  result:='天马五道，炎火分处。往来上下，相随哭歌。凶恶如何。';
  exit;
end;
if s='家人之夬' then
begin
  result:='出门怀忧，东上祸丘。与凶相遇，自为灾患。';
  exit;
end;
if s='家人之姤' then
begin
  result:='西行求玉，冀得隋璞。反见凶恶，使我惊惑。';
  exit;
end;
if s='家人之萃' then
begin
  result:='出入无妄，动作失利。衔忧怀祸，使我多悴。';
  exit;
end;
if s='家人之升' then
begin
  result:='高楼无柱，颠僵不久。纣失三仁，身死牧野。';
  exit;
end;
if s='家人之困' then
begin
  result:='避祸逃殃，身全不伤。高位疾颠，华落坠亡。';
  exit;
end;
if s='家人之井' then
begin
  result:='张牙反目，怒齚作怒。狂马挠犬，道惊伤轸。';
  exit;
end;
if s='家人之革' then
begin
  result:='泉涸龙忧，箕子为奴。干叔陨命，殷破其家。';
  exit;
end;
if s='家人之鼎' then
begin
  result:='向食饮酒，嘉宾聚会。牂羊大猪，君子饶有。';
  exit;
end;
if s='家人之震' then
begin
  result:='黄牛骍犊，东行折角。冀得百祥，反亡我囊。';
  exit;
end;
if s='家人之艮' then
begin
  result:='路多枳棘，步刺我足。不利旅客，为心作毒。';
  exit;
end;
if s='家人之渐' then
begin
  result:='执斧破薪，使媒求妇。和合二姓，亲御饮酒。召彼邻里，公姑悦喜。';
  exit;
end;
if s='家人之归妹' then
begin
  result:='驾车出门，顺时宜西。福佑我身，安宁无患。';
  exit;
end;
if s='家人之丰' then
begin
  result:='日新东升，魁杓为祸。仆台为秦，使我久坐。';
  exit;
end;
if s='家人之旅' then
begin
  result:='山陵丘墓，魂魄室屋。精光竭尽，长卧无觉。';
  exit;
end;
if s='家人之巽' then
begin
  result:='孩子贪饵，为利所说。探釜把瓶，烂其臂手。';
  exit;
end;
if s='家人之兑' then
begin
  result:='何材待时，闭门独愁。蚯蚓冬行，解我无忧。桑蚕不得，女红不成。';
  exit;
end;
if s='家人之涣' then
begin
  result:='解商惊惶，散我衣裳，君不安邦。';
  exit;
end;
if s='家人之节' then
begin
  result:='害政养贼，背主人愆。跛行不安，国危为患。';
  exit;
end;
if s='家人之中孚' then
begin
  result:='祸走患伏，喜为我福。凶恶消亡，灾害不作。';
  exit;
end;
if s='家人之小过' then
begin
  result:='老马为驹，病鸡不雏。三雌独宿，利在山北。';
  exit;
end;
if s='家人之既济' then
begin
  result:='播天舞地，挠乱神所，守乐无咎。';
  exit;
end;
if s='家人之未济' then
begin
  result:='异国殊俗，情不相得。金木为仇，酋贼擅杀。';
  exit;
end;

end;


function kui(const s: string):string;
begin
if s='睽' then
begin
  result:='仓盈庾亿，宜稼黍稷，年岁有息。';
  exit;
end;
if s='睽之乾' then
begin
  result:='被服文衣，游观酒池。上堂见觞，喜为吾兄，使我忧亡。';
  exit;
end;
if s='睽之坤' then
begin
  result:='邑姜叔子，天文在手。实沈参虚，封为晋侯。';
  exit;
end;
if s='睽之屯' then
begin
  result:='改柯易叶，饭温不食。豪雄争强，先者受福。';
  exit;
end;
if s='睽之蒙' then
begin
  result:='馨香陟降，明德上登。社神佑顾，命予大邻。';
  exit;
end;
if s='睽之需' then
begin
  result:='老狼白獹，长尾大胡。前颠却踬，进退遇祟。';
  exit;
end;
if s='睽之讼' then
begin
  result:='山没丘浮，陆为水鱼，燕雀无庐。';
  exit;
end;
if s='睽之师' then
begin
  result:='懿公浅愚，不受深谋。无援失国，为狄所贼。';
  exit;
end;
if s='睽之比' then
begin
  result:='鼎炀其耳，热不可举。大涂塞壅，旅人心苦。';
  exit;
end;
if s='睽之小畜' then
begin
  result:='凶声丑言，恶不可闻。君子舍之，往恨我心。';
  exit;
end;
if s='睽之履' then
begin
  result:='昧暮乘车，履危蹈沟。亡失群物，摧折两轴。';
  exit;
end;
if s='睽之泰' then
begin
  result:='南有嘉鱼，驾黄取。鲂鱮诩诩，利来无忧。';
  exit;
end;
if s='睽之否' then
begin
  result:='隔在九山，往来劳难。心结不通，失其所欢。';
  exit;
end;
if s='睽之同人' then
begin
  result:='下流难居，狂夫多罢。贞良温柔，年岁不富。';
  exit;
end;
if s='睽之大有' then
begin
  result:='狐狸雉兔，畏人逃去。分首窜匿，不知所处。';
  exit;
end;
if s='睽之谦' then
begin
  result:='异体殊俗，各有所属。西邻孤妪，欲寄我室。主母骂詈，终不可得。';
  exit;
end;
if s='睽之豫' then
begin
  result:='怒非怨妬，贪得腐鼠。而呼鹰鹯，自令失饵，致被困患。';
  exit;
end;
if s='睽之随' then
begin
  result:='五心六意，歧道多怪。非君本心，生我恨悔。';
  exit;
end;
if s='睽之蛊' then
begin
  result:='三班六黑，同室共食。日长月息，我家有德。';
  exit;
end;
if s='睽之临' then
begin
  result:='方船备水，旁河燃火，终身无祸。';
  exit;
end;
if s='睽之观' then
begin
  result:='翳屏独语，不闻朝市。以利居服，兔跛后闻。';
  exit;
end;
if s='睽之噬嗑' then
begin
  result:='居处不安，徙反触患。';
  exit;
end;
if s='睽之贲' then
begin
  result:='剠刖髠劓，子所贱弃。批捍之言，我心不快。';
  exit;
end;
if s='睽之剥' then
begin
  result:='阜田禾黍，堆壤麻枲。衣食我躬，室家饶有。';
  exit;
end;
if s='睽之复' then
begin
  result:='两目失明，日夺无光。胫足跛倚，不可以行，顿于丘旁。';
  exit;
end;
if s='睽之无妄' then
begin
  result:='金城朔方，外国多羊。履霜不时，去复为忧。';
  exit;
end;
if s='睽之大畜' then
begin
  result:='匿痼不医，乱政生灾。纣作淫虐，商破其墟。';
  exit;
end;
if s='睽之颐' then
begin
  result:='鬼哭泣社，悲伤无后。甲子昧爽，殷人绝嗣。';
  exit;
end;
if s='睽之大过' then
begin
  result:='猋风卒起，车驰揭揭。弃古追亡，失其和节，忧心惙惙。';
  exit;
end;
if s='睽之坎' then
begin
  result:='耄老失明，闻善不从。自令颠沛，反为咎殃。';
  exit;
end;
if s='睽之离' then
begin
  result:='随风骑龙，与利相逢。田获三狐，商伯有功。冲冲之邑，长安无他。';
  exit;
end;
if s='睽之咸' then
begin
  result:='三牛五牂，重明作福，使我有得。疾入官狱，忧在心腹。';
  exit;
end;
if s='睽之恒' then
begin
  result:='孟巳己丑，哀呼尼父。明德讫终，乱害滋起。';
  exit;
end;
if s='睽之遁' then
begin
  result:='华灯百枝，消暗衰微。精光讫尽，奄如灰糜。';
  exit;
end;
if s='睽之大壮' then
begin
  result:='鹰飞雉退，兔伏不起。狐张狼鸣，野鸡骇惊。';
  exit;
end;
if s='睽之晋' then
begin
  result:='斗战天门，身有何患。室家具在，不失其欢。';
  exit;
end;
if s='睽之明夷' then
begin
  result:='东家杀牛，行逆腥臊。神背西顾，命衰绝周。亳社灾烧，宋人夷诛。';
  exit;
end;
if s='睽之家人' then
begin
  result:='阴阳辨舒，二姓相合。婚姻孔云，生我利福。';
  exit;
end;
if s='睽之蹇' then
begin
  result:='东入海口，循流北走。一高一下，五邑无主。十日六夜，死于水涘。';
  exit;
end;
if s='睽之解' then
begin
  result:='孤竹之墟，失妇无夫。伤于蒺藜，不见其妻。东郭棠姜，武子以亡。';
  exit;
end;
if s='睽之损' then
begin
  result:='天门东墟，尽既为灾。跰喑聋，秦伯受殃。';
  exit;
end;
if s='睽之益' then
begin
  result:='赖先休光，受福之祉。虽遭乱溃，独不危殆。';
  exit;
end;
if s='睽之夬' then
begin
  result:='折若蔽目，不见稚叔。三足孤乌，远其元夫。';
  exit;
end;
if s='睽之姤' then
begin
  result:='二人同室，兄弟合食。和乐相好，各得所欲。';
  exit;
end;
if s='睽之萃' then
begin
  result:='继体守藩，纵欲废贤。君臣淫佚，夏氏失身。侧室之门，福禄来存。';
  exit;
end;
if s='睽之升' then
begin
  result:='老狐屈尾，东西为鬼。病我长女，哭涕诎指。或西或东，大华易诱。';
  exit;
end;
if s='睽之困' then
begin
  result:='大树之子，百条共母。当夏六月，枝叶茂盛。鸾凤以庇，召伯避暑。翩翩偃仰，各得其所。';
  exit;
end;
if s='睽之井' then
begin
  result:='井堙木刊，国多暴残。楚王失戍，坏我太坛。';
  exit;
end;
if s='睽之革' then
begin
  result:='驾黄买苍，与利相迎。心获所守，不累弟兄。';
  exit;
end;
if s='睽之鼎' then
begin
  result:='仓盈庾亿，宜稼黍稷。年丰岁熟，民得安息。';
  exit;
end;
if s='睽之震' then
begin
  result:='龙生马渊，寿考且神。飞腾上天，舍宿轩辕。居常乐安。';
  exit;
end;
if s='睽之艮' then
begin
  result:='思顾所之，今乃逢时。洗濯故忧，拜我欢来。';
  exit;
end;
if s='睽之渐' then
begin
  result:='魁罡所当，初为败殃。君子流连，困于水浆。求金东山，利在代乡。贾市有息，子载母行。';
  exit;
end;
if s='睽之归妹' then
begin
  result:='礛诸攻玉，无不钻凿。龙体具举，鲁般为辅。三圣翼事，所求必喜。';
  exit;
end;
if s='睽之丰' then
begin
  result:='喜来如云，举家蒙欢。众才君子，驾福盈门。';
  exit;
end;
if s='睽之旅' then
begin
  result:='响像无形，骨体不成。微行衰索，消灭无名。';
  exit;
end;
if s='睽之巽' then
begin
  result:='积水不温，北陆苦寒。露宿多风，君子伤心。';
  exit;
end;
if s='睽之兑' then
begin
  result:='黄马绿车，驾之大都。赞达才能，使我无忧。';
  exit;
end;
if s='睽之涣' then
begin
  result:='从风放火，艾芝俱死。三害积房，叔子中伤。';
  exit;
end;
if s='睽之节' then
begin
  result:='一身三手，无益于辅。两足共节，不能克敏。';
  exit;
end;
if s='睽之中孚' then
begin
  result:='南向陋室，风雨并入。埃尘积湿，王母盲痹。偏枯心疾，乱我家次。';
  exit;
end;
if s='睽之小过' then
begin
  result:='采薇出车，鱼丽思初。上下促急，君子怀忧。';
  exit;
end;
if s='睽之既济' then
begin
  result:='先易后否，告我利市。骚苏自苦，思我故止。';
  exit;
end;
if s='睽之未济' then
begin
  result:='生宜地乳，上皇大喜。隆我福祉，贵寿无极。';
  exit;
end;

end;

function shuishangjian(const s: string):string;
begin
if s='蹇' then
begin
  result:='同载共舆，中道别去。丧我元夫，独与孤居。';
  exit;
end;
if s='蹇之乾' then
begin
  result:='叔肸居冤，祁子自邑。乘遽解患，羊舌脱免，赖得生全。';
  exit;
end;
if s='蹇之坤' then
begin
  result:='兔聚东郭，众犬俱猎。围缺不成，无所能获。';
  exit;
end;
if s='蹇之屯' then
begin
  result:='作室山根，人以为安。一夕崩颠，败我壶飱。';
  exit;
end;
if s='蹇之蒙' then
begin
  result:='疾风尘起，乱扰崩始。强大并小，先否后喜。';
  exit;
end;
if s='蹇之需' then
begin
  result:='洁齐沐浴，思明君德。哀公怯弱，风氏复北。';
  exit;
end;
if s='蹇之讼' then
begin
  result:='土瘠瘦薄，培塿无柏，使我不乐。';
  exit;
end;
if s='蹇之师' then
begin
  result:='褰衣涉河，水深渍罢。赖遇舟子，济脱无他。';
  exit;
end;
if s='蹇之比' then
begin
  result:='襄送季女，至于荡道。齐子旦夕，留连久处';
  exit;
end;
if s='蹇之小畜' then
begin
  result:='三孙六子，安无所苦。中岁废殆，亡我所使。';
  exit;
end;
if s='蹇之履' then
begin
  result:='扬风偃草，尘埃俱起。清浊溷散，忠直隐处。';
  exit;
end;
if s='蹇之泰' then
begin
  result:='履险登危，道远劳罢。去家自归，困涉大波。';
  exit;
end;
if s='蹇之否' then
begin
  result:='六艺之门，仁义俱存。镃基逢时，尧舜为君。伤寒热温，下至黄泉。';
  exit;
end;
if s='蹇之同人' then
begin
  result:='被服文衣，游观酒池。上堂见觞，喜为吾兄，使我忧亡。';
  exit;
end;
if s='蹇之大有' then
begin
  result:='生时不利，天命灾至。制于斧瘢，昼夜勤苦。';
  exit;
end;
if s='蹇之谦' then
begin
  result:='天门开辟，牢户寥廓。桎梏解脱，拘囚纵释。';
  exit;
end;
if s='蹇之豫' then
begin
  result:='川原难游，水为我忧。多言少实，命鹿为驹。建德开基，君子逢时，利以仲疑。';
  exit;
end;
if s='蹇之随' then
begin
  result:='乡岁逢时，与生为期。枝叶盛茂，君子无忧。';
  exit;
end;
if s='蹇之蛊' then
begin
  result:='六鹢退飞，为襄败祥。陈师合战，左股夷伤。遂崩不起，霸功不成。';
  exit;
end;
if s='蹇之临' then
begin
  result:='雷君出装，隐隐西行。霖雨不止，流为河江，南国以伤。';
  exit;
end;
if s='蹇之观' then
begin
  result:='牙孽生达，室蟠启户。幽人利贞，鼓翼起舞。';
  exit;
end;
if s='蹇之噬嗑' then
begin
  result:='火起上门，不为我残。跳脱东西，独得生完。不利出邻，病疾忧患。';
  exit;
end;
if s='蹇之贲' then
begin
  result:='举事无成，不利出征。言不可用，众莫能平。';
  exit;
end;
if s='蹇之剥' then
begin
  result:='老狼白獹，长尾大胡。前颠却踬，进退遇祟。';
  exit;
end;
if s='蹇之复' then
begin
  result:='日入道极，劳者休息。班马还师，复我燕室。';
  exit;
end;
if s='蹇之无妄' then
begin
  result:='林麓山薮，非人所处。鸟兽无礼，使我心苦。';
  exit;
end;
if s='蹇之大畜' then
begin
  result:='蓄利积福，日新其德。高氏饮食，忧不为患。';
  exit;
end;
if s='蹇之颐' then
begin
  result:='张罗百目，鸟不得北。缩颈挂翼，困于窘国。君子治德，获誉受福。';
  exit;
end;
if s='蹇之大过' then
begin
  result:='伯虎仲熊，德义渊宏。使布五教，阴阳顺序。';
  exit;
end;
if s='蹇之坎' then
begin
  result:='跛踦相随，日暮牛罢。陵迟后旅，失利亡雌。';
  exit;
end;
if s='蹇之离' then
begin
  result:='嬴氏违良，使孟寻兵。老师不已，败于齐卿。';
  exit;
end;
if s='蹇之咸' then
begin
  result:='日月并居，常暗且微。高山崩颠，丘陵为溪。';
  exit;
end;
if s='蹇之恒' then
begin
  result:='鸟雀食谷，张口受哺。蒙被恩德，长大成就。柔顺利贞，君臣合好。';
  exit;
end;
if s='蹇之遁' then
begin
  result:='虽踬复起，不毁牙齿。克免平复，忧除无疾。';
  exit;
end;
if s='蹇之大壮' then
begin
  result:='草木黄落，岁暮无室。虐政为贼，大人失福。';
  exit;
end;
if s='蹇之晋' then
begin
  result:='避凶东走，反入祸口。制于牙爪，骨为灰土。';
  exit;
end;
if s='蹇之明夷' then
begin
  result:='欲飞不能，志苦心劳，福不我求。';
  exit;
end;
if s='蹇之家人' then
begin
  result:='羔裘豹袪，东与福遇。驾迎吾兄，送我骊黄。';
  exit;
end;
if s='蹇之睽' then
begin
  result:='东耕破犁，西失良妻。灾害不避，家贫无资。';
  exit;
end;
if s='蹇之解' then
begin
  result:='鱼陆失所，凫龟困苦。泽无萑蒲，晋国以虚。';
  exit;
end;
if s='蹇之损' then
begin
  result:='脱兔无蹄，三步五罢。南行不进，后市劳苦。';
  exit;
end;
if s='蹇之益' then
begin
  result:='行役未已，新事复起。姬姜劳苦，不得休止。';
  exit;
end;
if s='蹇之夬' then
begin
  result:='白日杨光，火为正王。销金厌兵，雷车避藏。阴雨不行，民安其乡。';
  exit;
end;
if s='蹇之姤' then
begin
  result:='放衔垂辔，奔马不制。弃法作奸，君失其位。';
  exit;
end;
if s='蹇之萃' then
begin
  result:='司命下游，喜解我忧。皇母缓带，婴儿笑喜。';
  exit;
end;
if s='蹇之升' then
begin
  result:='黄帝出游，驾龙乘马。东上泰山，南过齐鲁，邦国咸喜。';
  exit;
end;
if s='蹇之困' then
begin
  result:='既往不说，忧来祸结。比户为患，无所申雪。';
  exit;
end;
if s='蹇之井' then
begin
  result:='荷蒉隐居，以避乱倾。终身不仕，遂其洁清。';
  exit;
end;
if s='蹇之革' then
begin
  result:='折梃舂稷，君不得食。头痒搔跟，无益于疾。';
  exit;
end;
if s='蹇之鼎' then
begin
  result:='植根不固，华叶落去，便为枯树。';
  exit;
end;
if s='蹇之震' then
begin
  result:='凶门生患，牢户多冤。沙池秃齿，使叔困贫。';
  exit;
end;
if s='蹇之艮' then
begin
  result:='登山履谷，与虎相触。猬为功曹，班叔奔北，脱之喜国。';
  exit;
end;
if s='蹇之渐' then
begin
  result:='麟凤所翔，国无咎殃。贾市十倍，复归惠里。';
  exit;
end;
if s='蹇之归妹' then
begin
  result:='路险道难，水遏我前。进往不利，回车复还。';
  exit;
end;
if s='蹇之丰' then
begin
  result:='延颈望邑，思归我室。台榭不成，未得安息。';
  exit;
end;
if s='蹇之旅' then
begin
  result:='蒙生株瞿，棘挂我须。小人嫉妒，使恩不遂。';
  exit;
end;
if s='蹇之巽' then
begin
  result:='南至隐域，深潜处匿。聪明闭塞，与死为伍。';
  exit;
end;
if s='蹇之兑' then
begin
  result:='机饵设张，司暴子良。范叔不廉，凶害及身。';
  exit;
end;
if s='蹇之涣' then
begin
  result:='从骑出谷，游戏苦域。阪高不进，利无所得';
  exit;
end;
if s='蹇之节' then
begin
  result:='西国强梁，为虎作狼。东吞齐楚，并有其王。';
  exit;
end;
if s='蹇之中孚' then
begin
  result:='登山伐辐，虎在我侧。王孙无惧，仁不见贼。';
  exit;
end;
if s='蹇之小过' then
begin
  result:='六月骙骙，各欲有至。专征束装，俟时旦明。';
  exit;
end;
if s='蹇之既济' then
begin
  result:='道陟多阪，牛马蜿蟺。车不利载，请求不得。';
  exit;
end;
if s='蹇之未济' then
begin
  result:='一口三舌，相妨无益。群羊百牂，不为威强。亡马失驹，家耗于财。';
  exit;
end;


end;


function jie(const s: string):string;
begin
if s='解' then
begin
  result:='驾言出游，鸟斗车前。更相捽灭，兵寇旦来。回车亟还，可以无忧。';
  exit;
end;
if s='解之乾' then
begin
  result:='大都之居，无物不具。抱布贸丝，所求必得。';
  exit;
end;
if s='解之坤' then
begin
  result:='胶着木连，不出牢关，家室相安。';
  exit;
end;
if s='解之屯' then
begin
  result:='孟伯食长，惧其畏王。赖四蒙五，抱福归房。';
  exit;
end;
if s='解之蒙' then
begin
  result:='朽舆疲驷，不任衔辔。君子服之，谈何容易。';
  exit;
end;
if s='解之需' then
begin
  result:='许嫁既婚，利福在身。适惠生桓，为我鲁君。';
  exit;
end;
if s='解之讼' then
begin
  result:='入门大喜，上堂见母。妻子俱在，兄弟饶有。';
  exit;
end;
if s='解之师' then
begin
  result:='推车上山，力不能任。颠蹶蹉跌，伤我中心。';
  exit;
end;
if s='解之比' then
begin
  result:='鹰飞退去，不食其雏。禽尚如此，何况人乎。';
  exit;
end;
if s='解之小畜' then
begin
  result:='福弃我走，利不可得。幽人利贞，终无怨慝。';
  exit;
end;
if s='解之履' then
begin
  result:='夫妻反目，不能正室。翁云于南，妪言还北。并后匹嫡，二政乱国。';
  exit;
end;
if s='解之泰' then
begin
  result:='阳衰伏匿，阴淫为贼。赖幸王孙，遂至嘉国。';
  exit;
end;
if s='解之否' then
begin
  result:='入山求王，不见和璞。终日至暮，劳无所得。';
  exit;
end;
if s='解之同人' then
begin
  result:='鸣鸾四牡，驾出行狩。合格有获，献公饮酒。';
  exit;
end;
if s='解之大有' then
begin
  result:='覆手举牍，易为功力。正月元日，平饮致福。';
  exit;
end;
if s='解之谦' then
begin
  result:='三火起明，雨灭其光。高位疾颠，骄恣诛伤。';
  exit;
end;
if s='解之豫' then
begin
  result:='裹糗荷粮，与利相逢。高飞有得，君子获福。';
  exit;
end;
if s='解之随' then
begin
  result:='水土相得，万物蕃殖。膏泽优渥，君子有德。';
  exit;
end;
if s='解之蛊' then
begin
  result:='道理和得，人不相贼。君子往之，乐有利福。';
  exit;
end;
if s='解之临' then
begin
  result:='天孙帝子，与日月处。光荣于世，福禄繁祉。';
  exit;
end;
if s='解之观' then
begin
  result:='陪依在位，乘非其器。折足覆餗，毁伤宝玉。';
  exit;
end;
if s='解之噬嗑' then
begin
  result:='鹢飞中退，举事不遂。且守仁德，犹恐失坠。';
  exit;
end;
if s='解之贲' then
begin
  result:='經棗整冠，意盈不厭。桀紂迷惑，讒佞傷賢。使國亂傾';
  exit;
end;
if s='解之剥' then
begin
  result:='申酉退跌，阴慝前作。柯条华枝，复泥不白。';
  exit;
end;
if s='解之复' then
begin
  result:='平正贱使，主服苦事。';
  exit;
end;
if s='解之无妄' then
begin
  result:='钓鲂河湄，水泛无涯。振衣徒归，上下昏迷。属公逊齐。';
  exit;
end;
if s='解之大畜' then
begin
  result:='胎养蒙生，始见兆形。遭逢雷电，摧角折颈。采虻山头，终安不倾。';
  exit;
end;
if s='解之颐' then
begin
  result:='阳春枯槁，夏多水潦。霜雹俱作，伤我禾黍，年岁困苦。';
  exit;
end;
if s='解之大过' then
begin
  result:='三身六齿，痛疾不已。龋病蠹缺，堕落其宅。';
  exit;
end;
if s='解之坎' then
begin
  result:='失时无友，嘉耦出走，傫如丧狗。';
  exit;
end;
if s='解之离' then
begin
  result:='宣重微民，岁乐年息。有国无咎，君子安喜。';
  exit;
end;
if s='解之咸' then
begin
  result:='登几上车，驾驷南游。合从散横，燕齐以强。';
  exit;
end;
if s='解之恒' then
begin
  result:='鸟集茂林，柔顺利贞。心乐愿得，感戴慈母。';
  exit;
end;
if s='解之遁' then
begin
  result:='启蛰始生，万物美荣。祉禄未成，市贾无赢。';
  exit;
end;
if s='解之大壮' then
begin
  result:='骄胡犬形，造恶作凶。无所能成，还自灭身。';
  exit;
end;
if s='解之晋' then
begin
  result:='异国他土，出良骏马。去如奔虻，害不能伤。';
  exit;
end;
if s='解之明夷' then
begin
  result:='恪敬竞职，心不作慝。君明臣忠，民赖其福。';
  exit;
end;
if s='解之家人' then
begin
  result:='三女求夫，伺候山隅。不见复关，长思忧叹。';
  exit;
end;
if s='解之睽' then
begin
  result:='驾福乘喜，东至嘉国。戴庆南行，离我室居。';
  exit;
end;
if s='解之蹇' then
begin
  result:='四奸为残，齐鲁道难。前驱执殳，戒守为患。';
  exit;
end;
if s='解之损' then
begin
  result:='下扰上烦，蠹政为患，岁饥无年。';
  exit;
end;
if s='解之益' then
begin
  result:='鸡雉失雏，常畏狐狸。黄池要盟，越国以昌。';
  exit;
end;
if s='解之夬' then
begin
  result:='坚冰黄鸟，终日悲号。不见白粒，但观蓬蒿。数惊鸷鸟，为我心忧。';
  exit;
end;
if s='解之姤' then
begin
  result:='玉铣铁颐，仓库空虚。市贾无盈，与我为仇。';
  exit;
end;
if s='解之萃' then
begin
  result:='窃名盗位，居非其家。霜陨不实，为阴所贼。';
  exit;
end;
if s='解之升' then
begin
  result:='贼仁伤德，天怒不福。斩刈宗社，失其本域。';
  exit;
end;
if s='解之困' then
begin
  result:='万物和生，蛰蛊振起。益爵增福，日受其喜。';
  exit;
end;
if s='解之井' then
begin
  result:='和气所生，物皆不朽。圣贤居位，国无凶咎。';
  exit;
end;
if s='解之革' then
begin
  result:='龙游凤舞，岁乐民喜。';
  exit;
end;
if s='解之鼎' then
begin
  result:='行行窘步，次宿方舍。居安不惧，姬姜何忧。';
  exit;
end;
if s='解之震' then
begin
  result:='水深难游，霜寒难涉。商伯失利，旅人稽留。';
  exit;
end;
if s='解之艮' then
begin
  result:='跛倚相随，日暮牛罢。陵迟后旅，失利亡雌。';
  exit;
end;
if s='解之渐' then
begin
  result:='一牛九锁，更相牵挛。案明如市，不得东西。请谳得报，日中被刑。';
  exit;
end;
if s='解之归妹' then
begin
  result:='春桃生花，季女宜家。受福孔多，男为邦君。';
  exit;
end;
if s='解之丰' then
begin
  result:='雷鼓东行，稼穑凋伤。大夫执政，君赞其明。';
  exit;
end;
if s='解之旅' then
begin
  result:='季世多忧，乱国淫游。殃祸立至，民无以休。';
  exit;
end;
if s='解之巽' then
begin
  result:='发輗温汤，过角宿房。宣时布和，无所不通。';
  exit;
end;
if s='解之兑' then
begin
  result:='水中大贾，求利食子。商人不至，市空无有。';
  exit;
end;
if s='解之涣' then
begin
  result:='春草萌生，万物敷荣。阴阳和调，国乐无忧。';
  exit;
end;
if s='解之节' then
begin
  result:='左眇右盲，目视不明。下民多孽，君失其常。';
  exit;
end;
if s='解之中孚' then
begin
  result:='悦以内安，不利出门。忧除祸消，公孙何尤。';
  exit;
end;
if s='解之小过' then
begin
  result:='丹书之信，言不负语。易我骐驎，君子有德。';
  exit;
end;
if s='解之既济' then
begin
  result:='上政骚扰，螟虫并起。害我嘉谷，年岁无稷。';
  exit;
end;
if s='解之未济' then
begin
  result:='干旄旌旗，执职在郊。虽有宝玉，无路致之。';
  exit;
end;

end;

function shun(const s: string):string;
begin
if s='损' then
begin
  result:='路多枳棘，步刺我足。不利旅客，为心所毒。';
  exit;
end;
if s='损之乾' then
begin
  result:='鲤鲔鲫鰕，积福多鱼。资所无有，富我邦家。';
  exit;
end;
if s='损之坤' then
begin
  result:='景星照堂，麟游凤翔。仁施大行，颂声作兴。征者无明，失其宠光。';
  exit;
end;
if s='损之屯' then
begin
  result:='羊肠九萦，相推稍前。止须王孙，乃能上天。';
  exit;
end;
if s='损之蒙' then
begin
  result:='四手共身，莫适所闲。更相访接，动失事便。';
  exit;
end;
if s='损之需' then
begin
  result:='水流趋下，远至东海。求我所有，买鲂与鲤。';
  exit;
end;
if s='损之讼' then
begin
  result:='春栗夏枣，山鲜希有。斗千石万，贵不可贩。';
  exit;
end;
if s='损之师' then
begin
  result:='旦往暮还， 相佑与聚，无有凶患。';
  exit;
end;
if s='损之比' then
begin
  result:='大蛇当路，使季畏惧。汤火之灾，切近我肤。赖其天幸，归于室庐。';
  exit;
end;
if s='损之小畜' then
begin
  result:='徙足去域，乱入陈国。有所畏避，深藏邃匿。';
  exit;
end;
if s='损之履' then
begin
  result:='海为水宗，聪圣且明。百流归德，无有叛逆，常饶优足。';
  exit;
end;
if s='损之泰' then
begin
  result:='夏麦麸（麦黄），霜击其芒。病君败国，使年大伤。';
  exit;
end;
if s='损之否' then
begin
  result:='秋隼冬翔，数被严霜。雄犬夜鸣，家扰不宁。';
  exit;
end;
if s='损之同人' then
begin
  result:='乐仁上德，东邻慕义，来兴吾国。';
  exit;
end;
if s='损之大有' then
begin
  result:='逐忧除殃，污泥生粱。下田为王。';
  exit;
end;
if s='损之谦' then
begin
  result:='暗昧冥语，转相迷误。鬼魅所居，谁知卧处。';
  exit;
end;
if s='损之豫' then
begin
  result:='西历玉田，东入玉关。登上福堂，饮万岁浆。';
  exit;
end;
if s='损之随' then
begin
  result:='比目四翼，来安我国。福善上堂，与我同床。';
  exit;
end;
if s='损之蛊' then
begin
  result:='乘牛逐骥，日暮不至。路宿多畏，亡其骍骓';
  exit;
end;
if s='损之临' then
begin
  result:='元吉无咎，安宁不殆。';
  exit;
end;
if s='损之观' then
begin
  result:='奋翅鼓翼，翱翔外国。逍遥徙倚，来归温室。';
  exit;
end;
if s='损之噬嗑' then
begin
  result:='河伯娶妇，东山氏女。新婚三日，浮云洒雨。露我菅茅，万邦蒙佑。';
  exit;
end;
if s='损之贲' then
begin
  result:='婴儿求乳，慈母归子。黄麑悦喜，得其甘饱。';
  exit;
end;
if s='损之剥' then
begin
  result:='贫鬼守门，日破我盆。毁罂伤瓶，空虚无子。';
  exit;
end;
if s='损之复' then
begin
  result:='多载重负，捐弃于野。王母谁子，但自劳苦。';
  exit;
end;
if s='损之无妄' then
begin
  result:='雄狐绥绥，登山崔嵬。昭告显功，大福允兴。';
  exit;
end;
if s='损之大畜' then
begin
  result:='婴儿孩子，未有知识。彼童而角，乱我政事。';
  exit;
end;
if s='损之颐' then
begin
  result:='十丸同投，为雉所离。独得跳脱，完全不亏。';
  exit;
end;
if s='损之大过' then
begin
  result:='狐济濡尾，求橘得枳。季姜怀悔，鲍舍鱼臰。';
  exit;
end;
if s='损之坎' then
begin
  result:='踆足息肩，所忌不难。金城铜郭，以铁为关。藩屏周卫，安全无患。';
  exit;
end;
if s='损之离' then
begin
  result:='戴尧扶禹，松乔彭祖。西过王母，道路夷易，无敢难者。';
  exit;
end;
if s='损之咸' then
begin
  result:='京庾积聚，黍稷以极。行者疾至，可以厌饱。';
  exit;
end;
if s='损之恒' then
begin
  result:='良夫孔姬，胁悝登台。柴季不扶，卫辄走逃。';
  exit;
end;
if s='损之遁' then
begin
  result:='天之所予，福禄常在，不忧危殆。';
  exit;
end;
if s='损之大壮' then
begin
  result:='行触天罡，马死车伤。身无聊赖，困穷乏粮。';
  exit;
end;
if s='损之晋' then
begin
  result:='铅刀切玉，坚不可得。尽我筋力，胝茧为疾。';
  exit;
end;
if s='损之明夷' then
begin
  result:='穆违百里，使孟奋武。将军帅战，败于殽口。';
  exit;
end;
if s='损之家人' then
begin
  result:='有人追亡，鸟言所匿，不日而得。';
  exit;
end;
if s='损之睽' then
begin
  result:='府藏之富，王以振贷。捕鱼河海，罟网多得。';
  exit;
end;
if s='损之蹇' then
begin
  result:='鸿飞遵陆，公归不复，伯氏客宿。';
  exit;
end;
if s='损之解' then
begin
  result:='凫过稻芦，甘乐鱑鳅。虽惊不去，田畯怀忧。';
  exit;
end;
if s='损之益' then
begin
  result:='雨师娶妇，黄炎季女。成礼既婚，相呼南去。膏泽田里，年丰大喜。';
  exit;
end;
if s='损之夬' then
begin
  result:='积蓄有余，粪土不居。美哉轮奂，出有高车。';
  exit;
end;
if s='损之姤' then
begin
  result:='重门击柝，介士守护。终有他道，虽惊不惧。';
  exit;
end;
if s='损之萃' then
begin
  result:='大都王市，稠人多宝。公孙宜贾，资货万倍。';
  exit;
end;
if s='损之升' then
begin
  result:='秋隼冬翔，数被严霜。甲兵充庭，万物不生。';
  exit;
end;
if s='损之困' then
begin
  result:='招祸致凶，来螫我邦。痛在手足，不得安息。';
  exit;
end;
if s='损之井' then
begin
  result:='秦失其鹿，疾走先得。勇夫慕义，君子率服。';
  exit;
end;
if s='损之革' then
begin
  result:='山陵四塞，遏我径路。欲还不得，复我故处。';
  exit;
end;
if s='损之鼎' then
begin
  result:='一指食肉，口无所得，舌馋于腹。';
  exit;
end;
if s='损之震' then
begin
  result:='晨夜惊骇，不知所止。皇母相佑，卒得安处。';
  exit;
end;
if s='损之艮' then
begin
  result:='豺狼所言，语无成全。误我白马，使干口来。';
  exit;
end;
if s='损之渐' then
begin
  result:='呼精灵来，魄生无忧。疾病瘳愈，解我患愁。';
  exit;
end;
if s='损之归妹' then
begin
  result:='牧羊逐兔，使鱼捕鼠。任非其人，废日无功，不免辛苦。';
  exit;
end;
if s='损之丰' then
begin
  result:='堂祥上楼，与福俱居。席地妃治，国安无忧。';
  exit;
end;
if s='损之旅' then
begin
  result:='禹召诸神，会稽南山。执玉万国，天下康安。';
  exit;
end;
if s='损之巽' then
begin
  result:='太姒文母，仍生圣子。昌发受命，为天下主。';
  exit;
end;
if s='损之兑' then
begin
  result:='两罝同室，兔无谁告。与狂相触，蒙我以恶。';
  exit;
end;
if s='损之涣' then
begin
  result:='桃雀窃脂，巢于小枝。动摇不安，为风所吹。心寒悚惕，常忧殆危。';
  exit;
end;
if s='损之节' then
begin
  result:='阳春长日，万物华实，乐有利福。';
  exit;
end;
if s='损之中孚' then
begin
  result:='邻不我顾，而望玉女。身疾疮癞，谁肯媚者。';
  exit;
end;
if s='损之小过' then
begin
  result:='涸旱不雨，泽竭无流。鱼鳖干口，皇天不忧。';
  exit;
end;
if s='损之既济' then
begin
  result:='狼虎之乡，日争凶讼。受性贪饕，不能容纵。';
  exit;
end;
if s='损之未济' then
begin
  result:='阴注阳疾，水离其室。舟楫大作，伤害黍稷。民饥于食，亦病心腹。';
  exit;
end;

end;

function fengleiyi(const s: string):string;
begin
if s='益' then
begin
  result:='文王四乳，仁爱笃厚。子畜十男，无有夭折。';
  exit;
end;
if s='益之乾' then
begin
  result:='下堂出门，东至九山。逢福值喜，得其安闲。';
  exit;
end;
if s='益之坤' then
begin
  result:='城上有鸟，自名破家。招呼鸩毒，为国灾患。';
  exit;
end;
if s='益之屯' then
begin
  result:='伯虎仲熊，德义渊泓。使敷五教，阴阳顺序。';
  exit;
end;
if s='益之蒙' then
begin
  result:='饮酒醉酗，跳起争斗。伯伤仲僵，东家治丧。';
  exit;
end;
if s='益之需' then
begin
  result:='四目相视，稍近同轨。日昳之后，见吾伯姊。';
  exit;
end;
if s='益之讼' then
begin
  result:='随时逐便，不失利门。多获得福，富于封君。';
  exit;
end;
if s='益之师' then
begin
  result:='陇西冀北，多见骏马。去如猋飚，害不能伤。';
  exit;
end;
if s='益之比' then
begin
  result:='白龙黑虎，起伏俱怒。蚩尤败走，死于鱼首。';
  exit;
end;
if s='益之小畜' then
begin
  result:='鸿飞戾天，避害紫渊。虽有锋门，不能危身。';
  exit;
end;
if s='益之履' then
begin
  result:='平国不君，夏氏作乱。乌号窃发，灵公陨命。';
  exit;
end;
if s='益之泰' then
begin
  result:='江汉上游，政逆民忧。阴伐其阳，雄受其殃。';
  exit;
end;
if s='益之否' then
begin
  result:='东家杀牛，闻臭腥臊。神怒不顾，命衰绝周。亳社灾烧，宋人夷诛。';
  exit;
end;
if s='益之同人' then
begin
  result:='西诛不服，恃强负力。倍道趋敌，师徒败覆。';
  exit;
end;
if s='益之大有' then
begin
  result:='一妇六夫，乱扰不治。张亡季疾，莫适为公。政道壅塞，周君失邦。';
  exit;
end;
if s='益之谦' then
begin
  result:='配合相迎，利之四乡。昏以为期，明星煌煌。欣喜奭怿，所言得当。';
  exit;
end;
if s='益之豫' then
begin
  result:='猿堕高木，不踒手足。握金怀玉，还归其室。';
  exit;
end;
if s='益之随' then
begin
  result:='卷领遁世，仁德不害。三圣攸同，周国茂兴。';
  exit;
end;
if s='益之蛊' then
begin
  result:='去患脱厄，安无怵惕。上福喜堂，见我欢悦。';
  exit;
end;
if s='益之临' then
begin
  result:='带季儿良，时利权兵。将师合战，敌不能当，赵魏以强。';
  exit;
end;
if s='益之观' then
begin
  result:='鹄思其雄，欲随凤东。顺理羽翼，出次须日。中留北邑，复反其室。';
  exit;
end;
if s='益之噬嗑' then
begin
  result:='且如惊鹿，不能定足。室家分散，各走匿竄。';
  exit;
end;
if s='益之贲' then
begin
  result:='甲乙丙丁，俱归我庭。三丑六子，入门见母。';
  exit;
end;
if s='益之剥' then
begin
  result:='蹑华颠观，浮云风雨。不博心安，吉匿无咎。';
  exit;
end;
if s='益之复' then
begin
  result:='德施流行，利之四乡。雨师洒道，风伯逐殃。巡狩封禅，以告成功。';
  exit;
end;
if s='益之无妄' then
begin
  result:='水流趋下，遂成东海。求我所有，买鳣与鲤。';
  exit;
end;
if s='益之大畜' then
begin
  result:='和气相薄，膏润津泽，生我嘉谷。';
  exit;
end;
if s='益之颐' then
begin
  result:='忧惊已除，祸不成灾，安全以来。';
  exit;
end;
if s='益之大过' then
begin
  result:='坚冰黄鸟，常哀悲愁。不见白粒，但覩藜蒿。数惊鸷鸟，为我心忧。';
  exit;
end;
if s='益之坎' then
begin
  result:='翕翕（车甸）（车甸），陨坠崩颠。灭其令名，身命不全。';
  exit;
end;
if s='益之离' then
begin
  result:='因祸受福，喜盈其室。';
  exit;
end;
if s='益之咸' then
begin
  result:='陆居千里，不见河海，无有鱼市。';
  exit;
end;
if s='益之恒' then
begin
  result:='鹿得美草，鸣呼其友。九族和睦，不忧饥乏。';
  exit;
end;
if s='益之遁' then
begin
  result:='出门得党，不逢祸殃。入户自若，不见矛戟。';
  exit;
end;
if s='益之大壮' then
begin
  result:='罍尊重席，命我嘉客。福佑久长，不见祸殃。';
  exit;
end;
if s='益之晋' then
begin
  result:='鸿雁俱飞，北就鱼池。鳣鲔鰋鲤，众多饶有。一笱获两，利得过倍。';
  exit;
end;
if s='益之明夷' then
begin
  result:='当风奋翼，与鸟飞北。入我家国，见吾庆室。';
  exit;
end;
if s='益之家人' then
begin
  result:='麒麟凤凰，善政得祥。阴阳和调，国无灾殃。';
  exit;
end;
if s='益之睽' then
begin
  result:='逐狐东山，水遏我前。深不可涉，失其后便。';
  exit;
end;
if s='益之蹇' then
begin
  result:='丑戌亥子，饥馑所生。阴为暴客，水绝我食。';
  exit;
end;
if s='益之解' then
begin
  result:='狐狸雉兔，畏人逃去。分走窜匿，不知所处。';
  exit;
end;
if s='益之损' then
begin
  result:='桀跖恶人，使德不通。炎旱为殃，年谷大伤。';
  exit;
end;
if s='益之夬' then
begin
  result:='兔乳在室，行求雀食。虎攫我子，长号不已。';
  exit;
end;
if s='益之姤' then
begin
  result:='土阶明堂，礼让益兴。雄雌相得，使我无疾。';
  exit;
end;
if s='益之萃' then
begin
  result:='送金出门，并失玉丸。往来井上，破瓮坏盆。';
  exit;
end;
if s='益之升' then
begin
  result:='讽德诵功，美周盛隆。加其旦辅，光济冲人。';
  exit;
end;
if s='益之困' then
begin
  result:='盗窃灭身，二母不亲。王后无党，毁其宝灵。';
  exit;
end;
if s='益之井' then
begin
  result:='六月骙骙，各欲有至。专征束装，俟时旦明。';
  exit;
end;
if s='益之革' then
begin
  result:='雀行求粒，误入网罭。赖仁君子，复说归室。';
  exit;
end;
if s='益之鼎' then
begin
  result:='仁德孔明，患祸不伤。期誓不至，室人衔恤。';
  exit;
end;
if s='益之震' then
begin
  result:='龟厌江海，陆行不止。自令枯槁，失其都市，虽忧无咎。';
  exit;
end;
if s='益之艮' then
begin
  result:='孤独特处，莫依为辅，心劳志苦。';
  exit;
end;
if s='益之渐' then
begin
  result:='伯仲言留，叔子云去。虽去无咎，主母大喜。';
  exit;
end;
if s='益之归妹' then
begin
  result:='初忧不安，后得笑欢，虽惧无患。';
  exit;
end;
if s='益之丰' then
begin
  result:='好战亡国，师不以律。称上陨坠，齐侯狠戾，其被灾祟。';
  exit;
end;
if s='益之旅' then
begin
  result:='鹿在泽陂，豺伤其麑，泣血独哀。';
  exit;
end;
if s='益之巽' then
begin
  result:='天地闭塞，仁智隐伏。商旅不行，利润难得。';
  exit;
end;
if s='益之兑' then
begin
  result:='福德之士，欢悦日喜。夷吾相桓，三归为臣，赏流子孙。';
  exit;
end;
if s='益之涣' then
begin
  result:='上无飞鸟，下无走兽。扰乱未治，民劳于事。';
  exit;
end;
if s='益之节' then
begin
  result:='握斗运枢，顺天无忧，与乐并居。';
  exit;
end;
if s='益之中孚' then
begin
  result:='戴盆望天，不见星辰。顾小失大，福逃墙外。';
  exit;
end;
if s='益之小过' then
begin
  result:='月削日衰，工女下机。宇宙灭明，不见三光。';
  exit;
end;
if s='益之既济' then
begin
  result:='操戟剌鱼，披发立忧。虎脱我衣，狼取我袍，亡马失财。';
  exit;
end;
if s='益之未济' then
begin
  result:='两人俱醉，相与悖戾。心乖不同，争讼匈匈。';
  exit;
end;

end;

function guai(const s: string):string;
begin
if s='夬' then
begin
  result:='戴尧扶禹，松乔彭祖。西遇王母，道路夷易，无敢难者。';
  exit;
end;
if s='夬之乾' then
begin
  result:='狼戾美谋，无言不殊。允厌帝心，悦以获佑。';
  exit;
end;
if s='夬之坤' then
begin
  result:='岁暮华落，阳入阴室。万物伏匿，绝不可得。';
  exit;
end;
if s='夬之屯' then
begin
  result:='鸡鸣失时，君骚相忧。犬吠不休，行者稽留。';
  exit;
end;
if s='夬之蒙' then
begin
  result:='凫鹥游泾，君子以宁。履德不愆，福禄来成。';
  exit;
end;
if s='夬之需' then
begin
  result:='魃为灾虐，风吹云却。欲止不得，复归其宅。';
  exit;
end;
if s='夬之讼' then
begin
  result:='东行破车，步入危家。衡门倒垂，无以为主。卖袍续食，糟糠不饱。';
  exit;
end;
if s='夬之师' then
begin
  result:='青牛白咽，呼我俱田。历山之下，可以多耕。岁稔时节，民人安宁。';
  exit;
end;
if s='夬之比' then
begin
  result:='异国殊俗，情不相得。金木为仇，酋贼擅杀。';
  exit;
end;
if s='夬之小畜' then
begin
  result:='阴阳精液，膏熟脱拆。胎卵成魄，肇生头目，日有大喜。';
  exit;
end;
if s='夬之履' then
begin
  result:='饥虫作害，偏多乱纒，绪不可得。';
  exit;
end;
if s='夬之泰' then
begin
  result:='青蛉如云，为兵导先。民人冤急，不知东西。';
  exit;
end;
if s='夬之否' then
begin
  result:='班马旋师，以息劳疲。役夫嘉喜，入户见妻。';
  exit;
end;
if s='夬之同人' then
begin
  result:='坐争立讼，纷纷匈匈。卒成祸乱，灾及家公。';
  exit;
end;
if s='夬之大有' then
begin
  result:='鹿食美草，逍遥求饱。趋走山间，过期乃还，肥泽且厌。';
  exit;
end;
if s='夬之谦' then
begin
  result:='田鼠野雉，意常欲去。拘制笼槛，不得摇动。';
  exit;
end;
if s='夬之豫' then
begin
  result:='日趋月步，周遍次舍。历险致远，无有难处。';
  exit;
end;
if s='夬之随' then
begin
  result:='天孙帝子，与日月处。光荣于世，福禄繁祉。';
  exit;
end;
if s='夬之蛊' then
begin
  result:='晨風文翰，大舉就溫。時過我邑，羿無所得。';
  exit;
end;
if s='夬之临' then
begin
  result:='旦生夕死，名曰婴鬼。不可得祀。';
  exit;
end;
if s='夬之观' then
begin
  result:='疾贫望幸，使伯南贩。开牢择羊，多得大牂。';
  exit;
end;
if s='夬之噬嗑' then
begin
  result:='长城骊山，生民大残。涉叔发难，唐叔为患。';
  exit;
end;
if s='夬之贲' then
begin
  result:='娶于姜吕，驾迎新妇。少齐在门，夫子欢喜。';
  exit;
end;
if s='夬之剥' then
begin
  result:='随时草木，灌枝叶起。扶疏条桃，长大盛美，华沃铄舒。';
  exit;
end;
if s='夬之复' then
begin
  result:='姬姜既欢，二姓为婚。霜降合好，西施在前。';
  exit;
end;
if s='夬之无妄' then
begin
  result:='戴笠独宿，昼不见日。勤苦无代，长劳悲思。';
  exit;
end;
if s='夬之大畜' then
begin
  result:='始加元服，二十系室。新婚既乐，伯季有得。';
  exit;
end;
if s='夬之颐' then
begin
  result:='二至灵台，文所止游。云物备具，长乐无忧。';
  exit;
end;
if s='夬之大过' then
begin
  result:='久阴霖雨，涂行泥潦。商人休止，市空无有。';
  exit;
end;
if s='夬之坎' then
begin
  result:='城坏厌境，数为齐病。侵伐不休，君臣扰乱。上下屈竭，士氏乏财。';
  exit;
end;
if s='夬之离' then
begin
  result:='南国盛茂，黍稷醴酒。可以飨养，乐我嘉友。';
  exit;
end;
if s='夬之咸' then
begin
  result:='忧在心腹，内崩为疾。祸起萧墙，意如制国。';
  exit;
end;
if s='夬之恒' then
begin
  result:='朽根刖树，华叶落去。卒逢大猋，随风僵仆。';
  exit;
end;
if s='夬之遁' then
begin
  result:='树表为坛，相与期言。午中不会，宠荣弃废。';
  exit;
end;
if s='夬之大壮' then
begin
  result:='四足俱走，奴疲任后。两战不胜，败于东楚。';
  exit;
end;
if s='夬之晋' then
begin
  result:='执辔西朝，回还故处。麦秀伤心，叔父有忧。';
  exit;
end;
if s='夬之明夷' then
begin
  result:='夜长日短，阴为阳贼。万物空枯，藏于北陆。';
  exit;
end;
if s='夬之家人' then
begin
  result:='鸤鸠七子，均而不殆。长大成就，弃而合好。';
  exit;
end;
if s='夬之睽' then
begin
  result:='三羊上山，驰至太原。黄龙负舟，遂到夷阳，究其玉囊。';
  exit;
end;
if s='夬之蹇' then
begin
  result:='首足易处，头尾颠倒。公为雌妪，乱其蚕织。';
  exit;
end;
if s='夬之解' then
begin
  result:='登高望家，役事未休。王事靡盬，不得逍遥。';
  exit;
end;
if s='夬之损' then
begin
  result:='畏昏不行，候旦待明。燎猎受福，老赖其庆。';
  exit;
end;
if s='夬之益' then
begin
  result:='孤独特处，莫依为辅，心劳志苦。';
  exit;
end;
if s='夬之姤' then
begin
  result:='山石朽破，消崩堕坠。上下离心，君受其祟。';
  exit;
end;
if s='夬之萃' then
begin
  result:='文母圣子，无疆寿考，为天下主。';
  exit;
end;
if s='夬之升' then
begin
  result:='倔傀无仪，前后相违。言如鳖咳，语不可知。';
  exit;
end;
if s='夬之困' then
begin
  result:='五龙俱起，强者败走。露我苗稼，年岁大有。';
  exit;
end;
if s='夬之井' then
begin
  result:='豦除善疑，难为攻医。骥疲盐车，困于衔棰';
  exit;
end;
if s='夬之革' then
begin
  result:='江南多蝮，螫我手足。冤烦诘屈，痛彻心腹。';
  exit;
end;
if s='夬之鼎' then
begin
  result:='心无所据，射鹿不得。多言少实，语无成事。';
  exit;
end;
if s='夬之震' then
begin
  result:='君明臣贤，鸣求其友。显德之士，可以履土。';
  exit;
end;
if s='夬之艮' then
begin
  result:='安上宜官，一日九迁。踰群越等，牧养常山。';
  exit;
end;
if s='夬之渐' then
begin
  result:='峻词解谢，除去垢污。惊之成患，婴去酷残。';
  exit;
end;
if s='夬之归妹' then
begin
  result:='翁狂妪盲，相牵北行。欲归高邑，迷惑不得。';
  exit;
end;
if s='夬之丰' then
begin
  result:='醉卧道傍，迷旦失明，不全我生。';
  exit;
end;
if s='夬之旅' then
begin
  result:='北登鬼丘，驾龙东游。王叔御后，文武何忧。';
  exit;
end;
if s='夬之巽' then
begin
  result:='恬淡无患，游戏道门。与神往来，长乐以安。';
  exit;
end;
if s='夬之兑' then
begin
  result:='以缗易丝，抱布自媒。弃礼急情，卒罹忧悔。';
  exit;
end;
if s='夬之涣' then
begin
  result:='被服衣冠，游戏道门。以礼相终，身无灾患。';
  exit;
end;
if s='夬之节' then
begin
  result:='大麓鱼池，陆为海涯。君子失行，小人相携。';
  exit;
end;
if s='夬之中孚' then
begin
  result:='渊泉溢出，为我邑祟。道路不通，孩子心愦。';
  exit;
end;
if s='夬之小过' then
begin
  result:='十里望烟，散涣四方。形体灭亡，可入深渊，终不见君。';
  exit;
end;
if s='夬之既济' then
begin
  result:='传言相误，非干径路。鸣鼓逐狼，不知迹处。';
  exit;
end;
if s='夬之未济' then
begin
  result:='东失大珠，西行弃襦。时多不利，使我后起。';
  exit;
end;

end;

function gou(const s: string):string;
begin
if s='姤' then
begin
  result:='河伯大呼，津不可渡。往复尔故，乃无大悔。';
  exit;
end;
if s='姤之乾' then
begin
  result:='蒙被恩德，长大成就。柔顺利贞，君臣合好。';
  exit;
end;
if s='姤之坤' then
begin
  result:='东山西山，各自止安。心虽相望，竟不同堂。';
  exit;
end;
if s='姤之屯' then
begin
  result:='登山上谷，与虎相触。猬为功曹，班叔奔北，脱之嘉国。';
  exit;
end;
if s='姤之蒙' then
begin
  result:='踬跌未起，失利后市，不得鹿子。';
  exit;
end;
if s='姤之需' then
begin
  result:='结珠怀履，卑斯似鬼，为君奴婢。';
  exit;
end;
if s='姤之讼' then
begin
  result:='鸡鸣失时，民侨劳苦。厖吠有威，行者留止。';
  exit;
end;
if s='姤之师' then
begin
  result:='陈妫敬仲，示兆兴姜。乃适营丘，八世大昌。';
  exit;
end;
if s='姤之比' then
begin
  result:='鹿畏人匿，俱入深谷。短命不长，为虎所得，死于牙腹。';
  exit;
end;
if s='姤之小畜' then
begin
  result:='言无约结，不成券契。殷叔季姬，公孙争之。强人委禽，不悦于心，乃适子南。';
  exit;
end;
if s='姤之履' then
begin
  result:='鼓瑟歌舞，欢遗于酒。龙喜张口，大喜在后。';
  exit;
end;
if s='姤之泰' then
begin
  result:='凶忧灾殃，日益章明。祸不可救，三郄夷伤。';
  exit;
end;
if s='姤之否' then
begin
  result:='水流趋下，遂至东海。求我所有，买鳣与鲤。';
  exit;
end;
if s='姤之同人' then
begin
  result:='阴为阳贼，君不能克。举动失常，利无所得。';
  exit;
end;
if s='姤之大有' then
begin
  result:='离床失案，龟丧其愿。都市无会，叔季怀恨。';
  exit;
end;
if s='姤之谦' then
begin
  result:='壅遏堤防，水不得行。火盛阳光，阴霓伏藏，走归其乡。';
  exit;
end;
if s='姤之豫' then
begin
  result:='躄屈复伸，本乘浮云，贵宠毋前。';
  exit;
end;
if s='姤之随' then
begin
  result:='实沈参伐，以义断割。次陆服刑，成我霸功。';
  exit;
end;
if s='姤之蛊' then
begin
  result:='金泉黄宝，宜与我市。娶嫁有息，利得过母。';
  exit;
end;
if s='姤之临' then
begin
  result:='禹召诸神，会稽南山。执玉万国，天下康安。';
  exit;
end;
if s='姤之观' then
begin
  result:='三虫作蛊，践迹无与。胜母盗泉，君子不处。';
  exit;
end;
if s='姤之噬嗑' then
begin
  result:='华叶陨落，公归妪宅。夷子失民，洁己不食。';
  exit;
end;
if s='姤之贲' then
begin
  result:='履机惧毁，身王子废。终得所欲，无有凶害。';
  exit;
end;
if s='姤之剥' then
begin
  result:='道理和得，仁不相贼。君子攸往，乐有利福。';
  exit;
end;
if s='姤之复' then
begin
  result:='合匏同牢，姬姜并居。';
  exit;
end;
if s='姤之无妄' then
begin
  result:='关雎淑女，贤妃圣偶。宜家寿母，福禄长久。';
  exit;
end;
if s='姤之大畜' then
begin
  result:='骐骥脱乳，不知子处。旋踵悲鸣，痛伤我心。';
  exit;
end;
if s='姤之颐' then
begin
  result:='知严绝理，阴孽谋主。十日不食，困于申亥。';
  exit;
end;
if s='姤之大过' then
begin
  result:='监诸攻玉，无不穿凿。龙体具举，鲁班为辅。麟凤成形，德象君子。';
  exit;
end;
if s='姤之坎' then
begin
  result:='昧暮乘车，以至伯家。踰梁渡河，济脱无他。';
  exit;
end;
if s='姤之离' then
begin
  result:='吾有黍稷，委积外场。有角服箱，运致我藏，富于嘉粮。';
  exit;
end;
if s='姤之咸' then
begin
  result:='喜笑且语，不能掩口。官爵并至，庆贺盈户。';
  exit;
end;
if s='姤之恒' then
begin
  result:='雾露霜雪，日暗不明。阴孽为疾，年谷大伤。';
  exit;
end;
if s='姤之遁' then
begin
  result:='伯去我东，发如飞蓬。寤寐长叹，展转空床。内怀怅恨，摧我肝肠。';
  exit;
end;
if s='姤之大壮' then
begin
  result:='亡羊补牢，毋损于忧。骍驷奔走，鹄盗我鱼。';
  exit;
end;
if s='姤之晋' then
begin
  result:='贩鼠卖龟，利少无谋，难以得家。';
  exit;
end;
if s='姤之明夷' then
begin
  result:='西戎为疾，幽君去室。陈子发难，项伯成就。';
  exit;
end;
if s='姤之家人' then
begin
  result:='秋风生哀，华落心悲。公室多难，羊舌氏衰。';
  exit;
end;
if s='姤之睽' then
begin
  result:='持福厌患，去除大残。日长夜尽，喜世蒙恩。';
  exit;
end;
if s='姤之蹇' then
begin
  result:='新受大喜，福履重来。乐且日富，足用丰财。';
  exit;
end;
if s='姤之解' then
begin
  result:='前顿却踬，左跌右逆。登高安梯，复反来归。';
  exit;
end;
if s='姤之损' then
begin
  result:='梦饭不饱，酒未入口。婴女虽好，媒雁不许。';
  exit;
end;
if s='姤之益' then
begin
  result:='大都王市，稠人多宝。公孙宜贾，资货万倍。';
  exit;
end;
if s='姤之夬' then
begin
  result:='两人俱醉，相与背戾。心乖不同，讼争匈匈。';
  exit;
end;
if s='姤之萃' then
begin
  result:='身无头足，超跖空乖。不能远之，中道废休，失利后时。';
  exit;
end;
if s='姤之升' then
begin
  result:='三人俱行，六目光明。道逢淑女，与我骥子。';
  exit;
end;
if s='姤之困' then
begin
  result:='进仕为官，不若复田，获寿保年。';
  exit;
end;
if s='姤之井' then
begin
  result:='先易后否，失我所市。骚苏自苦，思吾故土。';
  exit;
end;
if s='姤之革' then
begin
  result:='苏秦发言，韩魏无患。张子驰说，燕齐以安。';
  exit;
end;
if s='姤之鼎' then
begin
  result:='武库军府，甲兵所聚。非里邑居，不可舍止。';
  exit;
end;
if s='姤之震' then
begin
  result:='二桃三口，莫适所与。为孺子牛，田氏生咎。';
  exit;
end;
if s='姤之艮' then
begin
  result:='西山东山，各自止安。心虽相望，竟不同堂。';
  exit;
end;
if s='姤之渐' then
begin
  result:='不改柯叶，和气冲适。君子所在，安无怵惕。';
  exit;
end;
if s='姤之归妹' then
begin
  result:='将戌系亥，阳藏不起。君子散乱，太山危殆。';
  exit;
end;
if s='姤之丰' then
begin
  result:='天官列宿，五神舍室。宫阙完坚，君安其居。';
  exit;
end;
if s='姤之旅' then
begin
  result:='左手把水，右手把火。如光与鬼，不可得从。';
  exit;
end;
if s='姤之巽' then
begin
  result:='逐狐东山，水遏我前。深不可涉，失利后便。';
  exit;
end;
if s='姤之兑' then
begin
  result:='水渎鱼室，来灌吾邑。冲没我家，与狗俱游。';
  exit;
end;
if s='姤之涣' then
begin
  result:='山险难登，涧中多石。车驰轊击，重载伤轴。担负善踬，跌踒右足。';
  exit;
end;
if s='姤之节' then
begin
  result:='槽空无实，豚彘不食。庶民屈竭，离其居室。';
  exit;
end;
if s='姤之中孚' then
begin
  result:='执热烂手，火为灾咎。公孙无赖，败我王室。';
  exit;
end;
if s='姤之小过' then
begin
  result:='三虎上山，更相噬囓。心志不亲，如仇与怨。';
  exit;
end;
if s='姤之既济' then
begin
  result:='西家嫁子，借邻送女。嘉我淑姬，宾主俱喜。';
  exit;
end;
if s='姤之未济' then
begin
  result:='克身洁已，逢禹巡狩。锡我玄龟，拜受福祉。';
  exit;
end;

end;

function cui(const s: string):string;
begin
if s='萃' then
begin
  result:='蒙庆受福，有所获得。不利出域，病人困棘。';
  exit;
end;
if s='萃之乾' then
begin
  result:='硕鼠四足，飞不上屋。颜氏淑德，未有爵禄。';
  exit;
end;
if s='萃之坤' then
begin
  result:='新受大喜，福履重职，乐且日富。';
  exit;
end;
if s='萃之屯' then
begin
  result:='克身洁已，逢禹巡狩。锡我玄圭，拜受福祉。';
  exit;
end;
if s='萃之蒙' then
begin
  result:='置筐失筥，轮破无辅。家伯为政，病我下土。';
  exit;
end;
if s='萃之需' then
begin
  result:='机言不发，顽不能达。齐鲁为仇，亡我葵丘。';
  exit;
end;
if s='萃之讼' then
begin
  result:='亡锥失斧，公输无辅。抱其彝器，适君子处。';
  exit;
end;
if s='萃之师' then
begin
  result:='家在海隅，桡短深流。伯氏难行，无木以趋。';
  exit;
end;
if s='萃之比' then
begin
  result:='德施流行，利之四乡。雨师洒道，风伯逐殃。巡狩封禅，以告成功。';
  exit;
end;
if s='萃之小畜' then
begin
  result:='筐倾筥覆，丧我公粒。简伯无礼，太师正食。';
  exit;
end;
if s='萃之履' then
begin
  result:='泥滓污辱，弃捐沟渎。为众所笑，终不显录。';
  exit;
end;
if s='萃之泰' then
begin
  result:='狝猴兔足，腥臊少肉。漏卮盛酒，利无所有。';
  exit;
end;
if s='萃之否' then
begin
  result:='鹿畏人藏，俱入深谷。命短不长，为虎所得，死于牙腹。';
  exit;
end;
if s='萃之同人' then
begin
  result:='南山芝兰，君子所有。东家淑女，生我玉宝。';
  exit;
end;
if s='萃之大有' then
begin
  result:='左指右挥，邪佞侈靡。执节无良，灵君以亡。';
  exit;
end;
if s='萃之谦' then
begin
  result:='郁（日夬）不明，为阴所伤。众雾群聚，共夺日光。';
  exit;
end;
if s='萃之豫' then
begin
  result:='穿鼻系株，为虎所拘。王母祝祷，祸不成灾。突然脱来。';
  exit;
end;
if s='萃之随' then
begin
  result:='贫鬼守门，日破我盆。毁罂伤缸，空虚无子。';
  exit;
end;
if s='萃之蛊' then
begin
  result:='襄王叔带，郑人是赖。庄公卿士，王母忧苦。';
  exit;
end;
if s='萃之临' then
begin
  result:='昭君死国，诸夏蒙德。异类既同，宗我王室。';
  exit;
end;
if s='萃之观' then
begin
  result:='冬薮枯腐，当风于道。蒙被尘埃，左右劳苦。';
  exit;
end;
if s='萃之噬嗑' then
begin
  result:='六爻既立，神明喜告。文定吉祥，康叔受福。';
  exit;
end;
if s='萃之贲' then
begin
  result:='泣涕长诀，我心不悦。远送卫野，归宁无咎。';
  exit;
end;
if s='萃之剥' then
begin
  result:='三宿无主，南行劳苦。东里失利，丧其珍宝。';
  exit;
end;
if s='萃之复' then
begin
  result:='大斧破木，谗佞破国。东关梁五，祸及三子。晋人乱危，怀公出走。';
  exit;
end;
if s='萃之无妄' then
begin
  result:='乘风上天，为时服轩。周旋万里，无有患难。';
  exit;
end;
if s='萃之大畜' then
begin
  result:='大树百根，北与山连。文君作人，受福万年。';
  exit;
end;
if s='萃之颐' then
begin
  result:='阳伏在下，阴制佑福。生不逢时，潜龙隐处。';
  exit;
end;
if s='萃之大过' then
begin
  result:='乱头多忧，搔虱生愁。膳夫仲允，使我无聊。';
  exit;
end;
if s='萃之坎' then
begin
  result:='江河淮海，天之都市。商人受福，国家富有。';
  exit;
end;
if s='萃之离' then
begin
  result:='泰山幽谷，凤凰游宿。礼义有序，可以求福。';
  exit;
end;
if s='萃之咸' then
begin
  result:='山水暴怒，坏梁折柱。稽难行旅，留连愁苦。';
  exit;
end;
if s='萃之恒' then
begin
  result:='阿衡服箱，大一载行。巡时历舍，所之吉昌。';
  exit;
end;
if s='萃之遁' then
begin
  result:='三宿无主，南行劳苦。东里失利，丧其珍宝。';
  exit;
end;
if s='萃之大壮' then
begin
  result:='生无父母，出门不喜。买菽失粟，亡我大利。';
  exit;
end;
if s='萃之晋' then
begin
  result:='安坐玉堂，听乐行觞。饮福万岁，曰寿无疆。';
  exit;
end;
if s='萃之明夷' then
begin
  result:='登危入厄，四时变易。春霜夏雪，物皆凋落。';
  exit;
end;
if s='萃之家人' then
begin
  result:='衣穴履穿，无以御寒。细小贫窭，不能自存。';
  exit;
end;
if s='萃之睽' then
begin
  result:='目不可合，忧来搔足。怵惕恐惧，去其邦域。';
  exit;
end;
if s='萃之蹇' then
begin
  result:='赍贝赎狸，不听我词。系于虎须，牵不得来。';
  exit;
end;
if s='萃之解' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存，声芳后时。';
  exit;
end;
if s='萃之损' then
begin
  result:='张王子季，争财相制。商君顽嚣，不知所申。';
  exit;
end;
if s='萃之益' then
begin
  result:='长城既立，四夷宾服。交和结好，昭君是福。';
  exit;
end;
if s='萃之夬' then
begin
  result:='千欢万悦，举事为决。获受嘉庆，动作有得。';
  exit;
end;
if s='萃之姤' then
begin
  result:='种一得十，日益有息。仁政获民，四国睦亲。';
  exit;
end;
if s='萃之升' then
begin
  result:='安子富有，东国不殃。齐郑和亲，显比不喜。';
  exit;
end;
if s='萃之困' then
begin
  result:='九里十山，道仰峻难。牛马不前，复反来还。';
  exit;
end;
if s='萃之井' then
begin
  result:='鸠杖扶老，衣食百口。曾孙寿考，凶恶不起。';
  exit;
end;
if s='萃之革' then
begin
  result:='雾露雪霜，日暗不明。阴孽为疾，年谷大伤。';
  exit;
end;
if s='萃之鼎' then
begin
  result:='迷行数却，不知东西。阴强暴逆，道里不通。';
  exit;
end;
if s='萃之震' then
begin
  result:='登高上山，见王自言。伸理我冤，得职蒙恩。';
  exit;
end;
if s='萃之艮' then
begin
  result:='三世为德，天祚以国。封建少昊，鲁侯之福。';
  exit;
end;
if s='萃之渐' then
begin
  result:='乔木无息，汉女难得。橘柚请佩，反手难悔。';
  exit;
end;
if s='萃之归妹' then
begin
  result:='东邻西家，来即我谋。中告吉诚，使君安宁。';
  exit;
end;
if s='萃之丰' then
begin
  result:='褰衣出户，心欲北走。王孙毋惊，使我长生。';
  exit;
end;
if s='萃之旅' then
begin
  result:='三日不饮，远水无酒。昼夜焦喉，使我为咎。';
  exit;
end;
if s='萃之巽' then
begin
  result:='众口销金，愆言不验。腐臭败兔，入市不售。';
  exit;
end;
if s='萃之兑' then
begin
  result:='姬冠应门，与伯争言。东家失狗，意我不存。争乱忘因，绝其所欢。';
  exit;
end;
if s='萃之涣' then
begin
  result:='祚加明德，兴我周国。公刘文母，福流子孙。';
  exit;
end;
if s='萃之节' then
begin
  result:='针头刺手，百病瘳愈。抑按扪灸，死人复起。';
  exit;
end;
if s='萃之中孚' then
begin
  result:='元龟象齿，大赂为宝。稽疑当否，衰微复起。';
  exit;
end;
if s='萃之小过' then
begin
  result:='故室旧庐，消散无余。不如新创，可以乐居。';
  exit;
end;
if s='萃之既济' then
begin
  result:='老狐多态，行为蛊怪。惊我王母，终无咎悔。';
  exit;
end;
if s='萃之未济' then
begin
  result:='爱子多材，起迹空虚。避害如神，水不能濡。';
  exit;
end;

end;

function sheng(const s: string):string;
begin
if s='升' then
begin
  result:='禹凿龙门，通利水源。东注沧海，人民得安。';
  exit;
end;
if s='升之乾' then
begin
  result:='白鹿鸣呦，呼其老小。喜彼茂草，乐我君子。';
  exit;
end;
if s='升之坤' then
begin
  result:='百里南行，虽微复明。去虞适秦，为穆国卿。';
  exit;
end;
if s='升之屯' then
begin
  result:='王孙宜家，张名益有。龙子善行，西得大寿。';
  exit;
end;
if s='升之蒙' then
begin
  result:='画龙头颈，文章不成。甘言善语，谲词无名。';
  exit;
end;
if s='升之需' then
begin
  result:='商子无良，相怨一方。引斗交争，咎以自当。';
  exit;
end;
if s='升之讼' then
begin
  result:='衰老困极，无齿不食。痔病痏瘵，就长夜室。';
  exit;
end;
if s='升之师' then
begin
  result:='鸢生会稽，稍巨能飞。翱翔桂林，为众鸟雄。';
  exit;
end;
if s='升之比' then
begin
  result:='安平不倾，载福长生，君子以宁。';
  exit;
end;
if s='升之小畜' then
begin
  result:='牛骥同槽，郭氏以亡。国破为墟，君奔走逃。';
  exit;
end;
if s='升之履' then
begin
  result:='日中明德，盛兴两国。仁圣会遇，君受其福，臣多荣禄。';
  exit;
end;
if s='升之泰' then
begin
  result:='公刘之居，太王所业。可以长生，拜受福爵。';
  exit;
end;
if s='升之否' then
begin
  result:='时凋岁霜，君子疾病。宋女无辜，郑受其殃。';
  exit;
end;
if s='升之同人' then
begin
  result:='济河踰厄，脱母怵惕。四叔为卫，使惠不废。';
  exit;
end;
if s='升之大有' then
begin
  result:='缺破不完，残瘵侧偏。公孙幽遏，跛倚后门。';
  exit;
end;
if s='升之谦' then
begin
  result:='延颈远望，眯为目病。不见叔姬，使伯心忧。';
  exit;
end;
if s='升之豫' then
begin
  result:='上无飞鸟，下无走兽。扰乱未清，民劳于事。';
  exit;
end;
if s='升之随' then
begin
  result:='久阴霖雨，涂行泥潦。商人休止，市空无有。';
  exit;
end;
if s='升之蛊' then
begin
  result:='盲者目张，跛倚起行。瞻望日月，与主相迎。';
  exit;
end;
if s='升之临' then
begin
  result:='据斗运枢，高步六虚。权既在手，寰宇可驱。国大无忧，与乐并居。';
  exit;
end;
if s='升之观' then
begin
  result:='稼穑不偏，重适不倾。巧言贼忠，伤我申生。';
  exit;
end;
if s='升之噬嗑' then
begin
  result:='金城铁郭，上下同力。政平民亲，寇不敢贼。';
  exit;
end;
if s='升之贲' then
begin
  result:='日镜不明，冬灾大伤。盗华失实，十年消亡。';
  exit;
end;
if s='升之剥' then
begin
  result:='鳏寡孤独，命禄苦薄。入室无妻，武子悲哀。';
  exit;
end;
if s='升之复' then
begin
  result:='饮酒醉酗，跳起争斗。伯伤叔僵，东家治丧。';
  exit;
end;
if s='升之无妄' then
begin
  result:='介绍微子，使君不殆。二国合欢，燕齐以安。';
  exit;
end;
if s='升之大畜' then
begin
  result:='牵牛系尾，诎折几死。雕世无仁，不知所比。';
  exit;
end;
if s='升之颐' then
begin
  result:='东龙冤毒，不知所触。南北困穷，王子危急。';
  exit;
end;
if s='升之大过' then
begin
  result:='疾贫王孙，北陆无辉。禄命苦薄，两守孤门。';
  exit;
end;
if s='升之坎' then
begin
  result:='公孙驾骊，载游东齐。延陵说产，遗季纻衣。';
  exit;
end;
if s='升之离' then
begin
  result:='王良善御，伯乐知马。文王东猎，获嘉贤士。开福佑周，发旦兴起。';
  exit;
end;
if s='升之咸' then
begin
  result:='日月不居，重耳趋舍。游齐入秦，晋国是霸。';
  exit;
end;
if s='升之恒' then
begin
  result:='假文翰翼，随风偕北。至虞夏国，与舜相得。年岁大乐，邑无盗贼。';
  exit;
end;
if s='升之遁' then
begin
  result:='南行北走，延颈望食。举止失利，累我子孙。';
  exit;
end;
if s='升之大壮' then
begin
  result:='开市作喜，建造利事。平准货宝，海内殷富。';
  exit;
end;
if s='升之晋' then
begin
  result:='三犬俱走，斗于谷口。白者不胜，死于阪下。';
  exit;
end;
if s='升之明夷' then
begin
  result:='骄胡犬形，造恶作凶。无所能成，还自灭身。';
  exit;
end;
if s='升之家人' then
begin
  result:='跪拜赞词，无益于尤。大夫顽嚣，使我心忧。';
  exit;
end;
if s='升之睽' then
begin
  result:='辰次降娄，王驾巡狩。广佑施惠，万国咸喜。';
  exit;
end;
if s='升之蹇' then
begin
  result:='牵羭上楼，与福俱游。劳躬治国，安乐无忧。';
  exit;
end;
if s='升之解' then
begin
  result:='白鸟衔饵，鸣呼其子。旋枝张翅，来从其母。';
  exit;
end;
if s='升之损' then
begin
  result:='盲瞽独宿，莫与共食。老穷于人，病在心腹。';
  exit;
end;
if s='升之益' then
begin
  result:='登木出渊，稍上升天。明德孔圣，白日载荣。';
  exit;
end;
if s='升之夬' then
begin
  result:='彭离济东，迁废上庸。狠戾无节，失其宠功。';
  exit;
end;
if s='升之姤' then
begin
  result:='赞扬上舞，神明生气。拜禹受福，君使我德。';
  exit;
end;
if s='升之萃' then
begin
  result:='从首至足，部分为六。室家离散，逐南乞食。';
  exit;
end;
if s='升之困' then
begin
  result:='民迷失道，乱我统纪。空使干华，实无所有。';
  exit;
end;
if s='升之井' then
begin
  result:='刻画为饰，嫫母无益。毛嫱西施，求事必得。';
  exit;
end;
if s='升之革' then
begin
  result:='日居月诸，遇暗不明。长夜丧甲，绝其纪纲。';
  exit;
end;
if s='升之鼎' then
begin
  result:='衣裳颠倒，为王来呼。成就东周，封受大侯。';
  exit;
end;
if s='升之震' then
begin
  result:='当变立权，摘解患难。涣然冰释，六国以宁。';
  exit;
end;
if s='升之艮' then
begin
  result:='西戎獯鬻，病于我国。杖策之岐，以保乾德。';
  exit;
end;
if s='升之渐' then
begin
  result:='南行逐羊，予利喜亡。阴孽为病，复返其邦。';
  exit;
end;
if s='升之归妹' then
begin
  result:='游戏仁德，日益有福。凶言不至，妖孽灭息。';
  exit;
end;
if s='升之丰' then
begin
  result:='春日新婚，就阳日温。嘉乐万岁，获福大椿。';
  exit;
end;
if s='升之旅' then
begin
  result:='阴升阳伏，舜失其室。相侍不食，安巢如棘。';
  exit;
end;
if s='升之巽' then
begin
  result:='臣尊主卑，权威日衰。侵夺无光，三家逐公。';
  exit;
end;
if s='升之兑' then
begin
  result:='反言为贼，戎女生患。乱吾家国，父子相贼。';
  exit;
end;
if s='升之涣' then
begin
  result:='迎福开户，喜随我后。康伯恺悌，治民以礼。';
  exit;
end;
if s='升之节' then
begin
  result:='日就月将，昭明有功。灵台观赏，胶鼓作人。';
  exit;
end;
if s='升之中孚' then
begin
  result:='百草嘉卉，萌芽将出。昆虫扶户，阳明得所。';
  exit;
end;
if s='升之小过' then
begin
  result:='天所佑助，万国日有。福至祸去，寿命长久。';
  exit;
end;
if s='升之既济' then
begin
  result:='穷夫失居，唯守弊庐。初忧中惧，惟曰兢兢。无悔无虞。';
  exit;
end;
if s='升之未济' then
begin
  result:='买玉得石，失其所欲。荷蒉击磬，隐世无声。';
  exit;
end;

end;

function zheshuikun(const s: string):string;
begin
if s='困' then
begin
  result:='席多针刺，不可以卧。动而有悔，言行俱过。';
  exit;
end;
if s='困之乾' then
begin
  result:='鸟鹊食谷，张口受哺。蒙被恩德，长大成就。柔顺利贞，君臣合好。';
  exit;
end;
if s='困之坤' then
begin
  result:='六鹢退飞，为襄败祥。陈师合战，左股夷伤。遂以薨崩，霸功不成。';
  exit;
end;
if s='困之屯' then
begin
  result:='匍匐出走，惊惶悼恐。白虎生孙，蓐收在后。居中无咎。';
  exit;
end;
if s='困之蒙' then
begin
  result:='庇庐不明，使孔德妨。女孽乱国，虐政伤仁。';
  exit;
end;
if s='困之需' then
begin
  result:='硕鼠四足，不能上屋。颜氏淑德，未有爵禄。';
  exit;
end;
if s='困之讼' then
begin
  result:='襄送季女，至于荡道。齐子旦夕，流连久处。';
  exit;
end;
if s='困之师' then
begin
  result:='麞鹿逐牧，饱归其居。还反次舍，乐得自如。';
  exit;
end;
if s='困之比' then
begin
  result:='望尚阿衡，太宰周公。藩屏辅弼，福禄来同。';
  exit;
end;
if s='困之小畜' then
begin
  result:='开廓宏绪，王迹所基，报以八子，功德俟时。';
  exit;
end;
if s='困之履' then
begin
  result:='八会大都，饶富有余。安民利国，可以长居。';
  exit;
end;
if s='困之泰' then
begin
  result:='阴云四方，日在中央。人虽昏雾，我独昭明。';
  exit;
end;
if s='困之否' then
begin
  result:='魃为灾虐，风吹云却。欲止不得，复归其宅。';
  exit;
end;
if s='困之同人' then
begin
  result:='昭昭略略，非忠信客，言語反覆，以黑為白。';
  exit;
end;
if s='困之大有' then
begin
  result:='三女為姦，俱遊高園，背室夜行，與伯笑言，禍及乃身，冤死誰禱。';
  exit;
end;
if s='困之谦' then
begin
  result:='涉尸留鬼，大斧所视。文昌司过，简公乱死。';
  exit;
end;
if s='困之豫' then
begin
  result:='大足长股，利出行道。囷仓充盈，疏齿善市。宜钱富家，事得万倍。';
  exit;
end;
if s='困之随' then
begin
  result:='筐筥锜釜，可活百口。伊氏鼎俎，大福所起。';
  exit;
end;
if s='困之蛊' then
begin
  result:='升高登虚，欲有望候。驾之北邑，与喜相扶。';
  exit;
end;
if s='困之临' then
begin
  result:='用彼嘉宾，政平且均。螟虫不作，民得安宁。';
  exit;
end;
if s='困之观' then
begin
  result:='桃夭少华，婚悦宜家。君子乐胥，长利止居。';
  exit;
end;
if s='困之噬嗑' then
begin
  result:='东行失旅，不知何处。西归无配，莫与笑语。';
  exit;
end;
if s='困之贲' then
begin
  result:='玩好乱目，巧声迷耳。贼败贞良，君受其殃。';
  exit;
end;
if s='困之剥' then
begin
  result:='明德孔嘉，万岁无亏。驾龙巡狩，王得安所。';
  exit;
end;
if s='困之复' then
begin
  result:='同本异叶，安仁尚德。东邻慕义，来兴吾国。';
  exit;
end;
if s='困之无妄' then
begin
  result:='戴山崔嵬，日高无颓。君王我德，赐以嘉国。';
  exit;
end;
if s='困之大畜' then
begin
  result:='筑室合欢，千里无患。周公万年，佑我二人。';
  exit;
end;
if s='困之颐' then
begin
  result:='养鸡生雏，畜马得驹。明堂太学，君子所居。';
  exit;
end;
if s='困之大过' then
begin
  result:='雷行相逐，无有休息。战于平陆，为夷所覆';
  exit;
end;
if s='困之坎' then
begin
  result:='委蛇循河，北至海涯。涉历要荒，君世无他。';
  exit;
end;
if s='困之离' then
begin
  result:='鸿声大视，高举神化。背昧向明，以通福功。';
  exit;
end;
if s='困之咸' then
begin
  result:='比目四翼，来安吾国。福喜上堂，与我同床。';
  exit;
end;
if s='困之恒' then
begin
  result:='先縠彘季，反谋桓子。不从元帅，遂行挑战，为荆所败。';
  exit;
end;
if s='困之遁' then
begin
  result:='三头六足，欲盗东国。颜子在迩，祸灭不成。';
  exit;
end;
if s='困之大壮' then
begin
  result:='缘山升木，中堕于谷。子舆失劳，黄鸟哀作。';
  exit;
end;
if s='困之晋' then
begin
  result:='南有嘉鱼，驾黄取鳅。鲂鲤弥弥，利来无忧。';
  exit;
end;
if s='困之明夷' then
begin
  result:='邃炁作云，蒙覆大君。塞聪闭明，殷人贾伤。';
  exit;
end;
if s='困之家人' then
begin
  result:='举翅摅翼，跂望南国。延颈却缩，未有所得。';
  exit;
end;
if s='困之睽' then
begin
  result:='坎中虾蟆，乍盈乍虚。三夕二朝，形消无余。';
  exit;
end;
if s='困之蹇' then
begin
  result:='重弋射隼，不知所定。质疑蓍龟，孰可避之。国安上乐，宜利止居。兵寇不至，民无骚忧。';
  exit;
end;
if s='困之解' then
begin
  result:='阴淫寒疾，水离其室。舟楫大作，伤害黍稷。民饥于食，不无病厄。';
  exit;
end;
if s='困之损' then
begin
  result:='离友绝朋，巧言谗慝。覆白污玉，颜叔哀哭。';
  exit;
end;
if s='困之益' then
begin
  result:='童女无媒，不宜动摇。安其室庐，傅母何忧。';
  exit;
end;
if s='困之夬' then
begin
  result:='作凶造患，北檄困贫。东与祸连，伤我左跟。';
  exit;
end;
if s='困之姤' then
begin
  result:='东南其户，风雨不处。曣晛仁人，父子相保。';
  exit;
end;
if s='困之萃' then
begin
  result:='被发兽心，难与比邻。来如飘风，去似绝弦，为狼所残。';
  exit;
end;
if s='困之升' then
begin
  result:='天覆地载，日月运照。阴阳允作，方内四富。';
  exit;
end;
if s='困之井' then
begin
  result:='桀乱无道，民散不聚。背室弃家，君孤出走。';
  exit;
end;
if s='困之革' then
begin
  result:='申酉稷射，阴慝萌作。荷葭载牧，泥涂不白。';
  exit;
end;
if s='困之鼎' then
begin
  result:='踝踵足伤，左指病痈。失旅后时，利走不来。';
  exit;
end;
if s='困之震' then
begin
  result:='四足俱走，驽疲在后。俱战不胜，败于东野。';
  exit;
end;
if s='困之艮' then
begin
  result:='涂行破车，丑女无媒。莫适为偶，孤困独居。';
  exit;
end;
if s='困之渐' then
begin
  result:='拊髀大笑，不知忧惧。开立大路，为王所召。';
  exit;
end;
if s='困之归妹' then
begin
  result:='伯圭东行，与利相逢。出既遭昧，孰不相知，忧不成凶。';
  exit;
end;
if s='困之丰' then
begin
  result:='东行贼家，郑伯失辞。国无贞良，君受其殃。';
  exit;
end;
if s='困之旅' then
begin
  result:='前屈后曲，形体饬急。绞黑大索，困于请室。';
  exit;
end;
if s='困之巽' then
begin
  result:='鼓腋大喜，行婚饮酒。嘉彼诸姜，乐我皇考。';
  exit;
end;
if s='困之兑' then
begin
  result:='国将有事，狐嘈向城，三旦悲鸣，邑主大惊。';
  exit;
end;
if s='困之涣' then
begin
  result:='明德克敏，重华贡举。放勋征用，浚哲蒙佑。';
  exit;
end;
if s='困之节' then
begin
  result:='秋隼冬翔，数被严霜。甲兵充庭，万物不生。鸡犬夜鸣，民人扰惊。';
  exit;
end;
if s='困之中孚' then
begin
  result:='丝纻布帛，人所衣服。掺掺女手，纺绩善织。南国饶有，取之有息。';
  exit;
end;
if s='困之小过' then
begin
  result:='凤有十子，同巢共母。仁圣在位，欢以相保，兴彼周鲁。';
  exit;
end;
if s='困之既济' then
begin
  result:='雄鸡不晨，雌鸣具伸。志疪心离，三族生哀。';
  exit;
end;
if s='困之未济' then
begin
  result:='光祀春城，陈宝鸡鸣。阳明失道，不能自守，消亡为咎。';
  exit;
end;

end;

function jing(const s: string):string;
begin
if s='井' then
begin
  result:='踬跛未起，失利后市，不得鹿子。';
  exit;
end;
if s='井之乾' then
begin
  result:='左辅右弼，金玉满堂。常盈不亡，富如敖仓。';
  exit;
end;
if s='井之坤' then
begin
  result:='雨师娶妇，黄炎季女。成礼既婚，相呼南去。膏泽田里，年岁大喜。';
  exit;
end;
if s='井之屯' then
begin
  result:='螟虫为贼，害我稼穑。尽禾殚麦，秋无所得。';
  exit;
end;
if s='井之蒙' then
begin
  result:='跛躃难步，迟不及舍。露宿泽陂，亡其襦袴。';
  exit;
end;
if s='井之需' then
begin
  result:='大夫祈父，无地不涉。为吾相土，莫如韩乐。可以居止，长安富有。';
  exit;
end;
if s='井之讼' then
begin
  result:='少孤无父，长失慈母。悖悖茕茕，莫与为耦。';
  exit;
end;
if s='井之师' then
begin
  result:='侧弁醉客，长舌作凶。披发夜行，迷乱相误，亡失居处。';
  exit;
end;
if s='井之比' then
begin
  result:='马惊车破，王坠深津。身死魂去，离其室庐。';
  exit;
end;
if s='井之小畜' then
begin
  result:='东行述职，征讨不服。侵齐伐陈，衔璧为臣，大得意还。';
  exit;
end;
if s='井之履' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。';
  exit;
end;
if s='井之泰' then
begin
  result:='本根不固，华叶落去，更为孤妪。';
  exit;
end;
if s='井之否' then
begin
  result:='牧羊稻园，闻虎喧讙。畏惧怵惕，终无祸患。';
  exit;
end;
if s='井之同人' then
begin
  result:='履位乘势，靡有绝弊。为隶所图，与众庶位。';
  exit;
end;
if s='井之大有' then
begin
  result:='大舆多尘，小人伤贤。皇甫司徒，使君失家。';
  exit;
end;
if s='井之谦' then
begin
  result:='安如泰山，福禄屡臻。虽有狼虎，不能危身。';
  exit;
end;
if s='井之豫' then
begin
  result:='同气异门，各别西东。南与凶遇，北伤其孙。';
  exit;
end;
if s='井之随' then
begin
  result:='蜺见不祥，祸起我乡。行人畏惧，邑客逃藏。';
  exit;
end;
if s='井之蛊' then
begin
  result:='养虎畜狼，必见贼伤。无事招祸，自取灾殃。';
  exit;
end;
if s='井之临' then
begin
  result:='顺风吹火，牵骑骥尾。易为功力，因权受福。';
  exit;
end;
if s='井之观' then
begin
  result:='五岳四渎，润洽为德。行不失理，民赖恩福。';
  exit;
end;
if s='井之噬嗑' then
begin
  result:='延陵聪敏，乐听太史。鸡鸣大国，姜氏受福。';
  exit;
end;
if s='井之贲' then
begin
  result:='神鸟五色，凤凰为主。集于王国，使君得所。';
  exit;
end;
if s='井之剥' then
begin
  result:='媒妁光明，虽期不行。齐女长子，乱其纪纲。';
  exit;
end;
if s='井之复' then
begin
  result:='明月作昼，大人失居。众星宵乱，不知所据。';
  exit;
end;
if s='井之无妄' then
begin
  result:='少康兴起，诛浇复祖。微灭复明，享祀大禹。';
  exit;
end;
if s='井之大畜' then
begin
  result:='千门万户，大福所处。黄屋左纛，龙德独有。';
  exit;
end;
if s='井之颐' then
begin
  result:='乾作圣男，坤为智女。配合成就，长生得所。';
  exit;
end;
if s='井之大过' then
begin
  result:='羿张乌号，彀射天狼。钟鼓夜鸣，将军壮心。柱国雄勇，斗死荥阳。';
  exit;
end;
if s='井之坎' then
begin
  result:='炙鱼棝斗，张伺夜鼠。不忍香味，机发为祟，笮不得去。';
  exit;
end;
if s='井之离' then
begin
  result:='高飞不视，贪饕所在。臭腐为患，自害其身。';
  exit;
end;
if s='井之咸' then
begin
  result:='铅刀攻玉，坚不可得。单尽我力，胝胼为疾。';
  exit;
end;
if s='井之恒' then
begin
  result:='方喙宣口，圣智仁厚。解释倒悬，家国大安。';
  exit;
end;
if s='井之遁' then
begin
  result:='蜘蛛南北，巡行罔罟。杜季利兵，伤我心腹。';
  exit;
end;
if s='井之大壮' then
begin
  result:='公孙之政，惠而不烦。乔子相国，终身无患。';
  exit;
end;
if s='井之晋' then
begin
  result:='弧矢大张，道绝不通。小人寇贼，君子壅塞。';
  exit;
end;
if s='井之明夷' then
begin
  result:='藏戟之室，封豕受福。充泽肥腯，子孙蕃息。';
  exit;
end;
if s='井之家人' then
begin
  result:='八子同巢，心劳相思，虽苦无忧。';
  exit;
end;
if s='井之睽' then
begin
  result:='循理举手，举求取予。六体相摩，终无殃咎。';
  exit;
end;
if s='井之蹇' then
begin
  result:='公子王孙，把弹摄丸。发辄有获，室家饶足。';
  exit;
end;
if s='井之解' then
begin
  result:='井渚有悔，渴蜺为怪。不亟徙乡，家受其殃。';
  exit;
end;
if s='井之损' then
begin
  result:='郑会细声，国乱失倾。弘明早见，止乐不听。';
  exit;
end;
if s='井之益' then
begin
  result:='穿室凿墙，不直生讼。褰衣涉露，虽劳无功。';
  exit;
end;
if s='井之夬' then
begin
  result:='脱卵免乳，长大成就。君子万年，动有利得。';
  exit;
end;
if s='井之姤' then
begin
  result:='五心乖离，各引是非。莫适为主，道路塞壅。';
  exit;
end;
if s='井之萃' then
begin
  result:='百柱载梁，千岁不僵。大愿辅福，文武以昌。';
  exit;
end;
if s='井之升' then
begin
  result:='营城洛邑，周公所作。世逮三十，年历七百。福佑丰实，坚固不落。';
  exit;
end;
if s='井之困' then
begin
  result:='从叔旅行，食于东昌。嘉伯悦喜，与我芝酒。';
  exit;
end;
if s='井之革' then
begin
  result:='牛耳聋蔽，不晓声味。委以鼎俎，方始乱溃。';
  exit;
end;
if s='井之鼎' then
begin
  result:='娵訾开门，鹤鸣弹冠。文章进用，舞韶和鸾。三仁翼政，国无灾殃。';
  exit;
end;
if s='井之震' then
begin
  result:='游魂六子，百木所起。三男从父，三女随母。至己而反，各得其所。';
  exit;
end;
if s='井之艮' then
begin
  result:='南山兰茝，使君媚好。皇女长妇，多孙众子。';
  exit;
end;
if s='井之渐' then
begin
  result:='黄虹之野，国君在位。管叔为相，国无灾殃。';
  exit;
end;
if s='井之归妹' then
begin
  result:='穿凿道路，为君除舍。开辟福门，喜在我邻。';
  exit;
end;
if s='井之丰' then
begin
  result:='商风数起，天下昏晦。旱魃为虐，九土兵作。';
  exit;
end;
if s='井之旅' then
begin
  result:='自卫反鲁，时不我与。冰炭异室，仁道闭塞。';
  exit;
end;
if s='井之巽' then
begin
  result:='春阳生草，夏长条肄。万物蕃滋，充实益有。';
  exit;
end;
if s='井之兑' then
begin
  result:='六蛇奔走，俱入茂草。惊于长注，畏惧啄口。';
  exit;
end;
if s='井之涣' then
begin
  result:='明月照夜，使暗为昼。国有仁贤，君尊如故。';
  exit;
end;
if s='井之节' then
begin
  result:='避蛇东走，反入虎口。制于爪牙，骨为灰土。';
  exit;
end;
if s='井之中孚' then
begin
  result:='倾迭不行，弱走善僵。孟絷无良，失其宠光。';
  exit;
end;
if s='井之小过' then
begin
  result:='十羊俱见，黄头为首。岁美民安，国乐无咎。';
  exit;
end;
if s='井之既济' then
begin
  result:='望风入门，来到我邻。铺吾养均。';
  exit;
end;
if s='井之未济' then
begin
  result:='登高车返，视天弥远。虎口不张，害贼消亡。';
  exit;
end;

end;

 function ge(const s: string):string;
begin
if s='革' then
begin
  result:='马服长股，宜行善市。蒙佑谐偶，获金五倍。';
  exit;
end;
if s='革之乾' then
begin
  result:='高原峻山，陆土少泉。草木林麓，喜得所蓄。';
  exit;
end;
if s='革之坤' then
begin
  result:='一门二关，结缉不便。峻道异路，日暮不到。';
  exit;
end;
if s='革之屯' then
begin
  result:='忧患解除，喜至庆来。坐立欢门，与乐为邻。';
  exit;
end;
if s='革之蒙' then
begin
  result:='殊类异路，心不相慕。牝牛牡猳，鳏无室家。';
  exit;
end;
if s='革之需' then
begin
  result:='太王为父，季历孝友。文武圣明，仁政兴起。旦隆四国，载福绥厚。';
  exit;
end;
if s='革之讼' then
begin
  result:='临河求鲤，燕婉失饵。屏气摄息，不得鲤子。';
  exit;
end;
if s='革之师' then
begin
  result:='贾利求福，莫如南国。仁德所在，金玉为质。';
  exit;
end;
if s='革之比' then
begin
  result:='白虎赤愤，窥观王庭。宫阙被甲，大小出征。天地烦溃，育子不婴。';
  exit;
end;
if s='革之小畜' then
begin
  result:='子车针虎，善人危殆。黄鸟悲鸣，伤国无辅。';
  exit;
end;
if s='革之履' then
begin
  result:='两目失明，日暮无光。胫足跛曳，不可以行，顿于丘傍。';
  exit;
end;
if s='革之泰' then
begin
  result:='罗网四张，鸟无所翔。征伐困极，饥寒不食。';
  exit;
end;
if s='革之否' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存。';
  exit;
end;
if s='革之同人' then
begin
  result:='疾贫望幸，贾贩市井。开牢择羊，多得大牂。';
  exit;
end;
if s='革之大有' then
begin
  result:='南山之杨，其叶牂牂。嘉乐君子，为国宠光。';
  exit;
end;
if s='革之谦' then
begin
  result:='东壁余光，数暗不明。主母嫉妬，乱我事业。';
  exit;
end;
if s='革之豫' then
begin
  result:='厌浥晨夜，道多湛露。瀸衣濡袴，重难以步。';
  exit;
end;
if s='革之随' then
begin
  result:='目瞤足动，嘉喜有顷，举家蒙宠。';
  exit;
end;
if s='革之蛊' then
begin
  result:='鹰鹯欲食，短兔困急。逃头见尾，为害所贼。';
  exit;
end;
if s='革之临' then
begin
  result:='鼻移在项，枯叶伤生。下朽上荣，家扰不宁，失其金城。';
  exit;
end;
if s='革之观' then
begin
  result:='飞不远去，法为罔待。禄养未富。';
  exit;
end;
if s='革之噬嗑' then
begin
  result:='倒基败宫，重舌作凶。被发夜行，迷乱相误，亡失居止。';
  exit;
end;
if s='革之贲' then
begin
  result:='亥午相错，败乱绪业，民不得作。';
  exit;
end;
if s='革之剥' then
begin
  result:='野麋畏人，俱入山谷。命短不长，为虎所得，死于牙腹。';
  exit;
end;
if s='革之复' then
begin
  result:='秋冬探巢，不得鹊雏。衔指北去，愧我少姬。';
  exit;
end;
if s='革之无妄' then
begin
  result:='双凫欲飞，俱归稻池。经涉雈泽，为矢所射，伤我胸臆。';
  exit;
end;
if s='革之大畜' then
begin
  result:='天门开辟，牢户寥廓。桎梏解脱，拘囚纵释。';
  exit;
end;
if s='革之颐' then
begin
  result:='尼父孔丘，善钓鲤鱼。罗网一举，得获万头，富我家居。';
  exit;
end;
if s='革之大过' then
begin
  result:='彭生为豕，暴龙作贼。盗尧衣裳，桀跖荷兵。青禽照夜，三旦夷亡。';
  exit;
end;
if s='革之坎' then
begin
  result:='华言风语，乱相诳误。终无凶事，安宁如故。';
  exit;
end;
if s='革之离' then
begin
  result:='延颈见足，身困名辱。欲隐避仇，为害所贼。';
  exit;
end;
if s='革之咸' then
begin
  result:='无足断跟，居处不安，凶恶为残。';
  exit;
end;
if s='革之恒' then
begin
  result:='三人俱行，北求大牂。长孟病足，倩季负粮。柳下之宝，不失我邦。';
  exit;
end;
if s='革之遁' then
begin
  result:='退飞见祥，伤败毁坠。守小失大，功名不遂。';
  exit;
end;
if s='革之大壮' then
begin
  result:='持心瞿目，善数摇动。不安其处，散涣府藏，无有利得。';
  exit;
end;
if s='革之晋' then
begin
  result:='牵尾不前，逆理失臣。卫朔以奔。';
  exit;
end;
if s='革之明夷' then
begin
  result:='禄如周公，建国洛东，父子俱封。';
  exit;
end;
if s='革之家人' then
begin
  result:='君有八人，信允笃诚，为舜所举。';
  exit;
end;
if s='革之睽' then
begin
  result:='久阴霖雨，泥涂行潦。商人休止，市空无宝。';
  exit;
end;
if s='革之蹇' then
begin
  result:='无足断跟，居处不安，凶恶为残。';
  exit;
end;
if s='革之解' then
begin
  result:='马蹄踬车，妇恶破家。青蝇污白，恭子离居。';
  exit;
end;
if s='革之损' then
begin
  result:='噂噂所言，莫如我垣。欢喜坚固，可以长安。';
  exit;
end;
if s='革之益' then
begin
  result:='懿公浅愚，不受深谋。无远失国，为狄所贼。';
  exit;
end;
if s='革之夬' then
begin
  result:='骐骥绿耳，章明造父。伯夙奏献，衰续厥绪。佐文成伯，为晋元辅。';
  exit;
end;
if s='革之姤' then
begin
  result:='驾车入里，求鲜鲂鲤。非其肆居，自令后市。';
  exit;
end;
if s='革之萃' then
begin
  result:='求麞嘉乡，恶地不行。道止中返，喜还其床。';
  exit;
end;
if s='革之升' then
begin
  result:='杖鸠负装，醉卧道傍。不知何公，窃我锦囊。';
  exit;
end;
if s='革之困' then
begin
  result:='宿于昆仑，升入天门。糟丘惠欢，玉泉见君。';
  exit;
end;
if s='革之井' then
begin
  result:='水为火牡，患厌不起。季伯夜行，与喜相逢。';
  exit;
end;
if s='革之鼎' then
begin
  result:='乌孙氏女，深目黑丑。嗜欲不同，过时无耦。';
  exit;
end;
if s='革之震' then
begin
  result:='子鉏执麟，春秋作经。元圣将终，尼父悲心。';
  exit;
end;
if s='革之艮' then
begin
  result:='灼火泉源，钓鲂山巅。鱼不可得，火不肯然。';
  exit;
end;
if s='革之渐' then
begin
  result:='天马五道，炎火久处。往来上下，作文约己。衣枲丝麻，相随笑歌，凶恶如何。';
  exit;
end;
if s='革之归妹' then
begin
  result:='鸱鸮破斧，冲人危殆。赖旦忠德，转祸为福，倾危复立。';
  exit;
end;
if s='革之丰' then
begin
  result:='牡飞门启，忧患大解，不为身祸。';
  exit;
end;
if s='革之旅' then
begin
  result:='石门晨门，荷蒉食贫。遁世隐居，竟不逢时。';
  exit;
end;
if s='革之巽' then
begin
  result:='免聚东郭，众犬俱猎。围缺不成，无所能获。';
  exit;
end;
if s='革之兑' then
begin
  result:='三羊群走，雉兔惊骇。非所畏惧，自令劳苦。';
  exit;
end;
if s='革之涣' then
begin
  result:='羽翮病伤，无以为强。宋公德薄，败于水泓。';
  exit;
end;
if s='革之节' then
begin
  result:='姬姜雅叔，三人偶食。论仁议福，以安王室。';
  exit;
end;
if s='革之中孚' then
begin
  result:='精诚所在，神人为辅。德教之中，弥世长久。三圣乃兴，多受福祉。';
  exit;
end;
if s='革之小过' then
begin
  result:='岐周海隅，独乐不忧。可以避难，全身保才。';
  exit;
end;
if s='革之既济' then
begin
  result:='孤独特处，莫依为辅，心劳志苦';
  exit;
end;
if s='革之未济' then
begin
  result:='顾望登台，意常欲逃。贾辛丑恶，妻不安夫。';
  exit;
end;

end;

function ding(const s: string):string;
begin
if s='鼎' then
begin
  result:='积德之君，仁政且温。伊吕股肱，国富民安。';
  exit;
end;
if s='鼎之乾' then
begin
  result:='倾筐卷耳，忧不能伤。心思故人，悲慕失母。';
  exit;
end;
if s='鼎之坤' then
begin
  result:='郤叔贾贷，行禄多悔，利无所得。';
  exit;
end;
if s='鼎之屯' then
begin
  result:='蹙狂跛辟，袵坐不行。弃损平人，名字无申。';
  exit;
end;
if s='鼎之蒙' then
begin
  result:='文王四乳，仁爱笃厚。子畜十男，夭折无有。';
  exit;
end;
if s='鼎之需' then
begin
  result:='容民蓄众，不离其居。';
  exit;
end;
if s='鼎之讼' then
begin
  result:='三雏相逐，蝇坠釜中。灌沸淹殪，与母长决。';
  exit;
end;
if s='鼎之师' then
begin
  result:='所望在外，鼎命方来。拭爵涤罍，灼食待之，不为季忧。';
  exit;
end;
if s='鼎之比' then
begin
  result:='陆居少泉，高山无云。车行千里，涂污尔轮，亦为我患。';
  exit;
end;
if s='鼎之小畜' then
begin
  result:='东家杀牛，闻臭腥臊。神背西顾，命衰绝周。亳社灾烧，宋人夷诛。';
  exit;
end;
if s='鼎之履' then
begin
  result:='长子入狱，妇馈母哭。霜降旬日，向晦伏法。';
  exit;
end;
if s='鼎之泰' then
begin
  result:='温山松柏，常茂不落。凤凰以庇，得其欢乐。';
  exit;
end;
if s='鼎之否' then
begin
  result:='大屋之下，朝多君子。德施溥育，宋受其福。';
  exit;
end;
if s='鼎之同人' then
begin
  result:='罗张目抉，围合耦缺。采捕无功，鱼鸟生脱。';
  exit;
end;
if s='鼎之大有' then
begin
  result:='羔裘豹袪，高易我宇。君子维好，至老无忧。';
  exit;
end;
if s='鼎之谦' then
begin
  result:='大头明目，载受嘉福。三雀飞来，与禄相得。';
  exit;
end;
if s='鼎之豫' then
begin
  result:='销锋铸耜，休放牛马。甲兵解散，夫妇相保。';
  exit;
end;
if s='鼎之随' then
begin
  result:='吉日车攻，田弋猎禽。宣王饮酒，以告嘉功。';
  exit;
end;
if s='鼎之蛊' then
begin
  result:='商人行旅，资无所有。贪贝逐利，留连王市。轘辕内安，公子何咎。';
  exit;
end;
if s='鼎之临' then
begin
  result:='火入井口，扬芒生角。犯历天门，窥观太微。登上玉床，家易其公。';
  exit;
end;
if s='鼎之观' then
begin
  result:='秋隼冬翔，数被严霜。甲兵充庭，万物不生。鸡犬夜鸣，民扰大惊。';
  exit;
end;
if s='鼎之噬嗑' then
begin
  result:='東行西步，失其次舍。乾侯野井，昭君喪居。';
  exit;
end;
if s='鼎之贲' then
begin
  result:='肿胫病腹，陷厕污辱。命短时极，孤子哀哭。';
  exit;
end;
if s='鼎之剥' then
begin
  result:='切肤近火，虎绝我须。小人横暴，君子何之。';
  exit;
end;
if s='鼎之复' then
begin
  result:='女室作毒，为我心疾。和不能治，晋人赴告。';
  exit;
end;
if s='鼎之无妄' then
begin
  result:='兵征大宛，北出玉门。与胡寇战，平城道西。七日绝粮，身几不全。';
  exit;
end;
if s='鼎之大畜' then
begin
  result:='九子十夫，莫适与居。贞心不壹，自令老孤。';
  exit;
end;
if s='鼎之颐' then
begin
  result:='车行稻麦，遂至家国。乐土无灾，君子何忧。';
  exit;
end;
if s='鼎之大过' then
begin
  result:='作室山根，所以为安。一夕崩颠，破我饔飧。';
  exit;
end;
if s='鼎之坎' then
begin
  result:='六人俱行，各遗其囊。黄鹄失珠，无以为明。';
  exit;
end;
if s='鼎之离' then
begin
  result:='伯蹇叔盲，莫为守囊。我失衣裘，不离阴乡。';
  exit;
end;
if s='鼎之咸' then
begin
  result:='褒宠洒尤，败政倾家。覆我宗国，秦灭周室。';
  exit;
end;
if s='鼎之恒' then
begin
  result:='诡言译语，仇祸相得。冰入炭室，消灭不息。';
  exit;
end;
if s='鼎之遁' then
begin
  result:='彭生为豕，暴龙作灾。盗尧衣裳，聚跖荷兵。青禽照夜，三日夷亡。';
  exit;
end;
if s='鼎之大壮' then
begin
  result:='朝露白日，四马过隙。岁短期促，时难再得。';
  exit;
end;
if s='鼎之晋' then
begin
  result:='耳阙道丧，所为不成，求事匪得。';
  exit;
end;
if s='鼎之明夷' then
begin
  result:='申公患楚，危不自安。子重出奔，侧丧其魂。';
  exit;
end;
if s='鼎之家人' then
begin
  result:='南上太山，困于空桑。左沙右石，牛马无食。';
  exit;
end;
if s='鼎之睽' then
begin
  result:='海隅辽右，福禄所在。柔嘉蒙礼，九夷何咎。';
  exit;
end;
if s='鼎之蹇' then
begin
  result:='阳春生长，万物壮茂。垂枝布叶，君子比德。';
  exit;
end;
if s='鼎之解' then
begin
  result:='低头窃视，有所畏避。行作不利，酒酸鱼败，众莫贪嗜。';
  exit;
end;
if s='鼎之损' then
begin
  result:='左辅右弼，金玉满堂。常盈不亡，富如敖仓。';
  exit;
end;
if s='鼎之益' then
begin
  result:='坐朝乘轩，据德宰民。虞叔受命，六合和亲。';
  exit;
end;
if s='鼎之夬' then
begin
  result:='东行西坐，丧其犬马。南求骅骝，失车林下。';
  exit;
end;
if s='鼎之姤' then
begin
  result:='砥德砺材，果当成周。拜受大命，封为齐侯。';
  exit;
end;
if s='鼎之萃' then
begin
  result:='西逢王母，慈我九子。相对欢喜，王孙万户，家蒙福祉。';
  exit;
end;
if s='鼎之升' then
begin
  result:='安坐玉床，听韶行觞。饮福万岁，曰寿无疆。';
  exit;
end;
if s='鼎之困' then
begin
  result:='登高望家，役事未休。王事靡盬，不得逍遥。';
  exit;
end;
if s='鼎之井' then
begin
  result:='击鼓蹈陔，不得相踰。章甫文德，福厌祸消。';
  exit;
end;
if s='鼎之革' then
begin
  result:='追亡逐北，至山而复。稚叔相呼，反其室庐。';
  exit;
end;
if s='鼎之震' then
begin
  result:='老滑大 ，东行盗珠。困于噬敖，几不得去。';
  exit;
end;
if s='鼎之艮' then
begin
  result:='禹召诸神，会稽南山。执玉万国，天下康安。';
  exit;
end;
if s='鼎之渐' then
begin
  result:='忉忉怛怛，如将不活。黍稷之恩，灵辄以存，获生保年。';
  exit;
end;
if s='鼎之归妹' then
begin
  result:='俟叔兴起，季子富有。照临楚国，蛮荆是安。';
  exit;
end;
if s='鼎之丰' then
begin
  result:='白马骝驳，更生不休。富我商人，利得如丘。';
  exit;
end;
if s='鼎之旅' then
begin
  result:='灼火泉源，钓鲂山巅。鱼不可得，炭不肯然。';
  exit;
end;
if s='鼎之巽' then
begin
  result:='避患东西，反入祸门。糟糠不足，忧动我心。';
  exit;
end;
if s='鼎之兑' then
begin
  result:='成王多宠，商臣惶恐。生其祸心，使君危殆。';
  exit;
end;
if s='鼎之涣' then
begin
  result:='虎饥欲食，见猬而伏。禹通龙门，避咎除患，元丑以安。';
  exit;
end;
if s='鼎之节' then
begin
  result:='按民呼池，玉杯文案。鱼如白云，一邑获愿。';
  exit;
end;
if s='鼎之中孚' then
begin
  result:='双凫鸳鸯，相随群行。南至饶泽，食鱼与粱，君子乐长。';
  exit;
end;
if s='鼎之小过' then
begin
  result:='蔡侯朝楚，留连江渚。踰时历月，思其君后。';
  exit;
end;
if s='鼎之既济' then
begin
  result:='胶车驾东，与雨相逢。五楘解堕，顿辀独坐，忧为身祸。';
  exit;
end;
if s='鼎之未济' then
begin
  result:='螟虫为贼，害我稼穑。尽禾殚麦，秋无所得。';
  exit;
end;

end;

function zhen(const s: string):string;
begin
if s='震' then
begin
  result:='枯匏不朽，利以济舟。渡踰河海，无有溺忧。';
  exit;
end;
if s='震之乾' then
begin
  result:='陷涂溺水，火烧我履，忧患重累。';
  exit;
end;
if s='震之坤' then
begin
  result:='旦生夕死，名曰婴鬼，不可得祀。';
  exit;
end;
if s='震之屯' then
begin
  result:='扬水潜凿，使石洁白。里素表朱，游戏皋沃。得其所愿，心志娱乐。';
  exit;
end;
if s='震之蒙' then
begin
  result:='众鸟所翔，中有大怪。九身无头，魂惊魄去，不可以居。';
  exit;
end;
if s='震之需' then
begin
  result:='刖根枯株，不生肌肤。病在于心，日以焦枯。';
  exit;
end;
if s='震之讼' then
begin
  result:='府藏之富，王以振贷。捕鱼河海，笀多得。';
  exit;
end;
if s='震之师' then
begin
  result:='一茎九缠，更相牵挛。宿明俯仰，不得东西。请谳当决，日午被刑。';
  exit;
end;
if s='震之比' then
begin
  result:='耋老鲐背，齿牙动摇。近地远天，下入黄泉。';
  exit;
end;
if s='震之小畜' then
begin
  result:='羊舌叔虎，野心善怒。黩货无厌，以灭其身。';
  exit;
end;
if s='震之履' then
begin
  result:='訏疑八子，更相欺绐。管叔善政，不见邪期。';
  exit;
end;
if s='震之泰' then
begin
  result:='绊跳不远，心与言反。尼丘顾家，茅簟朱华。';
  exit;
end;
if s='震之否' then
begin
  result:='蜉蝣戴盆，不能上山。摇推跌跋，顿伤其颜。';
  exit;
end;
if s='震之同人' then
begin
  result:='朝露不久，为恩惠少。膏泽欲尽，咎在枯槁。';
  exit;
end;
if s='震之大有' then
begin
  result:='河伯之功，九州攸同。载祀六百，光烈无穷。';
  exit;
end;
if s='震之谦' then
begin
  result:='三人北行，大见光明。道逢淑女，与我骥子。';
  exit;
end;
if s='震之豫' then
begin
  result:='金精跃怒，带剑过午。徘徊高库，宿于木下。两虎相拒，弓弩满野。';
  exit;
end;
if s='震之随' then
begin
  result:='江河淮海，天之奥府。众利所聚，可以富有。乐我君子。';
  exit;
end;
if s='震之蛊' then
begin
  result:='不虞之患，祸至无门。奄忽暴卒，病伤我心。';
  exit;
end;
if s='震之临' then
begin
  result:='画龙头角，文章未成。甘言美语，说辞无名。';
  exit;
end;
if s='震之观' then
begin
  result:='缺破不成，胎卵不生，不见兆形。';
  exit;
end;
if s='震之噬嗑' then
begin
  result:='旁行不远，三里复反。心多畏恶，日中止舍。';
  exit;
end;
if s='震之贲' then
begin
  result:='四隤不安，兵革为患。掠我妻子，家复饥寒。';
  exit;
end;
if s='震之剥' then
begin
  result:='喜来如云，嘉福盈门。众才君子，举家蒙欢。';
  exit;
end;
if s='震之复' then
begin
  result:='载金贩狗，利弃我走。藏匿渊底，折毁为咎。';
  exit;
end;
if s='震之无妄' then
begin
  result:='日中为市，各抱所有。交易赀贿，函珠怀宝，心悦欢喜。';
  exit;
end;
if s='震之大畜' then
begin
  result:='日趋月步，周遍次舍。经历致远，无有难处。';
  exit;
end;
if s='震之颐' then
begin
  result:='阳明失时，阴凝为忧。主君哀泣，丧其元侯。';
  exit;
end;
if s='震之大过' then
begin
  result:='年衰岁暮，精魂游去。形容销枯，丧子思呼。';
  exit;
end;
if s='震之坎' then
begin
  result:='少无功绩，老困失福。跂行徙倚，不知所立。';
  exit;
end;
if s='震之离' then
begin
  result:='持心瞿目，善数摇动。自东徂西，不安其处。散涣府藏，无有利得。';
  exit;
end;
if s='震之咸' then
begin
  result:='赍贝赎狸，不听我辞。系于虎须，牵不得来。';
  exit;
end;
if s='震之恒' then
begin
  result:='老狼白獹，长尾大胡。前颠却踬，无有利得。';
  exit;
end;
if s='震之遁' then
begin
  result:='背地相憎，心志不同，如火与金。君猛臣慢，虎行兔伏。';
  exit;
end;
if s='震之大壮' then
begin
  result:='夏台羑里，汤文厄处。鬼侯歠醢，岐人悦喜。';
  exit;
end;
if s='震之晋' then
begin
  result:='牙蘖生齿，室堂启户。幽人利贞，鼓翼起舞。';
  exit;
end;
if s='震之明夷' then
begin
  result:='离女去夫，闵思苦忧。齐子无良，使我心愁。';
  exit;
end;
if s='震之家人' then
begin
  result:='践履危难，脱厄去患。入福喜门，见我大君。';
  exit;
end;
if s='震之睽' then
begin
  result:='折臂接手，不能进酒。祈祀闲旷，神怒不喜。';
  exit;
end;
if s='震之蹇' then
begin
  result:='蚁封穴户，大雨将集。鹊起数鸣，牝鸡叹室。相薨雄父，未到在道。';
  exit;
end;
if s='震之解' then
begin
  result:='胡俗戎狄，太阴所积。固冰冱寒，君子不存。';
  exit;
end;
if s='震之损' then
begin
  result:='翕翕（车甸）（车甸），消颓崩颠。灭其令名，身不得全。';
  exit;
end;
if s='震之益' then
begin
  result:='螟虫为贼，害我稼穑。尽禾殚麦，秋无所得。';
  exit;
end;
if s='震之夬' then
begin
  result:='三鸟飞来，是我逢时。俱行先至，多得大利';
  exit;
end;
if s='震之姤' then
begin
  result:='龙马上山，绝无水泉。喉焦唇干，渴不能言。';
  exit;
end;
if s='震之萃' then
begin
  result:='春生孳乳，万物蕃炽。君子所集，祸灾不至。';
  exit;
end;
if s='震之升' then
begin
  result:='王孙季子，相与为友。明允笃诚，升擢荐举。';
  exit;
end;
if s='震之困' then
begin
  result:='六明并照，政纪有统。秦楚战国，民受其咎。';
  exit;
end;
if s='震之井' then
begin
  result:='蝃蝀充侧，佞人倾惑。女谒横行，正道壅塞。';
  exit;
end;
if s='震之革' then
begin
  result:='宿于昆仑，升入天门。糟丘惠欢，玉泉见君。';
  exit;
end;
if s='震之鼎' then
begin
  result:='体重难飞，未能越关，不离空垣。';
  exit;
end;
if s='震之艮' then
begin
  result:='玄黄虺隤，行者劳疲。役夫憔悴，踰时不归。';
  exit;
end;
if s='震之渐' then
begin
  result:='孔德如玉，出于幽谷。飞上乔木，鼓其羽翼，辉光照国。';
  exit;
end;
if s='震之归妹' then
begin
  result:='火虽炽后。寇虽聚右。吾身安吉，独不危殆。';
  exit;
end;
 if s='震之丰' then
begin
  result:='旃裘膻国，文礼不饰。跨马控弦，伐我都邑。';
  exit;
end;
if s='震之旅' then
begin
  result:='被发八十，慕德献服。边鄙不耸，以安王国。';
  exit;
end;
if s='震之巽' then
begin
  result:='心得所好，口常欲笑。公孙蛾眉，鸡鸣乐夜。';
  exit;
end;
if s='震之兑' then
begin
  result:='马能负乘，见邑之野。并获粱稻，喜悦无咎。';
  exit;
end;
if s='震之涣' then
begin
  result:='高飞视下，贪饕所在。腐臭为患，害于躬身。';
  exit;
end;
if s='震之节' then
begin
  result:='东行西步，失其次舍。乾侯野井，昭君丧居。';
  exit;
end;
if s='震之中孚' then
begin
  result:='神鸟五彩，凤凰为主。集于王国，使年岁有。';
  exit;
end;
if s='震之小过' then
begin
  result:='石门晨门，荷蒉食贫，遁世隐居，竟不逢时。';
  exit;
end;
if s='震之既济' then
begin
  result:='（齿间）（齿间）啮啮，贫鬼相责。无有欢怡，一日九结。';
  exit;
end;
if s='震之未济' then
begin
  result:='白日扬光，雷车避藏。云雨不行，各止其乡。';
  exit;
end;


end;

function gen(const s: string):string;
begin
if s='艮' then
begin
  result:='君孤独处，单弱无辅。名曰困苦，辅心涌泉。碌碌如山。';
  exit;
end;
if s='艮之乾' then
begin
  result:='忧惊已除，祸不为灾，安全以来。';
  exit;
end;
if s='艮之坤' then
begin
  result:='穿匏挹水，篝铁然火。劳疲力竭，饥渴为祸。';
  exit;
end;
if s='艮之屯' then
begin
  result:='蹇牛折角，不能载粟。灾害不避，年岁无谷。';
  exit;
end;
if s='艮之蒙' then
begin
  result:='邑将为墟，居之忧危。';
  exit;
end;
if s='艮之需' then
begin
  result:='根刖树残，华叶落去。卒逢火焱，随风僵仆。';
  exit;
end;
if s='艮之讼' then
begin
  result:='元后贪欲，穷极民力。执政乖互，为夷所覆。';
  exit;
end;
if s='艮之师' then
begin
  result:='北山有枣，使叔寿考。东岭多栗，宜行贾市。陆梁雌雉，所至利喜。';
  exit;
end;
if s='艮之比' then
begin
  result:='高原峻山，陆土少泉。草木林麓，嘉禾所炎。';
  exit;
end;
if s='艮之小畜' then
begin
  result:='辰次降娄，王驾巡狩。广施德惠，国安无忧。';
  exit;
end;
if s='艮之履' then
begin
  result:='轠轠，岁暮偏弊。宠名损弃，君衰于位。';
  exit;
end;
if s='艮之泰' then
begin
  result:='放衔委辔，犇乱不制。法度无恒，君失其位。';
  exit;
end;
if s='艮之否' then
begin
  result:='独坐西垣，莫与笑言。秋风多哀，使我心悲。';
  exit;
end;
if s='艮之同人' then
begin
  result:='胫急股挛，不可出门。暮速归旅，必为身患。';
  exit;
end;
if s='艮之大有' then
begin
  result:='情伪难知，使我偏颇。小人在位，虽圣何咎。';
  exit;
end;
if s='艮之谦' then
begin
  result:='黍稷醇醴，敬奉山宗。神嗜饮食，甘雨嘉降。庶物蕃茂，时无灾咎。';
  exit;
end;
if s='艮之豫' then
begin
  result:='公子王孙，把弹摄丸。发辄有获，室家饶足。';
  exit;
end;
if s='艮之随' then
begin
  result:='阴升阳伏，舜失其室。慈母赤子，相餧不食。';
  exit;
end;
if s='艮之蛊' then
begin
  result:='七窍龙身，造易八元。法天则地，顺时施恩。利以长存。';
  exit;
end;
if s='艮之临' then
begin
  result:='逐狐东山，水遏我前。深不可涉，失利后便。';
  exit;
end;
if s='艮之观' then
begin
  result:='衔命辱使，不堪其事。中坠落去，更为负载。';
  exit;
end;
if s='艮之噬嗑' then
begin
  result:='温仁君子，忠孝所在。入闺为仪，祸灾不起。';
  exit;
end;
if s='艮之贲' then
begin
  result:='春多膏泽，夏润优渥。稼穑成熟，亩获百斛。师行失律，霸功不遂。';
  exit;
end;
if s='艮之剥' then
begin
  result:='二女同室，心不聊食。首发如蓬，忧常在中。';
  exit;
end;
if s='艮之复' then
begin
  result:='筑阙石巅，立基泉源。病疾不安，老狐为邻。';
  exit;
end;
if s='艮之无妄' then
begin
  result:='欲避凶门，反与祸邻。颠覆不制，痛熏我心。';
  exit;
end;
if s='艮之大畜' then
begin
  result:='踧行窃视，有所畏避。狸首伏藏，以夜为利。';
  exit;
end;
if s='艮之颐' then
begin
  result:='人面鬼口，长舌为斧。斲破瑚琏，殷商绝后。';
  exit;
end;
if s='艮之大过' then
begin
  result:='和气相薄，膏泽津液，生我嘉谷。';
  exit;
end;
if s='艮之坎' then
begin
  result:='销金厌兵，雷车不行，民安其乡。';
  exit;
end;
if s='艮之离' then
begin
  result:='秦仪机言，解其国患。一说燕下，齐相以权。';
  exit;
end;
if s='艮之咸' then
begin
  result:='旦奭辅王，周德孔明。越裳献雉，万国咸康。';
  exit;
end;
if s='艮之恒' then
begin
  result:='弱足刖跟，不利出门。贾市无盈，折亡为患。';
  exit;
end;
if s='艮之遁' then
begin
  result:='坚冰黄鸟，常哀悲愁。不见白粒，但覩藜蒿。数惊鸷鸟，为我心忧。';
  exit;
end;
if s='艮之大壮' then
begin
  result:='魂微惙惙，属纩听绝。豁然大通，复更生活。';
  exit;
end;
if s='艮之晋' then
begin
  result:='阴生麞鹿，鼠舞鬼哭，灵龟陆处。釜甑尘土。仁智盘桓，国乱无绪。';
  exit;
end;
if s='艮之明夷' then
begin
  result:='鑿諸攻玉，無不穿鑿。龍體吾舉，魯班為輔。舞鳳成形，德象君子。';
  exit;
end;
if s='艮之家人' then
begin
  result:='山作天池，陆地为海，民不安处。';
  exit;
end;
if s='艮之睽' then
begin
  result:='东风启户，隐伏欢喜。氓庶蒙恩，复得我子。';
  exit;
end;
if s='艮之蹇' then
begin
  result:='华灯百枝，消暗衰微。精光欲尽，奄如灰糜。';
  exit;
end;
if s='艮之解' then
begin
  result:='三十无室，寄宿桑中。上宫长女，不得乐同，使我失期。';
  exit;
end;
if s='艮之损' then
begin
  result:='卵与石斗，糜碎无疑。动而有悔，出不得时。';
  exit;
end;
if s='艮之益' then
begin
  result:='秦兵争强，失其贞良，败于殽乡。';
  exit;
end;
if s='艮之夬' then
begin
  result:='豦除善疑，难为攻医。骥穷盐车，困于衔棰。';
  exit;
end;
if s='艮之姤' then
begin
  result:='操笱搏狸，荷弓射鱼。非其器用，自令心劳。';
  exit;
end;
if s='艮之萃' then
begin
  result:='葵丘之盟，晋献会行。见太宰辞，复为还舆。';
  exit;
end;
if s='艮之升' then
begin
  result:='膑诈庞子，夷竃书木。伏兵卒发，矢至如雨。魏师惊乱，将获为虏，涓死树下。';
  exit;
end;
if s='艮之困' then
begin
  result:='南行出城，世得大福。王姬归齐，赖其所欲。';
  exit;
end;
if s='艮之井' then
begin
  result:='冬采薇兰，地冻坚难。利走室北，暮无所得。';
  exit;
end;
if s='艮之革' then
begin
  result:='王乔无病，狗头不痛。亡屐失履，乏我徒从。';
  exit;
end;
if s='艮之鼎' then
begin
  result:='宛马疾步，盲师坐御。目不见路，中宵不到。';
  exit;
end;
if s='艮之震' then
begin
  result:='求利难国，亡去我北。忧归其城，反为吾贼。';
  exit;
end;
if s='艮之渐' then
begin
  result:='比目四翼，安我邦国。上下无患，为吾喜福。';
  exit;
end;
if s='艮之归妹' then
begin
  result:='八材既登，以成股肱。尨降庭坚，国无灾凶。';
  exit;
end;
if s='艮之丰' then
begin
  result:='稍弊穿空，家莫为宗。奴婢逃走，子西父东，为身作凶。';
  exit;
end;
if s='艮之旅' then
begin
  result:='鸟舞国城，邑惧卒惊。仁德不修，为下所倾。';
  exit;
end;
if s='艮之巽' then
begin
  result:='五谷不熟，民苦困急。驾之南国，嘉乐有得。';
  exit;
end;
if s='艮之兑' then
begin
  result:='黄裳建元，福德在身。禄佑洋溢，封为齐君，富贵多孙。';
  exit;
end;
if s='艮之涣' then
begin
  result:='齐东郭卢，嫁于洛都。骏良美好，利得过倍。';
  exit;
end;
if s='艮之节' then
begin
  result:='安床厚缛，不得久宿。弃我嘉宴，困于南国。投杼之忧，不成祸灾。';
  exit;
end;
if s='艮之中孚' then
begin
  result:='内崩身伤，中乱无常。虽有美粟，不我得食。';
  exit;
end;
if s='艮之小过' then
begin
  result:='出门逢患，与祸为怨。更相击刺，伤我手端。';
  exit;
end;
if s='艮之既济' then
begin
  result:='出入节时，南北无忧。行者即至，在外归来。';
  exit;
end;
if s='艮之未济' then
begin
  result:='公孙驾骊，载游东齐。延陵说产，遗季纻衣。';
  exit;
end;


end;

function fengshanjian(const s: string):string;
begin
if s='渐' then
begin
  result:='长子从军。稚叔就贼。别离分散，寡老独居。莫为种瓜。';
  exit;
end;
if s='渐之乾' then
begin
  result:='旦种谷豆，暮成藿羹。心之所愿，志快意惬。';
  exit;
end;
if s='渐之坤' then
begin
  result:='牡飞门启，忧患大解，不为身祸。';
  exit;
end;
if s='渐之屯' then
begin
  result:='东山西山，各自止安。虽相登望，竟未同堂。';
  exit;
end;
if s='渐之蒙' then
begin
  result:='众鸟所翔，中有大怪。九身无头，魂惊魄去，不可以居。';
  exit;
end;
if s='渐之需' then
begin
  result:='交侵如乱，民无聊赖。追戎济西，敌人破阵。';
  exit;
end;
if s='渐之讼' then
begin
  result:='麟凤所翔，国无咎殃。贾市十倍，复归惠乡。';
  exit;
end;
if s='渐之师' then
begin
  result:='凿井求玉，非卞氏宝。身困名辱，劳无所得。';
  exit;
end;
if s='渐之比' then
begin
  result:='文山鸿豹，肥腯多脂。王孙获愿，载福巍巍。';
  exit;
end;
if s='渐之小畜' then
begin
  result:='周成之隆，刑措除凶。太宰赞佑，君子作仁。';
  exit;
end;
if s='渐之履' then
begin
  result:='珪璧琮璋，执贽见王。百里宁戚，应聘齐秦。';
  exit;
end;
if s='渐之泰' then
begin
  result:='穿空漏彻，破坏残缺。陶弗能冶，瓦甓不凿。';
  exit;
end;
if s='渐之否' then
begin
  result:='鸿飞遵陆，公出不复，伯氏客宿。';
  exit;
end;
if s='渐之同人' then
begin
  result:='虾蟇群聚，从天请雨，云雷连集，应时辄下。得其所愿。';
  exit;
end;
if s='渐之大有' then
begin
  result:='老弱无子，不能自理。为民所忧，终不离咎。';
  exit;
end;
if s='渐之谦' then
begin
  result:='播梅折枝，与母别离，绝不相知。';
  exit;
end;
if s='渐之豫' then
begin
  result:='盛中复绝，衰老不拙。盈满减亏，瘯蠡腯肥。郑昭失国，重耳兴起。';
  exit;
end;
if s='渐之随' then
begin
  result:='闻虎入邑，心欲逃匿。走据阳德，不见霍叔，终无忧慝。';
  exit;
end;
if s='渐之蛊' then
begin
  result:='随时逐便，不失利门。多获得福，富于封君。';
  exit;
end;
if s='渐之临' then
begin
  result:='禹作神鼎，伯益衔指。斧斤既折，憧立独坐。贾市不雠，枯槁为祸。';
  exit;
end;
if s='渐之观' then
begin
  result:='春鸿飞东，以马货金。利得十倍，重载归乡。';
  exit;
end;
if s='渐之噬嗑' then
begin
  result:='金齿铁牙，寿考宜家。年岁有余，贪利者得。虽忧无咎。';
  exit;
end;
if s='渐之贲' then
begin
  result:='膏泽沐浴，洗去污辱。振除灾咎，更与福处。';
  exit;
end;
if s='渐之剥' then
begin
  result:='履阶登墀，高升峻巍。福禄洋溢，依天之威。';
  exit;
end;
if s='渐之复' then
begin
  result:='坤厚地德，庶物蕃息。平康正直，以绥大福。';
  exit;
end;
if s='渐之无妄' then
begin
  result:='绝域异路，多所畏避。使我惊惶，思吾故处。';
  exit;
end;
if s='渐之大畜' then
begin
  result:='襁褓孩幼，冠带成家。出门如宾，父母何忧。';
  exit;
end;
if s='渐之颐' then
begin
  result:='一寻百节，绸缪相结。其指诘屈，不能解脱。';
  exit;
end;
if s='渐之大过' then
begin
  result:='鹰鹯猎食，雉兔困极。逃头见尾，为人所贼。';
  exit;
end;
if s='渐之坎' then
begin
  result:='危坐至暮，请求不得。膏泽不降，政戾民忒。';
  exit;
end;
if s='渐之离' then
begin
  result:='刚柔相呼，二姓为家。霜降既同，惠我以仁。';
  exit;
end;
if s='渐之咸' then
begin
  result:='慈母赤子，飨赐得士。蛮夷来服，国人欢喜。';
  exit;
end;
if s='渐之恒' then
begin
  result:='良夫孔姬，胁悝登台。柴季不扶，卫辄走逃。';
  exit;
end;
if s='渐之遁' then
begin
  result:='子长忠直，季氏为贼。祸及无嗣，司马失福。';
  exit;
end;
if s='渐之大壮' then
begin
  result:='节度之德，不涉乱国。虽昧无光，后大受庆。';
  exit;
end;
if s='渐之晋' then
begin
  result:='驱羊南行，与祸相逢。狼惊我马，虎盗我子，悲恨自咎。';
  exit;
end;
if s='渐之明夷' then
begin
  result:='尼父孔丘，善钓鲤鱼。罗网一举，获利万头，富我家居。';
  exit;
end;
if s='渐之家人' then
begin
  result:='本根不固，华叶落去，更为孤妪。';
  exit;
end;
if s='渐之睽' then
begin
  result:='设罟捕鱼，反得屠诸。员困竭忠，伍氏夷诛。';
  exit;
end;
if s='渐之蹇' then
begin
  result:='敏捷亟疾，如猿集木。彤弓虽调，终不能获。';
  exit;
end;
if s='渐之解' then
begin
  result:='冠带南行，与福相期。邀于嘉国，拜位逢时。';
  exit;
end;
if s='渐之损' then
begin
  result:='年丰岁熟，政仁民乐，禄入获福。';
  exit;
end;
if s='渐之益' then
begin
  result:='筑阙石巅，立基泉源。疾病不安，老孤无邻。';
  exit;
end;
if s='渐之夬' then
begin
  result:='逐狐东山，水遏我前。深不可涉，失利后还。';
  exit;
end;
if s='渐之姤' then
begin
  result:='麟子凤雏，生长嘉国。和气所居，康乐温仁，邦多圣人。';
  exit;
end;
if s='渐之萃' then
begin
  result:='西行求玉，冀得瑜璞。反得凶恶，使我惊惑。';
  exit;
end;
if s='渐之升' then
begin
  result:='心狂志悖，视听聋盲。政命无常，下民多孽。';
  exit;
end;
if s='渐之困' then
begin
  result:='南国少子，材略美好。求我长女，贱薄不与。反得丑恶，后乃大悔。';
  exit;
end;
if s='渐之井' then
begin
  result:='逶迤高原，家伯妄施，乱其五官。';
  exit;
end;
if s='渐之革' then
begin
  result:='谢恩拜德，东归吾国，欢乐有福。';
  exit;
end;
if s='渐之鼎' then
begin
  result:='鸡鸣同兴，思配无家。执佩持凫，无所致之。';
  exit;
end;
if s='渐之震' then
begin
  result:='凶重忧累，身受诛罪，神不能解。';
  exit;
end;
if s='渐之艮' then
begin
  result:='虎豹熊罴，游戏山谷。仁贤君子，得其所欲。';
  exit;
end;
if s='渐之归妹' then
begin
  result:='海隅辽右，福禄所至。柔嘉蒙佑，九夷何咎。';
  exit;
end;
if s='渐之丰' then
begin
  result:='华首之山，仙道所游。利以居止，长无咎忧。';
  exit;
end;
if s='渐之旅' then
begin
  result:='甲乙戊庚，随时转行。不失常节，萌芽律屈。咸达生出，各乐其类。';
  exit;
end;
if s='渐之巽' then
begin
  result:='跛踬未起，失利后市，不得鹿子。';
  exit;
end;
if s='渐之兑' then
begin
  result:='怙恃自负，不去于下。血从地出，诛罚失理。';
  exit;
end;
if s='渐之涣' then
begin
  result:='江河淮海，天之都市。商人受福，国家饶有。';
  exit;
end;
if s='渐之节' then
begin
  result:='节情省欲，赋敛有度。家给人足，且贵且富。';
  exit;
end;
if s='渐之中孚' then
begin
  result:='鼃池鸣呴，呼求水潦。云雨大会，流成河海。';
  exit;
end;
if s='渐之小过' then
begin
  result:='日月之涂，所行必到，无有患故。';
  exit;
end;
if s='渐之既济' then
begin
  result:='乘风而举，与飞鸟俱。一举千里，见吾爱母。';
  exit;
end;
if s='渐之未济' then
begin
  result:='阴配阳争，卧木反立。君子攸行，丧其官职。';
  exit;
end;

end;

function guimei(const s: string):string;
begin
if s='归妹' then
begin
  result:='坚冰黄鸟，常哀悲愁。不见白粒，但覩藜蒿。数惊鸷鸟，为我心忧。';
  exit;
end;
if s='归妹之乾' then
begin
  result:='荆木冬生，司寇缓刑。威权在下，国乱且倾。';
  exit;
end;
if s='归妹之坤' then
begin
  result:='喘牛伤暑，不能成亩。草莱不辟，年岁无有。';
  exit;
end;
if s='归妹之屯' then
begin
  result:='鱼欲负流，众不同心。至德潜伏。';
  exit;
end;
if s='归妹之蒙' then
begin
  result:='春耕有息，秋入利福。献豜私豵，以乐成功。';
  exit;
end;
if s='归妹之需' then
begin
  result:='生有圣德，上配太极。皇灵建中，授我以福。';
  exit;
end;
if s='归妹之讼' then
begin
  result:='右抚剑头，左手援带。凶讼不已，相与争戾，失利而归。';
  exit;
end;
if s='归妹之师' then
begin
  result:='炙鱼棝斗，张伺夜鼠。舌不忍味，机发为祟，笮不得去。';
  exit;
end;
if s='归妹之比' then
begin
  result:='申酉脱服，牛马休息。君子以安，劳者得欢。';
  exit;
end;
if s='归妹之小畜' then
begin
  result:='尧问尹寿，圣德增益。使民不疲，安无怵惕。';
  exit;
end;
if s='归妹之履' then
begin
  result:='孤公忧妇，独宿悲苦。目张耳鸣，莫与笑语。';
  exit;
end;
if s='归妹之泰' then
begin
  result:='外得好畜，相与嫁娶。仁贤集聚，咨询厥事。倾夺我城，使家不宁。';
  exit;
end;
if s='归妹之否' then
begin
  result:='煎砂盛暑，鲜有不朽。去河千里，败我利市。老牛盲马，去之何悔。';
  exit;
end;
if s='归妹之同人' then
begin
  result:='甲乙戊庚，随时转行。不失常节，萌芽律屈。咸达出生，各乐其类。';
  exit;
end;
if s='归妹之大有' then
begin
  result:='衣宵夜游，与君相遭。解除烦惑，使心不忧。';
  exit;
end;
if s='归妹之谦' then
begin
  result:='死友绝朋，巧言为谗。覆白污玉，颜叔哀喑。';
  exit;
end;
if s='归妹之豫' then
begin
  result:='逐利三年，利走如神。展转东西，如鸟避丸。';
  exit;
end;
if s='归妹之随' then
begin
  result:='堤防坏决，河水泛溢。伤害禾稼，君孤独宿。没溺我邑。';
  exit;
end;
if s='归妹之蛊' then
begin
  result:='阴阳隔塞，许嫁不答。旄丘新台，悔往叹息。';
  exit;
end;
if s='归妹之临' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存。';
  exit;
end;
if s='归妹之观' then
begin
  result:='阳为狂悖，拔剑自伤，为身生殃。';
  exit;
end;
if s='归妹之噬嗑' then
begin
  result:='进士为官，不若服田，获寿保年。';
  exit;
end;
if s='归妹之贲' then
begin
  result:='耕石不生，弃礼无名。缝衣失针，襦袴不成。';
  exit;
end;
if s='归妹之剥' then
begin
  result:='灵龟陆处，一旦失所。伊子复耕，桀乱无辅。';
  exit;
end;
if s='归妹之复' then
begin
  result:='室当源口，漂溺为海。财产殚尽，衣食无有。';
  exit;
end;
if s='归妹之无妄' then
begin
  result:='鸡方啄粟，为狐所逐。走不得食，惶惧喘息。';
  exit;
end;
if s='归妹之大畜' then
begin
  result:='家在海隅，桡短流深。岂敢惮行，无木以趋。';
  exit;
end;
if s='归妹之颐' then
begin
  result:='他山之错，与璆为仇。来攻吾城，伤我肌肤，国家骚忧。';
  exit;
end;
if s='归妹之大过' then
begin
  result:='弊镜无光，不见文章。少女不嫁，弃于其公。';
  exit;
end;
if s='归妹之坎' then
begin
  result:='大蛇巨鱼，相搏于郊。君臣隔塞，郭公失庐。';
  exit;
end;
if s='归妹之离' then
begin
  result:='绝世无嗣，福禄不存。精神涣散，离其躬身。';
  exit;
end;
if s='归妹之咸' then
begin
  result:='文德之君，养人致福。年无胎夭，国富民实。忧者之望，曾参盗息。';
  exit;
end;
if s='归妹之恒' then
begin
  result:='合欢之国，喜为我福。东岳南山，朝跻成恩。';
  exit;
end;
if s='归妹之遁' then
begin
  result:='忧人之患，履悖易颜。为身祸残。率身自守，与喜相抱。长子成老，封受福佑。';
  exit;
end;
if s='归妹之大壮' then
begin
  result:='太公避纣，七十隐处。卒逢圣文，为王室辅。';
  exit;
end;
if s='归妹之晋' then
begin
  result:='江汉上流，政逆民忧。阴代其阳，雌为雄公。';
  exit;
end;
if s='归妹之明夷' then
begin
  result:='缩绪乱丝，举手为灾。越亩逐兔，丧其衣袴。';
  exit;
end;
if s='归妹之家人' then
begin
  result:='臭彘腐木，与狼相辅。亡夫失子，忧及父母。';
  exit;
end;
if s='归妹之睽' then
begin
  result:='刲羊不当，女执空筐。兔跛鹿踦，缘山坠堕。谗佞乱作。';
  exit;
end;
if s='归妹之蹇' then
begin
  result:='拔剑伤手，见敌不喜。良臣无佐，困忧为咎。';
  exit;
end;
if s='归妹之解' then
begin
  result:='三羖五牂，相随俱行。迷入空泽，循谷直北。径涉六驳，为所伤贼。';
  exit;
end;
if s='归妹之损' then
begin
  result:='争鸡失羊，亡其金囊。利得不长。陈蔡之患，赖楚以安。';
  exit;
end;
if s='归妹之益' then
begin
  result:='三骊负衡，南取芷香。秋兰芬馥，盈满神匮，利我仲季。';
  exit;
end;
if s='归妹之夬' then
begin
  result:='孟夏己丑，哀呼尼父。明德讫终，乱虐滋起。';
  exit;
end;
if s='归妹之姤' then
begin
  result:='履不容足，南山多棘。家有芝兰，乃无病疾。';
  exit;
end;
if s='归妹之萃' then
begin
  result:='三足无头，不知所之。心狂睛伤，莫使为明，不见日光。';
  exit;
end;
if s='归妹之升' then
begin
  result:='戴尧扶禹，松乔彭祖。西过王母，道路夷易，无敢难者。';
  exit;
end;
if s='归妹之困' then
begin
  result:='式微式微，忧祸相绊。隔以岩山，室家分散。';
  exit;
end;
if s='归妹之井' then
begin
  result:='灵龟陆处，一旦失所。伊子复耕，桀乱无辅。';
  exit;
end;
if s='归妹之革' then
begin
  result:='仁德覆洽，恩及异域，泽被殊方。祸灾隐伏，蚕不作室，寒无所得。';
  exit;
end;
if s='归妹之鼎' then
begin
  result:='夏麦麸（麦黄），霜击其芒。疾君败国，使年夭伤。';
  exit;
end;
if s='归妹之震' then
begin
  result:='火虽炽后。寇虽聚右。吾身安吉，独不危殆。';
  exit;
end;
if s='归妹之艮' then
begin
  result:='辽远绝路，客宿多悔。顽嚣相聚，生我畏恶。';
  exit;
end;
if s='归妹之渐' then
begin
  result:='悬悬南海，去家万里。飞兔腰褭，一日见母，除我忧悔。';
  exit;
end;
if s='归妹之丰' then
begin
  result:='困而后通，虽厄不穷。终得其愿，姬姜相从。';
  exit;
end;
if s='归妹之旅' then
begin
  result:='西贾巴蜀，寒雪至毂。欲前不还，得反空屋。';
  exit;
end;
if s='归妹之巽' then
begin
  result:='新作初陵，烂陷难登。三驹摧车，踬顿伤颐。';
  exit;
end;
if s='归妹之兑' then
begin
  result:='延颈望酒，不入我口。深目自苦，利得无有，幽人悦喜。';
  exit;
end;
if s='归妹之涣' then
begin
  result:='仲春孟夏，和气所舍。生我嘉福，国无残贼。';
  exit;
end;
if s='归妹之节' then
begin
  result:='张网捕鸠，兔离其灾。雌雄俱得，为罝所贼。';
  exit;
end;
if s='归妹之中孚' then
begin
  result:='三人俱行，一人言北。伯仲欲南，少叔不得。中路分争，道斗相贼。';
  exit;
end;
if s='归妹之小过' then
begin
  result:='然诺不行，欺绐误人。使我露宿，夜归温室。神怒不直，鬼击其目。欲求福利，适反自贼。';
  exit;
end;
if s='归妹之既济' then
begin
  result:='陈辞达诚，使安不倾。增禄益寿，以成功名。';
  exit;
end;
if s='归妹之未济' then
begin
  result:='火烧公床，破家灭亡。然得安昌，先忧重丧。';
  exit;
end;

end;

function leihuofeng(const s: string):string;
begin
if s='丰' then
begin
  result:='诸孺行贾，经涉山阻。与狄为市，不忧危殆，利得十倍。';
  exit;
end;
if s='丰之乾' then
begin
  result:='鼎足承德，嘉谋生福。为王开庭，得心所欲。';
  exit;
end;
if s='丰之坤' then
begin
  result:='曳纶江海，钓鲂与鲤。王孙列俎，以飨仲友。';
  exit;
end;
if s='丰之屯' then
begin
  result:='东山皋落，叛逆不服。兴师征讨，恭子败覆。';
  exit;
end;
if s='丰之蒙' then
begin
  result:='千里骍驹，为王服车。嘉其丽荣，君子有成。';
  exit;
end;
if s='丰之需' then
begin
  result:='二龙北行，道逢六狼。莫宿中泽，为祸所伤。';
  exit;
end;
if s='丰之讼' then
begin
  result:='天灾所游，凶不可居。转徙获福，留止危忧。';
  exit;
end;
if s='丰之师' then
begin
  result:='狐狸雉兔，畏人逃去。分走窜匿，不知所处。';
  exit;
end;
if s='丰之比' then
begin
  result:='雨师娶妇，黄炎季女。成礼既婚，相呼南去。膏润田里，年岁大喜。';
  exit;
end;
if s='丰之小畜' then
begin
  result:='外栖野鼠，与雉为伍。疮痍不息，即去其室。';
  exit;
end;
if s='丰之履' then
begin
  result:='天命绝后，孤阳无主。彷徨两社，独不得酒。';
  exit;
end;
if s='丰之泰' then
begin
  result:='鹄思其雄，欲随凤东。顺理羽翼，出次须日。中留北邑，复反其室。';
  exit;
end;
if s='丰之否' then
begin
  result:='蜲蛇九子，长尾不殆。均明光泽，燕自受福。';
  exit;
end;
if s='丰之同人' then
begin
  result:='日走月步，趋不同舍。夫妻反目，君主失国。';
  exit;
end;
if s='丰之大有' then
begin
  result:='宣房户室，枯薪除毒。文德渊府，害不能贼。';
  exit;
end;
if s='丰之谦' then
begin
  result:='齐东郭卢，嫁于洛都。骏美良好，利彼过倍。';
  exit;
end;
if s='丰之豫' then
begin
  result:='病笃难医，和不能治。命终期讫，下即蒿里。';
  exit;
end;
if s='丰之随' then
begin
  result:='开廓绪业，王迹所起。姬德七百，报以八子。';
  exit;
end;
if s='丰之蛊' then
begin
  result:='丰年多储，河海饶鱼。商客善贾，大国富有。';
  exit;
end;
if s='丰之临' then
begin
  result:='鹄求鱼食，过彼射邑。缯加我颈，缴挂羽翼。欲飞不能，为羿所得。';
  exit;
end;
if s='丰之观' then
begin
  result:='望城抱子，见邑不殆。公孙上堂，大君悦喜。';
  exit;
end;
if s='丰之噬嗑' then
begin
  result:='左指右麾，邪淫侈靡。执节无良，灵君以亡。';
  exit;
end;
if s='丰之贲' then
begin
  result:='日中为市，各持所有。交易资贿，函珠怀宝，心悦欢喜。';
  exit;
end;
if s='丰之剥' then
begin
  result:='山没丘浮，陆为水鱼，燕雀无庐。';
  exit;
end;
if s='丰之复' then
begin
  result:='马服长股，宜行善市。蒙佑谐偶，获利五倍。';
  exit;
end;
if s='丰之无妄' then
begin
  result:='三狸捕鼠，遮遏前后。死于圜城，不能脱走。';
  exit;
end;
if s='丰之大畜' then
begin
  result:='鬼舞国社，岁乐民喜。臣忠于君，子孝于父。';
  exit;
end;
if s='丰之颐' then
begin
  result:='慈母望子，遥思不已。久客外野，我心悲苦。';
  exit;
end;
if s='丰之大过' then
begin
  result:='雨师娶妇，黄炎季女。成礼既婚，相呼南去。膏泽田里，年岁大喜。';
  exit;
end;
if s='丰之坎' then
begin
  result:='百狗同室，相囓争食。枉矢西流，射我暴国。高宗鬼方，三年乃服。';
  exit;
end;
if s='丰之离' then
begin
  result:='早霜晚雪，伤禾害麦。损功弃力，饥无可食。';
  exit;
end;
if s='丰之咸' then
begin
  result:='腐臭所在，青蝇集聚。变白为黑，败乱邦国。君为臣逐，失其宠禄。';
  exit;
end;
if s='丰之恒' then
begin
  result:='牵羊不前，与心戾旋。闻言不信，误绐丈人。';
  exit;
end;
if s='丰之遁' then
begin
  result:='甘忍利害，还相克贼。商子酷刑，鞅丧厥身。';
  exit;
end;
if s='丰之大壮' then
begin
  result:='刲羊不当，血少无羹。女执空筐，不得采桑。';
  exit;
end;
if s='丰之晋' then
begin
  result:='（齿间）（齿间）囓囓，贫鬼相责。无有欢怡，一日九结。';
  exit;
end;
if s='丰之明夷' then
begin
  result:='两足四翼，飞入嘉国。宁我伯姊，与母相得。';
  exit;
end;
if s='丰之家人' then
begin
  result:='文山紫芝，雍梁朱草。生长和气，王以为宝。公尸侑食，福禄来处。';
  exit;
end;
if s='丰之睽' then
begin
  result:='绝世游魂，福禄不存。精神涣散，离其躬身。';
  exit;
end;
if s='丰之蹇' then
begin
  result:='北辰紫宫，衣冠立中。含和建德，常受大福。';
  exit;
end;
if s='丰之解' then
begin
  result:='伯蹇叔盲，莫为守装。失我衣裘，伐尔阴乡。';
  exit;
end;
if s='丰之损' then
begin
  result:='两女共室，心不聊食。首发如蓬，忧常在中。';
  exit;
end;
if s='丰之益' then
begin
  result:='去辛就蓼，毒愈酷甚。避穽遇坑，忧患日生。';
  exit;
end;
if s='丰之夬' then
begin
  result:='初病终凶，季为死丧，不见光明。';
  exit;
end;
if s='丰之姤' then
begin
  result:='三鸟飞来，是我逢时。俱行先至，多得大利。';
  exit;
end;
if s='丰之萃' then
begin
  result:='鹿食山草，不思邑里，虽久无咎。';
  exit;
end;
if s='丰之升' then
begin
  result:='羊肠九萦，相推稍前。止须王孙，乃能上天。';
  exit;
end;
if s='丰之困' then
begin
  result:='管仲遇桓，得其愿欢。胶目启牢，振冠无忧。笑戏不庄，空言妄行。';
  exit;
end;
if s='丰之井' then
begin
  result:='桀跖并处，民困愁苦。旅行迟迟，留连齐鲁。';
  exit;
end;
if s='丰之革' then
begin
  result:='魂孤无室，衔指不食。盗张民馈，见敌失肉。';
  exit;
end;
if s='丰之鼎' then
begin
  result:='谗言乱国，覆是为非。伯奇乖离，恭子忧哀。';
  exit;
end;
if s='丰之震' then
begin
  result:='卫侯东游，惑于少姬。亡我考妣，久迷不来。';
  exit;
end;
if s='丰之艮' then
begin
  result:='鸡鸣同兴，思配无家。执佩持凫，莫使致之。';
  exit;
end;
if s='丰之渐' then
begin
  result:='义不胜情，以欲自萦。觊利危躬，摧角折颈。';
  exit;
end;
if s='丰之归妹' then
begin
  result:='臣尊主卑，权力日衰。侵夺无光，三家逐公。';
  exit;
end;
if s='丰之旅' then
begin
  result:='叔仲善贾，与喜为市。不忧危殆，利得十倍。';
  exit;
end;
if s='丰之巽' then
begin
  result:='六蛇奔走，俱入茂草。惊于长路，畏惧啄口。';
  exit;
end;
if s='丰之兑' then
begin
  result:='水坏我里，东流为海。凫鳖讙嚣，不得安居。';
  exit;
end;
if s='丰之涣' then
begin
  result:='飞不远去，卑斯内侍，禄养未富。';
  exit;
end;
if s='丰之节' then
begin
  result:='阴变为阳，女化为男。治道大通，君臣相承。';
  exit;
end;
if s='丰之中孚' then
begin
  result:='践履危难，脱厄去患。入福喜门，见诲大君。';
  exit;
end;
if s='丰之小过' then
begin
  result:='罟密网缩，动益蹙急，困不得息。';
  exit;
end;
if s='丰之既济' then
begin
  result:='负牛上山，力劣行难。烈风雨雪，遮遏我前，中道复还。';
  exit;
end;
if s='丰之未济' then
begin
  result:='喁喁嘉草，思降甘雨。景风升上，沾洽时澍，生我禾稼。';
  exit;
end;


end;

 function huoshanlv(const s: string):string;
begin
if s='旅' then
begin
  result:='罗网四张，鸟无所翔。征伐穷极，饥渴不食。';
  exit;
end;
if s='旅之乾' then
begin
  result:='寄生无根，如过浮云。立本不固，斯须落去，更为枯树。';
  exit;
end;
if s='旅之坤' then
begin
  result:='人无定法，缓降牛出。蛇雄走趋，阳不制阴。宜其家困。';
  exit;
end;
if s='旅之屯' then
begin
  result:='众鸟所翔，中有大怪。九身无头，魂惊魄去，不可以居。';
  exit;
end;
if s='旅之蒙' then
begin
  result:='封豕沟渎，灌溃国邑。火宿口中，民多病疾。';
  exit;
end;
if s='旅之需' then
begin
  result:='奋翅鼓翼，翱翔外国。逍遥徙倚，来归温室。';
  exit;
end;
if s='旅之讼' then
begin
  result:='秋蚕不成，冬种不生。殷王逆理，弃其宠荣。';
  exit;
end;
if s='旅之师' then
begin
  result:='卫侯东游，惑于少姬。亡我考妣，久迷不来。';
  exit;
end;
if s='旅之比' then
begin
  result:='乌合卒会，与恶相得。鸱鸮相酬，为心所贼。';
  exit;
end;
if s='旅之小畜' then
begin
  result:='眵鸡无距，与鹊格斗。翅折目盲，为鸠所伤。';
  exit;
end;
if s='旅之履' then
begin
  result:='木内生蠧，上下相贼，祸乱我国。';
  exit;
end;
if s='旅之泰' then
begin
  result:='延陵适鲁，观乐太史。车辚白颠，知秦兴起。卒兼其国，一统为主。';
  exit;
end;
if s='旅之否' then
begin
  result:='辅相之好，无有休息。时行云集，所在遇福。';
  exit;
end;
if s='旅之同人' then
begin
  result:='床倾箦折，屋漏垣缺，季姬不惬。';
  exit;
end;
if s='旅之大有' then
begin
  result:='东入海口，循流北走。一高一下，五邑无主。七日六夜，死于水浦。';
  exit;
end;
if s='旅之谦' then
begin
  result:='群虎入邑，求索肉食。大人守御，君不失国。';
  exit;
end;
if s='旅之豫' then
begin
  result:='四乱不安，东西为患。退身止足，无出邦域。乃得完全，赖其生福。';
  exit;
end;
if s='旅之随' then
begin
  result:='叔肸抱冤，祁子自邑。乘遽解患，羊舌以免，赖其生全。';
  exit;
end;
if s='旅之蛊' then
begin
  result:='延颈望酒，不入我口。深目自苦，利得无有。';
  exit;
end;
if s='旅之临' then
begin
  result:='仁政之德，参参日息。成都就邑，人受厥福。';
  exit;
end;
if s='旅之观' then
begin
  result:='牵头系尾，屈折几死。雕世无仁，不知所归。';
  exit;
end;
if s='旅之噬嗑' then
begin
  result:='教羊逐兔，使鱼捕鼠。任非其人，费日无功。';
  exit;
end;
if s='旅之贲' then
begin
  result:='生角有尾，阴孽制家。排羊逐狐，张氏易公。忧祸复凶。';
  exit;
end;
if s='旅之剥' then
begin
  result:='去安就危，坠陷井池，破我玉螭。';
  exit;
end;
if s='旅之复' then
begin
  result:='茹芝饵黄，涂饮玉英。与神通流，长无忧凶。';
  exit;
end;
if s='旅之无妄' then
begin
  result:='体重难飞，未能越关，不离室垣。';
  exit;
end;
if s='旅之大畜' then
begin
  result:='巢成树折，伤我彝器。伯踒叔跌，亡羊乃追。';
  exit;
end;
if s='旅之颐' then
begin
  result:='六人俱行，各遗其囊。黄鹤失珠，无以为明。';
  exit;
end;
if s='旅之大过' then
begin
  result:='播梅折枝，与母分离，绝不相知。';
  exit;
end;
if s='旅之坎' then
begin
  result:='迎福开户，喜随我后。曹伯恺悌，为宋国主。';
  exit;
end;
if s='旅之离' then
begin
  result:='既痴且狂，两目又盲。箕踞喑哑，名为无中。';
  exit;
end;
if s='旅之咸' then
begin
  result:='金梁铁柱，千年牢固。完全不腐，圣人安处。';
  exit;
end;
if s='旅之恒' then
begin
  result:='裹糗荷粮，与跖相逢。欲飞不得，为罔所获。';
  exit;
end;
if s='旅之遁' then
begin
  result:='彭生为豕，暴龙作灾。盗尧衣裳，聚跖荷兵。青禽照夜，三旦夷亡。';
  exit;
end;
if s='旅之大壮' then
begin
  result:='独夫老妇，不能生子。鳏寡居处。';
  exit;
end;
if s='旅之晋' then
begin
  result:='鹪鹩窃脂，巢于小枝。摇动不安，为风所吹。心寒栗栗，常忧殆危。';
  exit;
end;
if s='旅之明夷' then
begin
  result:='素车木马，不任负重。王子出征，忧危为咎。';
  exit;
end;
if s='旅之家人' then
begin
  result:='土陷四维，安平不危。利以居止，保有玉女。';
  exit;
end;
if s='旅之睽' then
begin
  result:='负牛上山，力劣行难。烈风雨雪，遮遏我前，中道复还。';
  exit;
end;
if s='旅之蹇' then
begin
  result:='金城铁郭，上下同力。政平民亲，寇不敢贼。';
  exit;
end;
if s='旅之解' then
begin
  result:='清洁渊塞，为人所言。证讯诘情，系于枳温。甘裳听断，昭然蒙恩。';
  exit;
end;
if s='旅之损' then
begin
  result:='皋陶听理，岐伯悦喜。西登华首，东归无咎。';
  exit;
end;
if s='旅之益' then
begin
  result:='低头窃视，有所畏避。行作不利，酒酸鱼败，众莫贪嗜。';
  exit;
end;
if s='旅之夬' then
begin
  result:='十鸡百雏，常与母俱。抱鸡捕虎，谁肯为侣。';
  exit;
end;
if s='旅之姤' then
begin
  result:='高阜山陵，陂陁颠崩。为国妖祥，元后以薨。';
  exit;
end;
if s='旅之萃' then
begin
  result:='六鹢退飞，为襄败祥。陈师合战，左股夷伤。遂以崩薨，霸功不成。';
  exit;
end;
if s='旅之升' then
begin
  result:='异国殊俗，情不相得。金木为仇，酋贼擅杀。';
  exit;
end;
if s='旅之困' then
begin
  result:='鸦噪庭中，以戎灾凶。重门击柝，备忧暴客。';
  exit;
end;
if s='旅之井' then
begin
  result:='慈母赤子，享赐得士。夷狄服除，以安王家。侧陋逢时。';
  exit;
end;
if s='旅之革' then
begin
  result:='跡造惡人，使得不通。炎旱為殃，年穀大傷。';
  exit;
end;
if s='旅之鼎' then
begin
  result:='躬履孔德，以待束帛。文君燎猎，吕尚获福。号称太师，封建齐国。';
  exit;
end;
if s='旅之震' then
begin
  result:='征将止恶，鼓鞞除贼。庆仲奔莒，子般获福。';
  exit;
end;
if s='旅之艮' then
begin
  result:='良夫淑女，配合相保。多孙众子，欢乐长久。';
  exit;
end;
if s='旅之渐' then
begin
  result:='逶迤四牡，思念父母。王事靡盬，不得安处。';
  exit;
end;
if s='旅之归妹' then
begin
  result:='水坏我里，东流为海。龟凫讙嚣，不得安居。';
  exit;
end;
if s='旅之丰' then
begin
  result:='束帛戋戋，赙我孟宣。征召送君，变号易字。';
  exit;
end;
if s='旅之巽' then
begin
  result:='乾行天德，覆赡六合。呕喣成熟，使我福德。';
  exit;
end;
if s='旅之兑' then
begin
  result:='秦晋大国，更相克贼。获惠质圉，郑被其咎。';
  exit;
end;
if s='旅之涣' then
begin
  result:='晦昧昏冥，君无纪纲。甲午成乱，简公丧亡。';
  exit;
end;
if s='旅之节' then
begin
  result:='三足无头，莫知所之。心狂睛伤，莫使为明，不见日光。';
  exit;
end;
if s='旅之中孚' then
begin
  result:='长夜短日，阴为阳贼。万物空枯，藏于北陆。';
  exit;
end;
if s='旅之小过' then
begin
  result:='衣宵夜游，与君相遭。除烦解惑，使我无忧。';
  exit;
end;
if s='旅之既济' then
begin
  result:='逐鹿南山，利入我门。阴阳和调，国无灾残。长子出游，须其仁君。';
  exit;
end;
if s='旅之未济' then
begin
  result:='请冀左耳，啬不我驱，与我父母。';
  exit;
end;

end;


function xun(const s: string):string;
begin
if s='巽' then
begin
  result:='温山松柏，常茂不落。鸾凤以庇，得其欢乐。';
  exit;
end;
if s='巽之乾' then
begin
  result:='采唐沫乡，要期桑中。失信不会，忧思约带。';
  exit;
end;
if s='巽之坤' then
begin
  result:='有鸟飞来，集于宫树。鸣声可恶，主将出去。';
  exit;
end;
if s='巽之屯' then
begin
  result:='仁政之德，参参日息。成都就邑，日受厥福。';
  exit;
end;
if s='巽之蒙' then
begin
  result:='他山之错，与璆为仇。来攻吾城，伤我肌肤，邦家搔忧。';
  exit;
end;
if s='巽之需' then
begin
  result:='赍贝赎狸，不听我辞。系于虎须，牵不得来。';
  exit;
end;
if s='巽之讼' then
begin
  result:='一簧两舌，佞言谄语。三奸成虎，曾母投杼。';
  exit;
end;
if s='巽之师' then
begin
  result:='魁行摇尾，逐云吹水。污泥为陆，下田宜稷。';
  exit;
end;
if s='巽之比' then
begin
  result:='天门九重，深内难通。明登至莫，不见神公。';
  exit;
end;
if s='巽之小畜' then
begin
  result:='闇昧不明，耳聋不聪。陷入深渊，灭顶成凶。';
  exit;
end;
if s='巽之履' then
begin
  result:='雾露早霜，日暗不明。阴阳孽疾，年谷大伤。';
  exit;
end;
if s='巽之泰' then
begin
  result:='三阶土廊，德义明堂。交让往来，享燕相承。箕伯朝王，锡我玄黄。';
  exit;
end;
if s='巽之否' then
begin
  result:='争鸡失羊，利得不长。陈蔡之患，赖楚以安。';
  exit;
end;
if s='巽之同人' then
begin
  result:='天旱水涸，枯槁无泽，未有所获。';
  exit;
end;
if s='巽之大有' then
begin
  result:='陶朱白圭，善贾息赀。公子王孙，富利不贫。';
  exit;
end;
if s='巽之谦' then
begin
  result:='龟厌江海，陆行不止。自令枯槁，失其都市，忧悔无咎。';
  exit;
end;
if s='巽之豫' then
begin
  result:='黄鸟采蓄，既嫁不答。念吾父兄，思复邦国。';
  exit;
end;
if s='巽之随' then
begin
  result:='田鼠野鸡，意常欲逃。拘制笼槛，不得动摇。';
  exit;
end;
if s='巽之蛊' then
begin
  result:='平国不君，夏氏作乱。乌号窃发，灵公殒命。';
  exit;
end;
if s='巽之临' then
begin
  result:='巨蛇大鳅，战于国郊。上下闭塞，君主走逃。';
  exit;
end;
if s='巽之观' then
begin
  result:='谗言乱国，覆是为非。伯奇流离，恭子忧哀。';
  exit;
end;
if s='巽之噬嗑' then
begin
  result:='郁（日夬）不明，为阴所伤。众雾集聚，共夺日光。';
  exit;
end;
if s='巽之贲' then
begin
  result:='望城抱子，见邑不殆。公孙上堂，大君欢喜。';
  exit;
end;
if s='巽之剥' then
begin
  result:='三虫为蛊，刬迹无与。胜母盗泉，君子弗处。';
  exit;
end;
if s='巽之复' then
begin
  result:='车驰人趋，卷甲相求。齐鲁寇战，败于犬丘。';
  exit;
end;
if s='巽之无妄' then
begin
  result:='欲访子车，善相欺绐。桓叔相迎，不见所期。';
  exit;
end;
if s='巽之大畜' then
begin
  result:='争鸡失羊，亡其金囊。利得不长。陈蔡之患，赖楚以安。';
  exit;
end;
if s='巽之颐' then
begin
  result:='岁暮花落，阳入阴室。万物伏匿，利不可得。';
  exit;
end;
if s='巽之大过' then
begin
  result:='晨风文翰，大举就温。昧过我邑，羿无所得。';
  exit;
end;
if s='巽之坎' then
begin
  result:='时鹄抱子，见蛇何咎。室家俱在，不失其所。';
  exit;
end;
if s='巽之离' then
begin
  result:='隐隐大雷，雾霈为雨。有女痴狂，惊骇邻里。';
  exit;
end;
if s='巽之咸' then
begin
  result:='无足断跟，居处不安，凶恶为患。';
  exit;
end;
if s='巽之恒' then
begin
  result:='破筐敝筥，弃捐于道，不复为宝。';
  exit;
end;
if s='巽之遁' then
begin
  result:='三鸡啄粟，十雏从食。饥鸢卒击，亡其两叔。';
  exit;
end;
if s='巽之大壮' then
begin
  result:='乘车七百，以明文德。践土葵丘，齐晋受福。';
  exit;
end;
if s='巽之晋' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。';
  exit;
end;
if s='巽之明夷' then
begin
  result:='典册法书，藏阁兰台。虽遭溃乱，独不遇灾。';
  exit;
end;
if s='巽之家人' then
begin
  result:='西诛不服，恃强负力。倍道趋敌，师徒败覆。';
  exit;
end;
if s='巽之睽' then
begin
  result:='春阳生草，夏长条肄。万物蕃滋，充实益有。';
  exit;
end;
if s='巽之蹇' then
begin
  result:='磝硗秃白，不生黍稷。无以供祭，祇灵乏祀。';
  exit;
end;
if s='巽之解' then
begin
  result:='牵衣涉河，水深渍罢。幸赖舟子，济脱无他。';
  exit;
end;
if s='巽之损' then
begin
  result:='宜行贾市，所求必倍。载喜抱子，与利为友。';
  exit;
end;
if s='巽之益' then
begin
  result:='兄征东夷，弟伐辽西。大克胜还，封居河间。';
  exit;
end;
if s='巽之夬' then
begin
  result:='初虽惊惶，后乃无伤。受其福庆，相孝为王。';
  exit;
end;
if s='巽之姤' then
begin
  result:='随风乘龙，与利相逢。田获三倍，商旅有功。憧憧之邑，长安无他。';
  exit;
end;
if s='巽之萃' then
begin
  result:='鱼扰水浊，寇围吾邑。城危不安，惊恐狂惑。';
  exit;
end;
if s='巽之升' then
begin
  result:='虽塞复通，履危不凶，保其明功。';
  exit;
end;
if s='巽之困' then
begin
  result:='坤厚地德，庶物蕃息。平康正直，以绥大福。';
  exit;
end;
if s='巽之井' then
begin
  result:='山水暴怒，坏梁折柱。稽难行旋，留连愁苦。';
  exit;
end;
if s='巽之革' then
begin
  result:='使燕筑室，身不庇宿。家无聊赖，瀸我衣服。';
  exit;
end;
if s='巽之鼎' then
begin
  result:='矢石所射，襄公癘剧。吴子巢门，伤病不治。';
  exit;
end;
if s='巽之震' then
begin
  result:='日月运行，一寒一暑。荣宠赫赫，不可得保。颠颠坠坠，更为士伍。';
  exit;
end;
if s='巽之艮' then
begin
  result:='宫门悲鸣，臣围其君，不得东西。';
  exit;
end;
if s='巽之渐' then
begin
  result:='戴盆望天，不见星辰。顾小失大，福逃墙外。';
  exit;
end;
if s='巽之归妹' then
begin
  result:='天之所明，祸不遇家。反目相逐，终得知美。';
  exit;
end;
if s='巽之丰' then
begin
  result:='天阴霖雨，涂行泥潦。商人休止，市无所有。';
  exit;
end;
if s='巽之旅' then
begin
  result:='嘉门福喜，增累盛炽。日就有德，宜其家国。';
  exit;
end;
if s='巽之兑' then
begin
  result:='南山之杨，华叶牂牂。嘉乐君子，为国宠光。';
  exit;
end;
if s='巽之涣' then
begin
  result:='画龙头颈，文章未成。甘言美语，诡辞无名。';
  exit;
end;
if s='巽之节' then
begin
  result:='婴儿孩子，未有知识。彼童而角，乱我政事。';
  exit;
end;
if s='巽之中孚' then
begin
  result:='阴作大姧，欲君勿言。鸿鹄利口，发其祸端。荆季怀忧，张伯被患。';
  exit;
end;
if s='巽之小过' then
begin
  result:='德之流行，利之四乡。雨师洒道，风伯逐殃。巡狩封禅，以告成功。';
  exit;
end;
if s='巽之既济' then
begin
  result:='禹将为君，北入昆仑。稍进阳光，登见温汤，功德昭明。';
  exit;
end;
if s='巽之未济' then
begin
  result:='五岳四渎，含润为德。行不失理，民赖恩福。';
  exit;
end;


end;

 function dui(const s: string):string;
begin
if s='兑' then
begin
  result:='班马还师，以息劳疲。役夫嘉喜，入户见妻。';
  exit;
end;
if s='兑之乾' then
begin
  result:='践履危难，脱厄去患。入福喜门，见诲大君。';
  exit;
end;
if s='兑之坤' then
begin
  result:='子鉏执麟，春秋作经。元圣将终，尼父悲心。';
  exit;
end;
if s='兑之屯' then
begin
  result:='夹河为婚，期至无船。摇心失望，不见所欢。';
  exit;
end;
if s='兑之蒙' then
begin
  result:='天孙帝子，与日月处。光荣于世，福禄繁祉。';
  exit;
end;
if s='兑之需' then
begin
  result:='三年爭妻，相隨奔馳。終日不食，精氣勞疲。乾之大畜，坎之家人，（年一作羊）';
  exit;
end;
if s='兑之讼' then
begin
  result:='禹召诸侯，会稽南山。执玉万国，天下康安。';
  exit;
end;
if s='兑之师' then
begin
  result:='早霜晚雪，伤我禾麦。损功弃力，饥无所食。';
  exit;
end;
if s='兑之比' then
begin
  result:='嵩融持戟，杜伯荷弩。降观下国，诛逐无道。夏商之季，失福逃走。';
  exit;
end;
if s='兑之小畜' then
begin
  result:='生有圣德，上配太极。皇灵建中，受我以福。';
  exit;
end;
if s='兑之履' then
begin
  result:='下田陆黍，万华生齿。大雨霖集，波病溃腐。';
  exit;
end;
if s='兑之泰' then
begin
  result:='子畏于匡，困厄陈蔡。明德不危，竟得免害。';
  exit;
end;
if s='兑之否' then
begin
  result:='有两赤鹞，从五隼噪。操矢无筈，趋释尔射。扶伏听命，不敢动摇。';
  exit;
end;
if s='兑之同人' then
begin
  result:='当得自知，不逢凶灾。衰者复兴，终得福来。';
  exit;
end;
if s='兑之大有' then
begin
  result:='朽根刖树，华叶落去。卒逢火焱，随风僵仆。';
  exit;
end;
if s='兑之谦' then
begin
  result:='葛生衍蔓，絺绤为愿。家道笃厚，父兄悦喜。';
  exit;
end;
if s='兑之豫' then
begin
  result:='东行求玉，反得弊石。名曰无直，字曰丑恶，众所贱薄。';
  exit;
end;
if s='兑之随' then
begin
  result:='瞻白用弦，驽孱恐怯。任劣力薄，如猬见鹊。偃视恐伏，不敢拒格。';
  exit;
end;
if s='兑之蛊' then
begin
  result:='疮痍多病，宋公危殆。吴子巢门，陨命失所。';
  exit;
end;
if s='兑之临' then
begin
  result:='东山西岳，会合俱食。百喜送从，以成恩福。';
  exit;
end;
if s='兑之观' then
begin
  result:='舞非其处，失节多悔，不合我意。';
  exit;
end;
if s='兑之噬嗑' then
begin
  result:='南循汝水，伐树斩枝。过时不遇，惄如调饥。';
  exit;
end;
if s='兑之贲' then
begin
  result:='公孙驾骊，载游东齐。延陵说产，遗季纻衣。';
  exit;
end;
if s='兑之剥' then
begin
  result:='乘舆八百，以明文德。践土葵丘，齐晋受福。';
  exit;
end;
if s='兑之复' then
begin
  result:='雄处弱水，雌在海滨。别离将食，悲哀于心。';
  exit;
end;
if s='兑之无妄' then
begin
  result:='结网得鲜，受福安坐，终无患祸。';
  exit;
end;
if s='兑之大畜' then
begin
  result:='秋南春北，随时休息。处和履中，安无忧凶。';
  exit;
end;
if s='兑之颐' then
begin
  result:='启户开门，巡狩释冤。夏台羑里，汤文悦喜。';
  exit;
end;
if s='兑之大过' then
begin
  result:='符左契右，相与合齿。乾坤利贞，乳生六子。长大成就，风言如母。';
  exit;
end;
if s='兑之坎' then
begin
  result:='饥蚕作室，丝多乱绪，端不可得。';
  exit;
end;
if s='兑之离' then
begin
  result:='东壁余光，数暗不明。主母嫉妬，乱我事业。';
  exit;
end;
if s='兑之咸' then
begin
  result:='白茅缩酒，灵巫拜祷。神嗜饮食，使君寿考。';
  exit;
end;
if s='兑之恒' then
begin
  result:='范公陶朱，巧贾货资。东之营丘，易字子皮。抱珠载金，多得利归。';
  exit;
end;
if s='兑之遁' then
begin
  result:='三羖五牂，相随俱行。迷入空泽，循谷直北。经涉六驳，为所伤贼。';
  exit;
end;
if s='兑之大壮' then
begin
  result:='雄鹄延颈，欲飞入关。雨师洒道，瀸我袍裘。车重难迁，侍者稽首。';
  exit;
end;
if s='兑之晋' then
begin
  result:='中年蒙庆，今岁受福。必有所得，荣宠受禄。';
  exit;
end;
if s='兑之明夷' then
begin
  result:='禄如周公，建国洛东，父子俱封。';
  exit;
end;
if s='兑之家人' then
begin
  result:='安床厚褥，不得久宿。弃我嘉燕，困于东国。投杼之忧，不成灾福。';
  exit;
end;
if s='兑之睽' then
begin
  result:='蓄积有余，粪土不居。';
  exit;
end;
if s='兑之蹇' then
begin
  result:='心愿所喜，乃今逢时。得我利福，不离兵革。';
  exit;
end;
if s='兑之解' then
begin
  result:='目不可合，忧来搔足。怵惕危惧，去其邦族。';
  exit;
end;
if s='兑之损' then
begin
  result:='福德之土，欢悦日喜。夷吾相桓，三归为臣，赏流子孙。';
  exit;
end;
if s='兑之益' then
begin
  result:='夏姬附耳，心听悦喜，利以博取。';
  exit;
end;
if s='兑之夬' then
begin
  result:='叔迎伯兄，遇巷在阳。君子季姬，并坐鼓簧。';
  exit;
end;
if s='兑之姤' then
begin
  result:='徙巢去家，南遇白乌。东西受福，与喜相得。';
  exit;
end;
if s='兑之萃' then
begin
  result:='舜登大禹，石夷之野。征诣王庭，拜治水土。';
  exit;
end;
if s='兑之升' then
begin
  result:='江河淮海，天之都市。商人受福，国家富有。';
  exit;
end;
if s='兑之困' then
begin
  result:='隐隐填填，火烧山根。不润我邻，独不蒙恩。';
  exit;
end;
if s='兑之井' then
begin
  result:='闇昧不明，耳聾不聰。陷入深淵，滅頂憂凶。';
  exit;
end;
if s='兑之革' then
begin
  result:='鸟鸣嘻嘻，天火降下。燔我馆舍，灾及妃后。';
  exit;
end;
if s='兑之鼎' then
begin
  result:='十鸡百雏，常与母俱。抱鸡捕虎，谁肯为侣。';
  exit;
end;
if s='兑之震' then
begin
  result:='营城洛邑，周公所作。世建三十，年历八百。福佑盘结，坚固不落。';
  exit;
end;
if s='兑之艮' then
begin
  result:='三人俱行，别离将食。一身五心，反复迷惑。';
  exit;
end;
if s='兑之渐' then
begin
  result:='三虎搏狼，力不相当。如鹰格雉，一击破亡。';
  exit;
end;
if s='兑之归妹' then
begin
  result:='养虎畜狼，还自贼伤。无事招祸，自取灾殃。';
  exit;
end;
if s='兑之丰' then
begin
  result:='后时失利，不得所欲。';
  exit;
end;
if s='兑之旅' then
begin
  result:='雉兔之东，以野为场。见鹰惊走，死于谷口。';
  exit;
end;
if s='兑之巽' then
begin
  result:='秋蛇向穴，不失其节。夫人姜氏，自齐复入。';
  exit;
end;
if s='兑之涣' then
begin
  result:='鸟鸣葭端，一呼三颠。摇动东西，危魂不安。';
  exit;
end;
if s='兑之节' then
begin
  result:='命夭不遂，死多鬼祟。妻子啼喑，早失其雄。';
  exit;
end;
if s='兑之中孚' then
begin
  result:='茆屋结席，崇我文德。三辰旂旗，家受其福。';
  exit;
end;
if s='兑之小过' then
begin
  result:='罗网四张，鸟无所翔。征伐困极，饥穷不食。';
  exit;
end;
if s='兑之既济' then
begin
  result:='天成地安，积石为山。润洽万里，人赖其欢。';
  exit;
end;
if s='兑之未济' then
begin
  result:='铜人铁柱，暴露劳苦。终月卒岁，无有休止';
  exit;
end;
end;

function huan(const s: string):string;
begin
if s='涣' then
begin
  result:='望幸不到，文章未就。王子逐兔，犬踦不得。';
  exit;
end;
if s='涣之乾' then
begin
  result:='猋风阻越，车驰揭揭。弃古追思，失其和节，忧心惙惙。';
  exit;
end;
if s='涣之坤' then
begin
  result:='蛇得泽草，不忧危殆。';
  exit;
end;
if s='涣之屯' then
begin
  result:='两犬争斗，股疮无处。不成仇雠，行解却去。';
  exit;
end;
if s='涣之蒙' then
begin
  result:='因祸受福，喜盈其室，求事皆得。';
  exit;
end;
if s='涣之需' then
begin
  result:='江有宝珠，海多大鱼。亟行疾去，可以得财。';
  exit;
end;
if s='涣之讼' then
begin
  result:='三牛生狗，以戌为母。荆夷上侵，姬伯出走。';
  exit;
end;
if s='涣之师' then
begin
  result:='安息康居，异国穹庐。非君习俗，使伯忧惑。';
  exit;
end;
if s='涣之比' then
begin
  result:='行触天罡，马死车伤。身无聊赖，困穷乏粮。';
  exit;
end;
if s='涣之小畜' then
begin
  result:='裸裎逐狐，为人观笑。牝鸡司晨，主母乱门。';
  exit;
end;
if s='涣之履' then
begin
  result:='为季求妇，家在东海。水长无船，不见所欢。';
  exit;
end;
if s='涣之泰' then
begin
  result:='男女合室，二姓同食。婚姻孔云，宜我多孙。';
  exit;
end;
if s='涣之否' then
begin
  result:='太微帝室，黄帝所直。藩屏周卫，不可得入。常安长在，终无祸患。';
  exit;
end;
if s='涣之同人' then
begin
  result:='赍金观市，欲买骝子。猾偷窃发，盗我黄宝。';
  exit;
end;
if s='涣之大有' then
begin
  result:='三人俱行，欲归故乡。望邑入门，拜见家亲。';
  exit;
end;
if s='涣之谦' then
begin
  result:='娶于姜吕，驾迎新妇。少齐在门，夫子悦喜。';
  exit;
end;
if s='涣之豫' then
begin
  result:='伯仲旅行，南求大牂。长孟病足，倩季负粮。柳下之宝，不失我邦。';
  exit;
end;
if s='涣之随' then
begin
  result:='洁身白齿，衰老复起。多孙众子，宜利姑舅。';
  exit;
end;
if s='涣之蛊' then
begin
  result:='独宿深夜，嫫母畏昼。平王逐建，荆子忧惧。';
  exit;
end;
if s='涣之临' then
begin
  result:='追亡逐北，至山而得。稚叔相呼，反其室庐。';
  exit;
end;
if s='涣之观' then
begin
  result:='鸟飞无翼，兔走折足。虽欲会同，未见其功。';
  exit;
end;
if s='涣之噬嗑' then
begin
  result:='抱空握虗，鸮惊我雏，利去不来。';
  exit;
end;
if s='涣之贲' then
begin
  result:='山作天池，陆地为海。';
  exit;
end;
if s='涣之剥' then
begin
  result:='为虎所啮，泰山之阳。众多从者，莫敢救藏。';
  exit;
end;
if s='涣之复' then
begin
  result:='逶迤四牡，思归念母。王事靡盬，不得安处。';
  exit;
end;
if s='涣之无妄' then
begin
  result:='猕猴所言，语无成全。误我白马，使干口来。';
  exit;
end;
if s='涣之大畜' then
begin
  result:='飞不远去，卑斯内侍，禄养丰富。';
  exit;
end;
if s='涣之颐' then
begin
  result:='大尾细要，重不可摇。阴权制国，平子逐昭。';
  exit;
end;
if s='涣之大过' then
begin
  result:='旦生夕死，名曰婴鬼，不可得祀。';
  exit;
end;
if s='涣之坎' then
begin
  result:='子畏于匡，困于陈蔡。明德不危，竟免厄害。';
  exit;
end;
if s='涣之离' then
begin
  result:='畏昏潜处，候时昭朗。卒逢白日，为世荣主。';
  exit;
end;
if s='涣之咸' then
begin
  result:='白鸟衔铒，鸣呼其子。旋枝张翅，来从其母。';
  exit;
end;
if s='涣之恒' then
begin
  result:='宫商角徵，五音和起。君臣父子，弟顺有序。唐虞龙德，国无灾咎。';
  exit;
end;
if s='涣之遁' then
begin
  result:='季姬踟蹰，望孟城隅。终日至暮，不见齐候。';
  exit;
end;
if s='涣之大壮' then
begin
  result:='鬼哭于社，悲商无后。甲子昧爽，殷人绝祀。';
  exit;
end;
if s='涣之晋' then
begin
  result:='天之所予，福禄常在，不忧危殆。';
  exit;
end;
if s='涣之明夷' then
begin
  result:='比目四翼，相恃为福。姜氏季女，与君合德。';
  exit;
end;
if s='涣之家人' then
begin
  result:='翕翕（车甸）（车甸），稍崩堕颠。灭其令名，长没不全。';
  exit;
end;
if s='涣之睽' then
begin
  result:='折若蔽目，不见稚叔。三足孤乌，远去家室。';
  exit;
end;
if s='涣之蹇' then
begin
  result:='羊肠九萦，相推稍前。止须王孙，乃能上天。';
  exit;
end;
if s='涣之解' then
begin
  result:='坤厚地德，庶物蕃息。平康正直，以绥大福。';
  exit;
end;
if s='涣之损' then
begin
  result:='有莘外野，不逢尧主。复归穷处，心劳志苦。';
  exit;
end;
if s='涣之益' then
begin
  result:='邑长景行，来观柘桑。土伯有喜，都叔允藏。';
  exit;
end;
if s='涣之夬' then
begin
  result:='周师伐纣，战于牧野。甲子平旦，天下大喜。';
  exit;
end;
if s='涣之姤' then
begin
  result:='踰江求橘，并得大栗。烹羊食豕，饮酒歌笑。';
  exit;
end;
if s='涣之萃' then
begin
  result:='敝笱在梁，鲂逸不禁。渔父劳苦，焦喉干口，虚空无有。';
  exit;
end;
if s='涣之升' then
begin
  result:='生角有尾，阴孽制家。排羊逐狐，张氏易公。忧祸复凶。';
  exit;
end;
if s='涣之困' then
begin
  result:='绝域异路，多有畏恶。使我惊惧，思吾故处。';
  exit;
end;
if s='涣之井' then
begin
  result:='迷行失道，不得牛马。百贾逃亡，市空无有。';
  exit;
end;
if s='涣之革' then
begin
  result:='雌鷟生雏，神异兴起。乘云龙腾，民戴为父。';
  exit;
end;
if s='涣之鼎' then
begin
  result:='叠叠累累，如岐之室。畜一息十，古公治邑。';
  exit;
end;
if s='涣之震' then
begin
  result:='疮疡疥瘙，孝妇不省。君多疣赘，四牧作去。';
  exit;
end;
if s='涣之艮' then
begin
  result:='羊头兔足，羸瘦少肉。漏囊败栗，利无所得。';
  exit;
end;
if s='涣之渐' then
begin
  result:='孽蔑徙靡，空无谁是。言季不明，乐减少解。';
  exit;
end;
if s='涣之归妹' then
begin
  result:='妹为貌慹，败君正色。作事不成，自为心贼。';
  exit;
end;
if s='涣之丰' then
begin
  result:='四马共辕，东上太山。骍骊同力，无有重难，与君笑言。';
  exit;
end;
if s='涣之旅' then
begin
  result:='阴变为阳，女化作男。治道得通，君臣相承。';
  exit;
end;
if s='涣之巽' then
begin
  result:='南国少子，材略美好。求我长女，贱薄不与。反得丑恶，后乃大悔。';
  exit;
end;
if s='涣之兑' then
begin
  result:='昭公失常，季氏悖狂。逊齐处野，丧其宠光。';
  exit;
end;
if s='涣之节' then
begin
  result:='文山紫芝，雍梁朱草。生长和气，王以为宝。公尸侑食，福禄来处。';
  exit;
end;
if s='涣之中孚' then
begin
  result:='牵羊不前，与心戾旋。闻言不信，误绐丈人。';
  exit;
end;
if s='涣之小过' then
begin
  result:='东山西山，各自止安。心虽相望，竟未同堂。';
  exit;
end;
if s='涣之既济' then
begin
  result:='鹿求其子，虎庐之里。唐伯李耳，贪不我许。';
  exit;
end;
if s='涣之未济' then
begin
  result:='三虎上山，更相喧唤。心志不亲，如仇与怨。';
  exit;
end;

end;

function shuizhejie(const s: string):string;
begin
if s='节' then
begin
  result:='海为水王，聪圣且明。百流归德，无有叛逆，常饶优足。';
  exit;
end;
if s='节之乾' then
begin
  result:='虎豹怒咆，慎戒外忧。上下俱搔，士民无聊。';
  exit;
end;
if s='节之坤' then
begin
  result:='探穴得雏，鸠鹊俱来，使我心忧。';
  exit;
end;
if s='节之屯' then
begin
  result:='日望一食，常恐不足，禄命寡薄。';
  exit;
end;
if s='节之蒙' then
begin
  result:='良马疾走，千里一宿。逃难它乡，谁能追复。';
  exit;
end;
if s='节之需' then
begin
  result:='鹊巢鸠城，上下不亲。内外乖畔，子走失顾。';
  exit;
end;
if s='节之讼' then
begin
  result:='云龙集会，征讨西戎。招边定众，谁敢当锋。';
  exit;
end;
if s='节之师' then
begin
  result:='春多膏泽，夏润优渥。稼穑成熟，亩获百斛。';
  exit;
end;
if s='节之比' then
begin
  result:='僮妾独宿，长女未室，利无所得。';
  exit;
end;
if s='节之小畜' then
begin
  result:='四野不安，东西为患。退身止足，无出邦域。乃得全完，赖其生福。';
  exit;
end;
if s='节之履' then
begin
  result:='长宁履福，安我百国。嘉宾上堂，与季同床。';
  exit;
end;
if s='节之泰' then
begin
  result:='骐骥绿耳，章明造父。伯夙奏献，衰续厥绪。佐文成霸，为晋元辅。';
  exit;
end;
if s='节之否' then
begin
  result:='张陈嘉谟，赞成汉都。主欢民喜，其乐休休。';
  exit;
end;
if s='节之同人' then
begin
  result:='大面长头，来解君忧。';
  exit;
end;
if s='节之大有' then
begin
  result:='畏昏不行，待旦昭明。燎猎受福，老赖其庆。';
  exit;
end;
if s='节之谦' then
begin
  result:='伯去我东，首发如蓬。长夜不寐，辗转空床。内怀惆怅，忧摧肝肠。';
  exit;
end;
if s='节之豫' then
begin
  result:='朽条腐索，不堪施用。安静候时，以待亲知。';
  exit;
end;
if s='节之随' then
begin
  result:='比目四翼，相倚为福。姜氏季女，与君合德。';
  exit;
end;
if s='节之蛊' then
begin
  result:='履阶升墀，高登崔嵬。福禄洋溢，依天之威。';
  exit;
end;
if s='节之临' then
begin
  result:='奢淫吝啬，神所不福。灵祇凭怒，鬼瞰其室。';
  exit;
end;
if s='节之观' then
begin
  result:='大步上车，南到喜家。送我狐裘，与福载来。';
  exit;
end;
if s='节之噬嗑' then
begin
  result:='南行西步，失次后舍。乾候野井，昭公失居。';
  exit;
end;
if s='节之贲' then
begin
  result:='喜乐踊跃，来迎名家。鹊巢百两，以成嘉福。';
  exit;
end;
if s='节之剥' then
begin
  result:='非理所求，谁敢相与。往来不获，徒劳道路。';
  exit;
end;
if s='节之复' then
begin
  result:='北虏匈奴，数侵边境。左衽为长，国犹未庆。';
  exit;
end;
if s='节之无妄' then
begin
  result:='狂不以理，伐乃无名。纵获臣子，伯功不成。';
  exit;
end;
if s='节之大畜' then
begin
  result:='景星照堂，麟游凤翔。仁施大行，颂声作兴。';
  exit;
end;
if s='节之颐' then
begin
  result:='文明之世，销锋铸耜。以道顺民，百王不易。';
  exit;
end;
if s='节之大过' then
begin
  result:='鸟飞无羽，鸡斗折距。徒自长嗟，谁肯为侣。';
  exit;
end;
if s='节之坎' then
begin
  result:='群队虎狼，囓彼牛羊。道路不通，妨农害商。';
  exit;
end;
if s='节之离' then
begin
  result:='商伯沈酒，庶兄奔走。淫女荡夫，仁德并孤。';
  exit;
end;
if s='节之咸' then
begin
  result:='三狸搏鼠，遮遏前后。当此之时，不能脱走。';
  exit;
end;
if s='节之恒' then
begin
  result:='陶叔孔圉，不处乱国。初虽未萌，后受庆福。';
  exit;
end;
if s='节之遁' then
begin
  result:='奋翅鼓翼，翱翔外国。逍遥北域，不入温室。';
  exit;
end;
if s='节之大壮' then
begin
  result:='德音孔博，升在王室。八极蒙佑，受其福禄。';
  exit;
end;
if s='节之晋' then
begin
  result:='当变立权，摘解患难。涣然冰释，六国以安。';
  exit;
end;
if s='节之明夷' then
begin
  result:='羽动角甘，雨续草木，茂年岁熟。';
  exit;
end;
if s='节之家人' then
begin
  result:='天所佑助，福来祸去，君王何忧。';
  exit;
end;
if s='节之睽' then
begin
  result:='方喙宣口，圣智仁厚。释解倒悬，唐国大安。';
  exit;
end;
if s='节之蹇' then
begin
  result:='葛藟蒙棘，华不得实。谗佞乱政，使恩壅塞。';
  exit;
end;
if s='节之解' then
begin
  result:='皇母多恩，字养孝孙。脱于襁褓，成就为君。';
  exit;
end;
if s='节之损' then
begin
  result:='积冰不温，北陆苦寒。露宿多风，君子伤心。';
  exit;
end;
if s='节之益' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存。';
  exit;
end;
if s='节之夬' then
begin
  result:='一雌三雄，子不知公。乱我族类，使吾心愦。';
  exit;
end;
if s='节之姤' then
begin
  result:='主安多福，天禄所伏。居之宠昌，君子有光。';
  exit;
end;
if s='节之萃' then
begin
  result:='千岁槐根，身多斧瘢。树维枯屈，枝叶不出。';
  exit;
end;
if s='节之升' then
begin
  result:='周师伐纣，胜殷牧野。甲子平旦，天下大喜。';
  exit;
end;
if s='节之困' then
begin
  result:='日走月步，趋不同舍。夫妻反目，主君失礼。';
  exit;
end;
if s='节之井' then
begin
  result:='宣发龙叔，为王主国。安土成稷，天下蒙福。';
  exit;
end;
if s='节之革' then
begin
  result:='讽德诵功，美周盛隆。奭旦辅成，光济冲人。';
  exit;
end;
if s='节之鼎' then
begin
  result:='三夜不寝，忧来益甚。戒以危惧，弃其安居。';
  exit;
end;
if s='节之震' then
begin
  result:='思愿所之，乃今逢时。洗濯故忧，拜其欢来。';
  exit;
end;
if s='节之艮' then
begin
  result:='噂噂嗫嗫，夜作昼匿。谋议我资，来窃吾室。空尽己财，几无以食。';
  exit;
end;
if s='节之渐' then
begin
  result:='骍牛无子，鸣于大野。申后阴微，还归其母，说以除悔。';
  exit;
end;
if s='节之归妹' then
begin
  result:='王良善御，伯乐知马。周旋步骤，行中规矩。止息有节，延命寿考。';
  exit;
end;
if s='节之丰' then
begin
  result:='释然远咎，避患害早。田获三狐，以贝为宝。';
  exit;
end;
if s='节之旅' then
begin
  result:='仁兽所处，国无凶咎。市贾十倍，复归惠里。';
  exit;
end;
if s='节之巽' then
begin
  result:='六目俱视，各欲有志。一言不同，乖戾生讼。';
  exit;
end;
if s='节之兑' then
begin
  result:='傅说休明，骖御四龙。周径万里，无有危凶。';
  exit;
end;
if s='节之涣' then
begin
  result:='伯仲叔季，日暮寝寐。醉醒失明，丧其贝囊，卧拜道旁。';
  exit;
end;
if s='节之中孚' then
begin
  result:='江有宝珠，海多大鱼。亟行疾至，可以得财。';
  exit;
end;
if s='节之小过' then
begin
  result:='远视千里，不见所持。离娄之明，无益于耳。';
  exit;
end;
if s='节之既济' then
begin
  result:='弱足刖跟，不利出门。市贾无赢，折亡为患。';
  exit;
end;
if s='节之未济' then
begin
  result:='利尽得媒，时不我来。鸣雌深涉，寡宿独居。';
  exit;
end;

end;

function zhongfu(const s: string):string;
begin
if s='中孚' then
begin
  result:='鸟鸣譆譆，天火将下。燔我屋室，灾及妃后。';
  exit;
end;
if s='中孚之乾' then
begin
  result:='黄虹之野，贤君所在。管叔为相，国无灾咎。';
  exit;
end;
if s='中孚之坤' then
begin
  result:='符左契右，相与合齿。乾坤利贞，乳生六子。长大成就，风言如母。';
  exit;
end;
if s='中孚之屯' then
begin
  result:='蝗啮我稻，驱不可去。实穗无有，但见空藳。';
  exit;
end;
if s='中孚之蒙' then
begin
  result:='婴孩求乳，母归其子。黃麑悅喜，得其甘饵。';
  exit;
end;
if s='中孚之需' then
begin
  result:='折若蔽目，不见稚叔。失旅亡民，远去家室。';
  exit;
end;
if s='中孚之讼' then
begin
  result:='牂羊羵首，君子不饱。年饥孔荒，士民危殆。';
  exit;
end;
if s='中孚之师' then
begin
  result:='灵龟陆处，盘桓失所。伊子退耕，桀乱无辅。';
  exit;
end;
if s='中孚之比' then
begin
  result:='威约拘囚，为人所诬。皋陶平理，几得脱免。';
  exit;
end;
if s='中孚之小畜' then
begin
  result:='乌升鹊举，照临东海。尨降庭坚，为陶叔后。封于英六，福履绥厚。';
  exit;
end;
if s='中孚之履' then
begin
  result:='四目相视，稍近同轨。日昳之后，见吾伯姊。';
  exit;
end;
if s='中孚之泰' then
begin
  result:='大步上车，南至喜家。送我狐裘，与福载来。';
  exit;
end;
if s='中孚之否' then
begin
  result:='穿都相合，未敢面见。媒妁无良，使我不乡。';
  exit;
end;
if s='中孚之同人' then
begin
  result:='鸿飞遵陆，公出不复，伯氏客宿。';
  exit;
end;
if s='中孚之大有' then
begin
  result:='代戍失期，患生无知。惧以发难，为我开基，邦国忧愁。';
  exit;
end;
if s='中孚之谦' then
begin
  result:='齐鲁争言，战于龙门。构怨结祸，三世不安。';
  exit;
end;
if s='中孚之豫' then
begin
  result:='周政养贼，背生人足。陆行不安，国危为患。';
  exit;
end;
if s='中孚之随' then
begin
  result:='蜩螗欢喜，草木畅茂。百果蕃生，日益富有。';
  exit;
end;
if s='中孚之蛊' then
begin
  result:='魃为灾虐，风吹云却。欲止不得，复归其宅。';
  exit;
end;
if s='中孚之临' then
begin
  result:='乘骝驾骊，游至东齐。遭遇行旅，逆我以资，厚得利归。';
  exit;
end;
if s='中孚之观' then
begin
  result:='凤生七子，同巢共乳，欢悦相保。';
  exit;
end;
if s='中孚之噬嗑' then
begin
  result:='桃雀窃脂，巢于小枝。动摇不安，为风所吹。心寒漂摇，常忧殆危。';
  exit;
end;
if s='中孚之贲' then
begin
  result:='东山西山，各自止安。虽相登望，竟未同堂。';
  exit;
end;
if s='中孚之剥' then
begin
  result:='匍匐出走，惊惧惶恐。白虎生孙，蓐收在后。';
  exit;
end;
if s='中孚之复' then
begin
  result:='重弋射隼，不知所定。质疑蓍龟，告以肥牡。明神答报，宜利止居。';
  exit;
end;
if s='中孚之无妄' then
begin
  result:='开门内福，喜至我侧。加以善祥，为吾室宅。宫城洛邑，以昭文德。';
  exit;
end;
if s='中孚之大畜' then
begin
  result:='鸟飞狐鸣，国乱不宁。下强上弱，为阴所刑。';
  exit;
end;
if s='中孚之颐' then
begin
  result:='三鸡啄粟，八雏从食。饥鹰卒击，失亡两叔。';
  exit;
end;
if s='中孚之大过' then
begin
  result:='叹息不悦，忧从中出。丧我金罂，无妄失位。';
  exit;
end;
if s='中孚之坎' then
begin
  result:='刚柔相呼，二姓为家。霜降既同，惠我以仁。';
  exit;
end;
if s='中孚之离' then
begin
  result:='襄送季女，至于荡道。齐子旦夕，留连久处。';
  exit;
end;
if s='中孚之咸' then
begin
  result:='低头窃视，有所畏避。行作不利，酒酢鱼馁，众莫贪嗜。';
  exit;
end;
if s='中孚之恒' then
begin
  result:='典册法书，藏阁兰台。虽遭乱溃，独不遇灾。';
  exit;
end;
if s='中孚之遁' then
begin
  result:='旦醉病酒，暮即瘳愈，独不及咎。';
  exit;
end;
if s='中孚之大壮' then
begin
  result:='画龙头颈，文章未成。甘言美语，说辞无名。';
  exit;
end;
if s='中孚之晋' then
begin
  result:='日月运行，一寒一暑。荣宠赫赫，不可得保。颠踬殒堕，更为士伍。';
  exit;
end;
if s='中孚之明夷' then
begin
  result:='争利王市，朝多君子。苏氏六国，获其荣宠。';
  exit;
end;
if s='中孚之家人' then
begin
  result:='六蛇奔走，俱入茂草。惊于长途，畏惧啄口。';
  exit;
end;
if s='中孚之睽' then
begin
  result:='悬貆素餐，食非其任。失舆剥庐，休坐徙居。';
  exit;
end;
if s='中孚之蹇' then
begin
  result:='欢欣九子，俱见大喜。提携福至，王孙是富。';
  exit;
end;
if s='中孚之解' then
begin
  result:='伯夷叔齐，贞廉之师。以德防患，忧祸不存。';
  exit;
end;
if s='中孚之损' then
begin
  result:='雄圣伏名，人匿麟惊。走凤飞北，乱溃未息。';
  exit;
end;
if s='中孚之益' then
begin
  result:='久鳏无偶，思配织女。求其非望，自令寡居。';
  exit;
end;
if s='中孚之夬' then
begin
  result:='破亡之国，天所不福，难以止息。';
  exit;
end;
if s='中孚之姤' then
begin
  result:='老慵多欲，弊政为贼。阿房骊山，子婴失国。';
  exit;
end;
if s='中孚之萃' then
begin
  result:='三羖六牂，相随俱行。迷入空泽，经涉虎庐。为所伤贼，死于牙腹。';
  exit;
end;
if s='中孚之升' then
begin
  result:='喋嗫噱嚾，昧冥相抟。多言少实，语无成事。';
  exit;
end;
if s='中孚之困' then
begin
  result:='舞阳渐离，击筑善歌。慕丹之义，为燕助轲。阴谋不遂，矐目死亡，功名何施。';
  exit;
end;
if s='中孚之井' then
begin
  result:='尹氏伯奇，父子分离。无罪被辜，长舌为灾。';
  exit;
end;
if s='中孚之革' then
begin
  result:='五精乱行，政逆皇恩。汤武赫怒，共伐我域。';
  exit;
end;
if s='中孚之鼎' then
begin
  result:='西历玉山，东入玉门。登上福堂，饮万岁浆。';
  exit;
end;
if s='中孚之震' then
begin
  result:='行触大忌，与司命忤。执囚束缚，拘制于吏，幽人有喜。';
  exit;
end;
if s='中孚之艮' then
begin
  result:='机父不贤，朝多谗臣。君失其政，保家久贫。';
  exit;
end;
if s='中孚之渐' then
begin
  result:='三人俱行，北求大牂。长孟病足，倩季负粮。柳下之宝，不失我邦。';
  exit;
end;
if s='中孚之归妹' then
begin
  result:='鹄思其雄，欲随凤东。顺理羽翼，出次须日。中留北邑，复返其室。';
  exit;
end;
if s='中孚之丰' then
begin
  result:='常德自如，不逢祸灾。';
  exit;
end;
if s='中孚之旅' then
begin
  result:='白鹄游望，君子以宁。履德不愆，福禄来成。';
  exit;
end;
if s='中孚之巽' then
begin
  result:='肤敏之德，发愤晨食。虏豹禽说，为王得福。';
  exit;
end;
if s='中孚之兑' then
begin
  result:='百足俱行，相辅为强。三圣翼事，王室宠光。国富民康。';
  exit;
end;
if s='中孚之涣' then
begin
  result:='生不逢时，困且多忧。年老衰极，中心悲愁。';
  exit;
end;
if s='中孚之节' then
begin
  result:='出门蹉跌，看道后旅。买羊逸亡，取物逃走。空手握拳，坐恨为咎。';
  exit;
end;
if s='中孚之小过' then
begin
  result:='牧羊稻田，闻虎喧讙。畏惧悚惕，终无祸患。';
  exit;
end;
if s='中孚之既济' then
begin
  result:='龙潜凤北，箕子变服。阴孽萌作。';
  exit;
end;
if s='中孚之未济' then
begin
  result:='国无比邻，相与争强。纷纷匈匈，天下扰攘。';
  exit;
end;

end;

function xiaoguo(const s: string):string;
begin
if s='小过' then
begin
  result:='初虽惊惶，后乃无伤。受其福庆，永永其祥。';
  exit;
end;
if s='小过之乾' then
begin
  result:='积德累仁，灵佑顺信，福祉日增。';
  exit;
end;
if s='小过之坤' then
begin
  result:='谨慎重言，不幸遭患。周召述职，脱免牢门。';
  exit;
end;
if s='小过之屯' then
begin
  result:='鸟飞鼓翼，喜乐尧德。虞夏美功，要荒宾服。';
  exit;
end;
if s='小过之蒙' then
begin
  result:='牙孽生齿，室堂启户。幽人利贞，鼓翼起舞。';
  exit;
end;
if s='小过之需' then
begin
  result:='使伯采桑，拒不肯行。与叔争讼，更相毁伤。';
  exit;
end;
if s='小过之讼' then
begin
  result:='手足易处，头尾颠倒。公为雌妪，乱其蚕织。';
  exit;
end;
if s='小过之师' then
begin
  result:='匠卿操斧，豫章危殆。袍衣脱剥，禄命讫已。';
  exit;
end;
if s='小过之比' then
begin
  result:='天女踞床，不成文章。南箕无舌，饭多沙糠。虐众盗名，雌雄折颈。';
  exit;
end;
if s='小过之小畜' then
begin
  result:='大椎破毂，长舌乱国。墙茨之言，三世不安。';
  exit;
end;
if s='小过之履' then
begin
  result:='衔命辱使，不堪厥事。中堕落去，更为斯吏。';
  exit;
end;
if s='小过之泰' then
begin
  result:='三蛇共室，同类相得。甘露时降，生我百谷。';
  exit;
end;
if s='小过之否' then
begin
  result:='衣宵夜游，与君相逢。除患解惑，使我不忧。';
  exit;
end;
if s='小过之同人' then
begin
  result:='被发兽心，难与为邻。来如风云，去如绝弦，为狼所残。';
  exit;
end;
if s='小过之大有' then
begin
  result:='刚柔相呼，二姓为家。霜降既同，惠我以仁。';
  exit;
end;
if s='小过之谦' then
begin
  result:='牛耳聋瞆，不晓齐味。委以鼎俎，治乱愦愦。';
  exit;
end;
if s='小过之豫' then
begin
  result:='低头窃视，有所畏避。行作不利，酒酢鱼餧，众莫贪嗜。';
  exit;
end;
if s='小过之随' then
begin
  result:='雨师娶妇，黄炎季子。成礼既婚，相呼南去。膏泽下土，年岁大有。';
  exit;
end;
if s='小过之蛊' then
begin
  result:='戴盆望天，不见星辰。愿小失大，遁逃墙外。';
  exit;
end;
if s='小过之临' then
begin
  result:='二人辇车，徙去其家。井沸釜鸣，不可以居。';
  exit;
end;
if s='小过之观' then
begin
  result:='攘臂反肘，怒不可止。狼戾腹心，无与为市。';
  exit;
end;
if s='小过之噬嗑' then
begin
  result:='汤火之忧，转解喜来。';
  exit;
end;
if s='小过之贲' then
begin
  result:='忠信辅成，王政不倾。公刘肇基，文武绥之。';
  exit;
end;
if s='小过之剥' then
begin
  result:='登高斩木，顿踬蹈险。车倾马罢，伯叔吁嗟。';
  exit;
end;
if s='小过之复' then
begin
  result:='桑之将落，陨其黄叶。失势倾侧，而无所立。';
  exit;
end;
if s='小过之无妄' then
begin
  result:='鸾凤翱翔，集于家国。念我伯姊，与母相得。';
  exit;
end;
if s='小过之大畜' then
begin
  result:='阴淫所居，盈溢过度，伤害禾稼。';
  exit;
end;
if s='小过之颐' then
begin
  result:='霄冥高山，道险峻难。王孙罢极，困于阪间。';
  exit;
end;
if s='小过之大过' then
begin
  result:='和璧隋珠，为火所烧。冥昧失明，夺精无光，弃于道旁。';
  exit;
end;
if s='小过之坎' then
begin
  result:='虞君好神，惠我老亲。恭承宗庙，虽愠不去，复我内室。';
  exit;
end;
if s='小过之离' then
begin
  result:='爪牙之士，怨毒祈父。转忧与己，伤不及母。';
  exit;
end;
if s='小过之咸' then
begin
  result:='仓盈庾亿，宜稼黍稷，年岁有息。';
  exit;
end;
if s='小过之恒' then
begin
  result:='窗牖户房，通利明光。贤智辅圣，仁德大行。家给人足，海内殷昌。';
  exit;
end;
if s='小过之遁' then
begin
  result:='切切之患，凶重忧荐，为虎所吞。';
  exit;
end;
if s='小过之大壮' then
begin
  result:='水无鱼滋，陆为海涯。君子失居，小人相携。';
  exit;
end;
if s='小过之晋' then
begin
  result:='九疑郁林，沮湿不中。鸾凤所恶，君子攸去。';
  exit;
end;
if s='小过之明夷' then
begin
  result:='六翮泛飞，走归不及。脱归王室，亡其骍特。';
  exit;
end;
if s='小过之家人' then
begin
  result:='不直庄公，与我争讼。媒伯无礼，自令壅塞。';
  exit;
end;
if s='小过之睽' then
begin
  result:='疮痍多病，宋公危残。吴子巢门，殒命失所。';
  exit;
end;
if s='小过之蹇' then
begin
  result:='失羊捕牛，无损无忧。';
  exit;
end;
if s='小过之解' then
begin
  result:='夏麦麸（麦黄），霜击其芒。疾君败国，使我诛伤。';
  exit;
end;
if s='小过之损' then
begin
  result:='昧昧闇闇，不知白黑。风雨乱扰，光明伏匿，幽王失国。';
  exit;
end;
if s='小过之益' then
begin
  result:='执斧破薪，使媒求妇。和合二姓，亲御饮酒。色比毛嫱，姑公悦喜。';
  exit;
end;
if s='小过之夬' then
begin
  result:='六疾生狂，痴走妄行。北入患门，与祸为邻。';
  exit;
end;
if s='小过之姤' then
begin
  result:='驱羊就群，佷不肯前。庆季愎谏，子之被患。';
  exit;
end;
if s='小过之萃' then
begin
  result:='二人共路，东趋西步。十里之外，不相知处。';
  exit;
end;
if s='小过之升' then
begin
  result:='义不胜情，以欲自营。几利危躬，折角摧颈。';
  exit;
end;
if s='小过之困' then
begin
  result:='骚骚扰扰，不安其类。疾在颈项，凶危为忧。';
  exit;
end;
if s='小过之井' then
begin
  result:='三河俱合，水怒涌跃。坏我王室，民困于食。';
  exit;
end;
if s='小过之革' then
begin
  result:='阳曜旱疾，伤病稼穑，农人无食。';
  exit;
end;
if s='小过之鼎' then
begin
  result:='流浮出食，载豢入屋。释辔系马，西南庑下。';
  exit;
end;
if s='小过之震' then
begin
  result:='门户之居，可以止舍。进仕不殆，安乐相保。';
  exit;
end;
if s='小过之艮' then
begin
  result:='过时不归，雌雄苦悲。徘徊外国，与母分离。';
  exit;
end;
if s='小过之渐' then
begin
  result:='中田有庐，疆埸有瓜。献进皇祖，曾孙寿考。';
  exit;
end;
if s='小过之归妹' then
begin
  result:='失时无友，覆家出走，傫如丧狗。';
  exit;
end;
if s='小过之丰' then
begin
  result:='反鼻歧头，三寡独居。';
  exit;
end;
if s='小过之旅' then
begin
  result:='衣裳颠倒，为王来呼。成就东周，封受大福。';
  exit;
end;
if s='小过之巽' then
begin
  result:='飞不远去，还归故处，兴事多悔。';
  exit;
end;
if s='小过之兑' then
begin
  result:='含血走禽，不晓五音。瓠巴鼓瑟，不悦于心。';
  exit;
end;
if s='小过之涣' then
begin
  result:='求玉获石，非心所欲，祝愿不得。';
  exit;
end;
if s='小过之节' then
begin
  result:='山崩谷绝，大福尽竭。泾渭失纪，玉历既已。';
  exit;
end;
if s='小过之中孚' then
begin
  result:='嗔目惧怒，不安其居。散涣府藏，无有利得。';
  exit;
end;
if s='小过之既济' then
begin
  result:='众邪充侧，凤凰折翼。微子复北，去其邦国。';
  exit;
end;
if s='小过之未济' then
begin
  result:='六月采芑，征伐无道。张仲方叔，克敌饮酒。';
  exit;
end;

end;

function jiji(const s: string):string;
begin
if s='既济' then
begin
  result:='玄兔指掌，相与相恃。证讯诘问，诬情自直。冤死谁告，口为身祸。';
  exit;
end;
if s='既济之乾' then
begin
  result:='游驹石门，騄耳安全。受福西邻，归隐玉泉。';
  exit;
end;
if s='既济之坤' then
begin
  result:='阳春草生，万物风兴。君子所居，祸灾不到。';
  exit;
end;
if s='既济之屯' then
begin
  result:='人无足法，绂除才出。雄走羊惊，不失其家。';
  exit;
end;
if s='既济之蒙' then
begin
  result:='太上止奔，变见太微。陈吾废忽，作为祸患。';
  exit;
end;
if s='既济之需' then
begin
  result:='乘龙吐光，先暗后明。燎猎大得，六师以昌。';
  exit;
end;
if s='既济之讼' then
begin
  result:='羊头兔足，羸瘦少肉。漏囊败粟，利无所得。';
  exit;
end;
if s='既济之师' then
begin
  result:='因祸受福，喜盈其室。螟虫不作，君无苛忒。';
  exit;
end;
if s='既济之比' then
begin
  result:='舜升大禹，石夷之野。征诣王庭，拜治水土。';
  exit;
end;
if s='既济之小畜' then
begin
  result:='乌子鹊雏，常与母俱。顾类群族，不离其巢。';
  exit;
end;
if s='既济之履' then
begin
  result:='夷羿所射，发辄有获。矰加鹊鹰，双鸟俱得。';
  exit;
end;
if s='既济之泰' then
begin
  result:='晨风文翰，大兴就温。昧过我邑，羿无所得。';
  exit;
end;
if s='既济之否' then
begin
  result:='六喜三福，南至欢国。与喜同乐，嘉我洁德。';
  exit;
end;
if s='既济之同人' then
begin
  result:='斗龙股折，日遂不明。自外为主，弟伐其兄。';
  exit;
end;
if s='既济之大有' then
begin
  result:='蒙庆受福，有所获得，不利出域。';
  exit;
end;
if s='既济之谦' then
begin
  result:='胡蛮戎狄，太阴所积。涸冰冱寒，君子不存。';
  exit;
end;
if s='既济之豫' then
begin
  result:='畏昏潜处，候旦昭明。卒逢白日，为世荣主。';
  exit;
end;
if s='既济之随' then
begin
  result:='水流趋下，欲至东海。求我所有，买鲔与鲤。';
  exit;
end;
if s='既济之蛊' then
begin
  result:='冠带南行，与福喜期。徼于嘉国，拜位逢时。';
  exit;
end;
if s='既济之临' then
begin
  result:='莎鸡振羽，为季门户。新沐弹冠，仲父悦喜。';
  exit;
end;
if s='既济之观' then
begin
  result:='结衿流粥，遭谗桎梏。周召述职，身受大福。';
  exit;
end;
if s='既济之噬嗑' then
begin
  result:='田鼠野鸡，意常欲逃。拘制笼槛，不得动摇。';
  exit;
end;
if s='既济之贲' then
begin
  result:='居华山巅，游观浮云。有雨不濡，心乐无忧。';
  exit;
end;
if s='既济之剥' then
begin
  result:='倾倚将颠，乱不能存。英雄作业，家困无年。';
  exit;
end;
if s='既济之复' then
begin
  result:='心愿所喜，今乃逢时。保我利福，不离兵革。';
  exit;
end;
if s='既济之无妄' then
begin
  result:='灵龟陆处，盘桓失所。阿衡退耕，夏封于国。';
  exit;
end;
if s='既济之大畜' then
begin
  result:='弱水之右，有西王母。生不知老，与天相保。不利行旅。';
  exit;
end;
if s='既济之颐' then
begin
  result:='抱瑰求金，日暮坐吟。终月卒岁，竟无成功。';
  exit;
end;
if s='既济之大过' then
begin
  result:='言笑未毕，忧来暴卒。身加槛缆，囚系缚束。';
  exit;
end;
if s='既济之坎' then
begin
  result:='望幸不至，文章未成。王子逐兔，犬踦不得。';
  exit;
end;
if s='既济之离' then
begin
  result:='震悚恐惧，多所畏忌。行道留难，不可以步。';
  exit;
end;
if s='既济之咸' then
begin
  result:='雄狐绥绥，登山崔嵬。昭告显功，大福允兴';
  exit;
end;
if s='既济之恒' then
begin
  result:='火起吾后，喜炙我庑。苍龙衔水，泉噀屋柱。虽忧无咎。';
  exit;
end;
if s='既济之遁' then
begin
  result:='危坐至暮，请求不得。膏泽不降，政戾民忒。';
  exit;
end;
if s='既济之大壮' then
begin
  result:='孟春和气，鹰隼搏鸷，众雀忧愦。';
  exit;
end;
if s='既济之晋' then
begin
  result:='缓怯长奸，不能理冤。沈湎失节，君受其患。';
  exit;
end;
if s='既济之明夷' then
begin
  result:='鱼鳖贪饵，死于网钩。受危因宠，为身殃咎。';
  exit;
end;
if s='既济之家人' then
begin
  result:='金精耀怒，带剑过午。徘徊高库，宿于山谷。两虎相拒，弓弩满野。';
  exit;
end;
if s='既济之睽' then
begin
  result:='四目相望，稍近同光，并坐鼓簧。';
  exit;
end;
if s='既济之蹇' then
begin
  result:='茹芝饵黄，涂饮玉英。与神流通，长无忧凶。';
  exit;
end;
if s='既济之解' then
begin
  result:='求獐嘉乡，恶蛇不行。道出岐口，复反其床。';
  exit;
end;
if s='既济之损' then
begin
  result:='天门地户，幽冥不睹，不知所在。';
  exit;
end;
if s='既济之益' then
begin
  result:='跛足息肩，有所忌难。金城铁郭，以铜为关。藩屏自卫，安止无患。';
  exit;
end;
if s='既济之夬' then
begin
  result:='三雁俱飞，欲归稻池。经涉萑泽，为矢所射，伤我胸臆。';
  exit;
end;
if s='既济之姤' then
begin
  result:='济深难渡，濡我衣袴。五子善棹，脱无他故。';
  exit;
end;
if s='既济之萃' then
begin
  result:='饮酒作酗，跳起争斗。伯伤叔僵，东家治丧。';
  exit;
end;
if s='既济之升' then
begin
  result:='跛踬未起，失利后市。蒙被殃咎，不得鹿子。';
  exit;
end;
if s='既济之困' then
begin
  result:='辰次降娄，建星中坚。子无远行，外颠霄陷。遂命讫终。';
  exit;
end;
if s='既济之井' then
begin
  result:='商风召寇，来呼外盗。间牒内应，与我争斗。殚己宝藏，主人不胜。';
  exit;
end;
if s='既济之革' then
begin
  result:='甘露醴泉，太平机关。仁德感应，岁乐民安';
  exit;
end;
if s='既济之鼎' then
begin
  result:='祭仲子突，要门逐忽。祸起子商，弟伐其兄，郑久不昌。';
  exit;
end;
if s='既济之震' then
begin
  result:='反孼难步，留不及舍。露宿泽陂，亡其襦袴。';
  exit;
end;
if s='既济之艮' then
begin
  result:='虎狼结谋，相聚为保。伺候牛羊，病我商人。';
  exit;
end;
if s='既济之渐' then
begin
  result:='明德克敏，重华贡举。放勋征用，八哲蒙佑。';
  exit;
end;
if s='既济之归妹' then
begin
  result:='贫鬼守门，日破我盆。毁罂伤瓶，空虚无子。';
  exit;
end;
if s='既济之丰' then
begin
  result:='天命赤乌，与兵徼期。征伐无道，箕子游遨。';
  exit;
end;
if s='既济之旅' then
begin
  result:='威约拘囚，为人所诬。皋陶平理，剖械出牢。脱归家闾。';
  exit;
end;
if s='既济之巽' then
begin
  result:='羊惊虎狼，耸耳群聚。无益威强，为齿所伤。';
  exit;
end;
if s='既济之兑' then
begin
  result:='初虽啼号，后必庆笑。光明照耀，百喜如意。';
  exit;
end;
if s='既济之涣' then
begin
  result:='马服长股，宜行善市。蒙佑谐耦，获金五倍。';
  exit;
end;
if s='既济之节' then
begin
  result:='应门内崩，诛贤杀暴。上下咸悖，景公失位。长归无恒，望妻不来。';
  exit;
end;
if s='既济之中孚' then
begin
  result:='执斧破薪，使媒求妇。和合二姓，亲御饮酒。色比毛嫱，姑公悦喜。';
  exit;
end;
if s='既济之小过' then
begin
  result:='两轮日转，南上大阪。四马共辕，无有险难，与禹笑言。';
  exit;
end;
if s='既济之未济' then
begin
  result:='千柱百梁，终不倾僵，周宗宁康。';
  exit;
end;

end;

function weiji(const s: string):string;
begin
if s='未济' then
begin
  result:='志慢未习，单酒糗脯。数至神前，欲求所愿，反得大患。';
  exit;
end;
if s='未济之乾' then
begin
  result:='旦生夕死，名曰婴鬼，不可得祀。';
  exit;
end;
if s='未济之坤' then
begin
  result:='大步上车，南至喜家。送我狐裘，与主俱来。';
  exit;
end;
if s='未济之屯' then
begin
  result:='西多小星，三五在东。早夜晨兴，劳苦无功。';
  exit;
end;
if s='未济之蒙' then
begin
  result:='北陆藏冰，君子心悲。困于粒食，鬼惊我门。';
  exit;
end;
if s='未济之需' then
begin
  result:='山水暴怒，坏梁折柱。稽难行旅，流连愁苦。';
  exit;
end;
if s='未济之讼' then
begin
  result:='比目四翼，来安吾国。福喜上堂，与我同床。';
  exit;
end;
if s='未济之师' then
begin
  result:='狡兔趯趯，良犬逐咋。雄雌爰爰，为鹰所获。';
  exit;
end;
if s='未济之比' then
begin
  result:='增禄益福，喜来入室，解除忧惑。';
  exit;
end;
if s='未济之小畜' then
begin
  result:='骑龙乘风，上见神公。彭祖受刺，王乔赞通。巫咸就位，拜福无穷';
  exit;
end;
if s='未济之履' then
begin
  result:='天火卒起，烧我旁里。延及吾家，空尽己财。';
  exit;
end;
if s='未济之泰' then
begin
  result:='金帛黄宝，宜与我市。嫁娶有息，利得过倍。';
  exit;
end;
if s='未济之否' then
begin
  result:='鬼魅之居，凶不可舍。';
  exit;
end;
if s='未济之同人' then
begin
  result:='鸟飞兔走，各有畏恶。雕鹰为贼，乱我室舍。';
  exit;
end;
if s='未济之大有' then
begin
  result:='初虽惊惶，后乃无伤，受其福庆。';
  exit;
end;
if s='未济之谦' then
begin
  result:='两金相击，勇气均敌。日月斗战，不破不缺。';
  exit;
end;
if s='未济之豫' then
begin
  result:='曳纶河海，挂钓鲂鲤。王孙利得，以享仲友。';
  exit;
end;
if s='未济之随' then
begin
  result:='犬畏狼虎，依人作辅。三夫执戟，伏不敢起，身安无咎。';
  exit;
end;
if s='未济之蛊' then
begin
  result:='蜘蛛结网，以伺行旅。青蝇嚵聚，以求膏腴。触我罗域，为网所得。';
  exit;
end;
if s='未济之临' then
begin
  result:='所望在外，鼎命方来。拭爵涤罍，炊食待之，不为季忧。';
  exit;
end;
if s='未济之观' then
begin
  result:='日月并居，常暗匪明。高山崩颠，丘陵为溪。';
  exit;
end;
if s='未济之噬嗑' then
begin
  result:='春服既成，载华复生。茎叶盛茂，实穗泥泥。';
  exit;
end;
if s='未济之贲' then
begin
  result:='华首山头，仙道所游。利以居止，常无咎忧。';
  exit;
end;
if s='未济之剥' then
begin
  result:='三狐嗥哭，自悲孤独。野无所游，死于丘室。';
  exit;
end;
if s='未济之复' then
begin
  result:='火中暑退，求藿其食。商人不至，市空无有。';
  exit;
end;
if s='未济之无妄' then
begin
  result:='独立山巅，求麋耕田。草木不辟，秋饥无年。';
  exit;
end;
if s='未济之大畜' then
begin
  result:='火虽炽后。寇虽聚右。吾身安吉，独不危殆。';
  exit;
end;
if s='未济之颐' then
begin
  result:='（齿间）（齿间）囓囓，贫鬼相责。无有欢怡，一日九结。';
  exit;
end;
if s='未济之大过' then
begin
  result:='追亡逐北，至山而得。稚叔相呼，反其室庐。';
  exit;
end;
if s='未济之坎' then
begin
  result:='衔命辱使，不堪厥事。遂堕落去，更为斯吏。';
  exit;
end;
if s='未济之离' then
begin
  result:='被珠函玉，沐浴仁德。应聘唐国，四门穆穆。蟊贼不作，凶恶伏慝。';
  exit;
end;
if s='未济之咸' then
begin
  result:='机关不便，不能出言。精诚适通，为人所冤。';
  exit;
end;
if s='未济之恒' then
begin
  result:='瓮破缶缺，南行亡失。';
  exit;
end;
if s='未济之遁' then
begin
  result:='唇亡齿寒，积日凌根。朽不可用，为身灾患。';
  exit;
end;
if s='未济之大壮' then
begin
  result:='蒙惑憧憧，不知西东。魁罡指南，告我失中。利以宜止，去国忧患。';
  exit;
end;
if s='未济之晋' then
begin
  result:='乌鸱抟翼，以避阴贼。盗伺二女，赖厥生福。旱灾为疾，君无黍稷。';
  exit;
end;
if s='未济之明夷' then
begin
  result:='名成德就，项领不试。景公耄老，尼父逝去。';
  exit;
end;
if s='未济之家人' then
begin
  result:='言与心诡，西行东坐。鲧湮洪水，佞贼为祸。';
  exit;
end;
if s='未济之睽' then
begin
  result:='猃狁匪度，治兵焦获。伐镐及方，与周争疆。元戎其驾，衰及夷王。';
  exit;
end;
if s='未济之蹇' then
begin
  result:='三火起明，雨灭其光。高位疾颠，骄恣诛伤。';
  exit;
end;
if s='未济之解' then
begin
  result:='阴涿川决，水为吾祟。使我心愦，毋树麻枲，居止凶殆。';
  exit;
end;
if s='未济之损' then
begin
  result:='厌浥晨夜，道多湛露。瀸衣濡袴，重难以步。';
  exit;
end;
if s='未济之益' then
begin
  result:='宜行贾市，所求必倍。载喜抱子，与利为友。';
  exit;
end;
if s='未济之夬' then
begin
  result:='阴变为阳，女化作男。治道得通，君臣相承。';
  exit;
end;
if s='未济之姤' then
begin
  result:='树蔽牡荆，生蘙山旁。仇敌背憎，孰肯相迎。';
  exit;
end;
if s='未济之萃' then
begin
  result:='坐茵乘轩，据德宰臣。虞叔受命，六合和亲。';
  exit;
end;
if s='未济之升' then
begin
  result:='云兴蔽日，雨集草木，年茂岁熟。';
  exit;
end;
if s='未济之困' then
begin
  result:='播梅折枝，与母别离，绝不相知。';
  exit;
end;
if s='未济之井' then
begin
  result:='天旱水涸，枯槁无泽。困于沙石，未有所获。';
  exit;
end;
if s='未济之革' then
begin
  result:='圭璧琮璜，执贽见王。百里宁戚，应聘齐秦。';
  exit;
end;
if s='未济之鼎' then
begin
  result:='龙渴求饮，黑云景从。河伯捧醴，跪进酒浆，流潦滂滂。';
  exit;
end;
if s='未济之震' then
begin
  result:='雹梅零堕，心思愦愦，乱我灵气。';
  exit;
end;
if s='未济之艮' then
begin
  result:='鹿求其子，虎庐之里。唐伯李耳，贪不我许。';
  exit;
end;
if s='未济之渐' then
begin
  result:='穿匏挹水，篝铁然火。劳疲力竭，饥渴为祸。';
  exit;
end;
if s='未济之归妹' then
begin
  result:='龙生马渊，寿考且神。飞腾上天，舍宿轩辕，常居乐安。';
  exit;
end;
if s='未济之丰' then
begin
  result:='崔嵬北岳，天神贵客。温仁正直，主布恩德。闵哀不已，蒙受大福。';
  exit;
end;
if s='未济之旅' then
begin
  result:='鬼夜哭泣，齐失其国，为下所贼。';
  exit;
end;
if s='未济之巽' then
begin
  result:='二政多门，君失其权。三家专制，祸起季孙。';
  exit;
end;
if s='未济之兑' then
begin
  result:='望幸不到，文章未就。王子逐兔，犬踦不得。';
  exit;
end;
if s='未济之涣' then
begin
  result:='伯虎仲熊，德义渊泓。使布五教，阴阳顺序。';
  exit;
end;
if s='未济之节' then
begin
  result:='两足四翼，飞入家国。宁我伯姊，与母相得。';
  exit;
end;
if s='未济之中孚' then
begin
  result:='春秋祷祝，解祸除忧，君无灾咎。';
  exit;
end;
if s='未济之小过' then
begin
  result:='牧羊稻园，闻虎喧讙。畏惧悚息，终无祸患。';
  exit;
end;
if s='未济之既济' then
begin
  result:='大蛇巨鱼，相搏于郊。君臣隔塞，郭公出庐。';
  exit;
end;

end;

function get_jiaochi(s: string): string;
var j,k : integer;
  I: Integer;
begin
result:= '';
   for I := 0 to 5 do
    begin
     j:= pos('(',s);
     k:= pos(')',s);
     if j<>0 then
      delete(s,j,k-j+1);
   end;

   s:= StringReplace(s, '天', '', [rfReplaceAll]);
   s:= StringReplace(s, '地', '', [rfReplaceAll]);
   s:= StringReplace(s, '风', '', [rfReplaceAll]);
   s:= StringReplace(s, '水', '', [rfReplaceAll]);
   s:= StringReplace(s, '山', '', [rfReplaceAll]);
   s:= StringReplace(s, '雷', '', [rfReplaceAll]);
   s:= StringReplace(s, '泽', '', [rfReplaceAll]);
   s:= StringReplace(s, '火', '', [rfReplaceAll]);
   s:= StringReplace(s, '为', '', [rfReplaceAll]);
   s:= StringReplace(s, ' ', '', [rfReplaceAll]);
   s:= StringReplace(s, '变', '之', [rfReplaceAll]);

if pos('未济',s)=1 then
begin
result:= weiji(s);
 exit;
 end;

if pos('既济',s)=1 then
begin
result:= jiji(s);
 exit;
 end;

if pos('小过',s)=1 then
begin
result:= xiaoguo(s);
 exit;
 end;

if pos('中孚',s)=1 then
begin
result:= zhongfu(s);
 exit;
 end;


if pos('节',s)=1 then
begin
result:= shuizhejie(s);
 exit;
 end;

if pos('涣',s)=1 then
begin
result:= huan(s);
 exit;
 end;

if pos('兑',s)=1 then
begin
result:= dui(s);
 exit;
 end;

if pos('巽',s)=1 then
begin
result:= xun(s);
 exit;
 end;

if pos('旅',s)=1 then
begin
result:= huoshanlv(s);
 exit;
 end;

if pos('丰',s)=1 then
begin
result:= leihuofeng(s);
 exit;
 end;

if pos('归妹',s)=1 then
begin
result:= guimei(s);
 exit;
 end;

if pos('渐',s)=1 then
begin
result:= fengshanjian(s);
 exit;
 end;

if pos('艮',s)=1 then
begin
result:= gen(s);
 exit;
 end;

if pos('震',s)=1 then
begin
result:= zhen(s);
 exit;
 end;

if pos('鼎',s)=1 then
begin
result:= ding(s);
 exit;
 end;

if pos('革',s)=1 then
begin
result:= ge(s);
 exit;
 end;

if pos('井',s)=1 then
begin
result:= jing(s);
 exit;
 end;

if pos('困',s)=1 then
begin
result:= zheshuikun(s);
 exit;
 end;

if pos('升',s)=1 then
begin
result:= sheng(s);
 exit;
 end;

if pos('萃',s)=1 then
begin
result:= cui(s);
 exit;
 end;

if pos('姤',s)=1 then
begin
result:= gou(s);
 exit;
 end;

if pos('夬',s)=1 then
begin
result:= guai(s);
 exit;
 end;

 if pos('益',s)=1 then
begin
result:= fengleiyi(s);
 exit;
 end;

if pos('损',s)=1 then
begin
result:= shun(s);
 exit;
 end;

if pos('解',s)=1 then
begin
result:= jie(s);
 exit;
 end;

if pos('蹇',s)=1 then
begin
result:= shuishangjian(s);
 exit;
 end;

if pos('睽',s)=1 then
begin
result:= kui(s);
 exit;
 end;

if pos('家人',s)=1 then
begin
result:= jiaren(s);
 exit;
 end;

if pos('明夷',s)=1 then
begin
result:= mingyi(s);
 exit;
 end;

if pos('晋',s)=1 then
begin
result:= jin(s);
 exit;
 end;

if pos('大壮',s)=1 then
begin
result:= dazhuang(s);
 exit;
 end;

if pos('遁',s)=1 then
begin
result:= dun(s);
 exit;
 end;

if pos('恒',s)=1 then
begin
result:= heng(s);
 exit;
 end;

if pos('咸',s)=1 then
begin
result:= xian(s);
 exit;
 end;

if pos('离',s)=1 then
begin
result:= li(s);
 exit;
 end;

if pos('坎',s)=1 then
begin
result:= kan(s);
 exit;
 end;

if pos('大过',s)=1 then
begin
result:= daguo(s);
 exit;
 end;

if pos('颐',s)=1 then
begin
result:= yi(s);
 exit;
 end;

if pos('大畜',s)=1 then
begin
result:= daxu(s);
 exit;
 end;

if pos('无妄',s)=1 then
begin
result:= wuwang(s);
 exit;
 end;

if pos('复',s)=1 then
begin
result:= fu(s);
 exit;
 end;

if pos('剥',s)=1 then
begin
result:= bo(s);
 exit;
 end;

if pos('贲',s)=1 then
begin
result:= shanhuobi(s);
 exit;
 end;

if pos('噬嗑',s)=1 then
begin
result:= shike(s);
 exit;
 end;

if pos('观',s)=1 then
begin
result:= guan(s);
 exit;
 end;

if pos('临',s)=1 then
begin
result:= lin(s);
 exit;
 end;

if pos('蛊',s)=1 then
begin
result:= guo(s);
 exit;
 end;

if pos('随',s)=1 then
begin
result:= shui(s);
 exit;
 end;

if pos('豫',s)=1 then
begin
result:= yu(s);
 exit;
 end;

if pos('谦',s)=1 then
begin
result:= qianxu(s);
 exit;
 end;

  if pos('大有',s)=1 then
begin
result:= dayou(s);
 exit;
 end;

  if pos('同人',s)=1 then
  begin
  result:= tongren(s);
  exit;
  end;

 if pos('乾',s)=1 then
  begin
    result:= qian(s);
    exit;
  end;
 if pos('坤',s)=1 then
  begin
    result:= kun(s);
    exit;
  end;

 if pos('屯',s)=1 then
  begin
    result:= tun(s);
    exit;
  end;
 if pos('蒙',s)=1 then
  begin
    result:= meng(s);
    exit;
  end;

 if pos('需',s)=1 then
  begin
    result:= xu(s);
    exit;
  end;

 if pos('讼',s)=1 then
  begin
    result:= song(s);
    exit;
  end;
 if pos('师',s)=1 then
  begin
    result:= shi(s);
    exit;
  end;

  if pos('比',s)=1 then
  begin
    result:= bi(s);
    exit;
  end;

  if pos('小畜',s)=1 then
  begin
    result:= xiaoxu(s);
    exit;
  end;

   if pos('履',s)=1 then
  begin
    result:= lv(s);
    exit;
  end;

  if pos('泰',s)=1 then
  begin
    result:= tai(s);
    exit;
  end;

  if pos('否',s)=1 then
  begin
    result:= pi(s);
    exit;
  end;
end;

end.
