unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uFrmTabela, uFrmResultado, uPessoa;

type
  TFrmPrincipal = class(TForm)
    BtnResultado: TButton;
    BtnTabela: TButton;
    PnlCorpo: TPanel;
    LblAltura: TLabel;
    LblPeso: TLabel;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    PnlTitulo: TPanel;
    LblTitulo: TLabel;
    LblSexo: TLabel;
    CmbBx: TComboBox;
    procedure BtnTabelaClick(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
    procedure EdtAlturaExit(Sender: TObject);
    procedure EdtPesoExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnResultadoClick(Sender: TObject);
begin
  if (EdtAltura.Text = '') then
  begin
    MessageDlg('Dados faltantes!',
         mtWarning, [mbOK], 0);
    EdtAltura.SetFocus;
  end
  else if (EdtPeso.Text = '') then
  begin
    MessageDlg('Dados faltantes!',
         mtWarning, [mbOK], 0);
    EdtPeso.SetFocus;
  end
  else if (CmbBx.ItemIndex = -1) then
  begin
    MessageDlg('Voc� n�o selecionou um sexo',
         mtWarning, [mbOK], 0);
    CmbBx.SetFocus;
  end
  else
  begin
    PDadosPessoa.Altura:= StrToFloat(EdtAltura.Text);
    PDadosPessoa.Peso:= StrToFloat(EdtPeso.Text);
    PDadosPessoa.Sexo:= CmbBx.Text;
    PDadosPessoa.IMC:= CalcularIMC(PDadosPessoa.Altura,
                                   PDadosPessoa.Peso,
                                   PDadosPessoa.Sexo);
    FrmResultado:= TFrmResultado.create(application);
    FrmResultado.ShowModal;

  end;
end;

procedure TFrmPrincipal.BtnTabelaClick(Sender: TObject);
begin
  FrmTabela:= TFrmTabela.create(application);
  FrmTabela.ShowModal;
end;


procedure TFrmPrincipal.EdtAlturaExit(Sender: TObject);
begin
  if EdtAltura.Text = '' then
  begin
    MessageDlg('Voc� n�o digitou nenhum conte�do',
         mtWarning, [mbOK], 0);
    EdtAltura.SetFocus;
  end
  else if StrToFloatDef(EdtAltura.Text, 0) = 0 then
  begin
    MessageDlg('O valor digitado � inv�lido',
         mtWarning, [mbOK], 0);
    EdtAltura.SetFocus;
  end;
end;

procedure TFrmPrincipal.EdtPesoExit(Sender: TObject);
begin
  if EdtPeso.Text = '' then
  begin
    MessageDlg('Voc� n�o digitou nenhum conte�do',
         mtWarning, [mbOK], 0);
    EdtPeso.SetFocus;
  end
  else if StrToFloatDef(EdtPeso.Text, 0) = 0 then
  begin
    MessageDlg('O valor digitado � inv�lido',
         mtWarning, [mbOK], 0);
    EdtPeso.SetFocus;
  end;
end;

end.
