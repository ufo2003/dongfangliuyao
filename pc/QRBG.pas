unit QRBG;

interface

uses
  Windows, SysUtils, Classes;

const
  LibDll = 'RndDLL.dll';

type
  TDefCache = function (cacheSize: Cardinal): integer; stdcall;
  TDefServer = function (server: PChar; port: Cardinal): integer; stdcall;
  TDefUser = function (username, password: PChar): integer; stdcall;
  TgDouble = function : double; stdcall;
  TgDoubles = function (buffer: array of double; size: Integer) : Integer; stdcall;

  TQRBG = class(TComponent)
  private
    { Private declarations }
    FUserName, FPassword, FServer: string;
    FPort, FCache: integer;
    procedure SetUserName(Value: string);
    procedure SetPassword(Value: string);
    procedure SetServer(Value: string);
    procedure SetPort(Value: integer);
    procedure SetCache(Value: integer);
  protected
    { Protected declarations }
  public
    { Public declarations }
    hDll: THandle;
    H: integer;
    buf, buf2: PAnsiChar;
    DefCache: TDefCache;
    DefServer: TDefServer;
    DefUser: TDefUser;
    gDouble: TgDouble;
    gDoubles: TgDoubles;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy;
    procedure QInit;
    function QRand(var Sample: array of double; size: integer): integer;
    function QFree: boolean;
  published
    { Published declarations }
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property Port: integer read FPort write SetPort;
    property Cache: integer read FCache write SetCache;
  end;

procedure Register;

implementation

procedure TQRBG.SetUserName(Value: string);
begin
   FUserName := Value;
end;

procedure TQRBG.SetPassword(Value: string);
begin
   FPassword := Value;
end;

procedure TQRBG.SetServer(Value: string);
begin
   FServer := Value;
end;

procedure TQRBG.SetPort(Value: integer);
begin
   FPort := Value;
end;

procedure TQRBG.SetCache(Value: integer);
begin
   FCache := Value;
end;

procedure TQRBG.QInit;
begin
   GetMem(buf, 32);
   GetMem(buf2, 32);
   StrPCopy(buf, LibDLL);
   hDll := LoadLibrary(buf);
   if hDll <> 0 then
   begin
      StrPCopy(buf, 'defineCache');
      @DefCache := GetProcAddress(hDll, buf);
      if Addr(DefCache) <> nil then
         DefCache(FCache);

      StrPCopy(buf, 'defineServer');
      @DefServer := GetProcAddress(hDll, buf);
      if Addr(DefServer) <> nil then
      begin
         StrPCopy(buf, FServer);
         H := DefServer(buf, FPort);
      end;

      StrPCopy(buf, 'defineUser');
      @DefUser := GetProcAddress(hDll, buf);
      if Addr(DefUser) <> nil then
      begin
         StrPCopy(buf, FUserName);
         StrPCopy(buf2, FPassword);
         H := DefUser(buf, buf2);
      end;
   end;
   FreeMem(buf2);
   FreeMem(buf);
end;

function TQRBG.QRand(var Sample: array of double; size: integer): integer;
var Buf: array[0..20] of AnsiChar;
begin
   @gDoubles := GetProcAddress(hDll, StrPCopy(buf, 'getDoubles'));
   if @gDoubles <> nil then
   Result := gDoubles(Sample, size);
end;

function TQRBG.QFree: boolean;
begin
   if hDll <> 0 then
      FreeLibrary(hDLL);
end;

constructor TQRBG.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   Self.UserName := 'lfmed';
   Self.Password := '123456';
   Self.Server := 'random.irb.hr';
   Self.Port := 1227;
   Self.Cache := 32768;
end;

destructor TQRBG.Destroy;
begin
   inherited Destroy;
end;

procedure Register;
begin
  RegisterComponents('Lfm', [TQRBG]);
end;

end.
