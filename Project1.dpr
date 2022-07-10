program Project1;



uses
  Forms,
  Unit1 in 'Unit1.pas' {MTVRPTW},
  dataset in 'dataset.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Algoritma ILS-RVND pada MTVRPTW';
  Application.CreateForm(TMTVRPTW, MTVRPTW);
  Application.Run;
end.
