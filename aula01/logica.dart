import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  String? input = stdin.readLineSync();

  try {
    int numero = int.parse(input!);
    print('Você digitou: $numero');
  } catch (e) {
    print('Entrada inválida!');
  }
}
