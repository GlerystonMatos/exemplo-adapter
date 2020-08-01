program ExemploAdapter;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Interfaces in 'Interfaces.pas',
  Classes in 'Classes.pas';

var
  Marreco: TMarreco;
  Peru: TPeru;
  PeruAdapter: TPeruAdapter;
  Patos: Array[0..1] of IPato;
  Contador: Integer;

begin
  try
    Marreco := TMarreco.Create;
    Peru := TPeru.Create;
    PeruAdapter := TPeruAdapter.Create(Peru);

    Patos[0] := Marreco;
    Patos[1] := PeruAdapter;

    for Contador := 0 to Pred(Length(Patos)) do
    begin
      Writeln(Patos[Contador].Grasnar);
      Writeln('');
      Writeln(Patos[Contador].Voar);
      Writeln('');
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
