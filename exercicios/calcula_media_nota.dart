import 'dart:io';

void main() {
  List<double> notas = [];

  for (int i = 1; i <= 3; i++) {
    while (true) {
      stdout.write('Digite a nota $i (entre 0 e 10): ');
      String? entrada = stdin.readLineSync();

      double? nota = double.tryParse(entrada ?? '');

      if (nota != null && nota >= 0 && nota <= 10) {
        notas.add(nota);
        break;
      } else {
        print('Nota inválida. Digite um número entre 0 e 10.');
      }
    }
  }

  // Calcula a média
  double media = notas.reduce((a, b) => a + b) / notas.length;

  // Exibe a média e a situação
  print('\nMédia final: ${media.toStringAsFixed(1)}');

  if (media >= 7.0) {
    print('Situação: Aprovado');
  } else if (media >= 5.0) {
    print('Situação: Recuperação');
  } else {
    print('Situação: Reprovado');
  }
}
