import 'dart:io';

void main() {
  stdout.write('Digite o nome do produto: ');

  String? nomeProduto = stdin.readLineSync();

  try {
    if (nomeProduto == null || nomeProduto.isEmpty) {
      throw Exception('Nome do produto não pode ser vazio.');
    }
    print('Nome produto = $nomeProduto');
  } catch (e) {
    nomeProduto = 'produto não informado';
    print('Erro: ${e.toString()}');
  }
}
