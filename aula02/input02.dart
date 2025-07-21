import 'dart:io';

void main() {
  // Entrada de dados
  stdout.write("Qual é seu nome? ");
  String? nome = stdin.readLineSync();

  stdout.write("Qual é sua idade? ");
  String? idadeInput = stdin.readLineSync();

  //int idade = int.parse(idadeInput ?? '0');
  // Se idade for nula, converte para 0

  try {
    int idade = int.parse(idadeInput ?? '0');
    print("Olá, $nome! Você tem $idade anos.");
  } catch (e) {
    print("⚠️ Erro: É obrigatório cadastrar a idade com um número válido.");
  }

  // print("Olá, $nome! Você tem $idade anos.");
}
