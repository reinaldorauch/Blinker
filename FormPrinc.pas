unit FormPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unLabelBlink, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TPrinForm = class(TForm)
    LabelBlink1: TLabelBlink;
    CbSetBlink: TCheckBox;
    EdInterval: TEdit;
    UdChangeInterval: TUpDown;
    LbDebug: TLabel;
    Timer: TTimer;
    procedure CbSetBlinkClick(Sender: TObject);
    procedure EdIntervalChange(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrinForm: TPrinForm;

implementation

{$R *.dfm}

procedure TPrinForm.CbSetBlinkClick(Sender: TObject);
begin
  LabelBlink1.Blinking := CbSetBlink.Checked;
end;

procedure TPrinForm.EdIntervalChange(Sender: TObject);
begin
  LabelBlink1.Interval := StrToInt(EdInterval.Text);
end;

procedure TPrinForm.TimerTimer(Sender: TObject);
begin
  LbDebug.Caption := IntToStr(LabelBlink1.ColorPos);
end;

end.
