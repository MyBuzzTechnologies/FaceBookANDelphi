program FBANSimpleTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  Form.Main in 'Form.Main.pas' {FormMain},
  iOSapi.FacebookAdapter in 'Libraries\iOSapi.FacebookAdapter.pas',
  Utils.Facebook in 'Libraries\Utils.Facebook.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
