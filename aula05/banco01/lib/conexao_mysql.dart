import 'package:mysql_client/mysql_client.dart';

// Configuração de conexão com o banco de dados
const String _dbHost = '127.0.0.1'; // localhost
const int _dbPort = 3306;
const String _dbUser = 'carlos';
const String _dbPassword = 'Ktmsx-350f';
const String _dbDatabase = 'biblioteca_flutter';

/// Função para conectar ao banco de dados MySQL
Future<MySQLConnection?> connectToDatabase() async {
  try {
    final conn = await MySQLConnection.createConnection(
      host: _dbHost,
      port: _dbPort,
      userName: _dbUser,
      databaseName: _dbDatabase,
      password: _dbPassword,
    );
    await conn.connect();
    return conn;
  } catch (erro) {
    print('Erro ao conectar ao banco de dados: $erro');
    return null;
  }
}
