unit AbstractFactory.Classes.FactoryVagas;

interface

uses AbstractFactory.Interfaces.Vagas, AbstractFactory.Interfaces.Cargo, AbstractFactory.Interfaces.Pagamento;

type
  TGlobo = class(TInterfacedObject, IFactoryVaga)
    function Cargo: ICargo;
    function Pagamento: IPagamento;
  end;

  TGoogle = class(TInterfacedObject, IFactoryVaga)
    function Cargo: ICargo;
    function Pagamento: IPagamento;
  end;

  TSoftplan = class(TInterfacedObject, IFactoryVaga)
    function Cargo: ICargo;
    function Pagamento: IPagamento;
  end;

implementation

uses AbstractFactory.Classes.Cargo, AbstractFactory.Classes.Pagamento;

{ TGlobo }

function TGlobo.Cargo: ICargo;
begin
  result := TCargoGlogo.Create;
end;

function TGlobo.Pagamento: IPagamento;
begin
  result := TPagamentoGlogo.Create;
end;

{ TGoogle }

function TGoogle.Cargo: ICargo;
begin
  result := TCargoGoogle.Create;
end;

function TGoogle.Pagamento: IPagamento;
begin
  result := TPagamentoGoogle.Create;
end;

{ TSoftplan }

function TSoftplan.Cargo: ICargo;
begin
  result := TCargoSoftplan.Create;
end;

function TSoftplan.Pagamento: IPagamento;
begin
  result := TPagamentoSoftplan.Create;
end;

end.
