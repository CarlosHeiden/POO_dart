import 'classes.dart';
void main() {
  Carro carro1 = Carro('Toyota', 'Corolla', 2020);
  Carro carro2 = Carro('Honda', 'Civic', 2021);  

  // Printando diretamente os atributos
  print('Dados do carro 1 ');
  print('Marca: ${carro1.marca}, Modelo: ${carro1.modelo}, Ano: ${carro1.ano}');
  print('=' * 40);

  print('Dados do carro 2 ');
  print('Marca: ${carro2.marca}, Modelo: ${carro2.modelo}, Ano: ${carro2.ano}');
  print('=' * 40);
  
  // Usando o método para exibir os dados do carro
  print('Exibindo detalhes do carro usando o método:'); 
  print('Dados do carro ');
  carro1.exibirdetalhes();
  print('=' * 40);
  print('>' * 40);

  
  Produto p1 = Produto('Notebook', -3500.00);

  // Acessando nome diretamente e preco via getter
  print('Dados do produto');
  print('Produto: ${p1.nome}');
  print('Preço: R\$${p1.preco.toStringAsFixed(2)}');

  print('=' * 40);

  //Utilizando medoto exibirPreco
  print('Exibindo preço do produto usando o método:');
  p1.exibirPreco(); 
  print('=' * 40);





}





