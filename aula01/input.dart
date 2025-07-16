import 'dart:io';

void main() {
  print('Insira seu nome: ');
  String? input = stdin.readLineSync()?.trim() ?? 'Nenhum';

  String minusculo = input.toLowerCase();
  if (minusculo == "carlos") {
    stdout.write('ola, $minusculo');
  } else {
    print("NAO CONHEÇO VOCE!!!");
  }
}
