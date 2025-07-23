import 'dart:io';
import 'dart:math';

void main() {
  // Gera um número aleatório entre 1 e 100
  int numeroSecreto = Random().nextInt(100) + 1;

  int tentativas = 0; // Contador de tentativas
  int? palpite;

  print('🎯 Jogo de Adivinhação');
  print('Tente adivinhar o número entre 1 e 100.');

  // Laço até o usuário acertar
  while (palpite != numeroSecreto) {
    stdout.write('Digite seu palpite: ');
    String? entrada = stdin.readLineSync();

    // Tenta converter a entrada para inteiro
    palpite = int.tryParse(entrada ?? '');

    if (palpite == null) {
      print('Entrada inválida. Digite um número inteiro.');
      continue;
    }

    tentativas++;

    if (palpite < numeroSecreto) {
      print('Muito baixo! Tente novamente.');
    } else if (palpite > numeroSecreto) {
      print('Muito alto! Tente novamente.');
    } else {
      print(
        '🎉 Parabéns! Você acertou o número $numeroSecreto em $tentativas tentativas.',
      );
    }
  }
  // Mensagem de agradecimento
  print('Obrigado por jogar!');
}
