import 'dart:io';

void main() {
  // Solicita o primeiro número
  stdout.write('Digite o primeiro número inteiro: ');
  int? num1 = int.tryParse(stdin.readLineSync()!);

  // Solicita o segundo número
  stdout.write('Digite o segundo número inteiro: ');
  int? num2 = int.tryParse(stdin.readLineSync()!);

  // Solicita a operação
  stdout.write('Digite a operação (+, -, *, /): ');
  String? operacao = stdin.readLineSync();

  // Verifica se os números são válidos
  if (num1 == null || num2 == null) {
    print('Erro: Um ou ambos os números são inválidos.');
    return;
  }

  // Realiza a operação com base no operador informado
  double? resultado;

  if (operacao == '+') {
    resultado = num1.toDouble() + num2.toDouble();
  } else if (operacao == '-') {
    resultado = num1.toDouble() - num2.toDouble();
  } else if (operacao == '*') {
    resultado = num1.toDouble() * num2.toDouble();
  } else if (operacao == '/') {
    resultado = num1.toDouble() / num2.toDouble();
  } else if (operacao == '%') {
    resultado = num1.toDouble() % num2.toDouble();
  } else {
    print('Erro: Operação inválida.');
    return;
  }

  // Exibe o resultado
  print('Resultado = $resultado');
}
