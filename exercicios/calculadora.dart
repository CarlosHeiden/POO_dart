import 'dart:io';

void main() {
  // Solicita o primeiro número
  stdout.write('Digite o primeiro número: ');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  // Solicita o segundo número
  stdout.write('Digite o segundo número: ');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  // Solicita a operação
  stdout.write('Digite a operação (+, -, *, /): ');
  String? operacao = stdin.readLineSync();

  // Verifica se os números são válidos
  if (num1 == null || num2 == null) {
    print('Erro: Um ou ambos os números são inválidos.');
    return;
  }

  // Variável para armazenar o resultado
  double? resultado;

  // Utiliza switch para decidir a operação
  switch (operacao) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      if (num1 == 0 || num2 == 0) {
        print('Erro: Divisão por zero não é permitida.');
        return;
      } else {
        resultado = num1 / num2;
      }
      break;
    default:
      print('Erro: Operação inválida.');
      return;
  }

  // Exibe o resultado
  print('Resultado: $resultado');
}
