import 'dart:io';

void main() {
  // Solicitar o nome do produto
  stdout.write('Digite o nome do produto: ');
  
  // Verifica se o nome do produto foi informado, caso contrário, atribui um valor padrão
String? nomeProduto = stdin.readLineSync();
nomeProduto = (nomeProduto?.trim().isEmpty ?? true)
    ? 'Nome do produto não informado'
    : nomeProduto;

  // Solicitar o preço do produto
  stdout.write('Digite o preço do produto: ');
  String? precoProduto = stdin.readLineSync();

  // Tenta converter o preço do produto para um valor numérico (double)
  double preco = double.tryParse(precoProduto ?? '') ?? 0.0;

  // Exibe os dados do produto
  print('\nCadastro do Produto:');
  print('Nome do Produto: $nomeProduto');
  print('Preço do Produto: \$${preco.toStringAsFixed(2)}');
}
