//Crie uma classe `ContaBancaria` 
//com atributos `titular`, `numero`, `saldo`. 
//Implemente métodos para `depositar`, `sacar` (com validação de saldo) e `mostrarSaldo`.

class ContaBancaria {
  String titular;
  String numero;
  double _saldo;

  ContaBancaria(this.titular, this.numero, [this._saldo = 0.0]);

  // Método para depositar dinheiro
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso.');
    } else {
      print('Valor de depósito inválido. Deve ser maior que zero.');
    }
  }

  // Método para sacar dinheiro
  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print('Saque de R\$${valor.toStringAsFixed(2)} realizado com sucesso.');
    } else if (valor > _saldo) {
      print('Saldo insuficiente para realizar o saque.');
    } else {
      print('Valor de saque inválido. Deve ser maior que zero.');
    }
  }

  // Método para mostrar o saldo
  void mostrarSaldo() {
    print('Saldo atual: R\$${_saldo.toStringAsFixed(2)}');
  }
}

void main() {
  // Criando uma conta bancária
  ContaBancaria conta = ContaBancaria('João da Silva', '12345-6');

  // Exibindo saldo inicial
  conta.mostrarSaldo();

  // Depositando dinheiro
  conta.depositar(100.0);
  conta.mostrarSaldo();

  // Tentando sacar dinheiro
  conta.sacar(50.0);
  conta.mostrarSaldo();

  // Tentando sacar mais do que o saldo disponível
  conta.sacar(100.0);

  // Tentando depositar um valor inválido
  conta.depositar(-20.0);
}




