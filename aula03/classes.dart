class Cliente {
  int idCliente;
  String nome;
  String cpf;

  Cliente(this.idCliente, this.nome, this.cpf);

  // Método para exibir os dados do cliente
  void exibirDados() {
    print('Id: $idCliente, Nome: $nome, CPF: $cpf');
  }
}

class Carro {
  String marca;
  String modelo;
  int ano;

  Carro(this.marca, this.modelo, this.ano);

  // Método para exibir os dados do carro
  void exibirdetalhes() {
    print('Marca: $marca, Modelo: $modelo, Ano: $ano');
  }
}

class Produto {
  String nome;
  double _preco =0.0;

  
Produto(this.nome, double preco) {
    this.preco = preco; // usa o setter com validação
  }

  // Getter para preco
  double get preco => _preco;

  // Setter para preco com validação
  set preco(double valor) {
    if  (valor >= 0) {
      _preco = valor;
    } else {
      print('Preço inválido. Deve ser maior ou igual a zero.');
    }
  }
  // Método para exibir o preço do produto
  void exibirPreco() {
    print('O preço informado: R\$${_preco.toStringAsFixed(2)}');
  } 
}

