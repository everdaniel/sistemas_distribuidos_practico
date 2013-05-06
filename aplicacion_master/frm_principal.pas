unit frm_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvComCtrls, ComCtrls, Buttons, ExtCtrls,
  IdTCPServer, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  DB, JvMemoryDataset, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, JvDataSource, JvBaseDlg, JvBrowseFolder;

type
  TfrmPrincipal = class(TForm)
    Panel2: TPanel;
    btnCerrar: TButton;
    btnIniciarServer: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtPuerto: TEdit;
    pgPrincipal: TPageControl;
    tsArchivos: TTabSheet;
    tcpClient: TIdTCPClient;
    tcpServer: TIdTCPServer;
    tblArchivos: TJvMemoryData;
    DSArchivos: TJvDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    tblArchivosip_servidor: TStringField;
    tblArchivosnombre_archivo: TStringField;
    Label3: TLabel;
    edtDirectorioDestino: TEdit;
    btnBuscarDirectorio: TBitBtn;
    dialogDirectorio: TJvBrowseForFolderDialog;
    procedure btnBuscarDirectorioClick(Sender: TObject);
    procedure tcpServerExecute(AThread: TIdPeerThread);
    procedure FormShow(Sender: TObject);
    procedure btnIniciarServerClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblArchivosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBuscarDirectorioClick(Sender: TObject);
begin
  if dialogDirectorio.Execute then
    edtDirectorioDestino.Text := dialogDirectorio.Directory;
end;

procedure TfrmPrincipal.tcpServerExecute(AThread: TIdPeerThread);
var sListaArchivos: String; sLista: TStringList; i: Integer; sIP: String;
begin
  try
    sLista := TStringList.Create;
    sListaArchivos := AThread.Connection.ReadLn;
    sIP := AThread.Connection.Socket.Binding.PeerIP;
    ExtractStrings(
              [','],
              [' '],
              PChar(Trim(sListaArchivos)),
              sLista);
    tblArchivos.DisableControls;
    if tblArchivos.Active and (tblArchivos.State in [dsBrowse]) then
      begin
        tblArchivos.First;
        while not tblArchivos.Eof do
          begin
            if Trim(tblArchivosIP_SERVIDOR.AsString) = Trim(sIP) then
              tblArchivos.Delete;
            tblArchivos.Next;
          end;
        tblArchivos.First;
      end;

    for i := 0 to sLista.Count - 1 do
      begin
        tblArchivos.Append;
        tblArchivosNOMBRE_ARCHIVO.AsString := sLista.Strings[i];
        tblArchivosIP_SERVIDOR.AsString := sIP;
        tblArchivos.Post;
      end;
    tblArchivos.Refresh;
    tblArchivos.EnableControls;
    AThread.Connection.Disconnect;
  except
    on e:Exception do ShowMessage(e.Message);
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  tcpServer.Active := true;
  tblArchivos.Open;
end;

procedure TfrmPrincipal.btnIniciarServerClick(Sender: TObject);
var fsArchivo: TFileStream;
begin
  if edtDirectorioDestino.Text <> '' then
    begin
      if tblArchivos.RecordCount > 0 then
        begin
          if tcpClient.Connected then tcpClient.Disconnect;
          tcpClient.Host := tblArchivosIP_SERVIDOR.AsString;
          tcpClient.Port := 7000;
          tcpClient.Connect;
          tcpClient.WriteLn('ARC:' + tblArchivosNOMBRE_ARCHIVO.AsString);
          if FileExists(edtDirectorioDestino.Text + '\' + tblArchivosNOMBRE_ARCHIVO.AsString) then
            DeleteFile(edtDirectorioDestino.Text + '\' + tblArchivosNOMBRE_ARCHIVO.AsString);
          fsArchivo := TFileStream.Create(edtDirectorioDestino.Text + '\' + tblArchivosNOMBRE_ARCHIVO.AsString, fmCreate);
          while tcpClient.Connected do
            begin
              tcpClient.ReadStream(fsArchivo, -1, true);
            end;
          FreeAndNil(fsArchivo);
          tcpClient.Disconnect;
        end
      else
        ShowMessage('No existen archivos compartidos...');
    end
  else
    ShowMessage('Seleccione el directorio destino...');
end;

procedure TfrmPrincipal.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPrincipal.tblArchivosAfterOpen(DataSet: TDataSet);
begin
  tblArchivos.SortOnFields('nombre_archivo', true, true);
end;

end.
