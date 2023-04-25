program AbstractFactory;

uses
  Vcl.Forms,
  AbstractFactory.View in 'AbstractFactory.View.pas' {frmAbstractFactory},
  AbstractFactory.Interfaces.Vagas in 'AbstractFactory.Interfaces.Vagas.pas',
  AbstractFactory.Interfaces.Pagamento in 'AbstractFactory.Interfaces.Pagamento.pas',
  AbstractFactory.Interfaces.Cargo in 'AbstractFactory.Interfaces.Cargo.pas',
  AbstractFactory.Classes.FactoryVagas in 'AbstractFactory.Classes.FactoryVagas.pas',
  AbstractFactory.Classes.Cargo in 'AbstractFactory.Classes.Cargo.pas',
  AbstractFactory.Classes.Pagamento in 'AbstractFactory.Classes.Pagamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAbstractFactory, frmAbstractFactory);
  Application.Run;
end.
