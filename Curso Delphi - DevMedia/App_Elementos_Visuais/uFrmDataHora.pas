unit uFrmDataHora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, dxGDIPlusClasses;

type
  TFrmDataHora = class(TForm)
    PnlImagem: TPanel;
    PnlConteudo: TPanel;
    ImgRelogio: TImage;
    LblTitulo: TLabel;
    LblDataHora: TLabel;
    Tmr: TTimer;
    procedure TmrTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDataHora: TFrmDataHora;

implementation

{$R *.dfm}

procedure TFrmDataHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Tmr.Enabled := False;
end;

procedure TFrmDataHora.FormShow(Sender: TObject);
begin
  Tmr.Enabled := True;
  LblDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

procedure TFrmDataHora.TmrTimer(Sender: TObject);
begin
  LblDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

end.
