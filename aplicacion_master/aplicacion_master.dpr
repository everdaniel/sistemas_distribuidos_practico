program aplicacion_master;

uses
  Forms,
  frm_principal in 'frm_principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
