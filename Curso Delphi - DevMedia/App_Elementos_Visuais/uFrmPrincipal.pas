unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, ImgList, Buttons, ActnList, uFrmDataHora;

type
  TFrmPrincipal = class(TForm)
    PnlTitulo: TPanel;
    PgCntrlPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GrpBx: TGroupBox;
    LblCaracteres: TLabel;
    EdtCaracteres: TEdit;
    BtnExibirDataHora: TBitBtn;
    ImgLst: TImageList;
    AcList: TActionList;
    AcMostrarForm: TAction;
    PnlRodapeAba1: TPanel;
    AcIrAba2: TAction;
    BtnIrAba2: TBitBtn;
    PnlRodapeAba2: TPanel;
    BtnIrAba3: TBitBtn;
    AcIrAba3: TAction;
    BtnVoltarAba1: TBitBtn;
    AcVoltarAba1: TAction;
    PnlRodapeAba3: TPanel;
    BtnVoltarAba2: TBitBtn;
    AcVoltarAba2: TAction;
    RGListaOpcoes: TRadioGroup;
    BtnAddListaOpcoes: TBitBtn;
    AcAddListaOpcoes: TAction;
    LstBxItensSelecionados: TListBox;
    LblListaOpcoes: TLabel;
    BtnLimparListaOpcoes: TButton;
    EdtFoco: TEdit;
    LblObservacao: TLabel;
    BtnSelectAll: TButton;
    BtnLimparMemo: TButton;
    MmObservacao: TMemo;
    procedure FormShow(Sender: TObject);
    procedure EdtCaracteresEnter(Sender: TObject);
    procedure EdtCaracteresExit(Sender: TObject);
    procedure AcMostrarFormExecute(Sender: TObject);
    procedure AcIrAba2Execute(Sender: TObject);
    procedure AcIrAba3Execute(Sender: TObject);
    procedure AcVoltarAba1Execute(Sender: TObject);
    procedure AcVoltarAba2Execute(Sender: TObject);
    procedure AcAddListaOpcoesExecute(Sender: TObject);
    procedure BtnLimparListaOpcoesClick(Sender: TObject);
    procedure BtnLimparMemoClick(Sender: TObject);
    procedure BtnSelectAllClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.AcIrAba3Execute(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 2;
end;

procedure TFrmPrincipal.AcMostrarFormExecute(Sender: TObject);
begin
  FrmDataHora:=TFrmDataHora.create(application);
  FrmDataHora.ShowModal;
end;

procedure TFrmPrincipal.AcVoltarAba1Execute(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 0;
end;

procedure TFrmPrincipal.AcVoltarAba2Execute(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.BtnLimparListaOpcoesClick(Sender: TObject);
begin
  LstBxItensSelecionados.Items.Clear;
end;

procedure TFrmPrincipal.BtnSelectAllClick(Sender: TObject);
begin
  MmObservacao.SelectAll;
 	MmObservacao.SetFocus;
end;

procedure TFrmPrincipal.BtnLimparMemoClick(Sender: TObject);
begin
  MmObservacao.Lines.Clear;
end;

procedure TFrmPrincipal.AcAddListaOpcoesExecute(Sender: TObject);
begin
  begin
  if RGListaOpcoes.ItemIndex >= 0 then
  begin
   LstBxItensSelecionados.Items.Add
     (RGListaOpcoes.Items[RGListaOpcoes.ItemIndex]);
   RGListaOpcoes.ItemIndex := -1;
  end
  else
    MessageDlg('Voc� n�o selecionou nenhum item', mtWarning, [mbOK], 0);
 end;
end;

procedure TFrmPrincipal.AcIrAba2Execute(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.EdtCaracteresEnter(Sender: TObject);
begin
  EdtCaracteres.Color := $00B9FFFF;
end;

procedure TFrmPrincipal.EdtCaracteresExit(Sender: TObject);
begin
  if EdtCaracteres.Text = '' then
  begin
    MessageDlg('Voc� n�o digitou nenhum conte�do',
         mtWarning, [mbOK], 0);
    EdtCaracteres.SetFocus;
  end
  else
    if Length(EdtCaracteres.Text) <> 4 then
    begin
      MessageDlg('Voc� n�o digitou 4 caracteres',
           mtError, [mbOK], 0);
      EdtCaracteres.SetFocus;
      EdtCaracteres.SelectAll;
    end
    else
      EdtCaracteres.Color := clWindow;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlTitulo.Caption := 'Mudando o capition do Painel com onShow';
  PnlTitulo.Color := $00B9FFFF;
end;

end.
