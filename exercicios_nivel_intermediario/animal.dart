//Crie uma classe `Animal` com um método `fazerSom()`. 
//Crie classes `Cachorro`, `Gato` e `Vaca` que herdam de `Animal` 
//e implementam `fazerSom()` de maneira diferente.

abstract class Animal {
  void fazerSom();
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print('O cachorro faz: Au Au!');
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print('O gato faz: Miau!');
  }
}

class Vaca extends Animal {
  @override
  void fazerSom() {
    print('A vaca faz: Muu!');
  }
}

void main() {
  List<Animal> animais = [Cachorro(), Gato(), Vaca()];

  for (var animal in animais) {
    animal.fazerSom();
  }
}


