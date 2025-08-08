//Crie uma classe `Pessoa` com `nome` e `idade`. 
//Sobrescreva o método `toString()` para retornar uma representação textual da instância.

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return 'Pessoa: $nome, Idade: $idade';
  }
}

void main() {
  Pessoa pessoa1 = Pessoa('João', 25);
  Pessoa pessoa2 = Pessoa('Maria', 30);

  print(pessoa1);
  print(pessoa2);
}

