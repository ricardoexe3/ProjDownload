unit uDownload.Controller.Historico;

interface
uses
  uDownload.Controller.Interfaces,
  uDownload.Model.Interfaces,
  uDownload.Model.Historico;
type
TController_Historico = class(TInterfacedObject,iController_Historico)
private
 FModel_Historico:iModel_Historico;
public
 function Fn_Historico:iModel_Historico;
 class function New:iController_Historico;
 constructor Create;
 destructor Destroy; override;
end;

implementation

{ TController_Historico }

constructor TController_Historico.Create;
begin
 FModel_Historico := TModel_Historico.New;
end;

destructor TController_Historico.Destroy;
begin

  inherited;
end;

function TController_Historico.Fn_Historico: iModel_Historico;
begin
 Result := FModel_Historico;
end;

class function TController_Historico.New: iController_Historico;
begin
 Result := Self.Create;
end;
end.
