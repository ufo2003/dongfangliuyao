unit Unitjiaoshiyi;

interface
   uses SysUtils;
 function get_jiaochi(s: string): string;
 function get_guagong(const s: string): string;
 function get_tiangan_by_gua(const m: string): string;
 function get_najia(const s: string): string;
 function get_najia_zhangshan(const s: string): string;
 function get_guaming(const s: integer): string;
 function get_guaming_quan(s: string): string; //������
 function get_shuzigua(s,x,d: integer): string; //���ݱ�������
 function ��ȫ����(var s8: string): boolean;
 function guaming_dao_shuzi(s: string): string;
 function get_bagong_shougua(const s: string): string;
 function hecheng_guaming(const s: string): string;


implementation

function hecheng_guaming(const s: string): string;
begin
   result:= s;
  result:= StringReplace(result, 'Ǭ', '��', [rfReplaceAll]);
  result:= StringReplace(result, '��', '��', [rfReplaceAll]);
  result:= StringReplace(result, '��', '��', [rfReplaceAll]);
  result:= StringReplace(result, '��', '��', [rfReplaceAll]);
  result:= StringReplace(result, '��', '��', [rfReplaceAll]);
  result:= StringReplace(result, '��', 'ˮ', [rfReplaceAll]);
  result:= StringReplace(result, '��', 'ɽ', [rfReplaceAll]);
  result:= StringReplace(result, '��', '��', [rfReplaceAll]);


       if result='����' then
        result:='�����';
       if result='����' then
        result:='�������';
       if result='����' then
        result:='�����׳';
       if result='����' then
        result:='����С��';
       if result='ˮ��' then
        result:='ˮ����';
       if result='ɽ��' then
        result:='ɽ�����';
       if result='����' then
        result:='����̩';

        if result='����' then
        result:='������';
       if result='����' then
        result:='�����';
       if result='����' then
        result:='�������';
       if result='����' then
        result:='��������';
       if result='ˮ��' then
        result:='ˮ���';
       if result='ɽ��' then
        result:='ɽ����';
       if result='����' then
        result:='������';

        if result='���' then
        result:='���ͬ��';
       if result='���' then
        result:='����';
       if result='�׻�' then
        result:='�׻��';
       if result='���' then
        result:='������';
       if result='ˮ��' then
        result:='ˮ��ȼ�';
       if result='ɽ��' then
        result:='ɽ����';
       if result='�ػ�' then
        result:='�ػ�����';

        if result='����' then
        result:='��������';
       if result='����' then
        result:='������';
       if result='����' then
        result:='�������';
       if result='����' then
        result:='������';
       if result='ˮ��' then
        result:='ˮ����';
       if result='ɽ��' then
        result:='ɽ����';
       if result='����' then
        result:='���׸�';

        if result='���' then
        result:='��犥';
       if result='���' then
        result:='�����';
       if result='���' then
        result:='��綦';
       if result='�׷�' then
        result:='�׷��';
       if result='ˮ��' then
        result:='ˮ�羮';
       if result='ɽ��' then
        result:='ɽ���';
       if result='�ط�' then
        result:='�ط���';

        if result='��ˮ' then
        result:='��ˮ��';
       if result='��ˮ' then
        result:='��ˮ��';
       if result='��ˮ' then
        result:='��ˮδ��';
       if result='��ˮ' then
        result:='��ˮ��';
       if result='��ˮ' then
        result:='��ˮ��';
       if result='ɽˮ' then
        result:='ɽˮ��';
       if result='��ˮ' then
        result:='��ˮʦ';

        if result='��ɽ' then
        result:='��ɽ��';
       if result='��ɽ' then
        result:='��ɽ��';
       if result='��ɽ' then
        result:='��ɽ��';
       if result='��ɽ' then
        result:='��ɽС��';
       if result='��ɽ' then
        result:='��ɽ��';
       if result='ˮɽ' then
        result:='ˮɽ�';
       if result='��ɽ' then
        result:='��ɽǫ';

        if result='���' then
        result:='��ط�';
       if result='���' then
        result:='�����';
       if result='���' then
        result:='��ؽ�';
       if result='�׵�' then
        result:='�׵�ԥ';
       if result='���' then
        result:='��ع�';
       if result='ˮ��' then
        result:='ˮ�ر�';
       if result='ɽ��' then
        result:='ɽ�ذ�';

end;

function get_bagong_shougua(const s: string): string;
begin
result:= '';
   if s='Ǭ' then
     result:= 'ǬΪ��';
   if s='��' then
     result:= '��Ϊ��';
   if s='��' then
     result:= '��Ϊ��';
   if s='��' then
     result:= '��Ϊ��';
   if s='��' then
     result:= '��Ϊ��';
   if s='��' then
     result:= '��Ϊˮ';
   if s='��' then
     result:= '��Ϊɽ';
   if s='��' then
     result:= '��Ϊ��';
end;
function guaming_dao_shuzi(s: string): string;
var
  I,k: Integer;
   ss: string;
  j: Integer;
begin
  s:= trim(s);
  s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, 'ˮ', '', [rfReplaceAll]);
   s:= StringReplace(s, 'ɽ', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, 'Ϊ', '', [rfReplaceAll]);
   s:= StringReplace(s, '  ', ' ', [rfReplaceAll]);
   s:= StringReplace(s, '  ', ' ', [rfReplaceAll]);
   if pos('֮',s)<=0 then
     s:= StringReplace(s, ' ', '֮', [rfReplaceAll]);

   s:= StringReplace(s, ' ', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '֮', [rfReplaceAll]);
   s:= StringReplace(s, '֮', ' ֮ ', [rfReplaceAll]);
     ��ȫ����(s);  //����ͳһΪ xxx֮xxx��ʽ
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

function ��ȫ����(var s8: string): boolean;
begin
       result:= false;
       if pos('Ǭ',s8)>0 then
        begin
          s8:= StringReplace(s8,'Ǭ','ǬΪ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','�����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','�������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��׳',s8)>0 then
        begin
          s8:= StringReplace(s8,'��׳','�����׳',[rfReplaceAll]);
          result:= true;
        end;
       if pos('С��',s8)>0 then
        begin
          s8:= StringReplace(s8,'С��','����С��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ˮ����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','ɽ�����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('̩',s8)>0 then
        begin
          s8:= StringReplace(s8,'̩','����̩',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('�',s8)>0 then
        begin
          s8:= StringReplace(s8,'�','�����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','�������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','��������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ˮ���',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ɽ����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('ͬ��',s8)>0 then
        begin
          s8:= StringReplace(s8,'ͬ��','���ͬ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','�׻��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('�ȼ�',s8)>0 then
        begin
          s8:= StringReplace(s8,'�ȼ�','ˮ��ȼ�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ɽ����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','�ػ�����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('����',s8)>0 then
        begin
          s8:= StringReplace(s8,'����','��������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('���',s8)>0 then
        begin
          s8:= StringReplace(s8,'���','�������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','������',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ˮ����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ɽ����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','���׸�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��犥',[rfReplaceAll]);
          result:= true;
        end;
       if pos('���',s8)>0 then
        begin
          s8:= StringReplace(s8,'���','�����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��綦',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','�׷��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ˮ�羮',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ɽ���',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','�ط���',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ˮ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ˮ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('δ��',s8)>0 then
        begin
          s8:= StringReplace(s8,'δ��','��ˮδ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ˮ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ˮ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊˮ',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ɽˮ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('ʦ',s8)>0 then
        begin
          s8:= StringReplace(s8,'ʦ','��ˮʦ',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ɽ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ɽ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ɽ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('С��',s8)>0 then
        begin
          s8:= StringReplace(s8,'С��','��ɽС��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ɽ��',[rfReplaceAll]);
          result:= true;
        end;
       if pos('�',s8)>0 then
        begin
          s8:= StringReplace(s8,'�','ˮɽ�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊɽ',[rfReplaceAll]);
          result:= true;
        end;
       if pos('ǫ',s8)>0 then
        begin
          s8:= StringReplace(s8,'ǫ','��ɽǫ',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ط�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','�����',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ؽ�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('ԥ',s8)>0 then
        begin
          s8:= StringReplace(s8,'ԥ','�׵�ԥ',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��ع�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ˮ�ر�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','ɽ�ذ�',[rfReplaceAll]);
          result:= true;
        end;
       if pos('��',s8)>0 then
        begin
          s8:= StringReplace(s8,'��','��Ϊ��',[rfReplaceAll]);
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
  a(s);   //ȡ������
  a(x);    //ȡ������

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

      result:= result+'֮'+ get_guaming(strtoint(ss));
end;

function get_guaming_quan(s: string): string; //������
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
   result:= result+' ֮ '+ get_guaming(strtoint(b));
end;

function get_guaming(const s: integer): string;
begin
result:= '';

if s=111111 then begin result:= 'ǬΪ��'; exit; end;
if s=111112 then begin result:= '��犥'; exit; end;
if s=111121 then begin result:= '���ͬ��'; exit; end;
if s=111122 then begin result:= '��ɽ��'; exit; end;
if s=111211 then begin result:= '������'; exit; end;
if s=111212 then begin result:= '��ˮ��'; exit; end;
if s=111221 then begin result:= '��������'; exit; end;
if s=111222 then begin result:= '��ط�'; exit; end;
if s=112111 then begin result:= '����С��'; exit; end;
if s=112112 then begin result:= '��Ϊ��'; exit; end;
if s=112121 then begin result:= '������'; exit; end;
if s=112122 then begin result:= '��ɽ��'; exit; end;
if s=112211 then begin result:= '��������'; exit; end;
if s=112212 then begin result:= '��ˮ��'; exit; end;
if s=112221 then begin result:= '������'; exit; end;
if s=112222 then begin result:= '��ع�'; exit; end;
if s=121111 then begin result:= '�������'; exit; end;
if s=121112 then begin result:= '��綦'; exit; end;
if s=121121 then begin result:= '��Ϊ��'; exit; end;
if s=121122 then begin result:= '��ɽ��'; exit; end;
if s=121211 then begin result:= '�����'; exit; end;
if s=121212 then begin result:= '��ˮδ��'; exit; end;
if s=121221 then begin result:= '�������'; exit; end;
if s=121222 then begin result:= '��ؽ�'; exit; end;
if s=122111 then begin result:= 'ɽ�����'; exit; end;
if s=122112 then begin result:= 'ɽ���'; exit; end;
if s=122121 then begin result:= 'ɽ����'; exit; end;
if s=122122 then begin result:= '��Ϊɽ'; exit; end;
if s=122211 then begin result:= 'ɽ����'; exit; end;
if s=122212 then begin result:= 'ɽˮ��'; exit; end;
if s=122221 then begin result:= 'ɽ����'; exit; end;
if s=122222 then begin result:= 'ɽ�ذ�'; exit; end;
if s=211111 then begin result:= '�����'; exit; end;
if s=211112 then begin result:= '�����'; exit; end;
if s=211121 then begin result:= '����'; exit; end;
if s=211122 then begin result:= '��ɽ��'; exit; end;
if s=211211 then begin result:= '��Ϊ��'; exit; end;
if s=211212 then begin result:= '��ˮ��'; exit; end;
if s=211221 then begin result:= '������'; exit; end;
if s=211222 then begin result:= '�����'; exit; end;
if s=212111 then begin result:= 'ˮ����'; exit; end;
if s=212112 then begin result:= 'ˮ�羮'; exit; end;
if s=212121 then begin result:= 'ˮ��ȼ�'; exit; end;
if s=212122 then begin result:= 'ˮɽ�'; exit; end;
if s=212211 then begin result:= 'ˮ���'; exit; end;
if s=212212 then begin result:= '��Ϊˮ'; exit; end;
if s=212221 then begin result:= 'ˮ����'; exit; end;
if s=212222 then begin result:= 'ˮ�ر�'; exit; end;
if s=221111 then begin result:= '�����׳'; exit; end;
if s=221112 then begin result:= '�׷��'; exit; end;
if s=221121 then begin result:= '�׻��'; exit; end;
if s=221122 then begin result:= '��ɽС��'; exit; end;
if s=221211 then begin result:= '�������'; exit; end;
if s=221212 then begin result:= '��ˮ��'; exit; end;
if s=221221 then begin result:= '��Ϊ��'; exit; end;
if s=221222 then begin result:= '�׵�ԥ'; exit; end;
if s=222111 then begin result:= '����̩'; exit; end;
if s=222112 then begin result:= '�ط���'; exit; end;
if s=222121 then begin result:= '�ػ�����'; exit; end;
if s=222122 then begin result:= '��ɽǫ'; exit; end;
if s=222211 then begin result:= '������'; exit; end;
if s=222212 then begin result:= '��ˮʦ'; exit; end;
if s=222221 then begin result:= '���׸�'; exit; end;
if s=222222 then  result:= '��Ϊ��';

end;

function get_najia_zhangshan(const s: string): string;
begin
 result:= '  ';
     if (s='��ɽ��') then begin result:=   '��ĸδ�� 2 Ӧ �ٹ��Ȼ� 1 �޲�îľ 1 ��ĸ���� 1 �� ������ˮ 2 �޲���ľ 2'; exit; end;
     if (s='��Ϊ��') then begin result:=   '����δ�� 2 �� �ֵ��Ȼ� 1 ��ĸîľ 1 ������� 2 Ӧ �ٹ�ˮ 1 �޲��Ͻ� 1'; exit; end;
     if (s='��ˮ��') then begin result:=   '����δ�� 2 �ֵ��Ȼ� 1 ��ĸîľ 1 Ӧ �޲���� 2 �������� 1 �ٹ���ˮ 2 ��'; exit; end;
     if (s='�����') then begin result:=   '�޲�δ�� 2 �����Ȼ� 1 Ӧ �ֵ�îľ 1 ��ĸ��ˮ 2 �ٹ��Ͻ� 2 �� �޲�δ�� 2'; exit; end;
     if (s='ˮɽ�') then begin result:=   '�ֵ���ľ 2 �޲Ƴ��� 1 ������� 2 �� �޲����� 1 ��ĸ��ˮ 2 �ֵ���ľ 2 Ӧ'; exit; end;
     if (s='��ɽС��') then begin result:=   '�ٹ��Ȼ� 2 ��ĸδ�� 2 �ֵ��Ͻ� 1 �� ��ĸ���� 1 ������ˮ 2 �޲���ľ 2 Ӧ'; exit; end;
     if (s='�������') then begin result:=   '�޲��Ȼ� 2 Ӧ �ٹ�δ�� 2 ��ĸ�Ͻ� 1 �ٹ���� 2 �� �ֵܺ�ˮ 1 ��ĸ�Ͻ� 1'; exit; end;
     if (s='��ɽǫ')  then begin result:=    '�ٹ��Ȼ� 2 �޲�îľ 2 �� ��ĸ���� 2 ��ĸ���� 1 ������ˮ 2 Ӧ �޲���ľ 2'; exit; end;


      if (s='������') then begin result:=  '�ٹ���ˮ 1 ��ĸ��ľ 1 �� ���ﳽ�� 1 ������� 2 �ٹ�ˮ 1 Ӧ �޲��Ͻ� 1'; exit; end;
     if (s='��ɽ��') then begin result:=   '�޲�îľ 1 Ӧ ��ĸ���� 1 ���ﺥˮ 2 ��ĸ���� 1 �� ������ˮ 2 �޲���ľ 2'; exit; end;
     if (s='��������') then begin result:= '��ĸîľ 1 ������� 1 �ٹ�ˮ 2 �� ������� 2 �ٹ�ˮ 1 �޲��Ͻ� 1 Ӧ'; exit; end;
     if (s='�����') then begin result:=   '�����Ȼ� 1 �ֵ�îľ 2 �޲Ƴ��� 1 �� �޲Ƴ��� 2 ��ĸ��ˮ 1 �ٹ��Ͻ� 1 Ӧ'; exit; end;
     if (s='ɽ�����') then begin result:= '�ٹ��� 1 �޲���� 2 Ӧ ��ĸ��� 2 �޲���� 1 ��ĸ��� �� �ٹ����� 1'; exit; end;
     if (s='ɽ����') then begin result:=   '��ĸ���� 1 �ٹ���� 2 �ֵ���� 2 Ӧ ���ﺥˮ 1 �ֵ��Ͻ� 2 ��ĸδ�� 1 ��'; exit; end;
     if (s='��Ϊɽ') then begin result:=   '�ֵܳ��� 1 �� ��ĸ��� 2 ������� 2 �ֵ����� 1 Ӧ �޲���ˮ 2 �ٹ���ľ 2'; exit; end;
     if (s='ɽ����') then begin result:=   '�ٹ��� 1 Ӧ �޲���� 2 ��ĸ��� 2 �ٹ���� 2 �� �ֵܺ�ˮ 1 ��ĸ�Ͻ� 1'; exit; end;


    if (s='����') then begin result:=    '��ĸδ�� 2 �ٹ��Ȼ� 1 �޲�îľ 1 �� ���ﺥˮ 1 �ֵ��Ͻ� 2 ��ĸδ�� 1 Ӧ'; exit; end;
     if (s='ˮ��ȼ�') then begin result:= '��ĸ��ľ 2 Ӧ ���ﳽ�� 1 �ֵ���� 2 �ٹ�ˮ 1 �� �޲��Ͻ� 2 ����δ�� 1'; exit; end;
     if (s='ˮ���') then begin result:=   '��ĸ��ľ 2 ���ﳽ�� 1 �ֵ���� 2 Ӧ ������� 2 �ٹ�ˮ 1 �޲��Ͻ� 1 ��'; exit; end;
     if (s='��Ϊˮ') then begin result:=   '��ĸ��ľ 2 �� ���ﳽ�� 1 �ֵ���� 2 �޲���� 2 Ӧ �������� 1 �ٹ���ˮ 2'; exit; end;
    if  (s='ˮ����') then begin result:=   '��ĸ��ľ 2 ���ﳽ�� 1 Ӧ �ֵ���� 2 �ٹ�ˮ 2 ������� 2 �� ��ĸîľ 1'; exit; end;
     if (s='�׻��') then begin result:=   '�޲��Ȼ� 2 �ٹ�δ�� 2 �� ��ĸ�Ͻ� 1 �ֵܺ�ˮ 1 ��ĸ�Ͻ� 2 Ӧ �ٹ�δ�� 1'; exit; end;
     if (s='�ػ�����') then begin result:= '�޲��Ȼ� 2 ����îľ 2 �ٹ���� 2 �� �ֵܺ�ˮ 1 ��ĸ�Ͻ� 2 �ٹ�δ�� 1 Ӧ'; exit; end;
     if (s='��ˮʦ') then begin result:=   '�޲��Ȼ� 2 Ӧ ����îľ 2 �ٹ���� 2 ��ĸ��� 2 �� �ֵ����� 1 �ٹ���ˮ 2'; exit; end;


      if (s='�����') then begin result:=  '�ֵ�δ�� 2 ��ĸ�Ȼ� 1 �� �ٹ�îľ 1 ��ĸ��� 1 ������� 1 Ӧ �ֵ����� 1'; exit; end;
     if (s='ˮ����') then begin result:=   '�ֵ���ľ 2 �޲Ƴ��� 1 ������� 2 �� ������� 1 �ٹ���� 1 �޲����� 1 Ӧ'; exit; end;
     if (s='ˮ�ر�') then begin result:=   '�ֵ���ľ 2 Ӧ �޲Ƴ��� 1 ������� 2 ��ĸ��ˮ 2 �� �ٹ��Ͻ� 2 �޲�δ�� 2'; exit; end;
     if (s='�����׳') then begin result:= '�ٹ��Ȼ� 2 ��ĸδ�� 2 �ֵ��Ͻ� 1 �� �ٹ���� 1 �ֵ���� 1 ��ĸ���� 1 Ӧ'; exit; end;
     if (s='����̩') then begin result:=   '�����Ȼ� 2 Ӧ �ֵ�îľ 2 �޲Ƴ��� 2 ������� 1 �� �ٹ���� 1 �޲����� 1'; exit; end;
     if (s='������') then begin result:=   '�����Ȼ� 2 �ֵ�îľ 2 Ӧ �޲Ƴ��� 2 �޲Ƴ��� 2 ��ĸ��ˮ 1 �� �ٹ��Ͻ� 1'; exit; end;
     if (s='���׸�') then begin result:=   '�����Ȼ� 2 �ֵ�îľ 2 �޲Ƴ��� 2 Ӧ ��ĸ��ˮ 2 �޲Ƴ��� 2 �ֵ�îľ 1 ��'; exit; end;
     if (s='��Ϊ��') then begin result:=   '��ĸ�Ȼ� 2 �� �ٹ�îľ 2 �ֵܳ��� 2 �޲ƺ�ˮ 2 Ӧ �����Ͻ� 2 �ֵ�δ�� 2'; exit; end;


      if (s='���ͬ��') then begin result:='�ٹ���ˮ 1 Ӧ ��ĸ��ľ 1 ���ﳽ�� 1 �ٹ�ˮ 1 �� �޲��Ͻ� 2 ����δ�� 1'; exit; end;
     if (s='��ˮ��') then begin result:=   '�޲���ˮ 1 �ٹ���ľ 1 �ֵܳ��� 1 �� ������� 2 �ֵ����� 1 �޲���ˮ 2 Ӧ'; exit; end;
     if (s='��ˮ��') then begin result:=   '�ֵ�îľ 1 �޲Ƴ��� 1 �� ��ĸ��ˮ 2 �ٹ���� 2 �޲����� 1 Ӧ ��ĸ��ˮ 2'; exit; end;
     if (s='��綦') then begin result:=   '�ٹ��Ȼ� 1 �޲�îľ 2 Ӧ ��ĸ���� 1 �ֵ��Ͻ� 1 ��ĸδ�� 1 �� �ٹ��Ȼ� 2'; exit; end;
     if (s='��Ϊ��') then begin result:=   '�ٹ��Ȼ� 1 �� �޲�îľ 2 ��ĸ���� 1 ���ﺥˮ 1 Ӧ �ֵ��Ͻ� 2 ��ĸδ�� 1'; exit; end;
     if (s='��ɽ��') then begin result:=   '��ĸ�Ȼ� 1 �ٹ�îľ 2 �ֵܳ��� Ӧ �ֵ����� 1 �޲���ˮ 2 �ٹ���ľ 2 ��'; exit; end;
     if (s='��ˮδ��') then begin result:= '�޲��Ȼ� 1 Ӧ ����îľ 2 �ٹ���� 1 ��ĸ��� 2 �� �ٹ����� 1 �ֵ���ˮ 2'; exit; end;
    if  (s='ɽˮ��') then begin result:=   '�ٹ��� 1 �޲���� 2 ��ĸ��� 2 �� ��ĸ��� 2 �ٹ����� 1 �ֵ���ˮ 2 Ӧ'; exit; end;


      if (s='ǬΪ��') then begin result:=  '������ˮ 1 �� �޲���ľ 1 ��ĸ���� 1 �ٹ���� 1 Ӧ �ֵ���� 1 ��ĸ���� 1'; exit; end;
     if (s='��犥') then begin result:=   '�ֵ���ˮ 1 ������ľ 1 �ٹ��� 1 Ӧ ��ĸ�Ͻ� 1 �ٹ�δ�� 1 �޲��Ȼ� 2 ��'; exit; end;
     if (s='��ɽ��') then begin result:=   '�ٹ���ˮ 1 ��ĸ��ľ 1 Ӧ ���ﳽ�� 1 �������� 1 �ٹ���ˮ 2 �� ��ĸ��ľ 2'; exit; end;
     if (s='��ط�') then begin result:=   '��ĸ��ˮ 1 Ӧ �ֵ���ľ 1 �޲Ƴ��� 1 ��ĸ��ˮ 2 �� �ٹ��Ͻ� 2 �޲�δ�� 2'; exit; end;
     if (s='��ع�') then begin result:=   '��ĸîľ 1 ������� 1 �ٹ�ˮ 2 �� �ٹ�ˮ 2 �޲��Ͻ� 2 ����δ�� 2 Ӧ'; exit; end;
     if (s='�������') then begin result:= '�����Ȼ� 1 Ӧ �ֵ�îľ 2 �޲Ƴ��� 1 ������� 1 �� �ٹ���� 1 �޲����� 1'; exit; end;
     if (s='��ؽ�') then begin result:=   '�����Ȼ� 1 �ֵ�îľ 2 �޲Ƴ��� 1 �� ��ĸ��ˮ 2 �ٹ��Ͻ� 2 �޲�δ�� 2 Ӧ'; exit; end;
     if (s='ɽ�ذ�') then begin result:=   '�޲Ƴ��� 1 ������� 2 �� �ٹ���� 2 ��ĸ��ˮ 2 �ٹ��Ͻ� 2 Ӧ �޲�δ�� 2'; exit; end;


      if (s='��������') then begin result:= '�޲���ˮ 1 �ٹ���ľ 1 �ֵܳ��� 1 �� �޲ƺ�ˮ 2 �ֵܳ��� 2 �ٹ�îľ 1 Ӧ'; exit; end;
     if (s='����С��') then begin result:=  '�޲�îľ 1 ��ĸ���� 1 ���ﺥˮ 2 Ӧ �ٹ���� 1 �ֵ���� 1 ��ĸ���� 1 ��'; exit; end;
     if (s='��Ϊ��') then begin result:=    '����îľ 1 �� �ٹ���� 1 �ֵܺ�ˮ 2 ��ĸ�Ͻ� 1 Ӧ �ٹ�δ�� 1 �޲��Ȼ� 2'; exit; end;
     if (s='������') then begin result:=  '�ٹ�îľ 1 �ֵܳ��� 1 Ӧ �޲ƺ�ˮ 2 �޲ƺ�ˮ 1 �����Ͻ� 2 �� �ֵ�δ�� 1'; exit; end;
     if (s='������') then begin result:=    '�ٹ�îľ 1 Ӧ �ֵܳ��� 1 �޲ƺ�ˮ 2 �޲ƺ�ˮ 2 �� �ֵܳ��� 2 �ٹ�îľ 1'; exit; end;
     if (s='�������') then begin result:=  '�޲��Ȼ� 1 ����îľ 2 �� �ܹ����� 1 �ֵܺ�ˮ 2 �ٹ���� 2 Ӧ ����îľ 1'; exit; end;
     if (s='ɽ���') then begin result:=    '�ֵܳ��� 1 Ӧ ��ĸ��� 2 ������� 2 �����Ͻ� 1 �� �ֵ�δ�� 1 ��ĸ�Ȼ� 2'; exit; end;
     if (s='ɽ����') then begin result:=    '�ٹ��� 1 �޲���� 2 ��ĸ��� 2 �� �ֵܺ�ˮ 2 �ٹ���� 2 ����îľ 1 Ӧ'; exit; end;

      if (s='�����') then begin result:='��ĸδ�� 2 �ٹ��Ȼ� 1 �޲�îľ 1 �� �ֵ��Ͻ� 1 ��ĸδ�� 1 �ٹ��Ȼ� 2 Ӧ'; exit; end;
     if (s='������') then begin result:=   '�ֵ�δ�� 2 Ӧ ��ĸ�Ȼ� 1 �ٹ�îľ 1 �޲ƺ�ˮ 2 �� �ֵܳ��� 2 �ٹ�îľ 1'; exit; end;
     if (s='ˮ�羮') then begin result:=   '�ٹ���ľ 2 �ֵܳ��� 1 �� ��ĸ��� 2 �����Ͻ� 1 �ֵ�δ�� 1 Ӧ ��ĸ�Ȼ� 2'; exit; end;
     if (s='�׷��') then begin result:=   '��ĸ�Ȼ� 2 Ӧ �ֵ�δ�� 2 �����Ͻ� 1 �����Ͻ� 1 �� �ֵ�δ�� 1 ��ĸ�Ȼ� 2'; exit; end;
     if (s='��ˮ��') then begin result:=   '�ٹ��Ȼ� 2 ��ĸδ�� 2 Ӧ �ֵ��Ͻ� 1 �ֵ���� 2 ��ĸ���� 1 �� ������ˮ 2'; exit; end;
     if (s='��Ϊ��') then begin result:=   '�����Ȼ� 2 �� �޲�δ�� 2 �ٹ��Ͻ� 1 ��ĸ��ˮ 2 Ӧ �޲Ƴ��� 2 �ֵ�îľ 1'; exit; end;
     if (s='�׵�ԥ') then begin result:=   '��ĸ�Ȼ� 2 �ֵ�δ�� 2 �����Ͻ� 1 Ӧ �޲ƺ�ˮ 2 �����Ͻ� 2 �ֵ�δ�� 2 ��'; exit; end;
     if (s='�ط���') then begin result:=   '�޲��Ȼ� 2 ����îľ 2 �ٹ���� 2 �� ��ĸ�Ͻ� 1 �ٹ�δ�� 1 �޲��Ȼ� 2 Ӧ'; exit; end;

end;

function get_najia(const s: string): string;
begin
 result:= '  ';
     if (s='��ɽ��') then begin result:=   '��ĸδ�� 2 Ӧ �ֵ��Ͻ� 1 ���ﺥˮ 1 �ֵ���� 1 �� �ٹ���� 2 ��ĸ���� 2'; exit; end;
     if (s='��Ϊ��') then begin result:=   '��ĸδ�� 2 �� �ֵ��Ͻ� 1 ���ﺥˮ 1 ��ĸ���� 2 Ӧ �޲�îľ 1 �ٹ��Ȼ� 1'; exit; end;
     if (s='��ˮ��') then begin result:=   '��ĸδ�� 2 �ֵ��Ͻ� 1 ���ﺥˮ 1 Ӧ �ٹ���� 2 ��ĸ���� 1 �޲���ľ 2 ��'; exit; end;
     if (s='�����') then begin result:=   '��ĸδ�� 2 �ֵ��Ͻ� 1 Ӧ ���ﺥˮ 1 �޲�îľ 2 �ٹ��Ȼ� 2 �� ��ĸδ�� 2'; exit; end;
     if (s='ˮɽ�') then begin result:=   '������ˮ 2 ��ĸ���� 1 �ֵ���� 2 �� �ֵ���� 1 �ٹ���� 2 ��ĸ���� 2 Ӧ'; exit; end;
     if (s='��ɽС��') then begin result:=   '��ĸ���� 2 �ֵ���� 2 �ٹ���� 1 �� �ֵ���� 1 �ٹ���� 2 ��ĸ���� 2 Ӧ'; exit; end;
     if (s='�������') then begin result:=   '��ĸ���� 2 Ӧ �ֵ���� 2 �ٹ���� 1 ��ĸ���� 2 �� �޲�îľ 1 �ٹ��Ȼ� 1'; exit; end;
     if (s='��ɽǫ')  then begin result:=   '�ֵ��Ͻ� 2 ���ﺥˮ 2 �� ��ĸ���� 2 �ֵ���� 1 �ٹ���� 2 Ӧ ��ĸ���� 2'; exit; end;


      if (s='������') then begin result:=   '�ֵ����� 1 ������� 1 �� ��ĸ��� 1 �ֵܳ��� 2 �ٹ�îľ 1 Ӧ ��ĸ�Ȼ� 1'; exit; end;
     if (s='��ɽ��') then begin result:=   '�ٹ�îľ 1 Ӧ ��ĸ�Ȼ� 1 �ֵ�δ�� 2 ������� 1 �� ��ĸ��� 2 �ֵܳ��� 2'; exit; end;
     if (s='��������') then begin result:=   '�ٹ�îľ 1 ��ĸ�Ȼ� 1 �ֵ�δ�� 2 �� �ֵܳ��� 2 �ٹ�îľ 1 ��ĸ�Ȼ� 1 Ӧ'; exit; end;
     if (s='�����') then begin result:=   '��ĸ�Ȼ� 1 �ֵ�δ�� 2 �����Ͻ� 1 �� �ֵܳ��� 2 �ٹ�îľ 1 ��ĸ�Ȼ� 1 Ӧ'; exit; end;
     if (s='ɽ�����') then begin result:=   '�ٹ���ľ 1 �޲���ˮ 2 Ӧ �ֵ����� 2 �ֵܳ��� 1 �ٹ���ľ �� �޲���ˮ 1'; exit; end;
     if (s='ɽ����') then begin result:=   '�ٹ���ľ 1 �޲���ˮ 2 �ֵ����� 2 Ӧ �޲ƺ�ˮ 1 �ֵܳ��� 2 �ٹ�îľ 1 ��'; exit; end;
     if (s='��Ϊɽ') then begin result:=   '�ٹ���ľ 1 �� �޲���ˮ 2 �ֵ����� 2 ������� 1 Ӧ ��ĸ��� 2 �ֵܳ��� 2'; exit; end;
     if (s='ɽ����') then begin result:=   '�ٹ���ľ 1 Ӧ �޲���ˮ 2 �ֵ����� 2 �ֵܳ��� 2 �� �ٹ�îľ 1 ��ĸ�Ȼ� 1'; exit; end;


    if (s='����') then begin result:=   '�ٹ�δ�� 2 ��ĸ�Ͻ� 1 �ֵܺ�ˮ 1 �� �ֵܺ�ˮ 1 �ٹ���� 2 ����îľ 1 Ӧ'; exit; end;
     if (s='ˮ��ȼ�') then begin result:=   '�ֵ���ˮ 2 Ӧ �ٹ����� 1 ��ĸ��� 2 �ֵܺ�ˮ 1 �� �ٹ���� 2 ����îľ 1'; exit; end;
     if (s='ˮ���') then begin result:=   '�ֵ���ˮ 2 �ٹ����� 1 ��ĸ��� 2 Ӧ �ٹ���� 2 ����îľ 1 �޲��Ȼ� 1 ��'; exit; end;
     if (s='��Ϊˮ') then begin result:=   '�ֵ���ˮ 2 �� �ٹ����� 1 ��ĸ��� 2 �޲���� 2 Ӧ �ٹ��� 1 ������ľ 2'; exit; end;
    if  (s='ˮ����') then begin result:=   '�ֵ���ˮ 2 �ٹ����� 1 Ӧ ��ĸ��� 2 �ٹ��� 2 ������ľ 2 �� �ֵ���ˮ 1'; exit; end;
     if (s='�׻��') then begin result:=   '�ٹ����� 2 ��ĸ��� 2 �� �޲���� 1 �ֵܺ�ˮ 1 �ٹ���� 2 Ӧ ����îľ 1'; exit; end;
     if (s='�ػ�����') then begin result:=   '��ĸ�Ͻ� 2 �ֵܺ�ˮ 2 �ٹ���� 2 �� �ֵܺ�ˮ 1 �ٹ���� 2 ����îľ 1 Ӧ'; exit; end;
     if (s='��ˮʦ') then begin result:=   '��ĸ�Ͻ� 2 Ӧ �ֵܺ�ˮ 2 �ٹ���� 2 �޲���� 2 �� �ٹ��� 1 ������ľ 2'; exit; end;


      if (s='�����') then begin result:=   '�ֵ�δ�� 2 �����Ͻ� 1 �� �޲ƺ�ˮ 1 �ֵܳ��� 1 �ٹ���ľ 1 Ӧ �޲���ˮ 1'; exit; end;
     if (s='ˮ����') then begin result:=   '�޲���ˮ 2 �ֵ����� 1 ������� 2 �� �ֵܳ��� 1 �ٹ���ľ 1 �޲���ˮ 1 Ӧ'; exit; end;
     if (s='ˮ�ر�') then begin result:=   '�޲���ˮ 2 Ӧ �ֵ����� 1 ������� 2 �ٹ�îľ 2 �� ��ĸ�Ȼ� 2 �ֵ�δ�� 2'; exit; end;
     if (s='�����׳') then begin result:=   '�ֵ����� 2 ������� 2 ��ĸ��� 1 �� �ֵܳ��� 1 �ٹ���ľ 1 �޲���ˮ 1 Ӧ'; exit; end;
     if (s='����̩') then begin result:=   '�����Ͻ� 2 Ӧ �޲ƺ�ˮ 2 �ֵܳ��� 2 �ֵܳ��� 1 �� �ٹ���ľ 1 �޲���ˮ 1'; exit; end;
     if (s='������') then begin result:=   '�����Ͻ� 2 �޲ƺ�ˮ 2 Ӧ �ֵܳ��� 2 �ֵܳ��� 2 �ٹ�îľ 1 �� ��ĸ�Ȼ� 1'; exit; end;
     if (s='���׸�') then begin result:=   '�����Ͻ� 2 �޲ƺ�ˮ 2 �ֵܳ��� 2 Ӧ �ֵܳ��� 2 �ٹ���ľ 2 �޲���ˮ 1 ��'; exit; end;
     if (s='��Ϊ��') then begin result:=   '�����Ͻ� 2 �� �޲ƺ�ˮ 2 �ֵܳ��� 2 �ٹ�îľ 2 Ӧ ��ĸ�Ȼ� 2 �ֵ�δ�� 2'; exit; end;


      if (s='���ͬ��') then begin result:=   '�������� 1 Ӧ �޲���� 1 �ֵ���� 1 �ٹ�ˮ 1 �� ������� 2 ��ĸîľ 1'; exit; end;
     if (s='��ˮ��') then begin result:=   '�������� 1 �޲���� 1 �ֵ���� 1 �� �ֵ���� 2 ���ﳽ�� 1 ��ĸ��ľ 2 Ӧ'; exit; end;
     if (s='��ˮ��') then begin result:=   '��ĸîľ 1 �ֵ��Ȼ� 1 �� ����δ�� 2 �ֵ���� 2 ���ﳽ�� 1 Ӧ ��ĸ��ľ 2'; exit; end;
     if (s='��綦') then begin result:=   '�ֵ��Ȼ� 1 ����δ�� 2 Ӧ �޲��Ͻ� 1 �޲��Ͻ� 1 �ٹ�ˮ 1 �� ������� 2'; exit; end;
     if (s='��Ϊ��') then begin result:=   '�ֵ��Ȼ� 1 �� ����δ�� 2 �޲��Ͻ� 1 �ٹ�ˮ 1 Ӧ ������� 2 ��ĸîľ 1'; exit; end;
     if (s='��ɽ��') then begin result:=   '�ֵ��Ȼ� 1 ����δ�� 2 �޲��Ͻ� Ӧ �޲���� 1 �ֵ���� 2 ���ﳽ�� 2 ��'; exit; end;
     if (s='��ˮδ��') then begin result:=   '�ֵ��Ȼ� 1 Ӧ ����δ�� 2 �޲��Ͻ� 1 �ֵ���� 2 �� ���ﳽ�� 1 ��ĸ��ľ 2'; exit; end;
    if  (s='ɽˮ��') then begin result:=   '��ĸ��ľ 1 �ٹ���ˮ 2 �������� 2 �� �ֵ���� 2 ���ﳽ�� 1 ��ĸ��ľ 2 Ӧ'; exit; end;


      if (s='ǬΪ��') then begin result:=   '��ĸ���� 1 �� �ֵ���� 1 �ٹ���� 1 ��ĸ���� 1 Ӧ �޲���ľ 1 ������ˮ 1'; exit; end;
     if (s='��犥') then begin result:=   '��ĸ���� 1 �ֵ���� 1 �ٹ���� 1 Ӧ �ֵ��Ͻ� 1 ���ﺥˮ 1 ��ĸ���� 2 ��'; exit; end;
     if (s='��ɽ��') then begin result:=   '��ĸ���� 1 �ֵ���� 1 Ӧ �ٹ���� 1 �ֵ���� 1 �ٹ���� 2 �� ��ĸ���� 2'; exit; end;
     if (s='��ط�') then begin result:=   '��ĸ���� 1 Ӧ �ֵ���� 1 �ٹ���� 1 �޲�îľ 2 �� �ٹ��Ȼ� 2 ��ĸδ�� 2'; exit; end;
     if (s='��ع�') then begin result:=   '�޲�îľ 1 �ٹ��Ȼ� 1 ��ĸδ�� 2 �� �޲�îľ 2 �ٹ��Ȼ� 2 ��ĸδ�� 2 Ӧ'; exit; end;
     if (s='�������') then begin result:=   '�ٹ��Ȼ� 1 Ӧ ��ĸδ�� 2 �ֵ��Ͻ� 1 ��ĸ���� 1 �� �޲���ľ 1 ������ˮ 1'; exit; end;
     if (s='��ؽ�') then begin result:=   '�ٹ��Ȼ� 1 ��ĸδ�� 2 �ֵ��Ͻ� 1 �� �޲�îľ 2 �ٹ��Ȼ� 2 ��ĸδ�� 2 Ӧ'; exit; end;
     if (s='ɽ�ذ�') then begin result:=   '�޲���ľ 1 ������ˮ 2 �� ��ĸ���� 2 �޲�îľ 2 �ٹ��Ȼ� 2 Ӧ ��ĸδ�� 2'; exit; end;


      if (s='��������') then begin result:=   '�޲����� 1 �ٹ���� 1 ������� 1 �� �޲Ƴ��� 2 �ֵ���ľ 2 ��ĸ��ˮ 1 Ӧ'; exit; end;
     if (s='����С��') then begin result:=   '�ֵ�îľ 1 �����Ȼ� 1 �޲�δ�� 2 Ӧ �޲Ƴ��� 1 �ֵ���ľ 1 ��ĸ��ˮ 1 ��'; exit; end;
     if (s='��Ϊ��') then begin result:=   '�ֵ�îľ 1 �� �����Ȼ� 1 �޲�δ�� 2 �ٹ��Ͻ� 1 Ӧ ��ĸ��ˮ 1 �޲Ƴ��� 2'; exit; end;
     if (s='������') then begin result:=   '�ֵ�îľ 1 �����Ȼ� 1 Ӧ �޲�δ�� 2 ��ĸ��ˮ 1 �޲Ƴ��� 2 �� �ֵ�îľ 1'; exit; end;
     if (s='������') then begin result:=   '�ֵ�îľ 1 Ӧ �����Ȼ� 1 �޲�δ�� 2 �޲Ƴ��� 2 �� �ֵ���ľ 2 ��ĸ��ˮ 1'; exit; end;
     if (s='�������') then begin result:=   '�����Ȼ� 1 �޲�δ�� 2 �� �ٹ��Ͻ� 1 �޲Ƴ��� 2 �ֵ���ľ 2 Ӧ ��ĸ��ˮ 1'; exit; end;
     if (s='ɽ���') then begin result:=   '�ֵ���ľ 1 Ӧ ��ĸ��ˮ 2 �޲����� 2 �ٹ��Ͻ� 1 �� ��ĸ��ˮ 1 �޲Ƴ��� 2'; exit; end;
     if (s='ɽ����') then begin result:=   '�ֵ���ľ 1 ��ĸ��ˮ 2 �޲����� 2 �� �޲Ƴ��� 2 �ֵ���ľ 2 ��ĸ��ˮ 1 Ӧ'; exit; end;

      if (s='�����') then begin result:=   '�޲�δ�� 2 �ٹ��Ͻ� 1 ��ĸ��ˮ 1 �� �ٹ��Ͻ� 1 ��ĸ��ˮ 1 �޲Ƴ��� 2 Ӧ'; exit; end;
     if (s='������') then begin result:=   '�޲�δ�� 2 Ӧ �ٹ��Ͻ� 1 ��ĸ��ˮ 1 �޲Ƴ��� 2 �� �ֵ���ľ 2 ��ĸ��ˮ 1'; exit; end;
     if (s='ˮ�羮') then begin result:=   '��ĸ��ˮ 2 �޲����� 1 �� �ٹ���� 2 �ٹ��Ͻ� 1 ��ĸ��ˮ 1 Ӧ �޲Ƴ��� 2'; exit; end;
     if (s='�׷��') then begin result:=   '�޲����� 2 Ӧ �ٹ���� 2 ������� 1 �ٹ��Ͻ� 1 �� ��ĸ��ˮ 1 �޲Ƴ��� 2'; exit; end;
     if (s='��ˮ��') then begin result:=   '�޲����� 2 �ٹ���� 2 Ӧ ������� 1 ������� 2 �޲Ƴ��� 1 �� �ֵ���ľ 2'; exit; end;
     if (s='��Ϊ��') then begin result:=   '�޲����� 2 �� �ٹ���� 2 ������� 1 �޲Ƴ��� 2 Ӧ �ֵ���ľ 2 ��ĸ��ˮ 1'; exit; end;
     if (s='�׵�ԥ') then begin result:=   '�޲����� 2 �ٹ���� 2 ������� 1 Ӧ �ֵ�îľ 2 �����Ȼ� 2 �޲�δ�� 2 ��'; exit; end;
     if (s='�ط���') then begin result:=   '�ٹ��Ͻ� 2 ��ĸ��ˮ 2 �޲Ƴ��� 2 �� �ٹ��Ͻ� 1 ��ĸ��ˮ 1 �޲Ƴ��� 2 Ӧ'; exit; end;

end;

function get_tiangan_by_gua(const m: string): string;
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

function get_guagong(const s: string): string;
begin
    if (s='��ɽ��') or
     (s='��Ϊ��') or
     (s='��ˮ��') or
     (s='�����') or
     (s='ˮɽ�') or
     (s='��ɽС��') or
     (s='�������') or
     (s='��ɽǫ')
     then begin
     result:= '(�ҹ�)';
      exit;
      end;

      if (s='������') or
     (s='��ɽ��') or
     (s='��������') or
     (s='�����') or
     (s='ɽ�����') or
     (s='ɽ����') or
     (s='��Ϊɽ') or
     (s='ɽ����')
     then begin
     result:= '(�޹�)';
      exit;
      end;

    if (s='����') or
     (s='ˮ��ȼ�') or
     (s='ˮ���') or
     (s='��Ϊˮ') or
     (s='ˮ����') or
     (s='�׻��') or
     (s='�ػ�����') or
     (s='��ˮʦ')
     then begin
     result:= '(����)';
      exit;
      end;

      if (s='�����') or
     (s='ˮ����') or
     (s='ˮ�ر�') or
     (s='�����׳') or
     (s='����̩') or
     (s='������') or
     (s='���׸�') or
     (s='��Ϊ��')
     then begin
     result:= '(����)';
      exit;
      end;

      if (s='���ͬ��') or
     (s='��ˮ��') or
     (s='��ˮ��') or
     (s='��綦') or
     (s='��Ϊ��') or
     (s='��ɽ��') or
     (s='��ˮδ��') or
     (s='ɽˮ��')
     then begin
     result:= '(�빬)';
      exit;
      end;

      if (s='ǬΪ��') or
     (s='��犥') or
     (s='��ɽ��') or
     (s='��ط�') or
     (s='��ع�') or
     (s='�������') or
     (s='��ؽ�') or
     (s='ɽ�ذ�')
     then begin
     result:= '(Ǭ��)';
      exit;
      end;

      if (s='��������') or
     (s='����С��') or
     (s='��Ϊ��') or
     (s='������') or
     (s='������') or
     (s='�������') or
     (s='ɽ���') or
     (s='ɽ����')
     then begin
     result:= '(�㹬)';
      exit;
      end;

      if (s='�����') or
     (s='������') or
     (s='ˮ�羮') or
     (s='�׷��') or
     (s='��ˮ��') or
     (s='��Ϊ��') or
     (s='�׵�ԥ') or
     (s='�ط���')
     then begin
     result:= '(��)';
      end;
end;

function qian(const s: string): string;
begin
 result:= '';
if s='Ǭ' then
begin
  result:='����ʯ�棬�����������믊������Īʹ��ͨ�����˲��У������޹���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='������󧣬���Ұ�����������㣬���ð�Ϣ��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���¿����������޻󡣳�����������ǻ̡��˵���Ը��������ӡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���q�\𣚣רһ���ȡ��������򣬳��ܼθ���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='Ŀ�p�㶯��ϲ����Ը���ټ��ɳ衣';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='������ɽ������ˮȪ�������ɣ��಻���ԡ�';
  exit;
end;
if s='Ǭ֮ʦ' then
begin
  result:='��ӯ���ڣ�������𢡣������죬���˰�Ϣ��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='��ҹȮ�ͣ�����ǽ�⡣������������ɢ��ȥ��';
  exit;
end;
if s='Ǭ֮С��' then
begin
  result:='�ݶ����࣬˳�����ǡ����ֲ��ӡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='��ȭ���֣����ظ��𡣸��ķ��ܣ��������ѡ�';
  exit;
end;
if s='Ǭ̩֮' then
begin
  result:='���粻�꣬�����𨡣�˳����ۣ�ͨ�������';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���վ��⣬���������»�����죬��Ϊ������';
  exit;
end;
if s='Ǭ֮ͬ��' then
begin
  result:='�Ӻ�������ĸ����ʳ�������ճ������ҳ�Ϣ��';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='�ϵ�֮���������ճɡ��޵��лݣ����Ұ�����';
  exit;
end;
if s='Ǭ֮ǫ' then
begin
  result:='ɽ���ѵǣ����ж�ʯ�������E�����������ᡣ�������٣����b���㡣';
  exit;
end;
if s='Ǭ֮ԥ' then
begin
  result:='�������ţ�ͨ��ˮԴ����ע�׺�����ð��档';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�������죬����Ϊ����ӻԾ���У��ι۲׺���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='������ӣ��ݵ²�������ɽ�ɰأ����ܼθ���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='��ɽ�F�죬�������������޹�������Ϊ��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���ӻ�������֮�¸����������ۣ��������С����Ҿ��ӡ�';
  exit;
end;
if s='Ǭ֮���' then
begin
  result:='����������ձ��š���������������޼��������Ϊ�����ǡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�������࣬��Σ�Ҵ������֮ʿ����ɽ�ȴ���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�����·����ȳ��������������Σ������������ʹ���������ڡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����Ϊ�ã���鱱�����������ã�������ĸ�������Ҿơ�';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='�������󣬷Ǹɾ�·�������������֪������';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='�������ƣ����𱼳ۡ����ղ�ʳ��������ƣ��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�������ѣ��������ˡ�����ï�������¹��ʡ�';
  exit;
end;
if s='Ǭ֮���' then
begin
  result:='���Ų����������Ϳࡣӵ��������ս����³��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�����������ȼ޲������Ҹ��֣�˼�������';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='̥�����飬��Ϣ�ɾ͡��������ң��ҹ�������';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�������٣����õ�Ѩ��Ů���Ը����ƽ���ס�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='��ɽ��������Ͼ�ʳ���ټ��ʹӣ��Գɶ�����';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�����޾࣬��ȵ����������Ŀä��Ϊ����ˡ�';
  exit;
end;
if s='Ǭ֮��׳' then
begin
  result:='϶��ǽ�����C��ľ�ۡ��ǻ�Ϊ�����콵�﷣����߱���ģ������ԱС�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���վ��ߣ���·ʧ������֪�飬���뻼�ڡ�';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='��ʸ���ţ��ѵ����ҡ��跢����������������';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='��Ů����ź�ɽ�磬�������أ���˼��̾��';
  exit;
end;
if s='Ǭ֮�' then
begin
  result:='�������ף��˺��̹ȡ������ʳ������̾Ϣ��';
  exit;
end;
if s='Ǭ֮�' then
begin
  result:='�������򣬲������������滢®������ʧ�ᡣ';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����ڤ�ת��ڴ�󡣹������ᣬ˭֪�Դ���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�������磬����żʳ�������鸣���԰����ҡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='������꣬��Ƹ���롣����˵�����ż����¡�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����֮�棬ʧ������������޼���������ޡ������Ľ�������������';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����������������ᡣ��ʱ˳�ڣ����䴦��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����������������ӡ���⬼�ȵ�����Ҿܸ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����Σ������ټ������ҿ��������Բ�����';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�g�g���ԣ�Ī����ԫ����ϲ��̣����Գ�����';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�����ɽ����Ӧ��Ԩ����Ů�ž������ﻯ���������Գɣ�Ϊ�ܿ�ͥ��';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='������P�������Ͱա��۷��㲣��uʱ���顣';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����뾸����������š��м�����������Ϊ����';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���}�زͣ��ӷ���١�ʧ�߰�®��������ӡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���ӳǶ񣬼�����������������������ۮ�������ӷ���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='����������ˮΪ���ˣ��ұ��������������ӡ�';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='�������������ⲻͬ��������';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='̫΢���ң��Ƶ���ֵ���������������ɵ��룬�����޻���';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�����������������������ʳ���ܸ����';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���ŷ��Ϊ��ΪԹ��������̣������ֶˡ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='�o�����ˣ����²��죬����������';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���p���棬��ĺţ�ա���ٺ��ã�ʧ�����ơ�';
  exit;
end;
if s='Ǭ֮��' then
begin
  result:='���ǲ�򪣬λ�����䡣��»�ó����𶯰�����';
  exit;
end;
if s='Ǭ֮����' then
begin
  result:='˴������ʯ��֮Ұ��������ͥ������ˮ����';
  exit;
end;
if s='Ǭ֮С��' then
begin
  result:='�ӷ�Ż�ݶ֥�����������������������ˡ�';
  exit;
end;
if s='Ǭ֮�ȼ�' then
begin
  result:='�F����ɽ��������ࡣ���°��ѣ����ȶ������������£�����Ī����';
  exit;
end;
if s='Ǭ֮δ��' then
begin
  result:='�����ǣ����⼺�ǡ����ḣ�ӣ����Ҽ�ϲ��';

end;

end;

function kun(const s: string): string;
begin
 result:= '';

 if s='��' then
begin
  result:='���粻�꣬�����𨣬�˳����ۣ�ͨ�������';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�ȷ粼�������������������������Ҷïʢ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ʯ�ഥ���������ǣ��ҼҲ��㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ������Ƽҡ��к�𲶾��Ϊ�����֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='˪���ջ����ݳ��������������£�����Ϊ�顣';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���ң������ܸ����������ڣ��׶���';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�ʱݾ��أ������ɵǡ�ν��Ǹߣ�δ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�׵����񣬳����Ĺȡ�������ľ�����������Թ��չ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='������܋���ŵ����С��������У�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������ݲ������游�Ϳ࣬����ɿڣ�������С�';
  exit;
end;
if s='��̩֮' then
begin
  result:='��������������Ϣ��ս��ƽ½��Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������������Ρ�������Կ������޳���';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='������Ů���������»��ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='Ǩ�Ӷ��ˣ�ʹ�²�ͨ���׻�Ϊ�꣬�̼ڴ��ˡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���亲������򱱡������Ĺ�����˴��á�������֣����޵�����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='Ǧ�����񣬼᲻�ɵá����ҽ������ռ�Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ǹ�Ŀ���������¡������������ͳ�ҹ�ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˵£���ŭ������ն�����磬ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����໢��ս����ŭ����Ȱ��ߣ�������ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϲ����¹����������ͽ��£������츣��';
  exit;
end;
if s='��֮���' then
begin
  result:='�ΪҢʹ��������ĸ������ٸ�������ϲ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ȥ�������Ի�һ�����ģ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��P��������檡��Ӳ������˶����ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ڹ����𣬷�����֡�������ͷ���꾪��ȥ�������Ծӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ӿ�Զ������ΪĿ���������弧��ʹ�����ǡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ᷨ�飬������̨�������������������֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������³��ʱ�����롣��̿���ң��ʵ�������';
  exit;
end;
if s='��֮���' then
begin
  result:='���ͺ�꣬Ϊ�����������У�����Զ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�붫��¬�������嶼���������ã�ý��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��³���ԣ�ս�����š���Թ����������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���������ũ�˷᳨�����ӳ����������޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ӯ���ڣ�������𢣬������죬��ð�Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��^�Ƹ�������Σ���������ҵ£�ת��Ϊ������Σ������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�꼢���꣬Ű�����񡣸�Ϫ��ɽ���س���ԩ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���e���ۣ��޽��ѽ⡣��ĸ�f�ޣ�ý����������Ϊ�����';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ţ��������ڡ��¸����ã����غ�𽡣';
  exit;
end;
if s='��֮����' then
begin
  result:='��梺Ͼӣ����������ԸĽȺ�󣬲������ѡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ԣ����������������Ǻޣ�����������';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ã������еá��������ߣ����¹�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϲ����¹����С����ͽ��£������츣��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݹ����ã������䲸���a����ö����ͷ��ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�׵����飬���ڶ��硣��֮���棬�������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�����࣬�����������ɻ�����ĸͶ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�¶��ش���Ī��Ϊ�ã������Ϳࡣʹ����ȣ�����˳��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='ƾ�ӵ�ɽ����·���ѣ������ٱ㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���D֮�ݣ���ʧ�乧����ǫ���֣�������ͬ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ů����ź�ɽ�硣�������أ��������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ����������ȡ����ӿ��飬������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���а��⣬̫���ܹ���������������»��ͬ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ����������Ϊĸ���������֣��������ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ϳ�����������²��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='̽�����飬��Ըʧ�����������ǣ��ƾӽ��á�';
  exit;
end;
if s='��֮����' then
begin
  result:='����������ֺ����ԫ����֮��������ѹΪ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�岻ʤ�飬�������㡣����Σ�裬�۽Ǵݾ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����ε�����������ᡣ��Һ�½����������档';
  exit;
end;
if s='��֮��' then
begin
  result:='�׾���ۻ����ʢ歡��������ӣ��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������m����������³��ս������Ȯ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ��������꣬ʹ�һ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʱ�ţ�ʧ�����͡������������������ѡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='����̩ɽ����ϲ���顣���в򻢣�����Σ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='���Ǻ�ϲ���븣Ϊ�С���٫�г£��������ѡ�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�ֵ����⣬�ԾƲ�ʳ�����дӾ���������������ϥ���ޡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��˥�ϼ���������¡�������⣬������������ҵ������Ϻ������';
  exit;
end;

end;

function tun(const s: string): string;
begin
 if s='��' then
begin
  result:='�������𣬱�����ء������ս��ƽ�ǵ��������վ���������ȫ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�������ۣ����в��ݡ�������£��Ļ����ǡ��ʲ���ʱ��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��н���룬�����ɵߡ����������������ķ֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽ���Ⱦ����󸣼Ƚߡ���μʧ�ͣ��������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��̨�h��������򡣹����ߣ�������ϡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���蹵�¡�����Ц�ޣ��ղ���¼��';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��÷��ʵ��������������Ҳ�����������Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�¹������������ӡ��������ᣬ���м��ʡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�к�Ϊ�飬�����޴���ҡ��ʧ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣';
  exit;
end;
if s='��̩֮' then
begin
  result:='��λʧ���������Ծӡ�����Υ�ͣ������ߵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǽ����ߣ��������Ρ�����ɢ�ᣬ������ǿ��';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='������������ڸ����������أ�������֡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ӳ�������򲻵öɡ��������ˣ��������ѡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��¶��Ȫ��̫ƽ���ء��ʵ¸�Ӧ�������񰲡�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�����ϯ��ѭ�޲�޽�����ٲ��壬������լ��';
  exit;
end;
if s='��֮��' then
begin
  result:='̫�Ҽ��򣬴��������������弾����Ϊ³��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ϰʹ󰲣�ʯ����졣��ָ���ѣ����ϸ��������Ҿ��档��Ϊ�¼ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ҹ����㣬�������������ı������ɸ�躸�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڼ�Ů��Ϊ������ׯ�����ݣ�������ĸ�����ھ�ʦ��������ϲ��';
  exit;
end;
if s='��֮���' then
begin
  result:='��棾��٣������뽪��Ӫ�����ʣ����������';
  exit;
end;
if s='��֮��' then
begin
  result:='·���׼����������㡣�����ÿͣ�Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ޣ������ᡣ���ڹ�ᣬ������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����԰���Ż���������η��Ϣ�����޻�����';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�֣�����Ȯ��������Ϊ����������ū�������ͷ�������ڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ѽ�������Ѳ�����������磬���ܸ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʵ�����������������ҽ��������ҡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='���ͼ�Ů�����ڵ��������ӵ�Ϧ�������ô���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������Ҷ��ȥ�������ͣ�������͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ����Ů�����С��ε���ͨ��������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�׾����⣬��������������ã��Գ�Ǭ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ظ���������Ұ����ĸ˭�ӣ������Ϳࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ӻ���������լ�����Ը��У������ο͡�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='����ޱ�����ض����塣�����ұ���ĺ�����á�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������������ݣ��ּ�����';
  exit;
end;
if s='��֮����' then
begin
  result:='��ҷ仧��������㡣���ɽ�ȡ��Ϊ���١�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ͱ����������͡�������ֱ���������¡��ɰ����ѣ����ܴ󸣡�';
  exit;
end;
if s='��֮�' then
begin
  result:='�����ä��Ī���ش���ʧ�����ã�������硣';
  exit;
end;
if s='��֮�' then
begin
  result:='Ϊ���󸾣����ڶ�����ˮ���޴�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽ����Ĺ������ʧ�ᡣ���Ͼ��ߣ����޲�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�pţʧ�ǣ���ɽ���ᣬʧ����»��';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�ش��ۣ��޸��Ը����������ܣ��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ɣ����ڹ����������ɶ�������ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���㲻ʱ���������ǡ�������妣�˼��ɾӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƶ�����������֮����в��������Ծ�ֹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ���ң�����˼�����Ҿ��ӣ��������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����δ��ʧ�����У�����¹�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ߵ�·��ʹ��η�塣����֮�֣��н��ҷ����������ң�������®��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ݳ��У���Ϸ��ɽ������������ʹ�޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='���ѿ��ӣ�Ľ���볯��տ¶֮���������϶�������Ұ®����ĸ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��Ӻ����С������Ƽ֣��̼���ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�곣���죬�����ܸ��������ܻ�������еá�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾㶫����ŭ���ϡ���Բ�ͬ��ʹ��������';
  exit;
end;
if s='��֮����' then
begin
  result:='����޽����Ϊ¹��ʳ�������������������롣';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ǡ�������r��ʹ���ľ���';
  exit;
end;
if s='��֮��' then
begin
  result:='˫���ɣ����鵾�ء���������Ϊʸ���䣬�������ܡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ÿ�������˼����硣����ʢ�磬��δ��ͨ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��·�ٳ����������ɡ������ƴǣ�ʹ�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ͬ���ۣ�������֪���ټ����������ӳ�˼��';
  exit;
end;
if s='��֮��' then
begin
  result:='���񼯾ۣ���������Ϲ�Ű�ң����ճ�ࡣ��ʦ���֣�����������';
  exit;
end;
if s='��֮����' then
begin
  result:='��½���ݣ�����������Ŀä��������·��ͨ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�տ���������ڿ�ƻ�����ʧ·����֪�ϱ���';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��¡��ǿ������չ⡣���Ʋ��������Ը�����';
  exit;
end;
if s='��֮δ��' then
begin
  result:='����ӤŮ��ǣ�²��롣���Ҹ߹󣬷��ü��¡�';
  exit;
end;

end;

function meng(const s: string): string;
begin
 if s='��' then
begin
  result:='�βݲ��ƣ���δ�������Ҽҷ��룬�������ġ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��Ϊˮ������ʥ������������£��������棬�������㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������á���ӯ���������簽�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϣ���ӣ�����®������ϰ�ף�ʹ�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ģ��Ƽ����ʡ���֮Ӫ��������Ƥ�������ؽ𣬶�����顣';
  exit;
end;
if s='��֮��' then
begin
  result:='������˥�������֦���������������´��P��';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='С����ˮ�������β�������޼������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У�����ͥ�á���Aʩ�������»�ģ���ʧ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='���������λ����������˳���Գ��ʹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ˣ���ָ��Ӹ��ʧ�ú�ʱ�����߲��顣';
  exit;
end;
if s='��̩֮' then
begin
  result:='�����⻼���������������ڹ������������ҡ���ĸ����󲻿ɵá�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٶ���Ķ����������ʳ��ڣ������޾̡�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='���ܴ�裬��»�����������ո�������òơ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�ٱ����ƣ������º���ֱָʧȡ������������';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��������������ʢ������ʥï�У����´�¡��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='������ǿ����ȥ���硣�������ӣ�ս�ڳ��ϡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Գ���ľ�����b���㡣���ҽ��񣬻������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ɽ��ˮ����ǰ������棬ʧ����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�侮���񣬷Ǳ��ϱ����������裬�������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����º񣬾�����������¶���������ï��';
  exit;
end;
if s='��֮���' then
begin
  result:='����ͷ�������²��ɡ��������˵��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�л����ף������Ұ�������㣬���ð�Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��λ���ƣ����о��С���Ϊ������������λ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�¹���ã�Ⱥ�۶��ԡ�¬�ư׼����������𡣾��`ʮ�ã�������ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='֯��δ�ɣ�γ���������������ã�¹��ʧ·���������ã��������ݡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ܵ£������ʹ��������񣬱�����Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���빱֥���������ǡ���˵��������ϲ����';
  exit;
end;
if s='��֮���' then
begin
  result:='��������������֡�������ֹ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ڻ������G��ŭ��ս����¹����Ȱ��ߡ���ֹ����������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ش��ԣ����˴ݴ����ڼ����£��������ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ǻ������ϲ���������������ţ�����Ϊ�ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�۷���쯣��X����ݡ�������Ӫ�����°�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�����������¡��������ţ������񰲡�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='ǧ�����ǣ�����ɽ�ࡣ����Ϻ󡣬Զ���޼ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ݷ��Ů��Ϊ�����󡣹�����ӣ�ĸ���ĺ���';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�����������š��ٺ����䣬ʹ�����ġ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ӥ��ȥ����ʳ�������ǻ�������������ӡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�L����������Ϊ��纥�������������ء�';
  exit;
end;
if s='��֮�' then
begin
  result:='˾»ƾŭ��ı���޵�������ʧ�������˷��롣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ó��������ԡ�������٣����δӾӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������罫������֮���������Դ档';
  exit;
end;
if s='��֮��' then
begin
  result:='�g�g�࿣�ҹ�����䡣ı�����ʣ��������ҡ��վ��Ҳƣ�������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮����������ǿ֧���ڿ�ָЦ������Σ��';
  exit;
end;
if s='��֮��' then
begin
  result:='Ŀ���޲p��ϲ�������ټ��ɻ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������㣬Ⱦָ���ѡ��ڼ����֣��ӹ��޲���';
  exit;
end;
if s='��֮��' then
begin
  result:='�츣���ᣬ������������ӵ�־���������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='å����˿��������ý�������飬����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ļ��׸���������ϲ�����Բ�ȡ�����Բ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�F�죬�������������޹�������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�ã���鱱�����������ã�������ĸ���ʹ��Ҿƣ������޽���';
  exit;
end;
if s='��֮��' then
begin
  result:='����������˺���𣡣ɥ�ײ�����ũ����ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�𷹰��⣬�ԾͿ�ʳ�������صã������鷦��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������㡣������ͬ��δ��������';
  exit;
end;
if s='��֮����' then
begin
  result:='���ط��ѣ�δ���u�ء������ǳ������ԫ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���۲����������ࡣӵ�����������ð�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���뿪�Σ���⼺�ǡ��Ļ��˳ɣ����Ʋ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ǳ�����ĸ���ڡ���ϲ������ʹ�Ұ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Ů�޼ҡ�˪�����ң���Ϊ���ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����־壬����η���е����ѣ������Բ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ޣ�Ī��Ϊ�ơ��������ϣ��̲���֪��';
  exit;
end;
if s='��֮����' then
begin
  result:='���˪����Ҷ��������ʱΪ�֣���������';
  exit;
end;
if s='��֮С��' then
begin
  result:='����֮�����ǻ����ӡ�̰���׶񣬲���ֹϢ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���Ƴ����������������ȥ��������®��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='ɽ��´޴��������������������ʹ���Ŀࡣ';
  exit;
end;

end;

function xu(const s: string): string;
begin
  if s='��' then
begin
  result:='�ú����꣬��ľ��������ʢ�շ������Թ��顣';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='����Ϣ��������¡����˿���������������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�ɰأ���ï���䡣�����ӣ����件�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ﲻ������ǿ�������������У�ʦͽ�ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϳ����������̫�ҡ��������������ޱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ����������Ϊĸ���������֣��������ߡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���ν�����û��ǧ���Ϊ������������ɣ���������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='̫�Ҽ��򣬴��������������弾����Ϊ³��������ǡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����������Ѵ��޷�����ʧ־��Ϊ����ʹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������𣬱������ţ������ս��ƽ�ǵ��������վ���������ȫ��';
  exit;
end;
if s='��̩֮' then
begin
  result:='���鱩Ű���ռ������������Ϫ�������������������ӣ����꺥�ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƶ����ӣ����䱾����ë���㲣�־�����ҡ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��ì��̣��������С������ͣ����Ʋ�ȱ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�˴��öɣ���ˮ������������������ȫ��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='ɥ�����ȣ�����Ҹ�������ʧ�����������ҡ�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='���޲ر���������ͨ������Ϊ�����������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ұ�����ⳣ���ӡ��������������ö�ҡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����G�⣬����ϵ֮��ּ��һʢ��Ī��Ц��¹Ѷ��أ������ǿࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='û��Դ�ڣ�����Ϊ������Σ�Ծ壬����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ˮ��Ѩ���������ҡ�ˮ���ް�������㵹��';
  exit;
end;
if s='��֮���' then
begin
  result:='�������ã�ʹ�㲶���η����ˣ������޹���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң�������ʳ��������½������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�棬ʧ������������޼���������ޡ������Ľ�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������꣬�������á��������壬��ۧ���ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��赱����������ںӡ��ܹ����ģ����������';
  exit;
end;
if s='��֮����' then
begin
  result:='���ȵ�٣����ٶ���������ͥ�ᣬΪ����󣬷���Ӣ�����ĸ����';
  exit;
end;
if s='��֮��' then
begin
  result:='Σ����ĺ�����󲻵á����󲻽���������߯��';
  exit;
end;
if s='��֮���' then
begin
  result:='�˲�Ȣ�������Ҹ��衣����������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�侮���񣬷Ǳ��ϱ����������裬�������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��˼���ۣ�����ﶫ��˳�������������ա��������أ��������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��˪��ѩ���˺�������������������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�� ���ӣ���Ŀ�ڳ�������ͣ�����Īȡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ȥ��ɺ裬����ֱ�������ȫ�ѣ��븣��ꡣ';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�������䣬ͬ���Ρ��Խ��ݼΣ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������纥��������ֹ���������С����ɱ��裬���޻ھ̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='����Ϊ����������ȡ����ӿ��飬������ʳ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�ɶ��ݵ£����������������Ц�������и���';
  exit;
end;
if s='��֮�' then
begin
  result:='�屴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ������';
  exit;
end;
if s='��֮�' then
begin
  result:='��Ŀ����������á���ֹ���ܣ��ղ���߯��';
  exit;
end;
if s='��֮��' then
begin
  result:='һָʳ�⣬�������á�Ⱦ�䶦ؾ������ڸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ҷ�ڽ��������������������ã��������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ұ���߰����ڡ�������������Ԫ��ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϲ����¹����С����ͽ��£������츣��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ս���£���֪��Ȩ��Ϊ�����ƣ���ʦ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ʹ���ԡ��������ǣ���Ӧ���š��˸����ã����°�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӻ���̽����š�����ג���������Ҽҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ף�����ԣ����¹��񡣴������꣬ʹ�����ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����谣�ִ�޼������������ݣ�ӦƸ���ء�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˳�����Σ��������ʧȹ�࣬�������ᡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����ľ��������ţ����˹�ϸ��򣬼����ల��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ʵ²��ᡣ��ʥ��ͬ���ܹ�ï�ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����絾�����㷽�졣�к����꣬�˷���¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ڴ����Σ��븣ϲ�ꡣ���ڼ��꣬��Ϊ���䡣';
  exit;
end;
if s='��֮����' then
begin
  result:='һ�����ӣ�ͬ����ĸ����˳���꣬���벻������»���ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ϳ�Ů�����ڶ������˼���������˳�Ծӣ����ù�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ܸ���ϲӯ���ң���Ը�صá�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ƽ�м���ӭҽ�ع������˴��أ��Ͳ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='ĵ�����������Ǵ�⡣�޸����ƣ���Ϊ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='׷���𱱣���ɽ���á����������������®��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ˣ�һ�����ߡ���ҡ������Σ�������������޻���';
  exit;
end;
if s='��֮����' then
begin
  result:='����Ϊ����̩ɽ֮�����ڶ���ߣ�Ī���Ͳء�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�Y����Խ�����۽ҽҡ�����׷˼��ʧ��ͽڣ����Đ�����';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�ξ�ʯ�ţ�»����ȫ���ܸ����ڣ�������Ȫ��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�Ǹ���ɽ���������ԡ�������ԩ����ְ�ɶ���';
  exit;
end;
end;

function song(const s: string): string;
begin
  if s='��' then
begin
  result:='�����ױף��������ʡ��������飬��ѪƯ�ġ���֪��ĸ����ʶ�丸���ɸ���ֹ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�������飬�ʰ��ƺ�����ʮ�У�ز�����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������Ӽҡ���Ů�޷�����ɦͷ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����̩ɽ����Ң���ԡ�������ԩ���Խ��ǻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������޷�����ʱ���ͣ�������ͨ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ǣͷ��������ǡ���ĸ�Ƶ����������֡�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���ˮû��ϲЦ���ġ�ë�����������Թ��񡣹������������Ͽ��ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�����£������������������У���������';
  exit;
end;
if s='��֮С��' then
begin
  result:='�¹���ã�������ӡ��������ᣬ���м��ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ֲ޽��������ܿ���������ұW���������ա�';
  exit;
end;
if s='��̩֮' then
begin
  result:='��ˮ֮����������ĸ������֪�ϣ������ౣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������䣬�������ҡ��ҵ����ã���Ң٧ʳ��';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='���Iִ�룬����������Ԫʥ���գ��Ḹ���ġ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ϲ��棬�������롣���ﱻ����������Ϊ��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��ľ��֦����ĸ���롣�Ÿ��Ѻͣ�������֪��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�����޾࣬��ȵ�񶷡�����Ŀä��Ϊ����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ұ����������ͥ���������ӣ����ż�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ɣҶ���C���±����硣Ů�����ɣ�˿��Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���α��ţ�Ѳ����ԩ����̨�h�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�£���ǰ��ʳ���ر����������ܰ�����';
  exit;
end;
if s='��֮���' then
begin
  result:='���˾�գ�������ϡ���𵱻����񲻰������꼢���С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ھ��أ��������С��Ƶ�Ң˴�������������ڴ����ѣ����¿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ��ɽ���������ѡ��ҷ���ѩ���ڶ���ǰ���е�������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ȱ�������ѳݺ����ڲ����ԣ�Ϊ��������';
  exit;
end;
if s='��֮����' then
begin
  result:='�������������á����ͬ�ã�ʹ���и���';
  exit;
end;
if s='��֮����' then
begin
  result:='�������䣬�Ǵ��г���ɥ�ұ���������ʧλ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ĳ�ͬ������������������գ�Ī���Ҵӡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='����Ц�ԣ���ϲ��ʳ������������ǧ�����裬���ܴ󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ǻ�ϲ���븣Ϊ�С���٫�г£��������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޼ң������³�������ʧ��������ֹ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������봦�ҡ���ʥ�������������ۡ�ʱ����̣���Ϊ��ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ѿ��ӣ�Ľ���볯��տ¶֮���������϶��������®����ĸ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ƶ���ң��ַ��о����������򣬶�ô󠙡�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='���߲��ˣ���Σ���������黳�񣬻������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ƣ������Ֆ����з������������񱭡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ǣ��������ˡ�����С�ݣ���Σ������';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ң�����������档������ĸ����·���ף��޸����ߡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�ﶬ̽��������ȵ������ָ��ȥ�������ټ���';
  exit;
end;
if s='��֮�' then
begin
  result:='������������֮���硣�������ѣ�����ʳ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������®�������䳲����ľ˼����������ҡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ϲ��ѣ�������_���ż����ڣ��������ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ӿ����ƣ������ҿڡ���ϲ����������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ߣ������Һ���ʧ��������ȫ���ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Σ��������ǡ����Ӹ�������ǧ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�㴲��ã��Ǵ��г���ɥ�ҽ�󿣬����ʧλ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������Զ�������Է����Ḹ���ң�����δ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĵ�ʠ���������ˡ�������£����Ǽ��ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƶ۽�Ԫ���ĵ�����»����������Ϊ³����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ĥ�����Դ�������������������ֹ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������λ����������˳���Գɺ�ƽ��';
  exit;
end;
if s='��֮��' then
begin
  result:='Գ׹��ľ�����b���㡣���ҽ��񣬻������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӫ���Ϲ����᲻�ɹ������񽨵£����ܴ󸣡�';
  exit;
end;
if s='��֮����' then
begin
  result:='���̹Ѹ������ޱ��ࡣĿ�Ŷ���������Ц�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���ӣ�����η�ܡ����߲�����������ܡ���Ḭ̄�ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ؽ𷷹����������ߡ�����Ԩ�ף�����Ϊ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�д���ɣ���˾������ִ����ϵ������������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ִ��ϲ����֮���Ρ�Σ�귴����ʹ���޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='���̷��ţ�Ů�����ɡ���Ů��ޣ��������F���Ż����ɣ��׶���ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������࣬�������ҡ���岻�֣�����ȫ����';
  exit;
end;
if s='��֮����' then
begin
  result:='л���ݵ£�����������赸��Ծ�������ܸ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='��ţ���ʣ����Ҿ����ɽ֮�£����Զ��������ʱ�ڣ����˰�����';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='����Ⱥ�g��Ľ�³�����տ¶֮����ʹ�ҵû���';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�ܻ�������������š��㿷���㣬��˼���ġ�';
  exit;
end;

end;

function shi(const s: string): string;
begin
  if s='ʦ' then
begin
  result:='�������ӣ����ԾƸ�����¥֮����������ĸ�����˳ɹ���������У��ʸ����ӡ�';
  exit;
end;
if s='ʦ֮Ǭ' then
begin
  result:='һ�����࣬�A���������ɻ�����ĸͶ�̡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������������Ů�˼ҡ��ܸ��Ҷ࣬��ʦ�м�����Ϊ�����';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������·���Ĳ���Ľ����ţĵ�j�������Ҽҡ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������Ŀ���������塣������ڣ�Զ��Ԫ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='ȸ�������������������ʾ��ӣ��ѷ���Ϣ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='���＾�ӣ�����Т�ѡ������Ƴϣ���ߪ���٣�Ϊ���ɸ���';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����֦�����ӷ��롣����Īʳ������������';
  exit;
end;
if s='ʦ֮С��' then
begin
  result:='˴������ʯ��֮Ұ���������ڣ�����ˮ����';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�岻ʤ�飬������Ӫ������Σ�������������';
  exit;
end;
if s='ʦ̩֮' then
begin
  result:='���˱��У���λ������������Ů���������ӡ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����ںţ�������ǡ��������£�����������';
  exit;
end;
if s='ʦ֮ͬ��' then
begin
  result:='�������飬���ƴ�ʱ��������ĺ������������';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='�������棬ʼԹ�Ϳࡣ���߲������ѳ��ǡ�';
  exit;
end;
if s='ʦ֮ǫ' then
begin
  result:='���ع�������Դ�������׼ͣ����¸�ʼ��';
  exit;
end;
if s='ʦ֮ԥ' then
begin
  result:='��ɽ���棬ʹ���ٿ���������������м��С�½��������������ϲ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����죬ִ���ڽ������б��飬��·��֮��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������Ԩ��Ϊ�����ԡ�֤Ѷڵ�ʣ�ϵ�����¡��������ϣ���Ȼ�ɶ���';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������P�������Ͱա��۷��㲣��uʱ���顣';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='����֮�£����߳�ʳ��²����˵���Գ����¡�';
  exit;
end;
if s='ʦ֮���' then
begin
  result:='����ĭ�磬Ҫ��ɣ�С�ʧ�Ų��ᣬ��˼Լ����';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����Ӹ������Ұ�����ó����У�ʹ���޻���';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�������ۣ����Ұ����������Т������������';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='ԨȪ�̷���ˮ��ͨ����˳ע������������С�';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='���϶���������㡣ԩ��ڵ����ʹ���ĸ���';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='���˾��У�������ޡ�һ�����ģ������Ի��������á�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='ѻ��ͥ�У��Խ����ס����Ż��أ������ٿ͡�';
  exit;
end;
if s='ʦ֮���' then
begin
  result:='�����¾ͣ����ְ��ӡ��������ԣ�����������';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='���Ҳ���������Ϊ�����������ӣ����м�����';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��Ң�����������档������ĸ����·���ף��޸�����';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��β�O�ߣ����سɺӡ�����棬�����Ա������]Ϣ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�������U�����豱�ڡ��˼����ң����ض�����ο��Ԫ���ټ��ɸ���';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='����ɽ���������޻�����ظ��������곤����';
  exit;
end;
if s='ʦ֮��׳' then
begin
  result:='�ú�ˮ�ԣ���������������£�ĩ������';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��ɽ�еأ���Σ�����������¾�������������';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='���Ҳ�ȥ�����콩�͡��������գ������ɻڡ�';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='�����ӭ����֮���硣��ϲ���������Եõ���';
  exit;
end;
if s='ʦ֮�' then
begin
  result:='���˸��ӣ�������Ұ����ң���飬˼�Ҵ�ĸ��';
  exit;
end;
if s='ʦ֮�' then
begin
  result:='���������ױ����ۡ������ؾӣ�������ֹ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������ģ��ͺ���ʱ������˳�򣬹��޾��֡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='����ë�𣬷���󶼡����Ž��أ�֣��ʧ�ҡ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='뾸����꣬���������������ĸ������Խ��ݡ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��ɽ��֥��Ӻ����ݡ���������������Ϊ������ʬ٧ʳ����»������';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����ظ���������Ұ����ĸ˭�ӣ������Ϳࡣ';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�������ƣ���ˮΪ�ҡ�������ͣ���־���֣����件����';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��Ŀä�������Բ�ͨ���������������޳ɹ���';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������ޣ��������ᡣ���ڼ�̣�������ӡ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='������ģ�¾���˷��������ع�����ΪӦ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�ﶬ̽��������ȵ������ָ��ȥ�������ٷ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��η�ڿ�����²̡����в�Σ�����Ѷ򺦡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����½������������������ֻ�����Ͽ��ޡ�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����Ÿޣ��������ӡ��������꣬������ʱ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='˴������ʯ��֮Ұ��������ͥ������ˮ����';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='���������������á���ӯ���������簽�֡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='���ͱ����������͡��¹ڲ��ѣ��ɱ����¡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�ղ�ע�������鲻�����Ź�ף�����۸���ȥ��';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='�����ֵң�̫���������Ա����������Ӳ��档';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��¶��Ȫ��̫ƽ���ء��ʵ¸�Ӧ�������񰲡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='����������������͡����ر�լ���Ա��׼�������֮�ǣ��������֡�';
  exit;
end;
if s='ʦ֮��' then
begin
  result:='��������������ʢ������ʥï�����ʵ´�¡��';
  exit;
end;
if s='ʦ֮����' then
begin
  result:='��ˉ�ɼ���������ʵ������������ʹ��������';
  exit;
end;
if s='ʦ֮С��' then
begin
  result:='�ڲ��ҹˣ�������Ů�����񮼲��˭�����ߡ�';
  exit;
end;
if s='ʦ֮�ȼ�' then
begin
  result:='�������ڣ���֮Ϊ�����½����ң��������á���ʥï�������ܸ���';
  exit;
end;
if s='ʦ֮δ��' then
begin
  result:='��ľȡ�𣬾����ˮ����ĸ���ʣ���Ϊ�Ļ���';
  exit;
end;

end;

function bi(const s: string): string;
begin
 if s='��' then
begin
  result:='¹�����ݣ��������ѡ�������������Ǽ�����';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���渴�ڣ�׷���ɿ�����������������ó�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӷ���������ι����������ӣ��������ʣ�������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ƻ�ȪԴ������ɽ�ۡ��㲻�ɵã��𲻿�ȼ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�����������֡���Ң���ѣ����źɱ���������ҹ���������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��𢴼��������ɽ�ڡ�������ʳ������ν�������ެֳ�����ɸ���ʱ�ֲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ʵ�����ѽ���������Ȩ�ߣ�����ܸ���';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='ǧ��֮�棬��������������Ӷ����ǿ��޼ҡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='���﹫�ӣ��ѵ����衣�����еã��������㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�꼧��ϲ�������ı����ɱ���ӣ�������Т���������ˣ��ض����ӡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�����޼�������ǧ�ڡ�������������̲��㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='ʧ�⻳�ǣ��������Ρ�����ɥ�򣬸��мľӡ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�����������벻�ɵá�����Ǳ�أ�������ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���e���ۣ��޽��ѽ⡣��ĸ�f�ޣ�ý����������Ϊ�����';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���׹ľ������ͷ�㡣���������������ҡ�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��棾��٣������뽪������Ӫ�𣬰��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱ���飬���ۿ౯���ǻ��������ĸ���롣';
  exit;
end;
if s='��֮��' then
begin
  result:='��³���ԣ�ս�����š���Թ���������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�����������������Ӻ���������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ױ��ɣ��¾͵��ء��@���o���ڶ����С�һ�ѻ��������ù�����';
  exit;
end;
if s='��֮���' then
begin
  result:='�������֣�������ͨ��Ԫ����ݣ������Ͻ�Ϊ�ḣ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������䶷���ˡ��������̣�ȫ�ҵ��֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����档';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȥ�Ҷ����������չת�մ����ڻ����ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='������У���תΪǿ����ʥ���£����ҳ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�ն��̷���ˮ�����С���ʢ���⣬���U���أ��˻����硣';
  exit;
end;
if s='��֮��' then
begin
  result:='Ο�߳��������꼢�ף���ʳ���';
  exit;
end;
if s='��֮���' then
begin
  result:='Ǧ�����񣬼᲻�ɵá����ҽ������ռ�Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ���٣����ؾ��ڡ��������ܣ���ˮ���������˿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ���������ҹ����������ã�����ͬ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ſڽ��࣬����������ȥ��������Ī����ԩ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ǣβ��ǰ������ʧ������˷�Ա���';
  exit;
end;
if s='��֮��' then
begin
  result:='��˪��ѩ���˺����󡣾蹦������������ʳ��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='����ʧ�ڣ�������֪�����Ի��ǣ����ر��������ɧ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����գ������ҹ��������֣������θ���';
  exit;
end;
if s='��֮����' then
begin
  result:='Ԫ���޾̣�����������ʱ�����У���֮�лڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='ܲ��ǳ�ޣ�������ı����Ԯʧ����Ϊ��������';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ڣ������Ƽҡ�����𲶾��Ϊ�����֡�';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ߣ�����ǧ�������ϲ�������ڵ��������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʯɽ�ۣ����ּ�ƶ�������������緢����';
  exit;
end;
if s='��֮��' then
begin
  result:='���˹�·������������ǧ��֮�⣬����֪����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ѣ��������ˡ�����ï�������¹��ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ϳ���ã��ֿ���顣������ӯ������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������أ��������š�����ݻ�����Ȫ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ű��գ�Ϊ����ʳ�����ϻ��£�֣�ѳ��ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ӯ���ڣ��˼���𢡣������Ϣ�����Ҹ��С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ǽ�ı�����Ϊ��������ţ�򣬵�����ͨ���������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ۣ����ֲ���������죬�����ศ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ͬ�ع������е���ȥ��ɥ��Ԫ�򣬶���¾ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ϡ������彩��������ɥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ֵ���֣������ͷ���������񣬷������������Ҷ�ҡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ǻ���ǿ�����岻�С�����������³������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϲ����ӣ��������á����ҳ�Ů���������롣';
  exit;
end;
if s='��֮����' then
begin
  result:='һ����ͷ��Ī���������޼����ģ��Ҳ����Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ȵ��������ӡ��ȶ��Ը������ܾ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ɰض������ศΪǿ�������̣�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='ȸ����ʳ��ĺ�����顣�������ᣬ�����޹ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��β��ͷ��Ϊ��������������������ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�����أ��Ἡ���㡣�����·����ĺ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ݣ������������������꣬�������衣';
  exit;
end;
if s='��֮����' then
begin
  result:='����ɶ��������������ʮ�������ع��硣';
  exit;
end;
if s='��֮С��' then
begin
  result:='������ϲ��������ڡ���ǿ���̣�������̡�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�������䣬�κ���������ٴ죬���¸�󼡣';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�Ǹ���ɽ���������ԡ�������ԩ����ְ�ɶ���';
  exit;
end;

end;

function xiaoxu(const s: string): string;
begin
  if s='С��' then
begin
  result:='�����ζ����������ӡ���֦�ųᣬ������ĸ�������弾��Ԫ�ؾ��֡�';
  exit;
end;
if s='С��֮Ǭ' then
begin
  result:='�������ߣ�ţ������������ͨ�������޹���';
  exit;
end;
if s='С��֮��' then
begin
  result:='���I���룬����������Ԫʥ���գ��Ḹ���ġ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�ƻ�ȪԴ������ɽ�ۡ��㲻�ɵã��𲻿�Ȼ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='���ز��㣬���ܳ��ԡ����ϲ�ͨ��Ϊ����ԩ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='���Ҿ�®���Ա���顣�����³��������־ӡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�O��ѭ����������㡣Ԥ�Ҿ��������˸�ک��';
  exit;
end;
if s='С��֮ʦ' then
begin
  result:='��ɽͨ���������ι����ܹ�ף�棬���ʾ�����';
  exit;
end;
if s='С��֮��' then
begin
  result:='ȵ��ȴ��������ͷĿ���վ������������Ը���';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������ѣ��������ԡ�������ף�ʹ���Ի����󲻵á�';
  exit;
end;
if s='С��̩֮' then
begin
  result:='���ſ��٣��λ��������������ѣ��������͡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��������䰧���������񣬳�Ϊ���ǡ�';
  exit;
end;
if s='С��֮ͬ��' then
begin
  result:='�����²���Ȥ��ͬ�ᡣ���޷�Ŀ������ʧ�ӡ�';
  exit;
end;
if s='С��֮����' then
begin
  result:='�������ݣ�����ĸ�ӡ����л��꣬����������������á�';
  exit;
end;
if s='С��֮ǫ' then
begin
  result:='ʽ΢ʽ΢���ǻ����������ɽ���Ҽҷ�ɢ��';
  exit;
end;
if s='С��֮ԥ' then
begin
  result:='����ۼ�����������Ϲ�Ű�ң������Ϳࡣ��ʦ����������������';
  exit;
end;
if s='С��֮��' then
begin
  result:='������ʳ�����岻�С������������³������';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����޸���������ơ��������̣�˹����ȥ����Ϊ������';
  exit;
end;
if s='С��֮��' then
begin
  result:='����������ĸ����ʳ�������ճ������ҳ�Ϣ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='����������ֹҾ������������ޣ������޵á�';
  exit;
end;
if s='С��֮���' then
begin
  result:='��๹�ڣ�����ʥ���ͽ⵹�����ƹ��󰲡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�ݸ���ϲ�������ι����������У��ƾӰ�լ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����㣬������ū��ľ��𳵣����δ󶼡���ĸ���ң��Q���־ԡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='������ͷ����֪��֮���Ŀ��ˣ�ĪʹΪ���������չ⡣';
  exit;
end;
if s='С��֮����' then
begin
  result:='�Q��������Ԧ��ǧ����ֹ���࣬�븣Ϊ�顣�������ף���ȫ�޼ɡ�';
  exit;
end;
if s='С��֮����' then
begin
  result:='���ν�¦������Ѳ��������ʩ�ݣ��������ǡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='���Ҳ������������ߣ��������ˡ��������ã������г���';
  exit;
end;
if s='С��֮���' then
begin
  result:='��ԭ���ģ��Դ���ʳ���������ѣ������á�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��é���ƣ����װݵ�����ŭ��������ǿࡣ';
  exit;
end;
if s='С��֮��' then
begin
  result:='���ʵ�����ѽ������������ˣ�����ܸ���';
  exit;
end;
if s='С��֮��' then
begin
  result:='Դ�����㣬����ɽֺ����Ϊ��������ð�����';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������ţ����߶�����ͯŮ��֯��ʿ����Ķ������ǧ��꼢��ࡣ';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������裬��»���ڡ���������������Σ����';
  exit;
end;
if s='С��֮��׳' then
begin
  result:='��ʳ�ҵ���������ȥ��ʵ�����У�������˛��';
  exit;
end;
if s='С��֮��' then
begin
  result:='ţ��ͬ�ۣ��������������ƿ��飬�������ӡ�';
  exit;
end;
if s='С��֮����' then
begin
  result:='����ǰ�㣬��ı�ѱ���Ϊ���������԰�Ϣ��';
  exit;
end;
if s='С��֮����' then
begin
  result:='������ת�����ϴ��档����ԯ���������ѣ�����Ц�ԡ�';
  exit;
end;
if s='С��֮�' then
begin
  result:='ѿ������������⡣����ִ�a������������';
  exit;
end;
if s='С��֮�' then
begin
  result:='�ﻨ���࣬������˪���ױ���ͥ�����ﲻ������Ȯҹ�������Ŵ󾪡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='˪���ջ����ݳ��������������£�����Ϊ�顣';
  exit;
end;
if s='С��֮��' then
begin
  result:='���ذ�������ĺ���Ϊ�Ŀ���������������';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����񶦣�������ָ������߸������������ӹ���ţ�����Ϊ����';
  exit;
end;
if s='С��֮��' then
begin
  result:='����֮�ۣ�ϲ���ǳ��������ˮ��������ϲ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������������Զ�䡣����ͬ����δ�ð�Ϣ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�׺����飬ҹʳΪ�����������������ܹ��١�';
  exit;
end;
if s='С��֮��' then
begin
  result:='����Ϧ������ԻӤ�����ɵ��롣';
  exit;
end;
if s='С��֮��' then
begin
  result:='����δ�ѣ����¸��𡣼����Ϳ࣬������Ϣ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�ǻ������ϲ���������������ã�����Ϊ�ڡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����ĺ�����پ��¡��������أ��������á�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������򣬷������ݡ������ܼ����������͡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='���ïľ������Ը�á�����µµ�������ٹȡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�۱��b�㣬���ܽ��ơ�������������ŭ��ϲ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='ѧ�����꣬��ʥ�����ȼ����꣬��ϲ���졣�N��֪�����������ǡ�';
  exit;
end;
if s='С��֮����' then
begin
  result:='����ͬ��־����˼���Ļ���ƽ��־�����';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������������ĸ���ܸ�ǧ�ڣ������á�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����֣�����������������ϲ����ɪ��ک��';
  exit;
end;
if s='С��֮��' then
begin
  result:='������Ϣ�����޶��¡�����ʧ������ɥ������';
  exit;
end;
if s='С��֮��' then
begin
  result:='��ȸ��é���������顣�ֵ����ˣ�毺��Т��������Ը���������֡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��β���ڣ����гɾ�������������ʧ�����';
  exit;
end;
if s='С��֮��' then
begin
  result:='������ֹ࣬��ͬ�ᡣ������ɢ������ʧ�ӡ�';
  exit;
end;
if s='С��֮����' then
begin
  result:='��Ϊ��Ű���紵��ȴ����ֹ���ã�������լ��';
  exit;
end;
if s='С��֮С��' then
begin
  result:='������Ů�����Ҿ��ӡ��ٽ����ţ����Ӽ�ϲ��';
  exit;
end;
if s='С��֮�ȼ�' then
begin
  result:='��ĸ���ӣ��ϴ͵�ʿ���ĵҷ������԰����ҡ�';
  exit;
end;
if s='С��֮δ��' then
begin
  result:='������ڣ��������ʡ�˾������������ң��ٰ�Ϊ�ǡ�';
  exit;
end;

end;
function lv(const s: string): string;
begin
 if s='��' then
begin
  result:='ʮ�ھ�ɣ�����Ŵơ��۵ö�ȫ���侪��Σ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='����ެԫ������Ц�ԡ��Ӱ�ִ�ޣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='ѭ�Ӱ��ۣ��Ի����Ρ��游�������ȵô�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ԯ�����ƣ��������ԡ��������ޣ�������b��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������塣�ĹԲ�ͬ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϲ����¹����С����ͽ��£������츣��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ξ�ʯ�ţ�»����ȫ���ܸ����ڣ�������Ȫ��';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�򳦾��ӣ�������ǰ��ֹ������������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����౶������������������񣬹ȷ����ӡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='������ã�Ϊ�����С�������򪣬�������꣬�������硣';
  exit;
end;
if s='��̩֮' then
begin
  result:='��ҷ仧��������㡣���ý�ֹ��Ϊ�Ầ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ŭ����Թ��������Ǩ��̰�����󣬶����^𰡣����ʧ��������������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='Ӥ�����飬ĸ�����ӡ�������ϲ�����ָʶ���';
  exit;
end;
if s='��֮����' then
begin
  result:='����ͽ�ͣ����岻�ɡ�ӥ�����ã�צ�۲��á�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���ʼ�����������ͨ����³�������Ʒ��пա�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������£�ˮ�ʿչȡ���ֹ���ޣ���Ϳ������������𢡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ�����Ϊ�ѡ�����ɧ�룬���������';
  exit;
end;
if s='��֮��' then
begin
  result:='�뾰���ɣ�Ϊ����ţ����������������Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������С���ĺʧ������֪���ء�';
  exit;
end;
if s='��֮��' then
begin
  result:='�벮�м֣��ɽ֮Ұ��ҹ�����裬����Σ�������罽�ơ�';
  exit;
end;
if s='��֮���' then
begin
  result:='ɣ֮���䣬�����Ҷ��ʧ����࣬����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ���㣬��ˮ���ꡣ�з���飬���������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ɵ¾ͣ����첻�ԡ��������ϣ��Ḹ��ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���磬Ң˴���ӡ����Դ������ҹ��ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�沮ѳ������������������������ӱ��ࡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='���˾�����Ī���ж����ĹԲ�ͬ���������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ů����ʥ����˼��ܸ������쳤�á�';
  exit;
end;
if s='��֮���' then
begin
  result:='�⽭���٣����ô���������ʳ�ˣ����Ƹ�Ц��';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽ�����У����ж�ʯ�������E�����������ᡣ�������٣����b���㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����׸����������󡣰����޿࣬���件����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȵʳ�ȣ��ſ��ܲ����ɱ�����������ɾ͡���˳���꣬�����ϵ¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ε�����������ᡣ��Һ�½����������档';
  exit;
end;
if s='��֮��' then
begin
  result:='·���׼����������㡣�����ÿͣ�Ϊ��������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������ۣ����ԾӴ������ʹ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������棬��۰�Σ������ʥ�ˣ�����ܹ���������ͬ�����Ծ�ֹ���������ס�';
  exit;
end;
if s='��֮����' then
begin
  result:='���Ҳ�ʱ��ʹ����ǡ�����ΪЦ����Σ���ߡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ƶ�����������֮����в��������Ծ�ֹ��';
  exit;
end;
if s='��֮�' then
begin
  result:='ȸ��������ĺ�����ޡ��������ᣬ������ʡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='̫�ֻ��ȣ�������ʳ�������͵�������ʱ�졣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����죬ִ���ڽ������б��飬��·��֮��';
  exit;
end;
if s='��֮��' then
begin
  result:='��Σ���ߣ�׹�뺮Ԩ���в���ǰ�����b���㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ϳ����Ϻ����ҡ���ü�ݣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ճ�������߮���ݡ��������ƣ��Ը�ι���';
  exit;
end;
if s='��֮��' then
begin
  result:='�𲯹󱦣��������С���ȡ��Ϣ�����ù�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ӿ����ƣ������ҿڡ�������ϲ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϊ���أ���ʳ�ʴ͡�����ʿ�⣬ս���ƺ����������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ճ��¹ȣ�����������������ʣ�������¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ����ҹ�������ĺ������ʧ����ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ڴ�󡣵���ʧ������֪������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ļ���β����������������ʧ��ȥ����ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������̣���Ҷ��ȥ����Ϊ�������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������܋���ŵ����С��������У�����ϲ�á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƶ����ƣ�ʥ�����񡣹������飬�������ꡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ĸ���������ء����ʢï�����޻����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ⱥ�����أ�������ʳ���������أ�����ʧ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ȵ��������ĸ�ӡ�ԸĽȺ�£������䳲��';
  exit;
end;
if s='��֮��' then
begin
  result:='�¿���ģ�����ʧʱ������������ƣ��ɳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����򪣬������硣��������������ׯ��������ţ����������';
  exit;
end;
if s='��֮��' then
begin
  result:='̽���ó����ȵ������ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˹٣�һ�վ�Ǩ����ߪ���ȣ�������ɽ�������񰲡�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ͷ��Ŀ�����ܼθ�����ȸ��������»��á�';
  exit;
end;
if s='��֮С��' then
begin
  result:='Զ��ǧ��������ӡ���¦֮���������ڹ⡣';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��ŮΪ�飬���θ�԰������ҹ�У��벮Ц�ԡ�������ĸ��Ϊʧ���ƣ�ԩ��˭�档';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�ճ�������ǿ������һ����������ʤ���ˡ�';
  exit;
end;

end;

function tai(const s: string): string;
begin
  if s='̩' then
begin
  result:='����¹���������������������������������е£��ɶ��ܸ���';
  exit;
end;
if s='̩֮Ǭ' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����档';
  exit;
end;
if s='̩֮��' then
begin
  result:='�����Ѷɣ�������F�������������������ʡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�����������ʵõ�ͨ�����ݱ��ۣ���Ŀͬ����';
  exit;
end;
if s='̩֮��' then
begin
  result:='��ˉ�ɼ���������ʵ������Ϊ����ʹ��������';
  exit;
end;
if s='̩֮��' then
begin
  result:='��ĵ���ã�����������������ְ���븣��á�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�������ˣ���ָ��Ӹ��ʧ�ú�ʱ�����߲�����';
  exit;
end;
if s='̩֮ʦ' then
begin
  result:='�����Ĺ�������֮�򡣿��Է�ʳ����ȫ�ҹ���';
  exit;
end;
if s='̩֮��' then
begin
  result:='�������������Ϊ�ǡ��꾪���ģ��纳�Ҽ���';
  exit;
end;
if s='̩֮С��' then
begin
  result:='�ÿ��޴���˼�����硣������ӯ��������ͨ��';
  exit;
end;
if s='̩֮��' then
begin
  result:='������ˮ������ȼ�𡣻��������������޻���';
  exit;
end;
if s='̩֮��' then
begin
  result:='�����ĸ������δ�ѡ������ұW�������ౣ��';
  exit;
end;
if s='̩֮ͬ��' then
begin
  result:='�����ظ���������Ұ����ĸ˭�ӣ������Ϳࡣ';
  exit;
end;
if s='̩֮����' then
begin
  result:='��ֵ���飬�ϻʴ�ϲ�����Ҹ��������޼���';
  exit;
end;
if s='̩֮ǫ' then
begin
  result:='���⣨���飩�����飩����׹ɽ�ߡ�������������û����';
  exit;
end;
if s='̩֮ԥ' then
begin
  result:='���ڼ�Ů��Ϊ������ׯ�����ݣ�������ĸ�����ھ�ʦ��������ϲ��';
  exit;
end;
if s='̩֮��' then
begin
  result:='�������ܣ�����Ԩ�ȡ�ʹ����̣�����˳��';
  exit;
end;
if s='̩֮��' then
begin
  result:='���ݾ�������Գ��ľ��ͮ��������ղ��ܻ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='���Ǹ�Ŀ���������¡�������ϯ���ͳ�ҹ�ҡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�̳����ߣ�������ͷ���ļ����飬����������';
  exit;
end;
if s='̩֮���' then
begin
  result:='�����������������¡����˶赡������Ϊ�֡�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�������ƣ���˪����â�������ܹ���ʹ��ز�ˡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='Ԩ�����ǣ�����Ϊū������������������ҡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='���p���棬��ĺţ�ա���ٺ��ã�ʧ�����ơ�';
  exit;
end;
if s='̩֮����' then
begin
  result:='ɣ֮���䣬�����Ҷ��ʧ����࣬����������';
  exit;
end;
if s='̩֮����' then
begin
  result:='������ʱ�����������������͵£��������ǡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='ͯŮ�޷�δ����ϡ��������ͣ��������ޡ�';
  exit;
end;
if s='̩֮���' then
begin
  result:='����ԭ嶣��ʵ²��ܡ���ʥ��ͬ���ܹ�ï�ˡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='��Ծŭ���������硣������࣬�侪�޾̡�';
  exit;
end;
if s='̩֮��' then
begin
  result:='Σ����ĺ�����󲻵á����󲻽���������߯��';
  exit;
end;
if s='̩֮��' then
begin
  result:='������˥�������֦���������������´��ǡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�̺��ʳ��������������uԻ���£�˼�����';
  exit;
end;
if s='̩֮��' then
begin
  result:='�Ҹ����壬��Ԯ���������ϲ�ֹ���������壬ʧ��������';
  exit;
end;
if s='̩֮��׳' then
begin
  result:='ˮ�����£�Զ���������������У���������';
  exit;
end;
if s='̩֮��' then
begin
  result:='�Ǽ����ߣ��������Ρ��ϴ�ɢ�ᣬ������ǿ��';
  exit;
end;
if s='̩֮����' then
begin
  result:='���õ�⯣�����������������ӭ����λ���ˡ�';
  exit;
end;
if s='̩֮����' then
begin
  result:='��ʱ���飬��Զ���ԡ������ı���ʹ���ǻ���';
  exit;
end;
if s='̩֮�' then
begin
  result:='������ң���ָ��ʳ����������������ʧ�⡣';
  exit;
end;
if s='̩֮�' then
begin
  result:='����ת�裬Σ���ð������������������ǻ���';
  exit;
end;
if s='̩֮��' then
begin
  result:='����ص£�����ެϢ��ƽ����ֱ������ٸ���';
  exit;
end;
if s='̩֮��' then
begin
  result:='����ĵ�������[ɽ�ԡ��ŵб����������ӭ��';
  exit;
end;
if s='̩֮��' then
begin
  result:='������飬������������Ϊ���';
  exit;
end;
if s='̩֮��' then
begin
  result:='���ײ��ƣ���ǣ�뾮�����ݹ���������̡�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�������У�ʧ�䳤�֡����ٲ��ң�����ɢ����';
  exit;
end;
if s='̩֮��' then
begin
  result:='���±��ã������������ά�á�';
  exit;
end;
if s='̩֮��' then
begin
  result:='����Ϊ�У��������С����׻��ߣ����黳�������û�ϲ��';
  exit;
end;
if s='̩֮��' then
begin
  result:='�񼱾����������ꡣ�ﲡ���ɣ���ʵ���С�';
  exit;
end;
if s='̩֮��' then
begin
  result:='���C�ذ������º��ꡣ����Ϊ�����������㡣';
  exit;
end;
if s='̩֮��' then
begin
  result:='�ļ�Σ�ѣ���ִȥ�����븣ϲ�ţ���������';
  exit;
end;
if s='̩֮��' then
begin
  result:='���Ҳ���������Ϊ������ֹ���㣬�޳������˵�ȫ�꣬����������';
  exit;
end;
if s='̩֮��' then
begin
  result:='�Ϲ����ӣ��������á����ҳ�Ů���������롣���ó�񣬺��˴�ڡ�';
  exit;
end;
if s='̩֮��' then
begin
  result:='��ŭʧ�������޸����ﲡ���ݣ��꼢����';
  exit;
end;
if s='̩֮��' then
begin
  result:='پȻԶ�̣��ٻ����硣����������ޱ�Ϊ����';
  exit;
end;
if s='̩֮����' then
begin
  result:='��¹ɽ�ۣ���ȥ��������а�ϱ����������á�';
  exit;
end;
if s='̩֮��' then
begin
  result:='�������ڣ���ˮ�������������棬ʹ��������';
  exit;
end;
if s='̩֮��' then
begin
  result:='�ӷ紵��ǣ����β����Ϊ����������ܸ���';
  exit;
end;
if s='̩֮��' then
begin
  result:='��ˮ�죬�����ٳ�����Ϊ���ģ�����ؽ�͡�';
  exit;
end;
if s='̩֮��' then
begin
  result:='ˮ���������Ϊ��������ג����������ĸ��';
  exit;
end;
if s='̩֮��' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='̩֮��' then
begin
  result:='���Ὥ����½�в�ֹ��������£�ʧ�䶼�С��ǻ�Ϊ�̡�';
  exit;
end;
if s='̩֮����' then
begin
  result:='ͬ����Ҷ���������¡�����Ľ�壬�����ҹ���';
  exit;
end;
if s='̩֮С��' then
begin
  result:='���ʵ��������Ϣ��������죬������ʳ��Ϊ��������';
  exit;
end;
if s='̩֮�ȼ�' then
begin
  result:='��ͫ���飬����˳���������Σ�΢��ǧ��ֺ����������Ӽ��ۡ�';
  exit;
end;
if s='̩֮δ��' then
begin
  result:='ʵ����棬�������ȡ���ֹ���ˣ��ԳɰԹ���';
  exit;
end;

end;

function pi(const s: string): string;
begin
  if s='��' then
begin
  result:='��Ϊ���ǣ������ǿ�������������Իʼ�ʡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���ӻ��ã���֮�¸����������ۣ��������С����Ҿ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���֣��ײ��ɾӡ�ת��񸣣���ֹ��Σ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ɵ¾ͣ����첻�ԡ�������ϣ��Ḹ��ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ʊܶ񣬸�»���档���б���������Σ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܻ�������������š��㿷���㣬�Ƕ����ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����谣�ִ�޼������������ݣ�ӦƸ���ء�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��ˮǱ�䣬ʹʯ��ס����ر��죬��Ϸ���֡��þ���Ը����־���֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�پ��ౣ����֮�޾̡����ⲻ�ã�ʹ���ںޡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='��Ԫ���T�����γ��š�С����Ц�������ǻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������ڣ�Ϊ���������������У����Ƽ�ϲ��';
  exit;
end;
if s='��̩֮' then
begin
  result:='�в��绹��ֱ���������������ˣ����԰�����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�ڹ��߾ۣ�������֡�������ͷ���꾪��ȥ�������Ծӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ҹ����㣬�������������ı������ɸ��Ҹ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�����ڣ������縫�����ƺ��������̾��á�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��ɽ֮�����������ڡ��������ݣ�����Ϊ�ӡ�����������ܴ��졣';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Ů�˼ҡ��ܸ����꣬��Ϊ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��^�Ƹ�������Σ���������ҵ£�ת��Ϊ������Σ������';
  exit;
end;
if s='��֮��' then
begin
  result:='Գ���ľ�����b���㡣���ҽ��񣬻������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���磬Ң˴���ӡ����Դ������Ұ�ҡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ä���㲡���С�������ĺ���������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ʢ������ʥï�����ʵ´�¡��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ʵ��������Ϣ������ɾͣ�������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͳ����������й⡣��ת��Ϣ����Ϊ�ʿ���';
  exit;
end;
if s='��֮����' then
begin
  result:='��˥�ϼ���������¡�������⣬������������ҵ������Ϻ������';
  exit;
end;
if s='��֮����' then
begin
  result:='����δ�ѣ����¸��𡣼����Ϳ࣬������ֹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ұ���������ʳ�����ڿ���Ī��ͬ����';
  exit;
end;
if s='��֮���' then
begin
  result:='��ʥ���������䡣��Զ�ߣ���ɱ�������δϢ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ƶ���ң�ʹ���з����������򣬶�ô󠙡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���⣨���飩�����飩����׹�߱���������������û���档';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʵ�£��±����硣Ů�����ɣ�˿������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�ɰأ���ï���䡣����ֹ�����件�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ʧ�����ѣ���ż���ߡ�����ʧ�ã�����ɥ����';
  exit;
end;
if s='��֮��׳' then
begin
  result:='̫�Ҽ��򣬴������������弾����Ϊ³�';
  exit;
end;
if s='��֮��' then
begin
  result:='˫���ɣ����鵾�أ���������Ϊʸ���䣬�������ܡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ӹ�ƽ�����°������������֣�����������';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ϊ�����ƹ��������粮��ʦ�������޶���';
  exit;
end;
if s='��֮�' then
begin
  result:='Ұ��ɽȵ������������������ɢ������ʤ�͡�';
  exit;
end;
if s='��֮�' then
begin
  result:='����˾����������¡����˶赡����Ϊ�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʿ��ȥ���Ұ��ִ˳�Դ��������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ǣ�֣����Ц����輾�裬������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�㳲ȥ�ң��Ϲ����������ܸ�����ĸ��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɵ��ˣ�������͡�������֫����ȥĪ�ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ����������Ϊĸ���������֣��������ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ƿ�ֹ_�������ڵ������䴩�ܣ�����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŧ�ý⣬�ǲ�Ϊ����ʳ�����ң��ܸ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='������⣬�׳��ܲء����겻�У����Ի��硣';
  exit;
end;
if s='��֮��' then
begin
  result:='�ſڽ��࣬����������ȥ��������������ԩ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�㱴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ױ��ӣ����ߺξ̡��ҼҾ��ڣ���ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ɽ�����������š������ʵ£���Ϊ�Ҹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���۲��ݣ�������ʱ��ţ����ֺ����ΣΪ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������棬ɽ��ϣ�С���ǧʯ�򣬹󲻿ɷ���';
  exit;
end;
if s='��֮����' then
begin
  result:='���ű��У�ʧ�䳤�֡����ٲ��ң�����ɢ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Ϊ������������飬ȥ����ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ķ����ɣ���̲������ǲ���Ц��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ſڽ��࣬��Ϊ��ĸ�������ܻ����������⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='��ڽ��ͣ��������š����岻��������Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ȣ�ڽ�Ů����ӭ�¸����������ţ�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����԰���Ż���ג��η���Ϣ�����޻�����';
  exit;
end;
if s='��֮����' then
begin
  result:='��檾ݻ���γ����֪��Ů�����ɣ��������¡�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����¹⣬ʹ��������������ʥ����ʦ�Բ���';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���ڼ�Ů��Ϊ������ׯ�����ݣ�������ĸ�����ھ�ʦ��������ϲ��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��򡶫�ӣ����ٵ��p���ճ���������Ϊ�����';
  exit;
end;

end;

function tongren(const s: string):string;
begin
if s='ͬ��' then
begin
  result:='����ɽ�ۣ��������С�ʾ�����ã����´󻶡�';
  exit;
end;
if s='ͬ��֮Ǭ' then
begin
  result:='һ�����֣������ڿڡ�Ī��Ϊ�ã���������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�¹������������ӣ������޻ڡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='��������������Ǳ����������������ݵ��͡�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���l�堙���������С�������󣬾���������Ϊ��������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�Ƶ۳��Σ�������������̩ɽ���Ϲ���³�������ϲ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='��Σ����������������������¹���������á�';
  exit;
end;
if s='ͬ��֮ʦ' then
begin
  result:='���а��⣬̫���ܹ����������䣬��Ϊ������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�����ڻ��������ŭ��ս����Ȫ����Ȱ��ߣ��������ס�';
  exit;
end;
if s='ͬ��֮С��' then
begin
  result:='��ʯ��ɽ��������ǰ����ü֮�ǣ�������������˼��̾��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�ܵ¼ȳɣ����᲻�㡣���ϕiĺ�����˥ȥ����ʯ���ӡ�';
  exit;
end;
if s='ͬ��̩֮' then
begin
  result:='���ƴ��꣬�����㡣����ǧ����Ҵ�ĸ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�㱴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='������������ҷ�ʱ��������������ô�����';
  exit;
end;
if s='ͬ��֮ǫ' then
begin
  result:='�������������ҹ������Ҳ�梣���ĸ��á�';
  exit;
end;
if s='ͬ��֮ԥ' then
begin
  result:='������أ������İ���������ƣ�һ����Ը��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�������飬���ҳ��硣������ĺ����������ֹ���ǡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='��������������Ӱ�ӡ��Ӳ�����������ƽ����������衣';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���ŷ껼���븣ΪԹ��������̣������ֶˡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='������أ��������أ������޾̡�';
  exit;
end;
if s='ͬ��֮���' then
begin
  result:='����������������С����մ�ս�����Ʋ�ȱ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���Ѽݣ������������ɽ�����Ѳ��С��е�������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='��ɽ��֥��Ӻ����ݡ���������������Ϊ������ʬ٧ʳ����»������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='������ڣ�Ϊ���󱦡��������У���Ȼ��ϲ��';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='��ţ��ɽ���������ѡ��ҷ���ѩ���ڶ���ǰ���е����������ߵû���';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='����׹磬�Ƽ�Ϣ�ʡ�����ǧ�𣬵�ʩ���ˡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���Iִ�룬����������Ԫʥ���գ��Ḹ���ġ�';
  exit;
end;
if s='ͬ��֮���' then
begin
  result:='���������������볤����ʱ��߯������Ϊ����';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�׵����񣬳����Ĺȡ�������ľ�����������Թ��չ���';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���ѿ��ӣ�Ľ���볯��տ¶֮���������϶��������®���԰���ӡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�ﶬҹ�У������ǳ���������ͨ�������޻���';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�������ӣ����ߺξ̡��ҼҾ��ڣ���ʧ����';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����̩ɽ���������顣���в򻢣�����Σ��';
  exit;
end;
if s='ͬ��֮��׳' then
begin
  result:='��Ŀޫ�ߣ���֪��������ʧ��������ֱΪ������Ϊ����';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='ֲ赱����������ںӡ��ܹ����������������';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='̫��ִ���������񸻡����ҷ��У�������ϲ��';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='�����౳������������������񣬹ȷ����ӡ�';
  exit;
end;
if s='ͬ��֮�' then
begin
  result:='��³���ԣ�ս�����š���Թ���������������';
  exit;
end;
if s='ͬ��֮�' then
begin
  result:='¹�����ݣ��������ѡ�����������������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�������У���΢������ȥ�����أ�Ϊ�¹��䡣';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='÷�ʵ��������������Ų������������ơ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����֮�����������������Ӻ���������á�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='ĵ���������ǻ���⡣�޸����ƣ���Ϊ�����';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�˲�Ȣ�������Ҹ��裬���ֻ�ϲ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����֮�룬������������������������Ϊ�档';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�����«�����������������ߣ��ﮏ���ǡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���p���У���ĺ���ˣ�ʧ�÷�����';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����ˮѨ�����в������������������ౣ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='ɽ�����������Ҿ�·����ǰ���ã������ʴ���';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����������Ѫ��Ư�ơ��ǹ����飬��޼������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����ǽ�磬־�����͡���ͤ��ʳ�����ӵ�ͷ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�����޳������п�ɣ��ƾ�˷��ƣ�ΪҢ������';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����ҡβ�����ƴ�ˮ������Ϊ½��������𢡣';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='���p���棬��ĺţ�ա���ٺ��ã�ʧ�����ơ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='���˾��У�����󠙡����ϲ��㣬ٻ������������֮������ʧ�Ұ';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����������봦�ҡ���ʥ�������������ۡ��˺�������ʱ����̣���Ϊ��ĸ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='�˷��ɺ����������������棬���۾��ڡ�';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='��Ŀ��������������帣���ã�����ͬ����';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='Ȣ�ڽ�������ӭ�¸����������ţ�������ϲ��';
  exit;
end;
if s='ͬ��֮��' then
begin
  result:='����Ϊ�������Ҽ�𣡣���������������á�';
  exit;
end;
if s='ͬ��֮����' then
begin
  result:='���ѵߵ���Ϊ���������ɾͶ��ܣ�������ݡ�';
  exit;
end;
if s='ͬ��֮С��' then
begin
  result:='���＾�ӣ�����Ϊ�ѡ������Ƴϣ���ߪ���١�';
  exit;
end;
if s='ͬ��֮�ȼ�' then
begin
  result:='ӻȪ���������в�������Ϊ�������ܻ��������������';
  exit;
end;
if s='ͬ��֮δ��' then
begin
  result:='ɣ����֬�����ڲ��ˡ������޳���ʹ�Ŀ�����';
  exit;
end;

end;


function dayou(const s: string):string;
begin
if s='����' then
begin
  result:='�׻�������������������ȸǰ�����޵�˵�ǡ������������赶�����';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='��ɽ̫�У����ڿ�ɣ����ɳ��ʯ��ţ����ʳ��';
  exit;
end;
if s='����֮��' then
begin
  result:='��ľ��֦����ĸ���룬������֪��';
  exit;
end;
if s='����֮��' then
begin
  result:='�g�g���ԣ�Ī����ԫ�����ּ�̣����Գ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='��÷��׹����˼�㴡��������������һ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='�����󡣿�����ҡ�������������Σ����';
  exit;
end;
if s='����֮��' then
begin
  result:='����ɽ�磬¹�����ԡ���ʸ���ţ��Ϊ���ܣ�������������ƽԭ���������ݡ�';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='����������������⡣��λ���ߣ�������ˡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ӳ��ڣ������޹����������ǡ�';
  exit;
end;
if s='����֮С��' then
begin
  result:='һ�Ұ��ӣ�ͬ����ĸ��������������ֲ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ã��������С�̰�����飬�������С������ڹˣ����Ӻξ̡�';
  exit;
end;
if s='����̩֮' then
begin
  result:='��Ϊ�����������ء��Խ���⣬������������˴Ϊ�Σ�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='Ǭ����£������޼���Ż�����죬ʹ���Եá�';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='�Ϲ�ʢï��������ơ��������ϣ����Ҽ��ѡ�';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='������ˮ������ȼ�������޻���';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='��������������Ϣ��ս��ƽ½��Ϊ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������飬����ɦͷ��������ҹ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������ʹ���ԡ��������ǣ���Ӧ���š��븣���ã����°�����';
  exit;
end;
if s='����֮��' then
begin
  result:='��˥�ϼ���������¡�������⣬����������';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ϳ����������̫�ҡ��������������ޱ��';
  exit;
end;
if s='����֮���' then
begin
  result:='������죬�������֡����Ծ�ֹ�����˻񸣡�';
  exit;
end;
if s='����֮��' then
begin
  result:='���ڷ�ʸ�����ɾ÷š������Ⱥ��������ɥ�����˰�ʫ���Ը���ǡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���Ŵ󲽣����ֶ��衣��ĸ��Ϊ���ǳܡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��֮���ȣ���â���ǡ��������У�����̫΢�������񴲣������乫��';
  exit;
end;
if s='����֮����' then
begin
  result:='������ǣ����ǲ��ˡ�η����Ϣ�����޻��ꡣ';
  exit;
end;
if s='����֮����' then
begin
  result:='�������������¹���������ʳ���ܸ����';
  exit;
end;
if s='����֮��' then
begin
  result:='����δ����Ϲ����򡣳���Ϊ�ң����ţ��������ӡ�';
  exit;
end;
if s='����֮���' then
begin
  result:='������֦�����ӷ��롣����Ī��������������';
  exit;
end;
if s='����֮��' then
begin
  result:='��ؾ��أ�Ң˴���С����ڴ��ѣ�����ƽ����';
  exit;
end;
if s='����֮��' then
begin
  result:='���p�����������������ĵ²�����»���ɡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���������Ϊ�˹�Ц����˾���������Ҹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='��ᷨ�飬������̨�������������������֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='���վ����֮ƽ�硣�Ի�ʧ������֪������';
  exit;
end;
if s='����֮��׳' then
begin
  result:='�����꣬Ϊ�����������z������������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ߣ����ڹȿڡ�������ʤ���������¡�';
  exit;
end;
if s='����֮����' then
begin
  result:='����֮�⣬�ܵ�֮�ӡ�������棬�����׾̡�';
  exit;
end;
if s='����֮����' then
begin
  result:='�����£��Խ��󸣡������Ҵϣ�����������';
  exit;
end;
if s='����֮�' then
begin
  result:='���Ҳ���������Ϊ������ֹ�޹����������ǡ��˵�ȫ�꣬����������';
  exit;
end;
if s='����֮�' then
begin
  result:='�������ݣ�����ĸ�ӡ����л��������������';
  exit;
end;
if s='����֮��' then
begin
  result:='��ϲ�Ӹ�������ެϢ�������еá�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����գ������ҹ����������������θ���';
  exit;
end;
if s='����֮��' then
begin
  result:='������ä����露����������������ʧ�䳣��';
  exit;
end;
if s='����֮��' then
begin
  result:='����������ί�����������ҷ��䣬�˵����磬���ڼβ֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='������·���Ĳ���Ľ�������ުo�������Ҽҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ȸ����ʳ�����ż��Ρ��������£�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='Ұ�л��ף���˼�ȡ�������ǻ���ĺ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮�£����߳�ʳ��²����˵��Ϊ���󸣡�';
  exit;
end;
if s='����֮��' then
begin
  result:='���봺�ɣ��±�����������ʧ�����������أ�����Ϊ�̡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�󱧽����ҵ����㡣��ӯ����������������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������㣬�������衣������ã���Ϊʹű��';
  exit;
end;
if s='����֮��' then
begin
  result:='������Ǩ����ȥ���ܡ�������䣬�ֵó�����';
  exit;
end;
if s='����֮��' then
begin
  result:='�������Σ��ײ��ɾӡ�ת��񸣣���ֹ��Σ��';
  exit;
end;
if s='����֮��' then
begin
  result:='����īī����֪�׺ڡ��������ţ�����������Ȯ������������ʧ����';
  exit;
end;
if s='����֮����' then
begin
  result:='�������ƣ���ˮΪլ��������ͣ���־���֡�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='�����޼�������ǧ�ڡ�������������̲��㡣';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ˣ��������顣�����͵����������ꡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='��֮���磬Ң˴���ӡ����Դ������Ұ�ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ӭ����֮���ڡ�����Ϊ�ڣ��븣Цϲ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�Ƶ��²ģ��������ܡ����ܴ�������Ϊ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�븣��������ˮ���������ֻ���';
  exit;
end;
if s='����֮����' then
begin
  result:='η��Ǳ������ʱ���ѡ������գ�Ϊ��������';
  exit;
end;
if s='����֮С��' then
begin
  result:='�����ٹ⣬�����������������ã��븣Ϊ�֡�';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='��ͷ��Ŀ�����ܼθ�����ȸ��������»�ഥ��';
  exit;
end;
if s='����֮δ��' then
begin
  result:='�F����ɽ��������ࡣ���°��ѣ����ȶ��������ɿ��£�����Ī����';
  exit;
end;

end;


function qianxu(const s: string):string;
begin
if s='ǫ' then
begin
  result:='�����޲�����ͷ��ʹ������ʧ�ģ�����ͽ�ӡ�';
  exit;
end;
if s='ǫ֮Ǭ' then
begin
  result:='����ȣ���ڤ���ҡ�������ʵ�����޳��¡�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�����Ϲ����¹����С����ͽ��£����ܴ󸣡�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='������⣬������������ĸ���ʣ�������ҵ��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�±����ϣ��������á���Ӥ��ͷ���������档';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����������Ծ��ܷɡ�������֣�Ϊ�����ۡ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�侮���񣬷Ǻ��ϱ����������裬�������á�';
  exit;
end;
if s='ǫ֮ʦ' then
begin
  result:='������쯣��������������ž߾٣�������ϲ��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��Ϣ���ӣ�����®���������ʹ�����ݡ�';
  exit;
end;
if s='ǫ֮С��' then
begin
  result:='���ӻ�������֮���С������ܸ������Ҹ��С�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='ͬ����Ҷ�������е¡�����Ľ�壬���������';
  exit;
end;
if s='ǫ̩֮' then
begin
  result:='�׺����飬ҹʳΪ�������ҵ��������ܹ��١�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����Σ�ѣ��Ѷ�ȥ�����븣ϲ�ţ���������';
  exit;
end;
if s='ǫ֮ͬ��' then
begin
  result:='���̼Ⱥͣ��������档������ţ������Ի���';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='���������λ����������˳���Գ��ʹ���';
  exit;
end;
if s='ǫ֮ԥ' then
begin
  result:='���ӻ�������֮�¸����������ۣ��������С����Ҿ��ӡ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='˫���ɣ����鵾�ء���������Ϊʸ���䣬�������ܡ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�����弾����ĺ���¡��I��ʧ����ɥ�ұ��ң���ȴ������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�������棬��˥�����������У�����޾̡�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�ݶ����࣬˳�����ǡ����ֲ��ӡ�';
  exit;
end;
if s='ǫ֮���' then
begin
  result:='��ʦ������ս����Ұ������ƽ����������ϲ��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='ʮ�ưٳ�������ĸ�㡣����������˭��Ϊ�¡�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='���Ų����������ࡣӵ��������ս����³��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��ɽ�F�죬�������������޹�������Ϊ��';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='�ٴ����������в�ֹ��������Զ���޲����ߡ�';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='Ŀ���ɺϣ�����ҡ�㡣���Σ�壬ȥ�����';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����ȵ�٣����ٶ���������ͥ�ᣬΪ����󡣷���Ӣ�����ĸ����';
  exit;
end;
if s='ǫ֮���' then
begin
  result:='��ɽ���棬�������ۡ���������ӯ�ҿ�_��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='���}���{��ʳ�����Ρ�ʧ��Զ��ʵ�����ġ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����Ƥ����ӳ������������£��Ժ������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��³���ԣ�ս�����š���Թ�»�������������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�������꣬Ϳ�����ʡ�������ֹ���п����С�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��ȸ��֬������С֦��ҡ��������Ϊ���������ĺ����������Ǵ�Σ��';
  exit;
end;
if s='ǫ֮��׳' then
begin
  result:='�������֣��׻��������������֡�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='������������ĸ���š��������������빲�ԡ�';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='��Ϻȥ�������ڿ�������۰����������ڡ��ϱ���Զ�����ٳɼ���';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='���������������ĺ�����ȥ���꣬ϲ����ĸ��';
  exit;
end;
if s='ǫ֮�' then
begin
  result:='�꼢���꣬Ű�����񡣸�Ϫ��ɽ���س���Թ��';
  exit;
end;
if s='ǫ֮�' then
begin
  result:='��Ŀ��ͫ��ƫ�ӹ�����ʮ��֮�⣬��֪�ι���';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��󥻶ϲ����ľ��ï���ٹ�ެ�㣬�������С�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�������磬�������ȡ�������磬���ϰ��١�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����ڌڌ����Ȯ��զ���۴��뼣�Ϊӥ����';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='������������Ů�˼ҡ��ܸ����꣬��Ϊ�����';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='ɽʯ��ף��������䡣�������ģ��������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='ˮ���������Ϊ��������ג���������Ҽҡ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�����������װ�Ԫ��������أ�˳ʱʩ�������󳤴档';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����Ľ�£������ҹ����ľ��콵��ͬ�ܸ��¡�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����ɽͷ���ɵ����Ρ����Ծ�ֹ�����޾��ǡ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�r��㳲������ƽ�ݡ�����ױ�������έ«�����Ҽ�����˼��ʳ���';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����ǰ�㣬��ı�ѱ���Ϊ������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='���¿����������޻󡣳�������������̡��˵���Ը��������ӡ�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�ղ�ע�������鲻�����Ź�ף�����۸���ȥ��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��ҹ���գ���Ϊ����������տݣ����ڱ�½��';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='צ��֮ʿ��Թ������ת���ڼ����˲���ĸ��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�ݹ����ã����ó������aü��ָ����ͷ��ȥ��';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��ݷ��Ů��Ϊ�����󡣹�����ӣ�ĸ���ĺ���';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='������������ϳ��硣������ĺ��������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='�������ԣ����������������Ǻޣ�����������';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='��¹ɽ�ۣ���ȥ������άа�ϱ������󲻵á�';
  exit;
end;
if s='ǫ֮��' then
begin
  result:='����ϵ�꣬Ϊ�����С���ĸף�����������֣�ͻȻ������';
  exit;
end;
if s='ǫ֮����' then
begin
  result:='���������Ϸɽ�ȡ��������ͣ��Ե�������';
  exit;
end;
if s='ǫ֮С��' then
begin
  result:='÷�ʵ��������������Ҳ������������ơ�';
  exit;
end;
if s='ǫ֮�ȼ�' then
begin
  result:='���Ҳ���������δ�͡��������ã�Ȯ�p���á�';
  exit;
end;
if s='ǫ֮δ��' then
begin
  result:='ǧ���������ղ��㽩�����Ǹ�ʥ������������';
  exit;
end;

end;

function yu(const s: string):string;
begin
if s='ԥ' then
begin
  result:='������ɢ�����㇇�������г�Ů�����Ի�ͬ������ʥ�ˡ�';
  exit;
end;
if s='ԥ֮Ǭ' then
begin
  result:='������ɽ������ˮȪ�������ɣ��ڲ����ԡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�̺����������������ʱ���£�˼�����';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�Ķ��h�������̨����ʥ�������������ǡ�������祣�Ϊ���ۺ';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��ᷨ�飬������̨�������������������֡�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='ձ����������������������ң����Ҷ��ء�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�������꣬�����޸���ǿ�����������ð�����';
  exit;
end;
if s='ԥ֮ʦ' then
begin
  result:='�Ƚ��ҵ���������ȥ��ʵ�����У�������޻��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='������ʳ��Ϊ������������ţ��ܾ̳�����Ԫ���԰���';
  exit;
end;
if s='ԥ֮С��' then
begin
  result:='����ҹ�أ��������С���Ϊ�Ὤ�����W������';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='����׹�䣬������������٣����¸�󼡣';
  exit;
end;
if s='ԥ̩֮' then
begin
  result:='���㲻������Զ�С��������ܣ�����ʧʱ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='������ĸ���˼��޾̡�����֮�������Գ��á�';
  exit;
end;
if s='ԥ֮ͬ��' then
begin
  result:='�������ң��Ŷ��Ҳ����˲��ɵá�';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='���Iִ�룬����������Ԫʥ���գ��Ḹ���ġ�';
  exit;
end;
if s='ԥ֮ǫ' then
begin
  result:='����Ϊ�������Ҽ�𣡣���������������á�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='���ڸ��ڣ�ɽ��Ϊ����������ǽ�����������';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��֥���ƣ���ʳ��Ӣ��������ͨ���������ס�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='һ�����ģ���̲����Ϊ�޹������²��ɡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='ʮ�����̣���ɢ�ķ֡������������ղ�������';
  exit;
end;
if s='ԥ֮���' then
begin
  result:='�Ź����󣬾���ɽ�������з�����˭�Һ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='Ȫ����ߣ���ĸ���ʡ��������������˵��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='Ұ�ɽȵ������������������ɢ������ʤ�͡�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�����ߣ����»��š������������깫���ܡ�';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='�Ƶ�����������ʥ�ϡ����ܴ󸣣����¿�ƽ��';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='�ᳵ�^�棬�Y�籩�𡣷��Ҽ�����������衣�����ӣ����޺��ܡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='Ο�߳�������֣���ף���ʳ���';
  exit;
end;
if s='ԥ֮���' then
begin
  result:='��ˮǱ�䣬ʹʯ��ס����ر��죬��Ϸ���֡��þ���������־���֡�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='������®������ǰ�������ǲ�Σ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�³����䣬��֪��������ָ������δ�ñ㰲��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�����ĺ�����ʱ���¡�������ͣ����Ǵ�Σ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�Ķ�޻ڣ�����Ϊ�֡������ұ�������ɶ����˲��á�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��Ůȥ����˼���ǡ�����������ʹ���ĳ';
  exit;
end;
if s='ԥ֮��׳' then
begin
  result:='��ʱ���飬���ۿ౯���ǻ������������롣';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='ȵ�����������䴦���������£��������ӡ�';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='�׵����飬���ڶ�������ŭ׷�󡣹���֮�棬�����ټ���ʹ�����ǡ�';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='���౳�������������������ׯ�����ӡ�';
  exit;
end;
if s='ԥ֮�' then
begin
  result:='�����²���Ȥ��ͬ�ᡣ�޷�Ŀ������ʧλ��';
  exit;
end;
if s='ԥ֮�' then
begin
  result:='������Ů���������ߡ�����ʧ�򣬸������ӡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�ܵ¼ȳɣ����᲻�㡣̫�׶������Ĺ�������';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='����Ϊ�У������ʱ����������У�������ϲ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='ͯ檶��ޣ���Ůδ�ң��������á�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='���Ը��ɣ��������㡣�����׻���������֮��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='ţ��ͬ�ۣ���������������Ϊ�飬�������ӡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��ԭ���ģ��Դ���ʳ���������ѣ�������';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='������ʵ���ﲻ�ɸ�������޾ƣ��������ꡣ';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��Ӭ��ެ�������Ų����������ң��������ˡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='���긲�ߣ����˳�����Ϊ���ǡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�̷��ٿܣ���������������Ӧ���������������ѱ��أ����˲�ʤ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��ԥ���Σ�������ҡ������ټ������Բ�����';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='����������֮��ʱ���������棬�����Ҿԡ��ۼ����룬���޼��ڡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='������ͨ����Ң��ꡣ������´���������ˡ�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='���þ��ߣ�����ں��p���ܽ���ʧ�ŹѴ���';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='���в�Զ����˼�������Ķ�η������ֹ�ᡣ';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='���Ʒ�ʹ����ɽ��Т���ĺ���ϲ���������١�';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='��ɽ��𷣬���]��֬�������Ը���ظ�ΡΡ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�ǽ����ã����Ḹ�֡�����ҽ����븣��ӭ��';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='������Ѩ����ʧ��ڡ����˽��ϣ����븴�롣';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�̳����ߣ�������ͷ���ļ����飬����������';
  exit;
end;
if s='ԥ֮��' then
begin
  result:='�������ã����η��衣��ʩ���У��������ˡ�';
  exit;
end;
if s='ԥ֮����' then
begin
  result:='�����죬ִ���ڽ������б��飬��·��֮';
  exit;
end;
if s='ԥ֮С��' then
begin
  result:='���ʵ�����ѽ������ʵ����ˣ�����ܸ���';
  exit;
end;
if s='ԥ֮�ȼ�' then
begin
  result:='������ڣ�ս�ڶ������츨�е£��ܻ�Ϊ�ǡ�';
  exit;
end;
if s='ԥ֮δ��' then
begin
  result:='��н���룬�����ɵߡ����������������ķ֡�';
  exit;
end;


end;

function shui(const s: string):string;
begin
if s='��' then
begin
  result:='����������ӭ��Ⱥ�¡�����������������ר���շ�������';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��Ŀ�״�����֪������������£�ʧ���λ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ศ������ϲ�衣�������£����Ҹ��С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������á���ӯ���������簽�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ʯ�ഥ���������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ჿ���������ߡ������޷򣬲�����®��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ǣ���ȥ���顣�׶��У���ϲ��ꡣ';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�屴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='ͬ�ع��ߣ��е���ȥ��ɥ��Ԫ�򣬶���¾ӡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�ܳ������֮�ι������ʧʱ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='Ŀ���Ļ��ļ��ڲࡣ�깫�ߵ����׳��ҹ���';
  exit;
end;
if s='��̩֮' then
begin
  result:='��𯵯ȵ������ɽ�����辡��ĺ��ʧ���޵á�';
  exit;
end;
if s='��֮��' then
begin
  result:='¹�����ӣ���®֮��Ʋ������̰������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='���㱫�ң�������Ϣ����ɽ��Ϳ���������㡣';
  exit;
end;
if s='��֮����' then
begin
  result:='���ư�֦������˥΢������������������ӡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�������ģ�������������ܸ�����ʧ������';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='������̣�����ެʢ����ϲӯ�������޻��ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�߱ɲ��ʣ�������Ұ����˳ɹ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�|�����飬����ˮ�ʡ������ᣬ���ɺӺ���';
  exit;
end;
if s='��֮��' then
begin
  result:='־����ͬ��������ӡ��������ţ�������ϲ��';
  exit;
end;
if s='��֮���' then
begin
  result:='�����򲵣��������ݡ��������ˣ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='̫����������ŵ���������������ð�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���켺������ʱת�С���ʧ���ģ����Ұ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��Υ���ʹ�����䡣��ʦϮս�����ښ��ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='é�㱾�ӣ�������Ͷ��ԸĽȺ�ã������䳲��';
  exit;
end;
if s='��֮����' then
begin
  result:='�����弾����ĺ���¡�����ʧ����ɥ�䱴�ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Σ��������ǡ��U�ᱼ�ߣ��������㡣';
  exit;
end;
if s='��֮���' then
begin
  result:='ȸĿ��򪣬η���޹⡣˼�ҽ�ͯ�������ӳ䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�밵�����������й⡣��ת��Ϣ�������ʿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʤ˽�飬������Ӥ�����ҳ��£��������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬���������ܸ����أ�����ެ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�뽪���ӣ��������֡�ʵ����棬��Ϊ�ƺ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޻������밲ȫ�������件���������ꡣ';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�����ĵ£������´������Ӻ�࣬���ܴ󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������Ϲ�ι�����򲲻󧣬�������ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ڸ��ߣ�����Ϊ�衣С�˳�Ⱥ���������ס�';
  exit;
end;
if s='��֮����' then
begin
  result:='ˮ����ĸ���������顣���֮ʿ���Ӹ߶�����';
  exit;
end;
if s='��֮�' then
begin
  result:='������Ů��Ϊ����������˳���꣬�˷����ӡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�������죬�����ǳ�����Сʧ�󣬸������⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޲�����ͷ��ʹ������ʧ�ģ�����ͽ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ʹ�����ң����ޱ��ޡ��Ҳ��ݳ��������·���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȩ���룬��ҹ�ǻ��������¹⣬�������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڰף������ҹ�������ʧ���������Ի�';
  exit;
end;
if s='��֮��' then
begin
  result:='�¾�������ֿ�Ϊ�ߡ����˲��ˣ��ٸ���ȡ�������ڵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȸ��é���������顣�ֵ����ˣ�毺�Т㩡����Ļ������������֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǽ����ߣ��������Ρ��ϴ�ɢ�ᣬ������ǿ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ż��á�����̿�ң�������Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��^�Ƹ�������Σ���������ҵ£�ת��Ϊ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ؽ𷷹����������ߡ�����Ԩ�ף�����Ϊ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ԩ�Ӹ�ƽ�����Ұ������ǻ����������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�꼧��ϲ�������ı�����ҹ��ӣ�������Т���������ˣ��ض����ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�l�򲻵���Ѫ���޸���Ůִ�տ𣬲��ò�ɣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����԰���Ż���ג��η���Ϣ�����޻�����';
  exit;
end;
if s='��֮����' then
begin
  result:='�������������Զ�䡣������࣬��֪��Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ڲ���Ը��������Ů�����ͺ񮣬˭�����ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ߣ�����س������ҷ긣��������';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ���������Ϊ�������컶����������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ĳ�ͬ������������������ʼ��Ī�����ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������񲻳����������ƣ�ʧ���ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������֣�Զʪ�Ѵ���ˮ����ͬ��˼����档';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮Σ�����ڻ����̫�׻��ԣ�Խ�����档';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����\𣚣ִһ���ȡ��������Σ�������ϲ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='������ѣ������¾ӣ�����Ȯ�͡��޸������������������ࡣ';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��������������޲⡣��λ�߱�����»������';
  exit;
end;

end;

function guo(const s: string):string;
begin
if s='��' then
begin
  result:='����������һתΪ�١������ĺ��������Ѷ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='������Ŀ�����ܸ��졣���кþ���������ӭ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ĺƫ�Ρ�������������˥��λ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������գ�������Ŀ��˾��������ƽ��û�ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ں��磬�������������ﵥ�У�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='ִ����£���Σ�������Ӿ��̻���������ԫ���ͺ�δ�ã����޴�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ҽң����Ƴ����������ã�����˥�ǡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���˹�·������������ǧ��֮�⣬����֪����';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ӱ��������Ʊ��չ⡣�����Ӷ���֣�����ˡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='���Ǻ�ϲ���븣Ϊ�С���٫�г£��������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ͯ檶��ޣ���Ůδ�ң��������á�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������������Ʒ�ı������ǽ�ݣ�Ϊ����ʶ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ǣ�����˥΢���ϸ����죬���lΪ�ࡣ';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='����ɱţ�������ʱ���������գ��������档';
  exit;
end;
if s='��֮����' then
begin
  result:='�ն�ҹ����»�����⡣���븸ĸ��������ˡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����ĭ�磬����ɣ�С�ʧ�ڲ��ᣬ��˼���硣';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�����޹⣬ҹ��������ڤ�ֿմ�����Ҷ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ֺ���������ι������Ҳ�梣������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='����˳ʱ���������档���ֲ��ӣ����о��ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ҷ仧��������㡣���ɽ�ȡ��Ϊ�Ầ�̡�';
  exit;
end;
if s='��֮���' then
begin
  result:='������꣬���ζ��롣�����ò����ż����¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ת����ɽ����ʧ���ġ�������ŭ��������Ӥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�򳦾��ӣ�������ǰ��ֹ������������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='�E�X��࣬�������Ů�˺��У�����������';
  exit;
end;
if s='��֮����' then
begin
  result:='��»���죬�Ҷ�����¹������˼����ۡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��������������ص����ò����գ�ʹ����㨡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ӿ�ϣ�ˮŭӻԾ���������ݣ�������ʳ��';
  exit;
end;
if s='��֮���' then
begin
  result:='ð��ҹ�У���鶼�ǡ����า�㣬�������ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ߣ�����ä΢�������룣��Ɯ��S�롣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϸɣ�������Ϣ��ת����ͣ�ǧ�ﲻ˥��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱʧ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ķ�޻ڣ�����Ϊ�֡������ұ�������ɶ����˲��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����϶��ʱ���ٵá��Ḹ��ʥ��ϵ����ʳ��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='����Ϊ����Ů��Ϊ�С��ε���ͨ��������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Դ�ڣ����в�ֹ�������������񲻰�����ĸ����ӣ�������ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='��ˉ�ɼ���������ʵ������������ʹ��������';
  exit;
end;
if s='��֮����' then
begin
  result:='���޳�����̫��������������������Ϊ����';
  exit;
end;
if s='��֮�' then
begin
  result:='��ֳ�ӯ������ެʢ���������١�';
  exit;
end;
if s='��֮�' then
begin
  result:='ִʈ������Ϊ�������������޹⣬�������ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�񷴹ʳ��������Ҽҡ���ƽ������������͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ڹ��أ���Ȯ���С�����ԹŮ���������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ײ���������¡��ľ����ԣ������ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����϶�����¶˪����������ͥ��Ʒ�ﲻ������Ȯҹ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ķ�޻ڣ����ż��֡��������㣬�����ɶ���ĸΪý�����󲻵á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ǿ�����ղ�ͨ��С��ג�ϣ�̰���ܿա�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ�Ϊ�������߲���ʳ���̲���Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��棾��٣������뽪������Ӫ�𣬰��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����գ������ҹ����������������θ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���δ�޴���������ڡ����˹�ְ�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�¹���ã�Ⱥ�۶�����¬�ư׼�������׷�𡣾��`ʮ�ã�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�»ݿ������������£��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮����������ǿ֧���ڿ����У�����Σ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���磬Ң˴���ӡ�����ȫ�����Ұ�ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ȫ������ʮ��������ۨ����ʱ�������ܾ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������磬�����۾ӡ��������Σ��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��ľ��������Ŀ�������������������������������֣���޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='���빱֥���������ǡ�ϲ�־�ӣ�ͬ�丣�ݡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�߸ԣ�������á��������У��������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='��֥��ݣ�������������ʬ٧ʳ����»���¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ҿͣ��������衣Ӣ�����ã���»������';
  exit;
end;
if s='��֮����' then
begin
  result:='��������������С�̰��������������С���ԯ���磬��ϲ�ξ̡�';
  exit;
end;
if s='��֮С��' then
begin
  result:='ִ���볯��������á�Ԫ�ֱ䰲��ɳĮ�Ի���';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='ӿȪ������������������Ϊ�������ܻ��������������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�����������������¡����˶赡����Ϊ�֡�';
  exit;
end;


end;

function lin(const s: string):string;
begin
if s='��' then
begin
  result:='��ˮ֮����������ĸ������֪�ϣ������ౣ������Σ����������ϲ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�ƫG���ӣ�����Ϊĸ����ʦ�ڽ����ݹ����ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ʒ�ʹ����ɽ��Т���ĺ��üΣ��������١�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ز��㣬���ܳ��ԡ����ϲ�ͨ��Ϊ����ԩ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��é���ƣ����װݵ���������ʳ��ʹ���ٿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͫ���飬����Ŀ������Ϊ�ʱ�ʥ��Ԫ����';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ���޴����Ƴǻ��̡������ۣ�������Ϳ��һ�����棬�������ޡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���˾��У��������ҡ�����ʧ�飬����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱת�У���ʧ�䳣���������࣬���޾��ꡣ';
  exit;
end;
if s='��֮С��' then
begin
  result:='��Ů���ۣ�Ϊ�����ǡ������ڲ࣬������Ŀ��ɦ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ﻢ���ܱ����¡�Ϊ����ʹ��������ĸ������Σ����';
  exit;
end;
if s='��̩֮' then
begin
  result:='ԱԹ֮�⣬�������̡���ƽ������������ꡣ����й����������䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�棬�����Ծӡ������ܸ���ʵ���ǹ����������֡�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�ܱ���֪�����²��롣�����໸������԰���';
  exit;
end;
if s='��֮����' then
begin
  result:='��ʮ���ң���Ů���ޡ�����δ�ã��������ܡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='ɢ��ˮ�����紵���硣�����޹⣬�İܻ�����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��͛�䶯��������ż��С���ౣ���̵�������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ּ��ۣ�δ�����š�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����¿ߣ����������������ҹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޼�������ǧ�ڡ�����������������㡣';
  exit;
end;
if s='��֮���' then
begin
  result:='�վ���죬�����ǳ���������ʱ�������͵���';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ӿ�ϣ�ˮŭӻԾ���������ݣ�������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ������¾㡣�������֣�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���裬��»���ڣ�����Σ����';
  exit;
end;
if s='��֮����' then
begin
  result:='������������ҡ���顣������ǣ��������ơ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ֳ���ʧ����ʱ���Ͱ�Ϊ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ɽͷ���ɵ����Ρ����Ծ�ֹ�����޾��ǡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='����ĭ�磬Ҫ��ɣ�С�ʧ�Ų��ᣬ��˼Լ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ڣ�����Ϊ�������ƺ��������̾���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϫ�žΣ���ֲ�Σ������Ц�衣';
  exit;
end;
if s='��֮��' then
begin
  result:='������磬ˮȪΪ����ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�������Ҽ�𣡣�Ｂ���꣬ũ����ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�˰�������ͬʱ��Ľ���ĵ£��������壬����Ӻ����';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������Ů������Ц������¸���������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ƽ���������������ҡ��ں��Է����鹫������';
  exit;
end;
if s='��֮����' then
begin
  result:='��������������ס������죬Ķ�������';
  exit;
end;
if s='��֮����' then
begin
  result:='�����Ժ���ϯ�겻������ΣΪ������ֹ�û���';
  exit;
end;
if s='��֮�' then
begin
  result:='������������岻����ĸ�����ӣ����ɺξ̡�';
  exit;
end;
if s='��֮�' then
begin
  result:='��׾���㣬���ܷ�̴��������ԯ�����߿��ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ศ���������衣�����£����Ҹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ѩ����ʧ��ڡ����˽��ϣ����븴�롣';
  exit;
end;
if s='��֮��' then
begin
  result:='������ҽ���Ͳ����Ρ������������¼���®��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ƣ����ر��š��������أ������ڻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ݣ������������������꣬�������衣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ν�����û��ǧ���Ϊ������������ɣ���������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƶ۳��Σ�������������̩ɽ��������³�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��Σ��ֹ��������ӡ�����ʧ�������ﻢβ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ϴ�������ʧ��Ϣ��������У�ʱ�����䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ͨ��ˮ�����ٴ�˳��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ǧ�����ã������㽩�������ܵ£�ʧ���⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ŀ���������塣�������Զ���Ҽҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ɽ���������Ŀ���������ã�ʹ���ǻ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���֮����һĶǧ�ҡ�������أ������и���';
  exit;
end;
if s='��֮����' then
begin
  result:='�����������ǻ���顣������ɽ���Ҽҷ�ɢ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����J������ʳƼ�ݡ���ңʯ�ţ�ѭɽ���£���ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������Ϊ�������������������丣��';
  exit;
end;
if s='��֮��' then
begin
  result:='�򳦾��ӣ�������ǰ��ֹ������������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='ƶ�����ţ��������衣���򲻾ԣ������ɳ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʳ���ݣ��������á���ʧ�䳣�����޾��ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='������ֹ������Ϊ��������֮�ӣ��͸߶�����';
  exit;
end;
if s='��֮����' then
begin
  result:='ִ��������Ա�������ǧ�����ţ������汰���հ���η��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�к�Ϊ�飬ˮ���޴������ʧ��������������';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�����仯���������ˡ�����˳ͨ����Ϊ������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='���ӵ±���ʧ�䳼檡��ﲻ���ݣ�Ȯ�����á�';
  exit;
end;

end;

function guan(const s: string):string;
begin
if s='��' then
begin
  result:='��ɽ֮�£���˴������������Т�������ĺ���ΪҢ��������λ���ӡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��͛�䶯���������䡣������ӭ���̵��䴦��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������أ�׷���ɿ�����������������ó���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ﶬ̽��������ȵ������ָ��ȥ�������ټ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��檶��ޣ���Ůδ�ң��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������Ǳ����������������ݵ��͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��露������������á��ұۼ��ԣ���ʧ��⡣';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���＾�ӣ�����Т�ѡ������Ƴϣ���ߪ���٣�Ϊ���ɸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ֺ������Ԧ��ǧ�����ϲ��࣬�븣Ϊ�顣�������ף���ȫ�޻���';
  exit;
end;
if s='��֮С��' then
begin
  result:='���ӳɾԣ�����ᳵ�����ؿ��ߣ���ʱʧ�ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������ɡ�������������԰���';
  exit;
end;
if s='��̩֮' then
begin
  result:='�Ƴ�֮�ˣ������ǿ������Ϊ�����Ĺ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ���ʣ����Ҿ����ɽ֮�£����Զ�������ʱ�ڣ���������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��ͷ��Ŀ���������ڡ�����Ϊ�������겻����';
  exit;
end;
if s='��֮����' then
begin
  result:='ɽû�𸡣�½Ϊˮ�㡣��ȸ�޳���������®��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�߸Է�ˣ�������ͩ��ӺӺ�ண��E�E���¡��´ǲ��࣬�Ը�׼Ρ�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='���Ѷ��ޣ��Ƕ����ܣ�Ī��Цʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ٳ��������Ƽҡ���Ӭ�۰ף�������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ů���ޣ��������ߡ�����������������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���޶��������г��顣�����߹飬������������ʧ��ҡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='��֥���ƣ���ʳ��Ӣ��������ͨ���������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ�������ɽ������η�ѣ�����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ������¾㡣�������֣�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='̽�d��󮣬��Ը��ϲ����ֵС�ˣ����Ӿ�忡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�� ���ӣ���Ŀ�ڳ�������ͣ�����Īȡ��';
  exit;
end;
if s='��֮����' then
begin
  result:='ϲŭ��ʱ��˪ѩΪ�֡�����޹�����𢼢����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ȵ�٣����ٶ���������ͥ�ᣬΪ����󡣷���ޤ������»���';
  exit;
end;
if s='��֮���' then
begin
  result:='������գ������Ĺ���Ԫ�������������丣��';
  exit;
end;
if s='��֮��' then
begin
  result:='����c��������ɽ�ڡ�������ʳ������ν������ɸ�����ʱ�ֲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������Цϲ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ���費����Ŀ�����أ���ɦ���㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ٻ�����Ů�˷��ܸ����꣬���з�»��';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӻ���ڱ����������ʡ����ҿ�㣣���ʧλ��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='��־�������������С����ڵ�ǽ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ľ������Զ�֡�����Ϊ������ֹ��ȫ��';
  exit;
end;
if s='��֮����' then
begin
  result:='���ں��磬�������������Σ���ľ������';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ҷ���£������ڵ����ɱ������������Ϳࡣ';
  exit;
end;
if s='��֮�' then
begin
  result:='��ʱ���У�������������Ůʧ�ȣ�������ӡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�������㣬�������衣�����൱����Ϊʹ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������䣬������������٣����¸��C��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޼�������ǧ�ڡ��ɰ�Ϊ������̲��㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='ȥ����ޤ�������ᶾ���ܷ���ӣ��ǻ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ң�յ£������¸�����Ӣ���ۣ����޿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ߣ�����ȿڡ��뻢����Ȳ���ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���а��⣬̫���ܹ����������䣬��Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���˸��ӣ�������Ұ����ң���飬˼�Ҵ�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ƣ��������롣ʤĸ��Ȫ���Ӳ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='�G������������ǰ��������ҹ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£��������ˡ����ϻٳ���ʧ���⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ӣ����ֲ����������޾塣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Żأ��е����ѡ�ֹ�������˶�������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Űʧ����Ϊ�����𡣱��������������ͷ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���U����������������������꣬�����Ӱ';
  exit;
end;
if s='��֮����' then
begin
  result:='ͭ�����࣬��¶�Ϳࡣ�������꣬������Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧ�ˣ�ӯ������������֮ľ��ʢ�߸�˥��';
  exit;
end;
if s='��֮��' then
begin
  result:='÷�ʵ��������������Ų������������ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������㣬ɽͯ���ꡣ��Ů���ʣ�ʹ����顣';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ŷ��飬�Ⱦ�Ϊ�֡��j���¹���ԣ��ز����ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƴ���ɽ���������ѡ�������ĺ���������ۡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���������Ȳ��ɾ١���·�����������Ŀࡣ';
  exit;
end;
if s='��֮С��' then
begin
  result:='���Ҳ���������Ϊ��������ֹ�㣬�޳������˵���ȫ������������';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='����ʦ����Ϣ�Ͱա��۷��ϲ���뻧���ޡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='���²�����������ʱ����ϲμ���������ٹ⡣';
  exit;
end;

end;

function shike(const s: string):string;
begin
if s='���' then
begin
  result:='�����ˣ��������顣�����͵����������ꡣ';
  exit;
end;
if s='���֮Ǭ' then
begin
  result:='������ǣ����Ц���ԡ��������裬������ϲ��';
  exit;
end;
if s='���֮��' then
begin
  result:='���켺������ʱ���С���ʧ���ڣ��̷�������������࣬�������顣';
  exit;
end;
if s='���֮��' then
begin
  result:='����֮�飬��o���ǡ������޹⣬��ֹ���졣';
  exit;
end;
if s='���֮��' then
begin
  result:='ע˹���󣬒I���ٶ������Խ��ϣ�򳲻��󧡣';
  exit;
end;
if s='���֮��' then
begin
  result:='��������������ʢ������ʥï�����ʵ´�¡��';
  exit;
end;
if s='���֮��' then
begin
  result:='���߾��㣬ս�ڹ��������¸���������®�';
  exit;
end;
if s='���֮ʦ' then
begin
  result:='������أ�������ɽ���Ǹ����£��������ѡ����̲�ʳ�����޸��ᡣ';
  exit;
end;
if s='���֮��' then
begin
  result:='ɳĮ����������ˮȪ���������ף��۷����顣';
  exit;
end;
if s='���֮С��' then
begin
  result:='�����������ƴ���顣�����������ǲ�Ϊ����';
  exit;
end;
if s='���֮��' then
begin
  result:='�ǻ����ƣ��������⡣������Ϊ�����Զ��ӡ�';
  exit;
end;
if s='���̩֮' then
begin
  result:='��ҫŭ���������硣������࣬������Ұ�������޾̡�';
  exit;
end;
if s='���֮��' then
begin
  result:='�����������Ҷ��ȥ�������ͣ��������͡�';
  exit;
end;
if s='���֮ͬ��' then
begin
  result:='�밵�����������й⡣ת����Ϣ������������';
  exit;
end;
if s='���֮����' then
begin
  result:='����ɻ䣬���˺�η������޻������Գ��档';
  exit;
end;
if s='���֮ǫ' then
begin
  result:='��ش������Ϲ���������˳���ʹ��Գɡ�';
  exit;
end;
if s='���֮ԥ' then
begin
  result:='���������Ϊ�˹�Ц����˾��������������';
  exit;
end;
if s='���֮��' then
begin
  result:='��ʧ��������ʧ���ң����]��ʳ��';
  exit;
end;
if s='���֮��' then
begin
  result:='��͛�䶯��������ż����С�ౣ���̵�������';
  exit;
end;
if s='���֮��' then
begin
  result:='������®��������ȥ�������ٿ���˾�����������ౣ��';
  exit;
end;
if s='���֮��' then
begin
  result:='���߻�����ϲΪ�Ҹ����׶�������Ǐ��������';
  exit;
end;
if s='���֮��' then
begin
  result:='�ǲ�����ſ����С���Ԩ�͵ߣ���ɱ����';
  exit;
end;
if s='���֮��' then
begin
  result:='�������꣬�������¡������ɾȣ���ۧ���ˡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='��β�O�ߣ�����Ϊ�ӡ�����棬�����Ա�����Ȼ�]Ϣ��';
  exit;
end;
if s='���֮����' then
begin
  result:='����ӤŮ��ǣ�����롣���Ҹ߹󣬷��ü��¡�';
  exit;
end;
if s='���֮����' then
begin
  result:='���ν���������������Ȳ����ˣ��侪������';
  exit;
end;
if s='���֮��' then
begin
  result:='�����Ϣ�����ܸ�ʳ�����Ǽ�ɥ����ҹΪ�ҡ�';
  exit;
end;
if s='���֮���' then
begin
  result:='������ż��ϰ����������Ը���ӣ���˼�Ϳࡣ';
  exit;
end;
if s='���֮��' then
begin
  result:='��ˉ�ɼ���������ʵ������������ʹ��������';
  exit;
end;
if s='���֮��' then
begin
  result:='ȵЦ��裬�����Ҿơ���ϲ�ں����ҹ�Ŧ����ϲ�ſڣ����ݸ���';
  exit;
end;
if s='���֮��' then
begin
  result:='ҡβ���֣������ٳ�����������������Ϊ����';
  exit;
end;
if s='���֮��' then
begin
  result:='�׺����飬ҹʳΪ�����������ף�������ᡣ';
  exit;
end;
if s='���֮��' then
begin
  result:='��ִ��£�ֹ���Ժ١��������£����ֲ�����';
  exit;
end;
if s='���֮��׳' then
begin
  result:='Ȯ�;��������θ�����ڤ�����ɢ�߽⡣';
  exit;
end;
if s='���֮��' then
begin
  result:='������ϲ��������ڡ������յǣ���»������';
  exit;
end;
if s='���֮����' then
begin
  result:='�������d��������ȥ��ѭ֦���£�������������������������ɾȡ�';
  exit;
end;
if s='���֮����' then
begin
  result:='��н��ƣ�ʹý�󸾡��ͺ����Σ�������ϲ��';
  exit;
end;
if s='���֮�' then
begin
  result:='�ڲ��ҹˣ�������Ů�������񮣬˭�����ߡ�';
  exit;
end;
if s='���֮�' then
begin
  result:='Զ���޹⣬��֪��ơ��W��������ʹ�������';
  exit;
end;
if s='���֮��' then
begin
  result:='��������������Ѳ�����������磬�ɸ����ӡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='Զ��ǧ��������ӡ���¦֮���������ڹ⡣';
  exit;
end;
if s='���֮��' then
begin
  result:='�����������_��Ϣ����ʯ��ʩ���¼����ҡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='�Ϲ����ӣ��������á����ҳ�Ů���������롣���ó�ª�����˴�ڡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='ʧٳ���ã����ŵػ�����֪���ڣ���ֹ�޾̡�';
  exit;
end;
if s='���֮��' then
begin
  result:='������Ů����Ŀ�ڳ�������ͬ����ʱ��ż��';
  exit;
end;
if s='���֮��' then
begin
  result:='���ݴ���������������������������ֹ��';
  exit;
end;
if s='���֮��' then
begin
  result:='��Ů���飬��֣��򡣽���������Ϊ��Ц��';
  exit;
end;
if s='���֮��' then
begin
  result:='����̫�ң�������Ϣ������֮�ӣ����ޱ��';
  exit;
end;
if s='���֮��' then
begin
  result:='����Ϊ�꣬ʹ����ͨ�����Ռ��٣���Ȱ��ˡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='������ڣ�����Ϊ����˾�������Բ���ң��ٰ�Ϊ�ǡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='������삣�����������˫�����У�����������';
  exit;
end;
if s='���֮��' then
begin
  result:='�����Չ���������Ϊ�����ˡ������ۣ������չ⡣';
  exit;
end;
if s='���֮��' then
begin
  result:='�H�_��ɣ��γ����֡��ܹ����ͣ���°��ҡ�';
  exit;
end;
if s='���֮����' then
begin
  result:='���ɵ¾ͣ����첻�ԡ�������ϣ��Ḹ��ȥ��';
  exit;
end;
if s='���֮��' then
begin
  result:='һ�����ģ���̲�������޹������²��ɡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='�����ںţ�������ǡ��������£�����������';
  exit;
end;
if s='���֮��' then
begin
  result:='����ɱţ���ۻ������������ˣ���˥���ܡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='�������ϲ�����С�������ˮ��Ȫ�e�����������޾̡�';
  exit;
end;
if s='���֮��' then
begin
  result:='��ȸ��֬������С֦��ҡ��������Ϊ���������������������Ǵ�Σ��';
  exit;
end;
if s='���֮��' then
begin
  result:='����ȥ�򣬷��붫��������η�ܣ����Զ�䡣';
  exit;
end;
if s='���֮����' then
begin
  result:='��Ӣ��ݣ������õ������p��侣���»���¡�';
  exit;
end;
if s='���֮С��' then
begin
  result:='�²�֮�򣬴��߼��ա�������ͨ���ǲ�Ϊ�ס�';
  exit;
end;
if s='���֮�ȼ�' then
begin
  result:='������������Ů�˼ҡ��ܸ����꣬��Ϊ�����';
  exit;
end;
if s='���֮δ��' then
begin
  result:='��а����������񡣷򸾅��磬̩ɽ���ߡ�';
  exit;
end;

end;

function shanhuobi(const s: string):string;
begin
if s='��' then
begin
  result:='����������������ᡣ��ʱ˳�ڣ�����ӡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�˿ھ�ͷ�������Ƽҡ��������ϣ��������档';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ�������ɽ��ȥ���Ҽң�������Ĺ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ճ�������ɽ���������¸����𣬻������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������죬�����ǳ���ԸСʧ�󣬸���ǽ�⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ֲ�ת����ɽ���档����ԯ���������ѣ�����Ц�ԡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ǻ����ʶ�Ⱥ�ۡ����û��ѣ�������ࡣ';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�F����ɽ��������ࡣ���°��ѣ����ȶ������������£�����Ī����';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������㡣������£���Ϊ���衣';
  exit;
end;
if s='��֮С��' then
begin
  result:='�������������������������������Ҷï�١�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ص£�����ެϢ��ƽ����ֱ������󸣡�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�ıϸ�����������ŭ����·��������ȸ������';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ǭ�ķ��衣�������࣬�̵�������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='������������ҹ������Ҳ�梣���ĸ��á�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ĺ���䣬�������ҡ�������䣬�ز��ɵá�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��ȻԶ�̣��ܻ��߸�������������Ա�Ϊ����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='ȵ��ȴ��������ͷĿ�����������������Ը���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬������˪����Ȯҹ�������Ų�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʦ����Ϣ��ƣ���۷��ϲ���뻧���ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������˥�������֦���������������´��P��';
  exit;
end;
if s='��֮��' then
begin
  result:='˳�紵��ǣ����β����Ϊ����������ܸ���';
  exit;
end;
if s='��֮���' then
begin
  result:='���˾��У��������ҡ�����ʧ�飬����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ǽ�磬־�����͡���ͤ��ʳ�����ӵ�ͷ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ����������Ϊĸ���������֣��������ߡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�׵����飬���ڶ�������ŭ׷�󣬹���֮�档�����ټ�����Ϊ���֡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�o�����ˣ����²��졣�J�ӻٳݣ�ʧ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����߷ɣ�������ơ������ڻ����۲������������Ϳ࣬�������';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ָ��̩ɽ֮�¡��������ӣ�������ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ǲ���Σ���������꣬����Ц�衣';
  exit;
end;
if s='��֮��' then
begin
  result:='������У���Σ�ƽ�����ָ���㣬���۵��֡������ҳ���ʧ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ᳵ��ͽ�����䲵ţ����ɥ��ͷ���������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��н��ƣ�ʹý�󸾡��ͺ����Σ�������ϲ��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='ҹ���������������̡��ӷ�Ц��������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ͽ���복��ð����Ϳ�������ݾӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='����ɽ��������Ϊ����һϦ���ߣ����Һ��';
  exit;
end;
if s='��֮����' then
begin
  result:='��ɽ��ɽ�������԰��������������δͬ�á�';
  exit;
end;
if s='��֮�' then
begin
  result:='�����ڳ�������ȥ�����������ǣ�������Ӣ��';
  exit;
end;
if s='��֮�' then
begin
  result:='�����������ɽ�����������ڣ������ɶ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ֮�裬�������ڡ��������ݣ�����Ϊ�ӡ�����������ܴ��졣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ۣ���ˮ���������������������L�L��ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ɻ�ǣ�Ľ���׷����߱ɲ��ʣ��԰�������';
  exit;
end;
if s='��֮��' then
begin
  result:='���봺�ɣ��±�����������ʧ�����������أ�����Ϊ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȫ������ʮ��������ۨ����ʱ�������ܾ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ʵ²������徫���ᡣ�������壬����ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ر�������̰�С���������������Σ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������Ϲ������ӿ������������١�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�£���鱱�����������ã�������ĸ���ʹ��Ҿƣ�Ů����ϲ';
  exit;
end;
if s='��֮��' then
begin
  result:='����ȥ�꣬��������������Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮������˃���档���岻�У������ķ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������«����������������ȥ���ﮏ���ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˸��ӣ�������Ұ����ң���飬˼�Ҵ�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ԣ��ﲻ��ȫ������֮������Ϊ�ҲС�';
  exit;
end;
if s='��֮����' then
begin
  result:='���޲�𣚣�������֡����۾�ã�Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����е£�����Ľ�壬���������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ٳϣ�ǰ����Υ�������ȣ��ﲻ��֪��';
  exit;
end;
if s='��֮��' then
begin
  result:='���Խ�磬����Զ�С��̺����ã��ÿ����롣';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ϲ���������޻󡣳�������������̡��˵���Ը��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʯ��ã�������������������ֻ����ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʥ�ܣ��������ѡ��Ե�֮ͽ���������ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������򣬲������������滢®������ʧ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='������P��������ƣ���۷��㲣�����η����';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='������Ŀ���������塣ʧ�����ã��������ԡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��ڽ��ͣ��������š����岻��������Ϊ����';
  exit;
end;

end;

function bo(const s: string):string;
begin
if s='��' then
begin
  result:='�д���䣬��˾���衣ִ������������������������ϲ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���ع����������������׼ͣ����¸�ʼ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ӷ��ݻ�ݶ֥����������������ʮ�����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ���棬�����ھۡ��������㣬ӯ�ҿ�_��';
  exit;
end;
if s='��֮��' then
begin
  result:='�屴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ωа������Ԫ�򡣻��ĸ�����������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ȥ��ҡ����и��������ɰ��ӡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�¿���ģ�����ʧʱ�������;���ƣ��ɳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����׳���Ϊ�³������Բ����飬��Ի��ţ�����������������';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����𣬷��񾪺������²�ʱ����Ϊ��̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ɽ���������꺮�������ֻ�������������';
  exit;
end;
if s='��̩֮' then
begin
  result:='�ճ�������ɽ���������¸����ģ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ɽ������ˮȪ�������ɣ��ڲ����ԡ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�۴���ˮ�����ں����������ʳ���������ġ�';
  exit;
end;
if s='��֮����' then
begin
  result:='ͥ��ҹ����׷���˽��������ƣ��������塣';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����ͬ�򣬺�����˼��־�㱯���ɫ������';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�׵����飬���ڶ�������ŭ׷�󣬹���֮�档�����ټ�����Ϊ���֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='⨺�ڴ������ط�λ����Ȯ���ͣ��������㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���̵�����Ķ���á��к����꣬�˷粡�¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʥ���������䡣��Զ�ߣ���ɱ����һ�δϢ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸ�ร����»��������֮��⣬�����и���';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ĵ£������´������Ӻ�࣬���ܴ󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʦ����Ϣ��ƣ���۷��ϲ���뻧���ޡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ڼ�Ů��Ϊ������ׯ�����ݣ�������ĸ�����ھ�ʦ��������ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='Σ����ĺ�����󲻵á����󲻽���������߯��';
  exit;
end;
if s='��֮���' then
begin
  result:='�ٴ�������������ֹ��·����Զ���޲����ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������꣬�������롣�������ѣ��������ʣ�������顣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ֱ������Ӱ���������������ƣ���á����벻����Ϊ�����ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������뻢�ҡ���ĸ̰߶��������ţ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���㣬���ⲻ����©�Ұ��ڣ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ���ũ�ùȡ�����Ψ�ã������ٸ���';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�������䣬�����л�˫���ã����Է�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������Ң�¡�����������Ҫ�ı�����';
  exit;
end;
if s='��֮����' then
begin
  result:='������ɽ���ԾƵ������������꣬�Ÿ��޻���';
  exit;
end;
if s='��֮����' then
begin
  result:='��ĺ���䣬�������ҡ�������䣬�ز��ɵá�';
  exit;
end;
if s='��֮�' then
begin
  result:='����Ϊ�������Һ̹ȡ���ƿ���飬������ʳ��';
  exit;
end;
if s='��֮�' then
begin
  result:='����в����ʹ�²�ͨ������Ϊ�꣬��Ȳ��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ԯ������̩ɽ���U��ͬ�����������ѣ����Ц�ԡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����԰���Ż���ג��η���Ϣ�����޻�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ﻪ��ʱ����ʵ��Σ���Ƕ�����������ܷ�������֮�����󲻵á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�߸����ڣ��������١���ˮ������Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȻԶ�̣��ܻ��߸�������������Ա�Ϊ�����������ڣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀʧ�����ն��޹⡣������ҷ���������С��������ԣ����Ī����Ȼ���ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����½�����鲻�������Ͽ��ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ۙG������ϵ֮����Թ����������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ش��ɺ�������ξ̡����Ӿ��ڣ���ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʳ�㣬������߮���ռ��Ҿ����ɸ��������ɲ��ܣ�Ϊ�����á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ͷ���̳����ߣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='ɣ֮���䣬�����Ҷ��ʧ���㵹������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ߴ�����ս�ڹ��������¸������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ѷ�������������ɰ��ʯ�����C���ž�������ʿ���䡣';
  exit;
end;
if s='��֮����' then
begin
  result:='���޲�𣚣�������֡����۾�ã�Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʥ�ศ������ϲ�裬���ָ��С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������С������Ƽ֣��ȵ���������ֹ���������Ϊ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾��У�һ���Ա����������ϣ����岻�á���·�ֵ�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������أ����������������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ϣ��׷����ڡ���ɻ��ң��ּ��ҹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ѣ��������档�Ľڰ��ӣ��������ǡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='϶��ǽ�������ľ�ۡ�����Ϊ�����콵�﷣����ɱ���ģ������ԱС�';
  exit;
end;
if s='��֮С��' then
begin
  result:='����Υ�£���ɽ�����������ã�δ�����á�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�Ķ�η��ʱ���վ塣����С�̣����޴�ڡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='���񼯾ۣ���������Ϲ�Ű�ң����ճ�ࡣ��ʦ����������������';
  exit;
end;

end;

function fu(const s: string):string;
begin
if s='��' then
begin
  result:='��ʦ������������Ұ������ƽ����������ϲ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���为��������������������Ϳ����ʦ�ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�岻ʤ�飬������Ӫ������Σ�����۽Ǵݾ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���}���{��ʳ�����Ρ�ʧ�߰�®��������ӣ��ҼҺ��ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�m�Ȣ������Ŀ����������ģ��벮�౳��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ⶳ���Ӵ���ͨ�������Ӳ�����ߪ�й���';
  exit;
end;
if s='��֮��' then
begin
  result:='������У���Σ�ƽ�����ָ���㣬���۵��֡������ҳ���ʧ��������';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���׻��֣�������ˡ����м��������б�ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ֮�裬�������ڡ��������ݣ�����Ϊ�ӡ�����������ܴ��졣';
  exit;
end;
if s='��֮С��' then
begin
  result:='������������������³��ս������Ȯ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ʮ�����ң���˳�е¡�˪���ȼޣ�����Ϊ�ϡ�������������������';
  exit;
end;
if s='��̩֮' then
begin
  result:='�����ӱ���Զ�а����������ǿ��ΪӸ���ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ǧ����ң������������������ң�����ֱ����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�������꣬���������������ɾȣ���ۧ���ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��Σ���������������븣�����������š�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���ǲ������������ˡ���ı���������ؼ�����������ɽ�����˲�����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='����ʯ���������޴�����ƿ֮ʹ����Ϊ�Ǿ塣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������⣬�����֡��Ǿ���־�����Һ޻ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ѩ��Ϳ�������Ƴ��������޼ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���̻��壬�³�ƽ�ء������쳣������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ƴ�������Σ�ҡ����Ŵ��䣬����Ϊ����������ʳ���㿷������';
  exit;
end;
if s='��֮���' then
begin
  result:='���ݳ��ţ���ʧ���衣�������ϣ�����ȱ�衣';
  exit;
end;
if s='��֮��' then
begin
  result:='�ϴ����ƣ�ʹ���ٿ�����ɽ�ร�����м��С�����������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���в��⣬�ԾƲ�ʳ�������Ӿ���������������ϥ���ޡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�pţ������ܳ�Ķ���������٣��������С�';
  exit;
end;
if s='��֮����' then
begin
  result:='�ϰ������������ҡ�ג������Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�g�g���ԣ�Ī����ԫ�����ּ�̣����Գ�����';
  exit;
end;
if s='��֮���' then
begin
  result:='Ң˴��������ʥ���ʡ���ʩ���������������������δͬ���硣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����л����������������ܷ����ղ����͡����յ��������²��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ų�����������ࡣ���óٳ٣�������³��';
  exit;
end;
if s='��֮��' then
begin
  result:='�󼦻��������ʧ�㡣���˾��У�������ࡣ�뽪���ӣ�������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦ���ᣬ�粮���ơ��س���ǿ��ʩ�����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٶ������ȵ���ǡ�������ʳ�������r��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������ɽ�������������쵽����������֥�㡣����������δͬ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���ϣ������ɶ���������ӣ�����ӺӺ�����һش���';
  exit;
end;
if s='��֮����' then
begin
  result:='Ң��˴�裬����Ͼơ��������ᣬ���԰�����������Ů��';
  exit;
end;
if s='��֮����' then
begin
  result:='��һ�þƣ��������衣����ͬ�����԰����������u�ݡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�����m�����鲻�ݡ��������ˣ��������š�';
  exit;
end;
if s='��֮�' then
begin
  result:='��������äʦ������Ŀ����·����ֹ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������ﻪ�١�������ӣ��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ڣ���Ϊ�񱦡��������У���Ȼ��ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����F�ܣ�������������Ű���Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮĭ��������ʪ���ӣ�Ϊ�ļ��ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������䵻���ӡ�����˥�ܣ��ľ����롣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ݴ��裬������ɽ���Ŵ����꣬�������ա�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ĸ�ޡ�˪����������޷�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȯ���ã��������ʡ��䲻��·���u����ᡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='������ˣ�һ�����ߡ���ҡ������Σ����������ף���������޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='������£����������������ƹģ��Գ��񼲡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������䣬�������ա�а���Ե���ʹ���һ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Գ���ľ�����b���㡣���黳�񣬻������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���긺�⣬��ȡ֥�㡣������𥣬ӯ��ϻ�ѣ������ٽ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬��ë�ɾ͡��ٲ�ʧ�ˣ�������á����߱����������лڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����Ƴ���Զ��ʧ�ҡ��������գ��������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������󣬴ƶ���Ⱥ��Ϊ����ǣ���������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ȥ��ҡ����и����������Ծӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ͨ��������ꡣ����֮�ˣ��������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Ϊ���������ֿ��飬ȥ����ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ŭ����Ը��̰�����󡣶���ȵ𷣬����ʧ�����±��껼��';
  exit;
end;
if s='��֮��' then
begin
  result:='���̴�������˼�����С�ݣ��Բ�֮񪡣';
  exit;
end;
if s='��֮����' then
begin
  result:='���˾��У������ɣ�������_�����Ҽ��á��ù��޾̣�����������';
  exit;
end;
if s='��֮С��' then
begin
  result:='����Ϸɣ���ϲ���档����¹�ӣ�������飬���ǲ�Σ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�������У������ꡣ�Ǿ������������ӣ������Ծ̡�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������������ϲͬ�֡��������飬������񣬾�����Ϣ��';
  exit;
end;


end;


function wuwang(const s: string):string;
begin
if s='����' then
begin
  result:='��̨�h����Ķ򴦡��������������ϲ���������ף������޾̡�';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='�ٶ����أ���������������׼ͣ����¸�ʼ��';
  exit;
end;
if s='����֮��' then
begin
  result:='��ĸ֮�������������Ϣ���٣��������š�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ת��ڴ�󡣵���ʧ������֪�Ǵ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�������������޹⡣���ڱ�½�������ء�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ĸ�ร����»��������֮����������й⡣��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������񣬼�ʳ��������Ů�������������㡣������У�������ϲ��';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='�������ţ���Ϊ�ҲС����Ѷ������������ꡣ�������ڣ������ǻ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�ֵ����⣬�ԾƲ�ʳ�������Ӿ���������������ϥ���ޡ�';
  exit;
end;
if s='����֮С��' then
begin
  result:='��Ϻȥ�������ڿ�������������������ڡ��ϱ��ļ������ٳɼ���';
  exit;
end;
if s='����֮��' then
begin
  result:='����Ц��뻶���ơ�����������ǧ�����裬���ܴ󸣡�';
  exit;
end;
if s='����̩֮' then
begin
  result:='�Ǹ���ɽ���������š�ʿ��û�����Ϊ�Ҹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ܵ£������Ϲ��������񣬱�����Ϣ��';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='�ն��̷���ˮ�����С����ʢ�������U���أ��߹����硣';
  exit;
end;
if s='����֮����' then
begin
  result:='�Ӻ����У���֮�¸��������ܸ���������ʳ��';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='���бܱ�����ȥ���顣�����׶񣬱�ӭ��������ϲ��ꡣ';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='������Ů����ĸ�����ʮ���ң�ý���Ϳࡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮������������������ֹϢ��';
  exit;
end;
if s='����֮��' then
begin
  result:='����¿����ĺʧʱ���������ǣ��������顣';
  exit;
end;
if s='����֮��' then
begin
  result:='�[�X��࣬�������Ů�˺��У�����Ӻ����';
  exit;
end;
if s='����֮��' then
begin
  result:='���l�堙�����沢�С��������ѭ��ֱ��������������Ϊ��������';
  exit;
end;
if s='����֮���' then
begin
  result:='��ϲ���ӣ�����Ϊ�ѡ���֮����������Σ����ۨ���Ϳ࣬������ĸ��';
  exit;
end;
if s='����֮��' then
begin
  result:='֯��δ�ͣ����۲�����Ů�����ܣ��������¡�';
  exit;
end;
if s='����֮��' then
begin
  result:='��¶֮�ϣ���Ů���С�������ʳ��ʹ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ںţ�������ǡ��ӹĲ������������á��������£�����������';
  exit;
end;
if s='����֮����' then
begin
  result:='�Ӿ����ƣ������ҿڡ������Ϳ࣬�������С���̨�h���Σ��ϲ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�ڴ����Σ���ϲ���ڡ����ڼι�����λ��ʱ��';
  exit;
end;
if s='����֮���' then
begin
  result:='������ԫ���������š������ˮ�������ֱ����������ǣ�������˥��';
  exit;
end;
if s='����֮��' then
begin
  result:='��ĸʮ�ӣ�תϢ���ѡ�����ٳ����U����ԡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������˾��̫ʷ������֮�֣��񹬱��ࡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='��ִ��£�ֹ���Ժ١��������������ֲ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='����ĭ�磬����ɣ�С�ʧ�Ų��ᣬ��˼Լ����';
  exit;
end;
if s='����֮��' then
begin
  result:='�ٳ��������¾�ȱ�ǡ�����Ϊ�������޻��ȡ�';
  exit;
end;
if s='����֮��׳' then
begin
  result:='�����ˣ�����ʢ�����������ţ����Ժϻ顣���µ��ڣ����˴󻶡�';
  exit;
end;
if s='����֮��' then
begin
  result:='��Σ֮�����������򡣻�����٣�����������';
  exit;
end;
if s='����֮����' then
begin
  result:='ǧȸ��𣚣����Ϊ�����Ʋ��У��������棬Ϊӥ������';
  exit;
end;
if s='����֮����' then
begin
  result:='���񼯾ۣ���������Ϲ�Ű�ң����ճ�ࡣ��ʦ���֣�����ʥ����';
  exit;
end;
if s='����֮�' then
begin
  result:='��Ԩ��幣��������С��������ӣ����ֲ��档';
  exit;
end;
if s='����֮�' then
begin
  result:='�������������Ȩ���������䣬�����ܹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�����Ÿޣ�����ʧʱ���������Σ���Ϊ���ɡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����Բ�֣����в�ǰ��������׶��ʧ���±㡣��ʦ���ã�������ֹ��';
  exit;
end;
if s='����֮��' then
begin
  result:='����ˮ�ǣ������ҹ����������Σ���֮�����������»������Ϊ����';
  exit;
end;
if s='����֮��' then
begin
  result:='�׻����ǣ�����ɽ�����ڶ�ţ�򣬲������ˡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��Σ�������������գ�����Ϊ񣡣';
  exit;
end;
if s='����֮��' then
begin
  result:='���������������Լҡ���ĸ̰߶�������ʲƣ���ʧ��ţ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����Ϸɣ�������ء�Ϻ�����У����ù�����';
  exit;
end;
if s='����֮��' then
begin
  result:='ӥ��ï������ȸ������һ������������֦�¡�';
  exit;
end;
if s='����֮��' then
begin
  result:='Ң˴�����������š��������������ĵ��á��Ե�֮ͽ�����Ը�����';
  exit;
end;
if s='����֮��' then
begin
  result:='�ݺ����꣬������������ʢ�շ������Թ��顣';
  exit;
end;
if s='����֮��' then
begin
  result:='���ڻ�����Ϊ�����š����͹����������Ի���';
  exit;
end;
if s='����֮��' then
begin
  result:='���ˮ�磬��½Ϊ�������Ӻ����������С�ǧ����ǽ��ԧ�����С�';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʧ�����ݳ����������в��룬����������';
  exit;
end;
if s='����֮��' then
begin
  result:='�ֵҶ׾ᣬ����̰߶���������࣬������ȥ��';
  exit;
end;
if s='����֮����' then
begin
  result:='�ɺ��uˮ�������β����Ϊ���ǡ�������з�������޼���';
  exit;
end;
if s='����֮��' then
begin
  result:='�ӳ�С�㣬�����ͷ����������񣬾����仼��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ģ������ݰ�������ң�У�δ����С�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������֣���ʪ���С������ȥ�����Ӳ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='��⬷껢�����᲻�������������븣Ц�������ϲ��';
  exit;
end;
if s='����֮��' then
begin
  result:='���������������ࡣ�����ƾԣ��ۻ�Ϊ�ߡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='Ӥ�����飬��ĸ���ӡ�������ϲ������ʶ���';
  exit;
end;
if s='����֮����' then
begin
  result:='�������Σ��������롣��ʸ�޹Q��Ȥ�Ͷ��䡣�������������Ҷ�ҡ��';
  exit;
end;
if s='����֮С��' then
begin
  result:='������ʿ��ȥ���Ұ��ִ˳��ǿ�������޾̡�';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='��¹��ɽ���������š������͵����������ꡣ';
  exit;
end;
if s='����֮δ��' then
begin
  result:='����֮�£������ܸ�����Ů�˼ң�����ౣ������Զ�У������Ʋء�';
  exit;
end;

end;

function daxu(const s: string):string;
begin
if s='����' then
begin
  result:='����֮�أ����������������˼ң�ҵ��������´󼪡�';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='�������أ�������֡����Ӿ�֮��������Σ��';
  exit;
end;
if s='����֮��' then
begin
  result:='ת��Ϊ����ϲ�����ݡ������Ĺ���������ʳ����ȫ���ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ˮ�����У����ݻ�ǽ���������磬��ʦ���̡���ֹ��������ĸ�ౣ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ܰգ���Ϸɽ�硣�����������������ǡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ʣ��е�ֹ�ϡ������԰��������޻���';
  exit;
end;
if s='����֮��' then
begin
  result:='�����׷����������Ρ��鹫���������z�޼�����λ���ߣ�ʧ����ҡ�';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='����֮�����������š��ٺ����䣬ʹ�����ġ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ϳ������ȥΣ���ҡ��׻����������Ң����ʧ��踣�������м���';
  exit;
end;
if s='����֮С��' then
begin
  result:='�����ӭ����֮���硣����Ϊ�ڣ����ǻͻ͡���ϲ�]�������Եõ���';
  exit;
end;
if s='����֮��' then
begin
  result:='��������Ī�����С�����ҡ����ʧ�±㰲��������񣬹��˲�����';
  exit;
end;
if s='����̩֮' then
begin
  result:='����ɽ�磬¹�����ԡ���ʸ���ţ��Ϊ���ܡ�����������ȫ�������������ݡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���ִ��Ӣ��ʧְ��������³���������»�����ѡ�';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='�������꣬�������ˡ��ݠ�������ʧ���⡣';
  exit;
end;
if s='����֮����' then
begin
  result:='�Ƶ۳��Σ�������������̩ɽ���Ϲ���³���������ң�����ξ̡������м֡�';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='��³���ԣ�ս�����š���Թ�»�������������';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='����͵£��ʲ�������������֮������������';
  exit;
end;
if s='����֮��' then
begin
  result:='���ʹ��ݣ��������ࡣʹ�Ҽ�㴣����ò��졣';
  exit;
end;
if s='����֮��' then
begin
  result:='һ�����ӣ�ͬ����ĸ����˳���꣬���벻������»���ڡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���̱����������͡�������ֱ���������¡��ɰ����ѣ����ܴ󸣡�';
  exit;
end;
if s='����֮��' then
begin
  result:='������Ӭ���ݶ鸪�С���М{�죬��ĸ������';
  exit;
end;
if s='����֮���' then
begin
  result:='��ɽ���꣬�߾����������ľ��ݣ�ʹ����ͨ�������޹���������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������磬������֡���ֻ���ӣ���»������';
  exit;
end;
if s='����֮��' then
begin
  result:='������ģ�¾���˷��������ع�����ΪӦ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���ǽἯ�����Ϊ��������ţ�򣬵�����ͨ���������ˡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='��ֱ�Ź����������ϡ�ý����������������';
  exit;
end;
if s='����֮��' then
begin
  result:='����¥̨���ǰ��ܸ���ϲ�������';
  exit;
end;
if s='����֮���' then
begin
  result:='������ɽ������ƽԭ���������䣬����³�����������ң�ִ�糵�У��������졣';
  exit;
end;
if s='����֮��' then
begin
  result:='��ر������������������ò��У������ѵá�';
  exit;
end;
if s='����֮��' then
begin
  result:='������³������̫ʷ����ꥰ׵ߣ�֪��������������һͳΪ����';
  exit;
end;
if s='����֮��' then
begin
  result:='��꫼ױ��������ţ����·��ͨ���������ǡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ţ��ͬ�ۣ���������������Ϊ�棬�������ӡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��βС�����ز���ҡ��������������Ϊ���ǡ�����֮�ԣ�����Ϊ����ʹ�Ҹ�����';
  exit;
end;
if s='����֮��׳' then
begin
  result:='��һ�þƣ��������衣����ͬ�����԰����������u�ݡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����������������������彩��������ɥ��';
  exit;
end;
if s='����֮����' then
begin
  result:='ɽ���ѵǣ����ж�ʯ�������E�����������ᡣ�������٣����b���㡣';
  exit;
end;
if s='����֮����' then
begin
  result:='���ϲ�����������_���ż����ڣ��������ߡ�';
  exit;
end;
if s='����֮�' then
begin
  result:='��־�������������С���ǽ�ֱڣ����������������չأ�����ί����';
  exit;
end;
if s='����֮�' then
begin
  result:='�H�_��^���γ����֡���°��ң��ܹ����͡�';
  exit;
end;
if s='����֮��' then
begin
  result:='���˸��ӣ�������Ұ����ң���飬˼�Ҵ�ĸ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������ɴ��޴������ɳ��ţ��н�ȴȥ��';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ů�ᴲ���������¡��ϻ����࣬����ɳ����Ű�ڵ������ۼ��۾���';
  exit;
end;
if s='����֮��' then
begin
  result:='̫�ӷ��գ�����Զ�������ҳ�а���������ǡ���ĸ֮������·��֮��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ƣ�һ��һ΢���պ����ܣ�������˥��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������ʵ����С����ͻ������������硣�ܶ��Ͷ����������У��˼����ӡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��뻻�����ͨ�����⡣���Ǹ�ʥ����ʩ���С��Ҹ����㣬���������';
  exit;
end;
if s='����֮��' then
begin
  result:='��ѩ���գ����޼���������ʧ�ˣ������ɵá����Խ⻼�����Ʒ��ѣ�Σ�߸�����';
  exit;
end;
if s='����֮��' then
begin
  result:='�׺����飬ҹʳΪ�����������ף�������ᡣ������ͬ�������ס�';
  exit;
end;
if s='����֮��' then
begin
  result:='����ǣ���뻢��꣬�侪���ס�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ƣ���ˮΪլ��������ϣ���־���֣�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='���ƽԭ��ˮ����ǰ������棬ĺ�����á�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������������ǧ�����̣�ɢ���ķ�������������������Ԩ���ղ�������';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮����㣲�������̰��Ϊ�ˣ��ض���̡�������ʵ��Ұ�ڱ��أ�δ�����ҡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='�ֿ�ӯ�ڣ�������Ϣ����������������еá��������٣���ؾ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='��ɽ��ȼ������ʧ�ڡ��㲻�ɵã���ȥ�ұ���';
  exit;
end;
if s='����֮��' then
begin
  result:='ͯŮ��ý�����˶�ҡ��������®����ĸ���ǡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�ط���ĸ���ι۶���������ǧ����ᰮ�ӡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�׵����࣬����ɽ�硣�����伣��ʹ�����ǡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ҹ������������Զ�硣������뻣���Ϊ��ĸ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ã��ڶ���·�����Խ�ȡ�������еá�';
  exit;
end;
if s='����֮����' then
begin
  result:='������ԥ���ܹ���л����赱��磬������ʡ�';
  exit;
end;
if s='����֮С��' then
begin
  result:='ͬ�ع������е���ȥ�������������������ߡ�';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='�����ɣ���Ϸ���ء�������ʳ��ʳ���޻���';
  exit;
end;
if s='����֮δ��' then
begin
  result:='�������ң�����ϳݡ�Ǭ�����꣬�������ӡ�����ɾͣ�������ĸ��';
  exit;
end;

end;

function yi(const s: string):string;
begin
if s='��' then
begin
  result:='�Ҹ����㣬�������������ı������ɸ���';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='˼�����ţ������޸����������ƣ���ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӻ�������֮�¸����������ۣ��������С����Ҿ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��������������D����Ϊ�����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ϴ�������ʱ��Ϣ���������У��������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Σ�޻������Ѷ�ȫ���������ţ�������ϥ��������ʳ��������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����׸���Թ�乫�ѡ��ٖ����裬���䷹�ͣ�ʹ����ƶ��';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�������裬���蹵�¡�����Ц�ޣ��ղ���¼��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ĺ����������棬�����׻���';
  exit;
end;
if s='��֮С��' then
begin
  result:='���糤��ҹ��������߷�ڤڤ�������޵á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���֮�ţ�����ֹϢ������֮ʿ��Ϊ����ʳ����ȥ���ҡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='����������Ϊ����������ʱ������ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��÷��׹����˼�㴣��������������һ�����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��Ů���ޣ��������ߡ����������ҹ�����ǡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��� ���۶�������ʢӯ�ػ٣���λ���ߡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�˴���ã���ˮ��������޻���������ȫ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='����֮�����������¡��������ţ������񰲡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʱ�����Ҷ��ǡ����ж��ģ��ĳ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ɽ���������š��Ǹ����ã������꽬��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ľ�����˰ܹ������ض��壬�������ӡ�������Σ���������ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�Ұ����������������Ц�ԣ������԰���';
  exit;
end;
if s='��֮���' then
begin
  result:='����ת�У���ʧ�䳣���������磬���޾��ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='Ⱥ�����أ�������ʳ���������أ�����ʧ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����뾸����������š��̼���Ӯ���۱�Ϊ��������֮�ǣ�ת��ϲ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��̨�h����Ķ򴦡����f���������ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�������������ݴ�ܡ����ڿ������綬������';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ڰ�������������ҼҴ�壬�����رա��������������㴡�';
  exit;
end;
if s='��֮���' then
begin
  result:='������ŭ��ս�����¡��ԻƲ�ʤ�����˼�ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У����������п����򣬼������ס���ľ�������ѹ�Ұ';
  exit;
end;
if s='��֮��' then
begin
  result:='һָʳ�⣬�������á�Ⱦ�䶦ؾ������ڸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ϲЦ������ʧ�丣�졣�ڱ��Խ꣬����η�ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ë�������������񸻡������е¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�k��ͯţ�����˲�������Ůͬ�ã����Ҹ��ʡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='���ӻ��ã�ӯ��Ϊ�����ر��������������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ɴ��޴������ɳ��ţ��н�ȴȥ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�������£���ǢΪ�¡��в�ʧ������������';
  exit;
end;
if s='��֮����' then
begin
  result:='�س������Ϸ���ӡ����Ҽθ��������޾̡�';
  exit;
end;
if s='��֮�' then
begin
  result:='ȱ���ƿ𣬿��������������繫�����ڷ�ǽ��';
  exit;
end;
if s='��֮�' then
begin
  result:='ɱ����԰���������������֮�У�ʹ���޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң���˥�׼���������������������������ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ͥ��ҹ����׷���˽��������ƣ��������塣';
  exit;
end;
if s='��֮��' then
begin
  result:='���}���{��ʳ�����Ρ�ʧ�߰�®��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ÿ�ϲ���ղ�ʢ�㡣�վ�Ϊ�ã��Ʊ��й���';
  exit;
end;
if s='��֮��' then
begin
  result:='ִ��ǳ�����˶��Ρ�˵����࣬�Թ��԰���';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ����������Ѻ��Ρ��̲�ʧ�������˳��ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ԧ�죬������С��ϵ�����ʳ�����������ӳ��֣������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Զ��Ŀ�Σ������ѣ������Խ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�շ綫������ɢ�ķ���������ĺ�������ӻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����ҪԼ������ȯ�������弾����������֮��ǿ��ί�ݣ��������ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ţ����������֪��ζ��Զ�ͼ��ʣ�������㴡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���̽��Σ���ʳ���ǡ�����֮�������Ӽ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݶ����࣬˳�����ǡ����ֲ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���]������Ϊ���ذ�������룬������ǿ�������ڲ���';
  exit;
end;
if s='��֮����' then
begin
  result:='������ѭ��ֱ������˼��ĸ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ���ڣ���ֱ��ݡ�Ȼŵ���У�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ش�����ǲ�Ϊ��������ɽ�������ż�����';
  exit;
end;
if s='��֮��' then
begin
  result:='������·���Ĳ���Ľ���������ǣ�ʹ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������㣬�Ӳ���������������ʧ����١�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϣ�޹⣬���겻��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬�ʰ��ƺ�����ʮ�У�ز�����С�';
  exit;
end;
if s='��֮����' then
begin
  result:='����ǣ���ɽ��������¹ȡ⯣�����η�ѡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='��Ҷ��˪�����β��ˡ�����ϲ�ţ��븣Ϊ�顣';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='������գ������Ĺ���Ԫ������������������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='˳��ֱ�����뻶��á�������ᣬ���޵�����';
  exit;
end;


end;


function daguo(const s: string):string;
begin
if s='���' then
begin
  result:='��ᷨ�飬������̨�������������������֡�';
  exit;
end;
if s='���֮Ǭ' then
begin
  result:='���ڱ�½��������Ŀ��������飬����������';
  exit;
end;
if s='���֮��' then
begin
  result:='�������磬�����޺󡣼�����ˬ�����˾��롣';
  exit;
end;
if s='���֮��' then
begin
  result:='��Ϳ��Σ��������Ϊ���������ѣ��������ꡣ�Ż��Կ������ǲ�����';
  exit;
end;
if s='���֮��' then
begin
  result:='��ʧ��ͣ���ľ������Ҷ������������Ϣ��';
  exit;
end;
if s='���֮��' then
begin
  result:='����֮�ӣ�������ĸ���������£�֦Ҷʢï�����Աӣ��ٲ������������������������';
  exit;
end;
if s='���֮��' then
begin
  result:='����ִ쯣���ս����������Ԫ˧������Ϊ�ǡ�';
  exit;
end;
if s='���֮ʦ' then
begin
  result:='���ҿ��أ�Ѳ����ԩ����̨�h�������ϲ��';
  exit;
end;
if s='���֮��' then
begin
  result:='˥���޳ɣ�Ԩ���������ҹ�������˲�����';
  exit;
end;
if s='���֮С��' then
begin
  result:='������Ů��δ������־��ί�£������������������ã���ĸ�ξ̡�';
  exit;
end;
if s='���֮��' then
begin
  result:='����ҹ�����Ĺ�ͷ����Σ�߸��㣬���߲��ɡ�';
  exit;
end;
if s='���̩֮' then
begin
  result:='�����ٹѣ�����´�������Ȯ�ͣ��޸����ߡ�������������Ӥ���ࡣ';
  exit;
end;
if s='���֮��' then
begin
  result:='�޵�֮����������š������¹���������ʳ��';
  exit;
end;
if s='���֮ͬ��' then
begin
  result:='�������Σ�ҹ�������Ѷ����ǡ�';
  exit;
end;
if s='���֮����' then
begin
  result:='���ٳ��ˣ������Ƽҡ����ض��壬�������ߡ�';
  exit;
end;
if s='���֮ǫ' then
begin
  result:='�����ʵ����Ůͬ�ҡ����಻�죬δ�����ϡ�';
  exit;
end;
if s='���֮ԥ' then
begin
  result:='�����ĺ�����پ��¡��������أ��������á�';
  exit;
end;
if s='���֮��' then
begin
  result:='�����䷣�Ϳ����챡���Ţ�������������㡣';
  exit;
end;
if s='���֮��' then
begin
  result:='�����ݶ���������ꡣ�����飬���b��������Ϊ�����';
  exit;
end;
if s='���֮��' then
begin
  result:='������Ȩ�������ʷ֡���������������ʧ����';
  exit;
end;
if s='���֮��' then
begin
  result:='ȥ����ң������󶼡���Ϣ�����������Բ�������ʧ����';
  exit;
end;
if s='���֮���' then
begin
  result:='����԰���Ż���ג��Σ�崭Ϣ�����޻�����';
  exit;
end;
if s='���֮��' then
begin
  result:='Ӥ�����飬ĸ�����ӡ�������ϲ���˵øʱ���';
  exit;
end;
if s='���֮��' then
begin
  result:='����ʧҵ������ȸ����������á�';
  exit;
end;
if s='���֮��' then
begin
  result:='������ʱ���ǻ�Ϊ�֡�����ʧţ����ȥ�����������žԣ�����þӡ�';
  exit;
end;
if s='���֮����' then
begin
  result:='��ŭƯľ��Ů����������ʧ���������Ϊ����';
  exit;
end;
if s='���֮����' then
begin
  result:='�����ˣ�����Խ�硣����Ԫ�࣬ȥ�޾�����';
  exit;
end;
if s='���֮��' then
begin
  result:='������������������������ϣ�ʥ�����ڡ��������У�������ϲ��';
  exit;
end;
if s='���֮��' then
begin
  result:='�������ϣ��׷�ככ����ɻ��ң��ּ��ҹ���';
  exit;
end;
if s='���֮��' then
begin
  result:='����Ϊ�У�ʹ�Ҳ�������֮�Ϲ����Գ��ļ���';
  exit;
end;
if s='���֮��' then
begin
  result:='����ӤŮ��ǣ�²��롣���Ҹ߹󣬷��ü��¡�';
  exit;
end;
if s='���֮��' then
begin
  result:='���м��У����۱ر�����ϲ���ӣ�����Ϊ�ѡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='��ϯδ�£��������š��uǽ���ߣ������Һ����ڻ��ڡ�';
  exit;
end;
if s='���֮��׳' then
begin
  result:='�����������ְ���������֮�֣�������®��';
  exit;
end;
if s='���֮��' then
begin
  result:='��η�ڿ�����²̡����²�Σ�������⺦��';
  exit;
end;
if s='���֮����' then
begin
  result:='�����Ϸɣ���ţ���ա�������أ�ʧ����Σ���λ�֮ԩ�������޻���';
  exit;
end;
if s='���֮����' then
begin
  result:='������ɽ���������ѡ�������ĺ���������ߡ�';
  exit;
end;
if s='���֮�' then
begin
  result:='�ǲ�Ϊ�����������ţ�ʹ���Ȱ���';
  exit;
end;
if s='���֮�' then
begin
  result:='������������Ů�˼ҡ��ܸ����꣬��Ϊ�����';
  exit;
end;
if s='���֮��' then
begin
  result:='��ɽ֮�ߣ�ȥ����ǧ�����б��ܣ��������ء�';
  exit;
end;
if s='���֮��' then
begin
  result:='��ʱ���£��۷���x������̾�ң�˼�Ҳ��塣';
  exit;
end;
if s='���֮��' then
begin
  result:='̫΢������˵�����ң��˳Ƹ��ڡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='�Զ�С�ǣ������ڶ�����ҹ���ˣ��Ϳ��޹���';
  exit;
end;
if s='���֮��' then
begin
  result:='���緳��������Ц�ԡ��Ӱ����������������';
  exit;
end;
if s='���֮��' then
begin
  result:='������ͷ����έ�������������٣����˲��������᲻�ɡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='Ϻ�Ⱥ�ۣ��������ꡣ���׼��ۣ�Ӧʱ���£�����Ը����';
  exit;
end;
if s='���֮��' then
begin
  result:='���ϳ����ϵ�ϲ�ҡ��������ã��븣������';
  exit;
end;
if s='���֮��' then
begin
  result:='�����˵£���ŭ������ն�����磬ʧ�����';
  exit;
end;
if s='���֮��' then
begin
  result:='��⬼�������Σ�����������޾̡�';
  exit;
end;
if s='���֮��' then
begin
  result:='�����е£������Ӹ�����Ң٧ʳ��������Ϣ��';
  exit;
end;
if s='���֮��' then
begin
  result:='���ڱ�½�������ѵá���Σ֮������Ϊ���š��������档';
  exit;
end;
if s='���֮��' then
begin
  result:='�����ä����ʹ���С�������ĺ���������硣';
  exit;
end;
if s='���֮��' then
begin
  result:='̨�����ӣ���֪����������������Ӻӛ塣';
  exit;
end;
if s='���֮����' then
begin
  result:='��ˮ��ʱ���Ա����֡������������г��ã������޾̡�';
  exit;
end;
if s='���֮��' then
begin
  result:='��ĺ���䣬��˥�ڵ¡��ٳ���׹���������ҡ�';
  exit;
end;
if s='���֮��' then
begin
  result:='�İ����ǧ��Ϊ�С������������������С�';
  exit;
end;
if s='���֮��' then
begin
  result:='�ٴ�Ѳ��������Ⱥ���ѵ���������ʧ������';
  exit;
end;
if s='���֮��' then
begin
  result:='���e���ۣ��޽��ѽ⡣��ĸ�f�ޣ�ý����������Ϊ�����';
  exit;
end;
if s='���֮��' then
begin
  result:='����ͥ�У��Խ����֡����Ż��أ����Ǳ��͡�';
  exit;
end;
if s='���֮��' then
begin
  result:='����ĺ¶���h�����࣬���޵�ţ��';
  exit;
end;
if s='���֮����' then
begin
  result:='��豻��������ഥ��ڰ�����꣬�������ˡ�';
  exit;
end;
if s='���֮С��' then
begin
  result:='�������ã�����é˃����ҹ�ڹ������뷿�У��þ����⡣';
  exit;
end;
if s='���֮�ȼ�' then
begin
  result:='����������Iʧ�͡���಻�٣��������ꡣ';
  exit;
end;
if s='���֮δ��' then
begin
  result:='��¶��Ȫ��̫ƽ���ء��ʵ���Ӧ�������񰲡�';
  exit;
end;

end;

function kan(const s: string):string;
begin
if s='��' then
begin
  result:='������㣬������񡣴���������ɱܵ������븣���У������ó���';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='̫��Ϊ��������Т�ѡ�����ʥ�����ʵ����𡣿����Ĺ����ظ����';
  exit;
end;
if s='��֮��' then
begin
  result:='Գ���ľ�����b���㡣���ҽ��񣬻������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ض����������������������ֵң�������������ط�������ɱ��������Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�з��ꪣ��������ܣ����۲�Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڼ�������ʧ���������ŵ�ɽ���������ѡ�ˮ����԰����½ΪȪ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���д�֡�����ͷ��Ϊ�Ҿ��ǡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��������δ����Ϣ��ս��ƽ½��Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ�ͨ��ˮȪ��ͬע�׺�����ð�����';
  exit;
end;
if s='��֮С��' then
begin
  result:='Ң˴�ʵ£������¸�����Ӣ���ۣ����޿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='½����Ȫ��ɽ�����ơ�����ǧ�Ϳ�����֣���Ϊ��Թ��';
  exit;
end;
if s='��̩֮' then
begin
  result:='���Ӳ�����ҹ�����⡣�Եֿմ�����Ů��������Ȼ���ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��³��������ʥ���¡��������ԣ������԰���';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�������磬���Բ��¡��������ӦƸ������';
  exit;
end;
if s='��֮����' then
begin
  result:='�������࣬Ϊ�����С����װ�ף���������֡���ɽ֮�أ����������������ı���';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�������ܣ�Ϊ�����С����г�����˳�������Բ���ţ��ϲ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='ǽ�߱�Ŀ���������ա�Զ���������������塣';
  exit;
end;
if s='��֮��' then
begin
  result:='��ؼʻᣬ�������⡣���ǲ�ͣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ˮ���棬��Ϳ��챡�ţ�ղ�����Ţ��Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�򾯻��ǣ��ʶ�Ⱥ�ۡ������ڽ���Ϊ�����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������򳣬������ӡ�����ʧ�������ﻢβ��';
  exit;
end;
if s='��֮���' then
begin
  result:='�����˶飬������ȥ�����߲����������Ǿ塣�޽Ḵ�⣬ҹ��Ϊϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϸ����֣���ԹΪ�У����ðٱ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������³������̫ʷ����ꥰ׵ߣ�֪��������������һͳΪ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ŷ껼���븣ΪԹ��������̣������ֶˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�¹Ⱥ�ߣ���Ȼ��ϲ�����Ӻ��Σ����˶��С�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����������ĸ����������������ϲ��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������㡣ʧ�丣��������Ϊ����';
  exit;
end;
if s='��֮���' then
begin
  result:='����֮�����������������Ӻ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������¹�������ޡ����½������굳����������̻�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�糾���ԣ������ϱ�������ʧ·���������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���׻ƣ��������С���Ȣ��Ϣ��������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�˹�֮�£���ϵ��ʳ������ʧ�ߣ��������ǡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�˴��ɼã���ˮ��������⻼���������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ն�ʯ���˳����ᡣ����Ϊ�𣬲������ޡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�м�֮ͽ���������󡣽������ԣ����лڻ���';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ƣ�����ĳۡ����ղ�ʳ�������߰ա�';
  exit;
end;
if s='��֮�' then
begin
  result:='�˶�������������硣��֮��Ϣ�����͵�����';
  exit;
end;
if s='��֮�' then
begin
  result:='������������ι������Ҳ�梣���ĸ��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��¶���裬�����������ľ���ˣ�����Ҷ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ũ���������ҹ�����Ķ����һ�Ұ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ޣ�����԰�ء�����Ծ�����ø�ʧ��Σ��֮���������û���';
  exit;
end;
if s='��֮��' then
begin
  result:='·�����ݣ��������ʧ����������˥΢��';
  exit;
end;
if s='��֮��' then
begin
  result:='����׷�����༰��ɣ���������磬ʹ�һ�ɥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��»����ظ�����˥΢���𣬼����ó����������󣬽��˸��档';
  exit;
end;
if s='��֮��' then
begin
  result:='���ѹ¶���»���ౡ���빬���ޣ����Ӱ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽû�𸡣�½Ϊˮ�㡣��ȸ�޳���������®��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ڴ����Σ��븣ϲ�ڡ����ڼι�����λ��ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������ʧ���Ơ�����Ů�޷򣬶�����®��';
  exit;
end;
if s='��֮��' then
begin
  result:='̽ȸ���㣬���ﲶ���������޹������ֿ��顣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ƣ���ϲ�౧����Ϊ��ң������Ӹ���ˮ��֮ͽ�����ض���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ŭʧ��������η�ڡ�����֮�壬�����޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������������ɷ���ӭ���󱢽��¡����Һ̼ڣ���������';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�գ�������Ϣ�������Һ�������ط���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ģ�������ᡣ�������ƣ�δ�ܸ߾١�������������ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���г��ţ��ĵ��ٵߡ��b���Ϳ���������F��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ᳵ�^�棬���籩�𡣴��Ҽ������������衣�����ӣ����޺��ܡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϊ�������������֡���ϲ���ţ����������ʹ���еá�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ڣ��������ʡ�˾������������ң��ٰ�Ϊ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ӿ�ϣ�ˮŭӿԾ���������ݣ�����ʳ��';
  exit;
end;
if s='��֮����' then
begin
  result:='������԰����η�ࡣִ������ʹ���޻���';
  exit;
end;
if s='��֮С��' then
begin
  result:='¹���ɽ������ΪԹ��������ԣ�˭֪�件��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��������ʧ�����ޡ�����֮�ǣ����ݳ��Ρ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�ݼ���轣�����Ϊ�ǡ��򸾲��ͣ��������ҡ�';
  exit;
end;


end;

function li(const s: string):string;
begin
if s='��' then
begin
  result:='ʱ��������Ϊ��ʹ����������ּ��������ͨ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='ִ�����꣬����Ϊʦ������֮�������ܶ��롣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ﵻף��������ǣ������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ݹ������������������Ϻ��ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã��븣��ӭ��»�ڹ��ң������Բ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ľ������©ʪ�Ѿӡ���ȥ���ģ�ʹ�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ŮΪ�飬���θ�԰������ҹ�У��벮Ц�ԡ�������ĸ��Ϊʧ���ƣ�ԩ��˭�档';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='©��ʢ�ƣ��������ϡ�������𢣬����ʵ�С��ĵ�̹̹��ƽ���޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ɰ�֦Ҷ����ï���䡣����Ω�壬�ո����֡�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�򸾲�г��Ϊ�๥�롣�������ţ����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ʤ����Ϊ���֡�ǿ���������������ǡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='��ţ���������ҵ���񲻵�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��赱��磬�����ںӡ��ܹ����������������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�س�α�������ظ��������������ΣΪ�̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�ӣ�ͬ����ĸ���������У�֦Ҷʢï��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�ն��̷���ˮ�����С���ʢ���⣬���U���أ��߹����硣';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������£���ǢΪ�¡��в�ʧ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݿ����Σ�������ţ��������������������֮ǫǫ������⻼��';
  exit;
end;
if s='��֮��' then
begin
  result:='��˪��ѩ���˺�������������������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ܺ��磬�������ǡ����Ա��ѣ�ȫ���ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������հ�������������������U�ûơ��Զ����С�';
  exit;
end;
if s='��֮���' then
begin
  result:='�������������ͬ������ƽ�񻶣��ܲ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='ƽ���м���ӭҽ�ع����Ͳ����������˸��档';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ң�����������档������ĸ����·���ף��޸����ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ƥ����ӳ������������£��Ժ������';
  exit;
end;
if s='��֮����' then
begin
  result:='���ӹ��֣������ܸ�������֮�ң�����Ϊ�ǡ���Σ������ʦ�кξ̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����������������꣬��ʧ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�񾪺��������Ҳ�����������ǿ��Ϊ�����̡�';
  exit;
end;
if s='��֮���' then
begin
  result:='����ҹ�У��������¡��������ã����޾��ꡣ����˧ʦ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���²�ܻ�������޵������ٷ��壬��ʤ���ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĺ�˳����������ҡ��u��Խ�ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ⶳ�����������������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���겶���ڶ�ǰ���������ǣ��������ߡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='��¿�������»�ó��������й⣬�������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ������൱����ݸ��ݣ�һ��������';
  exit;
end;
if s='��֮����' then
begin
  result:='ʹ����ɣ���ݲ����С��������ϣ�������ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������飬�^���ҳ�����ȥ������';
  exit;
end;
if s='��֮�' then
begin
  result:='���ʵ�����ѽ������������ˣ�����ܸ���';
  exit;
end;
if s='��֮�' then
begin
  result:='��ɽ���壬�º���������i��ã���Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��������Ϊа��ǣ����Ӭ�ְף���Т����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��ľ��������Ŀ�������������������������������֣���޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='Ȫ�����أ��������š���Ϊ�źӣ������ǻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���̲���������ز�ˡ�˼�����ã�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ͣ�����ʧ�ˣ����Ӱ��衣';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ʳ��Ҷ��������ϣ����������������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������ľſ�������ţ�գ���ĺ��ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ϣ������й���������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='ͷβ�ߵ�����֪��������ʧ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ҪԼ��������ȯ�����弾����������֮��ǿ��ί�ݣ��������ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ȱ�Ʋ��ɣ�̥�Ѳ������������Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���߽���ϧ�Wη�������޻ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ˮ��Ѩ���������ҡ�ˮ�����ģ�����㵹��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£��ص��԰����߶���Σ�������ܻ���';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�գ�������Ϣ����������������ط���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ĸ���������ء����ʢï�����ߵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����ݳ������ζ��롣����˵�����ż����¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��򰵱����������ࡣ������Ⱥ���������š�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã���ֱ��Σ�����϶�����������ҡ�����Ӻ������ٱصá�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������䣬����������С�����ģ����²��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ƶ��������ʧ���󸣡�������Ϣ���ɾӹʴ�������صã����޴�ڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���м��㣬�ݻ�ȡ�����rڼڼ���������ǡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='���ѽ�Ԫ���ĵ�����»�����磬��Ϊ�����';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�ڲ����ģ�����������������壬����ʧ�㡣';
  exit;
end;
if s='��֮δ��' then
begin
  result:='����֮�磬�������ϡ�߶��Ϊ�������ܶ��ӡ�';
  exit;
end;

end;

function xian(const s: string):string;
begin
if s='��' then
begin
  result:='�Ƶ����ӣ����䱾����ë���㲣�־�����ҡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='С��������������ͨ�����;��ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ķ����֣����ξ塣��Ԩ��幣��Ḹʥ�塣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ӣ����ԾƸ�������ˮ����������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ��������������׳�������ʧ��լ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ڣ���ʯ�����������ſգ�ʹʿʧ�⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����м֣�Զ��ɽ�衣����Ϊ�У���Σ����������ʮ����';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�����Ż���ˮ���η����֣֮�䣬������ǰ��';
  exit;
end;
if s='��֮��' then
begin
  result:='˫���ɣ����鵾�ء���������Ϊʸ���䣬�������ܡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='á�����ɣ��������ġ�������ţ��������֮��ʧ����ʱ�����ﻳ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϲ����ף���ʧ�㿷�������������������á�';
  exit;
end;
if s='��̩֮' then
begin
  result:='���ͷ������ǻ����š����Ҷ�������Ϊ�Ҿ̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ŀ���������㡣��ˮ����ʧ��������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��¹Ϊ���������������Բ��ţ�����Ϊ�̡��������ӣ����ֲ�����';
  exit;
end;
if s='��֮����' then
begin
  result:='�����»飬δ�ܳ��š��������룬����̫ʦ��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���＾�ӣ�����Ϊ�ѡ������Ƴϣ���ߪ���١�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='ɽˮ��ŭ�������������������ã�������ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�r��㳲������ƽ�ݡ�����׵磬����έ«���ҼҼ�����˼��ʳ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǹ����ᣬ�������ڡ����β�������ţ�۽ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ף�D������¹��񡣽������������Դ档����ּ�ƣ�ü�ٶ��ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʮɽ����ȴ���ѡ�ţ��ǰ������������';
  exit;
end;
if s='��֮���' then
begin
  result:='������������Ԩ���㡣������裬������ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ۺ����磬���ϴ��͡��Ѹ��Թ��������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Цϲ���������ơ�����������ǧ�����裬���ܴ󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��׵��챣������ҹ�������֮�ԣ�����������';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ů���ң�����ͬʳ���������ƣ�����Т�';
  exit;
end;
if s='��֮����' then
begin
  result:='ǧ��֮ǽ���������š��������裬���Աٱ����������棬�᷽��ת��Զ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Է������ڴ���������£�������ʡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='�������ۣ����в��ݡ�������£��Ļ����ǡ��ʲ���ʱ��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��βСͷ���ز���ҡ��������ǿ���������ۡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�����ڣ����������������ϱ����Ի�ʧ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����󸣣���ϲ��á��������ͣ����㸨����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱ���飬���ۿ౯���ǻ��������ĸ���롣';
  exit;
end;
if s='��֮��׳' then
begin
  result:='Ң˴�ڹ��������͵á��þ����ѣ��������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܳ�֮¡��Խ����ͨ�������������乫������Ұ�ģ��޿Ͳ�ͬ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ѷ���ţ����Ϣ�������԰������ߵû���';
  exit;
end;
if s='��֮����' then
begin
  result:='������ĸ�����Ѻ���׹����ӣ�Ϊ�����ࡣ';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ã�����뻷�����ʧ�䳣�����εػ��������ǿࡣ';
  exit;
end;
if s='��֮�' then
begin
  result:='�����ܵ£������Ϲ��������񣬱�����Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɣ�۳壬�������ˡ�����ʧ�����������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�ϻ�֮������ϲ�Ҹ���������ɽ������ɶ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʯ��������������������ʧ�룬���F���ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ޫ�ä�����в��С������ں��������֣�������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����̫ƽ���������С��ķ���£���𢿵�١�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ų��������˳�ࡣӵ��������ս����³������ͬ�Σ��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����׾ӣ��Ƴ�ʧ�ࡣ�������F�����䱦¸��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ղ�ע�������鲻�����Ź�ף�����۸���ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���а��⣬̫���ܹ����������䣬��Ϊ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�أ������������˼����ˣ�ҵ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ϣ�ǽ�Ц����ƶ�񸻡��������ƣ��븣������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ӭ���֣��������������Ӽ����������Ļɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='˳���ݻ�֥������������������ʮ�����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݳ�����������𡣷������ӣ�����ʧ�С��������ڣ�����Σ����';
  exit;
end;
if s='��֮����' then
begin
  result:='�ν����֣����в�����������������Ϊ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ҿ�֮�ţ������˸���Ӫ˽̰»����Ϊ�ڲС�����̩ɽ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸ���ӣ�ң˼���ѡ��ÿ���Ұ��ʹ���Ŀࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����������һתΪ�١������ĺ������л���';
  exit;
end;
if s='��֮��' then
begin
  result:='��¶��Ȫ��̫ƽ�C�P���ʵ¸Б����q���񰲡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ޱ����������˼���������ۼ����������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У�����ͥ�á�����ʩ�������»�ģ���ʧ��';
  exit;
end;
if s='��֮����' then
begin
  result:='��ͷ��Ŀ����η���ޡ�����֮���������ɵá�';
  exit;
end;
if s='��֮С��' then
begin
  result:='��ȸ��é���������顣�������ˣ�毺�Т㩡���ͬ��Ը���������֡�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�ľ�֮�£������¸�������̥ز��������ʵ���������ң�������Ϣ��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='����δ�ɣ��������¡�ˮ�����棬ʹ�Ҳ�ǰ��';
  exit;
end;

end;

function heng(const s: string):string;
begin
if s='��' then
begin
  result:='�Ƶ�����������֮����в��������Ծ�ֹ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��ܯ�b�㣬�����۽ǡ���ҹ֮�ң�������ֱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȸ˥�ϣ������뺣�����ڲ��Σ��������������£���λ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ų��ǣ����������������޻������ĵû���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������꣬������ֹ���������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����гݣ���ŭ���ӡ�������ǽ��ǣ�����ӡ������ɽ⣬�Ǿ���ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ĳ����㣬��ɽ�༬��������ˣ����޲�����';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='ţ�U���ӣ����ڴ�Ұ�������΢��������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ԩ��������졣�»����ģ�Ϊ�ݰ��������r�¹ȣ�ĺ�����ء������޻����⾫��ҫ���������ѡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�ȼ��˼��������޾̡���ʥ���ӣ��������֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��½��������֪�׺ڡ������˲����������ˡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='һ����ͷ�����ʶ��ң��Ҳ����Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ĵ�ԣ����ֲ��ݡ������·����������ࡣ';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='���л��ǣ�������ߡ�������®�������ֻ���';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�������˸�Ը��Ϊ����С��������أ���ϲ�౧��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�������ȣ������纥���������ģ��������С����Ա�ˮ�������׾̡�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��֪���ҹ�����š��������ޣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������հ��޹⡣ɥ��ʧ����ʹ�����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ˮ�࣬����Ʒ����������ϣ������Ա����������ˣ���ˮ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮�ڳ�����Ϊ�̡��������ϣ�������ֹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='Ȼŵ���У��������ˡ�ʹ��¶�ޣ�ҹ�����ҡ���ŭ��ֱ�������Ŀ�����������ʷ�������';
  exit;
end;
if s='��֮���' then
begin
  result:='�������⣬ŭ����ֹ������㹁䣬����Ϊ�С�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ţ����ֵ���顣���Ì��٣�����Ϊ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��¥½�����Աܷ��ꡣ�������������������֮����Ϊ�����������󸥵á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������䣬̫�����С���ʱ���ᣬ��֮������';
  exit;
end;
if s='��֮����' then
begin
  result:='����֮�������Ҽ��ң��԰������';
  exit;
end;
if s='��֮����' then
begin
  result:='��Т֮��������Ϊ�С����Ī����������ԫ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϲ����ţ������ҹڡ��������࣬ʹ�����ǡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='��߮��������֪������������꣬��ɱ�֮������𱨣���������������ֹ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������ǡ�����Ӻ������u�Ӿӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ���ũ�ùȡ����ӻ��£���ǧ��»��';
  exit;
end;
if s='��֮��' then
begin
  result:='���̴�������˼�����С�ݣ��Բ�֮񪡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���A֮�T�������c���������О飬�n���һ����ɮ������ґn����';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������꣬�������w���������c�����ԟ��ݡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦȢ�������׼��ӡ�����Ȼ飬�����ȥ��������������ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='����ޱ�����ض����ѡ������ұ���ĺ�����á�';
  exit;
end;
if s='��֮����' then
begin
  result:='��֮����������ء�ʧ�����h��������ʳ��';
  exit;
end;
if s='��֮�' then
begin
  result:='��ĺ��Ŀ��������Ϣ��������֮�������丣�����׶��ԣ���Ϊ�ڲ�';
  exit;
end;
if s='��֮�' then
begin
  result:='ޤ���������������⡣���ӺӺ����»��ͬ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������㡣������ͬ��δ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʤ���������ˮϢ���������𣬾���������';
  exit;
end;
if s='��֮��' then
begin
  result:='������³�����U����������ԣ��ɼ����С����ڲ���������롣�˵��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧ��������ҡ������ó����²�֮���������԰���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ŵ�ʮ�죬�����ǰ��������֮��������ɽ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڳ�࣬������͡���̰»�裬������̡����־ͬ��������ӣ����Ხ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���겶���ڶ�ǰ�����ڻ��ǣ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ǿ�����岻�С������������³������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£�����Ϊ�¡��в�ʧ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������ꡣ�ﲻ�޾ƣ�����������������ͨ���븣��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Q��������Ԧ��ǧ�����ϲ��࣬�븣Ϊ�顣�������ף����޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ݾӣ���ֹ���ǡ�����֮������Ϊ���С�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�F�죬�������������޹�������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Զ����ӣ�����ږ�p���ճ���������Ϊ�����';
  exit;
end;
if s='��֮����' then
begin
  result:='�������࣬�ܷ����������ʤ������ӺӼ䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����۷��������С���ţ֮�������丸�֡����²��ˣ������޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮�Ϻ�����ҹ��ֹ�������Ͱգ��ͷ�㾿ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='Թʭ�ձ�����ŭ�������������ѣ�����Ϊ�ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ſ����У���ʳ���������ͷ������������㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ͻ�����������̡�������ɣ������Ⱥ�����������ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ż���ʳ������˭�档���Ų�ͨ�������鼱��������ȣ�һ��ǧҶ���м���Ϣ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ʊָ��꣬Σ�ߵð��������޻���������Ϣ���������š�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�������ۣ����֮�ҡ�һϢʮ�ӣ��Ź����ء�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�������񣬲�ʤ���Ρ������������ܻ����ҡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�ξ��޹⣬�������¡���Ů���У�����������';
  exit;
end;

end;

function dun(const s: string):string;
begin
if s='��' then
begin
  result:='��Ϳ����������̫�ҡ��������������ޱ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�����޸�����������������Ұ���Ļ��Ϳ࣬���ǲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܳ�֮¡���̴����ס�̫�����ӣ��������ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ѩ�й��ڣ�����Ϻ󡡣��ȥ������ɵò���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϊ���ţ��ƹ����������ϼ����������޶���';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ŀ�����ෳ�󡣸��կ������Ҳ��ɴӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�»����ᣬ������������ý���ѣ������ɡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='������ף������޻������岻�ף�ִ�԰�ȫ����ʦ�����������֡��Ų�����������š�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڲ��У��������ˡ�����y����������ʱ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����޾ԣ�����������Ⱥ�����꣬������ͷ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��룰ռ�����ȡ��ֱ���������ˣ��ù������';
  exit;
end;
if s='��̩֮' then
begin
  result:='������˿������Ϊ�֡�ԽĶ���ã������T�ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����ˮ�ɣ����������޻�����󣬶���ɳʯ��';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='������¹������ͷ�㡣������ҹ���������á�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ջ������Ե������������򣬲���������';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����׹磬�Ƽ�Ϣ�ʡ������������ƶ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��������������֪���������裬���й�ء�ֹϢ�нڣ������ٿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='Ң�����٣�ʥ�����档ʹ�񲻾壬�������衣';
  exit;
end;
if s='��֮��' then
begin
  result:='�ѹ�ʧ��������㣿�ѷ�봦۩��ɥ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�eĪ���У��򵩴�������סֹ��δ����ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˹٣�һ�վ�Ǩ����ߪ���ȣ�������ɽ';
  exit;
end;
if s='��֮���' then
begin
  result:='ȥ����ף��������ϣ������޹���';
  exit;
end;
if s='��֮��' then
begin
  result:='������������������Ӹ��ѣ�����Īȡ������Ϊ�С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�� ���ӣ���Ŀ�ڳ�������ĸ�������ͣ�����Īȡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ڣ��ĵ����š������ܸ���ͯ���ǻ��������á�';
  exit;
end;
if s='��֮����' then
begin
  result:='����ҽ���ǰ�ٴ�ɣ����ָ��ʯ��������֡��ϲϲ���������֯����������������ÿ͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˵�������ʳ�ϲ������񶫱��ų�̫����';
  exit;
end;
if s='��֮���' then
begin
  result:='�������������ݲ������游�Ϳ࣬����ɿڣ�������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='ʢ�к����˥�ϸ��ޡ�ӯ�����٣��������]��֣��ʧ�����ض�������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ͣ�ʹ��ƶ������ĸ���֣��������š�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ұ�л��ף����˼�ȡ�������ǻ���ĺ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ٺ��ɣ��ڴ��ɼҡ������������ĸ���ǡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�������У���ְ���ϡ��ֲ�ʤ�裬ʧ����š�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ѩ�󺮣����ﲻ����������ʿ��ʱľ��ƶ��';
  exit;
end;
if s='��֮����' then
begin
  result:='����ʱ�ţ�ʧ�����͡�������������Ϊ�ļ���';
  exit;
end;
if s='��֮����' then
begin
  result:='Ȯη�ͻ�������Ϊ��������ִꪣ������������޾̡�';
  exit;
end;
if s='��֮�' then
begin
  result:='��ɽ�߸ڣ����P�ѵǡ���·��Զ�������޹����ǲ����ף�������ȥ��';
  exit;
end;
if s='��֮�' then
begin
  result:='��ʱ���죬���ҹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������������������衣ӯʢ֮�ţ����ݹ⸲��������̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ĺ�����ֲ�������ڵ���������˲��⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ݶ���������ꡣ�����飬���b��������Ϊ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ո߷ɣ�Զ�����롣����ʥʦ��ʹ�Һ�г��';
  exit;
end;
if s='��֮��' then
begin
  result:='��棾��٣������뽪������Ӫ�𣬰��������';
  exit;
end;
if s='��֮��' then
begin
  result:='ȱ���މ����ѴӶ������������裬������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ҹȮ�ͣ�����®�⡣�����������ɢ��ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�׳����أ��������С�������Ѯ����Ϊ�ӽ���ʹ�����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϻӿ��飬�ɾ����㡣���ò��ģ��ܻ����ڡ��������ţ�ʹ��ڴ档';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮ʿ��������ϲ���������������Ϊ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���˸��ӣ�������Ұ����ң���飬˼�Ҵ�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������𣩺ڣ� �Ժ�����������硣�׻����֣������Ѻ⡣��ȸ�������������Ρ�Զ�����ţ�����������ȫ�˰���';
  exit;
end;
if s='��֮��' then
begin
  result:='·���׼���ǰ�����㡣�����ÿͣ�Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������������ţ�ʹ�Ҳ�����';
  exit;
end;
if s='��֮����' then
begin
  result:='С��֮�У�������ϲ���������ʣ��������ȡ��˹�֮�ԣ����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǹ���ʱ���������ǡ������Ϲ����뱦���';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϣ�磬�������ѡ������������ͭΪ�ء����������������޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ˮ���ᣬ˼�����ӡ�����뼹飬���ҿϹˣ�ֶ添ںޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ѿ������������⡣����ִ�a������������';
  exit;
end;
if s='��֮��' then
begin
  result:='녉�Է���f��ެ�롣Ϭ����裣��G���Ը���';
  exit;
end;
if s='��֮��' then
begin
  result:='���������ҹ��ࡣ�����ַ�����ɲ�����ӥ�r֮�꣬�������ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�C����ʱ��������ա�������Ը��΢�ӽ�����';
  exit;
end;
if s='��֮С��' then
begin
  result:='������ԣ��ϼ�̫�С��겵�ͻ���Ϊ�����䣬����μ����';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���Ŷ��У������������������ᣬ�����ڰĺ�ޱ��࣬������ꡣ';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��Ϊ�������������֡��������ţ����������ʹ���еá�';
  exit;
end;
end;

function dazhuang(const s: string):string;
begin
if s='��׳' then
begin
  result:='�������ܣ�����������ǰ����ì������ǿ���޿ɵ��ߡ�';
  exit;
end;
if s='��׳֮Ǭ' then
begin
  result:='����������ٿ��˼ҡ������д���̰���ߵã�������ǡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�Ҹ����㣬�������������ı������ɸ꙲��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='⨺�ڴ������ط�λ����Ȯ�зͣ��������㡣';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�Ļ���������档�ҳ�Т�ӣ�Ϊ��������';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�������£�����Ϊ��ة����������ʧ����';
  exit;
end;
if s='��׳֮��' then
begin
  result:='��������ϱ��޹����Ų���¹������ʧ��';
  exit;
end;
if s='��׳֮ʦ' then
begin
  result:='¹����ɽ��������Ⱥ��������������ʸ�ˡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�����׳�������Ϊ�֡��Բ����飬��Ի��ţ�����������������';
  exit;
end;
if s='��׳֮С��' then
begin
  result:='��ʧ�ξӣ��Ӳ�Ϊ�֡�������赣���ŭ���ӡ�֯�����ģ����㲻�ҡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='����֮�����������ڡ�ʹ�����棬���޻��֡�';
  exit;
end;
if s='��׳̩֮' then
begin
  result:='�ڶ�֮�ã����Ϊ�ꡣ�Ķ����ˣ�ʹ����ͨ��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='����������֮ƽ�硣�Ի�ʧ������֪������';
  exit;
end;
if s='��׳֮ͬ��' then
begin
  result:='�������ӣ����������������ǣ��ղ���̡�';
  exit;
end;
if s='��׳֮����' then
begin
  result:='�������ߣ�������΢���˵�˥룣�������롣';
  exit;
end;
if s='��׳֮ǫ' then
begin
  result:='������𣩺ڣ� �Ժ�����������硣�׻����֣������Ѻ⡣�������ˣ�������ꡣ';
  exit;
end;
if s='��׳֮ԥ' then
begin
  result:='�������ң���ˮ��������ɾ��ң���ʦ������';
  exit;
end;
if s='��׳֮��' then
begin
  result:='��ݷ��Ů��Ϊ�����󡣹�����ӣ�ĸ���ĺ���';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�±��˱������ʷ����������������޿���';
  exit;
end;
if s='��׳֮��' then
begin
  result:='���վ��⣬���������»�����죬��Ϊ������';
  exit;
end;
if s='��׳֮��' then
begin
  result:='ӧ���������в���ǰ����ʯʾ����Բ��ɡ�';
  exit;
end;
if s='��׳֮���' then
begin
  result:='��ʧ�乫�����鵱ɥ�������������������硣';
  exit;
end;
if s='��׳֮��' then
begin
  result:='���P����������Ϊ�����������ӣ����ż�����';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�˷���꣬�����㡣һ��ǧ����ᰮĸ��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�����������������档�����޼����о巽Ϣ��';
  exit;
end;
if s='��׳֮����' then
begin
  result:='����Ҿ�ƣ��������ҡ�ƽ����£�����������';
  exit;
end;
if s='��׳֮����' then
begin
  result:='�������ϣ��׷����١���ɻ��ң��ּ��ҹ���';
  exit;
end;
if s='��׳֮��' then
begin
  result:='˪���ջ����ݳ��������������£�����Ϊ�顣';
  exit;
end;
if s='��׳֮���' then
begin
  result:='������֣�Ϊ�һ��ڡ�������ͨ������ʧ�⡣';
  exit;
end;
if s='��׳֮��' then
begin
  result:='����������ʧ����һǰһ���������С�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='����ˮ�ϣ�Σ��һ�ݡ��������㣬�����о̡�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='����������Ϣ�д������������ĸϲ�衣';
  exit;
end;
if s='��׳֮��' then
begin
  result:='������⣬������������ĸ���ʣ�������ҵ��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�������ˣ��������𡣵�ӥ���ã������й���';
  exit;
end;
if s='��׳֮��' then
begin
  result:='֣�����࣬�������ǡ������࣬�������ġ�';
  exit;
end;
if s='��׳֮����' then
begin
  result:='��ʸ˹�ţ��ѵ����ۡ��跢����������������';
  exit;
end;
if s='��׳֮����' then
begin
  result:='�������ƣ�δ�����ڡ���������ν��ŭ��������ڡ�';
  exit;
end;
if s='��׳֮�' then
begin
  result:='��ӥȺ�У������ǰ�������깫���������ۡ������ſ��������֡��粻���ţ����볾����';
  exit;
end;
if s='��׳֮�' then
begin
  result:='�������ˣ������ұ���ѭа������Ӳ��ɵá��ϱ����أ�������ҡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�������ǣ������¾㡣�������֣�����ǡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�������������ٲ���������Ϊ����ʹĸ��̾��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='̫�֮����ľ��ӡ������ܳɣ�����С�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='���ʵ���n�n��Ϣ��������죬������ʳ��Ϊ��������';
  exit;
end;
if s='��׳֮��' then
begin
  result:='����������Ůʧ������¶���ԣ��������ϡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�Ҵ���©��������ȱ���������꣬���鲻ȫ��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�������䣬�������ҡ��������ã���Ң٧ʳ��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='��ʪΪ�ӣ������ٽ����Ϲ����䣬ʹ�Ҷ�η��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='���ѹ¶�����»�ౡ���������ޣ����ӱ�����';
  exit;
end;
if s='��׳֮��' then
begin
  result:='���Ǹ�Ŀ���������¡������Ȼ�������ҹ�ҡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='��β�b�ɣ�����Ϊ�ӡ�����棬�����Ա�����Ȼ��Ϣ��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�����ĺ�����پ��¡��������أ��������á�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�����ʱ���ϱ����ǡ�����ؽ�������������';
  exit;
end;
if s='��׳֮��' then
begin
  result:='���Ͽ�󣬼�����㴡��㳼ִ����ƽ�Ӿ��ۣ����Ĳ��졣';
  exit;
end;
if s='��׳֮����' then
begin
  result:='������𷣬��Զ�ږ�����ò��ˣ��������ϡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�������������ڶ�ƽ���������У��Ӵ��������ҵ������������ҡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='׷�Զ��ߣ������Һ����������������С�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='Ȯ�ͷ��������½��š�����Ϯս���������ߡ�';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�Ը���ڣ���ֱ���񡣴�ʯ���磬ǧ���ɶ���';
  exit;
end;
if s='��׳֮��' then
begin
  result:='������磬����u�ء�Ϊ�����������濼��';
  exit;
end;
if s='��׳֮��' then
begin
  result:='�ı��޻�������һֹ�������ϱ��������ɵá�';
  exit;
end;
if s='��׳֮����' then
begin
  result:='������ѣ��鲻�ɵ����������У�Ϊ�����ꡣ��֮�ϻ������䰲�档';
  exit;
end;
if s='��׳֮С��' then
begin
  result:='����ɶ�������������ɵ��';
  exit;
end;
if s='��׳֮�ȼ�' then
begin
  result:='������󼣬���Կ�����ʹ���޵á�';
  exit;
end;
if s='��׳֮δ��' then
begin
  result:='�����޵�����ɢ���ۡ��������ң����ӳ��ߡ�';
  exit;
end;

end;

function jin(const s: string):string;
begin
if s='��' then
begin
  result:='�������꣬��ţ�����ױ���ɢ�����ౣ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='һ�����ڣ���������Ԫ�����ɣ�Ϊ���ֻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�֣������Ǿ塣�����óǣ�ʧ�䰲�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ǿ����������ĸ������Զ˼�������ǿࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='ǰ������ⲻ��ȡ�����Ŷ���������С���ţ����ȥ֮�λڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����е£������»������ʩ�ݣ��Գɶ������������Σ�����δ����';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��ȻΨŵ��������͡�ִ�������������¸���';
  exit;
end;
if s='��֮��' then
begin
  result:='���̵������㷽�졣�к����꣬�˷粡޻��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�������գ�����Խ�򡣶���ʧ�������Ϳࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������װ�����Ʊ��գ����꽵����ʹ����ͨ�����һ��ᡣ';
  exit;
end;
if s='��̩֮' then
begin
  result:='�߽ż������ܼ�����������ǧ������еá�';
  exit;
end;
if s='��֮��' then
begin
  result:='���纮������ѩ�������˼���֣��������ġ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='������𣚣ִһ���ȡ���������������ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='ޤ��¶�����������⡣��𽇇������»��ͬ��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�����󸣣���ϲ��á��������ͣ����㸨����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='ɣҶ��󼣬�±����硣Ů�����ɣ�˿��Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ң������Ļ���ϲ���Ӽ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٿ����������ᶫ�С����ʳ��Σ��ϼֳ���������Ϣ���������գ�η��ϲҹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ƥ����ӳ������������£��Ժ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�r�ͽ��������ƽ�ݡ��������������έ®���ҼҼ�����˼��ʳ���';
  exit;
end;
if s='��֮���' then
begin
  result:='��βСͷ���ز���ҡ��������ǿ���������ۡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϣ�磬�������ѡ����ͭ��������Ϊ�ء�������������ֹ�޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������̡��춨�ı�����ó���';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Ϊ���������ֿ��飬��ȥ���ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='������������޲���������̨������̾Ϣ��';
  exit;
end;
if s='��֮����' then
begin
  result:='Ը�����飬�ⳣ���ӡ���������޲�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�q�����ӣ�����η�ܡ���Ŀ���أ���ҹΪ����';
  exit;
end;
if s='��֮���' then
begin
  result:='������ǫ�����������������£�������ģ��ܸ����ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϻ���ȥ�����������љ��һ�ռ�ĸ�������ǻڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���۲��裬������㡣ͯ����£��岽ƽ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������¾����ա���ǫ���������޻��ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������ܵ��㡣��ʳǧ��������顣';
  exit;
end;
if s='��֮��' then
begin
  result:='ǧ���U�ԣ�Ϊ���������������٣������гɡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='����е£���ı������Ϊ����ͥ������������';
  exit;
end;
if s='��֮����' then
begin
  result:='�����޺ϣ�������ָ������ʧ�����¹�������';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ۣ��������⡣�������������޳ɹ�';
  exit;
end;
if s='��֮�' then
begin
  result:='����ʳ�ܣ����ڿ��ꡣ�����޼ң�־��Ϊ�ǡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�徭���ͣ��ʵ����ڡ����·�˪��������̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='и����ǰ������ʧ�㡣����֮�䣬���޻��ס���ˮ���Σ����Բ��š�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ʰ��ƺ񣬲������ޣ��������ӣ����Ҿɶ������渻�С�';
  exit;
end;
if s='��֮��' then
begin
  result:='ȱ�Ʋ��ɣ�̥��δ�����������Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݽǲ��ˣ����۸������������������ٹ⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������Ѷ��У��������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ԧ�����R�@���ɡ�������Ԩ���κ�֮�ԣ��������顣';
  exit;
end;
if s='��֮��' then
begin
  result:='��¶����������Ը�����׾��ӣ�������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������䣬ǧ����ޡ��߰�Ϊ�ȣ���ʧ���ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�˲żȵǣ��Գɼι�������ͥ�ᣬ�������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ԣ����������������Ǻޣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ϳ���ã��ֿ���顣������ӯ������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ӡ���֦�ųᣬ������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ѧ�����꣬ʥ���������ȼ����飬�μ����졣�N��֪�����������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������ʧ������˺���ȣ�������롣';
  exit;
end;
if s='��֮����' then
begin
  result:='������Ϣ���������������]˽�q�����ֳɹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����������붼�ء��ڶ����ң�����뷼���';
  exit;
end;
if s='��֮��' then
begin
  result:='������ά���ϱ����ԡ�����ʧȺ���������¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�ף��򸾺��ס�С�˳˳���˶��ʧ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ϴ����˱����衣��Σ��������ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�紵����ʮ���������Ϲ����ˣ����ɰ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˳�����Ů�޷���ʮ���ң�������®��';
  exit;
end;
if s='��֮����' then
begin
  result:='��ţ��������Ϊ�У����Ҽ�ϲ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�³�������ɽ���������¸����𣬻������';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���������������ͨ�����֮�ţ���ʧ���С��ټ��ɽ�������������Σ����';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�ؾ���ʦ����ת��ʱ����֮��Σ��';
  exit;
end;


end;


function mingyi(const s: string):string;
begin
if s='����' then
begin
  result:='��ɽ֮����GΪ��������ǣ����Ҽ��������ɧ�ǡ�';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='���ĺ�����ʮ����Ѱ�����п�ʹ����Ϊ�ǲ���';
  exit;
end;
if s='����֮��' then
begin
  result:='̫����������ʮ���������ʥ�ģ�Ϊ���Ҹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮Ϳ�����бص������л��ڡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����й�������ʢ¡���������ܣ���ó��ˡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ͯ�����ң�δ����ϣ��������ޡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����ϵ�꣬Ϊ�����С���ĸף�ʣ��������֣���Ȼ������';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='�Ƶ�����������ʥ�ϡ����ܴ󸣣�����ƽ����';
  exit;
end;
if s='����֮��' then
begin
  result:='���Ϊ�꣬˥�߸��ˡ�����֮������ð�Ϣ���и�����������ڤ�ҡ�';
  exit;
end;
if s='����֮С��' then
begin
  result:='��Զ�ɾ���·�޶�ڡ�������ۣ�����η�ɡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����Ķ���ĺ��޽������֮���֣�־���Ļ���';
  exit;
end;
if s='����̩֮' then
begin
  result:='����֮�������ǲ��ɡ�������������������';
  exit;
end;
if s='����֮��' then
begin
  result:='����Զ�ޣ��������ҡ����Ҵ�ʳ�����󲻵á�';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='����ʧʱ������Ϊ�֣�������ǡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='���ͨ����Σ���ף�����������';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='�ǻ���լ�������Ծӣ�Ϊ�һ��ǡ�';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='����ȣ���ڤ���ҡ�������ʵ�����޳��¡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�ı����裬����������ĵ��ң��������ס�';
  exit;
end;
if s='����֮��' then
begin
  result:='����īī���ǻ����ӡ��ϱ�ʧ־���������á�';
  exit;
end;
if s='����֮��' then
begin
  result:='���ϲ��ѣ�����̸�_���ż����ڣ��������ߡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�»���ʱ���������š�������ʥ�����ܸ��ݡ���Ů���ޣ���Ϊ��ڡ�';
  exit;
end;
if s='����֮���' then
begin
  result:='��ˮ���ᣬ˼�����ӡ�����뼹飬���ҿϹˣ�ֶ添ںޡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���봺�ɣ��±�����������ʧ�����������أ�����Ϊ�̡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����޻�����Ϊ���ԣ������԰���';
  exit;
end;
if s='����֮��' then
begin
  result:='α�����ת��ڴ�󣬲�֪�Ǵ���';
  exit;
end;
if s='����֮����' then
begin
  result:='��϶�ԵУ�����������ʹ����Ц��';
  exit;
end;
if s='����֮����' then
begin
  result:='ǣβ��ǰ������ʧ������˷�Ա���';
  exit;
end;
if s='����֮��' then
begin
  result:='���겶���ڶ�ǰ�����ڻ��ǣ��������ߡ�';
  exit;
end;
if s='����֮���' then
begin
  result:='��Цδ�ϣ��������䡣��Ӽ��£���ϵ������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ѣ��������ꡣ�˺�ƽ½���������ݡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ɽ��´޴��������������������ʹ���Ŀࡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='�������꣬�u���ѵǡ������Ƴ����������á�';
  exit;
end;
if s='����֮��' then
begin
  result:='��΢������������������Ȼ��ͨ���������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������꣬�������ˡ����籼����ȥ�����硣';
  exit;
end;
if s='����֮��׳' then
begin
  result:='����Ȯ�Σ�������ס������ܳɣ���������';
  exit;
end;
if s='����֮��' then
begin
  result:='�´ʴ��飬ʹ�����㡣�����������Գɹ�����';
  exit;
end;
if s='����֮����' then
begin
  result:='������棬���޻�ݬ��ʹ��󸾣��粻����';
  exit;
end;
if s='����֮�' then
begin
  result:='�����ػ�������Ϊ�ѣ����ܰ��档�λ�ϵ�������ܸ���';
  exit;
end;
if s='����֮�' then
begin
  result:='¹�����ݣ��������ѡ�������������Ǽ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʧ¹����֪���������Ա�Σ��ȫ������������ʱ��������еá�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ʱ���£����ܸ��졣';
  exit;
end;
if s='����֮��' then
begin
  result:='��˼���ۣ�����ﶫ��˳�������������ա��������أ��������ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������I���������ڡ�ƶ���������ĺ����ࡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='�¶��ش���Ī��Ϊ��������־�ࡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='�ΪҢʹ��������ĸ������ٸ�������ϲ�ӣ����ָ��С�';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮�֣�����Ȯ�������GΪ����������ū�������ͷ����Ϊ���ڡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='������ͨ����Σ����յ���Ը��������ӡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����㣿񣬰ν����ˣ�Ϊ�����ꡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='��Բ��ͬ���������硣�򾮵�ʯ���Ͷ��޹���';
  exit;
end;
if s='����֮��' then
begin
  result:='�˷���꣬������㡣����ǧ����Ұ�ĸ��';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ϳ����������̫�ҡ�����������������';
  exit;
end;
if s='����֮��' then
begin
  result:='��^Ȣ������Ŀ����������ģ��벮�౳��';
  exit;
end;
if s='����֮��' then
begin
  result:='ת�й�죬�н���Զ����Ϧ���ţ����Ц�ԡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='�����ѹ�����ȥ�ұ���������ǣ���Ϊ������';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮Ϳ�����бص��������޾̣�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='��������������Ը������Ŀ���Σ�������ǡ�Цϲ��ׯ���������С�';
  exit;
end;
if s='����֮��' then
begin
  result:='���뵸������˳��ʱ�������нڣ����ֲ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='�ڱ����ˣ������޳����������ڣ��Ҳ���ʳ��';
  exit;
end;
if s='����֮��' then
begin
  result:='����������������ɡ��������������ǰ�������԰���';
  exit;
end;
if s='����֮��' then
begin
  result:='ţ�����ߣ����»��š������������깫���ܡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='���Ͼ��棬����������ֹ��ʱ�գ������еá�';
  exit;
end;
if s='����֮С��' then
begin
  result:='��ŭ����⬲�������';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='ӿȪ�丣�������������Ϊ�������������������������ʦϮս�������²��';
  exit;
end;
if s='����֮δ��' then
begin
  result:='�ҹ�έꪣ�����ȥ�񣬵���ִ����';
  exit;
end;

end;

function jiaren(const s: string):string;
begin
if s='����' then
begin
  result:='�������ڣ�������ڡ������޵��������������ֹ���ǡ�';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='ǧ�껱������ห񣡣���ĵ���֦Ҷ���档';
  exit;
end;
if s='����֮��' then
begin
  result:='�͆����̣��������`��η���Ϣ�������Ѷ�';
  exit;
end;
if s='����֮��' then
begin
  result:='Ȣ�ڽ�������ӭ�¸����������ţ����ӻ�ϲ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������˿��֡�������ֹ���������С�';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʥ�£�����̫�������齨�У������Ը���';
  exit;
end;
if s='����֮��' then
begin
  result:='����ɶۣ��������������߸�Ľ��������ı���������ˣ��˹���ӡ�';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='�����У�������ǡ�ĺ�޻�լ��Ϊ�����ˡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������꣬������ܡ�����Ԫ��������������';
  exit;
end;
if s='����֮С��' then
begin
  result:='�꽰��գ�Ϊ����ʳ�����ϻ��£�֣�ѳ��ߡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʧ�⣬С�˵�־�����Ų�������а���������а�Ң���߲��ɾȡ�';
  exit;
end;
if s='����̩֮' then
begin
  result:='�ʵ���Ǣ�������������ⷽ���������������ϲ�֯���������á�';
  exit;
end;
if s='����֮��' then
begin
  result:='������񣬷��ñ�ʯ����Ի���ˣ���Ի�����������';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='���ĺ�ս��ʿ������������У����ҳɹ���';
  exit;
end;
if s='����֮����' then
begin
  result:='�ٴ����ģ��������ᡣ���Ҽθ������޲�����';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='���ϲ��棬�������롣���ﱻ��������Ϊ�֡�';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='��Ȳ��죬�����������֮���أ������еá�';
  exit;
end;
if s='����֮��' then
begin
  result:='������ƶ��ĺʳ���{�������������������֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='������³���ϼ־�������ë�ݸΪ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʡ���������жȡ��Ҹ����㣬�����Ը���';
  exit;
end;
if s='����֮��' then
begin
  result:='���������������ĺ�����ȥ���飬ϲ����ĸ��';
  exit;
end;
if s='����֮���' then
begin
  result:='�ſ����У������ꡣ�������������Ҷ��ס�';
  exit;
end;
if s='����֮��' then
begin
  result:='����ͷ�������²��ɡ�����������������';
  exit;
end;
if s='����֮��' then
begin
  result:='�����˷磬�ϼ��񹫡������ܴ̣�������ͨ�����̾�λ���������';
  exit;
end;
if s='����֮��' then
begin
  result:='���ʾ��ӣ���Т���ڡ��˹�Ϊ�ڣ����ֲ�����';
  exit;
end;
if s='����֮����' then
begin
  result:='��Ȩ���룬��ҹ�ǻ���Ⱥ���¹⣬�������ˡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='ѧ�����꣬��ʥ�����ȼ����飬��ϲ���졣�N��֪�����������ǡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ɽ�Ǽң�����˼������ӯ�ң�����������̾�Ҿ��ӣ�����δ�ѡ�';
  exit;
end;
if s='����֮���' then
begin
  result:='��򥿪�ڣ���ֱ��ݡ�Ȼŵ���У�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='���Ǹ߰��ʧţ�����񾪻̣������ܾ̣�뷲����ꡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='���г��ǣ����ø����������룬����������';
  exit;
end;
if s='����֮��' then
begin
  result:='�Ŀ�־㣣��Ӵ����ࡣ�����޳������������';
  exit;
end;
if s='����֮��' then
begin
  result:='�����˹٣�һ�վ�Ǩ���uȺԽ�ȣ�������ɽ��';
  exit;
end;
if s='����֮��' then
begin
  result:='���ڼ�Ů��Ϊ������ׯ�����ݣ�������ĸ�����ھ�ʦ��������ϲ��';
  exit;
end;
if s='����֮��׳' then
begin
  result:='�������ӣ���ɥ���졣�嶡���ף���ʧ������߳��š�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����壬�����������＾�ģ�ˮ���Ҿӡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='�������򣬲������������滢®������ʧ��';
  exit;
end;
if s='����֮�' then
begin
  result:='�������죬���þ��ޡ�����ϲ�̣������Ϲ���Ͷ��֮�ǣ����ɻ��֡�';
  exit;
end;
if s='����֮�' then
begin
  result:='�巽��ά����ƽ��Σ�����Ծ�ֹ��������Ů��';
  exit;
end;
if s='����֮��' then
begin
  result:='���ְ��񣬺�ѩ��챡���ǰ���ã��������ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������������Ϊ�ҡ�˪����ͬ���������ʡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����������׻�ִ����������£�����޸衣�׶���Ρ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���Ż��ǣ����ϻ���������������Ϊ�ֻ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�������񣬼�����象������׶�ʹ�Ҿ���';
  exit;
end;
if s='����֮��' then
begin
  result:='��������������ʧ�������ǻ�����ʹ�Ҷ�㲡�';
  exit;
end;
if s='����֮��' then
begin
  result:='��¥�������߽����á���ʧ���ʣ�������Ұ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�ܻ����꣬��ȫ���ˡ���λ���ߣ�����׹����';
  exit;
end;
if s='����֮��' then
begin
  result:='������Ŀ��ŭ�`��ŭ��������Ȯ������������';
  exit;
end;
if s='����֮��' then
begin
  result:='Ȫ�����ǣ�����Ϊū������������������ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ʳ���ƣ��α��ۻᡣ��������������С�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ţ�U���������۽ǡ����ð��飬�������ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='·���׼����������㡣�����ÿͣ�Ϊ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='ִ����н��ʹý�󸾡��ͺ϶��գ��������ơ��ٱ����������ϲ��';
  exit;
end;
if s='����֮����' then
begin
  result:='�ݳ����ţ�˳ʱ�������������������޻���';
  exit;
end;
if s='����֮��' then
begin
  result:='���¶��������Ϊ������̨Ϊ�أ�ʹ�Ҿ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='ɽ����Ĺ���������ݡ�����߾��������޾���';
  exit;
end;
if s='����֮��' then
begin
  result:='����̰����Ϊ����˵��̽����ƿ��������֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�βĴ�ʱ�����Ŷ����򾶬�У��������ǡ�ɣ�ϲ��ã�Ů�첻�ɡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���̾��̣�ɢ�����ѣ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='���������������������в�������ΣΪ����';
  exit;
end;
if s='����֮����' then
begin
  result:='���߻�����ϲΪ�Ҹ����׶��������ֺ�������';
  exit;
end;
if s='����֮С��' then
begin
  result:='����Ϊ�ԣ��������������ƶ��ޣ�����ɽ����';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='������أ����������������޾̡�';
  exit;
end;
if s='����֮δ��' then
begin
  result:='������ף��鲻��á���ľΪ��������ɱ��';
  exit;
end;

end;


function kui(const s: string):string;
begin
if s='�' then
begin
  result:='��ӯ���ڣ��˼���𢣬������Ϣ��';
  exit;
end;
if s='�֮Ǭ' then
begin
  result:='�������£��ι۾Ƴء����ü�����ϲΪ���֣�ʹ��������';
  exit;
end;
if s='�֮��' then
begin
  result:='�ؽ����ӣ��������֡�ʵ����飬��Ϊ���';
  exit;
end;
if s='�֮��' then
begin
  result:='�Ŀ���Ҷ�����²�ʳ��������ǿ�������ܸ���';
  exit;
end;
if s='�֮��' then
begin
  result:='ܰ���콵�������ϵǡ������ӹˣ�������ڡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='���ǰ׫G����β�����ǰ��ȴ�٣��������';
  exit;
end;
if s='�֮��' then
begin
  result:='ɽû�𸡣�½Ϊˮ�㣬��ȸ��®��';
  exit;
end;
if s='�֮ʦ' then
begin
  result:='ܲ��ǳ�ޣ�������ı����Ԯʧ����Ϊ��������';
  exit;
end;
if s='�֮��' then
begin
  result:='���������Ȳ��ɾ١���Ϳ���գ������Ŀࡣ';
  exit;
end;
if s='�֮С��' then
begin
  result:='�������ԣ��񲻿��š�������֮���������ġ�';
  exit;
end;
if s='�֮��' then
begin
  result:='��ĺ�˳�����Σ��������ʧȺ��������ᡣ';
  exit;
end;
if s='�̩֮' then
begin
  result:='���м��㣬�ݻ�ȡ�����rڼڼ���������ǡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='���ھ�ɽ���������ѡ��Ľ᲻ͨ��ʧ��������';
  exit;
end;
if s='�֮ͬ��' then
begin
  result:='�����Ѿӣ�����ա��������ᣬ���겻����';
  exit;
end;
if s='�֮����' then
begin
  result:='�������ã�η����ȥ�����״��䣬��֪������';
  exit;
end;
if s='�֮ǫ' then
begin
  result:='�������ף��������������ڹ������������ҡ���ĸ����ղ��ɵá�';
  exit;
end;
if s='�֮ԥ' then
begin
  result:='ŭ��Թ����̰�ø��󡣶���ӥ�r������ʧ�����±�������';
  exit;
end;
if s='�֮��' then
begin
  result:='�������⣬�����֡��Ǿ����ģ����Һ޻ڡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='�������ڣ�ͬ�ҹ�ʳ���ճ���Ϣ���Ҽ��е¡�';
  exit;
end;
if s='�֮��' then
begin
  result:='������ˮ���Ժ�ȼ�������޻���';
  exit;
end;
if s='�֮��' then
begin
  result:='����������ų��С������ӷ������˺��š�';
  exit;
end;
if s='�֮���' then
begin
  result:='�Ӵ��������㷴������';
  exit;
end;
if s='�֮��' then
begin
  result:='�����棬��������������֮�ԣ����Ĳ��졣';
  exit;
end;
if s='�֮��' then
begin
  result:='������򣬶����閠����ʳ�ҹ����Ҽ����С�';
  exit;
end;
if s='�֮��' then
begin
  result:='��Ŀʧ�����ն��޹⡣�������У��������У��������ԡ�';
  exit;
end;
if s='�֮����' then
begin
  result:='���˷�������������˪��ʱ��ȥ��Ϊ�ǡ�';
  exit;
end;
if s='�֮����' then
begin
  result:='����ҽ���������֡�������Ű���������档';
  exit;
end;
if s='�֮��' then
begin
  result:='������磬�����޺󡣼�����ˬ�����˾��á�';
  exit;
end;
if s='�֮���' then
begin
  result:='�Y�����𣬳��۽ҽҡ�����׷����ʧ��ͽڣ����Đ�����';
  exit;
end;
if s='�֮��' then
begin
  result:='���ʧ�������Ʋ��ӡ�������棬��Ϊ���ꡣ';
  exit;
end;
if s='�֮��' then
begin
  result:='���������������ꡣ����������̲��й������֮�أ�����������';
  exit;
end;
if s='�֮��' then
begin
  result:='��ţ�堙������������ʹ���еá���������������ĸ���';
  exit;
end;
if s='�֮��' then
begin
  result:='���ȼ��󣬰����Ḹ���������գ��Һ�����';
  exit;
end;
if s='�֮��' then
begin
  result:='���ư�֦������˥΢������������������ӡ�';
  exit;
end;
if s='�֮��׳' then
begin
  result:='ӥ�����ˣ��÷����𡣺���������Ұ��������';
  exit;
end;
if s='�֮��' then
begin
  result:='��ս���ţ����кλ����ҼҾ��ڣ���ʧ�件��';
  exit;
end;
if s='�֮����' then
begin
  result:='����ɱţ�����������������ˣ���˥���ܡ��������գ��������';
  exit;
end;
if s='�֮����' then
begin
  result:='�������棬������ϡ��������ƣ�����������';
  exit;
end;
if s='�֮�' then
begin
  result:='���뺣�ڣ�ѭ�����ߡ�һ��һ�£�����������ʮ����ҹ������ˮ�塣';
  exit;
end;
if s='�֮��' then
begin
  result:='����֮�棬ʧ���޷�������޼���������ޡ������Ľ�������������';
  exit;
end;
if s='�֮��' then
begin
  result:='���Ŷ��棬����Ϊ�֡��M������ز����ꡣ';
  exit;
end;
if s='�֮��' then
begin
  result:='�����ݹ⣬�ܸ�֮����������������Σ����';
  exit;
end;
if s='�֮��' then
begin
  result:='������Ŀ���������塣������ڣ�Զ��Ԫ��';
  exit;
end;
if s='�֮��' then
begin
  result:='����ͬ�ң��ֵܺ�ʳ��������ã�����������';
  exit;
end;
if s='�֮��' then
begin
  result:='�����ط����������͡���������������ʧ������֮�ţ���»���档';
  exit;
end;
if s='�֮��' then
begin
  result:='�Ϻ���β������Ϊ�����ҳ�Ů������ڰָ�������򶫣������ա�';
  exit;
end;
if s='�֮��' then
begin
  result:='����֮�ӣ�������ĸ���������£�֦Ҷïʢ�����Աӣ��ٲ������������������������';
  exit;
end;
if s='�֮��' then
begin
  result:='��ܧľ�������౩�С�����ʧ��������̫̳��';
  exit;
end;
if s='�֮��' then
begin
  result:='�ݻ���ԣ�������ӭ���Ļ����أ����۵��֡�';
  exit;
end;
if s='�֮��' then
begin
  result:='��ӯ���ڣ��˼���𢡣������죬��ð�Ϣ��';
  exit;
end;
if s='�֮��' then
begin
  result:='������Ԩ���ٿ����񡣷������죬������ԯ���ӳ��ְ���';
  exit;
end;
if s='�֮��' then
begin
  result:='˼����֮�����˷�ʱ��ϴ媹��ǣ����һ�����';
  exit;
end;
if s='�֮��' then
begin
  result:='�����������Ϊ���ꡣ��������������ˮ�������ɽ�����ڴ��硣������Ϣ������ĸ�С�';
  exit;
end;
if s='�֮����' then
begin
  result:='�M����޲����䡣����߾٣�³��Ϊ������ʥ���£������ϲ��';
  exit;
end;
if s='�֮��' then
begin
  result:='ϲ�����ƣ��ټ��ɻ����ڲž��ӣ��ݸ�ӯ�š�';
  exit;
end;
if s='�֮��' then
begin
  result:='�������Σ����岻�ɡ�΢��˥��������������';
  exit;
end;
if s='�֮��' then
begin
  result:='��ˮ���£���½�ຮ��¶�޶�磬�������ġ�';
  exit;
end;
if s='�֮��' then
begin
  result:='�����̳�����֮�󶼡��޴���ܣ�ʹ�����ǡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='�ӷ�Ż𣬰�֥�����������������������ˡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='һ�����֣������ڸ������㹲�ڣ����ܿ�����';
  exit;
end;
if s='�֮����' then
begin
  result:='����ª�ң����겢�롣������ʪ����ĸä�ԡ�ƫ���ļ������ҼҴΡ�';
  exit;
end;
if s='�֮С��' then
begin
  result:='��ޱ����������˼�������´ټ������ӻ��ǡ�';
  exit;
end;
if s='�֮�ȼ�' then
begin
  result:='���׺�񣬸������С�ɧ���Կ࣬˼�ҹ�ֹ��';
  exit;
end;
if s='�֮δ��' then
begin
  result:='���˵��飬�ϻʴ�ϲ��¡�Ҹ��������޼���';
  exit;
end;

end;

function shuishangjian(const s: string):string;
begin
if s='�' then
begin
  result:='ͬ�ع��ߣ��е���ȥ��ɥ��Ԫ�򣬶���¾ӡ�';
  exit;
end;
if s='�֮Ǭ' then
begin
  result:='���Z��ԩ���������ء�����⻼���������⣬������ȫ��';
  exit;
end;
if s='�֮��' then
begin
  result:='�þ۶�������Ȯ���ԡ�Χȱ���ɣ������ܻ�';
  exit;
end;
if s='�֮��' then
begin
  result:='����ɽ��������Ϊ����һϦ���ߣ����Һ��';
  exit;
end;
if s='�֮��' then
begin
  result:='���糾�����ű�ʼ��ǿ��С���ȷ��ϲ��';
  exit;
end;
if s='�֮��' then
begin
  result:='������ԡ��˼�����¡��������������ϸ�����';
  exit;
end;
if s='�֮��' then
begin
  result:='����ݱ������v�ްأ�ʹ�Ҳ��֡�';
  exit;
end;
if s='�֮ʦ' then
begin
  result:='�����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='�֮��' then
begin
  result:='���ͼ�Ů�����ڵ��������ӵ�Ϧ�������ô�';
  exit;
end;
if s='�֮С��' then
begin
  result:='�������ӣ��������ࡣ����ϴ���������ʹ��';
  exit;
end;
if s='�֮��' then
begin
  result:='����Ȳݣ���������������ɢ����ֱ������';
  exit;
end;
if s='�̩֮' then
begin
  result:='���յ�Σ����Զ�Ͱա�ȥ���Թ飬����󲨡�';
  exit;
end;
if s='�֮��' then
begin
  result:='����֮�ţ������档�C����ʱ��Ң˴Ϊ�����˺����£�������Ȫ��';
  exit;
end;
if s='�֮ͬ��' then
begin
  result:='�������£��ι۾Ƴء����ü�����ϲΪ���֣�ʹ��������';
  exit;
end;
if s='�֮����' then
begin
  result:='��ʱ�������������������ڸ�񣣬��ҹ�ڿࡣ';
  exit;
end;
if s='�֮ǫ' then
begin
  result:='���ſ��٣��λ��������������ѣ��������͡�';
  exit;
end;
if s='�֮ԥ' then
begin
  result:='��ԭ���Σ�ˮΪ���ǡ�������ʵ����¹Ϊ�ԡ����¿��������ӷ�ʱ���������ɡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='�����ʱ������Ϊ�ڡ�֦Ҷʢï���������ǡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='���o�˷ɣ�Ϊ����顣��ʦ��ս��������ˡ�������𣬰Թ����ɡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='�׾���װ���������С����겻ֹ����Ϊ�ӽ����Ϲ����ˡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='�����������������������꣬�������衣';
  exit;
end;
if s='�֮���' then
begin
  result:='�������ţ���Ϊ�ҲС����Ѷ������������ꡣ�������ڣ������ǻ���';
  exit;
end;
if s='�֮��' then
begin
  result:='�����޳ɣ������������Բ����ã���Ī��ƽ��';
  exit;
end;
if s='�֮��' then
begin
  result:='���ǰ׫G����β�����ǰ��ȴ�٣��������';
  exit;
end;
if s='�֮��' then
begin
  result:='���������������Ϣ������ʦ���������ҡ�';
  exit;
end;
if s='�֮����' then
begin
  result:='��´ɽ޴��������������������ʹ���Ŀࡣ';
  exit;
end;
if s='�֮����' then
begin
  result:='����������������¡�������ʳ���ǲ�Ϊ����';
  exit;
end;
if s='�֮��' then
begin
  result:='���ް�Ŀ���񲻵ñ��������������ھ����������ε£������ܸ���';
  exit;
end;
if s='�֮���' then
begin
  result:='�������ܣ�����Ԩ�ꡣʹ����̣�����˳��';
  exit;
end;
if s='�֮��' then
begin
  result:='���p���棬��ĺţ�ա���ٺ��ã�ʧ�����ơ�';
  exit;
end;
if s='�֮��' then
begin
  result:='����Υ����ʹ��Ѱ������ʦ���ѣ��������䡣';
  exit;
end;
if s='�֮��' then
begin
  result:='���²��ӣ�������΢����ɽ���ߣ�����ΪϪ��';
  exit;
end;
if s='�֮��' then
begin
  result:='��ȸʳ�ȣ��ſ��ܲ����ɱ����£�����ɾ͡���˳���꣬�����Ϻá�';
  exit;
end;
if s='�֮��' then
begin
  result:='���ٸ��𣬲������ݡ�����ƽ�����ǳ��޼���';
  exit;
end;
if s='�֮��׳' then
begin
  result:='��ľ���䣬��ĺ���ҡ�Ű��Ϊ��������ʧ����';
  exit;
end;
if s='�֮��' then
begin
  result:='���׶��ߣ�������ڡ�������צ����Ϊ������';
  exit;
end;
if s='�֮����' then
begin
  result:='���ɲ��ܣ�־�����ͣ���������';
  exit;
end;
if s='�֮����' then
begin
  result:='���ñ�Р�����븣������ӭ���֣�������ơ�';
  exit;
end;
if s='�֮�' then
begin
  result:='�������磬��ʧ���ޡ��ֺ����ܣ���ƶ���ʡ�';
  exit;
end;
if s='�֮��' then
begin
  result:='��½ʧ����������ࡣ�������ѣ��������顣';
  exit;
end;
if s='�֮��' then
begin
  result:='�������㣬������ա����в����������Ϳࡣ';
  exit;
end;
if s='�֮��' then
begin
  result:='����δ�ѣ����¸��𡣼����Ϳ࣬������ֹ��';
  exit;
end;
if s='�֮��' then
begin
  result:='������⣬��Ϊ����������������׳��ܲء����겻�У������硣';
  exit;
end;
if s='�֮��' then
begin
  result:='���δ��Σ������ơ��������飬��ʧ��λ��';
  exit;
end;
if s='�֮��' then
begin
  result:='˾�����Σ�ϲ�����ǡ���ĸ������Ӥ��Цϲ��';
  exit;
end;
if s='�֮��' then
begin
  result:='�Ƶ۳��Σ�������������̩ɽ���Ϲ���³�������ϲ��';
  exit;
end;
if s='�֮��' then
begin
  result:='������˵���������ᡣ�Ȼ�Ϊ����������ѩ��';
  exit;
end;
if s='�֮��' then
begin
  result:='�������ӣ��Ա����㡣�����ˣ�������塣';
  exit;
end;
if s='�֮��' then
begin
  result:='������𢣬������ʳ��ͷ��ɦ���������ڼ���';
  exit;
end;
if s='�֮��' then
begin
  result:='ֲ�����̣���Ҷ��ȥ����Ϊ������';
  exit;
end;
if s='�֮��' then
begin
  result:='�����������λ���ԩ��ɳ��ͺ�ݣ�ʹ����ƶ��';
  exit;
end;
if s='�֮��' then
begin
  result:='��ɽ�Ĺȣ��뻢�ഥ���Ϊ���ܣ����屼������֮ϲ����';
  exit;
end;
if s='�֮��' then
begin
  result:='������裬���޾��ꡣ����ʮ����������';
  exit;
end;
if s='�֮����' then
begin
  result:='·�յ��ѣ�ˮ����ǰ�������������س�������';
  exit;
end;
if s='�֮��' then
begin
  result:='�Ӿ����أ�˼�����ҡ�̨鿲��ɣ�δ�ð�Ϣ��';
  exit;
end;
if s='�֮��' then
begin
  result:='�������ģ��������롣С�˼��ʣ�ʹ�����졣';
  exit;
end;
if s='�֮��' then
begin
  result:='����������Ǳ���䡣��������������Ϊ�顣';
  exit;
end;
if s='�֮��' then
begin
  result:='�������ţ�˾�����������岻�����׺�����';
  exit;
end;
if s='�֮��' then
begin
  result:='������ȣ���Ϸ������߲�������������';
  exit;
end;
if s='�֮��' then
begin
  result:='����ǿ����Ϊ�����ǡ��������������������';
  exit;
end;
if s='�֮����' then
begin
  result:='��ɽ�����������Ҳࡣ�����޾壬�ʲ�������';
  exit;
end;
if s='�֮С��' then
begin
  result:='�����Y�Y������������ר����װ��ٹʱ������';
  exit;
end;
if s='�֮�ȼ�' then
begin
  result:='������棬ţ����π���������أ����󲻵á�';
  exit;
end;
if s='�֮δ��' then
begin
  result:='һ�����࣬������档Ⱥ��٠�����Ϊ��ǿ������ʧ�ԣ��Һ��ڲơ�';
  exit;
end;


end;


function jie(const s: string):string;
begin
if s='��' then
begin
  result:='���Գ��Σ��񶷳�ǰ���������𣬱��ܵ������س�ؽ�����������ǡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��֮�ӣ����ﲻ�ߡ�����ó˿������صá�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ľ���������ιأ������ల��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ϲ�ʳ��������η�����������壬�����鷿��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ƣ�ᣬ�������Ρ����ӷ�֮��̸�����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='��޼Ȼ飬���������ʻ�������Ϊ��³����';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ŵ�ϲ�����ü�ĸ�����Ӿ��ڣ��ֵ����С�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�Ƴ���ɽ���������Ρ�����������������ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ӥ����ȥ����ʳ�����������ˣ��ο��˺���';
  exit;
end;
if s='��֮С��' then
begin
  result:='�������ߣ������ɵá��������꣬����Թ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���޷�Ŀ���������ҡ��������ϣ����Ի���������ƥ�գ������ҹ���';
  exit;
end;
if s='��̩֮' then
begin
  result:='��˥���䣬����Ϊ����������������ι���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ������������象�������ĺ���������á�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�����ĵ���ݳ��������ϸ��л��׹����ơ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���־�빣���Ϊ����������Ԫ�գ�ƽ���¸���';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����������������⡣��λ���ߣ�������ˡ�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='���ܺ�����������ꡣ�߷��еã����ӻ񸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ����ã�����ެֳ���������ף������е¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����͵ã��˲�������������֮������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ӣ������´���������������»����';
  exit;
end;
if s='��֮��' then
begin
  result:='������λ���˷����������㸲�M�����˱���';
  exit;
end;
if s='��֮���' then
begin
  result:='�o�����ˣ����²��졣�����ʵ£��̿�ʧ׹��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ���ӯ��������q�Ի�׋�����t��ʹ���y�A';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˵������ǰ����������֦�����಻�ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='ƽ����ʹ���������¡�';
  exit;
end;
if s='��֮����' then
begin
  result:='���к��أ�ˮ�����ġ�����ͽ�飬���»��ԡ�����ѷ�롣';
  exit;
end;
if s='��֮����' then
begin
  result:='̥��������ʼ�����Ρ�����׵磬�ݽ��۾������ɽͷ���հ����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£��Ķ�ˮ�ʡ�˪�����������Һ����������ࡣ';
  exit;
end;
if s='��֮���' then
begin
  result:='�������ݣ�ʹ�����ѡ�ȣ���ȱ��������լ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ʧʱ���ѣ�������ߣ�����ɥ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����΢��������Ϣ���й��޾̣����Ӱ�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǽ��ϳ����������Ρ��ϴ�ɢ�ᣬ������ǿ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ï�֣���˳���ꡣ����Ը�ã��д���ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʼ�����������١���»δ�ɣ��м���Ӯ��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='����Ȯ�Σ�������ס������ܳɣ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������������ȥ�籼򵣬�������ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='㡾���ְ���Ĳ������������ң������丣��';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ů����ź�ɽ�硣�������أ���˼��̾��';
  exit;
end;
if s='��֮�' then
begin
  result:='�ݸ���ϲ�������ι����������У������Ҿӡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�ļ�Ϊ�У���³���ѡ�ǰ��ִ쯣�����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ϸ������Ϊ�����꼢���ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧ������η���ꡣ�Ƴ�Ҫ�ˣ�Խ���Բ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ձ��š�������������������������Ϊ�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ϳ���ã��ֿ���顣�м���ӯ������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������λ���ӷ���ҡ�˪�ɲ�ʵ��Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˵£���ŭ������ն�����磬ʧ�䱾��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ݹ��������������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Բ��ࡣʥ�;�λ�������׾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���η��裬������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���о��������޷��ᡣ�Ӱ����壬�������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�����Σ�˪�����档�̲�ʧ�������˻�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������棬��ĺţ�ա���ٺ��ã�ʧ�����ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='һţ����������ǣ�Ρ��������У����ö��������ݵñ������б��̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='������������Ů�˼ҡ��ܸ��׶࣬��Ϊ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�׹Ķ��У������ˡ����ִ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ��ҹ����Ρ�����������������ݡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���r�����������޷�����ʱ���ͣ�������ͨ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�д�֣�����ʳ�ӡ����˲������п����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������١������͵����������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ä��Ŀ�Ӳ����������������ʧ�䳣��';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ڰ����������š��ǳ�������������ȡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='����֮�ţ��Բ����������򕣬�����е¡�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='����ɧ�ţ����沢�𡣺��Ҽιȣ�������𢡣';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�����죬ְִ�ڽ������б�����·��֮��';
  exit;
end;

end;

function shun(const s: string):string;
begin
if s='��' then
begin
  result:='·���׼����������㡣�����ÿͣ�Ϊ��������';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�������y���������㡣�������У����Ұ�ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã����η��衣��ʩ���У��������ˡ�����������ʧ���⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�򳦾��ӣ�������ǰ��ֹ������������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ֹ���Ī�����С�����ýӣ���ʧ�±㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�����£�Զ���������������У���������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������棬ɽ��ϣ�С���ǧʯ�򣬹󲻿ɷ���';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='����ĺ���� ������ۣ������׻���';
  exit;
end;
if s='��֮��' then
begin
  result:='���ߵ�·��ʹ��η�塣����֮�֣��н��ҷ����������ң�������®��';
  exit;
end;
if s='��֮С��' then
begin
  result:='����ȥ������¹�������η�ܣ�������䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϊˮ�ڣ���ʥ������������£��������棬�������㡣';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������ƣ���˪����â�������ܹ���ʹ����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬������˪����Ȯҹ�������Ų�����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�����ϵ£�����Ľ�壬���������';
  exit;
end;
if s='��֮����' then
begin
  result:='���ǳ��꣬��������������Ϊ����';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����ڤ�ת�����󡣹������ӣ�˭֪�Դ���';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������������ء����ϸ��ã������꽬��';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ���������ҹ����������ã�����ͬ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ��������ĺ������·�޶�η�������U��';
  exit;
end;
if s='��֮��' then
begin
  result:='Ԫ���޾̣�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܳ���������������ң���У��������ҡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='�Ӳ�Ȣ������ɽ��Ů���»����գ��������ꡣ¶����é��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӥ�����飬��ĸ���ӡ�������ϲ������ʱ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ƶ�����ţ��������衣�����ƿ���������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ظ���������Ұ����ĸ˭�ӣ������Ϳࡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='�ۺ����磬��ɽ���͡��Ѹ��Թ��������ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='Ӥ�����ӣ�δ��֪ʶ����ͯ���ǣ��������¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ʮ��ͬͶ��Ϊ�����롣�������ѣ���ȫ������';
  exit;
end;
if s='��֮���' then
begin
  result:='�����β�����ٵ��ס��������ڣ��������W��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Z��Ϣ�磬���ɲ��ѡ����ͭ��������Ϊ�ء�������������ȫ�޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ң�����������档������ĸ����·���ף��޸����ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���׻��ۣ�����Լ������߼����������ᱥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����׼���в㦵�̨���񼾲������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���裬��»���ڣ�����Σ����';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�д�����������ˡ������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='Ǧ�����񣬼᲻�ɵá����ҽ������ռ�Ϊ����';
  exit;
end;
if s='��֮����' then
begin
  result:='��Υ���ʹ�Ϸ��䡣����˧ս�����ښ��ڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='����׷�����������䣬���ն��á�';
  exit;
end;
if s='��֮�' then
begin
  result:='����֮�����������������Ӻ��������á�';
  exit;
end;
if s='��֮�' then
begin
  result:='�����½�����鲻�������Ͽ��ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����«�������U�����侪��ȥ���ﮏ���ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦȢ�������׼�Ů������Ȼ飬�����ȥ�������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������࣬�������ӡ�������ۼ�����и߳���';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ż��أ���ʿ�ػ��������������侪���塣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����У����˶౦�������˼֣��ʻ��򱶡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬������˪���ױ���ͥ�����ﲻ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�л����ף�����Ұʹ�����㣬���ð�Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʧ��¹�������ȵá��·�Ľ�壬�����ʷ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽ�����������Ҿ�·���������ã����ҹʴ���';
  exit;
end;
if s='��֮��' then
begin
  result:='һָʳ�⣬�������ã�����ڸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ҹ��������֪��ֹ����ĸ���ӣ���ð�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ԣ����޳�ȫ�����Ұ���ʹ�ɿ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������������ǡ�������������һ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ã�ʹ�㲶���η����ˣ������޹����������ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='������¥���븣��ӡ�ϯ�����Σ��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������񣬻����ɽ��ִ����������¿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='̫���ĸ������ʥ�ӡ�����������Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Dͬ�ң�����˭�档����ഥ�������Զ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȸ��֬������С֦����ҡ������Ϊ���������ĺ���裬���Ǵ�Σ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������գ����ﻪʵ������������';
  exit;
end;
if s='��֮����' then
begin
  result:='�ڲ��ҹˣ�������Ů������񮣬˭�����ߡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='�Ժ����꣬������������ɿڣ����첻�ǡ�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�ǻ�֮�磬�������ϡ�����̰�ң��������ݡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��ע������ˮ�����ҡ���鮴������˺���𢡣����ʳ���ಡ�ĸ���';
  exit;
end;

end;

function fengleiyi(const s: string):string;
begin
if s='��' then
begin
  result:='�������飬�ʰ��ƺ�����ʮ�У�����ز�ۡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���ó��ţ�������ɽ���긣ֵϲ�����䰲�С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������Ƽҡ��к�𲶾��Ϊ���ֻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ܣ�����Ԩ����ʹ����̣�����˳��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������������ٽ���������ɥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ���ӣ��Խ�ͬ�졣�Օi֮�󣬼��Ხ梡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱ��㣬��ʧ���š����ø������ڷ����';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='¤���������������ȥ��Y쮣��������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ڻ��������ŭ����Ȱ��ߣ��������ס�';
  exit;
end;
if s='��֮С��' then
begin
  result:='������죬�ܺ���Ԩ�����з��ţ�����Σ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ƽ���������������ҡ��ں��Է����鹫������';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������Σ��������ǡ������������������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����ɱţ���ų���������ŭ���ˣ���˥���ܡ��������գ��������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='���ﲻ������ǿ�������������У�ʦͽ�ܸ���';
  exit;
end;
if s='��֮����' then
begin
  result:='һ���������Ų��Ρ�����������Ī��Ϊ���������������ܾ�ʧ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�����ӭ����֮���硣����Ϊ�ڣ����ǻͻ͡���ϲ�]�������Եõ���';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='Գ���ľ�����b���㡣�ս��񣬻������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ʵ²�������ʥ��ͬ���ܹ�ï�ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ȥ���Ѷ򣬰������衣�ϸ�ϲ�ã����һ��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ʱ��Ȩ������ʦ��ս���в��ܵ�����κ��ǿ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��˼���ۣ�����ﶫ��˳�������������ա��������أ��������ҡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='���羪¹�����ܶ��㡣�Ҽҷ�ɢ��������Z��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ұ����������ͥ���������ӣ����ż�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�滪�߹ۣ����Ʒ��ꡣ�����İ��������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʩ���У���֮���硣��ʦ�������粮���ꡣѲ���������Ը�ɹ���';
  exit;
end;
if s='��֮����' then
begin
  result:='ˮ�����£���ɶ������������У����@����';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ౡ������������Ҽιȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǿ��ѳ����������֣���ȫ������';
  exit;
end;
if s='��֮���' then
begin
  result:='������񣬳�������������������G޼��������Ϊ�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���⣨���飩�����飩����׹���ߡ�����������������ȫ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ܸ���ϲӯ���ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='½��ǧ������Ӻ����������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='¹�����ݣ��������ѡ�������������Ǽ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ŵõ���������ꡣ�뻧����������ìꪡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������ϯ�����Ҽο͡����Ӿó����������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ɣ�������ء��@���o���ڶ����С�һ�ѻ��������ù�����';
  exit;
end;
if s='��֮����' then
begin
  result:='�����������ɱ������Ҽҹ����������ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ˣ��������顣�����͵����������ꡣ';
  exit;
end;
if s='��֮�' then
begin
  result:='�����ɽ��ˮ����ǰ������棬ʧ���㡣';
  exit;
end;
if s='��֮�' then
begin
  result:='���纥�ӣ�������������Ϊ���ͣ�ˮ����ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã�η����ȥ�����ߴ��䣬��֪������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ŷ��ˣ�ʹ�²�ͨ���׺�Ϊ�꣬��ȴ��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң�����ȸʳ���������ӣ����Ų��ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã��������ˡ��۴���ã�ʹ���޼���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ͽ���ţ���ʧ���衣�������ϣ����ͻ��衣';
  exit;
end;
if s='��֮��' then
begin
  result:='����й�������ʢ¡�����䵩������ó��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ĸ���ס������޵������䱦�顣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Y�Y������������ר����װ��ٹʱ������';
  exit;
end;
if s='��֮��' then
begin
  result:='ȸ���������������N�����ʾ��ӣ���˵���ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ʵ¿������������ˡ����Ĳ���������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ὥ����½�в�ֹ��������£�ʧ�䶼�У������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�¶��ش���Ī��Ϊ��������־�ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������ȥ����ȥ�޾̣���ĸ��ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='���ǲ��������Ц��������޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ս������ʦ�����ɡ�������׹�������壬�䱻���';
  exit;
end;
if s='��֮��' then
begin
  result:='¹�����飬������������Ѫ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ر������������������ò��У������ѵá�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮ʿ��������ϲ�������໸������Ϊ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���޷����������ޡ�����δ�Σ��������¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ն����࣬˳�����ǣ����ֲ��ӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������죬�����ǳ�����Сʧ�󣬸���ǽ�⡣';
  exit;
end;
if s='��֮С��' then
begin
  result:='������˥����Ů�»��������������������⡣';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='������㣬�������ǡ��������£���ȡ���ۣ�����ʧ�ơ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='���˾���������塣�ĹԲ�ͬ���������١�';
  exit;
end;

end;

function guai(const s: string):string;
begin
if s='��' then
begin
  result:='��Ң�����������档������ĸ����·���ף��޸����ߡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='������ı�����Բ��⡣������ģ����Ի��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĺ���䣬�������ҡ�������䣬�����ɵá�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧʱ����ɧ���ǡ�Ȯ�Ͳ��ݣ����߻�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���p�����������������ĵ²�����»���ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϊ��Ű���紵��ȴ����ֹ���ã�������լ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ƴ�������Σ�ҡ����ŵ���������Ϊ����������ʳ���㿷������';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��ţ���ʣ����Ҿ����ɽ֮�£����Զ��������ʱ�ڣ����˰�����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ף��鲻��á���ľΪ��������ɱ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='������Һ�������Ѳ�̥�ѳ��ǣ�����ͷĿ�����д�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ƫ�����s�������ɵá�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������ƣ�Ϊ�����ȡ�����ԩ������֪������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʦ����Ϣ��ƣ���۷��ϲ���뻧���ޡ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�������ϣ��׷����١���ɻ��ң��ּ��ҹ���';
  exit;
end;
if s='��֮����' then
begin
  result:='¹ʳ���ݣ���ң�󱥡�����ɽ�䣬�����˻����������ᡣ';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����Ұ�����ⳣ��ȥ����������������ҡ����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�����²����ܱ���ᡣ������Զ�������Ѵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������ӣ������´���������������»����';
  exit;
end;
if s='��֮��' then
begin
  result:='���L�ĺ������e�͜ء��r�^���أ����o���á�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϧ������ԻӤ�����ɵ��롣';
  exit;
end;
if s='��֮��' then
begin
  result:='��ƶ���ң�ʹ���Ϸ����������򣬶�ô󠙡�';
  exit;
end;
if s='��֮���' then
begin
  result:='������ɽ�������С����巢�ѣ�����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ȣ�ڽ�������ӭ�¸����������ţ����ӻ�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱ��ľ����֦Ҷ�𡣷������ң�����ʢ�����������档';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ȼ�������Ϊ�顣˪���Ϻã���ʩ��ǰ��';
  exit;
end;
if s='��֮����' then
begin
  result:='���Ҷ��ޣ��粻���ա��ڿ��޴������ͱ�˼��';
  exit;
end;
if s='��֮����' then
begin
  result:='ʼ��Ԫ������ʮϵ�ҡ��»���֣������еá�';
  exit;
end;
if s='��֮��' then
begin
  result:='������̨������ֹ�Ρ����ﱸ�ߣ��������ǡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='�������꣬Ϳ�����ʡ�������ֹ���п����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ǻ��ᾳ����Ϊ�벡���ַ����ݣ��������ҡ��������ߣ�ʿ�Ϸ��ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϲ�ʢï��������ơ��������������Ҽ��ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ĸ����ڱ�Ϊ����������ǽ�������ƹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����������Ҷ��ȥ������Y����罩�͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ̳���������ԡ����в��ᣬ�������ϡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������ߣ�ūƣ�κ���ս��ʤ�����ڶ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ִ���������ػ��ʴ����������ģ��常���ǡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='ҹ���ն̣���Ϊ����������տݣ����ڱ�½��';
  exit;
end;
if s='��֮����' then
begin
  result:='�\����ӣ���������������ɾͣ������Ϻá�';
  exit;
end;
if s='��֮�' then
begin
  result:='������ɽ������̫ԭ���������ۣ��쵽�������������ҡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�����״���ͷβ�ߵ�����Ϊ�����������֯��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǹ����ң�����δ�ݡ������ұW��������ң��';
  exit;
end;
if s='��֮��' then
begin
  result:='η�費�У��򵩴����������ܸ����������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='�¶��ش���Ī��Ϊ��������־�ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽʯ���ƣ�������׹���������ģ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸʥ�ӣ��޽��ٿ���Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ǣ�ǰ����Υ�������ȣ��ﲻ��֪��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������ǿ�߰��ߡ�¶����ڣ�������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�e�����ɣ���Ϊ��ҽ����ƣ�γ����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���϶���������㡣ԩ��ڵ����ʹ���ĸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ݣ���¹���á�������ʵ�����޳��¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ͣ��������ѡ��Ե�֮ʿ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˹٣�һ�վ�Ǩ���uȺԽ�ȣ�������ɽ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ʽ�л����ȥ���ۡ���֮�ɻ���Ӥȥ��С�';
  exit;
end;
if s='��֮����' then
begin
  result:='�̿���ä����ǣ���С�������أ��Ի󲻵á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ե������Ե�ʧ������ȫ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ǹ��𣬼������Ρ���������������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���޻�����Ϸ���š����������������԰���';
  exit;
end;
if s='��֮��' then
begin
  result:='������˿��������ý�������飬����ǻڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����¹ڣ���Ϸ���š��������գ������ֻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��´��أ�½Ϊ���ġ�����ʧ�У�С����Я��';
  exit;
end;
if s='��֮����' then
begin
  result:='ԨȪ�����Ϊ�������·��ͨ��������㴡�';
  exit;
end;
if s='��֮С��' then
begin
  result:='ʮ�����̣�ɢ���ķ�������������������Ԩ���ղ�������';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�������󣬷Ǹɾ�·���������ǣ���֪������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='��ʧ���飬�������ࡣʱ�಻����ʹ�Һ���';
  exit;
end;

end;

function gou(const s: string):string;
begin
if s='��' then
begin
  result:='�Ӳ�������򲻿ɶɡ��������ʣ����޴�ڡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�ɱ����£�����ɾ͡���˳���꣬�����Ϻá�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��ɽ������ֹ������������������ͬ�á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�Ϲȣ��뻢�ഥ���Ϊ���ܣ����屼������֮�ι���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٵ�δ��ʧ�����У�����¹�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���黳�ģ���˹�ƹ�Ϊ��ū澡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧʱ�������Ϳࡣ����������������ֹ��';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��棾��٣�ʾ���˽�������Ӫ�𣬰��������';
  exit;
end;
if s='��֮��' then
begin
  result:='¹η���䣬������ȡ�����������Ϊ�����ã�����������';
  exit;
end;
if s='��֮С��' then
begin
  result:='����Լ�ᣬ����ȯ�������弾����������֮��ǿ��ί�ݣ��������ģ��������ϡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɪ���裬�����ھơ���ϲ�ſڣ���ϲ�ں�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������꣬���������������ɾȣ���ۧ���ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�����£������������������У����@����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��Ϊ�����������ܿˡ��ٶ�ʧ�����������á�';
  exit;
end;
if s='��֮����' then
begin
  result:='�봲ʧ������ɥ��Ը�������޻ᣬ�弾���ޡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�ն��̷���ˮ�����С���ʢ���⣬���޷��أ��߹����硣';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�L�����죬���˸��ƣ������ǰ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ʵ��η�������ϸ��½���̣����ҰԹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȫ�Ʊ����������С�Ȣ����Ϣ�����ù�ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������񣬻����ɽ��ִ����������¿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ƣ��������롣ʤĸ��Ȫ�����Ӳ�����';
  exit;
end;
if s='��֮���' then
begin
  result:='��Ҷ���䣬������լ������ʧ�񣬽༺��ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ļ���٣������ӷϡ��յ������������׺���';
  exit;
end;
if s='��֮��' then
begin
  result:='����͵ã��ʲ���������������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͬ�Σ��������ӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='������Ů������ʥż���˼���ĸ����»���á�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������飬��֪�Ӵ������౯����ʹ�����ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='֪�Ͼ�������ı����ʮ�ղ�ʳ�������꺥��';
  exit;
end;
if s='��֮���' then
begin
  result:='������޲����䡣����߾٣�³��Ϊ���������Σ�������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĺ�˳����������ҡ��u���ɺӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='������𢣬ί���ⳡ���нǷ��䣬�����Ҳأ����ڼ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ϲЦ��������ڿڡ��پ����������ӯ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��¶˪ѩ���հ�����������Ϊ������ȴ��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȥ�Ҷ�����������³�̾��չת�մ����ڻ���ޣ����Ҹγ���';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�����Σ��������ǡ��U�ᱼ�ߣ��������㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������꣬������ı�����Եüҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='����Ϊ�����ľ�ȥ�ҡ����ӷ��ѣ���ɾ͡�';
  exit;
end;
if s='��֮����' then
begin
  result:='��������������ı������Ҷ��ѣ�������˥��';
  exit;
end;
if s='��֮�' then
begin
  result:='�ָ��Ỽ��ȥ����С��ճ�ҹ����ϲ���ɶ���';
  exit;
end;
if s='��֮�' then
begin
  result:='���ܴ�ϲ�����������������ո������÷�ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ǰ��ȴ�٣�������档�Ǹ߰��ݣ��������顣';
  exit;
end;
if s='��֮��' then
begin
  result:='�η���������δ��ڡ�ӤŮ��ã�ý�㲻��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����У����˶౦�������˼֣��ʻ��򱶡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾������뱳�塣�ĹԲ�ͬ���������١�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͷ�㣬���ſչԡ�����Զ֮���е����ݣ�ʧ����ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾��У���Ŀ������������Ů���������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�٣�����������ٱ��ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='���׺��ʧ�����С�ɧ���Կ࣬˼�������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ط��ԣ���κ�޻������ӳ�˵�������԰���';
  exit;
end;
if s='��֮��' then
begin
  result:='���������ױ����ۡ������ؾӣ�������ֹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ�Ī�����롣Ϊ����ţ���������̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��ɽ������ֹ������������������ͬ�á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ŀ�Ҷ���������ʡ��������ڣ��������衣';
  exit;
end;
if s='��֮����' then
begin
  result:='����ϵ�������ز��𡣾���ɢ�ң�̫ɽΣ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ޣ��������ҡ�������ᣬ������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ְ�ˮ�����ְѻ����������ɵôӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ɽ��ˮ����ǰ������棬ʧ����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ�����ң��������ء���û�Ҽң��빷���Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽ���ѵǣ����ж�ʯ�������E�����������ᡣ�������٣����b���㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�ۿ���ʵ�����鲻ʳ���������ߣ�������ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='ִ�����֣���Ϊ�־̡������������������ҡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='������ɽ�������ɇܡ���־���ף������Թ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���Ҽ��ӣ�������Ů�������缧��������ϲ��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������ѣ�����Ѳ�����������꣬���ܸ���';
  exit;
end;

end;

function cui(const s: string):string;
begin
if s='��' then
begin
  result:='�����ܸ���������á��������򣬲���������';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='˶�����㣬�ɲ����ݡ�������£�δ�о�»��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ܴ�ϲ��������ְ�������ո���';
  exit;
end;
if s='��֮��' then
begin
  result:='������ѣ�����Ѳ�����������磬���ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ÿ�ʧ�_�������޸����Ҳ�Ϊ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Բ������粻�ܴ��³Ϊ�����ҿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��׶ʧ���������޸��������������ʾ��Ӵ���';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���ں��磬����������������У���ľ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʩ���У���֮���硣��ʦ�������粮���ꡣѲ���������Ը�ɹ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='����_����ɥ�ҹ�����������̫ʦ��ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���蹵�¡�Ϊ����Ц���ղ���¼��';
  exit;
end;
if s='��̩֮' then
begin
  result:='�A�����㣬�������⡣©شʢ�ƣ��������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='¹η�˲أ�������ȡ����̲�����Ϊ�����ã�����������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��ɽ֥�����������С�������Ů�������񱦡�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ָ�һӣ�а�����ҡ�ִ�����������������';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�����Չ���������Ϊ�����ˡ�����Ⱥ�ۣ������չ⡣';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='����ϵ�꣬Ϊ�����С���ĸף�����������֡�ͻȻ������';
  exit;
end;
if s='��֮��' then
begin
  result:='ƶ�����ţ��������衣����˸ף��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������֣��������ׯ����ʿ����ĸ�ǿࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ѿ������������ɵ¡������ͬ���������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��޴�ݸ��������ڵ����ɱ������������Ϳࡣ';
  exit;
end;
if s='��֮���' then
begin
  result:='��س����������ϲ�档�Ķ����飬�����ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���鳤�������Ĳ��á�Զ����Ұ�������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������Ϳࡣ����ʧ����ɥ���䱦��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ľ�������ƹ����������壬�������ӡ�������Σ���������ߡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�˷����죬Ϊʱ����������������л��ѡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ٸ�������ɽ�����ľ����ˣ��ܸ����ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£������Ӹ���������ʱ��Ǳ��������';
  exit;
end;
if s='��֮���' then
begin
  result:='��ͷ���ǣ�ɦʭ����ŷ����ʣ�ʹ�����ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӻ�������֮���С������ܸ������Ҹ��С�';
  exit;
end;
if s='��֮��' then
begin
  result:='̩ɽ�Ĺȣ�������ޡ��������򣬿����󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽˮ��ŭ�������������������ã�������ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='������䣬��һ���С�Ѳʱ���ᣬ��֮������';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������Ϳࡣ����ʧ����ɥ���䱦��';
  exit;
end;
if s='��֮��׳' then
begin
  result:='���޸�ĸ�����Ų�ϲ������ʧ�ڣ����Ҵ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã������������������꣬Ի���޽���';
  exit;
end;
if s='��֮����' then
begin
  result:='��Σ�����ʱ���ס���˪��ѩ����Ե��䡣';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ѩ�Ĵ�������������ϸСƶ���������Դ档';
  exit;
end;
if s='��֮�' then
begin
  result:='Ŀ���ɺϣ�����ɦ�㡣����־壬ȥ�����';
  exit;
end;
if s='��֮�' then
begin
  result:='�屴���꣬�����Ҵʡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����棬������ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ӽ����������ơ��̾���������֪���ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ǽ��������ı��������ͽ�ã��Ѿ��Ǹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ǧ�����ã�����Ϊ�������ܼ��죬�����еá�';
  exit;
end;
if s='��֮��' then
begin
  result:='��һ��ʮ��������Ϣ�����������Ĺ����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ӹ��У��������ꡣ��֣���ף��ԱȲ�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʮɽ���������ѡ�ţ��ǰ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȷ��ϣ���ʳ�ٿڡ������ٿ����׶���';
  exit;
end;
if s='��֮��' then
begin
  result:='��¶ѩ˪���հ�����������Ϊ������ȴ��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ȴ����֪��������ǿ���棬���ﲻͨ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǹ���ɽ���������ԡ�������ԩ����ְ�ɶ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�£������Թ����⽨��껣�³��֮����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ľ��Ϣ����Ů�ѵá��������壬�����ѻڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ң�������ı���и漪�ϣ�ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��³������������ߡ������㾪��ʹ�ҳ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ղ�����Զˮ�޾ơ���ҹ����ʹ��Ϊ�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ڿ�������Բ��顣�������ã����в��ۡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ӧ�ţ��벮���ԡ�����ʧ�������Ҳ��档�������򣬾���������';
  exit;
end;
if s='��֮��' then
begin
  result:='������£������ܹ���������ĸ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���֣��ٲ�������ְ��Ѿģ����˸���';
  exit;
end;
if s='��֮����' then
begin
  result:='Ԫ����ݣ���¸Ϊ�������ɵ���˥΢����';
  exit;
end;
if s='��֮С��' then
begin
  result:='���Ҿ�®����ɢ���ࡣ�����´��������־ӡ�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�Ϻ���̬����Ϊ�ƹ֡�������ĸ�����޾̻ڡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='���Ӷ�ģ��𼣿��顣�ܺ�����ˮ����妡�';
  exit;
end;

end;

function sheng(const s: string):string;
begin
if s='��' then
begin
  result:='�������ţ�ͨ��ˮԴ����ע�׺�������ð���';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��¹���ϣ�������С��ϲ��ï�ݣ����Ҿ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У���΢������ȥ�����أ�Ϊ�¹��䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˼ң��������С��������У����ô��١�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͷ�������²��ɡ���������ܴ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='������������Թһ�������������������Ե���';
  exit;
end;
if s='��֮��' then
begin
  result:='˥���������޳ݲ�ʳ���̲��_񩣬�ͳ�ҹ�ҡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='���������Ծ��ܷɡ�������֣�Ϊ�����ۡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ƽ���㣬�ظ�����������������';
  exit;
end;
if s='��֮С��' then
begin
  result:='ţ��ͬ�ۣ���������������Ϊ�棬�������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£�ʢ����������ʥ�����������丣��������»��';
  exit;
end;
if s='��̩֮' then
begin
  result:='����֮�ӣ�̫����ҵ�����Գ��������ܸ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ʱ����˪�����Ӽ�������Ů�޹���֣�����ꡣ';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�ú��u����ĸ���衣����Ϊ����ʹ�ݲ��ϡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='ȱ�Ʋ��꣬����ƫ�������Ķ������к��š�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�Ӿ�Զ������ΪĿ���������弧��ʹ�����ǡ�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='���޷����������ޡ�����δ�壬�������¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������꣬Ϳ�����ʡ�������ֹ���п����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='ä��Ŀ�ţ��������С�հ�����£�������ӭ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݶ����࣬�߲����顣Ȩ�����֣����������������ǣ����ֲ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��𣲻ƫ�����ʲ��㡣�������ң�����������';
  exit;
end;
if s='��֮���' then
begin
  result:='�������������ͬ������ƽ���ף��ܲ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='�վ����������ִ��ˡ�����ʧʵ��ʮ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ѹ¶�����»�ౡ���������ޣ����ӱ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������������彩��������ɥ��';
  exit;
end;
if s='��֮����' then
begin
  result:='����΢�ӣ�ʹ�������������ϻ��������԰���';
  exit;
end;
if s='��֮����' then
begin
  result:='ǣţϵβ��ڰ�ۼ������������ʣ���֪���ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ԩ������֪�������ϱ��������Σ����';
  exit;
end;
if s='��֮���' then
begin
  result:='��ƶ�����½�޻ԡ�»���ౡ�����ع��š�';
  exit;
end;
if s='��֮��' then
begin
  result:='������꣬���ζ��롣����˵�����ż����¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������֪���������ԣ������ʿ���������ܣ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='���²��ӣ��ض����ᡣ�������أ������ǰԡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ĺ�������ɱ��������Ĺ�����˴��á�������֣����޵�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���б��ߣ��Ӿ���ʳ����ֹʧ�����������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������ϲ���������¡�ƽ׼�����������󸻡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȯ���ߣ����ڹȿڡ����߲�ʤ���������¡�';
  exit;
end;
if s='��֮����' then
begin
  result:='����Ȯ�Σ�������ס������ܳɣ���������';
  exit;
end;
if s='��֮����' then
begin
  result:='����޴ʣ��������ȡ����������ʹ�����ǡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='���ν�¦������Ѳ��������ʩ�ݣ������ϲ��';
  exit;
end;
if s='��֮�' then
begin
  result:='ǣ�|��¥���븣���Ρ��͹��ι����������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ζ����������ӡ���֦�ųᣬ������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ä��ޣ�Ī�빲ʳ���������ˣ������ĸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ľ��Ԩ���������졣���¿�ʥ���������١�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ö���Ǩ����ӹ�������޽ڣ�ʧ��蹦��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���������������ܸ�����ʹ�ҵ¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������㣬����Ϊ�����Ҽ���ɢ��������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧ��������ͳ�͡���ʹ�ɻ���ʵ�����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�̻�Ϊ�Σ���ĸ���档ë����ʩ�����±صá�';
  exit;
end;
if s='��֮��' then
begin
  result:='�վ����������������ҹɥ�ף�����͸١�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ѵߵ���Ϊ���������ɾͶ��ܣ����ܴ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ȩ��ժ�⻼�ѡ���Ȼ���ͣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ҹ����Ȳ�֮᪣��Ա�Ǭ�¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ϲ��������Ϊ����������';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ϸ�ʵ£������и������Բ�����������Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����»飬�������¡��������꣬�񸣴󴻡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������˴ʧ���ҡ����̲�ʳ�������缬��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������Ȩ����˥���ֶ��޹⣬�����𹫡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ������Ů����������ҹ�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='ӭ��������ϲ���Һ󡣿�����㩣���������';
  exit;
end;
if s='��֮��' then
begin
  result:='�վ��½��������й�����̨���ͣ��������ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�ٲݼλܣ���ѿ�������������������������';
  exit;
end;
if s='��֮С��' then
begin
  result:='����������������С�������ȥ���������á�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���ʧ�ӣ�Ψ�ر�®�������о壬ΩԻ�������޻����ݡ�';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�����ʯ��ʧ�����������޻��࣬����������';
  exit;
end;

end;

function zheshuikun(const s: string):string;
begin
if s='��' then
begin
  result:='ϯ����̣��������ԡ������лڣ����о����';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��ȵʳ�ȣ��ſ��ܲ����ɱ����£�����ɾ͡���˳���꣬�����Ϻá�';
  exit;
end;
if s='��֮��' then
begin
  result:='���o�˷ɣ�Ϊ����顣��ʦ��ս��������ˡ�����ް�����Թ����ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ߣ����̵��֡��׻���������ں󡣾����޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��®������ʹ�׵·���Ů���ҹ���Ű�����ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='˶�����㣬�������ݡ�������£�δ�о�»��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ͼ�Ů�����ڵ��������ӵ�Ϧ�������ô���';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��¹������������ӡ��������ᣬ�ֵ����硣';
  exit;
end;
if s='��֮��' then
begin
  result:='���а��⣬̫���ܹ���������������»��ͬ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����������������������԰��ӣ�����ٹʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�˻�󶼣��ĸ����ࡣ�������������Գ��ӡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�����ķ����������롣��������Ҷ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ϊ��Ű���紵��ȴ����ֹ���ã�������լ��';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�������ԣ������ſͣ����Z�������Ժڞ�ס�';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ů�銦�����[�߈@������ҹ�У��c��Ц�ԣ���������ԩ���l�\��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��ʬ���������ӡ��Ĳ�˾������������';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='���㳤�ɣ������е�����ֳ�ӯ��������С���Ǯ���ң��µ��򱶡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��_蟸����ɻ�ٿڡ����϶��ޣ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ߵ��飬�������򡣼�֮���أ���ϲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ñ˼α�����ƽ�Ҿ������治������ð�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ز�ٻ��������˼ҡ��������㣬����ֹ�ӡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='����ʧ�ã���֪�δ����������䣬Ī��Ц�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ŀ�������Զ��������������������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='���¿׼Σ������޿�������Ѳ�������ð�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ͬ����Ҷ�������е¡�����Ľ�壬���������';
  exit;
end;
if s='��֮����' then
begin
  result:='��ɽ���ͣ��ո����ǡ������ҵ£����Լι���';
  exit;
end;
if s='��֮����' then
begin
  result:='���Һϻ���ǧ���޻����ܹ����꣬���Ҷ��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������þԡ�����̫ѧ���������ӡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='��������������Ϣ��ս��ƽ½��Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='ί��ѭ�ӣ��������ġ�����Ҫ�ģ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ӣ��߾��񻯡�������������ͨ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ���������������ϲ���ã�����ͬ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ȿe�鼾����ı���ӡ�����Ԫ˧��������ս��Ϊ�����ܡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���㣬�����������������ǣ����𲻳ɡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='Եɽ��ľ���ж��ڹȡ�����ʧ�ͣ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='���м��㣬�ݻ�ȡ�����������֣��������ǡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='������ƣ��ɸ���������ϱ��������˼��ˡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�ٳ�����ږ���Ϲ����Ӿ�ȴ����δ�����á�';
  exit;
end;
if s='��֮�' then
begin
  result:='����Ϻ󡣬էӯէ�顣��Ϧ�������������ࡣ';
  exit;
end;
if s='��֮�' then
begin
  result:='��߮��������֪������������꣬��ɱ�֮���������֣�����ֹ�ӡ����ܲ���������ɧ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ˮ�����ҡ���鮴������˺���𢡣����ʳ�����޲���';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ѿ������Բ��������������尧�ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ͯŮ��ý�����˶�ҡ��������®����ĸ���ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����컼����ϭ��ƶ��������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����仧�����겻�����ꕁ���ˣ������ౣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ģ�������ڡ�����Ʈ�磬ȥ�ƾ��ң�Ϊ�����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�츲���أ��������ա����������������ĸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޵�����ɢ���ۡ��������ң����³��ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������䣬���������������������Ϳ���ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ˣ���ָ��Ӹ��ʧ�ú�ʱ�����߲�����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ߣ���ƣ�ں󡣾�ս��ʤ�����ڶ�Ұ��';
  exit;
end;
if s='��֮��' then
begin
  result:='Ϳ���Ƴ�����Ů��ý��Ī��Ϊż���������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���´�Ц����֪�Ǿ塣������·��Ϊ�����١�';
  exit;
end;
if s='��֮����' then
begin
  result:='���綫�У�������ꡣ�����������벻��֪���ǲ����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң�֣��ʧ�ǡ������������������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='ǰ�������������������ʺڴ������������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ҹ��ϲ���л����ơ��α�������һʿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£�������ǣ����������������󾪡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���¿������ػ����١���ѫ���ã��������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬������˪���ױ���ͥ�����ﲻ������Ȯҹ���������ž���';
  exit;
end;
if s='��֮����' then
begin
  result:='˿�������������·�������Ů�֣��ļ���֯���Ϲ����У�ȡ֮��Ϣ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='����ʮ�ӣ�ͬ����ĸ����ʥ��λ�������ౣ���˱���³��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�ۼ��������������졣־�R���룬����������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='���봺�ǣ��±�����������ʧ�����������أ�����Ϊ�̡�';
  exit;
end;

end;

function jing(const s: string):string;
begin
if s='��' then
begin
  result:='����δ��ʧ�����У�����¹�ӡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���������������á���ӯ���������簽�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦȢ�������׼�Ů������Ȼ飬�����ȥ��������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�������Ҽ�𣡣���������������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���K�Ѳ����ٲ����ᡣ¶�����飬�������F��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������޵ز��档Ϊ��������Ī�纫�֡����Ծ�ֹ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٹ��޸�����ʧ��ĸ�������䣬Ī��Ϊ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='������ͣ��������ס�����ҹ�У�����������ʧ�Ӵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ƣ���׹���������ȥ��������®��';
  exit;
end;
if s='��֮С��' then
begin
  result:='������ְ�����ֲ��������뷥�£����Ϊ��������⻹��';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������̣���Ҷ��ȥ����Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='����԰���Ż���ג��η�����裬���޻�����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��λ���ƣ����о��ס�Ϊ����ͼ��������λ��';
  exit;
end;
if s='��֮����' then
begin
  result:='���߶೾��С�����͡��ʸ�˾ͽ��ʹ��ʧ�ҡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='����̩ɽ����»���顣�����ǻ�������Σ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='ͬ�����ţ����������������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�U�����飬�������硣����η�壬�ؿ��Ӳء�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ��ؼ����ˡ������л�����ȡ���ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='˳�紵��ǣ����β����Ϊ��������Ȩ�ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£���ǢΪ�¡��в�ʧ������������';
  exit;
end;
if s='��֮���' then
begin
  result:='�������������̫ʷ����������������ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������ɫ�����Ϊ��������������ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='ý�����������ڲ��С���Ů���ӣ�����͸١�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������磬����ʧ�ӡ��������ң���֪���ݡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�ٿ������ｽ���档΢�������������';
  exit;
end;
if s='��֮����' then
begin
  result:='ǧ���򻧣�������������������¶��С�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ǭ��ʥ�У���Ϊ��Ů����ϳɾͣ�����������';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ںţ�������ǡ��ӹ�ҹ��������׳�ġ��������£�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���㗛��������ҹ�󡣲�����ζ������Ϊ��в���ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�߷ɲ��ӣ�̰�����ڡ�����Ϊ�����Ժ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ǧ�����񣬼᲻�ɵá���������������Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ڣ�ʥ���ʺ񡣽��͵������ҹ��󰲡�';
  exit;
end;
if s='��֮��' then
begin
  result:='֩���ϱ���Ѳ������ż������������ĸ���';
  exit;
end;
if s='��֮��׳' then
begin
  result:='����֮�����ݶ���������������������޻���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʸ���ţ�������ͨ��С�˿���������������';
  exit;
end;
if s='��֮����' then
begin
  result:='���֮�ң������ܸ���������]������ެϢ��';
  exit;
end;
if s='��֮����' then
begin
  result:='����ͬ����������˼��������ǡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='ѭ����֣�����ȡ�衣������Ħ��������̡�';
  exit;
end;
if s='��֮�' then
begin
  result:='��������ѵ����衣�����л��Ҽ����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='����лڣ����UΪ�֡���ؽ���磬�������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='֣��ϸ��������ʧ�㡣���������ֹ�ֲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ǽ����ֱ���ϡ������¶�������޹���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬����ɾ͡��������꣬�������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ĺ��룬�����Ƿǡ�Ī��Ϊ������·���ա�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ǧ�겻������Ը�����������Բ���';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӫ�����أ��ܹ�������������ʮ�������߰١����ӷ�ʵ����̲��䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У�ʳ�ڶ������β���ϲ������֥�ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ţ�����Σ�������ζ��ί�Զ��ޣ���ʼ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ��������ڡ����½��ã����غ�𽡣�����������������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�λ����ӣ���ľ�������дӸ�����Ů��ĸ����������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��Ə��ʹ���ĺá���Ů�������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ƺ�֮Ұ��������λ������Ϊ�࣬�������ꡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='�����·��Ϊ�����ᡣ���ٸ��ţ�ϲ�����ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�̷��������»�ޡ�����ΪŰ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������³��ʱ�����롣��̿���ң��ʵ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ݣ��ĳ����ޡ�����ެ�̣���ʵ���С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���߱��ߣ�����ï�ݡ����ڳ�ע��η���Ŀڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ҹ��ʹ��Ϊ�硣�������ͣ�������ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���߶��ߣ����뻢�ڡ�����צ������Ϊ������';
  exit;
end;
if s='��֮����' then
begin
  result:='������У������ƽ�������������ʧ���⡣';
  exit;
end;
if s='��֮С��' then
begin
  result:='ʮ��������ͷΪ�ס������񰲣������޾̡�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�������ţ��������ڡ�����������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�Ǹ߳�����������Զ�����ڲ��ţ�����������';
  exit;
end;

end;

 function ge(const s: string):string;
begin
if s='��' then
begin
  result:='������ɣ��������С�����гż������屶��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��ԭ��ɽ��½����Ȫ����ľ��´��ϲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�Ŷ��أ��Ἡ���㡣������·����ĺ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ǻ������ϲ���������������ţ�����Ϊ�ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������·���Ĳ���Ľ����ţĵ�o�������Ҽҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='̫��Ϊ��������Т�ѡ�����ʥ�����������𡣵�¡�Ĺ����ظ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٺ���������ʧ����������Ϣ���������ӡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�����󸣣�Ī���Ϲ����ʵ����ڣ�����Ϊ�ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�׻���ߣ�������ͥ�����ڱ��ף���С��������ط��������Ӳ�Ӥ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�ӳ��뻢������Σ�������������˹��޸���';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀʧ������ĺ�޹⡣������ҷ���������У����������';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������ţ��������衣����������������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����档';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��ƶ���ң��ַ��о����������򣬶�ô󠙡�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ɽ֮���Ҷ���������־��ӣ�Ϊ����⡣';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='������⣬������������ĸ������������ҵ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��ų�ҹ������տ¶��������F�������Բ���';
  exit;
end;
if s='��֮��' then
begin
  result:='Ŀ�p�㶯����ϲ���꣬�ټ��ɳ衣';
  exit;
end;
if s='��֮��' then
begin
  result:='ӥ�r��ʳ��������������ͷ��β��Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���������Ҷ�������������٣����Ų�����ʧ���ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ɲ�Զȥ����Ϊ�����»��δ����';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ܹ����������ס�����ҹ�У�����������ʧ��ֹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������ҵ���񲻵�����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ұ��η�ˣ�����ɽ�ȡ����̲�����Ϊ�����ã�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ﶬ̽��������ȵ������ָ��ȥ�������ټ���';
  exit;
end;
if s='��֮����' then
begin
  result:='˫�����ɣ���鵾�ء������f��Ϊʸ���䣬�������ܡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ſ��٣��λ��������������ѣ��������͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ḹ�����Ƶ����㡣����һ�٣��û���ͷ�����ҼҾӡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='����Ϊ����������������Ң���ѣ����źɱ���������ҹ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Է������ڿ���������£�������ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ӿ����㣬�������衣�����ܳ�Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ϸ����Ӵ��������׶�Ϊ�С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾��У�����󠙡����ϲ��㣬ٻ������������֮������ʧ�Ұ';
  exit;
end;
if s='��֮��' then
begin
  result:='�˷ɼ��飬�˰ܻ�׹����Сʧ�󣬹������졣';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������Ŀ������ҡ���������䴦��ɢ�����أ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='ǣβ��ǰ������ʧ������˷�Ա���';
  exit;
end;
if s='��֮����' then
begin
  result:='»���ܹ��������嶫�����Ӿ�⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='���а��ˣ������Ƴϣ�Ϊ˴���١�';
  exit;
end;
if s='��֮�' then
begin
  result:='�������꣬��Ϳ���ʡ�������ֹ���п��ޱ���';
  exit;
end;
if s='��֮�' then
begin
  result:='����ϸ����Ӵ��������׶�Ϊ�С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ٳ��������Ƽҡ���Ӭ�۰ף�������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�g�g���ԣ�Ī����ԫ����ϲ��̣����Գ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ܲ��ǳ�ޣ�������ı����Զʧ����Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����̶��������츸���������ף�˥�����������ĳɲ���Ϊ��Ԫ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ݳ�����������𡣷������ӣ�������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������磬��ز��С���ֹ�з���ϲ���䴲��';
  exit;
end;
if s='��֮��' then
begin
  result:='��𯸺װ�����Ե�������֪�ι������ҽ��ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������أ��������š�����ݻ�����Ȫ������';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮΪ��ĵ�����᲻�𡣼���ҹ�У���ϲ��ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ů����Ŀ�ڳ�������ͬ����ʱ���';
  exit;
end;
if s='��֮��' then
begin
  result:='���Iִ�룬����������Ԫʥ���գ��Ḹ���ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ƻ�ȪԴ������ɽ�ۡ��㲻�ɵã��𲻿�Ȼ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����������׻�ô����������£�����Լ������˿�飬����Ц�裬�׶���Ρ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��^�Ƹ�������Σ���������ҵ£�ת��Ϊ������Σ������';
  exit;
end;
if s='��֮��' then
begin
  result:='ĵ���������ǻ���⣬��Ϊ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ʯ�ų��ţ�����ʳƶ���������ӣ�������ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��۶�������Ȯ���ԡ�Χȱ���ɣ������ܻ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ⱥ�ߣ����þ���������η�壬�����Ϳࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='���粡�ˣ�����Ϊǿ���ι��±�������ˮ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������壬����żʳ�������鸣���԰����ҡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ڣ�����Ϊ�����½�֮�У��������á���ʥ���ˣ����ܸ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='��ܺ��磬���ֲ��ǡ����Ա��ѣ�ȫ���š�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�¶��ش���Ī��Ϊ��������־��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������̨���ⳣ���ӡ���������޲�����';
  exit;
end;

end;

function ding(const s: string):string;
begin
if s='��' then
begin
  result:='����֮�����������¡��������ţ������񰲡�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��������ǲ����ˡ���˼���ˣ���Ľʧĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�S��ִ�����»��ڣ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����˱٣��G�����С�����ƽ�ˣ��������ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬�ʰ��ƺ�����ʮ�У�ز�����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ�������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������Ӭ׹���С�������죬��ĸ������';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�������⣬�����������þ���������ʳ��֮����Ϊ���ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='½����Ȫ����ɽ���ơ�����ǧ�Ϳ�۶��֣���Ϊ�һ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='����ɱţ���ų������������ˣ���˥���ܡ��������գ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ĸ�ޡ�˪��Ѯ�գ���޷�����';
  exit;
end;
if s='��̩֮' then
begin
  result:='��ɽ�ɰأ���ï���䡣����Աӣ����件�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�£�������ӡ���ʩ�����������丣��';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='����Ŀ��Χ����ȱ���ɲ��޹����������ѡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ñ�Р�������������ά�ã��������ǡ�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��ͷ��Ŀ�����ܼθ�����ȸ��������»��á�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������꣬�ݷ�ţ���ױ���ɢ�����ౣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ճ�������߮���ݡ��������ƣ��Ը�ι���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ã��������С�̰���������������С��Sԯ�ڰ������Ӻξ̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���뾮�ڣ���â���ǡ��������ţ�����̫΢�������񴲣������乫��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬������˪���ױ���ͥ�����ﲻ������Ȯҹ�������Ŵ󾪡�';
  exit;
end;
if s='��֮���' then
begin
  result:='�|��������ʧ����ᡣǬ��Ұ�����Ѿ��ʾӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ֲ������ݲ����衣����ʱ�������Ӱ��ޡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�з����𣬻������롣С�˺ᱩ�����Ӻ�֮��';
  exit;
end;
if s='��֮��' then
begin
  result:='Ů��������Ϊ���ļ����Ͳ����Σ����˸��档';
  exit;
end;
if s='��֮����' then
begin
  result:='�������𣬱������š������ս��ƽ�ǵ��������վ���������ȫ��';
  exit;
end;
if s='��֮����' then
begin
  result:='����ʮ��Ī����ӡ����Ĳ�Ҽ�������Ϲ¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���е��������ҹ����������֣����Ӻ��ǡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='����ɽ��������Ϊ����һϦ���ߣ�������⸡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾��У��������ҡ�����ʧ�飬����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ä��ĪΪ���ҡ���ʧ���ã��������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ȣ�������ҡ������ڹ����������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������á�����̿�ң�����Ϣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�����������֡���Ң���ѣ����źɱ���������ҹ������������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='��¶���գ������϶������ڴ٣�ʱ���ٵá�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڵ�ɥ����Ϊ���ɣ����·˵á�';
  exit;
end;
if s='��֮����' then
begin
  result:='�깫������Σ���԰������س�������ɥ��ꡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='����̫ɽ�����ڿ�ɣ����ɳ��ʯ��ţ����ʳ��';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ң���»���ڡ�������񣬾��ĺξ̡�';
  exit;
end;
if s='��֮�' then
begin
  result:='��������������׳ï����֦��Ҷ�����ӱȵ¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���ӣ�����η�ܡ�����������������ܣ���Ḭ̄�ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������á���ӯ���������簽�֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ݵ������������������Ϻ��ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ɥ��Ȯ����������ʧ�����¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ƶ��²ģ��������ܡ����ܴ�������Ϊ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ĸ�����Ҿ��ӡ���Ի�ϲ�������򻧣����ɸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����񴲣������������������꣬Ի���޽���';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ǹ����ң�����δ�ݡ������ұW��������ң��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ĵ��룬�������u���¸��ĵ£����������';
  exit;
end;
if s='��֮��' then
begin
  result:='׷���𱱣���ɽ���������������������®��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ϻ��� �����е��顣�����ɰ���������ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������񣬻����ɽ��ִ����������¿�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���������罫������֮���������Դ棬�������ꡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='ٹ�����𣬼��Ӹ��С����ٳ����������ǰ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����򲵣��������ݡ��������ˣ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ƻ�ȪԴ������ɽ�ۡ��㲻�ɵã�̿����Ȼ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܻ�������������š��㿷���㣬�Ƕ����ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������裬�̳��̿֡�������ģ�ʹ��Σ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʳ����⬶�������ͨ���ţ��ܾ̳�����Ԫ���԰���';
  exit;
end;
if s='��֮��' then
begin
  result:='������أ����İ���������ƣ�һ�ػ�Ը��';
  exit;
end;
if s='��֮����' then
begin
  result:='˫��ԧ�죬����Ⱥ�С���������ʳ�������������ֳ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='�̺����������価��uʱ���£�˼�����';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�����ݶ���������ꡣ�����飬���b��������Ϊ�����';
  exit;
end;
if s='��֮δ��' then
begin
  result:='����Ϊ�������Ҽ�𣡣���������������á�';
  exit;
end;

end;

function zhen(const s: string):string;
begin
if s='��' then
begin
  result:='���˲��࣬���Լ��ۡ����u�Ӻ����������ǡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='��Ϳ��ˮ���������ģ��ǻ����ۡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϧ������ԻӤ�����ɵ��롣';
  exit;
end;
if s='��֮��' then
begin
  result:='��ˮǱ�䣬ʹʯ��ס����ر��죬��Ϸ���֡�������Ը����־���֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���д�֡�������ͷ���꾪��ȥ�������Ծӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='뾸����꣬�����������������ģ����Խ��ݡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�����������������Ӻ�������á�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='һ���Ų�������ǣ�Ρ��������������ö��������ݵ��������类�̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ر���������ҡ������Զ�죬�����Ȫ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����廢��Ұ����ŭ��������ᣬ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӓ�ɰ��ӣ�������窡���������������а�ڡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='������Զ�������Է�������˼ң�é���컪��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬������ɽ��ҡ�Ƶ��ϣ��������ա�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='��¶���ã�Ϊ�����١��������������ڿ��¡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ӳ�֮����������ͬ���������٣��������';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���˱��У����������������Ů���������ӡ�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��Ծŭ���������硣�ǻ��߿⣬����ľ�¡�������ܣ�������Ұ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӻ�������֮�¸����������ۣ����Ը��С����Ҿ��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�����������š��ٺ����䣬�������ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͷ�ǣ�����δ�ɡ��������˵��������';
  exit;
end;
if s='��֮��' then
begin
  result:='ȱ�Ʋ��ɣ�̥�Ѳ������������Ρ�';
  exit;
end;
if s='��֮���' then
begin
  result:='���в�Զ�����︴�����Ķ�η������ֹ�ᡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='���P����������Ϊ�����������ӣ��Ҹ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='ϲ�����ƣ��θ�ӯ�š��ڲž��ӣ��ټ��ɻ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�ؽ𷷹����������ߡ�����Ԩ�ף��ۻ�Ϊ�̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='����Ϊ�У��������С������߻ߣ����黳�������û�ϲ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�����²����ܱ���ᡣ������Զ�������Ѵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧʱ������Ϊ�ǡ�����������ɥ��Ԫ�';
  exit;
end;
if s='��֮���' then
begin
  result:='��˥��ĺ��������ȥ���������ݣ�ɥ��˼����';
  exit;
end;
if s='��֮��' then
begin
  result:='���޹���������ʧ����ږ�����У���֪������';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ŀ������ҡ�����Զ������������䴦��ɢ�����أ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�屴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ǰ׫G����β�����ǰ��ȴ�٣��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������־��ͬ�������𡣾��ͳ����������÷���';
  exit;
end;
if s='��֮��׳' then
begin
  result:='��̨�h����Ķ򴦡����f���������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ݣ������������������꣬�������衣';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ůȥ����˼���ǡ�����������ʹ���ĳ';
  exit;
end;
if s='��֮����' then
begin
  result:='����Σ�ѣ��Ѷ�ȥ�����븣ϲ�ţ����Ҵ����';
  exit;
end;
if s='��֮�' then
begin
  result:='�۱۽��֣����ܽ��ơ������п�����ŭ��ϲ��';
  exit;
end;
if s='��֮�' then
begin
  result:='�Ϸ�Ѩ�������꽫����ȵ����������̾�ҡ���ް�۸���δ���ڵ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ֵң�̫���������̱����������Ӳ��档';
  exit;
end;
if s='��֮��' then
begin
  result:='���⣨���飩�����飩�����Ǳ��ߡ���������������ȫ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�������Ҽ�𣡣���������������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ҷ�ʱ��������������ô���';
  exit;
end;
if s='��֮��' then
begin
  result:='������ɽ������ˮȪ�������ɣ��ʲ����ԡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬����ެ�㡣�������������ֲ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���＾�ӣ�����Ϊ�ѡ������Ƴϣ���ߪ���١�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������գ�������ͳ���س�ս����������̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�[�X��࣬�������Ů�˺��У�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������أ��������š�����ݻ�����Ȫ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ѷɣ�δ��Խ�أ������ԫ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������P��������ƣ���۷��㲣��uʱ���顣';
  exit;
end;
if s='��֮��' then
begin
  result:='�׵����񣬳����Ĺȡ�������ľ�����������Թ��չ���';
  exit;
end;
if s='��֮����' then
begin
  result:='�����󡣿�����ҡ�������������Σ����';
  exit;
end;
 if s='��֮��' then
begin
  result:='��������������Ρ�������ң����Ҷ��ء�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʮ��Ľ���׷����߱ɲ��ʣ��԰�������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ĵ����ã��ڳ���Ц�������ü��������ҹ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ܸ��ˣ�����֮Ұ������������ϲ���޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�߷����£�̰�����ڡ�����Ϊ�������ڹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ʧ����ᡣǬ��Ұ�����Ѿ�ɥ�ӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='������ʣ����Ϊ��������������ʹ�����С�';
  exit;
end;
if s='��֮С��' then
begin
  result:='ʯ�ų��ţ�����ʳƶ���������ӣ�������ʱ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='���ݼ䣩���ݼ䣩������ƶ���������л�����һ�վŽᡣ';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������⣬�׳��ܲء����겻�У���ֹ���硣';
  exit;
end;


end;

function gen(const s: string):string;
begin
if s='��' then
begin
  result:='���¶����������޸�����Ի���࣬����ӿȪ��µµ��ɽ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�Ǿ��ѳ�������Ϊ�֣���ȫ������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ˮ������Ȼ����ƣ���ߣ�����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ţ�۽ǣ��������ڡ��ֺ����ܣ������޹ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ؽ�Ϊ�棬��֮��Σ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������У���Ҷ��ȥ�������ͣ���罩�͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ԫ��̰�����������ִ���Ի���Ϊ��������';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��ɽ���棬ʹ���ٿ���������������м��С�½��������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ԭ��ɽ��½����Ȫ����ľ��´���κ����ס�';
  exit;
end;
if s='��֮С��' then
begin
  result:='���ν�¦������Ѳ������ʩ�»ݣ��������ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�[�[����ĺƫ�ס�������������˥��λ��';
  exit;
end;
if s='��̩֮' then
begin
  result:='����ί�Σ����Ҳ��ơ������޺㣬��ʧ��λ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ԫ��Ī��Ц�ԡ����ధ��ʹ���ı���';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�ּ����Σ����ɳ��š�ĺ�ٹ��ã���Ϊ����';
  exit;
end;
if s='��֮����' then
begin
  result:='��α��֪��ʹ��ƫ�ġ�С����λ����ʥ�ξ̡�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��𢴼��������ɽ�ڡ�������ʳ������ν�������ެï��ʱ���־̡�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��������ѵ����衣�����л��Ҽ����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='����������˴ʧ���ҡ���ĸ���ӣ����]��ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������װ�Ԫ��������أ�˳ʱʩ�������Գ��档';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ɽ��ˮ����ǰ������棬ʧ����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʹ���������¡���׹��ȥ����Ϊ���ء�';
  exit;
end;
if s='��֮���' then
begin
  result:='���ʾ��ӣ���Т���ڡ����Ϊ�ǣ����ֲ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ס������죬Ķ�������ʦ��ʧ�ɣ��Թ����졣';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ůͬ�ң��Ĳ���ʳ���׷�����ǳ����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʯ�ۣ�����ȪԴ�������������Ϻ�Ϊ�ڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ţ�������ڡ��߸����ƣ�ʹѬ���ġ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�q�����ӣ�����η�ܡ����׷��أ���ҹΪ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ڣ�����Ϊ�������ƺ��������̾���';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ౡ�������Һ�����Ҽιȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������׳����У������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ǻ��ԣ����������һ˵���£�������Ȩ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���]�������ܵ¿�����Խ������������̿���';
  exit;
end;
if s='��֮��' then
begin
  result:='����뾸����������š�������ӯ������Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������񣬳�������������������G޼��������Ϊ�����ǡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='��΢������������������Ȼ��ͨ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='������¹�������ޣ����½������굳����������̻�������������';
  exit;
end;
if s='��֮����' then
begin
  result:='��T���񣬟o����菡����w���e���������o�����P���Σ�������ӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='ɽ����أ�½��Ϊ�����񲻰�����';
  exit;
end;
if s='��֮�' then
begin
  result:='����������������ϲ��å���ɶ����������ӡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='���ư�֦������˥΢������������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʮ���ң�����ɣ�С��Ϲ���Ů��������ͬ��ʹ��ʧ�ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʯ�����������ɡ������лڣ�������ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ر���ǿ��ʧ�����������ښ��硣';
  exit;
end;
if s='��֮��' then
begin
  result:='�e�����ɣ���Ϊ��ҽ�������γ���������颡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ѳ��꣬�ɹ����㡣�������ã��������͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�ˣ����׻��С���̫�״ǣ���Ϊ���ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��թ���ӣ��ĸY��ľ�������䷢��ʸ�����ꡣκʦ���ң�����Ϊ²��������¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���г��ǣ����ô󸣡��������룬����������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ޱ�����ض����ѡ������ұ���ĺ�����á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����޲�����ͷ��ʹ������ʧ�ģ�����ͽ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������äʦ������Ŀ����·������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ѹ�����ȥ�ұ����ǹ���ǣ���Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ�������Ұ���������޻���Ϊ��ϲ����';
  exit;
end;
if s='��֮����' then
begin
  result:='�˲ļȵǣ��Գɹ��š�����ͥ�ᣬ�������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ա״��գ���ĪΪ�ڡ�ū����ߣ�����������Ϊ�����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ǣ��ؾ��侪���ʵ²��ޣ�Ϊ�����㡣';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȳ��죬�����������֮�Ϲ��������еá�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ѽ�Ԫ����������»�����磬��Ϊ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�붫��¬�������嶼���������ã����ù�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ȣ����þ��ޡ����Ҽ��磬�����Ϲ���Ͷ��֮�ǣ����ɻ��֡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�ڱ����ˣ������޳����������ڣ����ҵ�ʳ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='���ŷ껼�����ΪԹ��������̣������ֶˡ�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�����ʱ���ϱ����ǡ����߼��������������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������꣬���ζ��롣����˵�����ż����¡�';
  exit;
end;


end;

function fengshanjian(const s: string):string;
begin
if s='��' then
begin
  result:='���ӴӾ�����������������ɢ�����϶��ӡ�ĪΪ�ֹϡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='���ֹȶ���ĺ��޽������֮��Ը��־����㫡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ĵ���������ǻ���⣬��Ϊ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��ɽ������ֹ���������������δͬ�á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���д�֡�������ͷ���꾪��ȥ�������Ծӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң�����������׷�ּ�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������裬���޾��ꡣ����ʮ����������硣';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�侮���񣬷Ǳ��ϱ����������裬�������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ�豪�����]��֬�������Ը���ظ�ΡΡ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�ܳ�֮¡���̴���ס�̫�����ӣ��������ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����谣�ִ�޼������������ݣ�ӦƸ���ء�';
  exit;
end;
if s='��̩֮' then
begin
  result:='����©�����ƻ���ȱ���ո���ұ����궲��䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����½���������������Ͽ��ޡ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='Ϻ�WȺ�ۣ��������꣬����������Ӧʱ���¡�������Ը��';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ӣ���������Ϊ�����ǣ��ղ���̡�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��÷��֦����ĸ���룬������֪��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='ʢ�и�����˥�ϲ�׾��ӯ������������]�ʡ�֣��ʧ�����ض�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ż����أ��������䡣�߾����£��������壬��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱ��㣬��ʧ���š����ø������ڷ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����񶦣�������ָ��������ۣ�������������в��ţ�����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ɶ��������������ʮ�������ع��硣';
  exit;
end;
if s='��֮���' then
begin
  result:='����������ٿ��˼ҡ��������̰࣬���ߵá������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ԡ��ϴȥ���衣����־̣����븣����';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ľ׵�ܯ��������Ρ����»���磬����֮����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ص£�����ެϢ��ƽ����ֱ������󸣡�';
  exit;
end;
if s='��֮����' then
begin
  result:='������·������η�ܡ�ʹ�Ҿ��̣�˼��ʴ���';
  exit;
end;
if s='��֮����' then
begin
  result:='���ٺ��ף��ڴ��ɼҡ������������ĸ���ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='һѰ�ٽڣ�������ᡣ��ָڵ�������ܽ��ѡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='ӥ�r��ʳ��������������ͷ��β��Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='Σ����ĺ�����󲻵á����󲻽���������߯��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������Ϊ�ҡ�˪����ͬ���������ʡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸ���ӣ��ϴ͵�ʿ���������������˻�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����׼���в㦵�̨���񼾲������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ӳ���ֱ������Ϊ�����������ã�˾��ʧ����';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�ڶ�֮�£������ҹ��������޹⣬������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У������ꡣ�Ǿ������������ӣ������Ծ̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�Ḹ�����Ƶ����㡣����һ�٣�������ͷ�����ҼҾӡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������̣���Ҷ��ȥ����Ϊ������';
  exit;
end;
if s='��֮�' then
begin
  result:='����㣬�������Ա�����ң��������';
  exit;
end;
if s='��֮�' then
begin
  result:='����ؽ������Գ��ľ��ͮ��������ղ��ܻ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ڴ����У��븣���ڡ����ڼι�����λ��ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������죬�������֣�»��񸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʯ�ۣ�����ȪԴ�������������Ϲ����ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ɽ��ˮ����ǰ������棬ʧ���󻹡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӷ���������ι����������ӣ��������ʣ����ʥ�ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������񣬼����象������׶�ʹ�Ҿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ŀ�־㣣�������ä�������޳������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϲ����ӣ��������á����ҳ�Ů���������롣���ó�񣬺��˴�ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ƹ�ԭ���Ҳ���ʩ��������١�';
  exit;
end;
if s='��֮��' then
begin
  result:='л���ݵ£���������������и���';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͬ�ˣ�˼���޼ҡ�ִ����죬������֮��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ۣ�����������ܽ⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���������Ϸɽ�ȡ����;��ӣ�����������';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ң���»������������ӣ����ĺξ̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮ɽ���ɵ����Ρ����Ծ�ֹ�����޾��ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ʱת�С���ʧ���ڣ���ѿ�������̴��������������ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='����δ��ʧ�����У�����¹�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ը�����ȥ���¡�Ѫ�ӵس����﷣ʧ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӻ�������֮���С������ܸ����������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʡ���������жȡ��Ҹ����㣬�ҹ��Ҹ���';
  exit;
end;
if s='��֮����' then
begin
  result:='�|�����飬����ˮ�ʡ������ᣬ���ɺӺ���';
  exit;
end;
if s='��֮С��' then
begin
  result:='����֮Ϳ�����бص������л��ʡ�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='�˷���٣������㡣һ��ǧ����ᰮĸ��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������������ľ�������������У�ɥ���ְ��';
  exit;
end;

end;

function guimei(const s: string):string;
begin
if s='����' then
begin
  result:='������񣬳�������������������G޼��������Ϊ�����ǡ�';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='��ľ������˾�ܻ��̡���Ȩ���£��������㡣';
  exit;
end;
if s='����֮��' then
begin
  result:='��ţ������ܳ�Ķ���������٣��������С�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������ڲ�ͬ�ġ�����Ǳ����';
  exit;
end;
if s='����֮��' then
begin
  result:='������Ϣ���������������]˽�q�����ֳɹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʥ�£�����̫�������齨�У������Ը���';
  exit;
end;
if s='����֮��' then
begin
  result:='�Ҹ���ͷ������Ԯ�������ϲ��ѣ��������壬ʧ�����顣';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='���㗛��������ҹ���಻��ζ������Ϊ��в���ȥ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ѷ���ţ����Ϣ�������԰������ߵû���';
  exit;
end;
if s='����֮С��' then
begin
  result:='Ң�����٣�ʥ�����档ʹ��ƣ���������衣';
  exit;
end;
if s='����֮��' then
begin
  result:='�¹��Ǹ������ޱ��ࡣĿ�Ŷ�����Ī��Ц�';
  exit;
end;
if s='����̩֮' then
begin
  result:='��ú��������Ȣ�����ͼ��ۣ���ѯ���¡�����ҳǣ�ʹ�Ҳ�����';
  exit;
end;
if s='����֮��' then
begin
  result:='��ɰʢ����в��ࡣȥ��ǧ��������С���ţä��ȥ֮�λڡ�';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='�����������ʱת�С���ʧ���ڣ���ѿ�������̴�������������ࡣ';
  exit;
end;
if s='����֮����' then
begin
  result:='����ҹ�Σ�������⡣�������ʹ�Ĳ��ǡ�';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='���Ѿ�������Ϊ���������������尧ೡ�';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='�������꣬��������չת������������衣';
  exit;
end;
if s='����֮��' then
begin
  result:='�̷���������ˮ���硣�˺��̼ڣ����¶��ޡ�û�����ء�';
  exit;
end;
if s='����֮��' then
begin
  result:='������������޲��������̨������̾Ϣ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����档';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ϊ��㣣��ν����ˣ�Ϊ�����ꡣ';
  exit;
end;
if s='����֮���' then
begin
  result:='��ʿΪ�٣�����������ٱ��ꡣ';
  exit;
end;
if s='����֮��' then
begin
  result:='��ʯ��������������������ʧ�룬���F���ɡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���½����һ��ʧ�������Ӹ����������޸���';
  exit;
end;
if s='����֮��' then
begin
  result:='�ҵ�Դ�ڣ�Ư��Ϊ�����Ʋ��龡����ʳ���С�';
  exit;
end;
if s='����֮����' then
begin
  result:='�������ڣ�Ϊ�������߲���ʳ���̾崭Ϣ��';
  exit;
end;
if s='����֮����' then
begin
  result:='���ں��磬��������ҵ��У���ľ������';
  exit;
end;
if s='����֮��' then
begin
  result:='��ɽ֮����GΪ��������ǣ����Ҽ���������ɧ�ǡ�';
  exit;
end;
if s='����֮���' then
begin
  result:='�׾��޹⣬�������¡���Ů���ޣ������乫��';
  exit;
end;
if s='����֮��' then
begin
  result:='���߾��㣬�ಫ�ڽ�����������������ʧ®��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ã���»���档�����ɢ�����乪��';
  exit;
end;
if s='����֮��' then
begin
  result:='�ĵ�֮���������¸�������̥ز��������ʵ������֮�������ε�Ϣ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�ϻ�֮����ϲΪ�Ҹ���������ɽ�����ҳɶ���';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮����������ա�Ϊ����С��������أ���ϲ�౧�����ӳ��ϣ����ܸ��ӡ�';
  exit;
end;
if s='����֮��׳' then
begin
  result:='̫����������ʮ���������ʥ�ģ�Ϊ���Ҹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�����������������ǡ�������������Ϊ�۹���';
  exit;
end;
if s='����֮����' then
begin
  result:='������˿������Ϊ�֡�ԽĶ���ã�ɥ�����F��';
  exit;
end;
if s='����֮����' then
begin
  result:='���鸯ľ�������ศ������ʧ�ӣ��Ǽ���ĸ��';
  exit;
end;
if s='����֮�' then
begin
  result:='�l�򲻵���Ůִ�տ�����¹�p��Եɽ׹�顣����������';
  exit;
end;
if s='����֮�' then
begin
  result:='�ν����֣����в�ϲ����������������Ϊ�̡�';
  exit;
end;
if s='����֮��' then
begin
  result:='���l�堙��������С��������ѭ��ֱ��������������Ϊ��������';
  exit;
end;
if s='����֮��' then
begin
  result:='����ʧ��������ҡ����ò������²�֮���������԰���';
  exit;
end;
if s='����֮��' then
begin
  result:='���긺�⣬��ȡ���㡣������𥣬ӯ�����ѣ������ټ���';
  exit;
end;
if s='����֮��' then
begin
  result:='���ļ��󣬰����Ḹ���������գ���Ű����';
  exit;
end;
if s='����֮��' then
begin
  result:='�Ĳ����㣬��ɽ�༬������֥�������޲�����';
  exit;
end;
if s='����֮��' then
begin
  result:='������ͷ����֪��֮���Ŀ��ˣ�ĪʹΪ���������չ⡣';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ң�����������档������ĸ����·���ף��޸����ߡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='ʽ΢ʽ΢���ǻ����������ɽ���Ҽҷ�ɢ��';
  exit;
end;
if s='����֮��' then
begin
  result:='���½����һ��ʧ�������Ӹ����������޸���';
  exit;
end;
if s='����֮��' then
begin
  result:='�ʵ¸�Ǣ�������������ⷽ�������������ϲ����ң��������á�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ƣ���˪����â�������ܹ���ʹ��ز�ˡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����󡣿�����ҡ�������������Σ����';
  exit;
end;
if s='����֮��' then
begin
  result:='��Զ��·�����޶�ڡ�������ۣ�����η��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����Ϻ���ȥ�����������љ��һ�ռ�ĸ�������ǻڡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='������ͨ�������յ���Ը��������ӡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���ְ��񣬺�ѩ��챡���ǰ�������÷����ݡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������꣬�����ѵǡ����Դݳ����ٶ����á�';
  exit;
end;
if s='����֮��' then
begin
  result:='�Ӿ����ƣ������ҿڡ���Ŀ�Կ࣬�������У�������ϲ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�ٴ����ģ��������ᡣ���Ҽθ������޲�����';
  exit;
end;
if s='����֮��' then
begin
  result:='������𣚣�������֡����۾�ã�Ϊ�D������';
  exit;
end;
if s='����֮����' then
begin
  result:='���˾��У�һ���Ա����������ϣ����岻�á���·����������������';
  exit;
end;
if s='����֮С��' then
begin
  result:='Ȼŵ���У�������ˡ�ʹ��¶�ޣ�ҹ�����ҡ���ŭ��ֱ�������Ŀ�����������ʷ�������';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='�´Ǵ�ϣ�ʹ�����㡣��»���٣��Գɹ�����';
  exit;
end;
if s='����֮δ��' then
begin
  result:='���չ������Ƽ�������Ȼ�ð�����������ɥ��';
  exit;
end;

end;

function leihuofeng(const s: string):string;
begin
if s='��' then
begin
  result:='�����м֣�����ɽ�衣���Ϊ�У�����Σ��������ʮ����';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='����е£���ı������Ϊ����ͥ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='ҷ�ڽ��������������������ޣ��������ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ���䣬���治������ʦ���֣����Ӱܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ǧ���U�ԣ�Ϊ���������������٣������гɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У��������ǡ�Ī������Ϊ�����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������Σ��ײ��ɾӡ�ת��񸣣���ֹΣ�ǡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='�������ã�η����ȥ�����ߴ��䣬��֪������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦȢ�������׼�Ů������Ȼ飬�����ȥ��������������ϲ��';
  exit;
end;
if s='��֮С��' then
begin
  result:='����Ұ������Ϊ�顣���겻Ϣ����ȥ���ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������󣬹����������������磬�����þơ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='��˼���ۣ�����ﶫ��˳�������������ա��������أ��������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�O�߾��ӣ���β�������������������ܸ���';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�����²�������ͬ�ᡣ���޷�Ŀ������ʧ����';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ң���н�������ĵ�Ԩ��������������';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='�붫��¬�������嶼���������ã����˹�����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='������ҽ���Ͳ����Ρ������������¼����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ҵ���������𡣼����߰٣����԰��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ഢ���Ӻ����㡣�̿��Ƽ֣�������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ʳ���������ء��ռ��Ҿ����ɹ��������ɲ��ܣ�Ϊ�����á�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ǳ��ӣ����ز������������ã������ϲ��';
  exit;
end;
if s='��֮���' then
begin
  result:='��ָ���⣬а�����ҡ�ִ�����������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�У��������С������ʻߣ����黳�������û�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽû�𸡣�½Ϊˮ�㣬��ȸ��®��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ɣ��������С�����гż�������屶��';
  exit;
end;
if s='��֮����' then
begin
  result:='���겶���ڶ�ǰ���������ǣ��������ߡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='������磬������ϲ�������ھ�����Т�ڸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸ���ӣ�ң˼���ѡ��ÿ���Ұ�����ı��ࡣ';
  exit;
end;
if s='��֮���' then
begin
  result:='��ʦȢ�������׼�Ů������Ȼ飬�����ȥ��������������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ٹ�ͬ�ң�������ʳ����ʸ���������ұ��������ڹ��������˷���';
  exit;
end;
if s='��֮��' then
begin
  result:='��˪��ѩ���˺̺��������������޿�ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ���Ӭ���ۡ����Ϊ�ڣ����Ұ������Ϊ����ʧ���»��';
  exit;
end;
if s='��֮��' then
begin
  result:='ǣ��ǰ���������������Բ��ţ�������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������������������ӿ��̣���ɥ����';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�l�򲻵���Ѫ���޸���Ůִ�տ𣬲��ò�ɣ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ݼ䣩���ݼ䣩�܇ܣ�ƶ���������л�����һ�վŽᡣ';
  exit;
end;
if s='��֮����' then
begin
  result:='������������ι������Ҳ�梣���ĸ��á�';
  exit;
end;
if s='��֮����' then
begin
  result:='��ɽ��֥��Ӻ����ݡ���������������Ϊ������ʬ٧ʳ����»������';
  exit;
end;
if s='��֮�' then
begin
  result:='�����λ꣬��»���档�����ɢ�����乪��';
  exit;
end;
if s='��֮�' then
begin
  result:='�����Ϲ����¹����С����ͽ��£����ܴ󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ä��ĪΪ��װ��ʧ�����ã��������硣';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ů���ң��Ĳ���ʳ���׷�����ǳ����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='ȥ����ޤ�������������ܷ����ӣ��ǻ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ף���Ϊ��ɥ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ҷ�ʱ��������������ô�����';
  exit;
end;
if s='��֮��' then
begin
  result:='¹ʳɽ�ݣ���˼�������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�򳦾��ӣ�������ǰ��ֹ������������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������Ը������Ŀ���Σ�������ǡ�ЦϷ��ׯ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ų�����������ࡣ���гٳ٣�������³��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ң���ָ��ʳ����������������ʧ�⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ҹ�������Ϊ�ǡ�������룬�����ǰ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����Σ������ټ������ҿ��������Բ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͬ�ˣ�˼���޼ҡ�ִ����죬Īʹ��֮��';
  exit;
end;
if s='��֮��' then
begin
  result:='�岻ʤ�飬�������ӡ�����Σ�����ݽ��۾���';
  exit;
end;
if s='��֮����' then
begin
  result:='����������Ȩ����˥���ֶ��޹⣬�����𹫡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����Ƽ֣���ϲΪ�С�����Σ��������ʮ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���߱��ߣ�����ï�ݡ����ڳ�·��η���Ŀڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ˮ���������Ϊ�������ג�������ð��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ɲ�Զȥ����˹���̣�»��δ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ����Ů��Ϊ�С��ε���ͨ��������С�';
  exit;
end;
if s='��֮����' then
begin
  result:='����Σ�ѣ��Ѷ�ȥ�����븣ϲ�ţ���������';
  exit;
end;
if s='��֮С��' then
begin
  result:='�������������������������Ϣ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��ţ��ɽ���������ѡ��ҷ���ѩ���ڶ���ǰ���е�������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�௼βݣ�˼�����ꡣ�������ϣ�մǢʱ�������Һ̼ڡ�';
  exit;
end;


end;

 function huoshanlv(const s: string):string;
begin
if s='��' then
begin
  result:='�������ţ��������衣����������ʲ�ʳ��';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�����޸���������ơ��������̣�˹����ȥ����Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='���޶���������ţ���������������������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������裬���д�֡�������ͷ���꾪��ȥ�������Ծӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£��������ء����޿��У���ಡ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܳ���������������ң���У��������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ϲ��ɣ����ֲ�������������������١�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='����Σ������ټ������ҿ��������Բ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ں���ᣬ�����á���^��꣬Ϊ��������';
  exit;
end;
if s='��֮С��' then
begin
  result:='�����޾࣬��ȵ�񶷡�����Ŀä��Ϊ����ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ľ�����C�����������������ҹ���';
  exit;
end;
if s='��̩֮' then
begin
  result:='������³������̫ʷ����ꥰ׵ߣ�֪��������������һͳΪ����';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�ã�������Ϣ��ʱ���Ƽ�������������';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�������ۣ���©ԫȱ��������㫡�';
  exit;
end;
if s='��֮����' then
begin
  result:='���뺣�ڣ�ѭ�����ߡ�һ��һ�£�����������������ҹ������ˮ�֡�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='Ⱥ�����أ�������ʳ����������������ʧ����';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='���Ҳ���������Ϊ��������ֹ�㣬�޳������˵���ȫ������������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Z��ԩ���������ء�����⻼���������⣬������ȫ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ӿ����ƣ������ҿڡ���Ŀ�Կ࣬�������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�£��β���Ϣ���ɶ����أ������ʸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='ǣͷϵβ�����ۼ������������ʣ���֪���顣';
  exit;
end;
if s='��֮���' then
begin
  result:='�������ã�ʹ�㲶���η����ˣ������޹���';
  exit;
end;
if s='��֮��' then
begin
  result:='������β�������Ƽҡ���������������׹����ǻ����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='ȥ����Σ��׹�ݾ��أ�������󤡣';
  exit;
end;
if s='��֮��' then
begin
  result:='��֥���ƣ�Ϳ����Ӣ������ͨ�����������ס�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ѷɣ�δ��Խ�أ�������ԫ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ۣ��������������b�����������׷��';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾��У��������ҡ��ƺ�ʧ�飬����Ϊ����';
  exit;
end;
if s='��֮���' then
begin
  result:='��÷��֦����ĸ���룬������֪��';
  exit;
end;
if s='��֮��' then
begin
  result:='ӭ��������ϲ���Һ󡣲ܲ���㩣�Ϊ�ι�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ȳ��ҿ���Ŀ��ä��������ƣ���Ϊ���С�';
  exit;
end;
if s='��֮��' then
begin
  result:='����������ǧ���ι̡���ȫ������ʥ�˰�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ܺ�����������ꡣ���ɲ��ã�Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�����������֡���Ң���ѣ����źɱ���������ҹ������������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�����ϸ����������ӡ����ѾӴ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������֬������С֦��ҡ��������Ϊ���������ĺ����������Ǵ�Σ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�س�ľ�����θ��ء����ӳ�������ΣΪ�̡�';
  exit;
end;
if s='��֮����' then
begin
  result:='������ά����ƽ��Σ�����Ծ�ֹ��������Ů��';
  exit;
end;
if s='��֮�' then
begin
  result:='��ţ��ɽ���������ѡ��ҷ���ѩ���ڶ���ǰ���е�������';
  exit;
end;
if s='��֮�' then
begin
  result:='�������������ͬ������ƽ���ף��ܲ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ԩ����Ϊ�����ԡ�֤Ѷڵ�飬ϵ�����¡��������ϣ���Ȼ�ɶ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��������᪲���ϲ�����ǻ��ף������޾̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���ӣ�����η�ܡ�����������������ܣ���Ḭ̄�ȡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ʮ���ٳ�������ĸ�㡣����������˭��Ϊ�¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�߸�ɽ�꣬���u�߱���Ϊ�����飬Ԫ����ް��';
  exit;
end;
if s='��֮��' then
begin
  result:='���o�˷ɣ�Ϊ����顣��ʦ��ս��������ˡ����Ա�ް���Թ����ɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ף��鲻��á���ľΪ��������ɱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ѻ��ͥ�У��������ס����Ż��أ����Ǳ��͡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸ���ӣ���͵�ʿ���ĵҷ������԰����ҡ���ª��ʱ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�E�쐺�ˣ�ʹ�ò�ͨ���׺����꣬��Y�����';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ŀ׵£��Դ��������ľ����ԣ����л񸣡��ų�̫ʦ���⽨�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����ֹ�񣬹��@���������ٱ��죬�Ӱ�񸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ů������ౣ���������ӣ����ֳ��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ĵ��˼�ĸ�������ұW�����ð�����';
  exit;
end;
if s='��֮����' then
begin
  result:='ˮ���������Ϊ��������ג�������ð��ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ꧣ����������������;���������֡�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ǭ����£��������ϡ�Ż�ĳ��죬ʹ�Ҹ��¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ؽ������������������������֣����̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ڤ�����޼͸١�������ң���ɥ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������ͷ��Ī֪��֮���Ŀ��ˣ�ĪʹΪ���������չ⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='��ҹ���գ���Ϊ����������տݣ����ڱ�½��';
  exit;
end;
if s='��֮С��' then
begin
  result:='����ҹ�Σ�������⡣�������ʹ�����ǡ�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��¹��ɽ���������š������͵��������ֲС����ӳ��Σ������ʾ���';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�뼽������Ĳ����������Ҹ�ĸ��';
  exit;
end;

end;


function xun(const s: string):string;
begin
if s='��' then
begin
  result:='��ɽ�ɰأ���ï���䡣���Աӣ����件�֡�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='����ĭ�磬Ҫ��ɣ�С�ʧ�Ų��ᣬ��˼Լ����';
  exit;
end;
if s='��֮��' then
begin
  result:='������������ڹ����������ɶ�������ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�£��β���Ϣ���ɶ����أ������ʸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ֮����GΪ��������ǣ����Ҽ��������ɦ�ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�屴���꣬�����Ҵǡ�ϵ�ڻ��룬ǣ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�����࣬�����������ɻ�����ĸͶ�̡�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='����ҡβ�����ƴ�ˮ������Ϊ½��������𢡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ž��أ�������ͨ��������Ī�������񹫡�';
  exit;
end;
if s='��֮С��' then
begin
  result:='����������������ϡ�������Ԩ���𶥳��ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='��¶��˪���հ�������������������ȴ��ˡ�';
  exit;
end;
if s='��̩֮' then
begin
  result:='�������ȣ��������á�����������������С������������������ơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧ�����ò������²�֮���������԰���';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�캵ˮ�ԣ���������δ������';
  exit;
end;
if s='��֮����' then
begin
  result:='����׹磬�Ƽ�Ϣ�ߡ��������������ƶ��';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='���Ὥ����½�в�ֹ��������£�ʧ�䶼�У��ǻ��޾̡�';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������ȼ޲������Ḹ�֣�˼�������';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ұ�����ⳣ���ӡ��������������ö�ҡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='ƽ���������������ҡ��ں��Է����鹫������';
  exit;
end;
if s='��֮��' then
begin
  result:='���ߴ�����ս�ڹ��������±������������ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ҹ�������Ϊ�ǡ��������룬�����ǰ���';
  exit;
end;
if s='��֮���' then
begin
  result:='�����Չ���������Ϊ�����ˡ������ۣ������չ⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ǳ��ӣ����ز������������ã������ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ�ƣ��i�����롣ʤĸ��Ȫ�����Ӹ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������������³��ս������Ȯ��';
  exit;
end;
if s='��֮����' then
begin
  result:='�����ӳ���������窡�������ӭ���������ڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='����ʧ��������ҡ����ò������²�֮���������԰���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĺ���䣬�������ҡ�������䣬�����ɵá�';
  exit;
end;
if s='��֮���' then
begin
  result:='�����ĺ�����پ��¡��������أ��������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='ʱ�����ӣ����ߺξ̡��ҼҾ��ڣ���ʧ������';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ף�����Ϊ�ꡣ��Ů�տ񣬾������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ϸ����Ӵ��������׶�Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ƿ�ֹ_�������ڵ�������Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ڣ�ʮ����ʳ�����������������塣';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�˳��߰٣������ĵ¡�������������ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='��ᷨ�飬�ظ���̨���������ң��������֡�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ﲻ������ǿ�������������У�ʦͽ�ܸ���';
  exit;
end;
if s='��֮�' then
begin
  result:='�������ݣ��ĳ����ޡ�����ެ�̣���ʵ���С�';
  exit;
end;
if s='��֮�' then
begin
  result:='�x��ͺ�ף�������𢡣���Թ������o�鷦�롣';
  exit;
end;
if s='��֮��' then
begin
  result:='ǣ����ӣ�ˮ���հա��������ӣ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='���м��У�����ر�����ϲ���ӣ�����Ϊ�ѡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ģ��ܷ����������ʤ������ӺӼ䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���侪�̣��������ˡ����丣�죬��ТΪ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ꡣ��������������й�����֮�أ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ˮ�ǣ���Χ���ء���Σ���������ֿ��';
  exit;
end;
if s='��֮��' then
begin
  result:='������ͨ����Σ���ף�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ص£�����ެϢ��ƽ����ֱ������󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽˮ��ŭ����������������������������ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='ʹ�����ң������ޡ����������������·���';
  exit;
end;
if s='��֮��' then
begin
  result:='ʸʯ���䣬�幫�O�硣���ӳ��ţ��˲����Ρ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������У�һ��һ��ٳ�պգ����ɵñ����ߵ�׹׹����Ϊʿ�顣';
  exit;
end;
if s='��֮��' then
begin
  result:='���ű�������Χ��������ö�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������죬�����ǳ�����Сʧ�󣬸���ǽ�⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='��֮�������������ҡ���Ŀ�����յ�֪����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������꣬Ϳ�����ʡ�������ֹ���������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���Ÿ�ϲ������ʢ�㡣�վ��е£�����ҹ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ֮���Ҷ���������־��ӣ�Ϊ����⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='����ͷ��������δ�ɡ�����������������';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӥ�����ӣ�δ��֪ʶ����ͯ���ǣ��������¡�';
  exit;
end;
if s='��֮����' then
begin
  result:='�����󊧣��������ԡ��������ڣ�������ˡ��������ǣ��Ų�������';
  exit;
end;
if s='��֮С��' then
begin
  result:='��֮���У���֮���硣��ʦ�������粮���ꡣѲ���������Ը�ɹ���';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��Ϊ�����������ء��Խ����⣬�Ǽ�����������������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='�������£�����Ϊ�¡��в�ʧ������������';
  exit;
end;


end;

 function dui(const s: string):string;
begin
if s='��' then
begin
  result:='����ʦ����Ϣ��ƣ���۷��ϲ���뻧���ޡ�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='����Σ�ѣ��Ѷ�ȥ�����븣ϲ�ţ���������';
  exit;
end;
if s='��֮��' then
begin
  result:='���Iִ�룬����������Ԫʥ���գ��Ḹ���ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�к�Ϊ�飬�����޴���ҡ��ʧ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������ӣ������´���������������»����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ꠎ�ޣ����S���Y���K�ղ�ʳ�������ƣ��Ǭ֮���󣬿�֮���ˣ�����һ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ɽ��ִ����������¿�����';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��˪��ѩ�����Һ�����������������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���ڳ�ꪣ��Ų����󡣽����¹��������޵�������֮����ʧ�����ߡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='����ʥ�£�����̫�������齨�У������Ը���';
  exit;
end;
if s='��֮��' then
begin
  result:='����½�������ݡ������ؼ�������������';
  exit;
end;
if s='��̩֮' then
begin
  result:='��η�ڿ����²̡����²�Σ�������⺦��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������Σ��������롣��ʸ�޹Q�����Ͷ��䡣�������������Ҷ�ҡ��';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='������֪���������֡�˥�߸��ˣ��յø�����';
  exit;
end;
if s='��֮����' then
begin
  result:='����������Ҷ��ȥ�������ͣ���罩�͡�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��������������ΪԸ���ҵ��ƺ񣬸�����ϲ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������񣬷��ñ�ʯ����Ի��ֱ����Ի�������������';
  exit;
end;
if s='��֮��' then
begin
  result:='հ�����ң�������ӡ�������������⬼�ȵ�����ӿַ������Ҿܸ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����ಡ���ι�Σ�������ӳ��ţ�����ʧ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��������Ͼ�ʳ����ϲ�ʹӣ��Գɶ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='����䴦��ʧ�ڶ�ڣ��������⡣';
  exit;
end;
if s='��֮���' then
begin
  result:='��ѭ��ˮ������ն֦����ʱ���������������';
  exit;
end;
if s='��֮��' then
begin
  result:='������꣬���ζ��롣����˵�����ż����¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���߰˰٣������ĵ¡�������������ܸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�۴���ˮ�����ں��������뽫ʳ���������ġ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ʣ��ܸ����������޻�����';
  exit;
end;
if s='��֮����' then
begin
  result:='���ϴ�������ʱ��Ϣ���������У��������ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ţ�Ѳ����ԩ����̨�h�������ϲ��';
  exit;
end;
if s='��֮���' then
begin
  result:='�������ң�����ϳݡ�Ǭ�����꣬�������ӡ�����ɾͣ�������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң�˿���������˲��ɵá�';
  exit;
end;
if s='��֮��' then
begin
  result:='������⣬������������ĸ������������ҵ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��é���ƣ����װݵ���������ʳ��ʹ���ٿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�������죬�ɼֻ��ʡ���֮Ӫ��������Ƥ�������ؽ𣬶�����顣';
  exit;
end;
if s='��֮��' then
begin
  result:='���l�堙��������С��������ѭ��ֱ��������������Ϊ��������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�����Ӿ���������ء���ʦ�������������á�������Ǩ�����߻��ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������죬�����ܸ����������ã��ٳ���»��';
  exit;
end;
if s='��֮����' then
begin
  result:='»���ܹ��������嶫�����Ӿ�⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='�������죬���þ��ޡ����Ҽ��࣬���ڶ�����Ͷ��֮�ǣ������ָ���';
  exit;
end;
if s='��֮�' then
begin
  result:='������࣬�������ӡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='��Ը��ϲ���˽��ʱ������������������';
  exit;
end;
if s='��֮��' then
begin
  result:='Ŀ���ɺϣ�����ɦ�㡣����Σ�壬ȥ����塣';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮����������ϲ�������໸������Ϊ�����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�ļ�������������ϲ�����Բ�ȡ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ӭ���֣��������������Ӽ����������Ļɡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�㳲ȥ�ң��������ڡ������ܸ�����ϲ��á�';
  exit;
end;
if s='��֮��' then
begin
  result:='˴�Ǵ���ʯ��֮Ұ��������ͥ������ˮ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���ӻ�������֮���С������ܸ������Ҹ��С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����������ɽ�����������ڣ������ɶ���';
  exit;
end;
if s='��֮��' then
begin
  result:='������������@����������Y����픑n�ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������¡����ҹ��ᣬ�ּ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='ʮ���ٳ�������ĸ�㡣����������˭��Ϊ�¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ӫ�����أ��ܹ�������������ʮ�������˰١������̽ᣬ��̲��䡣';
  exit;
end;
if s='��֮��' then
begin
  result:='���˾��У����뽫ʳ��һ�����ģ������Ի�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ǣ������൱����ӥ������һ��������';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ǣ��������ˡ������л�����ȡ���ꡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʱʧ��������������';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮������ҰΪ������ӥ���ߣ����ڹȿڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ѩ����ʧ��ڡ����˽��ϣ����븴�롣';
  exit;
end;
if s='��֮��' then
begin
  result:='������ˣ�һ�����ߡ�ҡ��������Σ�겻����';
  exit;
end;
if s='��֮��' then
begin
  result:='��ز���죬������������ೣ���ʧ���ۡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���ݽ�ϯ�������ĵ¡��������죬�����丣��';
  exit;
end;
if s='��֮С��' then
begin
  result:='�������ţ��������衣�������������ʳ��';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='��ɵذ�����ʯΪɽ����Ǣ��������件��';
  exit;
end;
if s='��֮δ��' then
begin
  result:='ͭ����������¶�Ϳࡣ�������꣬������ֹ';
  exit;
end;
end;

function huan(const s: string):string;
begin
if s='��' then
begin
  result:='���Ҳ���������δ�͡��������ã�Ȯ�p���á�';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='�Y����Խ�����۽ҽҡ�����׷˼��ʧ��ͽڣ����Đ�����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ߵ���ݣ�����Σ����';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ȯ�������ɴ��޴������ɳ��ţ��н�ȴȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='����ܸ���ϲӯ���ң����½Եá�';
  exit;
end;
if s='��֮��' then
begin
  result:='���б��飬������㡣ؽ�м�ȥ�����Եòơ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ţ����������Ϊĸ���������֣��������ߡ�';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��Ϣ���ӣ�����®���Ǿ�ϰ�ף�ʹ���ǻ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�д�����������ˡ������������������';
  exit;
end;
if s='��֮С��' then
begin
  result:='���������Ϊ�˹�Ц����˾������ĸ���š�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ϊ���󸾣����ڶ�����ˮ���޴�������������';
  exit;
end;
if s='��̩֮' then
begin
  result:='��Ů���ң�����ͬʳ���������ƣ����Ҷ��';
  exit;
end;
if s='��֮��' then
begin
  result:='̫΢���ң��Ƶ���ֱ���������������ɵ��롣�������ڣ����޻�����';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='�����У��������ӡ���͵�Է������һƱ���';
  exit;
end;
if s='��֮����' then
begin
  result:='���˾��У�������硣�������ţ��ݼ����ס�';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='Ȣ�ڽ�������ӭ�¸����������ţ�������ϲ��';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='�������У�����󠙡����ϲ��㣬ٻ������������֮������ʧ�Ұ';
  exit;
end;
if s='��֮��' then
begin
  result:='����׳ݣ�˥�ϸ��𡣶������ӣ������þˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ҹ����ĸη�硣ƽ���𽨣������Ǿ塣';
  exit;
end;
if s='��֮��' then
begin
  result:='׷���𱱣���ɽ���á����������������®��';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������㡣������ͬ��δ���书��';
  exit;
end;
if s='��֮���' then
begin
  result:='������̐���^���ҳ�����ȥ������';
  exit;
end;
if s='��֮��' then
begin
  result:='ɽ����أ�½��Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='Ϊ��������̩ɽ֮�����ڶ���ߣ�Ī�ҾȲء�';
  exit;
end;
if s='��֮��' then
begin
  result:='������ĵ��˼����ĸ�������ұW�����ð�����';
  exit;
end;
if s='��֮����' then
begin
  result:='⨺����ԣ����޳�ȫ�����Ұ���ʹ�ɿ�����';
  exit;
end;
if s='��֮����' then
begin
  result:='�ɲ�Զȥ����˹���̣�»���ḻ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��βϸҪ���ز���ҡ����Ȩ�ƹ���ƽ�����ѡ�';
  exit;
end;
if s='��֮���' then
begin
  result:='����Ϧ������ԻӤ�����ɵ��롣';
  exit;
end;
if s='��֮��' then
begin
  result:='��η�ڿ���ڳ²̡����²�Σ������򺦡�';
  exit;
end;
if s='��֮��' then
begin
  result:='η��Ǳ������ʱ���ʡ������գ�Ϊ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ӡ���֦�ųᣬ������ĸ��';
  exit;
end;
if s='��֮��' then
begin
  result:='���̽��磬�������𡣾������ӣ���˳�����������£������־̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������飬���ϳ��硣������ĺ���������';
  exit;
end;
if s='��֮��׳' then
begin
  result:='������磬�����޺󡣼�����ˬ�����˾��롣';
  exit;
end;
if s='��֮��' then
begin
  result:='��֮���裬��»���ڣ�����Σ����';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ŀ��������Ϊ�������ϼ�Ů������ϵ¡�';
  exit;
end;
if s='��֮����' then
begin
  result:='���⣨���飩�����飩���Ա���ߡ�������������û��ȫ��';
  exit;
end;
if s='��֮�' then
begin
  result:='������Ŀ���������塣������ڣ�Զȥ���ҡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='�򳦾��ӣ�������ǰ��ֹ������������졣';
  exit;
end;
if s='��֮��' then
begin
  result:='����ص£�����ެϢ��ƽ����ֱ������󸣡�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ݷ��Ұ������Ң���������������־�ࡣ';
  exit;
end;
if s='��֮��' then
begin
  result:='�س����У�������ɣ��������ϲ�������ʲء�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦ������ս����Ұ������ƽ�������´�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�u�����٣����ô���������ʳ�������Ƹ�Ц��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������������ݲ������游�Ϳ࣬����ɿڣ�������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='������β�������Ƽҡ���������������׹����ǻ����ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='������·������η��ʹ�Ҿ��壬˼��ʴ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����ʧ��������ţ���ټ��������п����С�';
  exit;
end;
if s='��֮��' then
begin
  result:='���|�������������𡣳������ڣ����Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ۣ����֮�ҡ���һϢʮ���Ź����ء�';
  exit;
end;
if s='��֮��' then
begin
  result:='���������Т����ʡ��������׸��������ȥ��';
  exit;
end;
if s='��֮��' then
begin
  result:='��ͷ���㣬�������⡣©�Ұ������������á�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ң�����˭�ǡ��Լ��������ּ��ٽ⡣';
  exit;
end;
if s='��֮����' then
begin
  result:='��Ϊò�e���ܾ���ɫ�����²��ɣ���Ϊ������';
  exit;
end;
if s='��֮��' then
begin
  result:='����ԯ������̫ɽ���U��ͬ�����������ѣ����Ц�ԡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����Ϊ����Ů�����С��ε���ͨ��������С�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ϲ����ӣ��������á����ҳ�Ů���������롣���ó�񣬺��˴�ڡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�ѹ�ʧ��������㣿�ѷ�봦Ұ��ɥ���⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='��ɽ��֥��Ӻ����ݡ���������������Ϊ������ʬ٧ʳ����»������';
  exit;
end;
if s='��֮����' then
begin
  result:='ǣ��ǰ���������������Բ��ţ�������ˡ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='��ɽ��ɽ������ֹ����������������δͬ�á�';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='¹�����ӣ���®֮��Ʋ������̰������';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������ɽ��������������־���ף������Թ��';
  exit;
end;

end;

function shuizhejie(const s: string):string;
begin
if s='��' then
begin
  result:='��Ϊˮ������ʥ������������£��������棬�������㡣';
  exit;
end;
if s='��֮Ǭ' then
begin
  result:='����ŭ�أ��������ǡ����¾�ɦ��ʿ�����ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='̽Ѩ�ó����ȵ������ʹ�����ǡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����һʳ�����ֲ��㣬»���ѱ���';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ߣ�ǧ��һ�ޡ��������磬˭��׷����';
  exit;
end;
if s='��֮��' then
begin
  result:='ȵ���ǣ����²��ס�������ϣ�����ʧ�ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ᣬ�������֡��б߶��ڣ�˭�ҵ��档';
  exit;
end;
if s='��֮ʦ' then
begin
  result:='��������������ס������죬Ķ�������';
  exit;
end;
if s='��֮��' then
begin
  result:='��檶��ޣ���Ůδ�ң��������á�';
  exit;
end;
if s='��֮С��' then
begin
  result:='��Ұ����������Ϊ��������ֹ�㣬�޳������˵�ȫ�꣬����������';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ĸ������Ұٹ����α����ã��뼾ͬ����';
  exit;
end;
if s='��̩֮' then
begin
  result:='�����̶��������츸���������ף�˥�����������ĳɰԣ�Ϊ��Ԫ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�ų¼��ӣ��޳ɺ�����������ϲ���������ݡ�';
  exit;
end;
if s='��֮ͬ��' then
begin
  result:='���泤ͷ��������ǡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='η�費�У����������������ܸ����������졣';
  exit;
end;
if s='��֮ǫ' then
begin
  result:='��ȥ�Ҷ����׷������ҹ���£�շת�մ����ڻ���꣬�Ǵݸγ���';
  exit;
end;
if s='��֮ԥ' then
begin
  result:='��������������ʩ�á�������ʱ���Դ���֪��';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ��������Ϊ�������ϼ�Ů������ϵ¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�Ľ���ܯ���ߵǴ��͡���»���磬����֮����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������ģ�������������oƾŭ��������ҡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='���ϳ����ϵ�ϲ�ҡ����Һ��ã��븣������';
  exit;
end;
if s='��֮���' then
begin
  result:='����������ʧ�κ��ᡣǬ��Ұ�����ѹ�ʧ�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='ϲ��ӻԾ����ӭ���ҡ�ȵ���������Գɼθ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��������˭�����롣��������ͽ�͵�·��';
  exit;
end;
if s='��֮��' then
begin
  result:='��²��ū�����ֱ߾�������Ϊ��������δ�졣';
  exit;
end;
if s='��֮����' then
begin
  result:='�����������������ݻ��ӣ��������ɡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='�������ã����η��衣��ʩ���У��������ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='����֮�����������ꡣ�Ե�˳�񣬰������ס�';
  exit;
end;
if s='��֮���' then
begin
  result:='������𣬼����۾ࡣͽ�Գ�ൣ�˭��Ϊ�¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='Ⱥ�ӻ��ǣ��ܱ�ţ�򡣵�·��ͨ����ũ���̡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�̲���ƣ����ֱ��ߡ���Ů�����ʵ²��¡�';
  exit;
end;
if s='��֮��' then
begin
  result:='���겫���ڶ�ǰ�󡣵���֮ʱ���������ߡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��������������ҹ�������δ�ȣ������츣��';
  exit;
end;
if s='��֮��' then
begin
  result:='�ܳ���������������ң���򣬲������ҡ�';
  exit;
end;
if s='��֮��׳' then
begin
  result:='�����ײ����������ҡ��˼����ӣ����丣»��';
  exit;
end;
if s='��֮��' then
begin
  result:='������Ȩ��ժ�⻼�ѡ���Ȼ���ͣ������԰���';
  exit;
end;
if s='��֮����' then
begin
  result:='�𶯽Ǹʣ�������ľ��ï�����졣';
  exit;
end;
if s='��֮����' then
begin
  result:='����������������ȥ���������ǡ�';
  exit;
end;
if s='��֮�' then
begin
  result:='������ڣ�ʥ���ʺ��ͽ⵹�����ƹ��󰲡�';
  exit;
end;
if s='��֮�' then
begin
  result:='��ˉ�ɼ���������ʵ������������ʹ��������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ĸ���������Т��������٣��ɾ�Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='�������£���½�ຮ��¶�޶�磬�������ġ�';
  exit;
end;
if s='��֮��' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����档';
  exit;
end;
if s='��֮��' then
begin
  result:='һ�����ۣ��Ӳ�֪�����������࣬ʹ����㴡�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����ร����»��������֮����������й⡣';
  exit;
end;
if s='��֮��' then
begin
  result:='ǧ�껱������ห񣡣��ά������֦Ҷ������';
  exit;
end;
if s='��֮��' then
begin
  result:='��ʦ������ʤ����Ұ������ƽ�������´�ϲ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�����²�������ͬ�ᡣ���޷�Ŀ������ʧ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�������壬Ϊ��������������𢣬�����ɸ���';
  exit;
end;
if s='��֮��' then
begin
  result:='����й�������ʢ¡���]�����ɣ���ó��ˡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��ҹ���ޣ���������������Σ�壬���䰲�ӡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='˼Ը��֮���˽��ʱ��ϴ媹��ǣ����件����';
  exit;
end;
if s='��֮��' then
begin
  result:='�g�g�࿣�ҹ�����䡣ı�����ʣ��������ҡ��վ����ƣ�������ʳ��';
  exit;
end;
if s='��֮��' then
begin
  result:='�Uţ���ӣ����ڴ�Ұ�������΢��������ĸ��˵�Գ��ڡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='��������������֪���������裬���й�ء�ֹϢ�нڣ������ٿ���';
  exit;
end;
if s='��֮��' then
begin
  result:='��ȻԶ�̣��ܻ����硣����������Ա�Ϊ����';
  exit;
end;
if s='��֮��' then
begin
  result:='���������������׾̡��м�ʮ����������';
  exit;
end;
if s='��֮��' then
begin
  result:='��Ŀ���ӣ�������־��һ�Բ�ͬ���������ϡ�';
  exit;
end;
if s='��֮��' then
begin
  result:='��˵�����������������ܾ��������Σ�ס�';
  exit;
end;
if s='��֮��' then
begin
  result:='�����弾����ĺ���¡�����ʧ����ɥ�䱴�ң��԰ݵ��ԡ�';
  exit;
end;
if s='��֮����' then
begin
  result:='���б��飬������㡣ؽ�м��������Եòơ�';
  exit;
end;
if s='��֮С��' then
begin
  result:='Զ��ǧ��������֡���¦֮���������ڶ���';
  exit;
end;
if s='��֮�ȼ�' then
begin
  result:='����뾸����������š��м���Ӯ������Ϊ����';
  exit;
end;
if s='��֮δ��' then
begin
  result:='������ý��ʱ���������������棬���޶��ӡ�';
  exit;
end;

end;

function zhongfu(const s: string):string;
begin
if s='����' then
begin
  result:='�����@�@������¡��������ң��ּ�����';
  exit;
end;
if s='����֮Ǭ' then
begin
  result:='�ƺ�֮Ұ���;����ڡ�����Ϊ�࣬�����־̡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ң�����ϳݡ�Ǭ�����꣬�������ӡ�����ɾͣ�������ĸ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ҵ���������ȥ��ʵ�����У�������˛��';
  exit;
end;
if s='����֮��' then
begin
  result:='Ӥ�����飬ĸ�����ӡ��S����ϲ������ʶ���';
  exit;
end;
if s='����֮��' then
begin
  result:='������Ŀ���������塣ʧ������Զȥ���ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ף����Ӳ������꼢�׻ģ�ʿ��Σ����';
  exit;
end;
if s='����֮ʦ' then
begin
  result:='���½�����̻�ʧ���������˸��������޸���';
  exit;
end;
if s='����֮��' then
begin
  result:='��Լ������Ϊ�����ܡ�����ƽ���������⡣';
  exit;
end;
if s='����֮С��' then
begin
  result:='����ȵ�٣����ٶ���������ͥ�ᣬΪ����󡣷���Ӣ�����������';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ŀ���ӣ��Խ�ͬ�졣�Օi֮�󣬼��Ხ梡�';
  exit;
end;
if s='����̩֮' then
begin
  result:='���ϳ�������ϲ�ҡ����Һ��ã��븣������';
  exit;
end;
if s='����֮��' then
begin
  result:='������ϣ�δ�������ý��������ʹ�Ҳ��硣';
  exit;
end;
if s='����֮ͬ��' then
begin
  result:='�����½���������������Ͽ��ޡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='����ʧ�ڣ�������֪�����Է��ѣ�Ϊ�ҿ���������ǳ';
  exit;
end;
if s='����֮ǫ' then
begin
  result:='��³���ԣ�ս�����š���Թ���������������';
  exit;
end;
if s='����֮ԥ' then
begin
  result:='�����������������㡣½�в�������ΣΪ����';
  exit;
end;
if s='����֮��' then
begin
  result:='��󥻶ϲ����ľ��ï���ٹ�ެ�������渻�С�';
  exit;
end;
if s='����֮��' then
begin
  result:='��Ϊ��Ű���紵��ȴ����ֹ���ã�������լ��';
  exit;
end;
if s='����֮��' then
begin
  result:='������꣬�������롣�������ã��������ʣ�������顣';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ӣ�ͬ�����飬�����ౣ��';
  exit;
end;
if s='����֮���' then
begin
  result:='��ȸ��֬������С֦����ҡ������Ϊ���������ĺ�Ưҡ�����Ǵ�Σ��';
  exit;
end;
if s='����֮��' then
begin
  result:='��ɽ��ɽ������ֹ���������������δͬ�á�';
  exit;
end;
if s='����֮��' then
begin
  result:='������ߣ�����̿֡��׻���������ں�';
  exit;
end;
if s='����֮��' then
begin
  result:='��߮��������֪������������꣬���Է�ĵ������𱨣�����ֹ�ӡ�';
  exit;
end;
if s='����֮����' then
begin
  result:='�����ڸ���ϲ���Ҳࡣ�������飬Ϊ����լ���������أ������ĵ¡�';
  exit;
end;
if s='����֮����' then
begin
  result:='��ɺ��������Ҳ�������ǿ������Ϊ�����̡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ڣ��˳���ʳ����ӥ�����ʧ�����塣';
  exit;
end;
if s='����֮���' then
begin
  result:='̾Ϣ���ã��Ǵ��г���ɥ�ҽ�󿣬����ʧλ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������������Ϊ�ҡ�˪����ͬ���������ʡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='���ͼ�Ů�����ڵ��������ӵ�Ϧ�������ô���';
  exit;
end;
if s='����֮��' then
begin
  result:='��ͷ���ӣ�����η�ܡ������������������٣���Ḭ̄�ȡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='��ᷨ�飬�ظ���̨�������������������֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�����ƣ�ĺ��������������̡�';
  exit;
end;
if s='����֮��׳' then
begin
  result:='����ͷ��������δ�ɡ��������˵��������';
  exit;
end;
if s='����֮��' then
begin
  result:='�������У�һ��һ��ٳ�պգ����ɵñ���������飬��Ϊʿ�顣';
  exit;
end;
if s='����֮����' then
begin
  result:='�������У�������ӡ����������������ٳ衣';
  exit;
end;
if s='����֮����' then
begin
  result:='���߱��ߣ�����ï�ݡ����ڳ�;��η���Ŀڡ�';
  exit;
end;
if s='����֮�' then
begin
  result:='���}�زͣ�ʳ�����Ρ�ʧ�߰�®��������ӡ�';
  exit;
end;
if s='����֮�' then
begin
  result:='�������ӣ������ϲ����Я�����������Ǹ���';
  exit;
end;
if s='����֮��' then
begin
  result:='�������룬����֮ʦ���Ե·������ǻ����档';
  exit;
end;
if s='����֮��' then
begin
  result:='��ʥ�����������뾪���߷�ɱ�������δϢ��';
  exit;
end;
if s='����֮��' then
begin
  result:='������ż��˼��֯Ů���������������Ѿӡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮������������������ֹϢ��';
  exit;
end;
if s='����֮��' then
begin
  result:='��㼶���������Ϊ����������ɽ����Ӥʧ����';
  exit;
end;
if s='����֮��' then
begin
  result:='���l������������С�������󣬾��滢®��Ϊ������������������';
  exit;
end;
if s='����֮��' then
begin
  result:='����ȣ���ڤ���ҡ�������ʵ�����޳��¡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������룬�����Ƹ衣Ľ��֮�壬Ϊ��������ı���죬��Ŀ������������ʩ��';
  exit;
end;
if s='����֮��' then
begin
  result:='���ϲ��棬���ӷ��롣���ﱻ��������Ϊ�֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='�徫���У�����ʶ��������ŭ����������';
  exit;
end;
if s='����֮��' then
begin
  result:='������ɽ���������š����ϸ��ã������꽬��';
  exit;
end;
if s='����֮��' then
begin
  result:='�д���ɣ���˾���衣ִ������������������������ϲ��';
  exit;
end;
if s='����֮��' then
begin
  result:='�������ͣ������������ʧ���������Ҿ�ƶ��';
  exit;
end;
if s='����֮��' then
begin
  result:='���˾��У�����󠙡����ϲ��㣬ٻ������������֮������ʧ�Ұ';
  exit;
end;
if s='����֮����' then
begin
  result:='��˼���ۣ�����ﶫ��˳�������������ա��������أ��������ҡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='�������磬������֡�';
  exit;
end;
if s='����֮��' then
begin
  result:='���������������������ĵ²�����»���ɡ�';
  exit;
end;
if s='����֮��' then
begin
  result:='����֮�£����߳�ʳ��²����˵��Ϊ���ø���';
  exit;
end;
if s='����֮��' then
begin
  result:='������У��ศΪǿ����ʥ���£����ҳ�⡣�����񿵡�';
  exit;
end;
if s='����֮��' then
begin
  result:='������ʱ�����Ҷ��ǡ�����˥�������ı��';
  exit;
end;
if s='����֮��' then
begin
  result:='����������������á�����������ȡ�����ߡ�������ȭ������Ϊ�̡�';
  exit;
end;
if s='����֮С��' then
begin
  result:='������Ż���ג��η����裬���޻�����';
  exit;
end;
if s='����֮�ȼ�' then
begin
  result:='��Ǳ�ﱱ�����ӱ��������������';
  exit;
end;
if s='����֮δ��' then
begin
  result:='���ޱ��ڣ�������ǿ���׷����٣�����������';
  exit;
end;

end;

function xiaoguo(const s: string):string;
begin
if s='С��' then
begin
  result:='���侪�̣��������ˡ����丣�죬�������顣';
  exit;
end;
if s='С��֮Ǭ' then
begin
  result:='�������ʣ�����˳�ţ�����������';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������ԣ������⻼��������ְ���������š�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��ɹ���ϲ��Ң�¡�����������Ҫ�ı�����';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������ݣ������������������꣬�������衣';
  exit;
end;
if s='С��֮��' then
begin
  result:='ʹ����ɣ���ܲ����С��������ϣ�������ˡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����״���ͷβ�ߵ�����Ϊ�����������֯��';
  exit;
end;
if s='С��֮ʦ' then
begin
  result:='����ٸ���ԥ��Σ���������Ѱ���»�����ѡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��Ů�ᴲ���������¡��ϻ����࣬����ɳ����Ű�ڵ����������۾���';
  exit;
end;
if s='С��֮С��' then
begin
  result:='��׵��챣������ҹ���ǽ��֮�ԣ�����������';
  exit;
end;
if s='С��֮��' then
begin
  result:='������ʹ���������¡��ж���ȥ����Ϊ˹����';
  exit;
end;
if s='С��̩֮' then
begin
  result:='���߹��ң�ͬ����á���¶ʱ�������Ұٹȡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='����ҹ�Σ������ꡣ�������ʹ�Ҳ��ǡ�';
  exit;
end;
if s='С��֮ͬ��' then
begin
  result:='�������ģ�����Ϊ�ڡ�������ƣ�ȥ����ң�Ϊ�����С�';
  exit;
end;
if s='С��֮����' then
begin
  result:='�������������Ϊ�ҡ�˪����ͬ���������ʡ�';
  exit;
end;
if s='С��֮ǫ' then
begin
  result:='ţ�����Z��������ζ��ί�Զ��ޣ������㴡�';
  exit;
end;
if s='С��֮ԥ' then
begin
  result:='��ͷ���ӣ�����η�ܡ������������������]����Ḭ̄�ȡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��ʦȢ�������׼��ӡ�����Ȼ飬�����ȥ������������������С�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������죬�����ǳ���ԸСʧ�󣬶���ǽ�⡣';
  exit;
end;
if s='С��֮��' then
begin
  result:='������������ȥ��ҡ����и����������Ծӡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='���۷��⣬ŭ����ֹ�����帹�ģ�����Ϊ�С�';
  exit;
end;
if s='С��֮���' then
begin
  result:='����֮�ǣ�ת��ϲ����';
  exit;
end;
if s='С��֮��' then
begin
  result:='���Ÿ��ɣ��������㡣�����ػ���������֮��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�Ǹ�նľ�����ٵ��ա�������գ�������ൡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='ɣ֮���䣬�����Ҷ��ʧ����࣬����������';
  exit;
end;
if s='С��֮����' then
begin
  result:='�ﰿ�裬���ڼҹ������Ҳ�梣���ĸ��á�';
  exit;
end;
if s='С��֮����' then
begin
  result:='�������ӣ�ӯ����ȣ��˺��̼ڡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��ڤ��ɽ�����վ��ѡ�����ռ���������䡣';
  exit;
end;
if s='С��֮���' then
begin
  result:='������飬Ϊ�����ա�ڤ��ʧ�����ᾫ�޹⣬���ڵ��ԡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�ݾ����񣬻������ס�����������㳲�ȥ���������ҡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='צ��֮ʿ��Թ������ת���뼺���˲���ĸ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='��ӯ���ڣ��˼���𢣬������Ϣ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='��뻻�����ͨ�����⡣���Ǹ�ʥ���ʵ´��С��Ҹ����㣬���������';
  exit;
end;
if s='С��֮��' then
begin
  result:='����֮���������Ǽ���Ϊ�����̡�';
  exit;
end;
if s='С��֮��׳' then
begin
  result:='ˮ�����̣�½Ϊ���ġ�����ʧ�ӣ�С����Я��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������֣���ʪ���С������񣬾�����ȥ��';
  exit;
end;
if s='С��֮����' then
begin
  result:='���緺�ɣ��߹鲻�����ѹ����ң������U�ء�';
  exit;
end;
if s='С��֮����' then
begin
  result:='��ֱׯ�����������ϡ�ý����������������';
  exit;
end;
if s='С��֮�' then
begin
  result:='����ಡ���ι�Σ�С����ӳ��ţ�����ʧ����';
  exit;
end;
if s='С��֮�' then
begin
  result:='ʧ��ţ���������ǡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������ƣ���˪����â�������ܹ���ʹ�����ˡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����霣���֪�׺ڡ��������ţ��������䣬����ʧ����';
  exit;
end;
if s='С��֮��' then
begin
  result:='ִ����н��ʹý�󸾡��ͺ϶��գ��������ơ�ɫ��ë�ͣ��ù���ϲ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='�������񣬳������С����뻼�ţ����Ϊ�ڡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����Ⱥ���䲻��ǰ���켾��ɣ���֮������';
  exit;
end;
if s='С��֮��' then
begin
  result:='���˹�·������������ʮ��֮�⣬����֪����';
  exit;
end;
if s='С��֮��' then
begin
  result:='�岻ʤ�飬������Ӫ������Σ�����۽Ǵݾ���';
  exit;
end;
if s='С��֮��' then
begin
  result:='ɧɧ���ţ��������ࡣ���ھ����ΣΪ�ǡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='���Ӿ�ϣ�ˮŭӿԾ���������ң�������ʳ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='���׺������˲���𣣬ũ����ʳ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='������ʳ���ػ����ݡ�����ϵ���������¡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�Ż�֮�ӣ�����ֹ�ᡣ���˲����������ౣ��';
  exit;
end;
if s='С��֮��' then
begin
  result:='��ʱ���飬���ۿ౯���ǻ��������ĸ���롣';
  exit;
end;
if s='С��֮��' then
begin
  result:='������®�������йϡ��׽����棬�����ٿ���';
  exit;
end;
if s='С��֮����' then
begin
  result:='ʧʱ���ѣ����ҳ��ߣ�����ɥ����';
  exit;
end;
if s='С��֮��' then
begin
  result:='������ͷ�����Ѷ��ӡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='���ѵߵ���Ϊ���������ɾͶ��ܣ����ܴ󸣡�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�ɲ�Զȥ������ʴ������¶�ڡ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='��Ѫ���ݣ������������͹�ɪ���������ġ�';
  exit;
end;
if s='С��֮��' then
begin
  result:='�����ʯ������������ףԸ���á�';
  exit;
end;
if s='С��֮��' then
begin
  result:='ɽ���Ⱦ����󸣾��ߡ���μʧ�ͣ��������ѡ�';
  exit;
end;
if s='С��֮����' then
begin
  result:='��Ŀ��ŭ��������ӡ�ɢ�����أ��������á�';
  exit;
end;
if s='С��֮�ȼ�' then
begin
  result:='��а��࣬�������΢�Ӹ�����ȥ������';
  exit;
end;
if s='С��֮δ��' then
begin
  result:='���²�ܻ�������޵������ٷ��壬�˵����ơ�';
  exit;
end;

end;

function jiji(const s: string):string;
begin
if s='�ȼ�' then
begin
  result:='����ָ�ƣ��������ѡ�֤Ѷڵ�ʣ�������ֱ��ԩ��˭�棬��Ϊ�����';
  exit;
end;
if s='�ȼ�֮Ǭ' then
begin
  result:='�ξ�ʯ�ţ��J����ȫ���ܸ����ڣ�������Ȫ��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='����������������ˡ��������ӣ����ֲ�����';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�����㷨��禳��ų��������򾪣���ʧ��ҡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='̫��ֹ�������̫΢������Ϻ�����Ϊ������';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�����¹⣬�Ȱ����������Դ�ã���ʦ�Բ���';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��ͷ���㣬�������⡣©�Ұ��ڣ��������á�';
  exit;
end;
if s='�ȼ�֮ʦ' then
begin
  result:='����ܸ���ϲӯ���ҡ����治�������޿�߯��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='˴������ʯ��֮Ұ��������ͥ������ˮ����';
  exit;
end;
if s='�ȼ�֮С��' then
begin
  result:='����ȵ��������ĸ�㡣����Ⱥ�壬�����䳲��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�������䣬�����л񡣳D��ȵӥ��˫���á�';
  exit;
end;
if s='�ȼ�̩֮' then
begin
  result:='�����ĺ������˾��¡��������أ��������á�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��ϲ������������������ϲͬ�֣����ҽ�¡�';
  exit;
end;
if s='�ȼ�֮ͬ��' then
begin
  result:='�������ۣ����첻��������Ϊ�����ܷ����֡�';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='�����ܸ���������ã���������';
  exit;
end;
if s='�ȼ�֮ǫ' then
begin
  result:='�����ֵң�̫���������Ա����������Ӳ��档';
  exit;
end;
if s='�ȼ�֮ԥ' then
begin
  result:='η��Ǳ�����������������գ�Ϊ��������';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='ˮ�����£������������������У���������';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�ڴ����У��븣ϲ�ڡ����ڼι�����λ��ʱ��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='ɯ������Ϊ���Ż������嵯�ڣ��ٸ���ϲ��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�������࣬���������������ְ�����ܴ󸣡�';
  exit;
end;
if s='�ȼ�֮���' then
begin
  result:='����Ұ�����ⳣ���ӡ��������������ö�ҡ��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�ӻ�ɽ�ۣ��ι۸��ơ����겻妣��������ǡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���н��ߣ��Ҳ��ܴ档Ӣ����ҵ���������ꡣ';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��Ը��ϲ�����˷�ʱ������������������';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='���½�����̻�ʧ���������˸����ķ��ڹ���';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='��ˮ֮�ң�������ĸ������֪�ϣ������ౣ���������á�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���������ĺ�������������꣬���޳ɹ���';
  exit;
end;
if s='�ȼ�֮���' then
begin
  result:='��Цδ�ϣ��������䡣��Ӽ��£���ϵ������';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���Ҳ���������δ�ɡ��������ã�Ȯ�p���á�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��㤿־壬����η�ɡ��е����ѣ������Բ���';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�ۺ����磬��ɽ���͡��Ѹ��Թ���������';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�������ϲ�����С�������ˮ��Ȫ�e�����������޾̡�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='Σ����ĺ�����󲻵á����󲻽���������߯��';
  exit;
end;
if s='�ȼ�֮��׳' then
begin
  result:='�ϴ�������ӥ����𺣬��ȸ��㴡�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���ӳ��飬������ԩ������ʧ�ڣ������仼��';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='���̰����������������Σ��裬Ϊ����̡�';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='��ҫŭ���������硣�ǻ��߿⣬����ɽ�ȡ�������ܣ�������Ұ��';
  exit;
end;
if s='�ȼ�֮�' then
begin
  result:='��Ŀ�������Խ�ͬ�⣬�����Ļɡ�';
  exit;
end;
if s='�ȼ�֮�' then
begin
  result:='��֥���ƣ�Ϳ����Ӣ��������ͨ���������ס�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��⯼��磬���߲��С�����ᪿڣ������䴲��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���ŵػ�����ڤ���ã���֪���ڡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='����Ϣ�磬�������ѡ������������ͭΪ�ء�������������ֹ�޻���';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�����ɣ����鵾�ء���������Ϊʸ���䣬�������ܡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�����Ѷɣ�������F�������������������ʡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='����������������������彩��������ɥ��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='����δ��ʧ�����С��ɱ���̣�����¹�ӡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���ν�¦�������мᡣ����Զ�У�������ݡ��������ա�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�̷��ٿܣ���������������Ӧ�������������鼺���أ����˲�ʤ��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��¶��Ȫ��̫ƽ���ء��ʵ¸�Ӧ��������';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='������ͻ��Ҫ��������������̣��ܷ����֣�֣�ò�����';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���Z�Ѳ����������ᡣ¶�����飬�������F��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���ǽ�ı�����Ϊ�����ź�ţ�򣬲������ˡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='���¿������ػ����١���ѫ���ã��������ӡ�';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='ƶ�����ţ��������衣�����ƿ���������ӡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�������ڣ�������ڡ������޵����������ۡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='��Լ������Ϊ�����ܡ�����ƽ����е���Ρ��ѹ���̡�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='�򾪻��ǣ��ʶ�Ⱥ�ۡ�������ǿ��Ϊ�����ˡ�';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='������ţ������Ц��������ҫ����ϲ���⡣';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='������ɣ��������С�����г�����屶��';
  exit;
end;
if s='�ȼ�֮��' then
begin
  result:='Ӧ���ڱ�������ɱ����������㣣�����ʧλ�������޺㣬���޲�����';
  exit;
end;
if s='�ȼ�֮����' then
begin
  result:='ִ����н��ʹý�󸾡��ͺ϶��գ��������ơ�ɫ��ë�ͣ��ù���ϲ��';
  exit;
end;
if s='�ȼ�֮С��' then
begin
  result:='������ת�����ϴ��档����ԯ���������ѣ�����Ц�ԡ�';
  exit;
end;
if s='�ȼ�֮δ��' then
begin
  result:='ǧ���������ղ��㽩������������';
  exit;
end;

end;

function weiji(const s: string):string;
begin
if s='δ��' then
begin
  result:='־��δϰ�������ܸ���������ǰ��������Ը�����ô󻼡�';
  exit;
end;
if s='δ��֮Ǭ' then
begin
  result:='����Ϧ������ԻӤ�����ɵ��롣';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���ϳ�������ϲ�ҡ����Һ��ã�����������';
  exit;
end;
if s='δ��֮��' then
begin
  result:='����С�ǣ������ڶ�����ҹ���ˣ��Ϳ��޹���';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��½�ر��������ı���������ʳ�������š�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='ɽˮ��ŭ�������������������ã�������ࡣ';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��Ŀ���������������ϲ���ã�����ͬ����';
  exit;
end;
if s='δ��֮ʦ' then
begin
  result:='����ڌڌ����Ȯ��զ���۴��뼣�Ϊӥ����';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��»�渣��ϲ�����ң�����ǻ�';
  exit;
end;
if s='δ��֮С��' then
begin
  result:='�����˷磬�ϼ��񹫡������ܴ̣�������ͨ�����̾�λ���ݸ�����';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���������������Ӽ���ң��վ����ơ�';
  exit;
end;
if s='δ��̩֮' then
begin
  result:='�𲯻Ʊ����������С���Ȣ��Ϣ�����ù�����';
  exit;
end;
if s='δ��֮��' then
begin
  result:='����֮�ӣ��ײ����ᡣ';
  exit;
end;
if s='δ��֮ͬ��' then
begin
  result:='������ߣ�����η�񡣵�ӥΪ�����������ᡣ';
  exit;
end;
if s='δ��֮����' then
begin
  result:='���侪�̣��������ˣ����丣�졣';
  exit;
end;
if s='δ��֮ǫ' then
begin
  result:='����������������С����¶�ս�����Ʋ�ȱ��';
  exit;
end;
if s='δ��֮ԥ' then
begin
  result:='ҷ�ںӺ����ҵ������������ã��������ѡ�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='Ȯη�ǻ�����������������ִꪣ������������޾̡�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='֩��������������á���Ӭ���ۣ�������顣��������Ϊ�����á�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�������⣬�����������þ���������ʳ��֮����Ϊ���ǡ�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���²��ӣ�������������ɽ���ߣ�����ΪϪ��';
  exit;
end;
if s='δ��֮���' then
begin
  result:='�����ȳɣ��ػ���������Ҷʢï��ʵ�����ࡣ';
  exit;
end;
if s='δ��֮��' then
begin
  result:='����ɽͷ���ɵ����Ρ����Ծ�ֹ�����޾��ǡ�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�����ƿޣ��Ա��¶���Ұ�����Σ��������ҡ�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�������ˣ���޽��ʳ�����˲������п����С�';
  exit;
end;
if s='δ��֮����' then
begin
  result:='����ɽ�ۣ���������ľ���٣��Ｂ���ꡣ';
  exit;
end;
if s='δ��֮����' then
begin
  result:='�����󡣿�����ҡ�������������Σ����';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���ݼ䣩���ݼ䣩�܇ܣ�ƶ���������л�����һ�վŽᡣ';
  exit;
end;
if s='δ��֮���' then
begin
  result:='׷���𱱣���ɽ���á����������������®��';
  exit;
end;
if s='δ��֮��' then
begin
  result:='������ʹ���������¡������ȥ����Ϊ˹����';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���麯����ԡ�ʵ¡�ӦƸ�ƹ����������¡�����������׶����';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���ز��㣬���ܳ��ԡ�������ͨ��Ϊ����ԩ��';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�����ȱ��������ʧ��';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�����ݺ�������������಻���ã�Ϊ���ֻ���';
  exit;
end;
if s='δ��֮��׳' then
begin
  result:='�ɻ��㿣���֪���������ָ�ϣ�����ʧ�С�������ֹ��ȥ���ǻ���';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��������Ա����������Ŷ�Ů����������������Ϊ����������𢡣';
  exit;
end;
if s='δ��֮����' then
begin
  result:='���ɵ¾ͣ����첻�ԡ�������ϣ��Ḹ��ȥ��';
  exit;
end;
if s='δ��֮����' then
begin
  result:='�����Ĺ���ж��������κ�ˮ������Ϊ����';
  exit;
end;
if s='δ��֮�' then
begin
  result:='����˶ȣ��α����񡣷��估��������������Ԫ����ݣ�˥��������';
  exit;
end;
if s='δ��֮�' then
begin
  result:='����������������⡣��λ���ߣ�������ˡ�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���ô�����ˮΪ���ʹ����㴣������閠����ֹ�״���';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��ų�ҹ������տ¶��������F�������Բ���';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���м��У�����ر�����ϲ���ӣ�����Ϊ�ѡ�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='����Ϊ����Ů�����С��ε���ͨ��������С�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='����ĵ�������[ɽ�ԡ���б����������ӭ��';
  exit;
end;
if s='δ��֮��' then
begin
  result:='����������ݵ��׳����������������Ϻ��ס�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���˱��գ��꼯��ľ����ï���졣';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��÷��֦����ĸ���룬������֪��';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�캵ˮ�ԣ�������������ɳʯ��δ������';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�����諣�ִ�޼������������ݣ�ӦƸ���ء�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�������������ƾ��ӡ��Ӳ�����������ƽ����������衣';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��÷��飬��˼�㴣�����������';
  exit;
end;
if s='δ��֮��' then
begin
  result:='¹�����ӣ���®֮��Ʋ������̰������';
  exit;
end;
if s='δ��֮��' then
begin
  result:='������ˮ������Ȼ����ƣ���ߣ�����Ϊ����';
  exit;
end;
if s='δ��֮����' then
begin
  result:='������Ԩ���ٿ����񡣷������죬������ԯ�������ְ���';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���ͱ����������͡�������ֱ���������¡��ɰ����ѣ����ܴ󸣡�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='��ҹ��������ʧ�����Ϊ��������';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�������ţ���ʧ��Ȩ������ר�ƣ������';
  exit;
end;
if s='δ��֮��' then
begin
  result:='���Ҳ���������δ�͡��������ã�Ȯ�p���á�';
  exit;
end;
if s='δ��֮��' then
begin
  result:='�������ܣ�����Ԩ����ʹ����̣�����˳��';
  exit;
end;
if s='δ��֮��' then
begin
  result:='������������ҹ������Ҳ�梣���ĸ��á�';
  exit;
end;
if s='δ��֮����' then
begin
  result:='���ﵻף��������ǣ������־̡�';
  exit;
end;
if s='δ��֮С��' then
begin
  result:='����԰���Ż���ג��η���Ϣ�����޻�����';
  exit;
end;
if s='δ��֮�ȼ�' then
begin
  result:='���߾��㣬�ಫ�ڽ�������������������®��';
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

   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, 'ˮ', '', [rfReplaceAll]);
   s:= StringReplace(s, 'ɽ', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '', [rfReplaceAll]);
   s:= StringReplace(s, 'Ϊ', '', [rfReplaceAll]);
   s:= StringReplace(s, ' ', '', [rfReplaceAll]);
   s:= StringReplace(s, '��', '֮', [rfReplaceAll]);

if pos('δ��',s)=1 then
begin
result:= weiji(s);
 exit;
 end;

if pos('�ȼ�',s)=1 then
begin
result:= jiji(s);
 exit;
 end;

if pos('С��',s)=1 then
begin
result:= xiaoguo(s);
 exit;
 end;

if pos('����',s)=1 then
begin
result:= zhongfu(s);
 exit;
 end;


if pos('��',s)=1 then
begin
result:= shuizhejie(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= huan(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= dui(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= xun(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= huoshanlv(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= leihuofeng(s);
 exit;
 end;

if pos('����',s)=1 then
begin
result:= guimei(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= fengshanjian(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= gen(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= zhen(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= ding(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= ge(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= jing(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= zheshuikun(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= sheng(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= cui(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= gou(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= guai(s);
 exit;
 end;

 if pos('��',s)=1 then
begin
result:= fengleiyi(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= shun(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= jie(s);
 exit;
 end;

if pos('�',s)=1 then
begin
result:= shuishangjian(s);
 exit;
 end;

if pos('�',s)=1 then
begin
result:= kui(s);
 exit;
 end;

if pos('����',s)=1 then
begin
result:= jiaren(s);
 exit;
 end;

if pos('����',s)=1 then
begin
result:= mingyi(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= jin(s);
 exit;
 end;

if pos('��׳',s)=1 then
begin
result:= dazhuang(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= dun(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= heng(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= xian(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= li(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= kan(s);
 exit;
 end;

if pos('���',s)=1 then
begin
result:= daguo(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= yi(s);
 exit;
 end;

if pos('����',s)=1 then
begin
result:= daxu(s);
 exit;
 end;

if pos('����',s)=1 then
begin
result:= wuwang(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= fu(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= bo(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= shanhuobi(s);
 exit;
 end;

if pos('���',s)=1 then
begin
result:= shike(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= guan(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= lin(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= guo(s);
 exit;
 end;

if pos('��',s)=1 then
begin
result:= shui(s);
 exit;
 end;

if pos('ԥ',s)=1 then
begin
result:= yu(s);
 exit;
 end;

if pos('ǫ',s)=1 then
begin
result:= qianxu(s);
 exit;
 end;

  if pos('����',s)=1 then
begin
result:= dayou(s);
 exit;
 end;

  if pos('ͬ��',s)=1 then
  begin
  result:= tongren(s);
  exit;
  end;

 if pos('Ǭ',s)=1 then
  begin
    result:= qian(s);
    exit;
  end;
 if pos('��',s)=1 then
  begin
    result:= kun(s);
    exit;
  end;

 if pos('��',s)=1 then
  begin
    result:= tun(s);
    exit;
  end;
 if pos('��',s)=1 then
  begin
    result:= meng(s);
    exit;
  end;

 if pos('��',s)=1 then
  begin
    result:= xu(s);
    exit;
  end;

 if pos('��',s)=1 then
  begin
    result:= song(s);
    exit;
  end;
 if pos('ʦ',s)=1 then
  begin
    result:= shi(s);
    exit;
  end;

  if pos('��',s)=1 then
  begin
    result:= bi(s);
    exit;
  end;

  if pos('С��',s)=1 then
  begin
    result:= xiaoxu(s);
    exit;
  end;

   if pos('��',s)=1 then
  begin
    result:= lv(s);
    exit;
  end;

  if pos('̩',s)=1 then
  begin
    result:= tai(s);
    exit;
  end;

  if pos('��',s)=1 then
  begin
    result:= pi(s);
    exit;
  end;
end;

end.
