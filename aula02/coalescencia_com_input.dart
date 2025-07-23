import 'dart:io';

void main() {
  stdout.write('Digite o nome do produto: ');

  String? nomeProduto = stdin.readLineSync();

  nomeProduto = nomeProduto ??= 'Produto sem nome';

  print('Nome produto = $nomeProduto');
}
