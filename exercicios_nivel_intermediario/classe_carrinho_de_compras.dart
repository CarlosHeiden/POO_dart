//Crie uma classe `Carrinho` que armazene uma lista de `Produto`. 
//Implemente métodos para adicionar, remover e listar produtos, 
//além de calcular o total do carrinho.

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  @override
  String toString() {
    return '$nome - R\$ $preco';
  }
}

class Carrinho {
  List<Produto> produtos = [];

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
    print('Produto adicionado: $produto');
  }

  void removerProduto(Produto produto) {
    if (produtos.remove(produto)) {
      print('Produto removido: $produto');
    } else {
      print('Produto não encontrado no carrinho: $produto');
    }
  }

  void limparCarrinho() {
    produtos.clear();
    print('Carrinho limpo.');
  }

  void listarProdutos() {
    if (produtos.isEmpty) {
      print('Carrinho está vazio.');
    } else {
      print('Produtos no carrinho:');
      for (var produto in produtos) {
        print(produto);
      }
    }
  }

  double calcularTotal() {
    double total = produtos.fold(0, (sum, produto) => sum + produto.preco);
    return total;
  }
}

void main() {
  Carrinho carrinho = Carrinho();

  Produto produto1 = Produto('Camiseta', 49.90);
  Produto produto2 = Produto('Calça Jeans', 89.90);
  Produto produto3 = Produto('Tênis', 199.90);

  carrinho.adicionarProduto(produto1);
  carrinho.adicionarProduto(produto2);
  carrinho.adicionarProduto(produto3);

  carrinho.listarProdutos();

  print('Total do carrinho: R\$ ${carrinho.calcularTotal()}');

  carrinho.removerProduto(produto2);
  carrinho.listarProdutos();

  print('Total do carrinho após remoção: R\$ ${carrinho.calcularTotal()}');

  carrinho.limparCarrinho();
  carrinho.listarProdutos();
}