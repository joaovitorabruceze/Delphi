unit uDM;

interface

uses
  SysUtils, Classes, AppEvnts, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdBaseComponent, IdMessage, IniFiles, IdIOHandler,
  IdIOHandlerSocket, IdSSLOpenSSL, clMailMessage, clTcpClient, clTcpClientTls,
  clTcpCommandClient, clMC, clSmtp;

type
  TDtM = class(TDataModule)
    AppEvents: TApplicationEvents;
    idSMTP: TclSmtp;
    IdMessage: TclMailMessage;
    procedure AppEventsException(Sender: TObject; E: Exception);
    procedure DataModuleCreate(Sender: TObject);
  private
    IniFiles: TIniFile;
    procedure carregarEmail;

  public
    { Public declarations }
  end;

var
  DtM: TDtM;

implementation

uses
  Forms, Dialogs, uFrmPrincipal;

{$R *.dfm}

procedure TDtM.AppEventsException(Sender: TObject; E: Exception);
var
  Log: Tstrings;
  Anexo: array of string;
begin
  try
    Log:= TStringList.Create;
    if FileExists(ExtractFilePath(Application.ExeName)+'log.txt') then
      Log.LoadFromFile(ExtractFilePath(Application.ExeName)+'log.txt');
    Log.Add('');
    Log.Add('Data: ' + FormatDateTime('c',Now));
    Log.Add('Classe do Erro: ' + E.ClassName);
    Log.Add('Mensagem do Erro: ' + E.Message);
    Log.SaveToFile(ExtractFilePath(Application.ExeName)+'log.txt');
    Tform(Sender).GetFormImage.SaveToFile(ExtractFilePath(Application.ExeName)+'PrintScreen.png');
    
    SetLength(Anexo,2);
    Anexo[1]:= ExtractFilePath(Application.ExeName)+'PrintScreen.png';
    Anexo[0]:= ExtractFilePath(Application.ExeName)+'log.txt';
    IdMessage.BuildMessage('Este é um email automático para informar um erro ocorrido na aplicação '+
    FrmPrincipal.Caption+ #13#10 +'Segue anexo o arquivo log com todos os erros da aplicação.', Anexo);
    IdMessage.Subject:= 'LOG DE ERROS NA APLICAÇÃO';
    carregarEmail;
    IdSMTP.Open();
    IdSMTP.Send(IdMessage);
    IdSMTP.Close();
  except 
    ShowMessage('Erro ao enviar email!');

  end;

    ShowMessage('Ocorreu um erro!' + #13#10+
    'Para mais informações verifique o log enviado no email do administrador do sistema.');
end;

procedure TDtM.DataModuleCreate(Sender: TObject);
begin
  carregarEmail;

end;

procedure TDtM.carregarEmail;
begin
  IniFiles := TIniFile.create('.\config.ini');
  IdSMTP.Server := IniFiles.ReadString('SMTP', 'host', '');
  IdSMTP.Username := IniFiles.ReadString('SMTP', 'usuario', '');
  IdSMTP.Password := IniFiles.ReadString('SMTP', 'senha', '');
  IdMessage.From.Name := IniFiles.ReadString('REMETENTE', 'nome', '');
  IdMessage.From.Email := IniFiles.ReadString('REMETENTE', 'email', '');
  IdMessage.ToList.Add.Email := IniFiles.ReadString('ADMINISTRADOR', 'email', '');
end;

end.
