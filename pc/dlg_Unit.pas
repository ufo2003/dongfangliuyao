unit dlg_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tdlg_Form = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlg_Form: Tdlg_Form;

implementation

{$R *.dfm}

procedure Tdlg_Form.Button1Click(Sender: TObject);
begin
 self.ModalResult:= mryes;
end;

procedure Tdlg_Form.Button2Click(Sender: TObject);
begin
  self.ModalResult:= mrno;
end;

procedure Tdlg_Form.Button3Click(Sender: TObject);
begin
 self.ModalResult:= mrcancel;
end;

end.
