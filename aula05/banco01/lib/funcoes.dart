import 'package:mysql_client/mysql_client.dart';

Future<void> incluirLivro(
  MySQLConnection conn,
  String titulo,
  String autor,
  int ano,
) async {
  try {
    await conn.execute(
      'insert into livros (titulo, autor, ano) values (:titulo, :autor, :ano)',
      {'titulo': titulo, 'autor': autor, 'ano': ano},
    );
    print('Livro incluído com sucesso.');
  } catch (erro) {
    print('Erro na inclusão do livro: $erro');
  }
}

Future<void> listarLivros(MySQLConnection conn) async {
  try {
    var resultado = await conn.execute(
      'select id, titulo, autor, ano from livros order by id',
    );

    if (resultado.rows.isEmpty) {
      print('Nenhum livro encontrado.');
      return;
    }

    print('--- Listando Livros ---');
    for (var linha in resultado.rows) {
      final id = linha.typedColByName<int>('id');
      final titulo = linha.typedColByName<String>('titulo');
      final autor = linha.typedColByName<String>('autor');
      final ano = linha.typedColByName<int>('ano');
      print('Id: $id, Título: $titulo, Autor: $autor,  Ano: $ano');
    }
  } catch (erro) {
    print('Erro ao listar livros: $erro');
  }
}

Future<void> deletarLivro(MySQLConnection conn, int id) async {
  try {
    var result = await conn.execute(
      'delete from livros where id = :id',
      {'id': id},
    );
    if (result.affectedRows != 0) {
      print('Livro com ID $id excluído com sucesso.');
    } else {
      print('Nenhum livro encontrado com o ID $id para ser excluído.');
    }
  } catch (erro) {
    print('Erro ao deletar livro: $erro');
  }
}
