class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (idade < 0) {
      throw ArgumentError('Idade não pode ser negativa');
    }
  }

  @override
  String toString() {
    return 'Pessoa: $nome, Idade: $idade';
  }
}

void main() {
  try {
    Pessoa pessoa1 = Pessoa('Carlos', 30);
    print(pessoa1);

    // Testando validação
    Pessoa pessoa2 = Pessoa('Ana', -5); // Isso lançará um erro
    print(pessoa2); // Só será executado se não houver erro
  } catch (e) {
    print('Erro: $e');
  }
}
