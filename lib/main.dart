import 'cliente_do_banco.dart';
import 'tipos_de_conta.dart';

void projetoMain() {

  Pessoa cliente1 = Pessoa('Hélade', 06598756162, 'salario');

  Pessoa.estimativaRendimento(100);

  cliente1.escolherTipoDeConta(conta: TipoDeConta.salario);

  print(cliente1.mostrarSaldo);
  cliente1.depositar = 400;

  print(cliente1.mostrarSaldo);
  cliente1.depositar = 200;

  print(cliente1.mostrarSaldo);
}