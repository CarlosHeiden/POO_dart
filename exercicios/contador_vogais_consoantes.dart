import 'dart:io';

void main() {
  // Solicita a frase do usuário
  stdout.write('Digite uma frase: ');
  String? frase = stdin.readLineSync();

  // Verifica se a entrada é válida
  if (frase == null || frase.isEmpty) {
    print('Frase inválida.');
    return;
  }

  // Inicializa contadores
  int vogais = 0;
  int consoantes = 0;

  // Conjunto de vogais para comparação
  const String letrasVogais = 'aeiou';

  // Converte a frase para minúsculas e percorre cada caractere
  for (int i = 0; i < frase.length; i++) {
    String letra = frase[i].toLowerCase();

    // Verifica se é uma letra do alfabeto
    if (RegExp(r'[a-z]').hasMatch(letra)) {
      if (letrasVogais.contains(letra)) {
        vogais++;
      } else {
        consoantes++;
      }
    }
  }

  // Exibe os resultados
  print('Número de vogais: $vogais');
  print('Número de consoantes: $consoantes');
}
