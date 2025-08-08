class Pessoa {
  String nome;
  int _idade = 0; // Campo privado

  Pessoa(this.nome, int idade) {
    this.idade = idade; // Usa o setter para validar
  }

  // Setter com validação
  set idade(int valor) {
    if (valor < 0) {
      throw ArgumentError('Idade não pode ser negativa');
    }
    _idade = valor;
  }

  // Getter para acessar idade
  int get idade => _idade;

  @override
  String toString() {
    return 'Pessoa: $nome, Idade: $idade';
  }
}

void main() {
  try {
    Pessoa pessoa1 = Pessoa('Carlos', 30);
    print(pessoa1);

    Pessoa pessoa2 = Pessoa('Ana', -5); // Vai lançar erro via setter
    print(pessoa2);
  } catch (e) {
    print('Erro: $e');
  }
}
