//Crie uma interface `Imprimivel` com um método `imprimir()`. 
//Faça com que as classes `Documento` e `Relatorio` 
//implementem essa interface com comportamentos diferentes.

abstract class Imprimivel {
  void imprimir();
}

class Documento implements Imprimivel {
  String conteudo;

  Documento(this.conteudo);

  @override
  void imprimir() {
    print('Imprimindo Documento: $conteudo');
  }
}

class Relatorio implements Imprimivel {
  String titulo;
  String corpo;

  Relatorio(this.titulo, this.corpo);

  @override
  void imprimir() {
    print('Imprimindo Relatório: $titulo\n$corpo');
  }
}

void main() {
  Imprimivel doc = Documento('Este é um documento de exemplo.');
  doc.imprimir();

  Imprimivel rel = Relatorio('Relatório Mensal', 'Este é o corpo do relatório mensal.');
  rel.imprimir();
}