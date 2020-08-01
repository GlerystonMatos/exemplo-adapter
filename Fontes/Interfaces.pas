unit Interfaces;

interface

type
  IAve = Interface
    function GetNome: string;
    function Voar: string;
  End;

  IPato = Interface(IAve)
    function Grasnar: string;
  end;

  IPeru = Interface(IAve)
    function Soar: string;
  End;

implementation

end.
