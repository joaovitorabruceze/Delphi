program Heranca;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmBase in 'uFrmBase.pas' {FrmBase},
  uFrmTela1 in 'uFrmTela1.pas' {FrmTela1},
  uFrmTela2 in 'uFrmTela2.pas' {FrmTela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
