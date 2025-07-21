// ...existing code...
import 'dart:io';

void main() {
  while (true) {
    print('Digite um número (ou "sair" para encerrar):');
    String? entrada = stdin.readLineSync();

    if (entrada == null) continue;
    if (entrada.toLowerCase() == 'sair') break;

    int? numero = int.tryParse(entrada);
    if (numero == null) {
      print('Por favor, digite um número válido ou "sair".');
      continue;
    }

    if (numero > 0) {
      print('O número é positivo.');
    } else if (numero < 0) {
      print('O número é negativo.');
    } else {
      print('O número é zero.');
    }
  }
  print("Encerrando programa");
}
// ...existing code...