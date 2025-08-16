// Importa o pacote mysql_client para conexão com MySQL
import 'package:mysql_client/mysql_client.dart';

// Configuração de conexão com o banco de dados
const String _dbHost = '127.0.0.1'; // localhost
const int _dbPort = 3306;
const String _dbUser = 'carlos';
const String _dbPassword = 'Ktmsx-350f';
const String _dbDatabase = 'loja_dart';

/// Função para conectar ao banco de dados MySQL
Future<MySQLConnection?> connectToDatabase() async {
  try {
    final conn = await MySQLConnection.createConnection(
      host: _dbHost,
      port: _dbPort,
      userName: _dbUser,
      databaseName: _dbDatabase,
      password: _dbPassword,
      //secure: false, // <- Desativa SSL
    );
    await conn.connect();
    print(  'Conexão com o banco de dados estabelecida com sucesso!');
    return conn;
  } catch (erro) {
    print('Erro ao conectar ao banco de dados: $erro');
    return null;
  }
}