unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFrmPrincipal = class(TForm)
    PnlPrincipal: TPanel;
    BtnTela1: TButton;
    BtnTela2: TButton;
    procedure BtnTela1Click(Sender: TObject);
    procedure BtnTela2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uFrmTela1, uFrmTela2;

{$R *.dfm}

procedure TFrmPrincipal.BtnTela1Click(Sender: TObject);
begin
  FrmTela1:= TFrmTela1.Create(Self);
  FrmTela1.ShowModal;
  FreeAndNil(FrmTela1);
end;

procedure TFrmPrincipal.BtnTela2Click(Sender: TObject);
begin
  FrmTela2:= TFrmTela2.Create(Self);
  FrmTela2.ShowModal;
  FreeAndNil(FrmTela2);
end;

end.
