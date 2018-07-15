unit untAES;

interface

uses
  SysUtils, Classes, Math, ElAES;

type
  TPaddingType = (PKCS5Padding,PKCS7Padding);
  TKeyBit = (kb128, kb192, kb256);

function EncryptString(const Value: RawByteString; const Key: AnsiString;
  KeyBit: TKeyBit = kb128): AnsiString;


implementation

function StrPadding(SourceStr:string;paddingType:TPaddingType = PKCS5Padding):string;
var
 DestStr:string;
 strRemainder,i:Integer;
begin
  DestStr := SourceStr;
  if paddingType = PKCS5Padding then
  begin
    strRemainder :=Length(DestStr) mod 16;
    strRemainder := 16 - strRemainder;
    for i:= 1 to strRemainder do
    begin
      DestStr := DestStr + Chr(strRemainder);
    end;
  end;
  Result := DestStr;
end;

function StrDelPadding(SourceStr:string;paddingType:TPaddingType = PKCS5Padding):string;
var
 DestStr:string;
 PaddingLen:Integer;
begin
  DestStr := SourceStr;
  if paddingType = PKCS5Padding then
  begin
    PaddingLen :=  Ord(DestStr[Length(DestStr)]);
    DestStr := Copy(DestStr,1,Length(DestStr)-PaddingLen);
  end;
  Result := DestStr;
end;

function TransChar(AChar: Char): Integer;
begin
  if AChar in ['0'..'9'] then
     Result := Ord(AChar) - Ord('0')
  else
     Result := 10 + Ord(AChar) - Ord('A');
  end;

function StrToHex(Value: AnsiString): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(Value) do
    Result := Result + IntToHex(Ord(Value[I]), 2);
end;

function HexToStr(Value: AnsiString): AnsiString;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(Value) do
  begin
    if ((I mod 2) = 1) then
      Result := Result + Chr(StrToInt('0x'+ Copy(Value, I, 2)));
  end;
end;


function EncryptString(const Value: RawByteString; const Key: AnsiString;
  KeyBit: TKeyBit = kb128): AnsiString;
var
  SS,DS: TMemoryStream;
  Size: Int64;
  AESKey128: TAESKey128;
  AESKey192: TAESKey192;
  AESKey256: TAESKey256;
  st: AnsiString;
  iv: taesBuffer;
begin
  Result := '';
//  Value := StrPadding(Value,PKCS5Padding);
//注释掉这行，因为php里面的解密没有进行字符串扩充
//使用这两个加密解密函数时要注意解密后尾部的多个#0 字符，需要rtrim函数清除
    ss := TMemoryStream.Create;
    SS.WriteBuffer(PAnsiChar(Value)^,Length(Value));
    DS := TMemoryStream.Create;

  try
    //Size := SS.Size;
    if KeyBit = kb128 then
    begin
      FillChar(AESKey128, SizeOf(AESKey128), 0 );
      Move(PAnsiChar(Key)^, AESKey128, Min(SizeOf(AESKey128), Length(Key)));
      move(PAnsiChar('6891254736254619')^, iv,16);
      EncryptAESStreamCBC(SS, 0, AESKey128,iv, DS);
    end;
      SetLength(st,Ds.Size);
      DS.Position := 0;
      DS.ReadBuffer(PAnsiChar(st)^,DS.Size);
      Result := StrToHex(st);
  finally
    SS.Free;
    DS.Free;
  end;
end;

end.
