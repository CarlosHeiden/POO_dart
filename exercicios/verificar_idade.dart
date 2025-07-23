import 'dart:io';

void main() {
  while (true) {
    stdout.write('Digite sua idade (ou digite "sair" para encerrar): ');
    String? entrada = stdin.readLineSync();

    if (entrada == null) {
      print('Entrada inválida. Tente novamente.');
      continue;
    }

    // Verifica se o usuário quer sair
    if (entrada.toLowerCase() == 'sair') {
      print('Programa encerrado.');
      break;
    }

    try {
      int idade = int.parse(entrada);

      if (idade <= 0) {
        print('Idade inválida. Digite um número positivo.');
        continue;
      }

      if (idade < 18) {
        print('Acesso negado. Você deve ter pelo menos 18 anos.');
      } else {
        print('Acesso permitido.');
      }
    } catch (e) {
      print('Erro: Por favor, digite um número válido.');
    }
  }
}
