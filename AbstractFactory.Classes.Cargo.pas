unit AbstractFactory.Classes.Cargo;

interface

uses AbstractFactory.Interfaces.Cargo;

type
  TCargoGlogo = class(TInterfacedObject, ICargo)
  private
    function Nome: String;
    function Conhecimento: String;
    function Nivel: String;
  end;

  TCargoGoogle = class(TInterfacedObject, ICargo)
  private
    function Nome: String;
    function Conhecimento: String;
    function Nivel: String;
  end;


  TCargoSoftplan = class(TInterfacedObject, ICargo)

  private
    function Nome: String;
    function Conhecimento: String;
    function Nivel: String;
  end;

implementation

{ TCargoGlogo }

function TCargoGlogo.Conhecimento: String;
begin
  result := 'Ruby / SQL Básico';
end;

function TCargoGlogo.Nivel: String;
begin
  result := 'Junior';
end;

function TCargoGlogo.Nome: String;
begin
  result := 'Desenvolvedor FrontEnd';
end;

{ TCargoGoogle }

function TCargoGoogle.Conhecimento: String;
begin
  result := 'Agile, BackLog, Kanban';
end;

function TCargoGoogle.Nivel: String;
begin
  result := 'Pleno';
end;

function TCargoGoogle.Nome: String;
begin
  result := 'Procduct Owner';
end;

{ TCargoSoftplan }

function TCargoSoftplan.Conhecimento: String;
begin
  result := 'Delphi | SQL Server, Oracle, PostgreSQL';
end;

function TCargoSoftplan.Nivel: String;
begin
  result := 'Senior';
end;

function TCargoSoftplan.Nome: String;
begin
  result := 'Desenvolvedor BackEnd';
end;

end.
