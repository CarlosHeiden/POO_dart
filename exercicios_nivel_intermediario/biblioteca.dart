class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

class Usuario {
  String nome;
  String email;

  Usuario(this.nome, this.email);
}

class Emprestimo {
  Livro livro;
  Usuario usuario;
  DateTime dataEmprestimo;
  DateTime? dataDevolucao;

  Emprestimo(this.livro, this.usuario, this.dataEmprestimo);

  void registrarDevolucao(DateTime data) {
    dataDevolucao = data;
  }

  String formatarData(DateTime data) {
    String dia = data.day.toString().padLeft(2, '0');
    String mes = data.month.toString().padLeft(2, '0');
    String ano = data.year.toString();
    String hora = data.hour.toString().padLeft(2, '0');
    String minuto = data.minute.toString().padLeft(2, '0');
    return '$dia/$mes/$ano $hora:$minuto';
  }

  @override
  String toString() {
    String info = 'Empréstimo: ${livro.titulo} por ${usuario.nome} em ${formatarData(dataEmprestimo)}';
    if (dataDevolucao != null) {
      info += ', devolvido em ${formatarData(dataDevolucao!)}';
    }
    return info;
  }
}

void main() {
  Livro livro1 = Livro('1984', 'George Orwell');
  Usuario usuario1 = Usuario('João', 'joao@exemplo.com');

  Emprestimo emprestimo1 = Emprestimo(livro1, usuario1, DateTime.now());
  emprestimo1.registrarDevolucao(DateTime.now().add(Duration(days: 7)));

  print('Detalhes do Empréstimo:');
  print('Livro: ${livro1.titulo} - Autor: ${livro1.autor}');
  print('Usuário: ${usuario1.nome} - Email: ${usuario1.email}');
  print ('*'*40);
  print(emprestimo1);
  print ('*'*40);
}
