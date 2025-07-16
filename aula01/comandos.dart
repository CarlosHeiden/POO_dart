import 'dart:io'; // Importa a biblioteca para entrada/saída de dados

void main() {
  // --- Entrada de Dados com Coalescência Nula ---

  stdout.write('Por favor, digite sua idade (pode deixar em branco): ');
  // Lê a entrada do usuário e remove espaços em branco extras.
  // Se a entrada for vazia (ou null), o operador ?? atribui '0' à variável idadeInput.
  String idadeInput = stdin.readLineSync()?.trim() ?? '0';
  // Converte a string idadeInput para um inteiro.
  // Se a conversão falhar (por exemplo, se o usuário digitou texto),
  // o operador ?? atribui 0 à variável idade.
  int idade = int.tryParse(idadeInput) ?? 0;

  stdout.write(
    'Qual o seu time de futebol favorito? (pode deixar em branco): ',
  );
  // Lê a entrada do usuário e remove espaços em branco extras.
  // Se a entrada for vazia (ou null), o operador ?? atribui 'Nenhum' à variável timeFavorito.
  String timeFavorito = stdin.readLineSync()?.trim() ?? 'Nenhum';

  print('\n--- Resultados ---');

  // --- Comandos Condicionais (if, else if, else) ---

  // O que está sendo testado: Verifica se a idade é maior ou igual a 18.
  if (idade >= 18) {
    print('Você é maior de idade.');
    // O que está sendo testado: Verifica se a idade é maior ou igual a 13 e menor que 18.
  } else if (idade >= 13) {
    print('Você é um adolescente.');
    // O que está sendo testado: Captura todos os outros casos (idade menor que 13).
  } else {
    print('Você é uma criança.');
  }

  // --- Comando Condicional (switch) ---

  // O que está sendo testado: Compara o valor da variável timeFavorito com vários casos.
  switch (timeFavorito.toLowerCase()) {
    // Usamos toLowerCase() para tornar a comparação insensível a maiúsculas/minúsculas
    case 'flamengo':
      print('Ah, você torce para o Flamengo! Mengão!');
      break; // Sai do switch após encontrar uma correspondência
    case 'palmeiras':
      print('Palmeiras, o verdão!');
      break;
    case 'corinthians':
      print('Vai Corinthians!');
      break;
    case 'nenhum':
      print('Pelo visto você não tem um time favorito ou não informou.');
      break;
    default: // Caso nenhum dos 'cases' anteriores corresponda
      print('Que legal! Seu time favorito é o $timeFavorito.');
  }

  print('\n--- Fim do programa ---');
}
