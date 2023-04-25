unit AbstractFactory.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, AbstractFactory.Interfaces.Vagas;

type
  TfrmAbstractFactory = class(TForm)
    tabVagas: TTabControl;
    lblLegendaNome: TLabel;
    lblNome: TLabel;
    lblLegendaNivel: TLabel;
    lblNivel: TLabel;
    lblLegendaConhecimento: TLabel;
    lblConhecimento: TLabel;
    lblLegendaValorBruto: TLabel;
    lblValorBruto: TLabel;
    lblLegendaTicketRefeicao: TLabel;
    lblTicketRefeicao: TLabel;
    procedure tabVagasChange(Sender: TObject);
  private
    Vaga: IFactoryVaga;
    procedure CarregarVaga;
    procedure CarregarDadosVaga;
  end;

const
  GLOBO = 0;
  GOOGLE = 1;
  SOFTPLAN = 2;

var
  frmAbstractFactory: TfrmAbstractFactory;

implementation

uses AbstractFactory.Classes.FactoryVagas, AbstractFactory.Interfaces.Cargo, AbstractFactory.Interfaces.Pagamento;

{$R *.dfm}

procedure TfrmAbstractFactory.CarregarVaga;
begin
  case tabVagas.TabIndex of
    GLOBO: Vaga := TGlobo.Create;
    GOOGLE: Vaga := TGoogle.Create;
    SOFTPLAN: Vaga := TSoftplan.Create;
  end;
end;

procedure TfrmAbstractFactory.CarregarDadosVaga;
begin
  lblNome.Caption := Vaga.Cargo.Nome;
  lblNivel.Caption := Vaga.Cargo.Nivel;
  lblConhecimento.Caption := Vaga.Cargo.Conhecimento;
  lblValorBruto.Caption := Vaga.Pagamento.Moeda + Vaga.Pagamento.ValorBruto.ToString;
  lblTicketRefeicao.Caption := Vaga.Pagamento.Moeda + Vaga.Pagamento.TicketRefeicao.ToString;
end;

procedure TfrmAbstractFactory.tabVagasChange(Sender: TObject);
begin
  CarregarVaga;
  CarregarDadosVaga;
end;

end.


