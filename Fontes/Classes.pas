unit Classes;

interface

uses
  Interfaces;

type
  TMarreco = class(TInterfacedObject, IPato)
  private
    { private declarations }
    function GetNome: string;
  public
    { public declarations }
    function Grasnar: string;
    function Voar: string;
  end;

  TPeru = class(TInterfacedObject, IPeru)
  private
    { private declarations }
    function GetNome: string;
  public
    { public declarations }
    function Soar: string;
    function Voar: string;
  end;

  TPeruAdapter = class(TInterfacedObject, IPato)
  private
    { private declarations }
    FPeru: IPeru;
    function GetNome: string;
  public
    { public declarations }
    constructor Create; overload;
    constructor Create(Peru: IPeru); overload;
    function Grasnar: string;
    function Voar: string;
  end;

implementation

{ TMarreco }

function TMarreco.GetNome: string;
begin
  Result := 'Marreco';
end;

function TMarreco.Grasnar: string;
begin
  Result := GetNome + ': Quack, quack, quack';
end;

function TMarreco.Voar: string;
begin
  Result := GetNome + ': Voar, voar, voar, voar, voar';
end;

{ TPeru }

function TPeru.GetNome: string;
begin
  Result := 'Peru';
end;

function TPeru.Soar: string;
begin
  Result := GetNome + ': Brulu, brulu, brulu';
end;

function TPeru.Voar: string;
begin
  Result := GetNome + ': Voar, voar';
end;

{ TPeruAdapter }

constructor TPeruAdapter.Create;
begin
  FPeru := TPeru.Create;
end;

constructor TPeruAdapter.Create(Peru: IPeru);
begin
  FPeru := Peru;
end;

function TPeruAdapter.GetNome: string;
begin
  Result := FPeru.GetNome;
end;

function TPeruAdapter.Grasnar: string;
begin
  Result := FPeru.Soar;
end;

function TPeruAdapter.Voar: string;
begin
  Result := FPeru.Voar + ', voar, voar, voar';
end;

end.
