program App_IMC;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmTabela in 'uFrmTabela.pas' {FrmTabela},
  uFrmResultado in 'uFrmResultado.pas' {FrmResultado},
  uPessoa in 'uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
