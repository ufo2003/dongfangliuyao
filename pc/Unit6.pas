unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
 image1.Canvas.TextOut(6,6,'东方六爻 启动中……');
end;

end.
