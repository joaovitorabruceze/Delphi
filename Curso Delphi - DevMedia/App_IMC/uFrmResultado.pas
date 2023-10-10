unit uFrmResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uPessoa;

type
  TFrmResultado = class(TForm)
    PnlResultado: TPanel;
    GrpBx: TGroupBox;
    LblAltura: TLabel;
    LblPeso: TLabel;
    LblSexo: TLabel;
    LblIMC: TLabel;
    LblAlturaDinamica: TLabel;
    LblPesoDinamico: TLabel;
    LblSexoDinamico: TLabel;
    LblIMCDinamico: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResultado: TFrmResultado;

implementation

{$R *.dfm}

procedure TFrmResultado.FormShow(Sender: TObject);
begin
 LblAlturaDinamica.Caption:= FloatToStr(PDadosPessoa.Altura);
 LblPesoDinamico.Caption:= FloatToStr(PDadosPessoa.Peso);
 LblSexoDinamico.Caption:= PDadosPessoa.Sexo;
 LblIMCDinamico.Caption:= PDadosPessoa.IMC;
end;

end.
