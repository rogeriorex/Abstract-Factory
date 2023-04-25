unit AbstractFactory.Interfaces.Pagamento;

interface

type
  IPagamento = interface
    function ValorBruto: Single;
    function Moeda: String;
    function TicketRefeicao: Single;
  end;

implementation

end.
