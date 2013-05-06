unit frm_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdBaseComponent, IdComponent, IdTCPServer,
  Buttons, ComCtrls, JvBaseDlg, JvBrowseFolder, SyncObjs, IdTCPConnection,
  IdTCPClient, JvExControls, JvComCtrls;

type
  TfrmPrincipal = class(TForm)
    timerPrincipal: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    btnCerrar: TButton;
    tcpServer: TIdTCPServer;
    Label1: TLabel;
    edtPuerto: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtDirectorioCompartido: TEdit;
    btnBuscarDirectorio: TBitBtn;
    pgPrincipal: TPageControl;
    tsArchivos: TTabSheet;
    tsLog: TTabSheet;
    memLog: TMemo;
    lbArchivos: TListBox;
    dialogDirectorio: TJvBrowseForFolderDialog;
    btnIniciarServer: TBitBtn;
    btnDetenerServer: TBitBtn;
    tcpClient: TIdTCPClient;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtAMPuerto: TEdit;
    Label7: TLabel;
    edtAMIp: TJvIPAddress;
    procedure btnCerrarClick(Sender: TObject);
    procedure edtPuertoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarDirectorioClick(Sender: TObject);
    procedure btnIniciarServerClick(Sender: TObject);
    procedure btnDetenerServerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tcpServerExecute(AThread: TIdPeerThread);
    procedure timerPrincipalTimer(Sender: TObject);
    procedure edtAMPuertoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure IniciarServidor();
    procedure DetenerServidor();
    function ObtenerArchivos(): String;
    procedure ListarArchivos();
    procedure EnviarListaArchivos();
  public
    { Public declarations }
    ZC: TCriticalSection;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
procedure TfrmPrincipal.EnviarListaArchivos();
begin
if tcpServer.Active then
    begin
      try
        if tcpClient.Connected then tcpClient.Disconnect;
        tcpClient.Host := edtAMIp.Text;
        tcpClient.Port := StrToInt(edtAMPuerto.Text);
        tcpClient.Connect;
        tcpClient.WriteLn(ObtenerArchivos());
        tcpClient.Disconnect;
      except
        on e:Exception do
          begin
            timerPrincipal.Enabled := false;
            memLog.Lines.Add('ERROR: Error al enviar la lista de archivos. Detenga y reinicie el servidor. Mensaje del error: ' + e.Message);
            raise;
          end;
      end;
      memLog.Lines.Add('INFO: Enviado listado de archivos compartidos.');
    end;
end;

procedure TfrmPrincipal.IniciarServidor();
begin
  if not tcpServer.Active then
    begin
      // chequeo de directorio compartido
      if edtDirectorioCompartido.Text <> '' then
        begin
          memLog.Lines.Add('INFO: Los archivos en el directorio "' + edtDirectorioCompartido.Text + '" serán compartidos.');
        end
      else
        begin
          ShowMessage('No existe ningún directorio compartido!');
          memLog.Lines.Add('ERROR: No se pudo iniciar el servidor porque no se definió un directorio compartido.');
          exit;
        end;

      // chequeo de puerto definido
      if edtPuerto.Text <> '' then
        begin
          tcpServer.Bindings.DefaultPort := StrToInt(edtPuerto.Text);
          memLog.Lines.Add('INFO: Puerto ' + edtPuerto.Text + ' definido en el servidor.');
        end
      else
        begin
          ShowMessage('No existe ningún puerto definido!');
          memLog.Lines.Add('ERROR: No se pudo iniciar el servidor porque no se definió un puerto.');
          exit;
        end;
      try
        tcpServer.Active := true;
        timerPrincipal.Enabled := true;
        memLog.Lines.Add('INFO: Servidor iniciado.');
      except
        on e:Exception do ShowMessage('Error: ' + e.Message);
      end;
    end
  else
    ShowMessage('El Servidor de Archivos ya está iniciado...');
end;

