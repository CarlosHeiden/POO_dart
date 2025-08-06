//Crie uma classe `Produto`
//com atributos privados `nome`, `preco` e `quantidade`.
//Implemente métodos getters e setters com validação.
//Crie um método para calcular o valor total em estoque.
// criar uma lista de produtos e exibir o valor total em estoque de cada um.

class Produto {
  late String _nome;
  late double _preco;
  late int _quantidade;

  Produto(String nome, double preco, int quantidade) {
    this.nome = nome;
    this.preco = preco;
    this.quantidade = quantidade;
  }



  // Getter para nome
  String get nome => _nome;

  // Setter para nome com validação
  set nome(String nome) {
    if (nome.isNotEmpty) {
      _nome = nome;
    } else {
      throw ArgumentError('Nome não pode ser vazio');
    }
  }

  // Getter para preco
  double get preco => _preco;

  // Setter para preco com validação
  set preco(double preco) {
  if (preco >= 0) {
    _preco = preco;
  } else {
    throw ArgumentError('Preço não pode ser negativo');
  }
}


  // Getter para quantidade
  int get quantidade => _quantidade;

  // Setter para quantidade com validação
  set quantidade(int quantidade) {
    if (quantidade >= 0) {
      _quantidade = quantidade;
    } else {
      throw ArgumentError('Quantidade não pode ser negativa');
    }
  }

  // Método para calcular o valor total em estoque
  double valorTotalEmEstoque() {
    return _preco * _quantidade;
  }

  @override
  String toString() {
    return 'Produto: $_nome -  Preço R\$ ${_preco.toStringAsFixed(2).replaceAll('.', ',')} -  Quantidade: $_quantidade -  Valor Total em Estoque: ${valorTotalEmEstoque().toStringAsFixed(2).replaceAll('.', ',')}';
  }
}


void main() {
  List<Produto> produtos = [];

  List<List<dynamic>> dados = [
    ['Caneta', 2.5, 100],
    ['Caderno', 15.0, 50],
    ['Mochila', 120.0, 20],
  ];

  for (var item in dados) {
    try {
      var produto = Produto(item[0], item[1], item[2]);
      produtos.add(produto);
    } catch (e) {
      print('Erro ao criar produto "${item[0]}": $e');
    }
  }

  for (var produto in produtos) {
    print('=' * 80);
    print(produto);
  }
  print('=' * 80);
}
