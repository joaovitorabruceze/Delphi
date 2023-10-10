unit uFrmTela1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmBase, StdCtrls, ExtCtrls;

type
  TFrmTela1 = class(TFrmBase)
    LblEdtUser: TLabeledEdit;
    LblEdtSenha: TLabeledEdit;
    PnlLogin: TPanel;
    BtnLogar: TButton;
  private
    { Private declarations }
  protected
    function GetCaption: String;override;

  public
    { Public declarations }
  end;

var
  FrmTela1: TFrmTela1;

implementation

{$R *.dfm}

{ TFrmTela1 }

function TFrmTela1.GetCaption: String;
begin
  Result:= 'Tela de Login'
end;

end.
