//Crie uma classe `Retangulo` com os atributos `largura` e `altura`.
// Implemente métodos para calcular `área` e `perímetro`. 
//Faça validação para impedir valores negativos.

class Retangulo {
  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura) {
    if (_largura <=0 || _altura <= 0) {
      throw ArgumentError('Largura e altura devem ser valores não negativos.');
    }
  }

  // Método para calcular a área
  double calcularArea() {
    return _largura * _altura;
  }

  // Método para calcular o perímetro
  double calcularPerimetro() {
    return 2 * (_largura + _altura);
  }
}

void main() {
  try {
    // Criando um retângulo
    Retangulo retangulo = Retangulo(15.0, 9.0);

    // Calculando e exibindo a área
    print('Área do retângulo: ${retangulo.calcularArea()}');

    // Calculando e exibindo o perímetro
    print('Perímetro do retângulo: ${retangulo.calcularPerimetro()}');
  } catch (e) {
    print(e);
  }
}



