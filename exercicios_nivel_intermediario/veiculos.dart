//Crie uma classe abstrata `Veiculo` com métodos `ligar()` e `desligar()`.
// Implemente as classes `Carro` e `Moto`, sobrescrevendo os métodos.

abstract class Veiculo {
  void ligar();
  void desligar();
}

class Carro extends Veiculo {
  @override
  void ligar() {
    print('O carro está ligado.');
  }

  @override
  void desligar() {
    print('O carro está desligado.');
  }
}

class Moto extends Veiculo {
  @override
  void ligar() {
    print('A moto está ligada.');
  }

  @override
  void desligar() {
    print('A moto está desligada.');
  }
}

void main() {
  Veiculo meuCarro = Carro();
  meuCarro.ligar();
  meuCarro.desligar();

  Veiculo minhaMoto = Moto();
  minhaMoto.ligar();
  minhaMoto.desligar();
}

