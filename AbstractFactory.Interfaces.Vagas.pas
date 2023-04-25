unit AbstractFactory.Interfaces.Vagas;

interface

uses
  AbstractFactory.Interfaces.Cargo, AbstractFactory.Interfaces.Pagamento;

type
  IFactoryVaga = interface
    function Cargo: ICargo;
    function Pagamento: IPagamento;
  end;

implementation

end.
