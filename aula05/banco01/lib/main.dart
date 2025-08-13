//import 'package:mysql_client/mysql_client.dart';
import 'package:banco01/conexao_mysql.dart';
import 'package:banco01/funcoes.dart';

void main() async {
  final conn = await connectToDatabase();

  if (conn == null) {
    print('Não foi possível estabelecer conexão com o banco de dados.');
    return;
  }

  print('Conectado ao banco de dados.');

  try {
    // Exemplo de como chamar as funções separadamente
    // Se quiser, você pode comentar as linhas que não quer executar.

    // Incluir um livro
    await incluirLivro(conn, 'O Senhor da Guerra', 'J.R.R. Hoden', 1945);

    // Listar todos os livros
    //await listarLivros(conn);

    // Deletar um livro (exemplo: deleta o livro com id = 1)
    
    //await deletarLivro(conn, 11);
    await listarLivros(conn);
  } catch (erro) {
    print('Ocorreu um erro na execução: $erro');
  } finally {
    await conn.close();
    print('Conexão com o MySQL fechada.');
  }
}
