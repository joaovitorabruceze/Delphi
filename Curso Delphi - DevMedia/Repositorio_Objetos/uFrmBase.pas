unit uFrmBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFrmBase = class(TForm)
    FadeIn: TTimer;
    FadeOut: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FadeInTimer(Sender: TObject);
    procedure FadeOutTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ControlaComponentes;

  protected
    function GetCaption: String;virtual;abstract;

  public
    { Public declarations }
  end;

var
  FrmBase: TFrmBase;

implementation

uses
  StdCtrls;

{$R *.dfm}

procedure TFrmBase.ControlaComponentes;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TLabeledEdit) or
       (Components[i] is TEdit) then
      TEdit(Components[i]).Color:= clGradientActiveCaption;
    
end;

procedure TFrmBase.FadeInTimer(Sender: TObject);
begin
  AlphaBlendValue:= AlphaBlendValue + 15;
  FadeIn.Enabled:= not (AlphaBlendValue = 255);
end;

procedure TFrmBase.FadeOutTimer(Sender: TObject);
begin
  AlphaBlendValue:= AlphaBlendValue - 15;
  if AlphaBlendValue = 0 then Close;
end;

procedure TFrmBase.FormCreate(Sender: TObject);
begin
  ControlaComponentes;
  Self.Caption:= GetCaption;
end;

procedure TFrmBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: FadeOut.Enabled:= True;
    VK_RETURN: Perform(WM_NEXTDLGCTL,0,0);
   
  end;  key:=0;
end;

procedure TFrmBase.FormShow(Sender: TObject);
begin
  FadeIn.Enabled:= True;
end;

end.
