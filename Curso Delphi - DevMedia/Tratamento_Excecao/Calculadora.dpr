program Calculadora;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uCalculadora in 'uCalculadora.pas',
  uDM in 'uDM.pas' {DtM: TDataModule},
  uFrmConfigEmail in 'uFrmConfigEmail.pas' {FrmConfigEmail};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDtM, DtM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
