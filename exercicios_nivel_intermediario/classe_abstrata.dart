//Crie uma classe abstrata `Funcionario` com o método `calcularSalario()`. 
//Crie duas subclasses `Desenvolvedor` e `Gerente` 
//com implementações diferentes do cálculo do salário.
// Crie uma lista de funcionários e exiba o salário de cada um.

abstract class Funcionario {
  String nome;
  double salarioBase;

  Funcionario(this.nome, this.salarioBase);

  // Método abstrato para calcular o salário
  double calcularSalario();
}
class Desenvolvedor extends Funcionario {
  double bonus;

  Desenvolvedor(String nome, double salarioBase, this.bonus) : super(nome, salarioBase);

  @override
  double calcularSalario() {
    return salarioBase + bonus;
  }
}

class Gerente extends Funcionario {
  double comissao;

  Gerente(String nome, double salarioBase, this.comissao) : super(nome, salarioBase);

  @override
  double calcularSalario() {
    return salarioBase + comissao;
  }
}

void main() {
  // Criando uma lista de funcionários
  List<Funcionario> funcionarios = [
    Desenvolvedor('Alice', 3000.0, 500.0),
    Gerente('Bob', 5000.0, 1000.0),
    Desenvolvedor('Charlie', 3200.0, 600.0),
    Gerente('Diana', 5500.0, 1200.0),
  ];

  // Exibindo o salário de cada funcionário
  for (var funcionario in funcionarios) {
    print('${funcionario.nome} - Salário: R\$${funcionario.calcularSalario().toStringAsFixed(2)}');
  }
}
