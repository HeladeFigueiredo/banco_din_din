import 'tipos_de_conta.dart';

class Pessoa {
  String nome;
  int cpf;
  String conta;
  double _saldo = 0;
  
  static double _rendimento = 5.50;

  List<String> extrato = [];

  Pessoa(this.nome, this.cpf, this.conta);

  void escolherTipoDeConta ({TipoDeConta conta = TipoDeConta.corrente}) {
    String mensagem = 'O cliente $nome possui uma Conta ';

    switch (conta) {
      case TipoDeConta.poupanca:
        mensagem += 'Poupança';
        break;
      case TipoDeConta.salario:
        mensagem += 'Salário';
        break;
      default:
        mensagem += 'Corrente';
      break;
    }

    print(mensagem);
  }

  // MOSTRAR O SALDO PARA O CLIENTE
  double get mostrarSaldo {
    return _saldo;
  }
  
  // ALTERAR O VALOR DO SALDO POR MEIO DE UM DEPÓSITO
  set depositar(double valor) {
    _saldo += valor;
  }

  // VERIFICAR A ESTIMATIVA DE RENDIMENTO
  static estimativaRendimento(double valor) {
    print(valor * _rendimento);
  }














}