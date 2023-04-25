unit AbstractFactory.Classes.Pagamento;

interface

uses AbstractFactory.Interfaces.Pagamento;

type
  TPagamentoGlogo = class(TInterfacedObject, IPagamento)
  private
    function ValorBruto: Single;
    function Moeda: String;
    function TicketRefeicao: Single;
  end;

  TPagamentoGoogle = class(TInterfacedObject, IPagamento)
  private
    function ValorBruto: Single;
    function Moeda: String;
    function TicketRefeicao: Single;
  end;

  TPagamentoSoftplan = class(TInterfacedObject, IPagamento)
  private
    function ValorBruto: Single;
    function Moeda: String;
    function TicketRefeicao: Single;
  end;

implementation

{ TPagamentoGlogo }

function TPagamentoGlogo.Moeda: String;
begin
  result := 'R$ ';
end;

function TPagamentoGlogo.TicketRefeicao: Single;
begin
  result := 1100;
end;

function TPagamentoGlogo.ValorBruto: Single;
begin
  result := 7500;
end;

{ TPagamentoGoogle }

function TPagamentoGoogle.Moeda: String;
begin
  result := 'US$ ';
end;

function TPagamentoGoogle.TicketRefeicao: Single;
begin
  result := 0;
end;

function TPagamentoGoogle.ValorBruto: Single;
begin
  result := 7000;
end;

{ TPagamentoSoftplan }

function TPagamentoSoftplan.Moeda: String;
begin
  result := 'R$ ';
end;

function TPagamentoSoftplan.TicketRefeicao: Single;
begin
  result := 900;
end;

function TPagamentoSoftplan.ValorBruto: Single;
begin
  result := 14500;
end;

end.
