unit uFrmTela2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmBase, StdCtrls, ExtCtrls;

type
  TFrmTela2 = class(TFrmBase)
    PnlCadastro: TPanel;
    BtnCadastrar: TButton;
    LblEdtUser: TLabeledEdit;
    LblEdtSenha: TLabeledEdit;
    LblEdtConfSenha: TLabeledEdit;
  private
    { Private declarations }
  protected
    function GetCaption: String;override;

  public
    { Public declarations }
  end;

var
  FrmTela2: TFrmTela2;

implementation

{$R *.dfm}

{ TFrmTela2 }

function TFrmTela2.GetCaption: String;
begin
  Result:= 'Tela de Cadatro'
end;

end.
