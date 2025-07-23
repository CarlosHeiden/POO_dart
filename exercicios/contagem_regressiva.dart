import 'dart:io';
import 'dart:async';

void main() async {
  stdout.write(
    'Digite um número inteiro positivo para iniciar a contagem regressiva: ',
  );
  String? entrada = stdin.readLineSync();

  int? numero = int.tryParse(entrada ?? '');

  if (numero == null || numero <= 0) {
    print('Número inválido. A contagem não será iniciada.');
    return;
  }

  for (int i = numero; i >= 0; i--) {
    print('Faltam $i segundos');
    await Future.delayed(Duration(seconds: 3)); // Espera 3 segundos
  }

  print('Contagem regressiva concluída!');
}
