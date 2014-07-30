program Blinker;

uses
  Vcl.Forms,
  FormPrinc in 'FormPrinc.pas' {PrinForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrinForm, PrinForm);
  Application.Run;
end.
