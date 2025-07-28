import 'classes.dart';

void main() {
  Cliente cli1 = Cliente(1000, 'João', '123.456.789-00');

  // Printando diretamente os atributos
  print('Dados do cliente ');
  print('Id: ${cli1.idCliente}, Nome: ${cli1.nome}, CPF: ${cli1.cpf}');

  // Usando o método para exibir os dados do cliente
  print('=' * 40);
  print('Exibindo dados do cliente usando o método:');
  print('Dados do cliente ');
  cli1.exibirDados();
}
