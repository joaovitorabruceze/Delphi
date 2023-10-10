unit uFrmConfigEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles;

type
  TFrmConfigEmail = class(TForm)
    LblHost: TLabeledEdit;
    LblUsuario: TLabeledEdit;
    LblSenha: TLabeledEdit;
    LblEmail: TLabeledEdit;
    LblRemetente: TLabeledEdit;
    BtBtnOk: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BtBtnOkClick(Sender: TObject);
  private
    IniFiles: TIniFile;

  public

  end;

var
  FrmConfigEmail: TFrmConfigEmail;

implementation

{$R *.dfm}

procedure TFrmConfigEmail.BtBtnOkClick(Sender: TObject);
begin
  IniFiles.WriteString('SMTP','host',LblHost.Text);
  IniFiles.WriteString('SMTP','usuario',LblUsuario.Text);
  IniFiles.WriteString('SMTP','senha',LblSenha.Text);
  IniFiles.WriteString('REMETENTE','nome',LblRemetente.Text);
  IniFiles.WriteString('REMETENTE','email',LblEmail.Text);
  IniFiles.WriteString('ADMINISTRADOR','email','digite seu email');
end;

procedure TFrmConfigEmail.FormCreate(Sender: TObject);
begin
  IniFiles:= TIniFile.create('.\config.ini');
  LblHost.Text:= IniFiles.ReadString('SMTP','host','digite o host do email do cliente');
  LblUsuario.Text:= IniFiles.ReadString('SMTP','usuario','digite o usuario do cliente');
  LblSenha.Text:= IniFiles.ReadString('SMTP','senha','digite a senha do cliente');
  LblRemetente.Text:= IniFiles.ReadString('REMETENTE','nome','digite o nome do cliente');
  LblEmail.Text:= IniFiles.ReadString('REMETENTE','email','digite o email do cliente');
end;

end.
