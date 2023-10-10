unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, uCalculadora, AppEvnts, Menus, uFrmConfigEmail,
  ImgList;

type
  TFrmPrincipal = class(TForm)
    PnlCalc: TPanel;
    LblVal1: TLabeledEdit;
    LblVal2: TLabeledEdit;
    LblRes: TLabeledEdit;
    SpdBtnAdd: TSpeedButton;
    SpdBtnSub: TSpeedButton;
    SpdBtnDiv: TSpeedButton;
    SpdBtnMult: TSpeedButton;
    MainMenu: TMainMenu;
    ConfigurarEmail: TMenuItem;
    ImgList: TImageList;
    procedure SpdBtnSubClick(Sender: TObject);
    procedure SpdBtnDivClick(Sender: TObject);
    procedure SpdBtnMultClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnAddClick(Sender: TObject);
    procedure ConfigurarEmailClick(Sender: TObject);
  private

  public
    Calculadora: TCalculadora; 

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.ConfigurarEmailClick(Sender: TObject);
begin
  FrmConfigEmail:= TFrmConfigEmail.Create(Self);
  FrmConfigEmail.ShowModal;
  FreeAndNil(FrmConfigEmail);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Calculadora:= TCalculadora.Create;
end;

procedure TFrmPrincipal.SpdBtnAddClick(Sender: TObject);
begin
  try
    Calculadora.valor1:= LblVal1.Text;
    Calculadora.valor2:= LblVal2.Text;
    Calculadora.executaOperacao(opAdd);
    LblRes.Text:= Calculadora.resultado;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao executar comando! ' + E.Message,mtWarning,[mbOK],0);
      raise;
    end;

  end;
end;

procedure TFrmPrincipal.SpdBtnDivClick(Sender: TObject);
begin
  Calculadora.valor1:= LblVal1.Text;
  Calculadora.valor2:= LblVal2.Text;
  Calculadora.executaOperacao(opDiv);
  LblRes.Text:= Calculadora.resultado;
end;

procedure TFrmPrincipal.SpdBtnMultClick(Sender: TObject);
begin
  Calculadora.valor1:= LblVal1.Text;
  Calculadora.valor2:= LblVal2.Text;
  Calculadora.executaOperacao(OpMult);
  LblRes.Text:= Calculadora.resultado;
end;

procedure TFrmPrincipal.SpdBtnSubClick(Sender: TObject);
begin
  Calculadora.valor1:= LblVal1.Text;
  Calculadora.valor2:= LblVal2.Text;
  Calculadora.executaOperacao(opSub);
  LblRes.Text:= Calculadora.resultado;
end;

end.
