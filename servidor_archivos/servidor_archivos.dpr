program servidor_archivos;

uses
  Forms,
  frm_principal in 'frm_principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Servidor de Archivos';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
