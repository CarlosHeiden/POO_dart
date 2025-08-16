class Produto {
  late String nome;
  late double _preco;

  Produto(this.nome, double preco) {
    this.preco = preco;
  }
  // Getter para preco
  double get preco => _preco;

  /// Setter para preco com validação
  set preco(double valor) {
    if (valor < 0) {
      throw Exception('O preço não pode ser negativo');
    }
    _preco = valor;
  }

  /// Método para exibir informações do produto
  exibir() {
    return 'Produto: $nome -  Preço: R\$ ${_preco.toStringAsFixed(2).replaceAll('.', ',')}';
  }
}

void main() {
  try {
    Produto produto = Produto('Notebook', 2500.00);
    Produto produto2 = Produto('Smartphone', 1500.00);
    print(produto.exibir());
    print(produto2.exibir());
    print('---------------------');

    // Testando o setter com um valor negativo
    produto.preco = -1500.00; // Isso deve lançar uma exceção
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
