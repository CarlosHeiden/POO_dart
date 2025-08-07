import 'dart:io'; // Importa a biblioteca para entrada e saída de dados pelo terminal

void main() { // Função principal do programa
  List<double> notas = []; // Cria uma lista para armazenar as notas digitadas

  for (int i = 1; i <= 3; i++) { // Laço para pedir 3 notas ao usuário
    while (true) { // Laço para garantir que a nota digitada seja válida
      stdout.write('Digite a nota $i (entre 0 e 10): '); // Solicita a nota ao usuário
      String? entrada = stdin.readLineSync(); // Lê a entrada do usuário como string

      double? nota = double.tryParse(entrada ?? ''); // Tenta converter a entrada para double

      if (nota != null && nota >= 0 && nota <= 10) { // Verifica se a nota é válida
        notas.add(nota); // Adiciona a nota à lista
        break; // Sai do laço while se a nota for válida
      } else {
        print('Nota inválida. Digite um número entre 0 e 10.'); // Mensagem de erro para nota inválida
      }
    }
  }

  // Calcula a média
  double media = notas.reduce((a, b) => a + b) / notas.length; // Soma todas as notas e divide pela quantidade

  // Exibe a média e a situação
  print('\nMédia final: ${media.toStringAsFixed(1)}'); // Mostra a média com uma casa decimal

  if (media >= 7.0) { // Se a média for maior ou igual a 7
    print('Situação: Aprovado'); // Aprovado
  } else if (media >= 5.0) { // Se a média for maior ou igual a 5 e menor que 7
    print('Situação: Recuperação'); // Recuperação
  } else {
    print('Situação: Reprovado'); // Se for menor que 5, reprovado
  }
}