procedure TfrmPrincipal.DetenerServidor();
begin
  if tcpServer.Active then
    begin
      tcpServer.Active := false;
      timerPrincipal.Enabled := false;
      memLog.Lines.Add('INFO: Servidor detenido.');
    end
  else
    ShowMessage('El Servidor de Archivos ya está detenido...');
end;

function TfrmPrincipal.ObtenerArchivos(): String;
var SR: TSearchRec; S: String;
begin
  S := '';
  if FindFirst(edtDirectorioCompartido.Text + '\*.*', faAnyFile - faDirectory, SR) = 0 then
    begin
      S := SR.Name;
      while FindNext(SR) = 0 do S := S + ',' + SR.Name;
    end;
  Result := S;
end;

procedure TfrmPrincipal.ListarArchivos();
var SR: TSearchRec;
begin
  if FindFirst(edtDirectorioCompartido.Text + '\*.*', faAnyFile - faDirectory, SR) = 0 then
    begin
      while FindNext(SR) = 0 do lbArchivos.Items.Add(SR.Name);
    end;
end;

procedure TfrmPrincipal.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.edtPuertoKeyPress(Sender: TObject; var Key: Char);
begin
  if (StrScan('0123456789'#8, Key) = nil) then Key := #0;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dialogDirectorio.Directory := GetCurrentDir;
  memLog.Lines.Clear;
end;

procedure TfrmPrincipal.btnBuscarDirectorioClick(Sender: TObject);
begin
  if dialogDirectorio.Execute then
    begin
      edtDirectorioCompartido.Text := dialogDirectorio.Directory;
      ListarArchivos();
    end
  else
    edtDirectorioCompartido.Text := '';
end;

procedure TfrmPrincipal.btnIniciarServerClick(Sender: TObject);
begin
  IniciarServidor();
  EnviarListaArchivos();
end;

procedure TfrmPrincipal.btnDetenerServerClick(Sender: TObject);
begin
  DetenerServidor();
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ZC);
end;

procedure TfrmPrincipal.tcpServerExecute(AThread: TIdPeerThread);
var sRecibido, sComando, sAccion: String;
fsArchivo : TFileStream;
begin
  //ZC.Enter;

  try         
    sRecibido := UpperCase(AThread.Connection.ReadLn);
    sComando := Copy(sRecibido, 1, 3);
    sAccion := Copy(sRecibido, 5, 100);

    if sComando = 'LIS' then
      begin
        AThread.Connection.WriteLn(ObtenerArchivos());
        AThread.Connection.Disconnect;
        memLog.Lines.Add('INFO: Enviado listado de archivos compartidos.');
      end;

    if sComando = 'ARC' then
      begin
        if FileExists(edtDirectorioCompartido.Text + '\' + sAccion) then
          begin
            memLog.Lines.Add('INFO: Transferencia del archivo ' + edtDirectorioCompartido.Text + '\' + sAccion + ' iniciada');
            fsArchivo := TFileStream.Create(edtDirectorioCompartido.Text + '\' + sAccion, fmOpenRead + fmShareDenyNone);
            AThread.Connection.OpenWriteBuffer;
            AThread.Connection.WriteStream(fsArchivo);
            AThread.Connection.CloseWriteBuffer;
            AThread.Connection.Disconnect;
            FreeAndNil(fsArchivo);
            memLog.Lines.Add('INFO: Archivo enviado.');
          end
        else
          begin
            AThread.Connection.WriteLn('ERROR: El archivo no existe.');
            AThread.Connection.Disconnect;
            memLog.Lines.Add('ERROR: Archivo no compartido solicitado.');
          end;
      end;
  except
    on e:Exception do ShowMessage('Error: ' + e.Message);
  end;

  //ZC.Leave;
end;

procedure TfrmPrincipal.timerPrincipalTimer(Sender: TObject);
begin
  EnviarListaArchivos();
end;

procedure TfrmPrincipal.edtAMPuertoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (StrScan('0123456789'#8, Key) = nil) then Key := #0;
end;

end.
